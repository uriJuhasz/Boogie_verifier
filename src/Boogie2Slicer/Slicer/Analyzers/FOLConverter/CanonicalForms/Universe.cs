﻿#region

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Values;
using System.Numerics;
using GTI = System.Int32;
using GTTI = System.Int32;
using Depth = System.Int32;
using RevisionIndex = System.Int32;
#endregion

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    using Clauses;
    using Formulae;
    using System.Diagnostics.Contracts;
    using TermRepositoryNS;
    public abstract class Universe
    {
        #region instance creation
#if DEBUG
        public static Dictionary<int, Universe> m = new Dictionary<int, Universe>();
#endif
        public override int GetHashCode()
        {
            return index;
        }
        //        public override 
        protected Universe(ISRS srs, TermRepository termRepository)
        {
            index = curIndex;
            curIndex++;
            this.srs = srs;
            this.termRepository = termRepository;

            revisionList.Add(new Revision());
            queues = new SaturationQueues(this);
            emptyGTT = termRepository.emptyGTT;
            fgttCache[emptyGTT] = new HashSet<GTT> { emptyGTT };
#if DEBUG
            m[index] = this;
#endif
            spIndex = new SPIndex(this);

            instantiationIndex = new InstantiationIndex(this);
        }

#if DEBUG
        internal static void resetIndex()
        {
            curIndex = 0;
            m.Clear();
        }
#endif

        public abstract Universe initialUniverse { get; }
        #endregion instance creation

        #region element creation
        protected GC makeGC(bool polarity)
        {
            if (polarity)
                return makeGC(new[] { trueGAF.gLiteral(true) });
            else
                return makeGC(new GL[0]);
        }
        protected GC makeGC(GL gl)
        {
            return makeGC(new[] { gl });
        }
        protected GC makeGC(IEnumerable<GL> gls)
        {
            return makeGC(gls, false);
        }
        protected GC makeGC(IEnumerable<GL> gls, bool isGoal)
        {
            #region precondition
#if DEBUG
            //            Debug.Assert(gls.Count() > 0);
            Debug.Assert(gls.All(upToDate));
            foreach (var gl in gls)
                Debug.Assert(gttData[gl.gaf.gtt].sgafs[gl.gaf.predicate] == gl.gaf);
#endif
            #endregion precondition
            var gc = termRepository.getGroundClause(gls);
            if (!hasGC(gc))
                embedGC(gc);
            if (isGoal)
                addGoalRecursive(gc);
            Debug.Assert(hasGC(gc));
            return gc;
        }

        private void embedGC(GC gc)
        {
            #region preconditions
#if DEBUG
            //            Debug.Assert(gc.gls.Count() > 0);
            Debug.Assert(gc.gls.All(upToDate));
            Debug.Assert(!gcData.ContainsKey(gc));
            if (gcBreakCond(this, gc))
                Debugger.Break();
#endif
            #endregion preconditions

            gcData[gc] = new GCData();
            foreach (var gl in gc.gls)
            {
                glData[gl].gcs.Add(gc);
                removeOrphan(gl);
            }
        }

        protected GL makeGL(PP pp, GT gt0, GT gt1)
        {
            return makeGL(pp, new[] { gt0, gt1 });
        }
        protected GL makeGL(PP pp, IEnumerable<GT> gtT)
        {
            return makeGL(pp, gtT, false);
        }
        protected GL makeGL(PP pp, IEnumerable<GT> gtT, bool isGoal)
        {
            return makeGL(makeGAF(pp.predicate, gtT), pp.polarity, isGoal);
        }
        protected GL makeGL(PP pp, GTT gtt)
        {
            return makeGL(pp, gtt, false);
        }
        protected GL makeGL(PP pp, GTT gtt, bool isGoal)
        {
            return makeGL(makeGAF(pp.predicate, gtt), pp.polarity, isGoal);
        }
        protected GL makeGL(GAF formula, bool polarity, bool isGoal)
        {
            Debug.Assert(upToDate(formula));
            Debug.Assert(gttData[formula.gtt].sgafs[formula.predicate] == formula);
            var result = formula.gLiteral(polarity);
            if (isGoal)
                addGoalRecursive(result);
            return result;
        }
        internal GAF makeGAF(IPredicate predicate, IEnumerable<GT> gtT)
        {
            if (predicate.isEquality)
            {
                Debug.Assert(gtT.Count() == 2);
                return makeGEGAF(gtT.First(), gtT.Last());
            } else
                return makeGAF(predicate, makeGTT(gtT));
        }
        internal GAF makeGAF(IPredicate predicate, GTT args)
        {
            if (predicate.isEquality)
                return makeGEGAF(args.gtT[0], args.gtT[1]);
            else
                return makeGAFInt(predicate, args);
        }
        internal GAF makeGAFInt(IPredicate predicate, GTT args)
        {
            #region precondition
#if DEBUG
            if (!predicate.argumentTypes.Any())
                Debug.Assert(inScope(predicate));
            Debug.Assert(upToDateGTTMM(args));
            if (predicate is Equality)
            {
                var gt0 = args.gtT[0];
                var gt1 = args.gtT[1];
                Debug.Assert(isSorted(gt0, gt1));// gt0.ToStringN().CompareTo(gt1.ToStringN()) <= 0);
            }
#endif
            #endregion precondition

            GAF result;

            if (!gttData[args].sgafs.TryGetValue(predicate, out result))
            {
                #region consistency
#if DEBUG
                //                Debug.Assert(this is RU || predicate.name != "True");
                Debug.Assert(args.gtT.All(t => upToDateGTMM(t)));
                Debug.Assert(!gttData[args].sgafs.ContainsKey(predicate));
                Debug.Assert(inDepthBoundStrict(args));
#endif
                #endregion consistency
                result = termRepository.getGAF(predicate, args);
                embedGAF(result);
                foreach (var b in trueFalse)
                    addedGLs.Add(result.gLiteral(b));
            }
            Debug.Assert(gttData[args].sgafs[predicate] == result);
            Debug.Assert(upToDate(result));
            return result;
        }
        internal GTT makeGTT(IEnumerable<GT> gts)
        {
            #region precondition
#if DEBUG
            foreach (var gt in gts)
            {
                Debug.Assert(upToDateGTMM(gt));
                Debug.Assert(gt.rep != null);
                Debug.Assert(gtDepth(gt) < maxGTDepth);
            }
#endif
            #endregion
            var gtt = getGTT(gts);
            return makeGTT(gtt);
        }
        protected GTT makeGTT(GTT gtt)
        {
            #region precondition
#if DEBUG
            foreach (var gt in gtt.gtT)
            {
                Debug.Assert(gtDepth(gt) < maxGTDepth);
                Debug.Assert(upToDateGTMM(gt));
            }
#endif
            #endregion precondition

            if (!hasGTTMM(gtt))
            {
                if (hasRGTT(gtt))
                    removeRGTT(gtt);

                makeNewGTT(gtt);
                if (!gtt.gtT.Any())
                    emptyGTT = gtt;
            }

            #region postcondition
#if DEBUG
            Debug.Assert(upToDateGTTMM(gtt));
            Debug.Assert(gttData.ContainsKey(gtt));
#endif
            #endregion postcondition
            return gtt;
        }
        protected abstract void makeNewGTT(GTT gtt);
        /*        protected virtual void makeNewGTT(GTT gtt)
                {
                    setInitialGTT(gtt);
                    embedGTT(gtt);
                }*/
        internal void makeExtraGT(ITerm t, bool isGoal)
        {
            GT gt;
            tryMakeGT(t, isGoal, out gt);
        }

        internal GT makeNumberGT(BigInteger n)
        {
            var nF = srs.getFunction(IntegerValue.make(n));
            addToScope(nF);
            var gt = makeGT(nF);
            return gt;
        }
        internal bool tryMakeGT(ITerm t, bool isGoal, out GT gt)
        {
            Debug.Assert(t.freeVariables.Count == 0);
            var fa = t.asFunctionApplication;
            var tT = fa.args;
            var n = tT.Count();
            var gtT = new GT[n];
            for (var i = 0; i < n; i++)
                if (!tryMakeGT(tT[i], isGoal, out gtT[i]) || !inDepthBoundStrict(gtT[i]))
                {
                    gt = null;
                    return false;
                }

            if (fa.function.isConstant)
                addToScope(fa.function);
            gt = makeGT(fa.function, gtT, isGoal);
            return true;
        }
        internal GT makeGT(Function function)
        {
            return makeGT(function, emptyGTT);
        }
        internal bool tryMakeGT(Function function, GT gt0, GT gt1, bool isGoal, out GT gt)
        {
            if (!inDepthBoundStrict(gt0, gt1))
            {
                gt = null;
                return false;
            }
            gt = makeGT(function, gt0, gt1, isGoal);
            return true;
        }
        internal bool tryMakeGT(Function function, IEnumerable<GT> gtT, bool isGoal, out GT gt)
        {
            if (!inDepthBoundStrict(gtT))
            {
                gt = null;
                return false;
            }
            gt = makeGT(function, gtT, isGoal);
            return true;
        }
        internal bool tryMakeGFA(Function function, IEnumerable<GT> gtT, bool isGoal, out GFA gfa)
        {
            if (!inDepthBoundStrict(gtT))
            {
                gfa = null;
                return false;
            }
            gfa = makeGFA(function, gtT, isGoal);
            return true;
        }
        internal bool tryMakeGT(Function function, GT gt0, GT gt1, out GT gt)
        {
            return tryMakeGT(function, gt0, gt1, false, out gt);
        }
        internal GT makeGT(Function function, GT gt0, GT gt1, bool isGoal)
        {
            return makeGT(function, new[] { gt0, gt1 }, isGoal);
        }
        internal GT makeGT(Function function, GT gt0, GT gt1)
        {
            return makeGT(function, gt0, gt1, false);
        }
        internal GT makeGT(Function function, IEnumerable<GT> gts)
        {
            return makeGT(function, gts, false);
        }

        internal GT makeGT(Function function, IEnumerable<GT> gts, bool goal)
        {
            return makeGFA(function, gts, goal).gt;
        }
        internal GT makeGT(Function function, GTT gtt)
        {
            return makeGT(function, gtt, false);
        }
        internal GT makeGT(Function function, GTT gtt, bool isGoalv)
        {
            return makeGFA(function, gtt, isGoalv).gt;
        }
        internal GFA makeGFA(Function function, IEnumerable<GT> gtT, bool isGoalv)
        {
            return makeGFA(function, makeGTT(gtT), isGoalv);
        }
        internal GFA makeGFA(Function f, GTT gtt, bool isGoalv)
        {
            #region precondition
#if DEBUG
            Debug.Assert(!isRefuted);
            Debug.Assert(upToDateGTTMM(gtt));
            Debug.Assert(gttDepth(gtt) < Universe.maxGTDepth);
            Debug.Assert(inScope(f));
#endif
            #endregion precondition

            var gttd = gttData[gtt];
            GT gt;
            GFA gfa;
            if (gttd.sgfas.TryGetValue(f, out gfa))
                gt = gfa.gt;
            else
            {
                gt = makeAndEmbedNewGT(f, gtt);
                if (isRefuted)
                    return null;
                if (isGoalv)
                    addGoalRecursive(gt);
                //                setGTDepth(gt);
                gfa = gttd.sgfas[f];
            }
            if (isGoalv && !isGoal(gt))
                addGoalRecursive(gt);

            #region postconditions
#if DEBUG
            Debug.Assert(gt.gfasByFunction[f].ContainsKey(gtt));
            //            Debug.Assert(sourcesComplete());
#if INVARIANTS
            Debug.Assert(inEqualitiesComplete());
#endif
#endif
            #endregion postconditions
            return gfa;
        }
        protected abstract GT makeAndEmbedNewGT(Function function, GTT arguments);

        public abstract Depth gtDepth(GT gt);
        /*        {
                    return gtData[gt].depth;
                }*/
        public bool inDepthBoundStrict(GT gt0, GT gt1)
        {
            return inDepthBoundStrict(gt0) && inDepthBoundStrict(gt1);
        }
        public bool inDepthBoundStrict(GT gt)
        {
            Debug.Assert(upToDateGTMM(gt));
            return gtDepth(gt) < maxGTDepth;
        }
        public bool inDepthBoundStrict(IEnumerable<GT> gtT)
        {
            return gtT.All(inDepthBoundStrict);
        }
        public bool inDepthBoundStrict(GTT gtt)
        {
            return gtt.gtT.All(inDepthBoundStrict);
        }
        public bool inDepthBoundStrict(IT it)
        {
            return !it.isGround || inDepthBoundStrict(it as GT);
        }
        public bool inDepthBoundStrict(IEnumerable<IT> itT)
        {
            return itT.All(inDepthBoundStrict);
        }
        public ISet<GT>[] depthFilterStrict(IEnumerable<IEnumerable<GT>> gtsT)
        {
            return (from gts in gtsT select depthFilterStrict(gts)).ToArray();
        }
        public ISet<GT> depthFilterStrict(IEnumerable<GT> gts)
        {
            return new HashSet<GT>(from gt in gts where inDepthBoundStrict(gt) select gt);
        }
        public abstract int gttDepth(GTT gtt);
        public abstract bool isGFANewDirect(GFA gfa);
        public abstract bool isGTMergedDirect(GT gt);
        //True if updated to new
        protected bool updateGTLocalNewStatus(GT gt)
        {
            Debug.Assert(upToDate(gt));
            var updated = false;
            var isGTNew = false;
            foreach (var gfa in gt.gfas)
            {
                Debug.Assert(upToDate(gfa.gtt));
                if (gfa.gtt.gtT.Any(hasNewGFAs) || isGFANewDirect(gfa))
                {
                    updated |= setNew(gt);
                    updated |= addNewGFA(gt);
                    isGTNew = true;
                }
            }
            if (isGTMergedDirect(gt))
            {
                updated |= setNew(gt);
                isGTNew = true;
            }
            if (!isGTNew)
            {
                updated |= removeNew(gt);
            }
            return updated;
        }
        protected void updateGTsLocalNewStatus(IEnumerable<GT> gtSet)
        {
            var todoUp = new HashSet<GT>(gtSet);
            while (todoUp.Count > 0)
            {
                var gt = todoUp.First();
                todoUp.Remove(gt);
                if (updateGTLocalNewStatus(gt))
                {
                    foreach (var sgtt in gtData[gt].sgtts)
                        todoUp.UnionWith(from gfa in gttData[sgtt].sgfas.Values select gfa.gt);
                }
            }
        }
        private IC makeClause(Clause c, bool isGoal, bool isOriginal)
        {
            var atoms = new List<IL>();
            foreach (var oa in c.literals)
                atoms.Add(makeAtomI(oa, isGoal));
            var result = makeClause(atoms, isGoal);
            if (isOriginal)
                setOriginal(result);
            return result;
        }
        private IL makeAtomI(Literal a, bool isGoal)
        {
            if (a.isGround)
                return makeGL(makeGAF(a.f, isGoal), a.polarity, isGoal);
            else
                return makeFL(makeFAF(a.f, isGoal), a.polarity);
        }
        private GAF makeGAF(IAtomicFormula formula, bool isGoal)
        {
            if (formula.isEquality)
                return makeGEGAF(makeGT(formula.asEquality.t1, isGoal), makeGT(formula.asEquality.t2, isGoal));
            else
            {
                if (!formula.asPredicateApplication.predicate.argumentTypes.Any())
                    addToScope(formula.asPredicateApplication.predicate);
                return makeGAF(formula.asPredicateApplication.predicate, from t in formula.asPredicateApplication.args select makeGT(t, isGoal)); //makeGTT(formula.asPredicateApplication.args, isGoal));
            }
        }
        protected GT makeGT(ITerm term, bool isGoal)
        {
            Debug.Assert(term.isGround);
            var fa = term.asFunctionApplication;
            if (fa.function.isConstant)
                addToScope(fa.function);
            var gt = makeGT(fa.function, from t in fa.args select makeGT(t, isGoal), isGoal);
            addOriginal(gt);
            Debug.Assert(isOriginal(gt));
            return gt;
            //            return makeOriginalGT(fa.function, makeGTT(fa.args, isGoal), isGoal);
        }
        public abstract void makeOriginalGTs(IEnumerable<FunctionApplicationFormula> ts, bool isGoal);

        private FAF makeFAF(IAtomicFormula formula, bool isGoal)
        {
            return makeFAF(formula.spredicate, makeFTT(formula.subTerms, isGoal));
        }
        private FTT makeFTT(ITermTuple tt, bool isGoal)
        {
            Debug.Assert(tt.Any(t => !t.isGround));
            var ts = (from t in tt select makeIT(t, isGoal)).ToArray();
            return makeFTT(ts);
        }
        /*        private IAtomicFormulaEC makeAtomicFormula(IAtomicFormula formula, bool isGoal)
                {
                    if (formula.isPredicateApplication && !formula.asPredicateApplication.predicate.argumentTypes.Any())
                        addToScope(formula.asPredicateApplication.predicate);
                    if (formula.isEquality)
        //                return makeEqualityAF(formula.asEquality.t1,formula.asEquality.t2);
        //            else
                    return makeAtomicFormula(formula.spredicate, makeTerms(formula.subTerms,isGoal)); // makeTuple(formula.subTerms, isGoal));
                }*/
        /*        private ITupleEC makeTuple(ITermTuple ott, bool isGoal)
                {
                    var ts = makeTerms(ott, isGoal);
                    return makeTuple(ts);
                }
                private ITermEC[] makeTerms(ITermTuple ott, bool isGoal)
                {
                    var ts = new ITermEC[ott.Count()];
                    for (var i=0; i<ott.Count();i++)
                        ts[i] = makeTerm(ott[i], isGoal);
                    return ts;
                }*/
        protected IT makeIT(ITerm t, bool isGoal)
        {
            if (t.isGround)
                return makeGT(t, isGoal);
            else if (t.isVariable)
                return makeVT(t.asVariable.variable);
            else
                return makeFFA(t.asFunctionApplication.function, makeFTT(t.asFunctionApplication.args, isGoal));
        }
        /*        private 
                    ITermEC result;
                    if (t.isVariable)
                        result = makeVariableTerm(t.asVariable.variable);
                    else
                    {
                        var fa = t.asFunctionApplication;
                        if (fa.function.isConstant)
                            addToScope(fa.function);
                        result = makeTerm(t.asFunctionApplication.function, makeTuple(t.asFunctionApplication.args, isGoal), isGoal);
        //                if (isOriginal)
                        {
                            var gt = result as GroundTermEC;
                            if (gt != null)
                            {
          //                      addOriginal(gt);
                                setGTRadius(gt, 0);
                            }
                        }
                    }
                    return result;
                }
                */
        internal IC makeClause(IEnumerable<IL> atoms, bool isGoal)
        {
            #region preconditions
#if DEBUG
            foreach (var a in atoms)
            {
                var ga = a as GL;
                if (ga != null)
                {
                    Debug.Assert(gttData[ga.gaf.gtt].sgafs[ga.gaf.predicate].gLiteral(ga.polarity) == ga);
                    Debug.Assert(glData.ContainsKey(ga));
                }
            }
#endif
            #endregion preconditions
            if (atoms.Any(a => a.freeVariables.Any()))
                return makeFC(atoms);
            else
                return makeGC(new HashSet<GL>(from a in atoms select a as GL), isGoal);
        }
        private IC makeIC(IEnumerable<IL> ils)
        {
            var gls = (from il in ils select il as GL).ToArray();
            if (gls.All(gl => gl != null))
                return makeGC(gls);
            return makeFC(ils);
        }
        protected FC makeFC(IEnumerable<IL> ils)
        {
            Debug.Assert(ils.Any(a => a is FL));
            var fc = termRepository.getFreeClause(ils);
            if (!hasFC(fc))
                embedFC(fc);
            return fc;
        }

        private void embedFC(FC fc)
        {
#if DEBUG
            clauseFreeVariables.UnionWith(fc.freeVariables);
#endif
            Debug.Assert(!fcData.ContainsKey(fc));
            fcData[fc] = new FCData();
            foreach (var il in fc)
            {
                if (il.isGround)
                {
                    var iga = il as GL;
                    glData[iga].fcs.Add(fc);
                    removeOrphan(iga);
                } else //if (il is FL)
                {
                    var fl = il as FL;
                    fafData[fl.faf].addFC(fl.polarity, fc);
                }
            }
        }

        internal IL makeIL(PP pp, IEnumerable<IT> itT)
        {
            if (itT.All(it => it.isGround))
                return makeGL(pp, from it in itT select it as GT);
            else
                return makeFL(pp, makeFTT(itT));
        }
        internal ITT makeITT(IEnumerable<IT> itT)
        {
            if (itT.All(it => it.isGround))
                return makeGTT(from it in itT select it as GT);
            else
                return makeFTT(itT);
        }
        internal IL makeIL(IPredicate p, bool polarity, ITT itt)
        {
            return makeIL(makeIAF(p, itt), polarity, false);
        }
        internal IL makeIL(IAF formula, bool polarity, bool isGoal)
        {
            if (formula is GAF)
                return makeGL(formula as GAF, polarity, isGoal);
            return makeFL(formula as FAF, polarity);
        }
        protected FL makeFL(PP pp, FTT ftt)
        {
            return makeFL(makeFAF(pp.predicate, ftt), pp.polarity);
        }
        protected FL makeFL(FAF formula, bool polarity)
        {
            return formula.fLiteral(polarity);
        }
        internal IAF makeIAF(IPredicate spredicate, IEnumerable<IT> itT)
        {
            if (itT.All(it => it.isGround))
                return makeGAF(spredicate, from it in itT select it as GT);
            else
                return makeFAF(spredicate, makeFTT(itT));
        }
        internal FAF makeFAF(IPredicate predicate, FTT tt)
        {
            FAF af;
            if (!fttData[tt].sfafs.TryGetValue(predicate, out af))
            {
                af = termRepository.getFreeAtomicFormula(predicate, tt);// new AtomicFormulaEC(predicate, tt);
                embedFAF(af);
            }
            return af;
        }
        /*        internal ITT makeITT(IEnumerable<IT> terms)
                {
                    if (terms.All(t => t is GT))
                        return makeGTT((from t in terms select t as GT).ToList());
                    else
                        return makeFTT(terms);
                }*/
        internal FTT makeFTT(IEnumerable<IT> its)
        {
            #region precondition
#if DEBUG
            Debug.Assert(its.Any(t => t.freeVariables.Any()));
            foreach (var it in its)
            {
                Debug.Assert(!it.isGround || upToDateGTMM(it as GT));
                Debug.Assert(!(it is FFA) || ffaData.ContainsKey(it as FFA));
                //TODO                Debug.Assert(inDepthBoundStrict(it));
            }
#endif
            #endregion precondition

            var ftt = termRepository.getNonGroundTuple(its);
            if (!fttData.ContainsKey(ftt))
            {
                embedFTT(ftt);
            }
            #region postcondition
#if DEBUG
            Debug.Assert(ftt.All(t => !(t is GT) || gtData[t as GT].sftts.Contains(ftt)));
            Debug.Assert(ftt.All(t => !(t is FFA) || ffaData[t as FFA].sftts.Contains(ftt)));
#endif
            #endregion postcondition
            return ftt;
        }
        internal IT makeIT(Function function, IEnumerable<IT> itT, bool isGoal)
        {
            if (itT.All(it => it.isGround))
                return makeGT(function, from it in itT select it as GT, isGoal);
            else
                return makeFFA(function, makeFTT(itT));
        }
        protected FVT makeVT(LVar v)
        {
            VTInfo e;
            if (!fvData.TryGetValue(v, out e))
                fvData[v] = e = new VTInfo(termRepository.getVariableTerm(v));
            return e.vt;
        }
        internal FFA makeFFA(Function function, FTT arguments)
        {
            FFA ffa;
            if (!fttData[arguments].sffas.TryGetValue(function, out ffa))
            {
                ffa = termRepository.getFFA(function, arguments);
                fttData[arguments].sffas[function] = ffa;
                Debug.Assert(!ffaData.ContainsKey(ffa));
                ffaData[ffa] = new FFAData();
            }
            return ffa;
        }
        private GT[] sort(GT gt0, GT gt1)
        {
            if (isSorted(gt0, gt1))
                return new[] { gt0, gt1 };
            else
                return new[] { gt1, gt0 };
        }
        bool isSorted(GT gt0, GT gt1)
        {
            return gt0.ToStringN().CompareTo(gt1.ToStringN()) <= 0;
        }
        public static bool isIntegerType(GT gt)
        {
            return gt.type == IntegerType.integerType;
        }
        public Predicate ltPredicate { get { return srs.ltPredicate; } }
        public GT makeIntegerGT(int n)
        {
            return makeGT(srs.getFunction(IntegerValue.make(0)), emptyGTT);
        }
        public GT zeroGT { get { return makeIntegerGT(0); } }
        protected GL makeLTG(GT gt1, GT gt2, bool polarity)
        {
            Debug.Assert(isIntegerType(gt1) && isIntegerType(gt2));
            return makeGL(ltPredicate.pp(polarity), gt1, gt2);
        }
        protected GL makeDEG(GT gt1, GT gt2)
        {
            return makeEEG(gt1, gt2, false);
        }
        protected GL makeEQG(GT gt1, GT gt2)
        {
            return makeEEG(gt1, gt2, true);
        }
        protected GL makeEEG(GT gt1, GT gt2, bool polarity)
        {
            return makeGEGAF(gt1, gt2).gLiteral(polarity);
        }
        protected IL makeIEE(IT it1, IT it2, bool polarity)
        {
            if (it1.isGround && it2.isGround)
                return makeEEG(it1 as GT, it2 as GT, polarity);
            return makeIEEIAF(it1, it2).il(polarity);
        }
        protected GAF makeGEGAF(GT gt1, GT gt2)
        {
            GT[] gtA = sort(gt1, gt2);
            return makeGAFInt(Equality.get(gt1.type), makeGTT(gtA));
        }
        protected IAF makeIEEIAF(IT it1, IT it2)
        {
            if (it1.isGround && it2.isGround)
                return makeGEGAF(it1 as GT, it2 as GT);
            var itA = new[] { it1, it2 };
            return makeIAF(Equality.get(it1.type), itA); // makeITT(itA));
        }
        #endregion element creation

        #region embed
        #region merge maps
        private void setGTRevisionMap(GT gt, int r)
        {
            gtRevisionMap[gt] = r;
        }
        private void removeGTRevisionMap(GT gt)
        {
            gtRevisionMap.Remove(gt);
        }
        protected void setInitialGT(GT gt)
        {
            Debug.Assert(!hasGTMM(gt));
            setGTMergeMap(gt, gt);
            setGTRevisionMap(gt, currentRevision - 1);
            revisionList.Last().addGT(gt, new GT[0]);
        }
        protected void setMergedGT(GT gt, IEnumerable<GT> mgts)
        {
            #region precondition
#if DEBUG
            Debug.Assert(!hasGTMM(gt));// || mgts.Contains(transitiveMerge(gt)));
            foreach (var mgt in mgts)
                Debug.Assert(upToDateGTMM(mgt));
#endif
            #endregion precondition
            setGTRevisionMap(gt, currentRevision - 1);
            setGTMergeMap(gt, gt);
            foreach (var mgt in mgts)
            {
                setGTMergeMap(mgt, gt);
                if (successorUsedGTs.Remove(mgt))
                {
                    successorUsedGTs.Add(gt);
                    successorUsedHGTs.Add(mgt);
                }
            }
            //            if (mgts.Count()>0)
            //                lastMergeRevision = currentRevision;
            revisionList.Last().addGT(gt, mgts);
        }
        internal void setNewMergedGT(GT gt, GT ngt)
        {
            #region precondition
#if DEBUG
            Debug.Assert(!hasGTMM(gt));
            Debug.Assert(upToDateGTMM(ngt));
            Debug.Assert(!addedGTs.Contains(gt));
#endif
            #endregion precondition
            setGTMergeMap(gt, ngt);
            setGTRevisionMap(gt, gtRevisionMap[ngt]);
            revisionList[gtRevisionMap[gt]].addOrphanGT(gt, ngt);
        }
        protected void setMergedGT(GT gt, GT ngt)
        {
            if (mmGT(gt) == ngt)
                return;
#if DEBUG
            Debug.Assert(upToDateGTMM(gt));
            Debug.Assert(upToDateGTMM(ngt));
#endif
            setGTMergeMap(gt, ngt);
#if DEBUG
            Debug.Assert(gtRevisionMap[gt] <= currentRevision - 1);
            Debug.Assert(gtRevisionMap[ngt] == currentRevision - 1);
            Debug.Assert(!addedGTs.Contains(gt));
#endif
            if (removeGoal(gt))
                addGoalRecursive(ngt);
            //            lastMergeRevision = currentRevision;
        }
        protected void setInitialGTT(GTT gtt)
        {
            #region precondition
#if DEBUG
            Debug.Assert(!hasGTTMM(gtt));
            Debug.Assert(!hasRGTT(gtt));
#endif
            #endregion precondition
            setGTTRevision(gtt, currentRevision - 1, new GTT[0]);
            setGTTMergeMap(gtt, gtt);
        }
        protected void setMergedGTT(GTT gtt, IEnumerable<GTT> mgtts)
        {
#if DEBUG
            Debug.Assert(!hasGTTMM(gtt) || mgtts.Contains(transitiveMerge(gtt)));
            foreach (var mgtt in mgtts)
                Debug.Assert(upToDateGTTMM(mgtt));
#endif
            if (hasGTTMM(gtt))
            {
                Debug.Assert(!upToDateGTTMM(gtt));
                var mgtt = mmGTT(gtt);
                Debug.Assert(gttRevisionMap[mgtt] == gttRevisionMap[gtt]);
                var r = gttRevisionMap[gtt];
                Debug.Assert(revisionList[r].orphanGTTMap[mgtt].Contains(gtt));
                revisionList[r].orphanGTTMap[mgtt].Remove(gtt);
                Debug.Assert(!revisionList[r].gtts.ContainsKey(gtt));
                removeFromRM(gtt);
            }
            setGTTRevision(gtt, currentRevision - 1, mgtts);
            setGTTMergeMap(gtt, gtt);
            Debug.Assert(!hasRGTT(gtt));
            //            removeSuccessorGTT(gtt);
            foreach (var mgtt in mgtts)
            {
                setGTTMergeMap(mgtt, gtt);
                if (successorUsedGTTs.ContainsKey(mgtt))
                {
                    successorUsedGTTs[gtt] = successorUsedGTTs[mgtt];
                    successorUsedGTTs.Remove(mgtt);
                    successorUsedHGTTs.Add(mgtt);
                }
            }

        }
        internal void setNewMergedGTT(GTT gtt, GTT ngtt)
        {
            Debug.Assert(!hasGTTMM(gtt));
            Debug.Assert(upToDateGTTMM(ngtt));
            Debug.Assert(!hasRGTT(gtt));
            setOrphanGTTRevision(gtt, gttRevisionMap[ngtt], ngtt);
            //            gttRevisionMap[gtt] = gttRevisionMap[ngtt];
            //            revisionList[gttRevisionMap[gtt]].addOrphanGTT(gtt, ngtt);
            setGTTMergeMap(gtt, ngtt);
            //            removeSuccessorGTT(gtt);
        }
        protected void setMergedGTT(GTT gtt, GTT ngtt)
        {
            if (mmGTT(gtt) == ngtt)
                return;
            Debug.Assert(upToDateGTTMM(gtt));
            Debug.Assert(upToDateGTTMM(ngtt));
            setGTTMergeMap(gtt, ngtt);
#if DEBUG
            Debug.Assert(gttRevisionMap[gtt] <= currentRevision - 1);
            Debug.Assert(gttRevisionMap[ngtt] == currentRevision - 1);
#endif
        }
        protected abstract void removeSources(GT gt);
        protected abstract bool isHistorySource(GTT mgtt, GTT gtt);
        private void unembedHistory(GTT igtt, bool including)
        {
            var todo = new Queue<GTT>();
            todo.Enqueue(igtt);
            while (todo.Any())
            {
                var gtt = todo.Dequeue();
                if (!gttRevisionMap.ContainsKey(gtt))
                    continue;
                var revision = gttRevisionMap[gtt];
                ISet<GTT> mgtts;
                if (revisionList[revision].gtts.TryGetValue(gtt, out mgtts))
                {
                    foreach (var mgtt in mgtts) //revisionList[revision].gtts[gtt])
                        todo.Enqueue(mgtt);
                    revisionList[revision].gtts[gtt].Clear();
                    if (revisionList[revision].orphanGTTMap.ContainsKey(gtt))
                    {
                        foreach (var ogtt in revisionList[revision].orphanGTTMap[gtt])
                        {
                            Debug.Assert(ogtt != igtt);
                            if (including || !isHistorySource(ogtt, igtt))
                            {
                                removeFromRM(ogtt);
                                removeFromMM(ogtt);
                            } else
                            {
                                setGTTMergeMap(ogtt, igtt);
                                revisionList[gttRevisionMap[igtt]].gtts[igtt].Add(ogtt);
                            }
                        }
                        revisionList[revision].orphanGTTMap.Remove(gtt);
                    }
                } else
                { //gtt was an orphan
                }

                if (gtt != igtt)
                {

                    if (!including && isHistorySource(gtt, igtt))
                    {
                        setGTTMergeMap(gtt, igtt);
                        revisionList[gttRevisionMap[igtt]].gtts[igtt].Add(gtt);
                    } else
                    {
                        removeFromRM(gtt);
                        removeFromMM(gtt);
                    }
                }
            }
        }
        protected abstract bool isHistorySource(GT mgt, GT gt);
        private void unembedHistory(GT igt, bool including)
        {
            var todo = new Queue<GT>();
            todo.Enqueue(igt);
            while (todo.Any())
            {
                var gt = todo.Dequeue();
                var revision = gtRevisionMap[gt];
                if (revisionList[revision].gts.ContainsKey(gt))
                {
                    foreach (var mgt in revisionList[revision].gts[gt])
                        todo.Enqueue(mgt);
                    revisionList[revision].gts[gt].Clear();
                    if (revisionList[revision].orphanGTMap.ContainsKey(gt))
                    {
                        foreach (var ogt in revisionList[revision].orphanGTMap[gt])
                        {
                            Debug.Assert(ogt != igt);
                            if (including || !isHistorySource(ogt, igt))
                            {
                                removeFromRM(ogt);
                                removeFromMM(ogt);
                            } else
                            {
                                setGTMergeMap(ogt, igt);
                                revisionList[gtRevisionMap[igt]].gts[igt].Add(gt);
                            }
                        }
                        revisionList[revision].orphanGTMap.Remove(gt);
                    }
                } else
                { //gt was an orphan
                }

                if (gt != igt)
                {
                    if (!including && isHistorySource(gt, igt))
                    {
                        setGTMergeMap(gt, igt);
                        revisionList[gtRevisionMap[igt]].gts[igt].Add(gt);
                    } else
                    {
                        removeFromRM(gt);
                        removeFromMM(gt);
                    }
                }
            }
        }
        #endregion merge maps
        #region gt depth
        protected virtual int calculateGTDepth(GT gt)
        {
            if (isOriginal(gt))
                return originalGTDepth;
            var r = topGTDepth;
            foreach (var gfa in gt.gfas)
                if (gfa.gtt.Count() > 0)
                {
                    if (gfa.gtt.All(sgt => sgt != gt))
                    {
                        var gttR = 0;
                        foreach (var sgt in gfa.gtt.gtT)
                            if (gttR < gtDepth(sgt))
                                gttR = gtDepth(sgt);
                        if (r > gttR + 1)
                            r = gttR + 1;
                    }
                } else
                    r = getConstantRadius(gfa.function);
            return r;
        }
        public abstract void setGTDepth(GT gt, int newDepth);
        #endregion gt depth

        #region revision maps
        private void setGTTRevision(GTT gtt, int revision, IEnumerable<GTT> mgtts)
        {
            setGTTRevision(gtt, revision);
            revisionList[revision].addGTT(gtt, mgtts);
        }
        private void setGTTRevision(GTT gtt, int revision)
        {
            Debug.Assert(!gttRevisionMap.ContainsKey(gtt));
            gttRevisionMap[gtt] = revision;
        }
        private void setOrphanGTTRevision(GTT gtt, int revision, GTT ngtt)
        {
            Debug.Assert(revision == gttRevisionMap[ngtt]);
            setGTTRevision(gtt, revision);
            revisionList[revision].addOrphanGTT(gtt, ngtt);
        }
        private void removeFromRM(GTT gtt)
        {
            Debug.Assert(gtt != emptyGTT);
            if (!gttRevisionMap.ContainsKey(gtt))
                return;
            var r = revisionList[gttRevisionMap[gtt]];
            r.gtts.Remove(gtt);
            r.orphanGTTMap.Remove(gtt);
            gttRevisionMap.Remove(gtt);
        }
        private void removeFromRM(GT gt)
        {
            var r = revisionList[gtRevisionMap[gt]];
            r.gts.Remove(gt);
            r.orphanGTMap.Remove(gt);
            removeGTRevisionMap(gt);
        }
        #endregion revision maps

        #region embed
        protected abstract void embedGT(GTI gti, GT gt, IEnumerable<GT> mgts);
        protected abstract void embedGTT(GTTI gtti, GTT gtt, IEnumerable<GTT> mgtts);

#if DEBUG
        public static bool gtSPBreakCond(Universe u, GT gt)
        {
            return false
            //                || gtBreakCond(u, gt)
            ;
        }
        public static bool gtInstBreakCond(Universe u, GT gt)
        {
            return false
            //                || gtBreakCond(u, gt)
            ;
        }
        public static bool gtBreakCond(Universe u, GT gt)
        {
            return false
            //                || ((u.index==8 || u.index==7 || u.index==5) && gt.index==733)
            //                || ((u.index==8 || u.index==7 || u.index==5) && gt.index==16223)
            //                || ((u.index==5 || u.index==4) && gt.index==15447)
            //               || gt.index==7177
            ;
        }
        public static bool gttBreakCond(Universe u, GTT gtt)
        {
            return false
                //                || ((u.index==7 || u.index==5 || u.index==8) && gtt.index==1200)
                //                || (u.index == 0 && gtt.index == 35256)
                ;
            ;
        }
        public static bool gfaLogCond(Universe u, GTT gtt, Function f)
        {
            return gttLogCond(u, gtt);
        }
        public static bool gttLogCond(Universe u, GTT gtt)
        {
            return false
                                //                || gtt.index==7404
                                //                || (u.index == 66 && gtt.index == 4340)
                                //                || (u.index == 57 && gtt.index == 4340)
                                || gttBreakCond(u, gtt)
                //                || gtt.index == 43790 || gtt.index== 102220
                ;
        }
        public static bool gtLogCond(Universe u, GT gt)
        {
            return false
                || gtBreakCond(u, gt)
                ;
        }
        public static bool gafBreakCond(Universe u, GAF gaf)
        {
            return false
                //                || gaf.index==134
                ;
        }
        public static bool gcBreakCond(Universe u, GC gc)
        {
            return false
                ;
        }
        public static bool gcLogCond(Universe u, GC gc)
        {
            return false
                ;
        }
        public static bool fcLogCond(Universe u, FC fc)
        {
            return false
                ;
        }


#endif
        protected void embedGT(GT gt)
        {
            #region precondition
#if DEBUG
            Debug.Assert(gt.rep != null);
            Debug.Assert(!gtData.ContainsKey(gt));
            foreach (var gfa in gt.gfas)
                Debug.Assert(inScope(gfa.function));
            if (gtLogCond(this, gt))
                Debug.WriteLine("LLLL {0,14}.embedGT({1})", this, gt.index);
            else
                foreach (var gfa in gt.gfas)
                    if (gfaLogCond(this, gfa.gtt, gfa.function))
                        Debug.WriteLine("LLLL {0,14}.embedGT([{1}]{2})[{3},{4}])", this, gt.index, gt, gfa.gtt.index, gfa.function.name);
            if (gtBreakCond(this, gt))
                Debugger.Break();
//            if (index==12 && gt.index == 1681)
//                Debugger.Break();
#endif
            #endregion precondition

            gtData[gt] = new GTData();
            foreach (var gfa in gt.gfas)
            {
                if (!gttData.ContainsKey(gfa.gtt))
                    gttData[gfa.gtt] = new GTTData();

                mapGFAtoGT(gfa);
            }
            typeToGTsMap.insert(gt.type, gt);
            addedGTs.Add(gt);
            queues.enqueue(gt);
        }
        protected void unembedGT(GT gt)
        {
            #region precondition
#if DEBUG
            Debug.Assert(gtData[gt].sftts.Count == 0);
            Debug.Assert(gtData[gt].disequalities.Count == 0);
            Debug.Assert(getGTRGTTs(gt).Count == 0);
            Debug.Assert(!addedGTs.Contains(gt));
            Debug.Assert(!isOriginal(gt));
            Debug.Assert(!queues.hasEquivalenceClass(gt));
            Debug.Assert(inEmbedTS || !instantiationIndex.has(gt));
            if (gtLogCond(this, gt))
                Debug.WriteLine("LLLL {0,14}.unembedGT({1})", this, gt.index);
            else
                foreach (var gfa in gt.gfas)
                    if (gfaLogCond(this, gfa.gtt, gfa.function))
                        Debug.WriteLine("LLLL {0,14}.unembedGT([{1}]{2})[{3},{4}])", this, gt.index, gt, gfa.gtt.index, gfa.function.name);
            if (gtBreakCond(this, gt))
                Debugger.Break();
#endif
            #endregion precondition
            typeToGTsMap[gt.type].Remove(gt);
            removeInteresting(gt);
            removeNew(gt);
            removeGoal(gt);
            removeNewGFA(gt);
            foreach (var gfa in gt.gfas)
                unmapGFA(gfa);
            removeForeignCache(gt, gtFGTs, fgtCache);
            if (spSaturatedGTs.Remove(gt))
                gtData[gt].clearSPSat();
            if (spIndexedGTs.Remove(gt))
            {
                gtData[gt].clearSPIndexed();
                spIndex.unindexGT(gt);
            }
            queues.remove(gt);
            gtData.Remove(gt);
        }
        protected void embedGTT(GTT gtt)
        {
            #region precondition
#if DEBUG
            Debug.Assert(!hasRGTT(gtt));
            foreach (var gt in gtt.gtT)
            {
                Debug.Assert(upToDateGTMM(gt));
                Debug.Assert(gtDepth(gt) < maxGTDepth);
            }
            //            Debug.Assert(!gttData.ContainsKey(gtt)); //mapGFA from embedGT
            termRepository.egtts.Add(gtt);
            if (gttLogCond(this, gtt))
                Debug.WriteLine("LLLL {0,14}.embedGTT({1})", this, gtt.index);
            if (gttBreakCond(this, gtt))
                Debugger.Break();
#endif
            #endregion precondition

            var typeKey = GTT.makeTypeString((from t in gtt.gtT select t.type).ToList());
            GTTData gttd;
            if (!gttData.TryGetValue(gtt, out gttd))
                gttData[gtt] = gttd = new GTTData();
            for (var i = 0; i < gtt.gtT.Count; i++)
                mapGTSGTT(gtt, i);
        }
        //        protected abstract void removeSourcesLGTT(GTT gtt);
        protected virtual void unembedGTT(GTT gtt)
        {
            #region precondition
#if DEBUG
            Debug.Assert(gtt.gtT.Any());
            Debug.Assert(gttData.ContainsKey(gtt));
            Debug.Assert(gttData[gtt].sgafs.Count == 0);
            Debug.Assert(inEmbedTS || !instantiationIndex.has(gtt));
            if (gttLogCond(this, gtt))
                Debug.WriteLine("LLLL {0,14}.unembedGTT({1})", this, gtt.index);
            if (gttBreakCond(this, gtt))
                Debugger.Break();
#endif
            #endregion precondition

            gttData.Remove(gtt);
            var typeKey = GTT.makeTypeString((from t in gtt.gtT select t.type).ToList());
            for (var i = 0; i < gtt.gtT.Count; i++)
            {
                var gt = gtt.gtT[i];
                if (gtData.ContainsKey(gt))
                {
                    gtData[gt].sgtts.Remove(gtt);
                    gtData[gt].superGTTsByTTP[makeTTPString(gtt.dataTypes, i)].Remove(gtt);
                }
            }
            removeForeignCache(gtt, gttFGTTs, fgttCache);
            instantiationIndex.remove(gtt);
            //            removeSourcesLGTT(gtt);
        }
        #endregion embed

        private void embedFTT(FTT ftt)
        {
            Debug.Assert(!fttData.ContainsKey(ftt));
            fttData[ftt] = new FTTInfo();
            foreach (var t in ftt)
                if (t is GT)
                {
                    gtData[t as GT].sftts.Add(ftt);
                } else if (t is FFA)
                    ffaData[t as FFA].sftts.Add(ftt);
                else
                    fvData[(t as FVT).variable].superFTTs.Add(ftt);
        }
        private void embedFAF(FAF faf)
        {
            Debug.Assert(!fafData.ContainsKey(faf));
            fafData[faf] = new FAFData();
            fttData[faf.ftt].sfafs[faf.predicate] = faf;
        }
        protected void embedGAF(GAF gaf)
        {
            #region precondition
#if DEBUG
            if (gaf.predicate.isEquality)
                Debug.Assert(isSorted(gaf.gtt.gtT[0], gaf.gtt.gtT[1]));
            if (gafBreakCond(this, gaf))
                Debugger.Break();
#endif
            Debug.Assert(upToDateGTTMM(gaf.gtt));
            Debug.Assert(!gttData[gaf.gtt].sgafs.ContainsKey(gaf.predicate));
            #endregion precondition
            Debug.Assert(!gafds.ContainsKey(gaf));
            gafds[gaf] = new GAFData();
            gttData[gaf.gtt].sgafs[gaf.predicate] = gaf;
            revisionList.Last().addGAF(gaf);
            Debug.Assert(!gafRevisionMap.ContainsKey(gaf));
            gafRevisionMap[gaf] = currentRevision - 1;
            Debug.Assert(revisionList[gafRevisionMap[gaf]].gafByGTT[gaf.gtt].Contains(gaf));

            foreach (var b in trueFalse)
            {
                var gl = gaf.gLiteral(b);
                Debug.Assert(!glData.ContainsKey(gl));
                var gad = glData[gl] = new GLData();
                if (srs.isPathCondition(gaf.predicate))
                    setGoal(gl);
                queues.enqueue(gl);
            }
        }
        protected void unembedGAF(GAF gaf)
        {
            #region precondition
#if DEBUG
            Debug.Assert(gaf != trueGAF);
            Debug.Assert(gafds.ContainsKey(gaf));
            if (gafBreakCond(this, gaf))
                Debugger.Break();
#endif
            #endregion precondition

            gafds.Remove(gaf);
            foreach (var b in trueFalse)
            {
                var gl = gaf.gLiteral(b);
                #region consistency
#if DEBUG
                if (!isRefuted)
                {
                    Debug.Assert(glData[gl].gcs.Count == 0);
                    Debug.Assert(glData[gl].fcs.Count == 0);
                    Debug.Assert(glData[gl].isOrphan);
                    Debug.Assert(!glData[gl].isAssumed);
                    Debug.Assert(!glData[gl].isGoal);
                }
#endif
                #endregion consistency

                addedGLs.Remove(gl);
                clearGoal(gl);
                queues.remove(gl);
                glData.Remove(gl);
            }
            if (gttData.ContainsKey(gaf.gtt))
            {
                Debug.Assert(gttData[gaf.gtt].sgafs[gaf.predicate] == gaf);
                gttData[gaf.gtt].sgafs.Remove(gaf.predicate);
            }
            var gafRevision = revisionList[gafRevisionMap[gaf]];
            gafRevision.removeGAF(gaf);
            gafRevisionMap.Remove(gaf);
            removeForeignCache(gaf, gafFGAFs, fgafCache);
        }
        private void mapGTSGTT(GTT gtt, int i)
        {
            var gt = gtt.gtT[i];
            gtData[gt].sgtts.Add(gtt);
            var typeTuplePositionString = makeTTPString(gtt.dataTypes, i);
            ISet<GTT> e;
            if (!gtData[gt].superGTTsByTTP.TryGetValue(typeTuplePositionString, out e))
                gtData[gt].superGTTsByTTP[typeTuplePositionString] = e = new HashSet<GTT>();
            e.Add(gtt);
        }
        private void unmapGroundTermSuperGroundTuple(GTT gtt, int i)
        {
            var gt = gtt.gtT[i];
            gtData[gt].sgtts.Remove(gtt);
            var ttpString = makeTTPString(gtt.dataTypes, i);
            gtData[gt].superGTTsByTTP[ttpString].Remove(gtt);
        }
        public static string makeTTPString(ITypeTuple types, int position)
        {
            return makeTTPStringInt(types.ToStringN(), position);
        }
        public static string makeTTPString(IEnumerable<IType> ts, int position)
        {
            return makeTTPStringInt(TypeTuple.makeStringN(ts), position);
        }
        private static string makeTTPStringInt(string prefix, int position)
        {
            return prefix + "[" + position.ToString() + "]";
        }

        protected void unembedFTT(FTT ftt)
        {
            foreach (var t in ftt)
                if (t is GT)
                {
                    var gt = t as GT;
                    GTData e;
                    if (gtData.TryGetValue(gt, out e))
                        e.sftts.Remove(ftt);
                } else if (t is FFA)
                {
                    var fa = t as FFA;
                    FFAData ffad;
                    if (ffaData.TryGetValue(fa, out ffad))
                        ffad.sftts.Remove(ftt);
                } else
                {
                    var v = t as FVT;
                    VTInfo e;
                    if (fvData.TryGetValue(v.variable, out e))
                        e.superFTTs.Remove(ftt);
                }

            removeForeignCache(ftt, fttFFTTs, ffttCache);
            fttData.Remove(ftt);
        }
        protected void unembedGC(GC gc)
        {
            #region preconditions
#if DEBUG
            Debug.Assert(allGCs.Contains(gc));
            Debug.Assert(!originalClauses.Contains(gc));
            Debug.Assert(!isGoal(gc));
            Debug.Assert(!queues.has(gc));
            Debug.Assert(!isAssumed(gc));
            Debug.Assert(isRefuted || !gcFGCs.ContainsKey(gc));
            //            if (gcLogCond(this, gc))
            //                Debug.WriteLine("   {0,-14}unembedGC({1})", this,gc.ToStringB());
            if (gcBreakCond(this, gc))
                Debugger.Break();
#endif
            #endregion preconditions
            foreach (var ga in gc.gls)
            {
                GLData gad;
                if (glData.TryGetValue(ga, out gad))
                {
                    gad.gcs.Remove(gc);
                    checkAddOrphan(ga);
                }
            }
            clearGoal(gc);
            if (isOriginal(gc))
                clearOriginal(gc);
            removeForeignCache(gc, gcFGCs, fgcCache);
            //            Debug.Assert(!gcData[gc].isSPIndexed);
            if (spIndexedGCs.Remove(gc))
            {
                spIndex.unindexGC(gc);
            }
            Debug.Assert(!gcData[gc].isSPSat);
            Debug.Assert(!spSaturatedGCs.Contains(gc));
            queues.remove(gc);
            spNewGenClauses.Remove(gc);
            spPrevGenClauses.Remove(gc);
            instNewGenClauses.Remove(gc);
            gcData.Remove(gc);
        }

        private void removeForeignCache<T>(T t, ISet<T> fts, IDictionary<T, ISet<T>> ftCache)
        {
            foreach (var ft in fts)
            {
                ftCache[ft].Remove(t);
                if (ftCache[ft].Count == 0)
                    ftCache.Remove(ft);
            }
        }
        private void removeForeignCache<T>(T t, IDictionary<T, ISet<T>> tFTs, IDictionary<T, ISet<T>> ftCache)
        {
            ISet<T> fts;
            if (tFTs.TryGetValue(t, out fts))
            {
                tFTs.Remove(t);
                removeForeignCache(t, fts, ftCache);
            }
        }
        private void unembedFAF(FAF faf)
        {
            #region precondition
            Debug.Assert(fafData.ContainsKey(faf));
            Debug.Assert(fttData[faf.ftt].sfafs[faf.predicate] == faf);
            Debug.Assert(!fafData[faf].anySFCs);
            #endregion precondition

            fttData[faf.ftt].sfafs.Remove(faf.predicate);
            fafData.Remove(faf);
            removeForeignCache(faf, fafFFAFs, ffafCache);
        }
        private void unembedFC(FC fc)
        {
            #region debug
#if DEBUG
            Debug.Assert(hasFC(fc));
            Debug.Assert(!isAssumed(fc));
            Debug.Assert(fcData.ContainsKey(fc));
            clauseFreeVariables.ExceptWith(fc.freeVariables);
#endif
            #endregion debug
            spNewGenClauses.Remove(fc);
            spPrevGenClauses.Remove(fc);
            foreach (var il in fc)
            {
                GLData gad;
                if (il.isGround && glData.TryGetValue(il as GL, out gad))
                {
                    gad.fcs.Remove(fc);
                    checkAddOrphan(il as GL);
                } else if (!il.isGround)
                {
                    var fl = il as FL;
                    FAFData fafd;
                    if (fafData.TryGetValue(fl.faf, out fafd))
                        fafd.removeFC(fl.polarity, fc);
                }
            }
            queues.remove(fc);
            removeForeignCache(fc, fcFFCs, ffcCache);
            fcData.Remove(fc);
        }
        internal void mapGFAtoGT(GFA gfa)
        {
            if (hasGTTMM(gfa.gtt))
                removeGTTRGFA(transitiveMerge(gfa.gtt), gfa.function);
            lfsToGTMap.insert(gfa.function, gfa.gt);
            if (gfa.function.isMapRead)
                mapReadLFSs.Add(gfa.function);

            Debug.Assert(!gttData[gfa.gtt].sgfas.ContainsKey(gfa.function) || gttData[gfa.gtt].sgfas[gfa.function] == gfa);
            gttData[gfa.gtt].sgfas[gfa.function] = gfa;
        }
        protected void unmapGFA(GFA gfa)
        {
            lfsToGTMap.remove(gfa.function, gfa.gt);
            if (gfa.function.isMapRead && !lfsToGTMap.ContainsKey(gfa.function))
                mapReadLFSs.Remove(gfa.function);

            if (gttData.ContainsKey(gfa.gtt) && gttData[gfa.gtt].sgfas.ContainsKey(gfa.function) && gttData[gfa.gtt].sgfas[gfa.function] == gfa)
                gttData[gfa.gtt].sgfas.Remove(gfa.function);
        }
        protected void unembedFFA(FFA ffa)
        {
            #region preconditions
#if DEBUG
            Debug.Assert(ffaData.ContainsKey(ffa));
            Debug.Assert(fttData[ffa.ftt].sffas[ffa.function] == ffa);
#endif
            #endregion preconditions

            var ffad = ffaData[ffa];
            ffaData.Remove(ffa);
            fttData[ffa.ftt].sffas.Remove(ffa.function);

            removeForeignCache(ffa, ffad.fffas, ffaCache);
        }
        protected void unembedFVT(FVT vt)
        {
            Debug.Assert(fvData[vt.variable].vt == vt);
            Debug.Assert(!fvData[vt.variable].superFTTs.Any());
            fvData.Remove(vt.variable);
        }
        #endregion embed

        #region import foreign
        /*        private void clearForeignCaches()
                {
                    fgtCache.Clear();
                    fgtCache.Clear();
                    fgttCache.Clear();
                    fgafCache.Clear();
                    fgcCache.Clear();

                    ffafCache.Clear();
                    ffcCache.Clear();
                    ffttCache.Clear();
                    ffaCache.Clear();

                    gtFGTs.Clear();
                    gttFGTTs.Clear();
                    gafFGAFs.Clear();
                    gcFGCs.Clear();

                    fttFFTTs.Clear();
                    fafFFAFs.Clear();
                    fcFFCs.Clear();
        //            ffaFFFAs.Clear();
                }
                private void updateForeignCaches(IDictionary<GT,GT> localGTMergeMap, IDictionary<GTT,GTT> localGTTMergeMap)
                {
                    foreach (var v in fgtCache.Values)
                        foreach (var gt in v.ToList())
                        {
                            GT ngt;
                            if (localGTMergeMap.TryGetValue(gt, out ngt))
                            {
                                v.Remove(gt);
                                v.Add(gt);
                            }
                        }
                    foreach (var v in fgttCache.Values)
                        foreach (var gtt in v.ToList())
                        {
                            GTT ngtt;
                            if (localGTTMergeMap.TryGetValue(gtt, out ngtt))
                            {
                                v.Remove(gtt);
                                v.Add(gtt);
                            }
                        }
                    foreach (var v in fgafCache.Values)
                        foreach (var gaf in v.ToList())
                        {
                            GTT ngtt;
                            if (localGTTMergeMap.TryGetValue(gaf.gtt, out ngtt))
                            {
                                v.Remove(gaf);
                                v.Add(makeGAF(gaf.predicate,ngtt));
                            }
                        }
                    foreach (var v in fgcCache.Values)
                        foreach (var gc in v.ToList())
                        {
                            if (!gcs.Contains(gc))
                            {
                                var ngc = makeGC(from ga in gc.gls select makeGL(ga.gaf.predicate, ga.polarity, transitiveMerge(ga.gaf.gtt), false), false);
                                v.Remove(gc);
                                v.Add(ngc);
                            }
                        }
                    ffafCache.Clear();
                    ffcCache.Clear();
                    ffttCache.Clear();
                    ffaCache.Clear();
                }
                */
        public ISet<GT> importFGT(GT ofgt)
        {
            Debug.Assert(!isRefuted);
            ISet<GT> result;
            if (!fgtCache.TryGetValue(ofgt, out result))
            {

                #region setup
                var fgtLocalCache = new Dictionary<GT, ISet<GT>>();
                var fgttLocalCache = new Dictionary<GTT, ISet<GTT>>();

                var fgtToFGTTMap = new Dictionary<GT, ISet<GTT>>();
                var fgttMissingFGTs = new Dictionary<GTT, ISet<GT>>();
                var fgttGFAs = new Dictionary<GTT, IDictionary<Function, GT>>();

                var fgtNewGTs = new Dictionary<GT, ISet<GT>>();
                var fgttNewGTTs = new Dictionary<GTT, ISet<GTT>>();
                var todoUpFGTs = new HashSet<GT>();
                var todoUpFGTTs = new HashSet<GTT>();

                //                var doneFGTTGFAs = new Dictionary<GroundTupleEC, ISet<Function>>();
                #endregion setup
                Debug.Assert(!isRefuted);
                #region initial fgts and fgtts
                foreach (var fgt in ofgt.allGTs)
                {
                    Debug.Assert(!fgtNewGTs.ContainsKey(fgt));
                    fgtNewGTs[fgt] = new HashSet<GT>();
                    if (!fgtCache.ContainsKey(fgt))
                    {
                        Debug.Assert(!fgtLocalCache.ContainsKey(fgt));
                        var fgtLocalCacheE = fgtLocalCache[fgt] = new HashSet<GT>();
                        foreach (var fgfa in fgt.gfas)
                            if (inScope(fgfa.function))
                            {
                                var fgtt = fgfa.gtt;
                                ISet<GTT> gtts = null;
                                if (!fgttCache.TryGetValue(fgtt, out gtts) && !fgttLocalCache.TryGetValue(fgtt, out gtts))
                                {
                                    if (fgtt.gtT.All(sfgt => fgtCache.ContainsKey(sfgt)))
                                    {
                                        var gtSets = (from sfgt in fgtt.gtT select depthFilterStrict(fgtCache[sfgt])).ToArray();
                                        var gtAs = FU.makeOptions(gtSets); //importFGT
                                                                           //                                            gtts = new HashSet<GTT>(from gtA in gtAs select makeGTT(gtA));
                                        var gfas = new HashSet<GFA>(from gtA in gtAs select makeGFA(fgfa.function, gtA, false));
                                        gtts = new HashSet<GTT>(from gfa in gfas select gfa.gtt);
                                        Debug.Assert(!fgttLocalCache.ContainsKey(fgtt));
                                        fgttLocalCache.insert(fgtt, gtts);
                                        //[fgtt] = new HashSet<GTT>(); ;
                                        //fgttLocalCache[fgtt].UnionWith(gtts);
                                        if (gtts.Count > 0)
                                        {
                                            todoUpFGTTs.Add(fgtt);
                                            Debug.Assert(!fgttNewGTTs.ContainsKey(fgtt));
                                        }
                                        Debug.Assert(!fgttNewGTTs.ContainsKey(fgtt));
                                        fgttNewGTTs[fgtt] = gtts;
                                        importFGTAddGFAs(fgtNewGTs, todoUpFGTs, fgt, fgtLocalCacheE, gfas);
                                        /*                                            foreach (var gfa in gfas)
                                                                                    if (fgtLocalCacheE.Add(gfa.gt))
                                                                                    {
                                                                                        fgtNewGTs[fgt].Add(gfa.gt);
                                                                                        todoUpFGTs.Add(fgt);
                                                                                    }*/
                                    }//if (fgtt.gts.All(sfgt => fgtCache.ContainsKey(sfgt)))
                                    else
                                    {
                                        gtts = null;
                                        if (!fgttMissingFGTs.ContainsKey(fgtt))
                                        {
                                            fgttMissingFGTs[fgtt] = new HashSet<GT>(from sfgt in fgtt.gtT where !fgtCache.ContainsKey(sfgt) select sfgt);
                                            Debug.Assert(fgttMissingFGTs[fgtt].Any());
                                            Debug.Assert(!fgttGFAs.ContainsKey(fgtt));
                                            foreach (var sfgt in fgttMissingFGTs[fgtt])
                                                fgtToFGTTMap.insert(sfgt, fgtt);
                                            /*                                                {
                                                                                            ISet<GTT> e2;
                                                                                            if (!fgtToFGTTMap.TryGetValue(sfgt, out e2))
                                                                                                fgtToFGTTMap[sfgt] = e2 = new HashSet<GTT>();
                                                                                            e2.Add(fgtt);
                                                                                        }*/
                                        }
                                    }//else of if (fgtt.gts.All(sfgt => fgtCache.ContainsKey(sfgt)))
                                }//if (!fgttCache.TryGetValue(fgtt, out gtts) && !fgttLocalCache.TryGetValue(fgtt, out gtts))
                                else
                                {
                                    var gfas = from gtt in gtts select makeGFA(fgfa.function, gtt, false);
                                    importFGTAddGFAs(fgtNewGTs, todoUpFGTs, fgt, fgtLocalCacheE, gfas);
                                }

                                if (gtts == null)
                                {
                                    Debug.Assert(fgttMissingFGTs[fgtt].Any());
                                    Debug.Assert(fgttMissingFGTs[fgtt].SetEquals(from sfgt in fgtt.gtT where !fgtCache.ContainsKey(sfgt) select sfgt));
                                }
                                if (!fgttGFAs.ContainsKey(fgtt))
                                {
                                    fgttGFAs[fgtt] = new Dictionary<Function, GT>();
                                    //                                doneFGTTGFAs[fgtt] = new Dictionary<Function, GroundTermEC>();
                                }
                                var function = fgfa.function;
                                Debug.Assert(!fgttGFAs[fgtt].ContainsKey(function));
                                fgttGFAs[fgtt][function] = fgt;
                            }
                    }
                }
                #endregion initial fgts and fgtts
                Debug.Assert(!isRefuted);

                #region uploop
                while (todoUpFGTs.Any() || todoUpFGTTs.Any())
                {
                    while (todoUpFGTTs.Any())
                    {
                        var fgtt = todoUpFGTTs.First();
                        todoUpFGTTs.Remove(fgtt);
                        var newGTTs = fgttNewGTTs[fgtt].ToList();
                        Debug.Assert(newGTTs.Any());
                        fgttNewGTTs[fgtt].Clear();
                        Debug.Assert(!fgttMissingFGTs.ContainsKey(fgtt));
                        if (fgttGFAs.ContainsKey(fgtt))
                        {
                            foreach (var fgfa in fgttGFAs[fgtt])
                            //                            if (doneFGTTGFAs[fgtt].Add(fgfa.Key))
                            {
                                var function = fgfa.Key;
                                var fgt = fgfa.Value;
                                foreach (var ngtt in newGTTs)
                                {
                                    if (ngtt.gtT.All(ngt => gtDepth(ngt) < maxGTDepth))
                                    {
                                        var gt = makeGT(function, ngtt, false);
                                        Debug.Assert(fgtLocalCache.ContainsKey(fgt));
                                        Debug.Assert(upToDateGTMM(gt));
                                        if (fgtLocalCache[fgt].Add(gt))
                                        {
                                            Debug.Assert(!fgtNewGTs[fgt].Contains(gt));
                                            fgtNewGTs[fgt].Add(gt);
                                            todoUpFGTs.Add(fgt);
                                        }
                                    }
                                }
                            }
                            fgttGFAs.Remove(fgtt);
                        }
                    }

                    while (todoUpFGTs.Any())
                    {
                        var fgt = todoUpFGTs.First();
                        Debug.Assert(!fgtCache.ContainsKey(fgt));
                        todoUpFGTs.Remove(fgt);
                        var newGTs = fgtNewGTs[fgt].ToList();
                        Debug.Assert(newGTs.Any());
                        fgtNewGTs[fgt].Clear();
                        if (fgtToFGTTMap.ContainsKey(fgt))
                            foreach (var fgtt in fgtToFGTTMap[fgt])
                            {
                                Debug.Assert(!fgttCache.ContainsKey(fgtt));
                                ISet<GT> mfgts;
                                if (fgttMissingFGTs.TryGetValue(fgtt, out mfgts))
                                {
                                    mfgts.Remove(fgt);
                                    if (!mfgts.Any())
                                    {
                                        Debug.Assert(!fgttLocalCache.ContainsKey(fgtt));
                                        fgttLocalCache[fgtt] = new HashSet<GTT>();
                                        Debug.Assert(!fgttNewGTTs.ContainsKey(fgtt));
                                        fgttNewGTTs[fgtt] = new HashSet<GTT>();
                                        fgttMissingFGTs.Remove(fgtt);
                                    }
                                }
                                if (!fgttMissingFGTs.ContainsKey(fgtt))
                                {
                                    var gtSets = depthFilterStrict((from sfgt in fgtt.gtT select fgtCache.ContainsKey(sfgt) ? fgtCache[sfgt] : fgtLocalCache[sfgt]).ToArray());
                                    var gtAs = FU.makeOptions(gtSets);//importFGT
                                    var gfas = (from d in fgttGFAs.get(fgtt) from f in d.Keys from gtA in gtAs select makeGFA(f, gtA, false));
                                    if (isRefuted)
                                        return null;
                                    var gtts = (from gfa in gfas select gfa.gtt);
                                    //                                    var gtts = (from gtA in gtAs select makeGTT(gtA));
                                    foreach (var gtt in gtts)
                                        if (fgttLocalCache[fgtt].Add(gtt))
                                        {
                                            fgttNewGTTs[fgtt].Add(gtt);
                                            todoUpFGTTs.Add(fgtt);
                                        }
                                }
                            }
                    }
                }
                #endregion uploop

                #region end
                //                Debug.Assert(!fgttMissingFGTs.Any());

                foreach (var kv in fgtLocalCache)
                {
                    Debug.Assert(!fgtCache.ContainsKey(kv.Key));
                    fgtCache[kv.Key] = kv.Value;
                    foreach (var gt in kv.Value)
                    {
                        Debug.Assert(upToDateGTMM(gt));
                        gtFGTs.insert(gt, kv.Key);
                    }
                }
                foreach (var kv in fgttLocalCache)
                {
                    Debug.Assert(!fgttCache.ContainsKey(kv.Key));
                    fgttCache[kv.Key] = kv.Value;
                    foreach (var gtt in kv.Value)
                        gttFGTTs.insert(gtt, kv.Key);
                }

                result = fgtCache[ofgt];
                #endregion end
            }
#if DEBUG
            else foreach (var gt in result)
                    Debug.Assert(upToDateGTMM(gt));
#endif



            #region postcondition
#if DEBUG
            foreach (var gt in result)
                Debug.Assert(upToDateGTMM(gt));
#endif
            #endregion postcondition

            return result;
        }

        private static void importFGTAddGFAs(Dictionary<GT, ISet<GT>> fgtNewGTs, HashSet<GT> todoUpFGTs, GT fgt, ISet<GT> fgtLocalCacheE, IEnumerable<GFA> gfas)
        {
            foreach (var gfa in gfas)
                if (fgtLocalCacheE.Add(gfa.gt))
                {
                    fgtNewGTs[fgt].Add(gfa.gt);
                    todoUpFGTs.Add(fgt);
                }
        }
        public bool tryGetLGTT(GTT mgtt, out GTT gtt)
        {
            GTT mgtt2;
            if (tryGetGTTMM(mgtt, out mgtt2))
            {
                gtt = transitiveMerge(mgtt2);
                return true;
            }
            gtt = null;
            return false;
        }
        public bool tryGetGAF(IPredicate predicate, GTT mgtt, out GAF gaf)
        {
            GTT gtt;
            if (tryGetLGTT(mgtt, out gtt) && gttData[gtt].sgafs.TryGetValue(predicate, out gaf))
                return true;
            gaf = null;
            return false;
        }
        public bool tryGetGL(PP pp, GTT mgtt, out GL gl)
        {
            GAF gaf;
            if (tryGetGAF(pp.predicate, mgtt, out gaf))
            {
                gl = gaf.gLiteral(pp.polarity);
                return true;
            }
            gl = null;
            return false;
        }
        public GL getGLOrNull(PP pp, GTT gtt)
        {
            GAF gaf;
            if (tryGetGAF(pp.predicate, gtt, out gaf))
                return gaf.gLiteral(pp.polarity);
            return null;
        }


        public ISet<GAF> importFGAF(GAF fgaf)
        {
            ISet<GAF> result;
            if (fgafCache.TryGetValue(fgaf, out result))
                return result;
            //            result = new HashSet<GAF>(from gtt in importFGTT(fgaf.gtt) select makeGAF(fgaf.predicate, gtt));

            var ofgtt = fgaf.gtt;
            ISet<GTT> e;
            result = new HashSet<GAF>(
                (fgttCache.TryGetValue(ofgtt, out e))
                    ?
                from gtt in e select makeGAF(fgaf.predicate, gtt)
                    :
                from gtA in FU.makeOptions((from fgt in ofgtt.gtT select depthFilterStrict(importFGT(fgt))).ToArray()) select makeGAF(fgaf.predicate, gtA));
            markAdded(false);
            {
                fgttCache[ofgtt] = new HashSet<GTT>(from gaf in result select gaf.gtt);
                foreach (var gaf in result)
                    gttFGTTs.insert(gaf.gtt, ofgtt);
            }
            fgafCache[fgaf] = result;
            foreach (var gaf in result)
                gafFGAFs.insert(gaf, fgaf);
            return result;
        }
        public ISet<GL> importFGA(GL fga)
        {
            return new HashSet<GL>(from gaf in importFGAF(fga.gaf) select gaf.gLiteral(fga.polarity));
        }
        /*public ISet<GC> importFGC(GC fgc)
        {
            ISet<GC> result;
            if (fgcCache.TryGetValue(fgc, out result))
                return result;
            var gaSets = (from fga in fgc.gls select importFGA(fga)).ToArray();
            var gaAs = FU.makeOptions(gaSets);//importFGC
            result = new HashSet<GC>(from gaA in gaAs select makeGC(gaA));
            fgcCache[fgc] = result;
            foreach (var gc in result)
                gcFGCs.insert(gc, fgc);
            return result;
        }*/
        public ISet<IL> importFIL(IL fa)
        {
            var fga = fa as GL;
            if (fga != null)
                return new HashSet<IL>(importFGA(fga));
            else
                return new HashSet<IL>(importFFA(fa as FL));
        }
        public ISet<IT> importFT(IT oft)
        {
            var fgt = oft as GT;
            if (fgt != null)
                return new HashSet<IT>(importFGT(fgt));
            var fvt = oft as FVT;
            if (fvt != null)
                return new HashSet<IT> { makeVT(fvt.variable) };
            var ffat = oft as FFA;
            return new HashSet<IT>(importFFAT(ffat));
        }
        public ISet<FFA> importFFAT(FFA fffa)
        {
            ISet<FFA> result;
            if (ffaCache.TryGetValue(fffa, out result))
                return result;
            var ngtts = importFFTT(fffa.ftt);
            result = new HashSet<FFA>(from ngtt in ngtts select makeFFA(fffa.function, ngtt));
            ffaCache[fffa] = result;
            foreach (var ffa in result)
                ffaData[ffa].fffas.Add(fffa); // ffaFFFAs.insert(ffa, fffa);
            return result;
        }
        public ISet<FTT> importFFTT(FTT fftt)
        {
            ISet<FTT> e;
            if (ffttCache.TryGetValue(fftt, out e))
                return e;
            var itsT = (from fit in fftt select new HashSet<IT>(from it in importFT(fit) where inDepthBoundStrict(it) select it)).ToArray();
            var itAs = FU.makeOptions(itsT);//importFFTT
            var result = new HashSet<FTT>(from tA in itAs select makeFTT(tA));
            ffttCache[fftt] = result;
            foreach (var ftt in result)
                fttFFTTs.insert(ftt, fftt);
            return result;
        }
        public ISet<FAF> importFFAF(FAF ffaf)
        {
            ISet<FAF> result;
            if (ffafCache.TryGetValue(ffaf, out result))
                return result;
            result = new HashSet<FAF>(from tt in importFFTT(ffaf.ftt) select makeFAF(ffaf.predicate, tt));
            ffafCache[ffaf] = result;
            foreach (var faf in result)
                fafFFAFs.insert(faf, ffaf);
            return result;
        }
        public ISet<FL> importFFA(FL fnga)
        {
            return new HashSet<FL>(from ngaf in importFFAF(fnga.faf) select ngaf.fLiteral(fnga.polarity));
        }
        public ISet<FC> importFFC(FC ffc)
        {
            ISet<FC> result;
            if (ffcCache.TryGetValue(ffc, out result))
                return result;
            var ilSets = (from il in ffc.ils select importFIL(il)).ToArray();
            var ilAs = FU.makeOptions(ilSets);//importFFC
            result = new HashSet<FC>(from aA in ilAs select makeFC(aA));
            ffcCache[ffc] = result;
            foreach (var fc in result)
                fcFFCs.insert(fc, ffc);
            return result;
        }
        /*        public ISet<IC> importFIC(IC ic)
                {
                    if (ic.isGround)
                        return new HashSet<IC>(importFGC(ic as GC));
                    else
                        return new HashSet<IC>(importFFC(ic as FC));
                }*/
        #endregion import foreign

        #region DAG properties
        #region DAG recursion
        public interface DAGRequest<RT> where RT : DAGRequest<RT>
        {
            RT combine(IEnumerable<RT> rts);
            void distribute(IEnumerable<RT> rts);
            TRC<RT> makeTRC(Universe u);
        }
        public interface TRC<RT> where RT : DAGRequest<RT>
        {
            void p1();
            void p2();
            Universe gu { get; }

            void addRequest(RT rt);
            RT[] outRTs { get; }
        }

        public abstract class TRCC<RT> : TRC<RT> where RT : DAGRequest<RT>
        {
#if DEBUG
            public readonly int index;
            private static int curIndex = 0;
#endif
            public TRCC(Universe universe, RT r)
            {
                this.gu = universe;
                addRequest(r);
#if DEBUG
                index = curIndex;
                curIndex++;
#endif
            }
            public Universe gu { get; private set; }
            public void addRequest(RT rt)
            {
                inRequests.Add(rt);
            }
            protected RT inRequest;
            private readonly IList<RT> inRequests = new List<RT>();
            public override int GetHashCode()
            {
                return gu.index;
            }
            public override bool Equals(object obj)
            {
                return ReferenceEquals(this, obj);
            }

            public RT[] outRTs { get; set; }
            public void p1()
            {
                Debug.Assert(inRequests.Any());
                if (inRequests.Count == 1)
                    inRequest = inRequests.First();
                else
                    inRequest = inRequests.First().combine(inRequests);
                p1I();
            }
            public void p2()
            {
                p2I();
                if (inRequests.Count > 1)
                    inRequest.distribute(inRequests);
                //                Debug.Assert(guniverse.sourcesComplete());
            }
            protected abstract void p1I();
            protected abstract void p2I();
        }

        class TRCComparer<RT> : IComparer<TRC<RT>> where RT : DAGRequest<RT>
        {
            public int Compare(TRC<RT> x, TRC<RT> y)
            {
                return x.gu.index - y.gu.index;
            }
        }
        void recursiveDAGCall<RT>(TRC<RT> itrc) where RT : DAGRequest<RT>
        {
            var readyForP1 = new SortedSet<TRC<RT>>(new TRCComparer<RT>());
            var waitingForP2 = new Dictionary<TRC<RT>, ISet<TRC<RT>>>();
            var waitingForMe = new Dictionary<TRC<RT>, ISet<TRC<RT>>>();
            var trcsByUniverse = new Dictionary<int, TRC<RT>>();

            readyForP1.Add(itrc);
            while (readyForP1.Count > 0)
            {
                var readyForP2 = new HashSet<TRC<RT>>();
                {
                    var trc = readyForP1.Max;
                    readyForP1.Remove(trc);
                    trcsByUniverse.Remove(trc.gu.index);
                    trc.p1();
                    if (trc.outRTs != null && trc.outRTs.Any(t => t != null))
                    {
                        Debug.Assert(!waitingForP2.ContainsKey(trc));
                        waitingForP2[trc] = new HashSet<TRC<RT>>();
                        Debug.Assert(trc.outRTs.Length == trc.gu.pus.Length);
                        for (var i = 0; i < trc.outRTs.Length; i++)
                            if (trc.outRTs[i] != null)
                            {
                                var otr = trc.outRTs[i];
                                var pu = trc.gu.pus[i];
                                TRC<RT> ptrc;
                                if (!trcsByUniverse.TryGetValue(pu.index, out ptrc))
                                    ptrc = trcsByUniverse[pu.index] = otr.makeTRC(pu);
                                else
                                    ptrc.addRequest(otr);

                                waitingForP2[trc].Add(ptrc);
                                Debug.Assert(ptrc.gu.index < trc.gu.index);
                                ISet<TRC<RT>> trcs;
                                if (!waitingForMe.TryGetValue(ptrc, out trcs))
                                    waitingForMe[ptrc] = trcs = new HashSet<TRC<RT>>();
                                trcs.Add(trc);
                                readyForP1.Add(ptrc);
                            }
                    } else
                        readyForP2.Add(trc);
                }
                while (readyForP2.Any())
                {
                    var trc = readyForP2.First();
                    readyForP2.Remove(trc);
                    trc.p2();
                    if (waitingForMe.ContainsKey(trc))
                    {
                        var awake = waitingForMe[trc];
                        waitingForMe.Remove(trc);
                        foreach (var t in awake)
                        {
                            Debug.Assert(waitingForP2[t].Contains(trc));
                            waitingForP2[t].Remove(trc);
                            if (!waitingForP2[t].Any())
                            {
                                waitingForP2.Remove(t);
                                readyForP2.Add(t);
                            }
                        }
                    }
                }
            }
            Debug.Assert(!readyForP1.Any());
            Debug.Assert(!waitingForMe.Any());
            Debug.Assert(!waitingForP2.Any());
        }
        #endregion DAG recursion

        #region Instantiation - ground and free clauses for GL and GT instantiation
        public class InstRT : DAGRequest<InstRT>
        {
            public InstRT(InstantiationSet instSet)
            {
                this.instSet = instSet;
            }
            public readonly InstantiationSet instSet;

            public readonly ISet<GC> rgcs = new HashSet<GC>();
            public readonly ISet<FC> rfcs = new HashSet<FC>();

            public InstRT combine(IEnumerable<InstRT> rts)
            {
                Debug.Assert(rts.Count() > 1);
                Debug.Assert(rts.Count() == 2);
                Debug.Assert(rts.First() == this);
                return new InstRT(InstantiationSet.union(rts.First().instSet, rts.Last().instSet));
            }
            public void distribute(IEnumerable<InstRT> rts)
            {
                Debug.Assert(rts.Count() > 1);
                foreach (var rt in rts)
                {
                    rt.rgcs.UnionWith(rgcs);
                    rt.rfcs.UnionWith(rfcs);
                }
            }
            public TRC<InstRT> makeTRC(Universe u)
            {
                return u.makeInstRTC(this);
            }
        }
        public InstRTC makeInstRTC(InstRT instRT) { return new InstRTC(this, instRT); }
        public sealed class InstRTC : TRCC<InstRT>
        {
            internal InstRTC(Universe universe, InstRT rt)
                : base(universe, rt)
            {
            }

            public InstantiationSet instSet { get { return inRequest.instSet; } }
            public ISet<GC> rgcs { get { return inRequest.rgcs; } }
            public ISet<FC> rfcs { get { return inRequest.rfcs; } }

            internal InstantiationSet nInstSet;
            public override string ToString()
            {
                return "InstRT[" + gu.ToString() + "](" + Operator.commaSeparatedList(from pp in instSet.glPPTriggers.Keys select pp.ToString()) + ")";
            }

            protected override void p1I()
            {
                gu.instP1A(this);
                outRTs = (gu.pis.Length == 0 || nInstSet.isEmpty)
                    ? null
                    : (from pi in gu.pis select new InstRT(nInstSet.toPredecessor(gu, pi))).ToArray();
            }
            protected override void p2I()
            {
                gu.instP2(this);
                //                gu.instP2A(this);
            }
        }

        protected abstract void instP2(InstRTC ar);
        private bool currentlyImportingInstantiation = false;
        public bool canExportRecSP(FC fc)
        {
            return
                   this != initialUniverse
                && !isAxiom(fc)
                && !isSPNewGen(fc);
        }
        public bool canExportAxiomSP(FC fc)
        {
            Debug.Assert(this == initialUniverse);
            return !isSPNewGen(fc);
        }
        public bool canExportRecSP(GC gc)
        {
            return !isSPNewGen(gc) || gc.gls.Count == 1;
        }
        public bool canExportRecInst(FC fc)
        {
            return
                   this != initialUniverse
                && !isAxiom(fc)
                ;
        }
        public bool canExportAxiomInst(FC fc)
        {
            Debug.Assert(this == initialUniverse);
            return true;
        }
        public bool canExportRecInst(GC gc)
        {
            return true; // gc.gls.Count==1;
        }
        protected void instP1A(InstRTC ar)
        {
            #region consistency
            Debug.Assert(currentlyImportingInstantiation || instantiationIndex.isComplete);
            foreach (var kv in ar.instSet.glPPTriggers)
            {
                Debug.Assert(inScope(kv.Key));
                foreach (var gtt in kv.Value.allGTTs)
                    Debug.Assert(upToDate(gtt));
            }
            foreach (var kv in ar.instSet.gtLFSTriggers)
            {
                Debug.Assert(inScope(kv.Key));
            }
            #endregion consistency

            ar.nInstSet = instantiationIndex.addAndGetDelta(ar.instSet);
        }
        protected void instP2A(InstRTC ar)
        {
            cleanupFluff();
            markAdded(false);
            #region GLs
            foreach (var kv in ar.instSet.glPPTriggers)
                foreach (var gtt in kv.Value.allGTTs)
                    mapInstGTT(ar, kv.Key, gtt);
            if (glImportFCKnob && this != initialUniverse)
            {
                ar.rfcs.UnionWith(
                    from kv in ar.instSet.glPPTriggers
                    from lfstt in kv.Value.allLFSTTs
                    from fcl in instantiationIndex.lookup(kv.Key, lfstt)
                    let fc = fcl.fc
                    where canExportRecInst(fc)
                    where glResolveFCCriterion(fc, fcl.ili)
                    select fc);
            }
            #endregion GLs

            #region GTs
            #region GCs
            mapInstGTs(ar, ar.instSet.allGTs);
            #endregion GCs

            #region FCs
            if (gtImportClausesKnob && this != initialUniverse)
            {
                ar.rfcs.UnionWith(
                    from kv in ar.instSet.gtLFSTriggers
                    from lfstt in kv.Value.allLFSTTs
                    from fclt in instantiationIndex.lookup(kv.Key, lfstt)
                    let fc = fclt.fc
                    where (isOriginal(fc) || isImported(fc))
                    where gtFCInstantiationCriterion(fc, fclt.ili, fclt.iti)
                    select fclt.fc);
            }
            #endregion FCs
            #endregion GTs
            #region consistency
#if DEBUG
            foreach (var gc in ar.rgcs)
            {
                foreach (var gl in gc.gls)
                {
                    foreach (var gt in gl.gaf.gtt.gtT)
                        Debug.Assert(upToDateGTMM(gt));
                    Debug.Assert(glData.ContainsKey(gl) || gl.isEQOrDE);
                }
                Debug.Assert(isAssumed(gc) || gc.gls.Count == 1);
            }
#endif
            #endregion consistency
        }
        #region GL
        private void mapInstGTT(InstRTC ar, PP pp, GTT gtt)
        {
            if (isTrue(pp, gtt)) { } else if (isFalse(pp, gtt)) { } else
            {
                GAF gaf;
                if (gttData[gtt].sgafs.TryGetValue(pp.predicate, out gaf))
                {
                    foreach (var gc in getGLLocalAssumedGCs(gaf.gLiteral(pp.polarity)))
                        mapInstGC(ar, gc);

                    if (pp.predicate.isEquality)
                    {
                        if (gttData[gtt].sgafs.TryGetValue(pp.predicate, out gaf))
                        {
                            foreach (var gc in getGLLocalAssumedGCs(gaf.gLiteral(pp.polarity)))
                                mapInstGC(ar, gc);
                        }
                        if (isTrueGEQNE(pp.polarity, gtt))
                            mapInstGC(ar, makeGC(new[] { makeEEG(gtt.gtT[0], gtt.gtT[1], pp.polarity) }));
                    }
                }
            }
        }

        #endregion GL
        #region GL
        private void mapInstGTs(InstRTC ar, IEnumerable<GT> gts)
        {
            if (gtImportGCAllKnob)
            {
                foreach (var gc in assumedGCs)
                    if (gc.allGTs.Intersect(gts).Any())
                        mapInstGC(ar, gc);
            } else
            {
                if (gtImportGCEqualityKnob)
                {
                    foreach (var gt in gts)
                        foreach (var gc in getGTEqGCs(gt))
                            mapInstGC(ar, gc);
                }
            }


        }
        protected void mapInstGC(InstRTC ar, GC gc)
        {
            if (gc.isTrue)
                return;
            if (!canExportRecInst(gc))
                return;
            Debug.Assert(gc.gls.Count == 1 || isAssumed(gc));
            ar.rgcs.Add(gc);
        }
        #endregion GL

        #endregion Instantiation - ground and free clauses for GL and GT instantiation

        #region GT all ground term triggers
        #region potentiallyUnifiable for SP
        #region GT
        private bool potentiallyUnifiableSP(ISet<GT> gts, IT fit)
        {
            if (fit.isGround)
                return potentiallyUnifiableSP(gts, fit as GT);
            else
                return potentiallyUnifiableSP(gts, fit as FT);
        }
        private bool potentiallyUnifiableSP(ISet<GT> gts, GT fgt)
        {
            var igts = importFGT(fgt);
            return gts.Intersect(igts).Any();
        }
        private bool potentiallyUnifiableSP(ISet<GT> gts, FT fft)
        {
            return gts.Any(gt => potentiallyUnifiableSP(gt, fft));
        }
        private bool potentiallyUnifiableSP(GT gt, IT fit)
        {
            if (fit.isGround)
                return potentiallyUnifiableSP(gt, fit as GT);
            return potentiallyUnifiableSP(gt, fit as FT);
        }
        private bool potentiallyUnifiableSP(GT gt, GT fgt)
        {
            var fgtGTs = importFGT(fgt);
            return fgtGTs.Contains(gt);
        }
        private bool potentiallyUnifiableSP(GT gt, FT fft)
        {
            if (fft is FVT)
                return true;
            return potentiallyUnifiableSP(gt, fft as IFA);
        }
        private bool potentiallyUnifiableSP(GT gt, IFA fifa)
        {
            var gfa = gt.gfas[termRepository.getGTMinGFAi(gt)];
            return gfa.function == fifa.function && potentiallyUnifiableSP(gfa.gtt, fifa.itt);
        }
        #endregion GT
        #region GL
        private bool potentiallyResolvableSP(GL gl, IL fil)
        {
            return gl.pp == fil.pp.n && potentiallyUnifiableSP(gl.gtt, fil.itt);
        }
        private bool potentiallyUnifiableSP(GL gl, GL fgl)
        {
            return gl.pp == fgl.pp.n && potentiallyUnifiableSP(gl.gtt, fgl.itt);
        }
        #endregion
        #region GTT
        private bool potentiallyUnifiableSP(GTT gtt, ITT fitt)
        {
            if (fitt.isGround)
                return potentiallyUnifiableSP(gtt, fitt as GTT);
            else
                return Enumerable.Range(0, gtt.Count).All(i => potentiallyUnifiableSP(gtt.gtT[i], fitt.itT[i]));
        }
        private bool potentiallyUnifiableSP(GTT gtt, GTT fgtt)
        {
            return Enumerable.Range(0, gtt.Count).All(i => potentiallyUnifiableSP(gtt.gtT[i], fgtt.itT[i]));
        }
        #endregion

        /*        private bool potentiallyUnifiable(GFA gfa, IT fit)
                {
                    if (fit.isGround)
                        return potentiallyUnifiable(gfa, fit as GT);
                    else
                        return potentiallyUnifiable(gfa, fit as FT);
                }
                private bool potentiallyUnifiable(GFAEC gfa, IT fit)
                {
                    return potentiallyUnifiable(gttData[gfa.gtt].sgfas[gfa.function],fit);
                }

                private bool potentiallyUnifiable(GFA gfa, GT fgt)
                {
                    return potentiallyUnifiable(gfa.gt, fgt);
                }
                private bool potentiallyUnifiable(GFA gfa, FT fft)
                {
                    if (fft is FVT)
                        return true;
                    var ffa = fft as FFA;
                    return gfa.function == ffa.function && potentiallyUnifiable(gfa.gtt, ffa.ftt);
                }*/
        #endregion potentiallyUnifiable

        #region gtrt
        /*        internal void gtrtP1A(GTRTC ar)
                {
                    foreach (var f in ar.functions)
                    {
                        if (importedGTLFSTriggers.Add(f))
                        {
                            ar.nfs.Add(f);
                            foreach (var polarity in trueFalse)
                                equalityCLsByPolarityAndLFS[polarity].insert(f);
                        }
                        else
                        {
                            var typeTriggers = getTypeTriggers(f.resultType);
                        }
                    }

                    foreach (var gt in ar.gts)
                    {
                        addInteresting(gt);
                        if (addTriggersImported(gt))
                            ar.ngts.Add(gt);
                    }
                }
                internal void gtrtP2ANo(GTRTC ar)
                {
                    addGTsToResult(ar, ar.gts);
                    addLFSsToResult(ar);
                    cleanupFluff();
                }
                public bool gtTriggersCriterionCLTEQ(FCL ca)
                {
                    Debug.Assert(ca.il.iaf.predicate is Equality);
                    var polarity = ca.il.polarity;
                    if (ca.il.freeVariables.Count < ca.fc.freeVariables.Count)
                        return false;
                    if (polarity)
                    {
                        if (ca.fc.Count() > 2)
                            return false;
                        return true;
                    }
                    else
                    {
                        if (ca.fc.Count() > 2)
                            return false;
                        return true;
                    }
                }
                public bool gtTriggersCriterionTr(LFSFLTrigger fat)
                {
                    return true;
                }
                public bool gtTriggersCriterionCLT(FCLT cat)
                {
                    return true;
                }
                public ISet<FC> getLFSsFCs(ISet<Function> lfss)
                {
                    var r = new HashSet<FC>();
                    addLFSFCs(lfss, r, false);
                    return r;
                }
                public void addLFSFCs(IEnumerable<Function> fs, ISet<FC> fcs, bool initialAllowed)
                {
                    var fcls = new HashSet<FCL>();
                    addLFSCLs(fs, fcls, initialAllowed);
                    foreach (var fcl in fcls)
                        if (gtTriggersCriterionCLTEQ(fcl))
                            fcs.Add(fcl.fc);
                }
                public void addLFSCLs(IEnumerable<Function> fs, ISet<FCL> cls, bool initialAllowed)
                {
                    foreach (var f in fs)
                        addLFSCLs(f, cls, initialAllowed);
                }
                public void addLFSCLs(Function f, ISet<FCL> cls, bool initialAllowed)
                {
                    if (gtInstantiateCLTEqualityKnob || gtInstantiateFLKnob)
                        foreach (var polarity in trueFalse)
                        {
                            ISet<FCL> mcls;
                            if (equalityCLsByPolarityAndLFS[polarity].TryGetValue(f, out mcls))
                                foreach (var cl in mcls)
                                    if ((initialAllowed || this != initialUniverse) && (gtInstantiateCLTEqualityKnob || cl.fc.Count == 1) && (isOriginal(cl.fc) || isImported(cl.fc)))
                                        cls.Add(cl);
                        }
                }*/
        #endregion gtrt
        internal IEnumerable<GC> getGTEqGCs(GT gt)
        {
            return getGTEqNEGCs(gt, (b) => b);
        }
        internal IEnumerable<GC> getGTEqNEGCs(GT gt, Predicate<bool> p)
        {
            return
                from gtt in gtData[gt].sgtts
                where gtt.Count() == 2
                from gaf in gttData[gtt].sgafs.Values
                where gaf.predicate.isEquality
                from b in trueFalse
                where p(b)
                from gc in glData[gaf.gLiteral(b)].gcs
                where isAssumed(gc)
                select gc;
        }
        #endregion GT all ground term triggers

        #region AGAPGTT assumed ground atoms by predicate and gtts
        internal class AGAPGTTRT : DAGRequest<AGAPGTTRT>
        {
            public AGAPGTTRT(IPredicate predicate, IEnumerable<GTT> gtts)
            {
                this.predicate = predicate;
                this.gtts = new HashSet<GTT>(gtts);
            }
            public readonly IPredicate predicate;
            public readonly ISet<GTT> gtts;

            public readonly ISet<GL> rgls = new HashSet<GL>();
            public AGAPGTTRT combine(IEnumerable<AGAPGTTRT> rts)
            {
                Debug.Assert(rts.Count() > 1);
                var frt = rts.First();
                Debug.Assert(rts.All(rt => rt.predicate == frt.predicate));
                return new AGAPGTTRT(frt.predicate, from rt in rts from gtt in rt.gtts select gtt);
            }
            public void distribute(IEnumerable<AGAPGTTRT> rts)
            {
                Debug.Assert(rts.Count() > 1);
                foreach (var rt in rts)
                {
                    Debug.Assert(rt.predicate == predicate);
                    foreach (var rga in rgls)
                        if (rt.gtts.Contains(rga.gaf.gtt))
                            rt.rgls.Add(rga);
                }
            }
            public TRC<AGAPGTTRT> makeTRC(Universe u)
            {
                return u.makeAGAPGTTRTC(this);
            }
        }
        internal abstract class AGAPGTTRTC : TRCC<AGAPGTTRT>
        {
            protected AGAPGTTRTC(Universe universe, AGAPGTTRT rt)
                : base(universe, rt)
            {
            }
            public IPredicate predicate { get { return inRequest.predicate; } }
            public ISet<GTT> gtts { get { return inRequest.gtts; } }
            public ISet<GL> rgls { get { return inRequest.rgls; } }
            internal readonly ISet<GTT> ngtts = new HashSet<GTT>();
            public override string ToString()
            {
                return gu.ToString() + " : " + predicate.name;
            }
        }
        internal abstract AGAPGTTRTC makeAGAPGTTRTC(AGAPGTTRT rt);
        private IEnumerable<GL> getAssumedGLsByPP(PP pp)
        {
            return assumedGLsByPP.getOrEmpty(pp);
        }
        protected GL getAssumedGLByPAndGTT(IPredicate predicate, GTT gtt)
        {
            if (!gttData[gtt].agaPGTTCache.Contains(predicate))
            {
                var agapgttrtc = makeAGAPGTTRTC(new AGAPGTTRT(predicate, new[] { gtt }));
                recursiveDAGCall(agapgttrtc);
            }

            GL gl;
            if (gttData[gtt].assumedGLsByPredicate.TryGetValue(predicate, out gl))
                return gl;
            else
                return null;
        }
        internal void getAssumedGLByPAndGTTP1A(AGAPGTTRTC ar)
        {
            Debug.Assert(inScope(ar.predicate));
            var pgtts = new HashSet<GTT>();
            foreach (var gtt in ar.gtts)
            {
                GL ga;
                if (gttData[gtt].assumedGLsByPredicate.TryGetValue(ar.predicate, out ga))
                {
                    ar.rgls.Add(ga);
                    gttData[gtt].agaPGTTCache.Add(ar.predicate);
                } else
                    if (gttData[gtt].agaPGTTCache.Add(ar.predicate))
                    ar.ngtts.Add(gtt);
            }
        }
        #endregion AGAPGTT assumed ground atoms by predicate and gtts

        #region MSGT make successor ground terms
        protected bool sourceWaiver = false;
        /////////////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////////////
        public class MSGTRT : DAGRequest<MSGTRT>
        {
            public MSGTRT(Function function, IEnumerable<GTT> igtts, bool isGoal)
            {
                this.function = function;
                this.isGoal = isGoal;
                this.gtts = new HashSet<GTT>(igtts);
            }
            private MSGTRT(IEnumerable<MSGTRT> rts)
            {
                Debug.Assert(rts.Count() > 1);
                Debug.Assert(rts.All(rt => rt.function == rts.First().function));
                Debug.Assert(rts.All(rt => rt.isGoal == rts.First().isGoal));
                var frt = rts.First();
                this.function = frt.function;
                this.isGoal = frt.isGoal;
                this.gtts = new HashSet<GTT>(from rt in rts from gtt in rt.gtts select gtt);
            }
            public MSGTRT combine(IEnumerable<MSGTRT> rts)
            {
#if DEBUG
                Debug.Assert(rts.Count() > 1);
#endif
                return new MSGTRT(rts);
            }
            public void distribute(IEnumerable<MSGTRT> rts)
            {
                Debug.Assert(rts.Count() > 1);
                foreach (var rgt in rgts)
                    foreach (var rt in rts)
                        foreach (var gfa in rgt.gfasByFunction[function])
                            if (rt.gtts.Contains(gfa.Value.gtt))
                                rt.rgts.Add(rgt);
            }
            public TRC<MSGTRT> makeTRC(Universe u)
            {
                return u.makeMSGTRTC(this);
            }
            public readonly ISet<GTT> gtts;
            public readonly Function function;
            public readonly bool isGoal;
            public readonly ISet<GT> rgts = new HashSet<GT>();
        }
        public abstract class MSGTRTC : TRCC<MSGTRT>
        {
            protected MSGTRTC(Universe universe, MSGTRT rt)
                : base(universe, rt)
            {
            }
            public bool isGoal { get { return inRequest.isGoal; } }
            public IEnumerable<GTT> gtts { get { return inRequest.gtts; } }
            public Function function { get { return inRequest.function; } }
            public ISet<GT> rgts { get { return inRequest.rgts; } }
            public readonly ISet<GTT> ngtts = new HashSet<GTT>(); //initial don't haves
        }
        internal abstract MSGTRTC makeMSGTRTC(MSGTRT rt);
        internal ISet<GT> makeSuccessorGTs(MSGTRT rt)
        {
            Debug.Assert(inScope(rt.function));
            var msgtrtc = makeMSGTRTC(rt);
            recursiveDAGCall(msgtrtc);
            return msgtrtc.rgts;
        }
        protected abstract bool predecessorRelevant(Function f, GTT gtt);
        protected void makeSuccessorGTsP1A(MSGTRTC ar)
        {
            #region precondition
#if DEBUG
            foreach (var igtt in ar.gtts)
                Debug.Assert(upToDateGTTMM(igtt));
            Debug.Assert(inScope(ar.function));
#endif
            #endregion precondition

            var function = ar.function;
            var ngtts = ar.ngtts;
            var igtts = ar.gtts;
            var isGoal = ar.isGoal;
            foreach (var gtt in igtts)
            {
                Debug.Assert(gttData.ContainsKey(gtt));
                Debug.Assert(upToDateGTTMM(gtt));
                GFA gfa;
                if (gttData[gtt].sgfas.TryGetValue(function, out gfa))
                    addMSGT(ar, gfa.gt);//Already have this term - return it
                else if (hasRGFA(function, gtt) && !canCreate(ar, function, gtt))
                    addGTTRGFA(gtt, function);
                else if (!predecessorRelevant(function, gtt))
                { //maybeAdd gt
                    if (canCreate(ar, function, gtt))
                    {
                        removeGTTRGFA(gtt, function);
                        var rgt = makeGT(function, gtt, isGoal);
                        addMSGT(ar, rgt);
                    } else
                    {
                        addGTTRGFA(gtt, function);
                    }
                } else//We have to check this with the predecessors
                    ngtts.Add(gtt);
            }
        }

        private bool canCreate(MSGTRTC ar, Function function, GTT gtt)
        {
            return
                addGTKnob &&
                gttDepth(gtt) < maxGTDepth;
        }

        protected void addMSGT(MSGTRTC ar, GT gt)
        {
            ar.rgts.Add(gt);
        }
        internal void makeSuccessorGTsP2A(MSGTRTC ar)
        {
            Debug.Assert(!isRefuted);
            var function = ar.function;
            var isGoalv = ar.isGoal;
            var ngtts = ar.ngtts;

            foreach (var gtt in ngtts)
            {
                GFA gfa;
                if (gttData[gtt].sgfas.TryGetValue(function, out gfa))
                {
                    Debug.Assert(upToDate(gfa.gt));
                    addMSGT(ar, gfa.gt);
                } else if (canCreate(ar, function, gtt))
                {
                    var rgt = makeGT(function, gtt, ar.isGoal);
                    addMSGT(ar, rgt);
                } else
                    addGTTRGFA(gtt, function);
            }


            if (isGoalv)
                addGoalsRecursive(ar.rgts.Except(goalGTs));
            markAdded(false);

            #region postcondition
#if DEBUG
            Debug.Assert(ar.rgts.All(upToDate));
            foreach (var gtt in ar.ngtts)
                Debug.Assert(
                (gttData[gtt].sgfas.ContainsKey(function) && ar.rgts.Contains(gttData[gtt].sgfas[function].gt)) ||
                (hasRGFA(function, gtt)));
            if (isGoalv)
                foreach (var gt in ar.rgts)
                    Debug.Assert(isGoal(gt));
#if INVARIANTS
            Debug.Assert(invariant());
#endif
#endif
            #endregion postcondition
        }
        #endregion MSGT make successor ground terms

        #region MSGTT make successor ground tuples
        public class MSGTTRT : DAGRequest<MSGTTRT>
        {
            public MSGTTRT(IEnumerable<GTT> iGTTs)
            {
                gtts = new HashSet<GTT>(iGTTs);
            }
            public MSGTTRT combine(IEnumerable<MSGTTRT> rts)
            {
                #region preconditions
#if DEBUG
                Debug.Assert(rts.Count() > 1);
#endif
                #endregion preconditions
                return new MSGTTRT(from rt in rts from gtt in rt.gtts select gtt);
            }
            public void distribute(IEnumerable<MSGTTRT> rts)
            {
                Debug.Assert(rts.Count() > 1);
                foreach (var rt in rts)
                    rt.gtts.IntersectWith(gtts);
            }
            public TRC<MSGTTRT> makeTRC(Universe u)
            {
                return u.makeMSGTTRTC(this);
            }

            public readonly ISet<GTT> gtts;
        }
        internal abstract MSGTTRTC makeMSGTTRTC(MSGTTRT rt);
        public abstract class MSGTTRTC : TRCC<MSGTTRT>
        {
            public MSGTTRTC(Universe u, MSGTTRT rt)
                : base(u, rt)
            {
            }
            public ISet<GTT> gtts { get { return inRequest.gtts; } }
            public readonly ISet<GTT> ngtts = new HashSet<GTT>();
        }

        internal ISet<GTT> makeSuccessorGTTs(MSGTTRT rt)
        {
            var msgttrtc = makeMSGTTRTC(rt);
            recursiveDAGCall(msgttrtc);
            return rt.gtts;
        }
        private bool canCreate(MSGTTRTC ar, GTT gtt)
        {
            return
                addGTTKnob &&
                gtt.gtT.All(gt => gtDepth(gt) < maxGTDepth);
        }
        protected void makeSuccessorGTTsP1A(MSGTTRTC ar)
        {
            #region precondition
#if DEBUG
            foreach (var gtt in ar.gtts)
                foreach (var gt in gtt.gtT)
                {
                    Debug.Assert(upToDateGTMM(gt));
                }
#endif
            #endregion precondition

            if (!ar.gtts.Any())
            {
                ar.outRTs = new MSGTTRT[0];
                return;
            }

            foreach (var gtt in ar.gtts.ToList())
            {
                #region debug
#if DEBUG
                if (gttBreakCond(this, gtt))
                    Debugger.Break();
#endif
                #endregion debug
                if (hasRGTT(gtt) && !canCreate(ar, gtt))
                {
                    ar.gtts.Remove(gtt);
                } else if (hasGTTMM(gtt))
                {
                    Debug.Assert(upToDateGTTMM(gtt));
                } else
                {
                    if (hasRGTT(gtt))
                        removeRGTT(gtt);
                    ar.ngtts.Add(gtt);
                }
            }
        }
        public bool isPotentialMapReadNotOverUpdateGTT(GTT gtt)
        {
            if (!(gtt.gtT[0].type is MapType))
                return false;
            var mapType = (gtt.gtT[0].type as MapType);
            if (gtt.gtT.Count != mapType.domain.Count() + 1)
                return false;
            for (var i = 0; i < mapType.domain.Count(); i++)
                if (!(isCompatible(mapType.domain[i], gtt.gtT[i + 1].type)))
                    return false;
            if (gtt.gtT[0].gfas.All(gfa => srs.isMapWrite(gfa.function)))
                return false;
            return true;
        }
        private static bool isCompatible(IType type1, IType type2)
        {
            if (type1.isEquivalent(type2))
                return true;
            if (type1 is TypeConstructorInstance && type2 is TypeConstructorInstance)
            {
                var tci1 = type1 as TypeConstructorInstance;
                var tci2 = type2 as TypeConstructorInstance;
                if (tci1.typeConstructor.name == tci2.typeConstructor.name)
                    return true;
            }
            return false;
        }
        protected void makeSuccessorGTTsP2NGTTS(MSGTTRTC ar, GTT ngtt)
        {
            //maybeadd gtt
            /*            if (canCreate(ar,ngtt))
                            makeGTT(ngtt);
                        else*/
            {
                addRGTT(ngtt);
                ar.gtts.Remove(ngtt);
            }
        }
        #endregion MSGTT make successor ground tuples

        #endregion DAG properties

        #region instantiation saturation
        #region element properties
        protected bool isOnlyEQNEAndPath(GC gc)
        {
            return gc.gls.All(gl => gl.predicate.isEquality || srs.isPathCondition(gl.predicate));
        }
        protected bool isOnlyEQAndPath(GC gc)
        {
            return gc.gls.All(gl => (gl.predicate.isEquality && gl.polarity) || srs.isPathCondition(gl.predicate));
        }
        private bool isVeryStrictMaximal(GL gl, GC gc)
        {
            foreach (var gl2 in gc.gls)
                if (gl != gl2)
                    foreach (var gt2 in gl2.gtT)
                        if (!gl.allGTs.Contains(gt2))
                            return false;
            return true;
        }
        private bool isSomewhatMaximal(GL gl, GC gc)
        {
            foreach (var gl2 in gc.gls)
                if (gl != gl2)
                    if (gl2.gtT.Count == 0)
                        return true;
                    else if (gl2.gtT.Count == 2 &&
                                gl.allGTs.Contains(gl2.gtT[0]) || gl.allGTs.Contains(gl2.gtT[1]))
                        return true;
                    else
                        return false;
            return true;
        }
        private bool isMapRead(GT gt)
        {
            return gt.gfas.Any(gfa => gfa.function.isMapRead);
        }
        private bool isCNFName(GL gl)
        {
            return CSRS.isCNFName(gl.predicate.name);
        }
        private bool isOriginalGDE(GTT m1, GTT m2)
        {
            //            return isOriginal(m1) && isOriginal(m2);
            return false; //TODO
        }
        private bool isGoalGDE(GTT m1, GTT m2)
        {
            //            return isGoal(m1) && isGoal(m2);
            return false; //TODO
        }
        protected abstract bool predecessorsHaveDisequality(GT gt0, GT gt1);
        #endregion element properties

        #region instantiation criteria
        public bool glResolveFCCriterion(GL gl)
        {
            return glResolveFCKnob && (isGoal(gl) || glResolveFCNonGoalKnob) && (!gl.predicate.isInterpreted)
                /* && (glData[gl].isAssumed || glResolveFCNonAssumedKnob)*/;
        }
        public static bool glResolveFCCriterion(FC fc, int ili)
        {
            var il = fc.ils[ili];
            return
                   glResolveFCKnob
                && fc.ils.Count <= 4
                && il.freeVariables.Count == fc.freeVariables.Count
                ;
        }
        private bool glResolveFCCriterion(GL gl, FC fc, int ili)
        {
            if (!glResolveFCCriterion(gl) || !glResolveFCCriterion(fc, ili))
                return false;
            if (isUGCInstSat(gl) && isInstSat(fc))
                return false;
            if (!isNew(gl) && isImported(fc))
                return false;
            var canExpand = isGoal(gl) && glData[gl].canExpand;
            var il = fc.ils[ili];
            if (il.freeVariables.Count < fc.freeVariables.Count)
                return false;
            if (isMaximal(fc, ili))
                return true;
            if (canExpand && fc.Count() <= 3)
                return true;
            if (fc.ils.Any(il1 => il1 != il && il1.itt.Any(it => it is FFA)))
                return false;
            return true;
        }
        private bool literalSaturationCondition(IC c, int i, GL ga)//unused
        {
            int ngCount = 0;
            if (c[i].freeVariables.Count != c.freeVariables.Count)
                foreach (var a in c)
                    if (a != c[i])
                        if (!c[i].freeVariables.IsSupersetOf(a.freeVariables))
                            ngCount++;
            if (ngCount > 1)
                return false;
            if (!glData[ga].canExpand)
                for (var j = 0; j < c.Count(); j++)
                    if (i != j)
                    {
                        var a = c[j];
                        foreach (var t in a.iaf.itt)
                            if (t is FFA)
                                return false;
                    }
            return true;
            /*            return
                            (c.Count() == 2 && c[i].freeVariables.Count == c.freeVariables.Count) &&
                            (c.All(a => a == c[i] || a.formula.arguments.All(t => (t is GroundTermEC || t is VariableEC))));*/
        }
        private bool gtCLFrameRuleCriterion(FC fc, int ili)
        {
            var atom = fc.ils[ili];
            if (!atom.isEQOrDE || !atom.polarity && atom.isGround)
                return false;
            var fa0 = atom.iaf.itt[0] as FFA;
            var fa1 = atom.iaf.itt[1] as FFA;
            if (fa0 == null || fa1 == null || !fa0.function.isMapRead || !fa1.function.isMapRead || fa0.function != fa1.function)
                return false;
            if (!fa0.ftt.Skip(1).SequenceEqual(fa1.ftt.Skip(1)))
                return false;
            return true;
        }
        private bool gtCLTEqualityCriterion(CanonicalForms.FCLT clt)
        {
            Debug.Assert(clt.cl.il.isEQOrDE && clt.cl.il.polarity);
            return clt.term.freeVariables.Count == clt.cl.fc.freeVariables.Count;
        }
        public static bool gtFCInstantiationCriterion(FC fc, int ili, int iti)
        {
            var il = fc.ils[ili];
            var it = il.itt[iti];
            return
                   it.freeVariables.Count == fc.freeVariables.Count
                && (
                       (gtInstantiateFLEqualityKnob && fc.Count == 1 && il.isEQOrDE)
                    || (gtInstantiateCLTEqualityKnob && il.isEQOrDE)
                    || (gtInstantiateCLTNonEqualityKnob && !il.isEQOrDE)
               );


        }
        private bool gtFCInstantiationCriterion(GT gt)
        {
            return gtInstantiateFCKnob && (isGoal(gt) || gtInstantiateFCNonGoalKnob) && isNew(gt);
        }
        private bool gtFCInstantiationCriterion(GT gt, FCLT fclt)
        {
            if (!gtFCInstantiationCriterion(fclt.fc, fclt.ili, fclt.iti))
                return false;
            if (!gtFCInstantiationCriterion(gt))
                return false;

            if (gtDepth(gt) > 0)
            {
                foreach (var il in fclt.fc.ils)
                    foreach (var it in il.iaf.itt)
                        if (!it.isGround && it != fclt.it)
                            foreach (var v in it.freeVariables)
                                if (it.maxVarDepth(v) > fclt.it.minVarDepth(v))
                                    return false;
            }
            return true;
        }
        private bool saturationCriterion(FC c, int i)
        {
            if (c.ils[i].freeVariables.Count < c.freeVariables.Count)
                return false;
            /*
            var iVars = c[i].freeVariables;
            for (var j = 0; j < c.Count(); j++ )
                if (i!=j)
                {
                    var a = c[j];
                    foreach (var t in a.formula.arguments)
                        if (!safeForSaturation(t, iVars))
                            return false;
                }
                        return true;
            */
            foreach (var a in c)
                if (a != c[i])
                    foreach (var t in a.iaf.itt)
                        if (!(t is FVT || t is GT))
                            return false;
            if (c.Count() == 2)
                return true;
            if (c.freeVariables.Count == c[i].freeVariables.Count)
                return true;
            return false;
        }
        #endregion instantiation criteria

        #region classes
        public class LFSTT
        {
            public LFSTT(IEnumerable<Function> fs)
            {
                this.fs = fs.ToArray();
                stringCache = makeString(fs);
                hashCache = stringCache.GetHashCode();
            }
            public override sealed string ToString()
            {
                return stringCache;
            }
            public override sealed int GetHashCode()
            {
                return hashCache;
            }
            public override sealed bool Equals(object obj)
            {
                return (obj is LFSTT) && (obj as LFSTT).stringCache == stringCache;
            }
            public int count { get { return fs.Count(); } }
            public Function this[int i]
            {
                get
                {
                    return fs[i];
                }
            }

            public readonly Function[] fs;
            public string ToStringN() { return ToString(); }
            private readonly string stringCache;
            private readonly int hashCache;
            public static string makeString(IEnumerable<Function> fs)
            {
                var s = "[";
                foreach (var f in fs)
                {
                    if (s.Length > 1)
                        s += ",";
                    if (f == null)
                        s += "?";
                    else
                        s += f.ToStringN();
                }
                s += "]";
                return s;
            }
            public LFSTT toScope(Func<Function, Boolean> inScope)
            {
                if (fs.All(f => f == null || inScope(f)))
                    return this;
                return new LFSTT(from f in fs select (f == null || !inScope(f)) ? null : f);
            }


        }
        /*        public class GLFSTT : LFSTT {
                    public GLFSTT(IEnumerable<Function> fs)
                        : base(fs)
                    {
                        Debug.Assert(fs.All(f=>f!=null));
                    }
                }*/
        #endregion classes

        #region instantiation index
        public readonly InstantiationIndex instantiationIndex;
        public interface IPTriggersNG
        {
            //            IEnumerable<GTT> allGTTs { get; }
            IEnumerable<LFSTT> allLFSTTs { get; }
        }
        public abstract class IPTriggers<T> : IPTriggersNG
        {
            protected readonly IDictionary<LFSTT, ISet<T>> lfsttMap = new Dictionary<LFSTT, ISet<T>>();
            public IEnumerable<LFSTT> allLFSTTs { get { return lfsttMap.Keys; } }
            //            public abstract IEnumerable<GTT> allGTTs { get; }
            internal void index(ITT itt, T t, bool insert, IEnumerable<LFSTT> nlfstts)
            {
                if (nlfstts != null)
                {
                    Debug.Assert(insert);
                    foreach (var lfstt in nlfstts)
                    {

                        if (matches(lfstt, itt))
                            lfsttMap.insert(lfstt, t);
                    }
                } else
                    foreach (var kv in lfsttMap)
                    {
                        if (matches(kv.Key, itt))
                            if (insert)
                                kv.Value.Add(t);
                            else
                                kv.Value.Remove(t);
                    }
            }
            internal IEnumerable<T> lookup(LFSTT lfstt)
            {
                return lfsttMap[lfstt];
            }
            internal bool has(LFSTT lfstt) { return lfsttMap.ContainsKey(lfstt); }
            public bool add(LFSTT lfstt)
            {
                if (lfsttMap.ContainsKey(lfstt))
                    return false;
                lfsttMap[lfstt] = new HashSet<T>();
                return true;
            }
        }
        public sealed class GLPPTriggers : IPTriggers<FCL>
        {
            private readonly IDictionary<GTT, ISet<GCL>> gttMap = new Dictionary<GTT, ISet<GCL>>();
            public IEnumerable<GTT> allGTTs { get { return gttMap.Keys; } }

            public IEnumerable<FCL> allFCLs { get { return from s in lfsttMap.Values from fcl in s select fcl; } }

            internal IEnumerable<FCL> lookup(GTT gtt)
            {
                return new HashSet<FCL>(from lfstt in gtt.lfstts from t in lfsttMap[lfstt] select t);
            }
            internal IEnumerable<GCL> lookupGCLs(GTT gtt)
            {
                return new HashSet<GCL>(gttMap[gtt]);
            }

            internal bool has(GTT gtt)
            {
                return gttMap.ContainsKey(gtt);
            }

            internal bool add(GTT gtt)
            {
                return gttMap.insert(gtt);
            }
            internal bool remove(GTT gtt)
            {
                Debug.Assert(!gttMap.ContainsKey(gtt) || !gttMap[gtt].Any());
                return gttMap.Remove(gtt);
            }
        }
        public sealed class GTLFSTriggers : IPTriggers<FCLT>
        {
            private readonly IDictionary<GT, ISet<FCLT>> gtMap = new Dictionary<GT, ISet<FCLT>>();
            public IEnumerable<GT> allGTs { get { return gtMap.Keys; } }
            internal IEnumerable<FCLT> lookup(GT gt)
            {
                return new HashSet<FCLT>(from gfa in gt.gfas from t in lookup(gfa.function, gfa.gtt) select t);
            }
            private IEnumerable<FCLT> lookup(Function f, GTT gtt)
            {
                return from lfstt in gtt.lfstts from t in lfsttMap[lfstt] select t;
            }
        }
        public sealed class GTGTriggers
        {
            private readonly ISet<GCL> gcls = new HashSet<GCL>();
            public IEnumerable<GCL> allGCLs { get { return gcls; } }
            public void index(GCL gcl, bool insert)
            {
                if (insert)
                    gcls.Add(gcl);
                else
                    gcls.Remove(gcl);
            }
        }
        public abstract class AInstSetElement
        {
            public readonly ISet<LFSTT> allLFSTTs = new HashSet<LFSTT>();
            protected AInstSetElement() { }
            /*            protected AInstSetElement(IEnumerable<LFSTT> lfstts)
                        {
                            this.lfstts.UnionWith(lfstts);
                        }*/
            public bool add(LFSTT lfstt)
            {
                return allLFSTTs.Add(lfstt);
            }
        }
        public sealed class GLInstSetElement : AInstSetElement
        {
            public GLInstSetElement() { }
            /*            public GLInstSetElement(IEnumerable<GTT> gtts, IEnumerable<LFSTT> lfstts)
                            : base(lfstts)
                        {
                            pGTTs.UnionWith(gtts);
                        }*/

            /*            public GLInstSetElement(GLPPTriggers t)
                            : base(t.allLFSTTs)
                        {
                            allGTTs.UnionWith(t.allGTTs);
                        }*/

            private readonly ISet<GTT> pGTTs = new HashSet<GTT>();
            public IEnumerable<GTT> allGTTs { get { return pGTTs; } }

            /*            public void unionWith(GLInstSetElement other)
                        {
                            foreach (var gtt in other.allGTTs)
                                add(gtt);
                            foreach (var lfstt in other.lfstts)
                                add(lfstt);

                            lfstts.UnionWith(other.lfstts);
                        }*/
            /*            public GLInstSetElement except(GLInstSetElement other)
                        {
                            return new GLInstSetElement(allGTTs.Except(other.allGTTs), allLFSTTs.Except(other.allLFSTTs));
                        }*/
            /*            public GLInstSetElement clone()
                        {
                            var r = new GLInstSetElement(allGTTs, lfstts);
                            r.allGTTs.UnionWith(allGTTs);
                            r.lfstts.UnionWith(lfstts);
                            return r;
                        }*/

            internal bool has(LFSTT lfstt)
            {
                return allLFSTTs.Contains(lfstt);
            }

            internal bool addInt(GTT gtt)
            {
                return pGTTs.Add(gtt);
            }
        }
        public sealed class GTInstSetElement : AInstSetElement
        {
            public GTInstSetElement() { }
            /*            public GTInstSetElement(IEnumerable<LFSTT> lfstts)
                            : base(lfstts)
                        {
                        }

                        public GTInstSetElement(GTLFSTriggers t)
                            : base(t.allLFSTTs)
                        {
                        }*/

            public void unionWith(GTInstSetElement other)
            {
                allLFSTTs.UnionWith(other.allLFSTTs);
            }
            /*            public GTInstSetElement except(GTInstSetElement other)
                        {
                            return new GTInstSetElement(allLFSTTs.Except(other.allLFSTTs));
                        }*/
            /*            public GTInstSetElement clone()
                        {
                            var r = new GTInstSetElement(allLFSTTs);
                            r.allLFSTTs.UnionWith(allLFSTTs);
                            return r;
                        }*/

            internal bool has(LFSTT lfstt)
            {
                return allLFSTTs.Contains(lfstt);
            }
        }
        public interface InstantiationSetII
        {
            IEnumerable<PP> allPPs { get; }
            IEnumerable<Function> allLFSs { get; }
            IEnumerable<GT> allGTs { get; }

            IEnumerable<GTT> getPPGTTs(PP pp);
            IEnumerable<LFSTT> getPPLFSTTs(PP pp);
            IEnumerable<LFSTT> getFLFSTTs(Function f);

            bool has(PP pp);
            bool has(Function f);
            bool has(PP pp, GTT gtt);
            bool has(PP pp, LFSTT lfstt);
            bool has(GT gt);
            bool has(Function f, LFSTT lfstt);
        }
        public interface InstantiationSetI : InstantiationSetII
        {
            bool add(PP pp);
            bool add(Function f);
            bool add(PP pp, GTT gtt);
            bool add(PP pp, LFSTT lfstt);
            bool add(GT gt);
            bool add(Function f, LFSTT lfstt);
        }
        public sealed class InstantiationSet : InstantiationSetI
        {
            #region members
            public readonly IDictionary<PP, GLInstSetElement> glPPTriggers = new Dictionary<PP, GLInstSetElement>();
            public readonly IDictionary<Function, GTInstSetElement> gtLFSTriggers = new Dictionary<Function, GTInstSetElement>();
            private readonly ISet<GT> pGTs = new HashSet<GT>();
            #endregion members

            #region accessors
            internal bool isEmpty { get { return !glPPTriggers.Any() && !gtLFSTriggers.Any() && !allGTs.Any(); } }
            public IEnumerable<PP> allPPs { get { return glPPTriggers.Keys; } }
            public IEnumerable<Function> allLFSs { get { return gtLFSTriggers.Keys; } }
            public IEnumerable<GT> allGTs { get { return pGTs; } }
            public IEnumerable<GTT> getPPGTTs(PP pp) { return glPPTriggers[pp].allGTTs; }
            public IEnumerable<LFSTT> getPPLFSTTs(PP pp) { return glPPTriggers[pp].allLFSTTs; }
            public IEnumerable<LFSTT> getFLFSTTs(Function f) { return gtLFSTriggers[f].allLFSTTs; }
            #endregion accessors

            #region instance creation
            public InstantiationSet() { }
            public InstantiationSet(HashSet<GL> gls, HashSet<GT> gts)
            {
                foreach (var gl in gls)
                    add(gl.pp.n, gl.gtt);
                foreach (var gt in gts)
                    add(gt);
            }
            public InstantiationSet(InstantiationSetII other)
            {
                unionWith(other);
            }
            #endregion instance creation


            #region inclusion queries
            public bool has(PP pp) { return glPPTriggers.ContainsKey(pp); }
            public bool has(PP pp, GTT gtt)
            {
                var e = glPPTriggers.getOrNull(pp);
                return (e != null && e.allGTTs.Contains(gtt));
            }
            public bool has(PP pp, LFSTT lfstt)
            {
                var e = glPPTriggers.getOrNull(pp);
                return (e != null && e.has(lfstt));
            }
            public bool has(Function f) { return gtLFSTriggers.ContainsKey(f); }
            public bool has(Function f, LFSTT lfstt)
            {
                var e = gtLFSTriggers.getOrNull(f);
                return (e != null && e.has(lfstt));
            }
            public bool has(GT gt)
            {
                return allGTs.Contains(gt);
            }
            #endregion inclusion queries

            #region addition
            public bool add(PP pp)
            {
                return glPPTriggers.addIfNew(pp);
            }
            public bool add(Function f)
            {
                return gtLFSTriggers.addIfNew(f);
            }
            public bool add(PP pp, GTT gtt)
            {
                var e = glPPTriggers.getOrAdd(pp, () => new GLInstSetElement());
                foreach (var lfstt in gtt.lfstts)
                    e.add(lfstt);
                return e.addInt(gtt);
            }
            public bool add(PP pp, LFSTT lfstt)
            {
                var e = glPPTriggers.getOrAdd(pp, () => new GLInstSetElement());
                return e.add(lfstt);
            }
            public bool add(Function f, LFSTT lfstt)
            {
                var e = gtLFSTriggers.getOrAdd(f, () => new GTInstSetElement());
                return e.add(lfstt);
            }
            public bool add(GT gt)
            {
                if (has(gt))
                    return false;
                addNet(gt);
                foreach (var gfa in gt.gfas)
                    add(gfa.function, gfa.gtt);
                return true;
            }
            public void add(Function f, GTT gtt)
            {
                var e = gtLFSTriggers.getOrAdd(f, () => new GTInstSetElement());
                foreach (var lfstt in gtt.lfstts)
                    e.allLFSTTs.UnionWith(gtt.lfstts);
            }
            public void addNet(GT gt)
            {
                pGTs.Add(gt);
            }
            public void unionWith(InstantiationSetII other)
            {
                foreach (var pp in other.allPPs)
                {
                    add(pp);
                    foreach (var gtt in other.getPPGTTs(pp))
                        add(pp, gtt);
                    foreach (var lfstt in other.getPPLFSTTs(pp))
                        add(pp, lfstt);
                }
                foreach (var f in other.allLFSs)
                {
                    add(f);
                    foreach (var lfstt in other.getFLFSTTs(f))
                        add(f, lfstt);
                }
                foreach (var gt in other.allGTs)
                    addNet(gt);
            }
            public static InstantiationSet union(InstantiationSet a, InstantiationSet b)
            {
                var r = new InstantiationSet(a);
                r.unionWith(b);
                return r;
            }
            #endregion addition

            #region transformations
            internal InstantiationSet toPredecessor(Universe u, int pi)
            {
                var r = new InstantiationSet();
                var pu = u.pus[pi];
                foreach (var kv in glPPTriggers)
                {
                    var pp = kv.Key;
                    if (pu.inScope(pp))
                    {
                        r.add(pp);
                        foreach (var gtt in kv.Value.allGTTs)
                            foreach (var pgtt in u.getGTTPGTTs(pi, gtt))
                                r.add(pp, pgtt);
                        foreach (var lfstt in kv.Value.allLFSTTs)
                            if (pu.inScope(lfstt))
                                r.add(pp, lfstt);
                    }
                }
                foreach (var kv in gtLFSTriggers)
                {
                    var f = kv.Key;
                    if (pu.inScope(f))
                    {
                        r.add(f);
                        foreach (var lfstt in kv.Value.allLFSTTs)
                            if (pu.inScope(lfstt))
                                r.add(f, lfstt);
                    }
                }
                foreach (var gt in allGTs)
                    foreach (var pgt in pu.getGTPGTs(pi, gt))
                        r.add(pgt);
                return r;
            }
            internal InstantiationSet filterForFCsAndScope(Universe u)
            {
                var r = new InstantiationSet();
                foreach (var kv in glPPTriggers)
                {
                    var pp = kv.Key;
                    if (u.inScope(pp))
                    {
                        r.add(pp);
                        foreach (var lfstt in kv.Value.allLFSTTs)
                            //                            if (u.inScope(lfstt))
                            r.add(pp, lfstt.toScope(u.inScope));
                        //                        foreach (var gtt in kv.Value.allGTTs)
                        //                            r.add(pp,gtt);
                    }
                }
                foreach (var kv in gtLFSTriggers)
                {
                    var f = kv.Key;
                    if (u.inScope(f))
                    {
                        r.add(f);
                        foreach (var lfstt in kv.Value.allLFSTTs)
                            //                          if (u.inScope(lfstt))
                            r.add(f, lfstt.toScope(u.inScope));
                    }
                }
                //                foreach (var gt in allGTs)
                //                    r.add(gt);
                return r;
            }
            #endregion transformations
        }
        public abstract IEnumerable<GTT> getGTTPGTTs(int pi, GTT lgtt);
        public abstract IEnumerable<GT> getGTPGTs(int pi, GT lgt);
        public abstract IEnumerable<GFA> getGFAPGFAs(int pi, GFA lgfa);

        public sealed class InstantiationIndex : InstantiationSetII
        {
            public InstantiationIndex(Universe universe)
            {
                this.universe = universe;
            }

            #region InstantiationSetI implementation
            public bool has(PP pp) { return glPPTriggers.ContainsKey(pp); }
            public bool has(PP pp, GTT gtt) { var e = glPPTriggers.getOrNull(pp); return e != null && e.has(gtt); }
            public bool has(PP pp, LFSTT lfstt) { var e = glPPTriggers.getOrNull(pp); return e != null && e.has(lfstt); }
            public bool has(Function f) { return gtLFSTriggers.ContainsKey(f); }
            public bool has(Function f, LFSTT lfstt) { var e = gtLFSTriggers.getOrNull(f); return e != null && e.has(lfstt); }
            public bool has(GT gt) { return gtTriggers.ContainsKey(gt); }
            public IEnumerable<PP> allPPs { get { return glPPTriggers.Keys; } }
            public IEnumerable<Function> allLFSs { get { return gtLFSTriggers.Keys; } }
            public IEnumerable<GT> allGTs { get { return gtTriggers.Keys; } }
            public IEnumerable<GTT> getPPGTTs(PP pp) { return glPPTriggers[pp].allGTTs; }
            public IEnumerable<LFSTT> getPPLFSTTs(PP pp) { return glPPTriggers[pp].allLFSTTs; }
            public IEnumerable<LFSTT> getFLFSTTs(Function f) { return gtLFSTriggers[f].allLFSTTs; }
            public IEnumerable<GTT> allGTTs { get { return from pp in allPPs from gtt in getPPGTTs(pp) select gtt; } }
            #endregion InstantiationSetI implementation

            #region indexing
            public void index(FC fc)
            {
                indexInt(fc, true, null);
            }
            public void reIndex(FC fc, InstantiationSet s)
            {
                indexInt(fc, true, s);
            }
            public void unindex(FC fc)
            {
                indexInt(fc, false, null);
            }
            private void indexInt(FC fc, bool insert, InstantiationSet s)
            {
                #region debug
                //                if (fc.index==1070)
                //                    Debugger.Break();
                #endregion debug
                if (!glResolveFCKnob && !gtInstantiateFCKnob)
                    return;
                for (var ili = 0; ili < fc.ils.Count; ili++)
                {
                    var il = fc.ils[ili];
                    if (il.isGround)
                        continue;
                    var fl = il as FL;
                    var fcl = new FCL(fc, ili);
                    #region GL x FC
                    if (s == null || s.glPPTriggers.ContainsKey(fl.pp))
                        indexCLInt(fcl, insert, s == null ? null : s.glPPTriggers[fl.pp]);
                    #endregion GL x FC
                    #region GT x FC
                    for (var iti = 0; iti < fl.ftt.Count; iti++)
                    {
                        var it = fl.ftt[iti];
                        if (it.isGround)
                            continue;
                        var tinstp = new FCLT(fc, ili, iti);
                        if (it is FVT)
                        {
                            if (s == null)
                                if (insert)
                                    index(it.type, tinstp);
                                else
                                    unindex(it.type, tinstp);
                        } else
                        {
                            var ffa = it as FFA;
                            if (s == null || s.gtLFSTriggers.ContainsKey(ffa.function))
                                indexCLTInt(fc, insert, ili, iti, tinstp, s == null ? null : s.gtLFSTriggers[ffa.function]);
                        }
                    }
                    #endregion GT x FC
                    #region equality FCL
                    if (gtInstantiateFrameRuleKnob)
                        if (fl.isEQOrDE && fl.polarity)
                            if (insert)
                                equalityFCLs.Add(fcl);
                            else
                                equalityFCLs.Remove(fcl);
                    #endregion equality FCL
                }
            }
            private void index(IType type, FCLT fclt)
            {
                gtFVTTriggers.insert(type, fclt);
            }
            private void unindex(IType type, FCLT fclt)
            {
                gtFVTTriggers.remove(type, fclt);
            }

            private void indexCLTInt(FC fc, bool insert, int ili, int iti, FCLT fclt, GTInstSetElement ne)
            {
                if (gtFCInstantiationCriterion(fc, ili, iti))
                {
                    var ffa = fc.ils[ili].itt[iti] as FFA;
                    var e = gtLFSTriggers.getOrAdd(ffa.function, () => new GTLFSTriggers());
                    e.index(ffa.ftt, fclt, insert, ne == null ? null : ne.allLFSTTs);
                }
            }
            public void index(GC gc)
            {
#if DEBUG
                if (gcLogCond(universe, gc))
                    Debug.WriteLine("   {0,-14}indexInst({1})", this, gc.ToStringB());
                if (gcBreakCond(universe, gc))
                    Debugger.Break();
#endif
                indexInt(gc, true, null);
            }
            public void unindex(GC gc)
            {
                indexInt(gc, false, null);
            }
            public void reIndex(GC gc, InstantiationSet s)
            {
                indexInt(gc, true, s.allGTs);
            }
            private void indexInt(GC gc, bool insert, IEnumerable<GT> ngts)
            {
                if (!gtImportClausesKnob || (!gtImportGCAllKnob && !gtImportGCEqualityKnob))
                    return;

                for (var gli = 0; gli < gc.gls.Count; gli++)
                {
                    var gl = gc.gls[gli];
                    var glGTs =
                        (gtImportGCAllKnob) ?
                            gl.allGTs
                            : (gtImportGCEqualityKnob) ?
                                (gl.isEQOrDE && gl.polarity) ? from tgt in gl.gtt.gtT select tgt : new GT[0]
                                : new GT[0];
                    var gcl = new GCL(gc, gli);
                    foreach (var gt in glGTs)
                        if (ngts == null || ngts.Contains(gt))
                        {
                            var e = gtTriggers.getOrNull(gt);
                            if (e != null)
                                e.index(gcl, insert);
                        }
                }
            }
            private void indexCLInt(FCL fcl, bool insert, GLInstSetElement ne)
            {
                if (glResolveFCCriterion(fcl.fc, fcl.ili))
                {
                    var fl = fcl.il as FL;
                    var e = glPPTriggers.getOrAdd(fl.pp, () => new GLPPTriggers());
                    e.index(fl.itt, fcl, insert, ne == null ? null : ne.allLFSTTs);
                }
            }

            public bool remove(GT gt)
            {
                GTGTriggers e;
                if (gtTriggers.TryGetValue(gt, out e))
                {
                    Debug.Assert(!e.allGCLs.Any());
                    gtTriggers.Remove(gt);
                    return true;
                }
                return false;
            }
            public bool remove(GTT gtt)
            {
                ISet<PP> e;
                if (gttPPs.TryGetValue(gtt, out e))
                {
                    foreach (var pp in e)
                        glPPTriggers[pp].remove(gtt);
                    gttPPs.Remove(gtt);
                    return true;
                }
                return false;
            }
            public void update(IDictionary<GT, GT> gtMM, IDictionary<GTT, GTT> gttMM)
            {
                foreach (var kv in gtMM)
                {
                    var gt = kv.Value;
                    var mgt = kv.Key;
                    if (remove(mgt))
                        add(gt);
                }
                foreach (var kv in gttMM)
                {
                    var gtt = kv.Value;
                    var mgtt = kv.Key;
                    foreach (var pp in gttPPs.getOrEmpty(mgtt))
                    {
                        var e = glPPTriggers[pp];
                        Debug.Assert(!e.lookupGCLs(mgtt).Any());
                        e.remove(mgtt);
                        add(pp, gtt);
                    }
                }
            }
            #endregion indexing

            #region lookup
            public IEnumerable<FCL> lookup(GL gl)
            {
                return glPPTriggers[gl.pp].lookup(gl.gtt);
            }
            public IEnumerable<FCL> lookup(PP pp, LFSTT lfstt)
            {
                return glPPTriggers[pp].lookup(lfstt);
            }
            public IEnumerable<FCLT> lookup(GT gt)
            {
                return from gfa in gt.gfas from lfstt in gfa.gtt.lfstts from t in lookup(gfa.function, lfstt) select t;
            }
            public IEnumerable<FCLT> lookup(Function f, LFSTT lfstt)
            {
                return gtLFSTriggers[f].lookup(lfstt);
            }
            public IEnumerable<GCL> lookupGCs(GL gl)
            {
                return glPPTriggers[gl.pp].lookupGCLs(gl.gtt);
            }
            public IEnumerable<GCL> lookupGCs(GT gt)
            {
                return gtTriggers[gt].allGCLs;
            }
            public IEnumerable<FCL> lookup(PP pp) { return glPPTriggers[pp].allFCLs; }
            #endregion lookup

            #region completeness
            public void markIncomplete()
            {
                pComplete = false;
            }
            public bool isComplete { get { return pComplete; } }
            #endregion completeness

            #region add requests
            internal InstantiationSet addAndGetDelta(InstantiationSet s)
            {
                var r = new InstantiationSet();
                #region GL
                foreach (var kv in s.glPPTriggers)
                {
                    var e = glPPTriggers.getOrAdd(kv.Key, () => new GLPPTriggers());
                    var pp = kv.Key;
                    foreach (var gtt in kv.Value.allGTTs)
                        if (add(pp, gtt))
                            r.add(pp, gtt);
                    foreach (var lfstt in kv.Value.allLFSTTs)
                        if (add(pp, lfstt))
                            r.add(kv.Key, lfstt);
                }
                #endregion GL
                #region GT LFS
                foreach (var kv in s.gtLFSTriggers)
                {
                    var f = kv.Key;
                    var e = gtLFSTriggers.getOrAdd(kv.Key, () => new GTLFSTriggers());
                    foreach (var lfstt in kv.Value.allLFSTTs)
                        if (add(f, lfstt))
                            r.add(kv.Key, lfstt);
                }
                #endregion GT LFS
                #region GT
                foreach (var gt in s.allGTs)
                    if (add(gt))
                        r.add(gt);
                #endregion GT
                return r;
            }
            private bool add(PP pp, GTT gtt)
            {
                var e = glPPTriggers.getOrAdd(pp);
                if (e.add(gtt))
                {
                    gttPPs.getOrAdd(gtt, () => new HashSet<PP>()).Add(pp);
                    return true;
                }
                return false;
            }
            private bool add(PP pp, LFSTT lfstt)
            {
                var e = glPPTriggers.getOrAdd(pp);
                return e.add(lfstt);
            }
            private bool add(Function f, LFSTT lfstt)
            {
                var e = gtLFSTriggers.getOrAdd(f);
                return e.add(lfstt);
            }
            private bool add(GT gt)
            {
                if (!addNet(gt))
                    return false;
                foreach (var gfa in gt.gfas)
                    foreach (var lfstt in gfa.gtt.lfstts)
                        add(gfa.function, lfstt);
                return true;
            }
            private bool addNet(GT gt)
            {
                return gtTriggers.addIfNew(gt);
            }
            #endregion add requests

            public bool has(GTT gtt) { return gttPPs.ContainsKey(gtt); }
            internal InstantiationSet getRequest(InstantiationSet delta)
            {
                if (pComplete)
                    return delta;
                else
                    return makeRequest();
            }
            private InstantiationSet makeRequest()
            {
                return new InstantiationSet(this);
            }

            internal IEnumerable<FCL> getAllEqualityFCLs()
            {
                return new HashSet<FCL>(from pp in allPPs where pp.polarity && pp.isEqDE from fcl in lookup(pp) select fcl);
            }

            #region members
            private readonly IDictionary<PP, GLPPTriggers> glPPTriggers = new Dictionary<PP, GLPPTriggers>();
            private readonly IDictionary<Function, GTLFSTriggers> gtLFSTriggers = new Dictionary<Function, GTLFSTriggers>();
            private readonly IDictionary<IType, ISet<FCLT>> gtFVTTriggers = new Dictionary<IType, ISet<FCLT>>();
            private readonly IDictionary<GT, GTGTriggers> gtTriggers = new Dictionary<GT, GTGTriggers>();
            private bool pComplete = true;
            private Universe universe;
            private IDictionary<GTT, ISet<PP>> gttPPs = new Dictionary<GTT, ISet<PP>>();
            private ISet<FCL> equalityFCLs = new HashSet<FCL>();
            #endregion members
        }
        /*        protected readonly IDictionary<PP, ISet<LFSTT>> checkedCLsPPLFSTT = new Dictionary<PP, ISet<LFSTT>>();
                private readonly IDictionary<PP, ISet<GTT>> glrtCache = new Dictionary<PP, ISet<GTT>>();
                protected readonly IDictionary<bool, IDictionary<Function, ISet<FCL>>> equalityCLsByPolarityAndLFS = new Dictionary<bool, IDictionary<Function, ISet<FCL>>>();
                internal readonly IDictionary<FC, ISet<FCL>> assumedCLsByIC = new Dictionary<FC, ISet<FCL>>();
                internal readonly IDictionary<PP, ISet<FCL>> assumedCLsByPP = new Dictionary<PP, ISet<FCL>>();
                internal readonly IDictionary<PP, IDictionary<LFSTT, ISet<FCL>>> assumedCLsByPPLFSTTs = new Dictionary<PP, IDictionary<LFSTT, ISet<FCL>>>();

                internal readonly IDictionary<PP, ISet<FL>> assumedFLsByPP = new Dictionary<PP, ISet<FL>>();
                internal readonly IDictionary<PP, IDictionary<IL, FLTriggers>> flTriggers = new Dictionary<PP, IDictionary<IL, FLTriggers>>();

                protected readonly ISet<Function> importedGTLFSTriggers = new HashSet<Function>();
                internal readonly IDictionary<IType, TermTypeTriggers> termTriggersByType = new Dictionary<IType, TermTypeTriggers>();
                protected readonly IDictionary<Function, ISet<FCLT>> functionCLTTriggers = new Dictionary<Function, ISet<FCLT>>();
                protected readonly IDictionary<FCL, ISet<FCLT>> clCLTs = new Dictionary<FCL, ISet<FCLT>>();*/
        #endregion instantiation index

        #region import
        private void updateInstantiationCaches()
        {
            #region GLs
            var gls = new HashSet<GL>();
            #region GL x IC
            if (glResolveFCKnob)
                gls.UnionWith(from gc in queues.unsaturatedGCs where gc.gls.Count == 1 select gc.gls[0]);
            #endregion GL x IC
            #region GDE x IC
            if (gtImportGCDisequalitiesGLResolutionKnob)
                foreach (var gde in queues.unsaturatedDisequalities)
                    if (inDepthBoundStrict(gde.Item1, gde.Item2))
                        gls.Add(makeDEG(gde.Item1, gde.Item2));
            #endregion GDE x IC
            #region GE x IC
            if (gtImportGCSelfEqualityGLResolutionKnob)
                foreach (var gt in queues.unsaturatedGTs)
                    if (inDepthBoundStrict(gt))
                        gls.Add(makeEQG(gt, gt));
            #endregion GE x IC
            #endregion GLs

            #region GTs
            var gts = new HashSet<GT>();
            if (gtImportClausesKnob || gtInstantiateFLEqualityKnob || gtInstantiateCLTEqualityKnob || gtInstantiateCLTNonEqualityKnob)
                gts.UnionWith(from gt in queues.unsaturatedGTs where isNew(gt) select gt);
            #endregion GTs

            var delta = instantiationIndex.addAndGetDelta(new InstantiationSet(gls, gts));
            import(instantiationIndex.getRequest(delta));
            indexAllClauses(delta);
        }
        private void indexAllClauses(InstantiationSet delta)
        {
            indexAllGCs(delta);
            instIndexAllFCs(delta);
        }
        private void indexAllGCs(InstantiationSet delta)
        {
            foreach (var gc in assumedGCs)
                if (isInstIndexed(gc))
                {
                    if (!delta.isEmpty)
                        instantiationIndex.reIndex(gc, delta);
                } else //if (!isSPNewGen(gc))
                {
                    instantiationIndex.index(gc);
                    setInstIndexed(gc);
                }
        }
        private void instIndexAllFCs(InstantiationSet delta)
        {
            foreach (var fc in assumedFCs)
                if (isInstIndexed(fc))
                {
                    if (!delta.isEmpty)
                        instantiationIndex.reIndex(fc, delta);
                } else //if (!isSPNewGen(fc)) 
                {
                    instantiationIndex.index(fc);
                    setInstIndexed(fc);
                }
        }
        internal void import(InstantiationSet request)
        {
            if (request.isEmpty)
                return;
            if (this == initialUniverse)
                return;
            #region predecessors
            var ar = makeInstRTC(new InstRT(request));
#if DEBUG
            var preFCs = assumedFCs.Count();
#endif
            currentlyImportingInstantiation = true;
            recursiveDAGCall(ar);
            currentlyImportingInstantiation = false;
#if DEBUG
            var postFCs = assumedFCs.Count();
            Debug.WriteLine("   {0,3}.importInstRec  ({1,3})", index, postFCs - preFCs);
#endif
            #endregion predecessors

            #region axioms
            importAxioms(request);
            #endregion axioms
        }

        /*importGT using potentiallyUnifiable
         *        internal void importGTTriggers(IEnumerable<GT> igts0, bool isGoal)
                {
                    #region setup
                    var igts = new HashSet<GT>(igts0.Except(triggerImportedGTs));
                    var allFunctions = new HashSet<Function>(from gt in igts from f in lfss(gt) select f);
                    var functions = new HashSet<Function>(allFunctions.Except(importedGTLFSTriggers));
                    if (functions.Count == 0 && igts.Count == 0)
                        return;
                    #endregion setup

                    #region import from initial universe
                    if (this != initialUniverse)
                    {
                        var fcls = new HashSet<FCL>();
                        initialUniverse.addLFSCLs(from f in allFunctions where initialUniverse.inScope(f) select f, fcls, true);
                        var pfcs = new HashSet<FC>();
                        foreach (var fcl in fcls)
                        {
                            var maxILIs = termRepository.fcMaximalILIs(fcl.fc);
                            if (maxILIs.Contains(fcl.index))
                            {
                                var il = fcl.il;
                                var ct = termRepository.compare(il.itt[0], il.itt[1]);
                                Debug.Assert(ct != 0);
                                for (var iti = 0; iti < 2; iti++)
                                    if (ct == 2 || ct == -2 || (1 - iti * 2 == ct))
                                    {
                                        var ft = fcl.il.itt[iti] as FT;
                                        Debug.Assert(ft != null);
                                        if (ft != null)
                                        {
                                            if (potentiallyUnifiable(igts, ft))
                                            {
                                                pfcs.Add(fcl.fc);
                                                goto nextFCL;
                                            }
                                        }
                                    }
                            }
                            nextFCL:;
                        }
                        importFFCs(pfcs);
                        if (isRefuted)
                            return;
                    }
                    #endregion import from initial universe

                    if (gtImportClausesKnob)
                    /*                gtImportGCAllKnob ||
                                    gtImportGCEqualityKnob ||
                                    gtImportGCInequalityKnob ||
                                    gtImportGLEqualityJoinKnob ||
                                    gtImportGLInequalityJoinKnob ||
                                    gtImportFLKnob || 
                                    gtImportCLTEqualityKnob || 
                                    gtImportCLTNonEqualityKnob ||* /
                    {
                        var gtrtc = makeGTRTC(new GTRT(functions, igts, isGoal));
                        recursiveDAGCall(gtrtc);
                    }
                    triggerImportedGTs.UnionWith(igts0);
                }*/
        /*internal void importGLAxioms(GL gl, ISet<LFSTT> lfstts)
        {
            if (importedGLAxioms.Contains(gl))
                return;
            if (this == initialUniverse)
                return;
            if (!glResolveFCCriterion(gl))
                return;
            var gtt = gl.gtt;
            var u = initialUniverse;
            #region debug
#if DEBUG
            var failedFCs = new Dictionary<FC, ISet<int>>();
#endif
            #endregion debug
            if (u.inScope(gl.predicate))
            {
                var ufcas = u.getLocalCLsByPPLFSTT(gl.gNegate.pp, lfstts);
                var ffcs = new HashSet<FC>(
                    from ufca in ufcas
                    where glImportFCCriterion(ufca)
                    where potentialMatch(ufca.il, gl)
                    select ufca.fc);
                importFFCs(ffcs);
                if (isRefuted)
                    return;
            }
            #region debug
#if DEBUG
            //            if (failedFCs.Count > 0)
            //                Debugger.Break();
#endif
            #endregion debug
        }*/
        private void importAxioms(InstantiationSet irequest)
        {
            if (this == initialUniverse || irequest.isEmpty)
                return;
            var ffcs = initialUniverse.exportInstAxioms(irequest);
            Debug.WriteLine("   {0,3}.importInstAxiom({1,3})", index, ffcs.Count);
            importAxiomFFCs(ffcs);
        }
        ISet<FC> exportInstAxioms(InstantiationSet irequest)
        {
            Debug.Assert(this == initialUniverse);
            var fcs = new HashSet<FC>();
            var request = irequest.filterForFCsAndScope(initialUniverse);
            if (request.isEmpty)
                return fcs;

            var delta = instantiationIndex.addAndGetDelta(request);
            instIndexAllFCs(delta);
            if (gtInstantiateFCKnob && gtImportClausesKnob)
            {
                foreach (var gt in irequest.allGTs)
                    foreach (var gfa in gt.gfas)
                        if (inScope(gfa.function))
                            foreach (var lfstt in gfa.gtt.lfstts)
                                foreach (var fclt in instantiationIndex.lookup(gfa.function, lfstt.toScope(inScope)))
                                    if (!fcs.Contains(fclt.fc) && canExportAxiomInst(fclt.fc))
                                        if (potentiallyEUnifiable(gfa, fclt.it))
                                            fcs.Add(fclt.fc);
            }
            if (glResolveFCKnob && glImportFCKnob)
            {
                foreach (var pp in request.allPPs)
                    foreach (var gtt in irequest.getPPGTTs(pp))
                    {
                        foreach (var lfstt in gtt.lfstts)
                            foreach (var ffcl in instantiationIndex.lookup(pp, lfstt.toScope(inScope)))
                                if (!fcs.Contains(ffcl.fc) && canExportAxiomInst(ffcl.fc))
                                {
                                    Debug.Assert(ffcl.pp == pp);
                                    if (potentiallyEUnifiable(gtt, ffcl.il.itt))
                                        fcs.Add(ffcl.fc);
                                }
                    }
            }

            //            if (gtInstantiateFrameRuleKnob) //TODO
            //                fcs.UnionWith(from fcl in instantiationIndex.getAllEqualityFCLs() select fcl.fc);
            return fcs;
        }

        private bool potentiallyEUnifiable(GT gt, IT it)
        {
            Debug.Assert(gt.type.isEquivalent(it.type));
            if (it.isGround)
                return ReferenceEquals(gt, it);
            if (it is FVT)
                return true;
            return potentiallyEUnifiable(gt, it as FFA);
        }
        private bool potentiallyEUnifiable(GT gt, FFA ffa)
        {
            return gt.gfasByFunction.getOrEmpty(ffa.function).Keys.Any(gtt => potentiallyEUnifiable(gtt, ffa.ftt));
        }
        private bool potentiallyEUnifiable(GFA gfa, IT it)
        {
            Debug.Assert(gfa.type.isEquivalent(it.type));
            if (it is FVT)
                return true;
            else
                return potentiallyEUnifiable(gfa, it as FFA);
        }
        private bool potentiallyEUnifiable(GFA gfa, FFA ffa)
        {
            return gfa.function == ffa.function && potentiallyEUnifiable(gfa.gtt, ffa.ftt);
        }

        private bool potentiallyEUnifiable(GTT gtt, ITT itt)
        {
            return Enumerable.Range(0, gtt.Count).All(i => potentiallyEUnifiable(gtt.gtT[i], itt.itT[i]));
        }
        #endregion import

        #region GC
        private void instSaturate(GC gc)
        {
            if (!hasGC(gc) || !isAssumed(gc) || isInstSat(gc))
                return;
            if (gc.gls.Count == 1)
                instSaturateUGC(gc.gls[0]);//inst GL x FC + import
            setInstSat(gc);
            //TODO
        }
        #region UGC
        private void instSaturateUGC(GL gl)
        {
            #region precondition
#if DEBUG
            Debug.Assert(upToDate(gl));
            Debug.Assert(isAssumed(gl));
            Debug.Assert(!isAssumed(gl.gNegate));
            Debug.Assert(!(gl.isEQOrDE));
            Debug.Assert(!isRefuted);
#endif
            #endregion precondition

            if (isNew(gl))
            {
                #region fcs
                if (glResolveFCCriterion(gl))
                {
                    var fcls = instantiationIndex.lookup(gl.gNegate);
                    foreach (var fcl in fcls)
                        tryUnifyAndAssume(fcl.fc, fcl.ili, gl);
                }
                #endregion fcs
            }
        }
        private bool tryUnifyAndAssume(FC fc, int ili, GL gl)
        {
            Debug.Assert(!isRefuted);
            Debug.Assert(ili >= 0 && ili < fc.Count);
            Debug.Assert(isAssumed(fc));
            Debug.Assert(glResolveFCCriterion(gl));
            Debug.Assert(fc.ils[ili].predicate == gl.predicate);
            Debug.Assert(fc.ils[ili].polarity == !gl.polarity);
            var result = false;
            var il = fc.ils[ili];
            if (glResolveFCCriterion(gl, fc, ili))
            {
                var gss = eUnifyG(il.iaf.itt, gl.gaf.gtt);
                foreach (var gs in gss)
                {
                    result = true;
                    var isGoalv = isGoal(gl);
                    gs.isGoal = isGoalv;
                    var gls = new HashSet<GL>();
                    foreach (var l in fc)
                        if (l != il)
                        {
                            GL sgl;
                            if (!trySubstitute(l, gs, out sgl))
                                goto skipGS;
                            if (isTrue(sgl))
                                goto skipGS;
                            if (!isFalse(sgl))
                                gls.Add(sgl);
                        }

                    Debug.Assert(gls.Count() < fc.Count);
                    if (!glData[gl].isAssumed)
                        gls.Add(gl.gNegate);
                    assumeGLs(gls, isGoalv, false);
                    if (isRefuted)
                        return true;
                    skipGS:;
                }
            }
            return result;
        }
        #endregion UGC
        #endregion GC

        #region GL
        private void instSaturate(GL gl)
        {
            if (!has(gl) || isInstSat(gl))
                return;
            setInstSat(gl);
            queues.remove(gl);
        }

        #endregion GL

        #region FC
        private void instSaturate(FC fc)
        {
            Debug.Assert(isAssumed(fc));
            Debug.Assert(!isInstSat(fc));
            if (fc.Count == 1)
                instSaturate(fc.First() as FL);
            else
            {
                #region FC x GTs
                if (fcGroundInstancesKnob)
                {
                    for (var i = 0; i < fc.Count; i++)
                        if (saturationCriterion(fc, i))
                        {
                            var gcs = getGroundUnifications(fc, i);
                            markAdded(false);
                            foreach (var gc in gcs)
                            {
                                assume(gc);
                                if (isRefuted)
                                    return;
                            }
                        }
                }
                #endregion FC x GTs

                #region FC x GLs
                if (glResolveFCKnob)
                {
                    for (var ili = 0; ili < fc.Count; ili++)
                    {
                        var il = fc.ils[ili];
                        if (!il.isGround)
                        {
                            var fl = il as FL;
                            if (fl.isEQOrDE)
                            {
                                //TODO - GT x FC and GDE x FC
                            } else
                            {
                                var gls = getAssumedGLsByPP(fl.pp.n);
                                foreach (var gl in gls.ToList())
                                    if (isUGCInstSat(gl) && glResolveFCCriterion(gl, fc, ili))
                                        tryUnifyAndAssume(fc, ili, gl);
                            }
                        }
                    }
                }
                #endregion FC x GLs
            }
            if (hasFC(fc))
                setInstSat(fc);
        }
        private void instSaturate(FL fl)
        {
            Debug.Assert(isAssumed(fl));
            if (flMatchGTTKnob)
            {
                var gafs = match(fl.faf, true);
                foreach (var gaf in gafs)
                {
                    var gl = gaf.gLiteral(fl.polarity);
                    addGoalRecursive(gl);
                    assume(gl);
                    if (isRefuted)
                        return;
                    markAdded(false);
                }
                #region old
                /*                var ms = match(fl.faf.ftt, true);
                                foreach (var m in ms)
                                {
                                    Debug.Assert(m.gts.Any(isGoal));
                                    var ga = makeGAF(fl.faf.predicate, m).gLiteral(fl.polarity);
                                    addGoalRecursive(ga);
                                    //                if (!assumedGAs.Contains(ga))
                                    //                    markAsNoExpandSaturate(ga);
                                    assume(ga);
                                    if (isRefuted)
                                        return;
                                    markAdded(false);
                                }*/
                #endregion old
            }
        }
        #endregion FC

        #region GT
        private void instSaturate(IEnumerable<GT> unsaturatedGTs)
        {
            integerGTStuff(unsaturatedGTs);
            foreach (var gt in unsaturatedGTs)
                instSaturate(gt);
        }
        private void instSaturate(GT gt)
        {
            if (!hasGT(gt))
                return;
            #region debug
#if DEBUG
            Debug.Assert(gtSaturateGoalKnob);
            Debug.Assert(!isInstSat(gt));
            if (gtInstBreakCond(this, gt))
                Debugger.Break();
#endif
            #endregion debug
            if (isGoal(gt) && isNew(gt))
                saturateGoalGT(gt); //does stuff

            setInstSat(gt);
        }
        private void saturateGoalGT(GT gt) //builtin map + builin Int + instFL + instCLTNE + instFrameRule + selfEq+DE
        {
            #region precondition
#if DEBUG
            Debug.Assert(isGoal(gt));
            Debug.Assert(isNew(gt));
            Debug.Assert(upToDateGTMM(gt));
#endif
            #endregion precondition

//            while (gtMergeMap.ContainsKey(gt))
//                gt = gtMergeMap[gt];
            if (!hasGT(gt))
                return;
            if (gtBuiltinMapAxiomsKnob && (gtBuiltinNonGoalKnob || isGoal(gt)) && (gtBuiltinNonNewKnob || isNew(gt)))
                applyBuiltinMapAxioms(gt);
            if (gtBuiltinMapReadKnob && isGoal(gt) && (isLastRound || isNew(gt)))
                applyBuiltinMapRead(gt);
            if (gtBuiltinIntegerKnob && isGoal(gt))
                applyBuiltinInteger(gt);
            if (gtInstantiateFLEqualityKnob || gtInstantiateCLTNonEqualityKnob || gtInstantiateCLTEqualityKnob)
                instantiateGTFCs(gt);
            if (gtInstantiateFrameRuleKnob)
                instantiateGTFrameRules(gt);
            /*            if (gtInstantiateCLTEqualityKnob)
                            enqueueGTCLTEqualityMatches(gt);
                */

            markAsInstSaturated(gt);
        }
        private void propagateMapReads(IEnumerable<GT> gts)
        {
            if (!gts.Any())
                return;
            var dq = new SortedList<Universe, MapsRT>(new UniverseComparer());
            var nrtMap = new Dictionary<Universe, MapsRT>();
            var uq = new LinkedList<Universe>();
            dq.Add(this, new MapsRT(gts));
            while (dq.Count > 0)
            {
                var kv = dq.Last();
                dq.RemoveAt(dq.Count - 1);
                var rt = kv.Value;
                var u = kv.Key;
                nrtMap[u] = rt;
                uq.AddFirst(u);
                var nrts = u.propagateMapReadsLocalDown(rt);
                foreach (var nrt in nrts)
                    if (dq.ContainsKey(nrt.Key))
                        dq[nrt.Key].mergeWith(nrt.Value);
                    else
                        dq[nrt.Key] = nrt.Value;
            }
            while (uq.Any())
            {
                var u = uq.First();
                uq.RemoveFirst();
                u.propagateGTMapReadsLocalUp(nrtMap[u]);
            }
        }

        protected abstract void importMRGTEqGCs(IEnumerable<GT> gts);
        public IEnumerable<GC> getMRGTsEqGCs()
        {
            var mrGTs = new HashSet<GT>(from kv in lfsToGTMap where kv.Key.isMapRead from gt in kv.Value select gt);
            return //new GC[0];
                from gc in assumedGCs
                let gli = termRepository.gcMaximalGL(gc)
                let gl = gc.gls[gli]
                where (gl.isEQOrDE && gl.polarity)
                let gtT = gl.gtT
                let gti = termRepository.compare(gtT[0], gtT[1]) == 1 ? 0 : 1
                let gt = gtT[gti]
                where mrGTs.Contains(gt)
                select gc;
            /*                from gc in assumedGCs
                            where gc.gls.Any(gl =>
                                (gl.isEQOrDE && gl.polarity)
                                && (gl.gtT.Any(mrGTs.Contains))
                            )
                            select gc;*/
            //                where gtT.Any(mrGTs.Contains)
            //                select 
        }

        private string toStringB(IEnumerable<GL> gls)
        {
            return gls.Aggregate("", (s, x) => (s == "" ? "" : @" \/ ") + x.ToStringB());
        }
        private IEnumerable<GL> getOMEGCd(GC gc)
        {
            var glM = gc.gls[termRepository.gcMaximalGL(gc)];
            return from gl in gc.gls where gl != glM select gl;
        }

        private GT getOMEGCl(GC gc)
        {
            var gl = gc.gls[termRepository.gcMaximalGL(gc)];
            return getGLl(gl);
        }
        private GT getOMEGCr(GC gc)
        {
            var gl = gc.gls[termRepository.gcMaximalGL(gc)];
            return getGLr(gl);
        }
        private GT getGLl(GL gl)
        {
            var gtT = gl.gtT;
            return gtT[termRepository.compare(gtT[0], gtT[1]) == 1 ? 0 : 1];
        }
        private GT getGLr(GL gl)
        {
            var gtT = gl.gtT;
            return gtT[termRepository.compare(gtT[0], gtT[1]) == 1 ? 1 : 0];
        }

        private void indexOMREq(ISet<GT> indexedGTs, IDictionary<GT, ISet<GC>> mrGTOEqGCs, GT gt)
        {
            Debug.Assert(isOMRGT(gt));
            if (!indexedGTs.Add(gt))
                return;
            foreach (var gc in getGTEqGCs(gt))
                if (isOEqGC(gc,gt))
                    indexOMREq(indexedGTs, mrGTOEqGCs, gt, gc);
        }
        private void indexOMREq(ISet<GT> indexedGTs, IDictionary<GT, ISet<GC>> mrGTOEqGCs, GT gt,GC gc)
        {
            Debug.Assert(isOEqGC(gc, gt));
            mrGTOEqGCs.insert(gt, gc);
        }
        private bool indexOMREqIf(ISet<GT> indexedGTs, IDictionary<GT, ISet<GC>> mrGTOEqGCs, GC gc)
        {
            var gl = getOGCMaxGL(gc);
            if (!(gl.isEQOrDE && gl.polarity))
                return false;
            var gt = getMaxGT(gl.gtt);
            if (!isOMRGT(gt))
                return false;
            if (indexedGTs.Contains(gt))
                indexOMREq(indexedGTs, mrGTOEqGCs, gt, gc);
            else
                indexOMREq(indexedGTs, mrGTOEqGCs, gt);
            return true;
        }
        bool isOMREqGC(GC gc)
        {
            var gl = getOGCMaxGL(gc);
            if (!(gl.isEQOrDE && gl.polarity))
                return false;
            var gt = getMaxGT(gl.gtt);
            return isOMRGT(gt);
        }
        private GL getOGCMaxGL(GC gc)
        {
            var gli = termRepository.gcMaximalGL(gc);
            return gc.gls[gli];
        }

        private void indexMREq(HashSet<GT> mrGTs, IDictionary<GT, ISet<GC>> mrGTEqGCs, GC gc, int gli)
        {
            var gl = gc.gls[gli];
            if (gl.isEQOrDE && gl.polarity)
            {
                var mrgt = getMaxGT(gl.gtt);
                if (mrGTs.Contains(mrgt))
                    mrGTEqGCs.insert(mrgt, gc);
            }
        }

        MapsRT propMapReadsRT = null;
        private int lastPropagateMRRevision = -1;

        private IDictionary<Function, ISet<GTT>> propagateMRMap = null;
        public void propagateMapReadsDown()
        {
            if (isRefuted)
                return;
            if (propagateMRMap == null)
                propagateMRMap = new Dictionary<Function, ISet<GTT>>();
            var mapReadGTs = new HashSet<GT>(from lfs in mapReadLFSs from gt in lfsToGTMap[lfs] /*where !isMapROWSat(gt)*/ select gt);
            foreach (var gt in mapReadGTs)
            {
                foreach (var kv in gt.gfasByFunction)
                    if (kv.Key.isMapRead)
                    {
                        var f = kv.Key;
                        foreach (var gtt in kv.Value.Keys)
                            propagateMRMap.insert(f, gtt);
                    }
            }
            var frameGTMap = (hasFrameRule && satMRsFrameKnob) ? getFrameGTMap() : null;
            foreach (var kvf in propagateMRMap)
            {
                var f = kvf.Key;
                var ogtts = kvf.Value;
                var todoGTTs = new Queue<GTT>(ogtts);
                while (todoGTTs.Any())
                {
                    var gtt = todoGTTs.Dequeue();
                    Debug.Assert(ogtts.Contains(gtt));
                    var mapGT = gtt.gtT[0];
                    var indices = gtt.gtT.Skip(1);
                    #region mapROW
                    foreach (var kv in mapGT.gfasByFunction)
                        if (kv.Key.isMapWrite)
                            foreach (var wmGTT in kv.Value.Keys)
                            {
                                var wmGT = wmGTT.gtT[0];
                                var wGTT = getGTT((new[] { wmGT }).Concat(indices));
                                if (ogtts.Add(wGTT))
                                    todoGTTs.Enqueue(wGTT);
                            }
                    #endregion
                    #region frame
                    if (hasFrameRule && satMRsFrameKnob)
                    {
                        var s = frameGTMap.getOrEmpty(mapGT);
                        foreach (var mapGT2 in s)
                            if (mapGT2!=mapGT)
                            {
                                var fGTT = getGTT((new[] { mapGT2 }).Concat(indices));
                                if (ogtts.Add(fGTT))
                                    todoGTTs.Enqueue(fGTT);
                            }
                    }
                    #endregion
                }
            }
            foreach (var pi in pis)
            {
                var pu = pus[pi];
                foreach (var kv in propagateMRMap)
                    foreach (var gtt in kv.Value)
                    {
                        var pgtts = (from gtT in FU.makeOptions((from gt in gtt.gtT select pu.depthFilterStrict(getGTPGTs(pi, gt))).ToArray()) select pu.getGTT(gtT)).ToList();
                        pu.addPropagateMRs(kv.Key, pgtts);
                    }
            }
            addGoalsRecursive(from kv in propagateMRMap
                              from gtt in kv.Value
                              from gt in gtt.gtT
                              select gt);
        }
        public void propagateMapReadsUp()
        {
            foreach (var f in propagateMRMap.Keys.ToList())
            {
                var ogtts = propagateMRMap[f];
                var s = propagateMRMap[f] = new HashSet<GTT>();
                foreach (var ogtt in ogtts)
                {
                    var gtt = getGTT(from gt1 in ogtt.gtT select transitiveMerge(gt1));
                    s.Add(gtt);
                    var gt = makeIfAnyPGTs(f, gtt);
                }
            }

            instantiateMRAxioms();

            var mrGTs = new HashSet<GT>(from kv in lfsToGTMap where kv.Key.isMapRead from gt in kv.Value select gt);
            var newMTGTs = from gt in mrGTs where gtRevision(gt) >= lastPropagateMRRevision select gt;
            lastPropagateMRRevision = currentRevision;

            importMRGTEqGCs(mrGTs);
            processMapRTEqGCs(mrGTs);
            propagateMRMap = null;
        }

        private IDictionary<Function, ISet<GTT>> newMapROWGFAs;
        private void addPropagateMRs(Function f, IEnumerable<GTT> gtts)
        {
            if (propagateMRMap == null)
                propagateMRMap = new Dictionary<Function, ISet<GTT>>();
            Debug.Assert(gtts.All(gtt=>gtt.gtT.All(upToDate)));
            propagateMRMap.insert(f, gtts);
        }
        private IDictionary<GT,ISet<GT>> getFrameGTMap()
        {
            var r = new Dictionary<GT, ISet<GT>>();
            var fToGTFrameMAp = new Dictionary<Function, GT>();
            foreach (var f in functionFrameMap.Keys)
                fToGTFrameMAp[f] = makeGFA(f, emptyGTT, false).gt;
            foreach (var kv in functionFrameMap)
            {
                var gt = fToGTFrameMAp[kv.Key];
                foreach (var v in kv.Value)
                {
                    var gt2 = fToGTFrameMAp[v];
                    if (gt2 != gt)
                        r.insertUnion(gt, gt2);
                }
            }
            return r;
        }

        public void instantiateMRAxioms()
        {
            var instantiateFrameAxioms = (satMRsFrameKnob && hasFrameRule);
            var frameMap = instantiateFrameAxioms ? getFrameGTMap() : null;
            var frameAxiomMap = instantiateFrameAxioms ? getFrameAxiomMap() : null;
            foreach (var kv in propagateMRMap)
            {
                var f = kv.Key;
                foreach (var gtt in kv.Value)
                {
                    var mapGT = gtt.gtT[0];
                    var indices = gtt.gtT.Skip(1);
                    var allIndicesHaveAllPreds = pus.Any() && indices.All(gti => pis.All(pi => getGTPGTs(pi, gti).Any()));
                    #region ROW
                    var mwGFAs = getInitialMWs(mapGT, allIndicesHaveAllPreds);
                    if (mwGFAs.Any())
                    {
                        var gfa = makeGFA(f, makeGTT(gtt), true);
                        addInteresting(gfa.gt);
                        propagateMapROWLocal(gfa, mwGFAs);
                    }
                    #endregion
                    #region Frame
                    if (instantiateFrameAxioms)
                        processFrameRules(frameMap, frameAxiomMap, f, gtt, mapGT, indices,(x)=> { });
                    #endregion
                }
            }
        }
        private void propagateMapReadsDown2(bool preds)
        {
            newMapROWGFAs = new Dictionary<Function, ISet<GTT>>();
            var newGFAsForPredecessors = (preds ? new GFAMap() : null);
            propagateMapReadsDown3(newGFAsForPredecessors);
            if (preds)
            {
                var nrts = getMapReadNRTs(newGFAsForPredecessors);
                foreach (var nrt in nrts)
                    nrt.Key.addSuccessorMRs(nrt.Value);
            }
        }
        private void propagateMapReadsDown3(GFAMap newGFAsForPredecessors)
        {
            #region frame
            IDictionary<GT, ISet<GT>> frameMap;
            IDictionary<Function, ISet<FCLT>> frameAxiomMap;
            prepareFrameRuleMap(out frameMap, out frameAxiomMap);
            #endregion
            var rt = propMapReadsRT;

            foreach (var f in rt.gfaMap.functions)
            {
                var gtsT = rt.gfaMap.get(f);
                var todoGTTs = new Queue<GTT>(from gtT in
                    FU.makeOptions(tm(rt.gfaMap.get(f)))
                                              select getGTT(gtT));
                var doneGTTs = new HashSet<GTT>(todoGTTs);
                while (todoGTTs.Any())
                {
                    var gtt = todoGTTs.Dequeue();
                    Debug.Assert(doneGTTs.Contains(gtt));
                    Debug.Assert(inDepthBoundStrict(gtt));
                    newMapROWGFAs.insert(f, gtt);
                    if (newGFAsForPredecessors != null && gtt.gtT.All(gt => pis.Any(pi => getGTPGTs(pi, gt).Any())))
                        newGFAsForPredecessors.insert(f, gtt.gtT);
                    var mapGT = gtt.gtT[0];
                    var indices = gtt.gtT.Skip(1);
                    makeGT(f, makeGTT(gtt), true);
                    var allIndicesHaveAllPreds = pus.Any() && indices.All(gti => pis.All(pi => getGTPGTs(pi, gti).Any()));
                    #region ROW
                    var mwGFAs = getInitialMWs(mapGT, allIndicesHaveAllPreds);
                    if (mwGFAs.Any())
                    {
                        var gfa = makeGFA(f, makeGTT(gtt), true);
                        var gt = gfa.gt;
                        addInteresting(gt);
                        var ngfas = propagateMapROWLocal(gfa, mwGFAs);
                        foreach (var ngfa in ngfas)
                        {
                            Debug.Assert(ngfa.function == f);
                            if (/*!isMapROWSat(f, ngfa.gtt) &&*/ doneGTTs.Add(ngfa.gtt))
                            {
                                //                                rt.gfaMap.insert(ngfa);
                                todoGTTs.Enqueue(ngfa.gtt);
                            }
                        }
                    }
                    #endregion
                    #region Frame rule
                    if (satMRsFrameKnob && hasFrameRule)
                        processFrameRules(frameMap, frameAxiomMap, f, todoGTTs, doneGTTs, gtt, mapGT, indices);
                    #endregion
                }
            }
            markAdded(false);
        }

        private void prepareFrameRuleMap(out IDictionary<GT, ISet<GT>> frameMap, out IDictionary<Function, ISet<FCLT>> frameAxiomMap)
        {
            frameMap = null;
            frameAxiomMap = null;
            if (!satMRsFrameKnob || !hasFrameRule)
                return;
            frameMap = getFrameGTMap();
            frameAxiomMap = getFrameAxiomMap();
        }

        private IDictionary<Function, ISet<FCLT>> getFrameAxiomMap()
        {
            IDictionary<Function, ISet<FCLT>> frameAxiomMap = new Dictionary<Function, ISet<FCLT>>();
            foreach (var fc in assumedFCs)
            {
                for (var ili = 0; ili < fc.ils.Count; ili++)
                {
                    var il = fc.ils[ili];
                    if (!il.isGround && il.isEQOrDE && il.polarity)
                    {
                        var ffaT = (from it in il.itT select it as FFA).ToArray();
                        if (ffaT.All(ffa => ffa != null && ffa.function.isMapRead && ffa.function == ffaT[0].function))
                            for (var iti = 0; iti < 2; iti++)
                                frameAxiomMap.insert(ffaT[iti].function, new FCLT(fc, ili, iti));
                    }
                }
            }

            return frameAxiomMap;
        }

        private void processFrameRules(IDictionary<GT, ISet<GT>> frameMap, IDictionary<Function, ISet<FCLT>> frameAxiomMap, Function f, Queue<GTT> todoGTTs, HashSet<GTT> doneGTTs, GTT gtt, GT mapGT, IEnumerable<GT> indices)
        {
            processFrameRules(frameMap, frameAxiomMap, f, gtt, mapGT, indices,
                (x) =>
                {
                    if (/*!isMapROWSat(f, ngfa.gtt) &&*/ doneGTTs.Add(x))
                        todoGTTs.Enqueue(x);
                });
        }
        private void processFrameRules(IDictionary<GT, ISet<GT>> frameMap, IDictionary<Function, ISet<FCLT>> frameAxiomMap, Function f, GTT gtt, GT mapGT, IEnumerable<GT> indices, Action<GTT> enqueue)
        {
            var gfa = makeGFA(f, gtt.gtT, false);
            foreach (var mapGT2 in frameMap.getOrEmpty(mapGT))
                if (inDepthBoundStrict(mapGT2))
                {
                    var subReadGTT = makeGTT(new[] { mapGT2 }.Concat(indices));
                    enqueue(subReadGTT);
                    var subReadGFA = makeGFA(f, subReadGTT, true);
                    var subReadGT = subReadGFA.gt;
                    //                                rt.gfaMap.insert(subReadGFA);
                    foreach (var fclt in frameAxiomMap.getOrEmpty(f))
                    {
                        foreach (var gs in eUnifyG(fclt.it, gfa.gt))
                        {
                            var icS = trySubstitute(fclt.fc, gs);
                            if (icS != null)
                            {
                                var nic = assumeIC(icS);
                                Slicer.log(3, "   MR.Frame: [{0}]: {1}", index, nic.ToStringB());
                            }
                        }
                    }

                }
        }
        #region util
        private ISet<GT>[] tm(ISet<GT>[] gtsT)
        {
            return (from gts in gtsT select tm(gts)).ToArray();
        }
        private ISet<GT> tm(ISet<GT> gts)
        {
            return new HashSet<GT>(from gt in gts where hasGTMM(gt) select transitiveMerge(gt));
        }
        private IList<GT> tm(IList<GT> gtT)
        {
            return new List<GT>(from gt in gtT select transitiveMerge(gt));
        }
        private void addSuccessorMRs(MapsRT rt)
        {
            if (propMapReadsRT == null)
                propMapReadsRT = rt;
            else
                propMapReadsRT.mergeWith(rt);
        }
        #endregion
        private IDictionary<Universe, MapsRT> propagateMapReadsLocalDown(MapsRT rt)
        {
            newMapROWGFAs = new Dictionary<Function, ISet<GTT>>();

            var nGFAs = new GFAMap(); // new HashSet<GFA>();
            #region frame
            IDictionary<GT, ISet<GT>> frameMap;
            IDictionary<Function, ISet<FCLT>> frameAxiomMap;
            prepareFrameRuleMap(out frameMap, out frameAxiomMap);
            #endregion

            //            var doneGFAs = new Dictionary<Function, ISet<GTT>>();
            foreach (var f in rt.gfaMap.functions)
            {
                var gtsT = rt.gfaMap.get(f);
                //                var ngtT = (from t in gtsT select new HashSet<GT>()).ToArray();
                var todoGTTs = new Queue<GTT>(from gtT in FU.makeOptions(rt.gfaMap.get(f)) select getGTT(gtT));
                var doneGTTs = new HashSet<GTT>(todoGTTs);
                while (todoGTTs.Any())
                {
                    #region
#if DEBUG
                    //                nGFAs.insert(f, gtsT);
                    //                foreach (var gtT in FU.makeOptions(gtsT))
                    if (index == 4)
                        Console.Write("");
#endif
                    #endregion

                    var gtt = todoGTTs.Dequeue(); // First();
                    Debug.Assert(doneGTTs.Contains(gtt));
                    Debug.Assert(inDepthBoundStrict(gtt));
                    if ((hasGTT(gtt) && isMapROWSat(f, gtt)) || hasMAPRowRGTT(gtt))
                        continue;
//                    makeGTT(gtt);//slow
                    makeGT(f,makeGTT(gtt),true);//slow
                    if (hasGTT(gtt)) addMapROWSat(f, gtt);
                    newMapROWGFAs.insert(f, gtt);
                    if (gtt.gtT.All(gt => pis.Any(pi => getGTPGTs(pi, gt).Any())))
                        nGFAs.insert(f, gtt.gtT);
                    var mapGT = gtt.gtT[0];
                    var indices = gtt.gtT.Skip(1);

                    //                    var allHaveAllPreds = pus.Any() && gtt.gtT.All(gt => pis.All(pi => getGTPGTs(pi, gt).Any()));
                    var allIndicesHaveAllPreds = pus.Any() && indices.All(gti => pis.All(pi => getGTPGTs(pi, gti).Any()));
                    #region ROW
                    var mwGFAs = getInitialMWs(mapGT, allIndicesHaveAllPreds);
                    if (mwGFAs.Any())
                    {
                        var gfa = makeGFA(f, makeGTT(gtt), true);
                        var gt = gfa.gt;
                        addInteresting(gt);
                        var ngfas = propagateMapROWLocal(gfa, mwGFAs);
                        foreach (var ngfa in ngfas)
                        {
                            Debug.Assert(ngfa.function == f);
                            if (!isMapROWSat(f, ngfa.gtt) && doneGTTs.Add(ngfa.gtt))
                            {
                                rt.gfaMap.insert(ngfa);
                                todoGTTs.Enqueue(ngfa.gtt);
                            }
                        }
                    }
                    #endregion
                    #region Frame rule
                    if (satMRsFrameKnob  && hasFrameRule)
                        processFrameRules(frameMap, frameAxiomMap, f, todoGTTs, doneGTTs, gtt, mapGT, indices);
                    #endregion

                    /*                    var mapHasAnyPreds = pis.Any(pi => getGTPGTs(pi,gt0).Any());
                                        if (mapHasAnyPreds)
                                            nGFAs.insert(f, gtT);*/
                    //                    var mwStart = hasInitialMW(gt0);
                    //                    if (mwStart || hasPreds || )
                    //                    if (hasMWstart(gtT[0]) || pis.Any(pi=>getGTPGTs(pi,))
                    //                    if (!hasGTT(gtt) || !hasGFA(f,gtt))
                    /*                    if (hasMWstart(gtT[0]))
                                        {
                                            if (doneGFAs.Add(gfa))
                                            {
                                                var ngfas = propagateMapROWLocal(gfa);
                                                foreach (var ngfa in ngfas)
                                                    if (ngfa == gfa || !nGFAs.has(ngfa))
                                                        mapQueue.insert(ngfa);
                                            }
                                        }*/
                }
            }
            /*            foreach (var f in mapReadLFSs)
                                foreach (var gt in lfsToGTMap[f])
            //                        if (!isMapROWSat(gt))
                                    foreach (var gfa in gt.gfas)
                                        if (gfa.function.isMapRead && setMapROWSat(gfa.gtt,gfa.function))
                                            nGFAs.insert(gfa);*/
            var nrts = getMapReadNRTs(nGFAs);
            if (!nrts.Any())
                newMapROWGFAs = null;
            markAdded(false);
            return nrts;
        }

        private bool hasAnyPGTT(GTT gtt)
        {
            var gt0 = gtt.gtT[0];
            return pis.Any(pi => getGTPGTs(pi, gt0).Any(pgt => pus[pi].gtData[pgt].sgtts.Any(pgtt => matchesGTTPGTT(pi, gtt, pgtt))));
        }

        GFA makeIfAnyPGTs(Function f, GTT gtt)
        {
            if (!pis.Any())
                return null;
            if (!hasGTT(gtt))
            {
                var gt0 = gtt.gtT[0];
                foreach (var pi in pis)
                    foreach (var pgt0 in getGTPGTs(pi, gt0))
                        foreach (var pgtt in pus[pi].gtData[pgt0].sgtts)
                            if (matchesGTTPGTT(pi, gtt, pgtt))
                            {
                                makeGTT(gtt);
                                goto raus;
                            }
                //                addMAPRowRGTT(gtt);
                raus:;
            }
            if (!hasGTT(gtt))
                return null;
            if (hasGTT(gtt) && hasGFA(f, gtt))
                return gttData[gtt].sgfas[f];
            if (pis.Any(pi => getGTTPGTTs(pi, gtt).Any(pgtt => pus[pi].hasGFA(f, pgtt))))
                return makeGFA(f, gtt, true);
            return null;
        }
        private bool matchesGTTPGTT(int pi, GTT gtt, GTT pgtt)
        {
            return (
                gtt.Count == pgtt.Count
                && Enumerable.Range(0, gtt.Count).All(i => !getGTPGTs(pi, gtt.gtT[i]).Contains(pgtt.gtT[i])));
        }

        private void propagateGTMapReadsLocalUp(MapsRT mapsRT)
        {
            if (newMapROWGFAs == null)
                return;
            var newMRGTs = new HashSet<GT>();
            foreach (var kv in newMapROWGFAs)
                foreach (var gtt in kv.Value)
                {
                    var f = kv.Key;
                    var gfa = makeIfAnyPGTs(f, gtt);
                    if (gfa != null)
                    {
                        var gt = gfa.gt;
                        if (setMapROWSat(gt))
                            newMRGTs.Add(gt);
                    }
                }
            //             return;
            //            var mrGTs = new HashSet<GT>(from kv in lfsToGTMap where kv.Key.isMapRead from gt in kv.Value select gt);
            if (!newMRGTs.Any())
                return;
            importMRGTEqGCs(newMRGTs);
            processMapRTEqGCs(newMRGTs);
            newMapROWGFAs = null;
        }

        private void processMapRTEqGCs(HashSet<GT> newMRGTs)
        {
            IDictionary<GT, ISet<GC>> mrGTOMEGCMap = new Dictionary<GT, ISet<GC>>();
            //            IDictionary<GT, ISet<GC>> mrGTMEGCMap = new Dictionary<GT, ISet<GC>>();
            var allOMRGTs = new HashSet<GT>(
                from lfs in mapReadLFSs
                from gt in lfsToGTMap[lfs]
                where isOMRGT(gt)
                select gt
                );
            var unsaturatedOMREqGCs = new HashSet<GC>();
            var toIndexGTs = new HashSet<GT>();
            foreach (var gt in allOMRGTs)
                foreach (var gc in getGTEqGCs(gt))
                    if (!unsaturatedOMREqGCs.Contains(gc))
                        if (!isMapROWSat(gc))
                            if (isOEqGC(gc,gt))
                            {
                                unsaturatedOMREqGCs.Add(gc);
                                toIndexGTs.Add(gt);
                            }
            if (!unsaturatedOMREqGCs.Any())
                return;
            var indexedGTs = new HashSet<GT>();
            foreach (var gt in toIndexGTs)
                indexOMREq(indexedGTs, mrGTOMEGCMap, gt);
//                indexOMRGT(indexedGTs)
/*            var allOEqGCs = new HashSet<GC>(
                from gt in allMRGTs// newMRGTs
                from gc in getGTEqGCs(gt)
                where isOEqGC(gc, gt)
                select gc);

            var allEqGCs = new HashSet<GC>(
                from gt in allMRGTs// newMRGTs
                from gc in getGTEqGCs(gt)
                where isOEqGC(gc, gt)
                select gc);*/
/*            foreach (var gc in allEqGCs)//assumedGCs)
            //                foreach (var gli in Enumerable.Range(0, gc.gls.Count))
            {
                //                foreach (var gli2 in Enumerable.Range(0, gc.gls.Count))
                //                    indexMREq(newMRGTs, mrGTMEGCMap, gc, gli2);
                var gli = termRepository.gcMaximalGL(gc);
                indexMREq(newMRGTs, mrGTOMEGCMap, gc, gli);
            }*/
//            var allOMEGCs = new HashSet<GC>(from v in mrGTOMEGCMap.Values from gc in v select gc);
            //            var allMEGCs = new HashSet<GC>(from v in mrGTMEGCMap.Values from gc in v select gc);

//            var newOMEGCs = new HashSet<GC>(from gc in allOMEGCs where !isMapROWSat(gc) select gc);
            //            var newMEGCs = new HashSet<GC>(from gc in allMEGCs where !isMapROWSat(gc) select gc);
            //            var newMRGTs = new HashSet<GT>(from gt in newMRGTs where !isMapROWSat(gt) select gt);
            #region log
#if DEBUG1
            foreach (var gt in newMRGTs)
            {
                var minGFAi = termRepository.getGTMinGFAi(gt);
                var minGFA = gt.gfas[minGFAi];
                foreach (var gfa in gt.gfas)
                    if (gfa != minGFA && (gfa.function.isMapRead || minGFA.function.isMapRead))
                        Slicer.log(2, "MR:GT.GT: [{0}]: {1,-30} => {2,-30}",
                            index,
                            gfa.ToStringB(),
                            minGFA.ToStringB()
                        );

            }
            foreach (var gc in newOMEGCs)
                Slicer.log(2, "MR:GT.OGC: [{0}]: {1,-30} => {2,-30}  :: {3}",
                    index,
                    getOMEGCl(gc),
                    getOMEGCr(gc),
                    toStringB(getOMEGCd(gc)));
            foreach (var gc in newMEGCs.Except(newOMEGCs))
                foreach (var gl in gc.gls)
                    if (gl.isEQOrDE && gl.polarity)
                        //                        for (var i=0; i<2; i++)
                        if (gl.gtT.Any(newMRGTs.Contains))
                            Slicer.log(2, "MR:GT.GC: [{0}]: {1,-30} => {2,-30}  :: {3}",
                                index,
                                getGLl(gl),
                                getGLr(gl),
                                toStringB(gc.gls.Except(gl)));


            /*            Slicer.log(2, "MR:      [{0}]:", index);
                        foreach (var kv in mrGTOMEGCMap)
                        {
                            Slicer.log(2, "MR:GT.GCs: [{0}]: {1}", index, kv.Key.ToStringB());
                            foreach (var gc in kv.Value)
                                Slicer.log(2, "MR:GT.GC: [{0}]:    {1}", index, gc.ToStringB());
                        }
                        foreach (var kv in mrGTMEGCMap)
                        {
                            Slicer.log(2, "MR:GT.AllGCs: [{0}]: {1}", index, kv.Key.ToStringB());
                            foreach (var gc in kv.Value)
                            {
                                Slicer.log(2, "MR:GT.AllGC: [{0}]:    {1}", index, gc.ToStringB());
                                if (!mrGTOMEGCMap.contains(kv.Key, gc))
                                    Console.Write("");
                            }
                        }*/
#endif
            #endregion
            var todoGCs = new Queue<GC>();
//            var doneGCs = new HashSet<GC>();
            foreach (var gc in unsaturatedOMREqGCs)
                todoGCs.Enqueue(gc);
            while (todoGCs.Any())
            {
                var gc = todoGCs.Dequeue();
                if (!hasGC(gc) || !isAssumed(gc) || isMapROWSat(gc))
                    continue;
                Debug.Assert(!isMapROWSat(gc));
//                Debug.Assert(!doneGCs.Contains(gc));
//                doneGCs.Add(gc);
                setMapROWSat(gc);

                var gli = termRepository.gcMaximalGL(gc);
                var gl = gc.gls[gli];
                Debug.Assert(gl.isEQOrDE && gl.polarity);
                var gti = getMaxGTI(gl.gtt);
                var gt = gl.gtT[gti];
                Debug.Assert(isOMRGT(gt));
                foreach (var ogc in mrGTOMEGCMap.getOrEmpty(gt).ToList())
                    if (gc != ogc && hasGC(ogc) && isAssumed(ogc) && isMapROWSat(ogc))
                    {
                        var ogli = termRepository.gcMaximalGL(ogc);
                        var ogl = ogc.gls[ogli];
                        var ogti = getMaxGTI(ogl.gtt);
                        Debug.Assert(ogl.gtt.gtT[ogti] == gt);

                        var ngl = makeEQG(gl.gtT[1 - gti], ogl.gtT[1 - ogti]);
                        if (!isTrue(ngl))
                        {
                            var rgls = gc.gls.Except(gl);
                            var rogls = ogc.gls.Except(ogl);
                            if (rgls.Any(gl1 => rogls.Contains(gl1.gNegate)))
                                continue;
                            if (rgls.Union(rogls).Contains(ngl.gNegate))
                                continue;
                            var ngls = new HashSet<GL>(rgls.Union(rogls).Concat(new[] { ngl }));
                            if (ngls.Count > resolutionMaxWidth)
                                continue;
                            var ngc = assumeGLs(ngls, false, false);
                            if (!ngc.isTrue && !isMapROWSat(ngc))
                            {
                                Slicer.log(2, "MR:GT.NGC: [{0}]: {1}", index, ngc.ToStringB());
                                if (isOMREqGC(gc))
                                {
                                    var b = indexOMREqIf(indexedGTs, mrGTOMEGCMap, ngc);
                                    if (b) todoGCs.Enqueue(ngc);
                                }
                            }
                            if (!hasGC(gc) || !isAssumed(gc))
                                break;
                        }
                    }

            }
        }

        private bool isOMRGT(GT gt)
        {
            var gfa = gt.gfas[termRepository.getGTMinGFAi(gt)];
            return gfa.function.isMapRead;
        }

        public int getMaxGTI(GTT gtt)
        {
            Debug.Assert(gtt.Count == 2);
            var c = termRepository.compare(gtt.gtT[0], gtt.gtT[1]);
            Debug.Assert(c == 1 || c == -1);
            var gti = (c == 1) ? 0 : 1;
            return gti;
        }

        public IEnumerable<GC> getGTsOOEqGCs(IEnumerable<GT> igts)
        {
            return new HashSet<GC>(
                from gt in igts
                from gc in getGTEqGCs(gt)
                where isOOEqGC(gc, gt)
                select gc);
        }

        private bool isOOEqGC(GC gc, GT gt)
        {
            var gl = gc.gls[termRepository.gcMaximalGL(gc)];
            return isOOEqGL(gl, gt);
        }
        private bool isOOEqGL(GL gl, GT gt)
        {
            return gl.isEQOrDE && gl.polarity &&
                Enumerable.Range(0, 2).Any(i => gl.gtT[i] == gt && termRepository.compare(gl.gtT[i], gl.gtT[1 - i]) == 1);
        }

        private bool isOEqGC(GC gc, GT gt)
        {
            var gl = gc.gls[termRepository.gcMaximalGL(gc)];
            return isOEqGL(gl, gt);
        }

        private bool isOEqGL(GL gl, GT gt)
        {
            return gl.isEQOrDE && gl.polarity && getMaxGT(gl.gtt) == gt;// gtT[getMaxGTI[gl.gt.Contains(gt);
        }
        private GT getMaxGT(GTT gtt)
        {
            return gtt.gtT[getMaxGTI(gtt)];
        }

        private void integerGTStuff(IEnumerable<GT> unsaturatedGTs)
        {
            //            if (index == 87)
            //                Debugger.Break();
            foreach (var gt in unsaturatedGTs)
                if (gt.type.isEquivalent(IntegerType.integerType) && !queues.hasEquivalenceClass(gt) && isNew(gt) && allPGTsSat(gt))
                {
                    #region debug
#if DEBUG
                    if (gtInstBreakCond(this, gt))
                        Debugger.Break();
#endif
                    #endregion debug
                    var numbers = new HashSet<BigInteger>(from gfa in gt.gfas where srs.isNumber(gfa.function) select srs.getNumber(gfa.function));
                    if (numbers.Count > 1)
                    {
                        refute(numbers.First().ToString() + " = " + numbers.Last().ToString());
                        return;
                    }
                    if (numbers.Count == 1)
                    {
                        var number = numbers.First();
                    }
                    foreach (var gfa in gt.gfas)
                    {
                        if (isIntMul(gfa.function))
                        {
                            var x = gfa.gtt.gtT[0];
                            var y = gfa.gtt.gtT[1];
                            //                            if (notReady(x) || notReady(y))
                            //                                continue;
                            if (isNumber(y) && isNumber(x))
                            {
                                var prod = getNumber(x) * getNumber(y);
                                var prodF = srs.getFunction(IntegerValue.make(prod));
                                addToScope(prodF);
                                assumeEQG(gt, makeGT(prodF, emptyGTT, false));
                            } else if (isNumber(y))
                            {
                                assumeEQG(gt, makeGT(gfa.function, gfa.gtT[1], gfa.gtT[0], false));
                            } else if (isNumber(x))
                            {
                                var xn = getNumber(x);
                                if (xn == 0)
                                {
                                    var z = makeGT(srs.getFunction(IntegerValue.make(0)), emptyGTT);
                                    assumeEQG(gt, z);
                                    if (isRefuted)
                                        return;
                                } else
                                {
                                    foreach (var gfay in y.gfas)
                                        if (isIntMul(gfay.function) && isNumber(gfay.gtT[0]))
                                        {//n*(m*z) => (nm)z
                                            var yn = getNumber(gfay.gtT[0]);
                                            var prod = xn * yn;
                                            var prodGT = makeNumberGT(prod);
                                            GT gt2;
                                            if (tryMakeGT(gfa.function, prodGT, gfay.gtT[1], out gt2))
                                                assumeEQG(gt, gt2);
                                        }
                                }
                            }//if (isNumber(x))

                            if (!isZero(x) && !isZero(y))
                            {
                                foreach (var gfax in x.gfas)
                                    if (isIntMul(gfax.function) && !isNumber(gfax.gtT[1]) && (!isZero(gfax.gtT[0])))
                                    { //(x*y)*z => x*(y*z)
                                        var yz = makeGT(gfa.function, gfax.gtT[1], y);
                                        GT gt2;
                                        if (tryMakeGT(gfa.function, gfax.gtT[0], yz, out gt2))
                                        {
                                            assumeEQG(gt, gt2);
                                            if (isRefuted)
                                                return;
                                        }
                                    }
                            }//if (!isZero(x) && !isZero(y))
                        } else if (isIntPlus(gfa.function))
                        {
                            var x = gfa.gtt.gtT[0];
                            var y = gfa.gtt.gtT[1];
                            if (isNumber(y) && isNumber(x))
                            {
                                var sum = getNumber(x) + getNumber(y);
                                var sumF = srs.getFunction(IntegerValue.make(sum));
                                addToScope(sumF);
                                var gt2 = makeGT(sumF, emptyGTT);
                                assumeEQG(gt, gt2);
                                if (isRefuted)
                                    return;
                            } else if (isNumber(y))
                            {//x+m => m+x
                                var gt2 = makeGT(gfa.function, y, x);
                                assumeEQG(gt, gt2);
                                if (isRefuted)
                                    return;
                            } else if (isNumber(x))
                            {
                                if (isZero(x))
                                {
                                    if (gt != y)
                                    {
                                        assumeEQG(gt, y);
                                        if (isRefuted)
                                            return;
                                    }
                                } else
                                    foreach (var gfay in y.gfas)
                                        if (isIntPlus(gfay.function) && isNumber(gfay.gtT[0]))
                                        {//n+(m+z) => (n+m)+z
                                            var sum = getNumber(x) + getNumber(gfay.gtT[0]);
                                            var sumGT = makeNumberGT(sum);
                                            GT gt2;
                                            if (tryMakeGT(gfa.function, sumGT, gfay.gtT[1], out gt2))
                                            {
                                                assumeEQG(gt, gt2);
                                                if (isRefuted)
                                                    return;
                                            }
                                        } else if (isIntMul(gfay.function) && isNumber(gfay.gtT[0]) && getNumber(gfay.gtT[0]) == -1 && (gfay.gtT[1]==x))
                                        { //(x + -1*x) => 0
                                            var zt = makeGT(srs.getFunction(IntegerValue.make(0)), emptyGTT);
                                            assumeEQG(gt, zt);
                                            if (isRefuted)
                                                return;
                                        }
                            }
                            if (!isNumber(x) && !isNumber(y))
                                foreach (var gfax in x.gfas)
                                    if (isIntegerReduced(gfax))
                                        if (isIntMul(gfax.function) && !isNumber(gfax.gtT[1]) && !isZero(gfax.gtT[0]))
                                        {
                                            if (isNumber(gfax.gtT[0]))
                                            {
                                                foreach (var gfay in y.gfas)
                                                    if (isIntMul(gfay.function) && isNumber(gfay.gtT[0]) && gfax.gtT[1] == gfay.gtT[1])
                                                    {//(n*x)+(m*x) => (n+m)*x
                                                        var sum = getNumber(gfax.gtT[0]) + getNumber(gfay.gtT[0]);
                                                        var sumGT = makeNumberGT(sum);
                                                        //                                                    var sumF = srs.getFunction(IntegerValue.make(sum));
                                                        //                                                    var sumGT = makeGT(sumF, emptyGTT);
                                                        if (sum == 0)
                                                        {
                                                            var gt2 = sumGT;
                                                            assumeEQG(gt, gt2);
                                                            if (isRefuted)
                                                                return;
                                                        } else
                                                        {
                                                            GT gt2;
                                                            if (tryMakeGT(gfax.function, sumGT, gfax.gtT[1], out gt2))
                                                            {
                                                                assumeEQG(gt, gt2);
                                                                if (isRefuted)
                                                                    return;
                                                            }
                                                        }
                                                    }
                                            }//if (isNumber(gfax.gts[0]))
                                        }
                            #region old
                            /*                                        else if (isIntPlus(gfax.function) && !isNumber(gfax.gts[1]) && !isZero(gfax.gts[0]))
                                                                    { //(x+y)+z => x+(y+z)
                                                                        var yz = makeGT(gfa.function, makeGTT(gfax.gts[1], y));
                                                                        var gttypz = makeGTT(gfax.gts[0], yz);
                                                                        if (gttRadius(gttypz) < maxGTRadius)
                                                                        {
                                                                            var gt2 = makeGT(gfa.function, gttypz);
                                                                            assumeGEQ(gt, gt2);
                                                                            if (isRefuted)
                                                                                return;
                                                                        }
                                                                    }*/ //TODO ordered AC rearrangement
                            #endregion old
                        }//if (isIntPlus(gfa.function))
                        else if (isIntMinus(gfa.function))
                        {//x-y => x+ -1*y
                            var x = gfa.gtT[0];
                            var y = gfa.gtT[1];
                            GT m1y;
                            GT xpm1y;
                            if (
                                inDepthBoundStrict(x) &&
                                tryMakeGT(srs.integerTimes, makeGT(srs.getFunction(IntegerValue.make(-1))), y, out m1y) &&
                                tryMakeGT(srs.integerPlus, x, m1y, out xpm1y)
                            )
                            {
                                assumeEQG(gt, xpm1y);
                                if (isRefuted)
                                    return;
                            }
                        }

                    }
                }
        }
        private void applyBuiltinMapAxioms(GT gt)
        {
            if (!inDepthBoundStrict(gt))
                return;
            foreach (var gfaKV in gt.gfasByFunction)
                if (gfaKV.Key.isMapRead)
                {
                    foreach (var gfa in gfaKV.Value.Values)
                    {
                        var readIndices = gfa.gtT.Skip(1).ToArray();
                        var m = gfa.gtT[0];
                        foreach (var mgfaKV in m.gfasByFunction)
                            if (mgfaKV.Key.isMapWrite)
                            {
                                foreach (var mgfa in mgfaKV.Value.Values)
                                {
                                    var writeIndices = mgfa.gtT.Skip(1).Take(mgfa.gtT.Count() - 2).ToArray();
                                    Debug.Assert(readIndices.Count() == writeIndices.Count());
                                    var equalIndices = new HashSet<int>();
                                    var unequalIndices = new HashSet<int>();
                                    for (var i = 0; i < readIndices.Count(); i++)
                                        if (isEqual(readIndices[i], writeIndices[i]))
                                            equalIndices.Add(i);
                                        else if (isUnequal(readIndices[i], writeIndices[i]))
                                            unequalIndices.Add(i);

                                    var value = mgfa.gtT.Last();
                                    if (equalIndices.Count() == readIndices.Count())
                                    {
                                        if (inDepthBoundStrict(value))
                                        {
                                            assumeEQG(gt, value);
                                            if (isRefuted)
                                                return;
                                        }
                                    } else
                                    {
                                        var subReadGTs = new[] { mgfa.gtT[0] }.Concat(readIndices);
                                        if (inDepthBoundStrict(subReadGTs))
                                        {
                                            //                                            var subReadGTT = makeGTT(subReadGTs);
                                            var subRead = makeGT(gfa.function, subReadGTs, true);
                                            if (unequalIndices.Any())
                                            {
                                                if (inDepthBoundStrict(subRead))
                                                {
                                                    assumeEQG(gt, subRead);
                                                    if (isRefuted)
                                                        return;
                                                }
                                            } else
                                            {
                                                GL eqPred = null;
                                                if (inDepthBoundStrict(subRead))
                                                    eqPred = makeEQG(gt, subRead);
                                                GL eqVal = null;
                                                if (inDepthBoundStrict(value))
                                                    eqVal = makeEQG(gt, value);
                                                var valAtoms = new HashSet<GL>();
                                                for (var i = 0; i < readIndices.Count(); i++)
                                                {
                                                    var ri = readIndices[i];
                                                    var wi = writeIndices[i];
                                                    if (!equalIndices.Contains(i))
                                                    {
                                                        if (inDepthBoundStrict(ri) && inDepthBoundStrict(wi))
                                                        {
                                                            var geAtom = makeEQG(ri, wi);
                                                            if (eqPred != null)
                                                            {
                                                                assumeGLs(new[] { geAtom, eqPred }, isGoal(gt), false);
                                                                if (isRefuted)
                                                                    return;
                                                            }
                                                            if (eqVal != null)
                                                                valAtoms.Add(geAtom.gNegate);
                                                        } else
                                                            eqVal = null;
                                                    }
                                                }
                                                if (eqVal != null)
                                                {
                                                    Debug.Assert(valAtoms.Any());
                                                    valAtoms.Add(eqVal);
                                                    //                                                assume(valAtoms, isGoal(gt), false);
                                                    if (isRefuted)
                                                        return;
                                                }
                                            }
                                        }//all subreadgts.radius<maxRadius
                                    }
                                }//foreach mgfa
                            }//if mgfa is mapWrite
                            else if (mgfaKV.Key.isMapRead) //one step deeper
                            {
                                foreach (var mgfa in mgfaKV.Value.Values)
                                {
                                    var mreadIndices = mgfa.gtT.Skip(1).ToArray();
                                    var mm = mgfa.gtT[0];
                                    foreach (var mmgfaKV in mm.gfasByFunction)
                                        if (mmgfaKV.Key.isMapWrite)
                                        {
                                            foreach (var mmgfa in mmgfaKV.Value.Values)
                                            {
                                                var mmm = mmgfa.gtT.First();
                                                var mmwriteIndices = mmgfa.gtT.Skip(1).Take(mmgfa.gtT.Count() - 2).ToArray();
                                                var mmv = mmgfa.gtT.Last();
                                                foreach (var mmvgfaKV in mmv.gfasByFunction)
                                                    if (mmvgfaKV.Key.isMapWrite)
                                                        foreach (var mmvgfa in mmvgfaKV.Value.Values)
                                                        {
                                                            var mmvm = mmvgfa.gtT[0];
                                                            var mmvwriteIndices = mmvgfa.gtT.Skip(1).Take(mmvgfa.gtT.Count() - 2).ToArray();
                                                            if (isUnequal(readIndices, mmvwriteIndices))
                                                            {
                                                                foreach (var mmvmgfaKV in mmvm.gfasByFunction)
                                                                    if (mmvmgfaKV.Key.isMapRead)
                                                                        foreach (var mmvmgfa in mmvmgfaKV.Value.Values)
                                                                        {
                                                                            var mmvmm = mmvmgfa.gtT[0];
                                                                            var mmvmreadIndices = mmvmgfa.gtT.Skip(1).ToArray();
                                                                            if (mmvmm == mmm && isEqual(mmwriteIndices, mmvmreadIndices))
                                                                            {
                                                                                var mSubReadGTs = new[] { mmm }.Concat(mreadIndices);
                                                                                if (mSubReadGTs.All(sgt => gtDepth(sgt) < maxGTDepth))
                                                                                {
                                                                                    /*   var mSubReadGTT = makeGTT(mSubReadGTs);
                                                                                       var mSubRead = makeGT(mgfa.function, mSubReadGTT, true);*/
                                                                                    var mSubRead = makeGT(mgfa.function, mSubReadGTs, true);
                                                                                    var subReadGTs = new[] { mSubRead }.Concat(readIndices);
                                                                                    if (subReadGTs.All(sgt => gtDepth(sgt) < maxGTDepth))
                                                                                    {
                                                                                        //                                                                                        var subReadGTT = makeGTT(subReadGTs);
                                                                                        var subRead = makeGT(gfa.function, subReadGTs, true);
                                                                                        assumeEQG(gt, subRead);
                                                                                        if (isRefuted)
                                                                                            return;
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                            }//isunequal ris mmvwis
                                                        }
                                            }
                                        }//if mmgfa is mapwrite
                                }//foreach mgfa
                            }//if mgfa is mapread
                    }//foreach gfa
                }//if gfa is mapRead
        }
        private void instantiateGTFCs(GT gt)
        {
            if (!gtInstantiateFLEqualityKnob && !gtInstantiateCLTEqualityKnob && !gtInstantiateCLTNonEqualityKnob)
                return;
            var fclts = instantiationIndex.lookup(gt);
            foreach (var fclt in fclts)
                if (gtFCInstantiationCriterion(gt, fclt))
                {
                    Debug.Assert(upToDate(fclt.fc));
                    var gss = eUnifyG(fclt.it, gt);
                    foreach (var gs in gss)
                    {
                        GC gc;
                        if (trySubstitute(fclt.fc, gs, out gc))
                        {
                            assume(gc);
                            if (isGoal(gt))
                                addGoalRecursive(gc);
                        }
                    }
                    markAdded(false);
                }
        }

        private void instantiateGTFrameRules(GT gt)
        {
            foreach (var m in gt.gfasByFunction)
            {
                if (m.Key.isMapRead)
                {
                    var eqFCLs = instantiationIndex.getAllEqualityFCLs();
                    foreach (var fcl in eqFCLs)
                    {
                        var fc = fcl.fc;
                        Debug.Assert(upToDate(fc));
                        if (gtCLFrameRuleCriterion(fc, fcl.ili))
                        {
                            var fl = fcl.il as FL;
                            for (var i = 0; i < 2; i++)
                            {
                                var term = fl.itt[i];
                                var gss = eUnifyG(term, gt);
                                markAdded(false);
                                foreach (var gs in gss)
                                {
                                    var gls = new HashSet<GL>();
                                    var fls = new HashSet<FL>();
                                    foreach (var a in fc)
                                    {
                                        var sa = a.substitute(gs);
                                        markAdded(false);
                                        var ga = sa as GL;
                                        if (ga != null)
                                            gls.Add(ga);
                                        else
                                            fls.Add(sa as FL);
                                    }
                                    if (!fls.Any())
                                    {
                                        var gc = makeGC(gls, isGoal(gt));
                                        markAdded(false);
                                        if (isGoal(gt))
                                            addGoalRecursive(gc);
                                        assume(gc);
                                        if (isRefuted)
                                            return;
                                    } else
                                    {//else....for frame rule
                                     //                                        Debugger.Break();
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        /*        private void enqueueGTCLTEqualityMatches(GT gt)
                {
                    Debug.Assert(gtInstantiateCLTEqualityKnob);

                    foreach (var m in gt.gfasByFunction)
                    {
                        ISet<FCLT> eqCLTs;
                        if (!functionCLTTriggers.TryGetValue(m.Key, out eqCLTs))
                            continue;
                        foreach (var clt in eqCLTs)
                            if (clt.cl.il.isEQOrNE && clt.cl.il.polarity && gtCLTEqualityCriterion(clt))
                            {
                                Debug.Assert(upToDate(clt.cl.fc));
                                var t = clt.term;
                                var gss = tryUnifyG(t, gt);
                                markAdded(false);
                                foreach (var gs in gss)
                                {
                                    var gls = new HashSet<GL>();
                                    var fls = new HashSet<FL>();
                                    foreach (var l in clt.cl.fc)
                                    {
                                        var sl = l.substitute(gs);
                                        markAdded(false);
                                        var ga = sl as GL;
                                        if (ga != null)
                                            gls.Add(ga);
                                        else
                                            fls.Add(sl as FL);
                                    }
                                    if (fls.Count == 0)
                                    {
                                        var gc = makeGC(gls, isGoal(gt));
                                        markAdded(false);
                                        if (isGoal(gt))
                                            addGoalRecursive(gc);
                                        assume(gc);
                                        if (isRefuted)
                                            return;
                                    }
                                    else
                                    {//else....free clause?
                                    }
                                }
                            }
                    }
                }
                */
        #endregion GT

        #region GDE
        protected void instSaturateGDE(GT gt0, GT gt1)
        {
            var isGoal = this.isGoal(gt0) && this.isGoal(gt1);
            if (!predecessorsHaveDisequality(gt0, gt1))
            {
                //TODO instantiate as GL x FC

                #region disagreement sets
                if (gtDisagreementSetKnob)
                {
                    foreach (var f in gt0.gfasByFunction)
                        if (gt1.gfasByFunction.ContainsKey(f.Key))
                            foreach (var m1 in f.Value.Keys)
                                foreach (var m2 in gt1.gfasByFunction[f.Key].Keys)
                                    if (m1 != m2)
                                        assumeGTTDisequality(m1, m2, isGoalGDE(m1, m2), isOriginalGDE(m1, m2));
                }
                #endregion disagreement sets
            }
            queues.removeGDE(gt0, gt1);
        }
        #endregion GDE

        #endregion instantiation saturation

        #region indexing
        private IEnumerable<GC> getGLLocalAssumedGCs(GL ga)
        {
            return from gc in glData[ga].gcs where isAssumed(gc) select gc;
        }
        private IEnumerable<FC> getGLLocalAssumedFCs(GL ga)
        {
            return from fc in glData[ga].fcs where isAssumed(fc) select fc;
        }
        //        private readonly ISet<GL> importedGLAxioms = new HashSet<GL>();


        private static bool potentialMatch(IL fil, GL gl)
        {
            if (fil.predicate != gl.predicate)
                return false;
            return potentialMatch(fil.iaf.itt, gl.gaf.gtt);
        }

        private static bool potentialMatch(ITT itt, GTT gtt)
        {
            Debug.Assert(itt.Count == gtt.Count);
            for (var i = 0; i < itt.Count; i++)
                if (!potentialMatch(itt[i], gtt.gtT[i]))
                    return false;
            return true;
        }

        private static bool potentialMatch(IT it, GT gt)
        {
            var ffa = it as FFA;
            if (ffa != null)
            {
                IDictionary<GTT, GFA> gfaMap;
                if (gt.gfasByFunction.TryGetValue(ffa.function, out gfaMap))
                {
                    foreach (var gtt in gfaMap.Keys)
                    {
                        if (potentialMatch(ffa.ftt, gtt))
                            return true;
                    }
                }
                return false;
            } else if (it is FVT)
                return true;
            else //it is GT
                return true;
        }
        /*protected ISet<CanonicalForms.FCL> getLocalCLsByPPLFSTT(PP pp, IEnumerable<LFSTT> lfstts)
        {
            var e1 = assumedCLsByPPLFSTTs.getAdd(pp);
            var e2 = checkedCLsPPLFSTT.getAdd(pp);
            var result = new HashSet<CanonicalForms.FCL>();
            foreach (var lfstt in lfstts)
            {
                if (!e2.Contains(lfstt))
                {
                    mapClausesToLFSTT(pp, lfstt);
                    e2.Add(lfstt);
                }
                result.UnionWith(e1.get(lfstt));
            }
            return result;
        }*/
        /*internal void mapClausesToLFSTT(PP pp, LFSTT lfstt)
        {
            assumedCLsByPPLFSTTs.insert(pp, lfstt);
            foreach (var fcl in assumedCLsByPP.get(pp))
                if (matches(lfstt, fcl.il.iaf.itt))
                    assumedCLsByPPLFSTTs.insert(pp, lfstt, fcl);
        }*/
        /*private bool cltCriterion(CanonicalForms.FCL cl)
        {
            return
                !cl.il.isEQOrDE &&
                cl.il.freeVariables.Count > 0 &&
                cl.il.freeVariables.Count == cl.fc.freeVariables.Count;
        }*/
        /*static bool cltTermCriterion(CanonicalForms.FCL ca, int i)
        {
            var a = ca.il;
            var t = a.iaf.itt[i];
            if (t is FVT)
                return false;
            if (t.freeVariables.Count < a.freeVariables.Count)
                return false;
            return true;
        }*/

        /*        private void indexClauseAtom(FCL fcl)
                {
                    #region clByPP
                    var pp = fcl.il.pp;
                    assumedCLsByPP.insert(pp, fcl);
                    IDictionary<LFSTT, ISet<FCL>> f2;
                    if (assumedCLsByPPLFSTTs.TryGetValue(pp, out f2))
                        foreach (var lfstKV in f2)
                            if (matches(lfstKV.Key, fcl.il.iaf.itt))
                                lfstKV.Value.Add(fcl);
                    assumedCLsByIC.insert(fcl.fc, fcl);
                    #endregion clByPP

                    #region equality CLs
                    if (fcl.il.isEQOrDE && fcl.il.polarity && (isOriginal(fcl.fc) || isImported(fcl.fc)))
                    {
                        foreach (var t in fcl.il.iaf.itt)
                            if (!(t is FVT))
                            {
                                var lfss = termLFSS(t);
                                foreach (var lfs in lfss)
                                    equalityCLsByPolarityAndLFS[fcl.il.polarity].insert(lfs, fcl);
                            }
                    }
                    #endregion equality CLs

                    #region CLT
                    Debug.Assert(!clCLTs.ContainsKey(fcl));
                    clCLTs[fcl] = new HashSet<FCLT>();
                    if (cltCriterion(fcl))
                    {
                        var a = fcl.il;
                        for (var i = 0; i < a.iaf.itt.Count(); i++)
                        {
                            var t = a.iaf.itt[i];
                            if (cltTermCriterion(fcl, i))
                            {
                                var clt = new FCLT(fcl, i);
                                var fs = termLFSS(t);
                                foreach (var f in fs)
                                    functionCLTTriggers.insert(f, clt);
                                clCLTs[fcl].Add(clt);
                            }
                        }
                    }
                    #endregion CLT

                }
                private void unindexClauseAtom(FCL fcl)
                {
                    var b = assumedCLsByPP.remove(fcl.il.pp, fcl);
                    Debug.Assert(b);
                    foreach (var cls in assumedCLsByPPLFSTTs.getValues(fcl.il.pp))
                        cls.Remove(fcl);

                    assumedCLsByIC[fcl.fc].Remove(fcl);
                    if (fcl.il.isEQOrDE)// && (isOriginal(fcl.fc) || isImported(fcl.fc)))
                    {
                        var polarity = fcl.il.polarity;
                        foreach (var t in fcl.il.iaf.itt)
                        {
                            ISet<Function> lfss;
                            if (t is GT)
                                lfss = new HashSet<Function>((t as GT).gfasByFunction.Keys);
                            else if (t is FFA)
                                lfss = new HashSet<Function> { (t as FFA).function };
                            else continue;
                            foreach (var lfs in lfss)
                                if (equalityCLsByPolarityAndLFS[polarity].ContainsKey(lfs))
                                    equalityCLsByPolarityAndLFS[polarity][lfs].Remove(fcl);
                        }
                    }

                    #region CAT
                    foreach (var clt in clCLTs[fcl])
                        unindexCAT(clt);
                    clCLTs.Remove(fcl);
                    #endregion CAT
                }
                private void unindexCAT(FCLT cat)
                {
                    var t = cat.term;
                    var fs = (t is FFA) ? new[] { (t as FFA).function } : (t as GT).gfasByFunction.Keys;
                    foreach (var f in fs)
                    {
                        Debug.Assert(functionCLTTriggers[f].Contains(cat));
                        functionCLTTriggers[f].Remove(cat);
                    }
                }*/
        protected static bool matches(LFSTT lfstt, ITT tt)
        {
            Debug.Assert(tt.Count() == lfstt.count);
            var num = lfstt.count;
            for (var i = 0; i < num; i++)
            {
                var f = lfstt[i];
                if (f == null)
                    continue;
                var t = tt[i];
                if (t is FFA)
                {
                    var fa = t as FFA;
                    if (fa.function != f)
                        return false;
                } else if (t is GT)
                {
                    var gt = t as GT;
                    if (!gt.gfasByFunction.ContainsKey(f))
                        return false;
                }
            }
            return true;
        }
        #endregion indexing

        #region assumptions
        public void assumeOriginalClauses(IEnumerable<Clause> oClauses, bool isGoal)
        {
            if (isRefuted)
                return;
            try
            {
                #region precondition
#if DEBUG
                Debug.Assert(invariant());
                Debug.Assert(instantiationCachesComplete());
                //                Debug.Assert(sourcesComplete());
#endif
                #endregion precondition

                #region ground terms
                var ogts = new HashSet<FunctionApplicationFormula>(from c in oClauses from t in getClauseGroundTerms(c) select t);
                makeOriginalGTs(ogts, isGoal);
                //            updateRadii(gts);
                #endregion ground terms

                var clauses = new HashSet<IC>();
                foreach (var oc in oClauses)
                {
                    var c = makeClause(oc, isGoal, true);
                    markAdded(true);
                    assumeIC(c);
                    if (isRefuted)
                        return;
                }
                if (isRefuted)
                    return;
                markAdded(true);
                Debug.Assert(sourcesComplete());
            } catch (RefuteException) { }
        }

        private IEnumerable<FunctionApplicationFormula> getClauseGroundTerms(Clause c)
        {
            return from a in c.literals from t in getAtomGroundTerms(a) select t;
        }

        private IEnumerable<FunctionApplicationFormula> getAtomGroundTerms(Literal a)
        {
            return from tt in a.f.subTerms from t in getTermGroundTerms(tt) select t;
        }

        private IEnumerable<FunctionApplicationFormula> getTermGroundTerms(ITerm tt)
        {
            var result = new HashSet<FunctionApplicationFormula>();
            if (tt.isFunctionApplication)
            {
                var fa = tt.asFunctionApplication;
                if (fa.isGround)
                    result.Add(fa);
                result.UnionWith(from ttt in fa.args from tttt in getTermGroundTerms(ttt) select tttt);
            }
            return result;
        }

        #region ground atom
        protected void assume(GL gl)
        {
            if (gl.isTrue)
                return;
            if (gl.isEQOrDE)
                assumeGEQDE(gl);
            else
                assumeGLs(new[] { gl }, false, false);
        }
        protected bool assumeGLInt(GL gl)
        {
            bool result;
            if (gl.isTrue)
                result = false;
            if (gl.isEQOrDE)
                result = assumeGEQDE(gl);
            else
                result = assumeGPAInt(gl);

            ISet<GAF> fgafs;
            if (gafFGAFs.TryGetValue(gl.gaf, out fgafs))
            {
                gafFGAFs.Remove(gl.gaf);
                foreach (var fgaf in fgafs)
                    fgafCache[fgaf] = new HashSet<GAF> { gl.polarity ? trueGAF : falseGAF };
            }
            return result;
        }

        internal void assumeEQG(GT gt0, GT gt1)
        {
            var b = assumeGEQInt(gt0, gt1);
            if (isRefuted)
                return;
            GL geq;
            if (b && tryGetGEQNEGA(gt0, gt1, true, out geq))
                propagateLoop(new[] { makeGC(geq) });
        }
        internal bool assumeGEQInt(GT gt0, GT gt1)
        {
            #region precondition
#if DEBUG
            Debug.Assert(upToDate(gt0));
            Debug.Assert(upToDate(gt1));
#endif
            #endregion precondition
            if (gt0 == gt1)
                return false;
            if (isUnequal(gt0, gt1))
            {
                refute(gt0.ToStringB() + "equal and not equal to " + gt1.ToStringB());
                return true;
            }
            queues.enqueueEquivalenceClass(gt0, gt1);
            return true;
        }
        protected bool assumeGEQDE(GL gl)
        {
            Debug.Assert(gl.isEQOrDE);
            if (isGoal(gl))
            {
                addGoal(gl.gtt.gtT[0]);
                addGoal(gl.gtt.gtT[1]);
            }
            if (isTrue(gl))
                return false;
            if (gl.polarity)
                assumeEQG(gl.gtt.gtT[0], gl.gtt.gtT[1]);
            else
                assumeGDE(gl.gtt.gtT[0], gl.gtt.gtT[1]);
            return true;
        }
        public void assumeGDE(GT gt0, GT gt1)
        {
            var b = assumeGDEInt(gt0, gt1);
            if (isRefuted)
                return;
            GL gne;
            if (b && tryGetGEQNEGA(gt0, gt1, false, out gne))
                propagateLoop(new[] { makeGC(gne) });

        }
        protected bool assumeGDEInt(GT gt0, GT gt1)
        {
            //TODO for goal we keep the ground atom
            #region precondition
#if DEBUG
            Debug.Assert(upToDateGTMM(gt0));
            Debug.Assert(upToDateGTMM(gt1));
#endif
            #endregion precondition

            #region quick checks
            if (gt0 == gt1)
            {
                refute(gt0.ToStringB() + " not equal to itself");
                return true;
            }
            if (gtData[gt0].disequalities.Contains(gt1))
                return false;
            #endregion quick checks

            #region heart
            gtData[gt1].disequalities.Add(gt0);
            gtData[gt0].disequalities.Add(gt1);
            queues.enqueueInequality(gt0, gt1);
            #region versioning
#if DEBUG
            //TODO:mark as coming from goal
            gieRevisionMap[makeInequalityString(gt0, gt1)] = currentRevision - 1;
            gieRevisionMap[makeInequalityString(gt1, gt0)] = currentRevision - 1;
#endif
            #endregion versioning
            #endregion heart

            #region postcondition
#if DEBUG
            Debug.Assert(gtData[gt0].disequalities.Contains(gt1));
            Debug.Assert(gtData[gt1].disequalities.Contains(gt0));
#endif
            #endregion postcondition

            return true;
        }
        private bool assumeGPAInt(GL gpa)
        {
            #region precondition
#if DEBUG
            Debug.Assert(!gpa.isEQOrDE);
#endif
            #endregion precondition

            if (isTrue(gpa))
                return false;
            if (isFalse(gpa))
            {
                refute(gpa.ToStringB() + " is false");
                return true;
            }
            assumeGPAGLInt(gpa);

            #region builtin
            if (gpa.polarity && srs.isLessThan(gpa.gaf.predicate))
                assumeGDE(gpa.gaf.gtt.gtT[0], gpa.gaf.gtt.gtT[1]);
            #endregion builtin

            return true;
        }
        protected void assumeGPAGLInt(GL gl)
        {
            #region precondition
#if DEBUG
            Debug.Assert(!(gl.gaf.predicate is Equality));
            Debug.Assert(upToDateGTTMM(gl.gaf.gtt));
            Debug.Assert(isAssumed(makeGC(gl)));
#endif
            #endregion precondition

            #region path condition
            if (srs.isPathCondition(gl.gaf.predicate))
            {
                addPathCondition(gl);
                addGoalRecursive(gl);
            }
            #endregion path condition

            #region indexing
            if (isAssumed(gl.gNegate))
            {
                refute("atom " + gl.ToStringB() + " is false");
                return;
            }

            if (assumedGLsByPP.insert(gl.pp, gl))
            {
                var gaf = gl.gaf;
                var gtt = gaf.gtt;
                Debug.Assert(!(gaf.predicate is Equality));
                Debug.Assert(!gttData[gtt].assumedGLsByPredicate.ContainsKey(gaf.predicate));
                Debug.Assert(gttData[gtt].sgafs[gaf.predicate] == gaf);

                gttData[gtt].assumedGLsByPredicate[gaf.predicate] = gl;
                augcRevisionMap[gl] = currentRevision - 1;
                revisionList.Last().addAssumedUGC(gl);
            }
            Debug.Assert((gl.polarity && gl.gaf == trueGAF) || !gl.isTrue);
            //            if (!ga.isTrue)
            {
                glData[gl].setAssumed(true);
                removeOrphan(gl);
            }
            #endregion indexing
        }
        protected void unAssume(GL gl)
        {
            Debug.Assert(gl.gaf != trueGAF);
            Debug.Assert(assumedGLsByPP[gl.pp].Contains(gl));
            assumedGLsByPP[gl.pp].Remove(gl);
            gttData[gl.gaf.gtt].assumedGLsByPredicate.Remove(gl.gaf.predicate);
            revisionList[augcRevisionMap[gl]].removeAssumedUGC(gl);
            augcRevisionMap.Remove(gl);
            glData[gl].setAssumed(false);
            checkAddOrphan(gl);
        }
        #endregion ground atom

        #region ground clause
        public GC assume(GC ogc)
        {
            var gc = assumeGLsInt(ogc.gls, isGoal(ogc), isOriginal(ogc), ogc);
            #region consistency
            if (!isRefuted && !gc.isTrue)
            {
                if (gc.gls.Count == 1 && gc.gls.First().isEQOrDE)
                {
                    var ge = gc.gls.First();
                    Debug.Assert(isTrueGEQNE(ge.polarity, ge.gtt));
                } else
                    Debug.Assert(isAssumed(gc) || gcFGCs.ContainsKey(gc) || !allGCs.Contains(gc));
            }
            #endregion consistency
            return gc;
        }
        public GC assumeGLs(IEnumerable<GL> igls, bool isGoal, bool isOriginal)
        {
            return assumeGLsInt(igls, isGoal, isOriginal, null);
        }
        private GC assumeGLsInt(IEnumerable<GL> igls, bool isGoal, bool isOriginal, GC gc)
        {
            var b = assumeGCInt(igls, isGoal, isOriginal, ref gc);
            if (!isRefuted)
                if (b)
                    propagateLoop(new[] { gc });
            return gc;
        }
        private GC trueGC
        {
            get
            {
                return makeGC(true);
            }
        }
        private GC falseGC
        {
            get
            {
                return makeGC(false);
            }
        }
        private bool assumeGCInt(IEnumerable<GL> igls, bool isGoal, bool isOriginal, ref GC gc)
        {
            ISet<GL> gls;
            if (!simplify(igls, out gls, ref isOriginal, ref isGoal))
            {
                if (gc != null && (gc.gls.Count > 1 || gc.gls.First().isTrue))
                {
                    clearOriginal(gc);
                    clearGoal(gc);
                    if (isAssumed(gc))
                        unAssumeGC(gc);
                    Debug.Assert(!isAssumed(gc));
                    removeTrueGC(gc);
                }
                gc = trueGC;
                return false;
            } else if (gls.Count == 0)
            {
                refute("False assumed");
                gc = falseGC;
                return true;
            } else
            {
                if (gc == null || !(gls.SetEquals(gc.gls)))
                {
                    var ogc = gc;
                    gc = makeGC(gls, isGoal);
                    if (ogc != null)
                        subsumeWithoutAssumeGC(gc, ogc);

                    if (isOriginal)
                        setOriginal(gc);
                }
                if (gc.Count == 1 && gc.gls.First().isEQOrDE)
                {
                    var ge = gc.gls.First();
                    if (ge.polarity)
                        assumeEQG(ge.gtT[0], ge.gtT[1]);
                    else
                        assumeGDE(ge.gtT[0], ge.gtT[1]);
                } else
                    assumeGCInt(gc);
                return true;
            }
        }

        private void removeTrueGC(GC gc)
        {
            clearOriginal(gc);
            clearGoal(gc);
            removeForeignCache(gc, gcFGCs, fgcCache);
            unembedGC(gc);
        }

        #endregion ground clause

        #region propagate
        private void propagateLoop(IEnumerable<GC> newGCs)
        {
#if DEBUG
            foreach (var gc in newGCs)
            {
                Debug.Assert(isTrue(gc));
                if (gc.gls.Count == 1)
                    Debug.Assert(isTrue(gc.gls[0]));
            }
#endif
            var todoGLs = new HashSet<GL>(from gc in newGCs where gc.gls.Count == 1 select gc.gls.First());
            var todoGCs = new HashSet<GC>(from gc in newGCs where gc.gls.Count > 1 select gc);

            while (todoGLs.Count > 0 || todoGCs.Count > 0)
            {
                while (todoGLs.Count > 0)
                {
                    var gl = todoGLs.First();
                    todoGLs.Remove(gl);
                    propagate(gl, todoGLs, todoGCs);
                    if (isRefuted)
                        return;
                }

                while (todoGCs.Count > 0 && todoGLs.Count == 0)
                {
                    var gc = todoGCs.First();
                    todoGCs.Remove(gc);
                    propagate(gc, todoGLs, todoGCs);
                    if (isRefuted)
                        return;
                }
            }
        }

        private void propagate(GC gc, ISet<GL> todoGLs, ISet<GC> todoGCs)
        {
            Debug.Assert(gc.gls.Count > 1);
            foreach (var ga in gc.gls)
            {
                foreach (var ogc in getGLLocalAssumedGCs(ga).ToList())
                    if (subsumes(gc, ogc))
                        subsumeWithoutAssumeGC(gc, ogc);

                foreach (var ofc in getGLLocalAssumedFCs(ga).ToList())
                    if (subsumes(gc, ofc))
                        subsumeAssumed(gc, ofc);

                var mgls = new HashSet<GL>(gc.gls.Except(new[] { ga }));
                foreach (var ogc in getGLLocalAssumedGCs(ga.gNegate).ToList())
                    if (ogc.gls.Count >= gc.gls.Count && mgls.IsSubsetOf(ogc.gls))
                    {
                        if (ogc.gls.Count == gc.gls.Count)
                        {//C\/A   !A\/C => C
                            var ngc = makeGC(mgls, isGoal(gc) || isGoal(ogc));
                            subsume(ngc, gc);
                            if (isRefuted)
                                return;
                            subsumeWithoutAssumeGC(ngc, ogc);
                            if (isRefuted)
                                return;
                            if (ngc.gls.Count == 1)
                            {
                                var ngl = ngc.gls[0];
                                Debug.Assert(isTrue(ngl));
                                todoGLs.Add(ngl);
                                //                                        todoGLs.Add(gc.gls.First());
                            } else
                                todoGCs.Add(ngc);
                            return;
                        } else
                        {//C\/A   !A\/C\/D=> C\/A  C\/D
                            var ngc = makeGC(ogc.gls.Except(new[] { ga.gNegate }), isGoal(ogc));
                            subsume(ngc, ogc);
                            if (isRefuted)
                                return;
                            todoGCs.Add(ngc);
                        }
                    }
                foreach (var ofc in getGLLocalAssumedFCs(ga.gNegate).ToList())
                    if (gc.gls.Count < ofc.ils.Count)
                    {
                        var ogas = new HashSet<GL>(from a in ofc.ils where a.isGround let oga = a as GL where oga != ga.gNegate select oga);
                        if (ogas.IsSupersetOf(mgls))
                            subsumeAssumed(gc, ofc);
                    }
            }


        }

        private void propagate(GL gl, ISet<GL> todoGLs, ISet<GC> todoGCs)
        {
            Debug.Assert(isTrue(gl));
            #region early out
            //todo check             Debug.Assert(!isTrue(ga.gNegate) || todoGAs.Contains(ga.gNegate));
            if (todoGLs.Contains(gl.gNegate))
            {
                refute(gl.ToStringB() + " is both true and false");
                return;
            }
            #endregion early out

            #region subsumption
            foreach (var gc in getGLLocalAssumedGCs(gl).ToList())
                if (gc.gls.Count > 1)
                    subsumeAssumed(gl, gc);
            foreach (var fc in getGLLocalAssumedFCs(gl).ToList())
                subsumeAssumed(gl, fc);
            #endregion subsumption

            #region unit clause propagation
            var notGL = gl.gNegate;
            #region ground
            foreach (var gc in getGLLocalAssumedGCs(notGL).ToList())
                if (allGCs.Contains(gc))
                {
                    Debug.Assert(allGCs.Contains(gc));
                    Debug.Assert(isAssumed(gc));
                    var gls = from gca in gc.gls where gca != notGL select gca;
                    var ngc = makeGC(gls, isGoal(gc));
                    subsume(ngc, gc);
                    if (isRefuted)
                        return;
                    if (gls.Count() == 1)
                    {
                        var ngl = gls.First();
                        Debug.Assert(isTrue(ngl));
                        todoGLs.Add(ngl);
                    } else
                        todoGCs.Add(ngc);
                }
            #endregion ground

            #region free
            foreach (var fc in getGLLocalAssumedFCs(notGL).ToList())
            {
                var ils = from il in fc.ils where il != notGL select il;
                var nfc = makeFC(ils);
                if (clearOriginal(fc))
                    setOriginal(nfc);
                if (clearImported(fc))
                    setImported(nfc);
                assumeFC(nfc);
                if (isRefuted)
                    return;
            }
            #endregion free
            #endregion unit clause propagation
        }
        #endregion propagate

        private void assumeGCInt(GC gc)
        {
            if (isAssumed(gc))
                return;
            if (gc.gls.Count == 1 && gc.gls.First().isEQOrDE)
            {
                var ge = gc.gls.First();
                assumeGEQDE(ge);
                return;
            }
            #region precondition
#if DEBUG
            Debug.Assert(gc.gls.Count > 0);
            Debug.Assert(gc.gls.Count > 1 || !gc.gls.First().isEQOrDE);
            foreach (var ga in gc.gls)
                if (ga.predicate.isEquality)
                    Debug.Assert(isSorted(ga.gtt.gtT[0], ga.gtt.gtT[1]));
            if (gcLogCond(this, gc))
                Debug.WriteLine("   {0,-14}assumeGC({1})", this, gc.ToStringB());
            if (gcBreakCond(this, gc))
                Debugger.Break();
#endif
            #endregion precondition

            assumeICIntCommon(gc);
            gcData[gc].setAssumed();
            revisionList.Last().addAssumedGC(gc);
            queues.enqueue(gc);
            if (gc.gls.Count == 1)
            {
                var gl = gc.gls.First();
                if (isGoal(gc))
                    addGoalRecursive(gl);
                assumeGLInt(gl);
            }
        }
        private void unAssumeGC(GC gc)
        {
            #region precondition
#if DEBUG
            Debug.Assert(!(gc.gls.Count == 1 && gc.gls.First().gaf == trueGAF));
            Debug.Assert(!isGoal(gc));
            Debug.Assert(!isOriginal(gc));
            if (gcLogCond(this, gc))
                Debug.WriteLine("   {0,-14}assume({1})", this, gc.ToStringB());
            if (gcBreakCond(this, gc))
                Debugger.Break();
#endif
            #endregion precondition
            unAssumeCommon(gc);
            gcData[gc].clearAssumed();
            queues.remove(gc);
            instantiationIndex.unindex(gc);
            spIndex.unindexGC(gc);
            gcData[gc].clearSPIndexed();
            spIndexedGCs.Remove(gc);
            gcData[gc].clearSPSat();
            spSaturatedGCs.Remove(gc);
            removeForeignCache(gc, gcFGCs, fgcCache);
        }
        private bool simplify(IEnumerable<GL> igls, out ISet<GL> gas, ref bool isOriginal, ref bool isGoal)
        {
            gas = new HashSet<GL>();
            foreach (var igl in igls)
                if (isTrue(igl))
                {
                    if (igls.Any(iga2 => this.isFalse(iga2) && this.isGoal(iga2.gNegate)))
                        isGoal = true;
                    if (igl.isEQOrDE)
                    {
                        if (isOriginal)
                        {
                            foreach (var gt in igl.gtt.gtT)
                                Debug.Assert(this.isOriginal(gt));
                        }
                        if (isGoal)
                        {
                            addGoalRecursive(igl.gtt.gtT[0]);
                            addGoalRecursive(igl.gtt.gtT[1]);
                        }

                    } else
                    {
                        if (isGoal)
                            addGoalRecursive(igl);
                    }
                    return false;
                } else if (igls.Contains(igl.gNegate))
                    return false;
                else if (!isFalse(igl))
                {
                    if (igl.isEQOrDE)
                    {
                        var gee = makeEEG(igl.gtt.gtT[0], igl.gtt.gtT[1], igl.polarity);
                        if (gas.Contains(gee.gNegate))
                            return false;
                        gas.Add(gee);
                    } else
                        gas.Add(igl);
                } else
                {
                    if (this.isGoal(igl.gNegate))
                        isGoal = true;
                }

            restart:;  //me: A \/ B \/ C, other A \/ B ==> discard me
            if (isSubsumed(gas, isOriginal, isGoal))
                return false;

            foreach (var ga in gas)
                foreach (var gc in getGLLocalAssumedGCs(ga.gNegate).ToList())
                { //me A \/ B \/ C, other !A \/ B \/ C ==> discard me, other, refine to B \/ C
                    if (canEliminate(gas, gc, ga))
                    {
                        gas.Remove(ga);
                        if (clearOriginal(gc))
                            isOriginal = true;
                        if (clearGoal(gc))
                            isGoal = true;
                        unAssumeGC(gc);
                        unembedGC(gc);
                        goto restart;
                    }
                }
            return true;
        }
        private bool doesSubsume(GC gc, ISet<GL> gas)
        {
            var i = 0;
            if (gc.gls.Count >= gas.Count)
                return false;
            foreach (var ga in gas)
            {
                var c = ga.CompareTo(gc.gls[i]);
                if (c == 0)
                {
                    i++;
                    if (i == gc.gls.Count)
                        return true;
                } else if (c > 0)
                    return false;
            }
            Debug.Assert(i < gc.gls.Count);
            return false;
        }
        private bool isSubsumed(ISet<GL> gas, bool isOriginal, bool isGoal)
        {
            foreach (var ga in gas)
                foreach (var gc in glData[ga].gcs)
                    if (gc.Count < gas.Count && isAssumed(gc) && gas.IsProperSupersetOf(gc.gls))
                    {
                        Debug.Assert(gas.IsProperSupersetOf(gc.gls));
                        if (isOriginal)
                            setOriginal(gc);
                        if (isGoal)
                            addGoalRecursive(gc);
                        return true;
                    }
            return false;
        }
        private bool canEliminate(ISet<GL> gas, GC gc, GL ga)
        {
            if (gas.Count != gc.Count)
                return false;
            var gs1 = new HashSet<GL>(gas);
            gs1.Remove(ga);
            var gs2 = new HashSet<GL>(gc.gls);
            gs2.Remove(ga.gNegate);
            Debug.Assert(gs1.Count == gs2.Count);
            return gs1.SetEquals(gs2);
        }
        #endregion ground clause

        #region free atom
        private void assumeInt(FL fl)
        {
            #region precondition
#if DEBUG
            Debug.Assert(!assumedFLsD.ContainsKey(fl.ToStringNN()));
#endif
            #endregion precondition

            assumedUFCs.Add(fl);
            assumedFLsD[fl.ToStringNN()] = fl;
            Debug.Assert(!fttData[fl.faf.ftt].assumedFLsByPredicate.ContainsKey(fl.faf.predicate));
            fttData[fl.faf.ftt].assumedFLsByPredicate[fl.faf.predicate] = fl;
        }
        protected void unAssumeInt(FL fl)
        {
            #region precondition
#if DEBUG
            Debug.Assert(isAssumed(fl));
            Debug.Assert(!fafData[fl.faf].allSFCs.Intersect(assumedFCs).Any());
#endif
            #endregion precondition
            assumedUFCs.Remove(fl);
            assumedFLsD.Remove(fl.ToStringNN());
            {
                FTTInfo ttI;
                if (fttData.TryGetValue(fl.faf.ftt, out ttI))
                {
                    Debug.Assert(ttI.assumedFLsByPredicate[fl.faf.predicate] == fl);
                    ttI.assumedFLsByPredicate.Remove(fl.faf.predicate);
                }
            }
        }
        #endregion free atom

        #region free clause
        public IC assumeFC(FC ofc)
        {
            if (isAssumed(ofc))
                return ofc;
            IC ic = subsumeAndSimplify(ofc);
            Debug.Assert(!ic.isFalse);
            if (ic.isTrue || ic.isFalse)
                return ic;
            if (ic.isGround)
                return assume(ic as GC);
            else
            {
                var fc = ic as FC;
                Debug.Assert(fc != null);
                if (!isAssumed(fc))
                    assumeInt(fc);
                return fc;
            }
        }
        private void assumeInt(FC fc)
        {
            if (assumedClauseKeysd.Contains(fc.ToStringNN()))
                return;
            assumedClauseKeysd.Add(fc.ToStringNN());
            #region debug
#if DEBUG
            if (fcLogCond(this, fc))
                Debug.WriteLine("   {0,-14}assumeFC({1})", this, fc.ToStringB());
#endif
            #endregion debug
            assumeICIntCommon(fc);
            fcData[fc].setAssumed();
            queues.enqueue(fc);
            if (fc.Count == 1)
            {
                var fl = fc.First() as FL;
                assumeInt(fl);
            }
        }
        protected void unAssume(FC fc)
        {
            #region preconditions
            Debug.Assert(isAssumed(fc));
#if DEBUG
            if (fcLogCond(this, fc))
                Debug.WriteLine("   {0,-14}unassumeFC({1})", this, fc.ToStringB());
#endif
            #endregion preconditions
            fcData[fc].clearAssumed();
            unAssumeCommon(fc);
            assumedClauseKeysd.Remove(fc.ToStringNN());
            queues.remove(fc);
            if (fc.Count == 1)
            {
                var fl = fc.First() as FL;
                unAssumeInt(fl);
            }
            instantiationIndex.unindex(fc);
            spIndex.unindexFC(fc);
            spIndexedFCs.Remove(fc);
        }
        private IC subsumeAndSimplify(FC ofc)
        {
            var ils = new HashSet<IL>();

            #region sub
            var varNEQAtoms = new HashSet<IL>(from il in ofc where il.isEQOrDE where !il.polarity where il.iaf.itt.All(t => t is FVT) select il);
            SubstitutionEC s;
            if (varNEQAtoms.Count > 0)
            {
                var varMap = new Dictionary<LVar, LVar>();
                foreach (var fne in varNEQAtoms)
                    addUFPair(varMap, fne.iaf.itt[0] as FVT, fne.iaf.itt[1] as FVT);
                s = new SubstitutionEC(this, false);
                foreach (var v in varMap.Keys)
                    s[v] = makeVT(getUF(varMap, v));
            } else
                s = null;

            //var varGTNEQAtoms = new HashSet<IL>(from il in ofc where il.isEQOrNE where !il.polarity where il.iaf.itt.Any(t => t is FVT) && il.iaf.itt.Any(t => t is GT) select il);
            //if (varGTNEQAtoms.Count>0)
            //{
            //    foreach (var fl in varGTNEQAtoms)
            //    {
            //        var vt = fl.iaf.itt[0].isGround ? fl.iaf.
            //    }

            //}

            #endregion sub

            IC ic;

            foreach (var il in ofc)
                if (isTrueCA(il))
                {
                    var lil = (il.isGround || il.isTrue) ? il : assumedFLsD[((il as FL).ToStringNN())];
                    ic = makeClause(new[] { lil }, false);
                    goto subs;

                } else if (ils.Contains(il.negate))
                {
                    ic = makeTrueClause();
                    goto subs;
                } else if (!isFalseCA(il) && !varNEQAtoms.Contains(il))
                    ils.Add((il.isGround || s == null) ? il : il.substitute(s));
            ic = makeClause(ils, false);
            subs:
            if (ic != ofc)
            {
                if (clearOriginal(ofc))
                    setOriginal(ic);
                if (clearImported(ofc) && !ic.isGround)
                    setImported(ic as FC);
            }

            foreach (var il in ic.ils)
                if (!il.isGround)
                {
                    var fl = il as FL;
                    foreach (var fc2 in fafData[fl.faf].flSFCs[fl.polarity].ToList())
                        if (fc2 != ic && fc2.ils.Count > ic.ils.Count && isAssumed(fc2) && ic.ils.All(fc2.ils.Contains))
                            unAssume(fc2);//subsume
                }
            return ic;
        }

        private LVar getUF(IDictionary<LVar, LVar> varMap, LVar v)
        {
            LVar t;
            while (varMap.TryGetValue(v, out t))
                v = t;
            return v;
        }

        private void addUFPair(IDictionary<LVar, LVar> varMap, FVT t1, FVT t2)
        {
            LVar l;
            var t1p = t1.variable;
            while (varMap.TryGetValue(t1p, out l))
                t1p = l;
            Debug.Assert(!varMap.ContainsKey(t1p));
            var t2p = t2.variable;
            while (varMap.TryGetValue(t2p, out l))
                t2p = l;
            Debug.Assert(!varMap.ContainsKey(t2p));
            var c = t1p.CompareTo(t2p);
            if (c > 0)
                varMap[t1p] = t2p;
            else
                if (c < 0)
                varMap[t2p] = t1p;
        }
        #endregion free clause

        #region any atom
        /*        protected void assume(IAtomEC a)
                {
                    if (a.isGround)
                        assume(a as GroundAtomEC);
                    else
                        assume(a as FreeAtomEC,false,false);
                }*/
        #endregion any atom

        #region any clause
        public IC assumeIC(IC c)
        {
            var gc = c as GC;
            if (gc != null)
                return assume(gc);
            else
                return assumeFC(c as FC);
        }
        private ISet<IC> spNewGenClauses = new HashSet<IC>();
        private ISet<IC> spPrevGenClauses = new HashSet<IC>();
        public bool isSPNewGen(IC ic) { return spNewGenClauses.Contains(ic); }
        private void nextSPGeneration()
        {
            spPrevIndex = null;

            spPrevGenClauses = spNewGenClauses;
            spNewGenClauses = new HashSet<IC>();
        }
        private ISet<IC> instNewGenClauses = new HashSet<IC>();
        public bool isInstNewGen(IC ic) { return instNewGenClauses.Contains(ic); }
        private void nextInstGeneration()
        {
            //            instPrevGenClauses = spNewGenClauses;
            instNewGenClauses = new HashSet<IC>();
        }
        private void assumeICIntCommon(IC ic)
        {
            #region precondition
            #endregion precondition
            spNewGenClauses.Add(ic);
            instNewGenClauses.Add(ic);
            assumedClauses.Add(ic);
        }
        private void unAssumeCommon(IC ic)
        {
            #region precondition
#if DEBUG
            Debug.Assert(assumedClauses.Contains(ic));
            Debug.Assert(!originalClauses.Contains(ic));
#endif
            #endregion precondition

            spNewGenClauses.Remove(ic);
            spPrevGenClauses.Remove(ic);
            assumedClauses.Remove(ic);
        }

        #endregion any clause

        #region subsumption
        private bool subsumes(GC gc1, GC gc2)
        {
            if (gc1.gls.Count >= gc2.gls.Count)
                return false;
            foreach (var ga in gc1.gls)
                if (!gc2.gls.Contains(ga))
                    return false;
            return true;
        }
        private bool subsumes(GC gc1, FC fc2)
        {
            if (gc1.Count() >= fc2.Count())
                return false;
            foreach (var ga in gc1.gls)
                if (!fc2.ils.Contains(ga))
                    return false;
            return true;
        }
        private bool subsumes(IL nuc, IL atom)
        {
            if (nuc.polarity != atom.polarity)
                return false;
            return subsumes(nuc.iaf, atom.iaf);
        }
        private bool subsumes(IAF super, IAF sub)
        {
            if (super.predicate != sub.predicate)
                return false;
            return subsumes(super.itt, sub.itt, new[] { new SubstitutionEC(this, false) }).Any();
        }
        private static IEnumerable<SubstitutionEC> subsumes(ITT super, ITT sub, IEnumerable<SubstitutionEC> ss)
        {
            var nss = ss;
            for (var i = 0; i < super.Count(); i++)
            {
                var i1 = i;
                nss = (from s in nss from ns in subsumes(super[i1], sub[i1], s) select ns).ToList();
            }

            return nss;

        }
        private static IEnumerable<SubstitutionEC> subsumes(IT super, IT sub, SubstitutionEC s)
        {
            if (super is GT)
                if (sub is GT)
                    if (super == sub)
                        return new[] { s };
                    else
                        return new SubstitutionEC[0];
                else
                    return new SubstitutionEC[0];

            if (super is FFA)
                if (sub is GT)
                {
                    var fa1 = super as FFA;
                    var gt2 = sub as GT;
                    if (gt2.gfasByFunction.ContainsKey(fa1.function))
                        return (from fa2 in gt2.gfasByFunction[fa1.function] from ss in subsumes(fa1.ftt, fa2.Value.gtt, new[] { s }) select ss).ToList();
                    else
                        return new SubstitutionEC[0];

                } else if (sub is FFA)
                {
                    var fa1 = super as FFA;
                    var fa2 = sub as FFA;
                    if (fa1.function == fa2.function)
                        return subsumes(fa1.ftt, fa2.ftt, new[] { s });
                    else
                        return new SubstitutionEC[0];
                } else
                    return new SubstitutionEC[0];

            var v1 = super as FVT;
            Debug.Assert(v1 != null);
            if (s.variables.Contains(v1.variable))
                return subsumes(s[v1.variable], sub, s);
            else if (sub is FVT && v1.variable.Equals((sub as FVT).variable))
                return new[] { s };
            else
                return new[] { s.add(v1.variable, sub) };
        }

        private void subsumeAssumed(GL gl, GC gc)
        {
            Debug.Assert(isTrue(gl));
            Debug.Assert(isAssumed(gc));
            Debug.Assert(gc.gls.Count > 1);
            subsumeWithoutAssume(gl, gc);
        }
        private void subsumeWithoutAssume(GL gl, GC gc)
        {
            subsumeWithoutAssumeGC(makeGC(gl), gc);
            /*            if (removeOriginal(gc))
                            addOriginal(gl);
                        if (removeGoal(gc))
                            addGoalRecursive(gl);
                        if (isAssumed(gc))
                            unAssume(gc);

                        ISet<GC> ofgcs;
                        if (gcFGCs.TryGetValue(gc, out ofgcs))
                        {
                            var trueGC = makeGC(true); //new[] { ga }, isGoal(ga));
                            gcFGCs.Remove(gc);
                            foreach (var fgc in ofgcs)
                            {
                                fgcCache[fgc].Remove(gc);
                                fgcCache[fgc].Add(trueGC);
                                gcFGCs.insert(trueGC, fgc);
                            }
                            if (trueGC != gc)
                                unembedGC(gc);
                        }else
                            unembedGC(gc);*/
        }
        private void subsume(GC gc1, GC gc2)
        {
            Debug.Assert(isAssumed(gc2));
            Debug.Assert(allGCs.Contains(gc2));
            if (gc1.isFalse)
            {
                refute(gc2.ToStringB() + " is false");
                return;
            }
            assumeGCInt(gc1);
            if (isRefuted)
                return;
            Debug.Assert(allGCs.Contains(gc2) || (gc1.gls.Count == 1 && gc1.gls.First().isEQOrDE));
            if (allGCs.Contains(gc2))
                subsumeWithoutAssumeGC(gc1, gc2);
        }
        private void subsumeWithoutAssumeGC(GC gc1, GC gc2)
        {
            #region preconditions
            //            Debug.Assert(isAssumed(gc1));
            if (!hasGC(gc2))
                return;
            Debug.Assert(allGCs.Contains(gc2));
            Debug.Assert(gc1.Count() < gc2.Count());
            Debug.Assert(!gc1.isFalse);
            #endregion preconditions

            if (clearGoal(gc2))
                addGoalRecursive(gc1);
            if (clearOriginal(gc2))
                setOriginal(gc1);

            ISet<GC> ofgcs;
            if (hasGC(gc2) && gcFGCs.TryGetValue(gc2, out ofgcs))
            {
                gcFGCs.Remove(gc2);
                foreach (var fgc in ofgcs)
                {
                    fgcCache[fgc].Remove(gc2);
                    fgcCache[fgc].Add(gc1);
                    gcFGCs.insert(gc1, fgc);
                }
            }

            if (isAssumed(gc2))
                unAssumeGC(gc2);
            unembedGC(gc2);
        }
        private void subsumeAssumed(GC gc, FC fc)
        {
            #region preconditions
            Debug.Assert(isAssumed(gc));
            Debug.Assert(gc.Count() < fc.Count());
            Debug.Assert(!gc.isFalse);
            #endregion preconditions

            if (clearOriginal(fc))
                setOriginal(gc);
            unAssume(fc);//subsume
            unembedFC(fc);
        }
        private void subsumeAssumed(GL gl, FC fc)
        {
            Debug.Assert(isTrue(gl));
            Debug.Assert(fc.Contains(gl));
            Debug.Assert(isAssumed(fc));
            if (clearOriginal(fc))
                setOriginal(makeGC(new[] { gl }));
            unAssume(fc);//subsume
            unembedFC(fc);
            queues.remove(fc);
        }
        #endregion subsumption

        #region path conditions
        private void addPathCondition(GL ga)
        {
            Debug.Assert(ga.gaf.gtt.Count() == 0);
            Debug.Assert(srs.isPathCondition(ga.gaf.predicate));
            Debug.Assert(!pathAtoms.Contains(ga.gNegate));
            if (!pathAtoms.Contains(ga))
                addedPathAtoms.Add(ga);
            pathAtoms.Add(ga);
        }
        #endregion path conditions

        #region non ground substitution
        private bool trySubstitute(IL il, SubstitutionEC s, out IL nil)
        {
            if (il.isGround)
            {
                nil = il;
                return true;
            }
            IAF ifa;
            if (trySubstitute(il.iaf, s, out ifa))
            {
                nil = ifa.il(il.polarity);
                if (nil.isGround && s.isGoal) //TODO - goal FLs,FCs?
                    addGoalRecursive(nil as GL);
                return true;
            } else
            {
                nil = null;
                return false;
            }
        }

        private bool trySubstitute(IAF iaf, SubstitutionEC s, out IAF niaf)
        {
            if (iaf.isGround)
            {
                niaf = iaf;
                return true;
            }
            IT[] itT;
            if (trySubstitute(iaf.itt, s, out itT))
            {
                niaf = (itT.All(it => it.isGround)) ?
                    (IAF)makeGAF(iaf.predicate, from it in itT select it as GT)
                        :
                    (IAF)makeFAF(iaf.predicate, makeFTT(itT));
                return true;
            } else
            {
                niaf = null;
                return false;
            }
        }
        private bool trySubstitute(IEnumerable<IT> its, SubstitutionEC s, out IT[] nits)
        {
            var itsA = its.ToArray();
            nits = new IT[its.Count()];
            for (var i = 0; i < its.Count(); i++)
                if (!trySubstitute(itsA[i], s, out nits[i]) || (nits[i].isGround && !inDepthBoundStrict(nits[i] as GT)))
                    return false;
            return true;
        }
        private bool trySubstitute(IT it, SubstitutionEC s, out IT nit)
        {
            nit = it as GT;
            if (nit != null)
                return true;
            var vt = it as FVT;
            if (vt != null)
            {
                nit = s.mapOr(vt);
                return true;
            } else return trySubstitute(it as FFA, s, out nit);
        }
        private bool trySubstitute(FFA ffa, SubstitutionEC s, out IT nit)
        {
            var n = ffa.ftt.Count;
            IT[] nitT;
            if (trySubstitute(ffa.ftt, s, out nitT))
            {
                nit = (nitT.All(it => it.isGround)) ?
                    (IT)makeGT(ffa.function, from it in nitT select it as GT)
                       :
                    (IT)makeFFA(ffa.function, makeFTT(nitT));
                return true;
            }
            nit = null;
            return false;
        }

        private bool tryMakeGT(Function f, GTT gtt, out GT gt)
        {
            GFA gfa;
            if (gttData[gtt].sgfas.TryGetValue(f, out gfa))
            {
                gt = gfa.gt;
                return true;
            } else if (gtt.gtT.All(sgt => gtDepth(sgt) < maxGTDepth))
            {
                gt = makeGT(f, gtt, false);
                markAdded(false);
                return true;
            }
            gt = null;
            return false;
        }
        #endregion non ground substitution

        #region substitution
        private IC trySubstitute(IC ic, GroundSubstitutionEC gs)
        {
            if (ic.isGround)
                return ic;
            var ilsS = new List<IL>();
            foreach (var il in ic.ils)
            {
                var ilS = trySubstitute(il, gs);
                if (ilS == null)
                    return null;
                ilsS.Add(ilS);
            }
            return makeIC(ilsS);
        }
        private IL trySubstitute(IL il, GroundSubstitutionEC gs)
        {
            var ittS = trySubstitute(il.itt, gs);
            if (ittS == null)
                return null;
            return makeIL(il.pp, ittS);
        }
        private ITT trySubstitute(ITT itt, GroundSubstitutionEC gs)
        {
            if (itt.isGround)
                return itt;
            var itTS = new List<IT>();
            foreach (var it in itt.itT)
            {
                var itS = trySubstitute(it, gs);
                if (itS == null || !inDepthBoundStrict(itS))
                    return null;
                itTS.Add(itS);
            }
            return makeITT(itTS);
        }
        private IT trySubstitute(IT it, GroundSubstitutionEC gs)
        {
            if (it.isGround)
                return it;
            {
                var fvt = it as FVT;
                GT gt;
                if (fvt != null)
                    if (gs.map.TryGetValue(fvt.variable, out gt))
                        return gt;
                    else
                        return fvt;
            }
            var ffa = it as FFA;
            var ittS = trySubstitute(ffa.ftt, gs);
            if (ittS == null || !inDepthBoundStrict(ittS))
                return null;
            return makeIT(ffa.function, ittS, false);
        }

        private bool trySubstitute(IC c, GroundSubstitutionEC gs, out GC gc)
        {
            gc = c as GC;
            if (gc != null)
                return true;
            Debug.Assert(c.freeVariables.IsSubsetOf(gs.map.Keys));
            var gas = new GL[c.Count()];
            for (var i = 0; i < c.Count(); i++)
            {
                var a = c[i];
                if (!trySubstitute(a, gs, out gas[i]))
                    return false;
            }
            gc = makeGC(gas, gs.isGoal);
            return true;
        }
        private bool trySubstitute(IL l, GroundSubstitutionEC gs, out GL ga)
        {
            ga = l as GL;
            if (ga != null)
                return true;
            GAF gfa;
            if (trySubstitute(l.iaf, gs, out gfa))
            {
                ga = gfa.gLiteral(l.polarity);
                if (gs.isGoal)
                    addGoalRecursive(ga);
                return true;
            } else
                return false;
        }
        private bool trySubstitute(IAF af, GroundSubstitutionEC gs, out GAF gaf)
        {
            gaf = af as GAF;
            if (gaf != null)
                return true;
            GT[] gts;
            if (trySubstitute(af.itt, gs, out gts))
            {
                gaf = makeGAF(af.predicate, gts);
                return true;
            } else
                return false;
        }
        private bool trySubstitute(IEnumerable<IT> ts, GroundSubstitutionEC gs, out GT[] gts)
        {
            var tsA = ts.ToArray();
            gts = new GT[ts.Count()];
            for (var i = 0; i < ts.Count(); i++)
                if (!trySubstitute(tsA[i], gs, out gts[i]) || !inDepthBoundStrict(gts[i]))
                    return false;
            return true;
        }
        private bool trySubstitute(IT t, GroundSubstitutionEC gs, out GT gt)
        {
            gt = t as GT;
            if (gt != null)
                return true;
            var vt = t as FVT;
            if (vt != null)
            {
                gt = gs.map[vt.variable];
                return true;
            } else
            {
                var fa = t as FFA;
                GT[] gtT;
                if (trySubstitute(fa.ftt, gs, out gtT))
                {
                    gt = makeGT(fa.function, gtT);
                    markAdded(false);
                    return true;
                }
                /*
                                GTT gtt;
                                if (trySubstitute(fa.ftt, gs, out gtt))
                                {
                                    GFA gfa;
                                    if (gttData[gtt].sgfas.TryGetValue(fa.function, out gfa))
                                    {
                                        gt = gfa.gt;
                                        return true;
                                    }
                                    else if (gtt.gts.All(sgt => gtRadius(sgt) < maxGTRadius))
                                    {
                                        gt = makeGT(fa.function, gtt, false);
                                        markAdded(false);
                                        return true;
                                    }
                                }*/
            }
            return false;
        }
        #endregion substitution

        #region saturation
        private static int lastcyclecount = 0;
        public static void printStatusIf(Universe u, String status, bool start)
        {
            if (u.index >= -74)
            {
                var delta = 0;
                if (start)
                    lastcyclecount = Environment.TickCount;
                else
                    delta = Environment.TickCount - lastcyclecount;


                Debug.WriteLine("{0,3}.{1,5} {2,5}{3,5}   {4}", u.index, status, start ? "start" : "end", start ? "" : (": " + delta.ToString()), u.statString);
                //                Console.WriteLine("{0,3}.{1,5} {2,5}{3,5}   {4}", u.index, status, start ? "start" : "end", start ? "" : (": " + delta.ToString()), u.statString);
                if (u.index == 74)
                {
                    Debug.WriteLine("   Stat{0}.{1}", u.index, u.statString);
                    //                    Console.WriteLine("{0,3}.{1,5} {2,5}{3,5}   {4}", u.index, status, start ? "start" : "end", start ? "" : (": " + delta.ToString()), u.statString);
                }
            }
        }
        protected abstract void synchronizeWithPredecessors(bool satEqs);
        internal void synchronize(bool satEqualities)
        {
            try
            {
                #region debug
#if DEBUG
                printStatusIf(this, "sync", true);
#endif
                #endregion debug

                #region setup
                prepareCachesForSync();
                addRevision();
                Debug.Assert(!isRefuted);
                markAdded(false);
                #endregion setup

                #region sync
                synchronizeWithPredecessors(satEqualities);
                markAdded(false);
                setGoalsPredecessorRecursive(goalGCs, goalGLs, goalGTs);
                lastMergeRevision = currentRevision;
                addRevision();
                #region consistency
#if DEBUG
                Debug.Assert(sourcesComplete());
                queues.checkECs();
                Debug.Assert(instantiationCachesComplete());
                Debug.Assert(goalsComplete());
                Debug.Assert(depthInvariant());
#endif
                #endregion consistency
                #endregion sync
                Debug.Assert(invariant());
                #region debug
#if DEBUG
                printStatusIf(this, "sync", false);
#endif
                #endregion debug
            } catch (RefuteException) { }
        }

        private void prepareCachesForSync()
        {
            instantiationIndex.markIncomplete();
        }
        public bool assertGASubsumes()
        {
            return true;
            //TODO - expensive
            /*#if DEBUG
                        if (isRefuted)
                            return;
                        foreach (var gc in assumedGCs)
                            foreach (var ga in gc.gLiterals)
                            {
                                if (!(ga.isEQOrNE))
                                    Debug.Assert(!isTrue(ga) && !isFalse(ga));
                                if (ga.isEQOrNE)
                                    Debug.Assert(isSorted(ga.gtt.gTerms[0], ga.gtt.gTerms[1]));
                                var s = new HashSet<GL>(gc.gLiterals);
                                foreach (var ogc in glData[ga].gcs)
                                    if (isAssumed(ogc))
                                        Debug.Assert(!s.IsProperSupersetOf(ogc.gLiterals));

                            }
            #endif*/
        }
        public bool isKeyNode = false;
        internal void saturate(bool equalities, bool nonequalities)
        {
            #region precondition
#if DEBUG
            Debug.Assert(instantiationCachesComplete());
            Debug.Assert(goalsComplete());
            //            Debug.Assert(sourcesComplete());
            Debug.Assert(depthInvariant());
            foreach (var gt in instantiationIndex.allGTs)
                Debug.Assert(upToDateGTMM(gt));
            foreach (var gt in addedGTs)
                Debug.Assert(upToDateGTMM(gt));
            queues.checkECs();
#endif
            #endregion precondition
            try
            {
                addRevision();

                var iterationsLeft = 1;
                while (
                    !isRefuted &&
                    (
                        (nonequalities && (queues.AnyNonEq))
                        || (equalities && queues.AnyEq)
                    )
                    && iterationsLeft > 0)
                {
                    #region consistency
#if DEBUG
                    Debug.Assert(goalsComplete());
                    foreach (var gt in instantiationIndex.allGTs)
                        Debug.Assert(upToDateGTMM(gt));
                    foreach (var gt in addedGTs)
                        Debug.Assert(upToDateGTMM(gt));
                    queues.checkECs();
                    Debug.Assert(depthInvariant());
#endif
                    #endregion consistency

                    #region non equality
                    if (nonequalities)
                    {
                        saturateNonEqualityOnce();
                        if (isRefuted)
                            return;
                        cleanupInt();
                    }
                    #endregion non equality

                    #region equality
                    while (!isRefuted && equalities && queues.hasEquivalenceClasses)
                        mergeOnce();

                    if (isRefuted)
                        return;

                    #region consistency
#if DEBUG
                    Debug.Assert(depthInvariant());
                    foreach (var gt in instantiationIndex.allGTs)
                        Debug.Assert(upToDateGTMM(gt));

                    foreach (var gls in assumedGLsByPP)
                        foreach (var gl in gls.Value)
                        {
                            Debug.Assert(gttData[gl.gaf.gtt].assumedGLsByPredicate[gl.predicate] == gl);
                            Debug.Assert(upToDateGTTMM(gl.gaf.gtt));
                        }

#endif
                    #endregion consistency
                    #endregion equality

                    iterationsLeft--;
                }//main loop
                if (isRefuted)
                    return;
                addRevision();

                cleanupFluff();
                cleanupInt(true);

                #region postcondition
#if DEBUG
                Debug.Assert(depthInvariant());
                assertOriginalsHold();
                Debug.Assert(sourcesComplete());
                Debug.Assert(invariant());
#endif
                #endregion postcondition
            } catch (RefuteException) { }
        }

        #region superposition
        public interface SPE
        {
            IEnumerable<IL> ils { get; }

            string kind { get; }
        }
        public abstract class SPLeft : SPE
        {
            public abstract IT1 l { get; }
            public abstract IT r { get; }
            public abstract IEnumerable<IL> ils { get; }
            public override string ToString()
            {
                return l.ToString() + " -> " + r.ToString();
            }
            public abstract string kind { get; }
        }
        public abstract class SPRight : SPE
        {
            public abstract IFA lp { get; }
            public abstract IEnumerable<IL> ils { get; }
            public abstract string kind { get; }
        }
        public abstract class SPA : SPRight
        {
            public abstract IL A { get; }
        }
        public abstract class SPST : SPRight
        {
            public abstract ITITPos itp { get; }
            public abstract IT s { get; }
            public abstract IT t { get; }
            public override string ToString()
            {
                return s.ToString() + "[" + lp.ToString() + "]_" + itp.ToString() + " = " + t.ToString();
            }
        }
        interface SPGLR
        {
            GFA lG { get; }
            GT rG { get; }
        }
        public class SPGTLR : SPLeft, SPGLR
        {
            private static IL[] pils = new IL[0];
            public readonly GT gt;
            private readonly int gfai, minGFAi;

            public override IT1 l { get { return lGFA; } }
            public override IT r { get { return rG; } }
            public GFA lGFA { get { return gt.gfas[gfai]; } }
            public GFA lG { get { return lGFA; } }
            public GT rG { get { return gt; } }
            public GFA rGFA { get { return gt.gfas[minGFAi]; } }
            public override IEnumerable<IL> ils { get { return pils; } }

            public SPGTLR(GT gt, int gfai, int minGFAi)
            {
                this.gt = gt;
                this.gfai = gfai;
                this.minGFAi = minGFAi;
            }

            public override string ToString()
            {
                return lGFA.ToString() + " -> " + rGFA.ToString();
            }
            public override string kind { get { return "GT"; } }
        }
        public class SPGCLR : SPLeft, SPGLR
        {
            public readonly GC gc;
            public readonly int gli;
            public readonly int gti, minGFAi;

            public GL gl { get { return gc.gls[gli]; } }
            public override IT1 l { get { return lG; } }
            public override IT r { get { return rG; } }
            public GFA lG { get { return lGT.gfas[minGFAi]; } }
            public GT lGT { get { return gl.gtt.gtT[gti]; } }
            public GT rG { get { return gl.gtt.gtT[1 - gti]; } }
            public override IEnumerable<IL> ils { get { return gc.gls.Except(gl); } }

            public SPGCLR(GC gc, int gli, int gti, int minGFAi)
            {
                this.gc = gc;
                this.gli = gli;
                this.gti = gti;
                this.minGFAi = minGFAi;
            }

            public override string ToString()
            {
                return base.ToString() + " : " + gc.ToString();
            }
            public override string kind { get { return "GC"; } }
        }
        interface SPGST
        {
            GFA lpG { get; }
            GT sG { get; }
        }
        public class SPGCST : SPA, SPGST
        {
            public SPGCST(GC gc, GCGTPos gcp, int minGFAi)
            {
                this.gc = gc;
                this.gcp = gcp;
                this.minGFAi = minGFAi;
            }
            public override IL A { get { return gl; } }
            public GC gc { get; private set; }
            public GCGTPos gcp { get; private set; }
            public int minGFAi { get; private set; }
            public GLGTPos glp { get { return gcp.glPos; } }
            public GTGTPos gtp { get { return glp.gtp; } }
            public GL gl { get { return gc.gls[gcp.gli]; } }
            public GT sG { get { return gl.gtt.gtT[glp.gti]; } }
            public int gli { get { return gcp.gli; } }
            public GT lpGT { get { return getAt(sG, gtp); } }
            public GFA lpG { get { return lpGT.gfas[minGFAi]; } }
            public override IFA lp { get { return lpG; } }

            public IEnumerable<GL> gls { get { return gc.gls.Except(gl); } }
            public override IEnumerable<IL> ils { get { return gls; } }

            public override string ToString()
            {
                return gc.ToString() + "[" + gcp.ToString() + "]";
            }
            public string ToStringN()
            {
                return gc.ToStringN() + "[" + gcp.ToStringN() + "]";
            }
            public override string kind { get { return "GC"; } }
        }
        public class SPGTST : SPST, SPGST
        {
            private static IL[] pils = new IL[0];
            public SPGTST(GT gt, GTGTPos1 gtp, int minGFAi)
            {
                this.gt = gt;
                this.gtp = gtp;
                this.minGFAi = minGFAi;
            }
            public GT gt { get; private set; }
            public GT sG { get { return gt; } }
            public GTGTPos1 gtp { get; private set; }
            public int minGFAi { get; private set; }
            public GT lpGT { get { return getAt(gt, gtp); } }
            public GFA lpG { get { return lpGT.gfas[minGFAi]; } }
            public override IFA lp { get { return lpG; } }
            public override ITITPos itp { get { return gtp; } }
            public override IT s { get { return gt; } }
            public override IT t { get { return gt; } }
            public override IEnumerable<IL> ils { get { return pils; } }

            public string ToStringN()
            {
                return gt.ToStringN() + "[" + gtp.ToStringN() + "]";
            }
            public override string kind { get { return "GT"; } }
        }
        public class SPFCST : SPA
        {
            public readonly FC fc;
            public readonly FCITPos fcitp;
            public readonly int minGFAi;
            public int ili { get { return fcitp.ili; } }
            public IL il { get { return fc.ils[ili]; } }
            public override IL A { get { return il; } }
            public IT lpIT { get { return getAt(il, fcitp.ilp); } }
            public IFA lpI { get { return lpIT.toIFA(minGFAi); } }
            public override IFA lp { get { return lpI; } }
            public override IEnumerable<IL> ils { get { return fc.ils.Except(il); } }
            public SPFCST(FC fc, FCITPos fcitp, int minGFAi)
            {
                this.fc = fc;
                this.fcitp = fcitp;
                this.minGFAi = minGFAi;
            }
            public override string ToString()
            {
                return fc.ToStringB() + "[" + fcitp.ToString() + "]";
            }
            public override string kind { get { return "FC"; } }
        }
        public class SPFCLR : SPLeft
        {
            public readonly FC fc;
            public readonly int ili;
            public readonly int iti;
            public readonly int minGFAi;
            public IL il { get { return fc.ils[ili]; } }
            public override IT1 l { get { return lI.toIT1(minGFAi); } }
            public override IT r { get { return il.itt[1 - iti]; } }
            public IT lI { get { return il.itt[iti]; } }
            public override IEnumerable<IL> ils { get { return fc.ils.Except(il); } }

            public SPFCLR(FC fc, int ili, int iti, int minGFAi)
            {
                this.fc = fc;
                this.ili = ili;
                this.iti = iti;
                this.minGFAi = minGFAi;
                Debug.Assert(il.isEQOrDE);
                Debug.Assert(il.polarity);
            }
            public override string ToString()
            {
                return l.ToString() + " -> " + r.ToString() + " : " + fc.ToString();
            }
            public override string kind { get { return "FC"; } }

        }


        class SPIndex
        {
            public SPIndex(Universe u)
            {
                this.u = u;
            }
            private readonly Universe u;
            private TermRepository tr { get { return u.termRepository; } }

            #region add remove clauses
            public void indexGT(GT gt)
            {
                if (gt.gfas.Length > 1)
                {
                    var mingfai = tr.getGTMinGFAi(gt);

                    #region st (rhs)
                    var gtps = tr.getGTSTPositions(gt);// tr.getGTL1Positions(gt);
                    Debug.Assert(gtps.All(gtp => gtp.gfai != mingfai));
                    foreach (var gtp in gtps)
                    {
                        var gLP = getAt(gt, gtp);
                        spgtstIndex.insert(gLP, gt, new SPGTST(gt, gtp, tr.getGTMinGFAi(gLP)));
                    }
                    #endregion st (rhs)

                    #region lr (lhs)
                    for (var gfai = 0; gfai < gt.gfas.Length; gfai++)
                        if (gfai != mingfai)
                        {
                            var gfa = gt.gfas[gfai];
                            spgtlrIndex.insert(gfa.function, gt, new SPGTLR(gt, gfai, tr.getGTMinGFAi(gt)));
                        }
                    #endregion lr (lhs)
                }
            }
            public void unindexGT(GT gt)
            {
                if (gt.gfas.Length > 1)
                {
                    var mingfai = tr.getGTMinGFAi(gt);

                    #region st (rhs)
                    var gtps = tr.getGTSTPositions(gt);// tr.getGTL1Positions(gt);
                    Debug.Assert(gtps.All(gtp => gtp.gfai != mingfai));
                    foreach (var gtp in gtps)
                    {
                        var igt = getAt(gt, gtp);
                        spgtstIndex.remove(igt, gt);
                    }
                    #endregion st (rhs)

                    #region lr (lhs)
                    for (var gfai = 0; gfai < gt.gfas.Length; gfai++)
                        if (gfai != mingfai)
                        {
                            var gfa = gt.gfas[gfai];
                            spgtlrIndex.remove(gfa.function, gt);
                        }
                    #endregion lr (lhs)
                }
            }
            public void indexGC(GC gc)
            {
                #region debug
                Debug.Assert(gc.gls.Count > 0);
#if DEBUG
                if (gcBreakCond(u, gc))
                    Debugger.Break();
#endif
                #endregion debug
                var gli = tr.gcMaximalGL(gc);
                var gl = gc.gls[gli];
                glGCResolutionIndex.insert(gl, gc);

                indexGCST(gc, gli);
                if (gl.isEQOrDE && gl.polarity)
                    indexGCLR(gc, gli);
            }
            public void unindexGC(GC gc)
            {
#if DEBUG
                if (gcLogCond(u, gc))
                    Debug.WriteLine("   {0,-14}unindexSP({1})", this, gc.ToStringB());
#endif
                var gli = tr.gcMaximalGL(gc);
                var gl = gc.gls[gli];
                glGCResolutionIndex.remove(gl, gc);

                unindexGCST(gc, gli);
                if (gl.isEQOrDE && gl.polarity)
                    unindexGCLR(gc, gli);
            }
            private int getMaxGTI(GTT gtt)
            {
                Debug.Assert(gtt.gtT.Count == 2);
                var gt1 = gtt.gtT[0];
                var gt2 = gtt.gtT[1];
                Debug.Assert(gt1 != gt2);
                var c = tr.compare(gt1, gt2);
                Debug.Assert(c != 0);
                var gti = (c > 0) ? 0 : 1;
                return gti;
            }
            private void indexGCLR(GC gc, int gli)
            {
                Debug.Assert(gc.gls.Count > 1);
                var gl = gc.gls[gli];
                Debug.Assert(gl.isEQOrDE);
                var gtt = gl.gtt;
                var gti = getMaxGTI(gtt);
                var gt = gtt.gtT[gti];
                spgclrIndex.insert(gt, gc, new SPGCLR(gc, gli, gti, tr.getGTMinGFAi(gt)));
            }
            private void unindexGCLR(GC gc, int gli)
            {
                Debug.Assert(gc.gls.Count > 1);
                var gl = gc.gls[gli];
                Debug.Assert(gl.isEQOrDE);
                var gtt = gl.gtt;
                var gti = getMaxGTI(gtt);
                var gt = gtt.gtT[gti];
                spgclrIndex.remove(gt, gc);
            }
            private void indexGCST(GC gc, int gli)
            {
                var gl = gc.gls[gli];
                if (gl.isEQOrDE)
                {
                    var gtt = gl.gtt;
                    var gti = getMaxGTI(gtt);
                    var gt = gtt.gtT[gti];
                    var gtposs = tr.getGTPositions(gtt.gtT[gti]);
                    foreach (var gtpos in gtposs)
                    {
                        var gt1 = getAt(gt, gtpos);
                        var gsplp = new SPGCST(gc, tr.makeGCGTPos(gli, tr.makeGLGTPos(gti, gtpos)), tr.getGTMinGFAi(gt1));
                        Debug.Assert(gsplp.lpG.gt == gt1);
                        spgcstIndex.insert(gt1, gc, gsplp);
                    }
                } else
                {
                    var gpaPositions = tr.getGPAPositions(gl);
                    foreach (var gpaPos in gpaPositions)
                    {
                        var gt = getAt(gl, gpaPos);
                        var gcst = new SPGCST(gc, tr.makeGCGTPos(gli, gpaPos), tr.getGTMinGFAi(gt));
                        Debug.Assert(gcst.lpG.gt == gt);
                        spgcstIndex.insert(gt, gc, gcst);
                    }
                }
            }
            private void unindexGCST(GC gc, int gli)
            {
                var gl = gc.gls[gli];
                if (gl.isEQOrDE)
                {
                    var gtt = gl.gtt;
                    var gti = getMaxGTI(gtt);
                    var gt = gtt.gtT[gti];
                    var gtposs = tr.getGTPositions(gtt.gtT[gti]);
                    foreach (var gtpos in gtposs)
                    {
                        var gt1 = getAt(gt, gtpos);
                        spgcstIndex.remove(gt1, gc);
                    }
                } else
                {
                    var gpaPositions = tr.getGPAPositions(gl);
                    foreach (var gpaPos in gpaPositions)
                        spgcstIndex.remove(getAt(gl, gpaPos), gc);
                }
            }

            public void indexFC(FC fc)
            {
                if (!indexedFCs.Add(fc))
                    return;
                Debug.Assert(fc.ils.Count > 0);
                var maxILIs = tr.fcMaximalILIs(fc);
                Debug.Assert(maxILIs.Count > 0);

                Debug.Assert(!fclrMap.ContainsKey(fc));
                #region debug
#if DEBUG
                if (fcLogCond(u, fc))
                    Debug.WriteLine("   {0,-14}indexSPFC({1})", this, fc.ToStringB());
                //                if (fc.ToString().Contains(@"-1*Seq@Length$Int$"))
                //                    Debugger.Break();
#endif
                #endregion debug
                foreach (var ili in maxILIs)
                {
                    var il = fc.ils[ili];
                    if (il.isEQOrDE)
                    {
                        if (il.polarity)
                            indexFCLR(fc, ili);
                        indexFLEQNEQ(fc, ili);
                    } else
                        indexFLP(fc, ili);

                    indexFCLRes(fc, ili);
                }
            }
            public void unindexFC(FC fc)
            {
                if (!indexedFCs.Remove(fc))
                    return;
#if DEBUG
                if (fcLogCond(u, fc))
                    Debug.WriteLine("   {0,-14}unindexSPFC({1})", this, fc.ToStringB());
#endif
                Debug.Assert(fc.ils.Count > 0);
                var maxILIs = tr.fcMaximalILIs(fc);
                Debug.Assert(maxILIs.Count > 0);
                foreach (var ili in maxILIs)
                {
                    var il = fc.ils[ili];
                    if (il.isEQOrDE)
                    {
                        if (il.polarity)
                            unindexFCLR(fc, ili);
                        unindexFLEQNEQ(fc, ili);
                    } else
                        unindexFLP(fc, ili);
                    unindexFCLRes(fc, ili);
                }
            }

            private void indexFCLRes(FC fc, int ili)
            {
                var iresp = new FCL(fc, ili);
                spfAMap.insert(iresp.pp, fc, iresp);
            }
            private void unindexFCLRes(FC fc, int ili)
            {
                var pp = fc.ils[ili].pp;
                spfAMap[pp].Remove(fc);
            }
            private void indexFLP(FC fc, int ili)
            {
                Debug.Assert(!fc.ils[ili].isEQOrDE);
                var il = fc.ils[ili];
                var ilps = tr.getIPANVPositions(il);
                foreach (var ilp in ilps)
                {
                    var it = getAt(il, ilp);
                    var fcp = tr.makeFCITPos(ili, ilp);
                    //                    var lfss = Universe.lfss(it);
                    //                    foreach (var f in lfss)
                    var lfs = spLFS(it);
                    if (lfs != null)
                        lfsToFCToSPFCST.insert(lfs, fc, new SPFCST(fc, fcp, it.isGround ? tr.getGTMinGFAi(it as GT) : -1));
                }
            }
            private void unindexFLP(FC fc, int ili)
            {
                Debug.Assert(!fc.ils[ili].isEQOrDE);
                var il = fc.ils[ili];
                var ilps = tr.getIPANVPositions(il);
                foreach (var ilp in ilps)
                {
                    var it = getAt(il, ilp);
                    var fcp = tr.makeFCITPos(ili, ilp);
                    //                    var lfss = Universe.lfss(it);
                    //                    foreach (var f in lfss)
                    var lfs = spLFS(it);
                    if (lfs != null)
                        lfsToFCToSPFCST[lfs].Remove(fc);
                }
            }
            private void indexFLEQNEQ(FC fc, int ili)
            {
                int c = compareFLEQNEQ(fc, ili);
                if (c == 2 || c == -2 || c == 1)
                    indexFLEQNEQFT(fc, ili, 0);
                if (c == 2 || c == -2 || c == -1)
                    indexFLEQNEQFT(fc, ili, 1);
            }

            private int compareFLEQNEQ(FC fc, int ili)
            {
                Debug.Assert(fc.ils[ili].isEQOrDE);
                var il = fc.ils[ili];
                var it0 = il.itt[0];
                var it1 = il.itt[1];
                var c = tr.compare(it0, it1);
                Debug.Assert(c != 0);
                return c;
            }

            private void unindexFLEQNEQ(FC fc, int ili)
            {
                int c = compareFLEQNEQ(fc, ili);
                if (c == 2 || c == -2 || c == 1)
                    unindexFLEQNEQFT(fc, ili, 0);
                if (c == 2 || c == -2 || c == -1)
                    unindexFLEQNEQFT(fc, ili, 1);
            }
            private void indexFLEQNEQFT(FC fc, int ili, int iti)
            {
                var it = fc.ils[ili].itt[iti];
                if (it is FVT)
                    return;
                var itps = tr.getITNVPositions(it);
                foreach (var itp in itps)
                {
                    var sit = getAt(it, itp);
                    var flp = tr.makeFLITPos(iti, itp);
                    var fcp = tr.makeFCITPos(ili, flp);
                    var lfs = spLFS(sit); //Universe.lfss(sit);
                    if (lfs != null)
                        //                    foreach (var f in lfss)
                        lfsToFCToSPFCST.insert(lfs, fc, new SPFCST(fc, fcp, sit.isGround ? tr.getGTMinGFAi(sit as GT) : -1));
                }
            }
            private void unindexFLEQNEQFT(FC fc, int ili, int iti)
            {
                var it = fc.ils[ili].itt[iti];
                if (it is FVT)
                    return;
                var itps = tr.getITNVPositions(it);
                foreach (var itp in itps)
                {
                    var sit = getAt(it, itp);
                    var lfs = spLFS(sit);
                    //                        var lfss = Universe.lfss(sit);
                    //                    foreach (var f in lfss)
                    if (lfs != null)
                        lfsToFCToSPFCST[lfs].Remove(fc);
                }
            }

            private void indexFCLR(FC fc, int ili)
            {
                foreach (var i in fclrITs(fc, ili))
                    insertFCLR(fc, ili, i);
            }
            private void unindexFCLR(FC fc, int ili)
            {
                foreach (var i in fclrITs(fc, ili))
                    removeFCLR(fc, ili, i);
            }
            private IEnumerable<int> fclrITs(FC fc, int ili)
            {
                var il = fc.ils[ili];
                Debug.Assert(il.isEQOrDE);
                Debug.Assert(il.polarity);
                var it0 = il.itt[0];
                var it1 = il.itt[1];
                var cts = tr.compare(it0, it1);
                Debug.Assert(cts != 0);
                Debug.Assert(cts <= 2);
                Debug.Assert(cts >= -2);
                Debug.Assert(cts <= 2);
                Debug.Assert(cts >= -2);
                var result = new List<int>();
                if (cts == 2 || cts == 1 || cts == -2)
                    result.Add(0);
                if (cts == 2 || cts == -1 || cts == -2)
                    result.Add(1);
                return result;
            }
            private void insertFCLR(FC fc, int ili, int i)
            {
                var il = fc.ils[ili];
                var it = il.itT[i];
                var fclr = new SPFCLR(fc, ili, i, it.isGround ? tr.getGTMinGFAi(it as GT) : -1);
                fclrMap.insert(fc, fclr);
                var lfs = spLFS(fclr.lI);
                if (lfs != null)
                    lfsToFCLRMap.insert(lfs, fc);
                //                foreach (var f in fclr.l.lfss)
            }
            private Function spLFS(IT it)
            {
                if (it is GT) return spLFSs(it as GT);
                if (it is FVT) return null;
                return (it as FFA).function;
            }
            private Function spLFSs(GT gt) { return gt.gfas[tr.getGTMinGFAi(gt)].function; }

            private void removeFCLR(FC fc, int ili, int i)
            {
                fclrMap.Remove(fc);
                var l = fc.ils[ili].itt[i];
                var lfs = spLFS(l);
                if (lfs != null)
                    lfsToFCLRMap.remove(lfs, fc);
                //                foreach (var f in l.lfss)
                //                    lfsToFCLRMap.remove(f, fc);
            }

            private readonly IDictionary<GL, ISet<GC>> glGCResolutionIndex = new Dictionary<GL, ISet<GC>>();
            private readonly IDictionary<PP, IDictionary<FC, IList<FCL>>> spfAMap = new Dictionary<PP, IDictionary<FC, IList<FCL>>>();
            private readonly IDictionary<FC, IList<SPFCLR>> fclrMap = new Dictionary<FC, IList<SPFCLR>>();
            private readonly IDictionary<Function, ISet<FC>> lfsToFCLRMap = new Dictionary<Function, ISet<FC>>();
            private readonly IDictionary<Function, IDictionary<FC, IList<SPFCST>>> lfsToFCToSPFCST = new Dictionary<Function, IDictionary<FC, IList<SPFCST>>>();
            private readonly ISet<FC> indexedFCs = new HashSet<FC>();
            private readonly IDictionary<GT, IDictionary<GC, SPGCST>> spgcstIndex = new Dictionary<GT, IDictionary<GC, SPGCST>>();
            private readonly IDictionary<GT, IDictionary<GC, SPGCLR>> spgclrIndex = new Dictionary<GT, IDictionary<GC, SPGCLR>>();
            private readonly IDictionary<GT, IDictionary<GT, SPGTST>> spgtstIndex = new Dictionary<GT, IDictionary<GT, SPGTST>>();
            private readonly IDictionary<Function, IDictionary<GT, IList<SPGTLR>>> spgtlrIndex = new Dictionary<Function, IDictionary<GT, IList<SPGTLR>>>();
            #endregion add remove clauses

            public IEnumerable<GL> allGLGCResolvents { get { return glGCResolutionIndex.Keys; } }
            public IEnumerable<FCL> allFCLs
            {
                get
                {
                    return
                        from kv1 in spfAMap
                        from kv2 in kv1.Value
                        from fcl in kv2.Value
                        select fcl;
                }
            }
            public ISet<GC> glGCs(GL gl) { return glGCResolutionIndex.tryGet(gl); }
            public IEnumerable<SPGCST> getGCSTs(GT gt)
            {
                return spgcstIndex.getValues(gt);
            }
            public IList<SPFCLR> allFCLRs { get { return (from kv in fclrMap from fclr in kv.Value select fclr).ToList(); } }
            public IList<SPFCST> allFCSTs { get { return (from kv in lfsToFCToSPFCST from fcsts in kv.Value.Values from fcst in fcsts select fcst).ToList(); } }
            public IList<FCL> iresps { get { return (from kv in spfAMap from kv2 in kv.Value from v3 in kv2.Value select v3).ToList(); } }
            internal IEnumerable<SPGTST> potentialGTSTMatches(SPFCLR fclr)
            {
                var result = new List<SPGTST>();
                var gts = new HashSet<GT>();
                if (fclr.lI is FVT)
                    gts.UnionWith(u.typeToGTsMap.getOrEmpty(fclr.lI.type).Except(u.spSaturatedGTs));
                else
                    gts.UnionWith(from gt in u.lfsToGTMap.getOrEmpty((fclr.l as IFA).function) where !u.spSaturatedGTs.Contains(gt) select gt);


                foreach (var gt in gts)
                {
                    IDictionary<GT, SPGTST> l;
                    if (spgtstIndex.TryGetValue(gt, out l))
                        result.AddRange(l.Values);
                }
                return result;
            }
            internal IEnumerable<SPFCST> potentialFCSTMatches(SPLeft spl)
            {
                var result = new List<SPFCST>();
                var ifa = spl.l as IFA;
                if (ifa != null)
                {
                    var f = ifa.function;
                    IDictionary<FC, IList<SPFCST>> e;
                    if (lfsToFCToSPFCST.TryGetValue(f, out e))
                        result.AddRange(from kv in e from p in kv.Value select p);
                }
                return result;
            }
            internal IEnumerable<SPFCST> potentialMatchesFCST(Function f, bool axioms)
            {
                var result = new List<SPFCST>();
                IDictionary<FC, IList<SPFCST>> e;
                if (lfsToFCToSPFCST.TryGetValue(f, out e))
                    result.AddRange(from kv in e where axioms || !u.isAxiom(kv.Key) from p in kv.Value select p);
                return result;
            }
            internal IEnumerable<FCL> potentialFCLMatches(PP pp, GTT gtt) //ignores GTT for now
            {
                var result = new List<FCL>();
                IDictionary<FC, IList<FCL>> e;
                if (spfAMap.TryGetValue(pp.n, out e))
                    foreach (var kv in e)
                        result.AddRange(kv.Value);
                return result;
            }
            internal IEnumerable<FC> glrPotentialFCSTAxiomMatches(Universe fu, IEnumerable<GFA> lGs)
            {
                var result = new List<FC>();
                var lfsToGFAMap = new Dictionary<Function, IList<GFA>>();
                foreach (var lG in lGs)
                    lfsToGFAMap.insert(lG.function, lG);
                foreach (var kv in lfsToGFAMap)
                {
                    var f = kv.Key;
                    var ffgfas = kv.Value;
                    IDictionary<FC, IList<SPFCST>> e;
                    if (lfsToFCToSPFCST.TryGetValue(f, out e))
                        foreach (var kv2 in e)
                        {
                            var fc = kv2.Key;
                            if (u.canExportAxiomSP(fc))
                                foreach (var fsplp in kv2.Value)
                                    foreach (var fgfa in ffgfas)
                                        if (fu.potentiallyUnifiableSP(fgfa.gt, fsplp.lpI))
                                        {
                                            result.Add(fc);
                                            goto nextFC;
                                        }
                            nextFC:;
                        }
                }
                return result;
            }
            internal IEnumerable<FC> gstPotentialFCLRAxiomMatches(Universe fu, IEnumerable<GFA> lpGs)
            {
                var result = new List<FC>();
                foreach (var lpG in lpGs)
                {
                    var f = lpG.function;
                    foreach (var fc in lfsToFCLRMap.getOrEmpty(f))
                        if (u.canExportAxiomSP(fc) && !result.Contains(fc))
                            foreach (var fclr in fclrMap[fc])
                                if (fu.potentiallyUnifiableSP(lpG.gt, fclr.lI))
                                {
                                    result.Add(fc);
                                    break;
                                }
                }
                return result;
            }
            internal IEnumerable<FC> gAPotentialFCBAxiomMatches(Universe fu, IEnumerable<GL> AGs)
            {
                var result = new HashSet<FC>();
                foreach (var AG in AGs)
                {
                    IDictionary<FC, IList<FCL>> e;
                    if (spfAMap.TryGetValue(AG.pp.n, out e))
                        foreach (var kv in e)
                        {
                            var fc = kv.Key;
                            if (u.canExportAxiomSP(fc) && !result.Contains(kv.Key))
                                if (kv.Value.Any(fcl => fu.potentiallyResolvableSP(AG, fcl.il)))
                                    result.Add(kv.Key);
                        }
                }
                return result;
            }

            /*            internal IEnumerable<FC> potentialFCSTMatchesF(Universe fu, IEnumerable<GFA> fgfas)
                        {
                            var result = new List<FC>();
                            foreach (var gfa in fgfas)
                            {
                                var f = gfa.function;
                                IDictionary<FC, IList<SPFCST>> e;
                                if (fcPAPoss.TryGetValue(f, out e))
                                    foreach (var kv in e)
                                    {
                                        foreach (var fsplp in kv.Value)
                                            if (fu.potentiallyUnifiable(gfa, fsplp.lpI))
                                            {
                                                result.Add(kv.Key);
                                                break;
                                            }
                                    }
                            }
                            return result;
                        }*/
            /*internal IEnumerable<FC> getPotentialFCSTMatches(Universe fu,IEnumerable<GT> fgts)
            {
                var result = new List<FC>();
                foreach (var gt in fgts)
                    foreach (var f in gt.gfasByFunction.Keys)
                    {
                        IDictionary<FC, IList<SPFCST>> e;
                        if (fcPAPoss.TryGetValue(f, out e))
                            foreach (var kv in e)
                            {
                                foreach (var fsplp in kv.Value)
                                    if (fu.potentiallyUnifiable(gt, fsplp.lpI))
                                    {
                                        result.Add(kv.Key);
                                        break;
                                    }
                            }
                    }
                return result;
            }*/
            public IEnumerable<SPGCLR> allGCLRs
            {
                get
                {
                    return (from kv in spgclrIndex from e in kv.Value select e.Value).ToList();
                }
            }
            public IEnumerable<SPGTLR> allGTLRs
            {
                get
                {
                    return (from kv in spgtlrIndex from e in kv.Value from gtlr in e.Value select gtlr).ToList();
                }
            }
            public IEnumerable<SPGCST> allGCSTs { get { return (from kv in spgcstIndex from gcst in kv.Value select gcst.Value).ToList(); } }
            public IEnumerable<SPGTST> allGTSTs { get { return (from kv in spgtstIndex from gtst in kv.Value select gtst.Value).ToList(); } }
            public GCsAndFCsAndGTs potentialGLRExportMatches(IDictionary<Function, SPRequestElement> LMap, IEnumerable<IType> lTypes)
            {
                var fcs = new HashSet<FC>();
                var gcs = new HashSet<GC>();
                var gts = new HashSet<GT>();
                var lpGTs = new HashSet<GT>();
                foreach (var kv in LMap)
                {
                    var f = kv.Key;
                    var e = kv.Value;
                    #region gL x [gLP]
                    lpGTs.UnionWith(from gtt in e.gtts
                                    let gttd = u.gttData[gtt]
                                    where gttd.sgfas.ContainsKey(kv.Key)
                                    select gttd.sgfas[kv.Key].gt);
                    #endregion
                    #region gL x [fLP]
                    if (u != u.initialUniverse)
                        fcs.UnionWith(
                           from spfcst in potentialMatchesFCST(f, false)
                           let fc = spfcst.fc
                           where u.canExportRecSP(fc)
                           let it = spfcst.lpIT
                           where u.spMatches(it, f, e.glfstts)
                           select fc);
                    #endregion
                    #region fL x [gLP]
                    lpGTs.UnionWith(
                        from lpgt in u.lfsToGTMap.getOrEmpty(f)
                        where u.spMatches(lpgt, f, e.flfstts)
                        select lpgt
                        );
                    #endregion
                }
                #region types
                lpGTs.UnionWith(from t in lTypes from gt in u.typeToGTsMap.getOrEmpty(t) select gt);
                #endregion
                #region gcLPs
                gcs.UnionWith(
                    from gt in lpGTs
                    from gcst in getGCSTs(gt)
                    let gc = gcst.gc
                    where u.canExportRecSP(gc)
                    select gc
                );
                #endregion
                #region gtLPs
                gts.UnionWith(
                    from lgt in lpGTs
                    from gtst in getGTSTs(lgt)
                    let gt = gtst.sG
                    select gt);
                #endregion
                var r = new GCsAndFCsAndGTs(gcs, fcs, gts);
                return r;
            }
            public GCsAndFCsAndGTs potentialGSTExportMatches(IDictionary<Function, SPRequestElement> LPMap)
            {
                var fcs = new HashSet<FC>();
                var gcs = new HashSet<GC>();
                var gts = new HashSet<GT>();
                var gLs = new HashSet<GT>();
                foreach (var kv in LPMap)
                {
                    var f = kv.Key;
                    var e = kv.Value;
                    #region [gL] x gLP
                    gLs.UnionWith(from gtt in e.gtts
                                  let gttd = u.gttData[gtt]
                                  where gttd.sgfas.ContainsKey(kv.Key)
                                  select gttd.sgfas[kv.Key].gt);
                    #endregion
                    #region [fL] x gLP
                    if (u != u.initialUniverse)
                        fcs.UnionWith(
                           from fc in lfsToFCLRMap.getOrEmpty(f)
                           where u.canExportRecSP(fc)
                           from fclr in fclrMap[fc]
                           let it = fclr.lI
                           where u.spMatches(it, f, e.glfstts)
                           select fc);
                    #endregion
                    #region [gL] x fLP
                    gLs.UnionWith(
                        from lgt in u.lfsToGTMap.getOrEmpty(f)
                        where u.spMatches(lgt, f, e.flfstts)
                        select lgt
                        );
                    #endregion
                }
                #region gcLRs
                gcs.UnionWith(
                    from gL in gLs
                    from gc in spgclrIndex.getOrEmpty(gL).Keys
                    where u.canExportRecSP(gc)
                    select gc
                );
                #endregion
                #region gtLRs
                gts.UnionWith(
                    from lgt in gLs
                    from gt in spgtlrIndex.getOrEmpty(lgt.gfas[tr.getGTMinGFAi(lgt)].function).Keys
                    select gt);
                #endregion
                var r = new GCsAndFCsAndGTs(gcs, fcs, gts);
                return r;
            }
            public GCsAndFCsAndGTs potentialGLExportMatches(IDictionary<PP, SPRequestElement> AMap)
            {
                var gcs = new HashSet<GC>();
                var fcs = new HashSet<FC>();
                var gtts = new HashSet<GTT>();
                foreach (var kv in AMap)
                {
                    #region gL x [gL]
                    gtts.UnionWith(kv.Value.gtts);
                    #endregion
                    #region fL x [gL]
                    gtts.UnionWith(
                        from flfstt in kv.Value.flfstts
                        from gtt in u.spMatchingGTTs(flfstt)
                        select gtt);
                    #endregion
                    #region gL x [fL]
                    if (u != u.initialUniverse)
                        fcs.UnionWith(
                            from glfstt in kv.Value.glfstts
                            from kv2 in spfAMap.getOrEmpty(kv.Key.n)
                            let fc = kv2.Key
                            where u.canExportRecSP(fc)
                            where kv2.Value.Any(fcl => u.spMatches(fcl.il.itt, glfstt))
                            select fc
                        );
                    #endregion
                    #region GCs
                    gcs.UnionWith(
                        from gtt in gtts
                        let gttd = u.gttData[gtt]
                        where gttd.sgafs.ContainsKey(kv.Key.predicate)
                        let gl = gttd.sgafs[kv.Key.predicate].gLiteral(!kv.Key.polarity)
                        from gc in glGCs(gl)
                        where u.canExportRecSP(gc)
                        select gc
                    );
                    #endregion
                }
                return new GCsAndFCsAndGTs(gcs, fcs, new GT[0]);
            }

            public IEnumerable<SPGTST> getGTSTs(GT gt)
            {
                IDictionary<GT, SPGTST> r;
                if (spgtstIndex.TryGetValue(gt, out r))
                    return r.Values;
                else
                    return new SPGTST[0];
            }

            internal IEnumerable<FC> lookupAxioms(Universe fu, SPAxiomReq req)
            {
                var fcs = new HashSet<FC>();
                fcs.UnionWith(glrPotentialFCSTAxiomMatches(fu, req.gLs));
                fcs.UnionWith(gstPotentialFCLRAxiomMatches(fu, req.gLPs));
                fcs.UnionWith(gAPotentialFCBAxiomMatches(fu, req.gAs));
                /*                fcs.UnionWith(potentialMatchesF(from gspl in gspls select gspl.lGT));
                                fcs.UnionWith(potentialFCLRMatchesF(u, from gst in gsts from gfa in gst.lpG.gfas select gfa));
                                fcs.UnionWith(potentialFCLRMatchesF(u, from gcst in gcsts from gfa in gcst.lpG.gfas select gfa));*/
                return fcs;
            }

            internal GCsAndFCsAndGTs export(SPDAGImportRequest1 req)
            {
                var r = new GCsAndFCsAndGTs();
                r.add(potentialGLRExportMatches(req.tLs, req.types));
                r.add(potentialGSTExportMatches(req.tLPs));
                r.add(potentialGLExportMatches(req.lAs));
                return r;
            }
        }
        public class ICL
        {
            public readonly IC ic;
            public readonly int ili;
            public IL il { get { return ic.ils[ili]; } }
            public IPredicate predicate { get { return il.predicate; } }
            public PP pp { get { return il.pp; } }
            public ICL(IC ic, int ili)
            {
                this.ic = ic;
                this.ili = ili;
            }
        }
        public sealed class FCL
        {
            public readonly FC fc;
            public readonly int ili;
            public IL il { get { return fc.ils[ili]; } }
            public IPredicate predicate { get { return il.predicate; } }
            public PP pp { get { return il.pp; } }
            public FCL(FC fc, int ili)
            {
                this.fc = fc;
                this.ili = ili;
            }
            public override int GetHashCode()
            {
                return fc.GetHashCode() + ili;
            }
            public override bool Equals(object obj)
            {
                var o = obj as FCL;
                return o != null && ReferenceEquals(fc, o.fc) && ili == o.ili;
            }
            public override string ToString()
            {
                return fc.ToStringB() + "[" + ili + "]";
            }
        }
        public sealed class FCLT
        {
            public FCLT(FC fc, int ili, int iti)
            {
                this.fc = fc;
                this.ili = ili;
                this.iti = iti;
            }
            public readonly FC fc;
            public readonly int ili;
            public readonly int iti;
            public IT it { get { return il.itt[iti]; } }
            public IL il { get { return fc.ils[ili]; } }
            public IPredicate predicate { get { return il.predicate; } }
            public PP pp { get { return il.pp; } }
            public override int GetHashCode()
            {
                return fc.GetHashCode() + iti + ili;
            }
            public override bool Equals(object obj)
            {
                var o = obj as FCLT;
                return o != null && ReferenceEquals(fc, o.fc) && ili == o.ili && iti == o.iti;
            }
            public override string ToString()
            {
                return fc.ToStringB() + "[" + ili + "][" + iti + "]";
            }
        }
        public sealed class GCL
        {
            public readonly GC gc;
            public readonly int gli;
            public GL gl { get { return gc.gls[gli]; } }
            public IPredicate predicate { get { return gl.predicate; } }
            public PP pp { get { return gl.pp; } }
            public GCL(GC gc, int gli)
            {
                this.gc = gc;
                this.gli = gli;
            }
            public override int GetHashCode()
            {
                return gc.GetHashCode() + gli;
            }
            public override bool Equals(object obj)
            {
                var o = obj as GCL;
                return o != null && ReferenceEquals(gc, o.gc) && gli == o.gli;
            }
            public override string ToString()
            {
                return gc.ToStringB() + "[" + gli + "]";
            }
        }
        private readonly SPIndex spIndex;
        private SPIndex spPrevIndex = null;

        private readonly ISet<GT> spIndexedGTs = new HashSet<GT>();
        private readonly ISet<GC> spIndexedGCs = new HashSet<GC>();
        private readonly ISet<FC> spIndexedFCs = new HashSet<FC>();

        public class OAEC<O> where O : IOperator
        {
            public OAEC(O op, ISet<GT>[] gtSets, ISet<Function>[] lfsSets)
            {
                Debug.Assert(gtSets.Length == lfsSets.Length);
                this.op = op;
                this.gtSets = gtSets;
                this.lfsSets = lfsSets;
            }
            public virtual void unionWith(OAEC<O> o)
            {
                Debug.Assert(ReferenceEquals(op, o.op));
                Debug.Assert(o.gtSets.Length == gtSets.Length);
                for (var i = 0; i < n; i++)
                {
                    gtSets[i].UnionWith(o.gtSets[i]);
                    lfsSets[i].UnionWith(o.lfsSets[i]);
                }
            }
            public int n { get { return gtSets.Length; } }
            public readonly ISet<GT>[] gtSets;
            public readonly ISet<Function>[] lfsSets;
            public O op;
        }
        public class SPRequestElement
        {
            public ISet<GTT> gtts = new HashSet<GTT>();
            public ISet<LFSTT> glfstts = new HashSet<LFSTT>();
            public ISet<LFSTT> flfstts = new HashSet<LFSTT>();

            internal void add(SPRequestElement b)
            {
                gtts.UnionWith(b.gtts);
                glfstts.UnionWith(b.glfstts);
                flfstts.UnionWith(b.flfstts);
            }

            internal void addG(GTT gtt, LFSTT lfstt)
            {
                gtts.Add(gtt);
                glfstts.Add(lfstt);
            }
        }
        public class SPDAGImportRequest1
        {
            public SPDAGImportRequest1(
                IDictionary<Function, SPRequestElement> tLs,
                IDictionary<Function, SPRequestElement> tLPs,
                IDictionary<PP, SPRequestElement> lAs,
                ISet<IType> types
                )
            {
                this.tLs = tLs;
                this.tLPs = tLPs;
                this.lAs = lAs;
                this.types = types;
            }

            public void add(SPDAGImportRequest1 ospr)
            {
                add(tLs, ospr.tLs);
                add(tLPs, ospr.tLPs);
                add(lAs, ospr.lAs);
                types.UnionWith(ospr.types);
            }
            public static void add<O>(IDictionary<O, SPRequestElement> l, IDictionary<O, SPRequestElement> r)
            {
                foreach (var kv in r)
                    l.getOrAdd(kv.Key).add(kv.Value);
            }


            public readonly IDictionary<Function, SPRequestElement> tLs;
            public readonly IDictionary<Function, SPRequestElement> tLPs;
            public readonly IDictionary<PP, SPRequestElement> lAs;
            public readonly ISet<IType> types;
        }
        public class SPDAGImportRequest
        {
            public SPDAGImportRequest(Universe u, SPDAGImportRequest1 oldReq, SPDAGImportRequest1 newReq)
            {
                this.universe = u;
                this.oldReq = oldReq;
                this.newReq = newReq;
            }
            public readonly SPDAGImportRequest1 oldReq;
            public readonly SPDAGImportRequest1 newReq;
            public readonly Universe universe;
            public IList<SPDAGImportRequest> down()
            {
                return universe.spImportDown(this);
            }

            public void up()
            {
                universe.spImportUp(this);
            }

            internal void add(SPDAGImportRequest spr)
            {
                oldReq.add(spr.oldReq);
                newReq.add(spr.newReq);
            }
        }
        public virtual IList<SPDAGImportRequest> spImportDown(SPDAGImportRequest spr)
        {
            var r = new List<SPDAGImportRequest>();
            return r;
        }

        public virtual void spImportUp(SPDAGImportRequest spr)
        {
        }
        public SPDAGImportRequest spMakePredecessorRequest(int pi, SPDAGImportRequest spr)
        {
            return new SPDAGImportRequest(
                spr.universe.pus[pi],
                spMakePredecessorRequest1(spr.universe, pi, spr.oldReq),
                spMakePredecessorRequest1(spr.universe, pi, spr.newReq));
        }
        public SPDAGImportRequest1 spMakePredecessorRequest1(Universe u, int pi, SPDAGImportRequest1 spr)
        {
            var pu = u.pus[pi];

            var tLs = spMakePredRequest(u, pi, spr.tLs);
            var tLPs = spMakePredRequest(u, pi, spr.tLPs);
            var lAs = spMakePredRequest(u, pi, spr.lAs);

            return new SPDAGImportRequest1(tLs, tLPs, lAs, spr.types);
        }
        private IDictionary<O, SPRequestElement> spMakePredRequest<O>(Universe u, int pi, IDictionary<O, SPRequestElement> m)
        {
            var r = new Dictionary<O, SPRequestElement>();
            var pu = u.pus[pi];
            foreach (var kv in m)
            {
                var se = kv.Value;
                var e = new SPRequestElement();
                e.gtts.UnionWith(from gtt in se.gtts from pgtt in u.getGTTPGTTs(pi, gtt) select pgtt);
                e.glfstts.UnionWith(e.glfstts);
                e.flfstts.UnionWith(e.flfstts);
                if (e.gtts.Count + e.glfstts.Count + e.flfstts.Count > 0)
                    r[kv.Key] = e;
            }
            return r;
        }

        public class GCsAndFCsAndGTs
        {
            public GCsAndFCsAndGTs(IEnumerable<GC> gcs, IEnumerable<FC> fcs, IEnumerable<GT> gts)
                : this()
            {
                this.gcs.UnionWith(gcs);
                this.fcs.UnionWith(fcs);
                this.gts.UnionWith(gts);
            }
            public GCsAndFCsAndGTs() { }

            public readonly ISet<GT> gts = new HashSet<GT>();
            public readonly ISet<GC> gcs = new HashSet<GC>();
            public readonly ISet<FC> fcs = new HashSet<FC>();
            public void add(GCsAndFCsAndGTs o)
            {
                gcs.UnionWith(o.gcs);
                fcs.UnionWith(o.fcs);
                gts.UnionWith(o.gts);
            }
        }

        public GCsAndFCsAndGTs spFindMatches(SPDAGImportRequest spr)
        {
            var r = new GCsAndFCsAndGTs();
            if (spr != null)
            {
                r.add(spIndex.export(spr.newReq));
                r.add(spPrevIndex.export(spr.oldReq));
                r.add(spPrevIndex.export(spr.newReq));
            }
            Debug.Assert(r.gcs.All(canExportRecSP));
            Debug.Assert(r.fcs.All(canExportRecSP));
            return r;
        }

        class SPAxiomReq1
        {
            public readonly IList<GL> gAs = new List<GL>();
            public readonly IList<FL> fAs = new List<FL>();
            public readonly IList<SPGLR> glrs = new List<SPGLR>();
            public readonly IList<SPGST> gsts = new List<SPGST>();
            public readonly IList<SPFCLR> flrs = new List<SPFCLR>();
            public readonly IList<SPFCST> fsts = new List<SPFCST>();
        }
        class SPAxiomReq
        {
            public readonly ISet<GL> gAs = new HashSet<GL>();
            public readonly ISet<GFA> gLs = new HashSet<GFA>();
            public readonly ISet<GFA> gLPs = new HashSet<GFA>();
        }
        private void spIndexAndImport()
        {
#if DEBUG
            var preFCs = assumedFCs.Count();
#endif
            #region index fc+gc+gt
            spIndexAll();
            //            initialUniverse.spIndexFCs();
            #endregion index fc+gc+gt

            #region import
            var satReq = new SPAxiomReq1();
            var unsatReq = new SPAxiomReq1();
            #region GT x fc
            if (gtfcSuperpositionKnob)
                foreach (var gtlr in spIndex.allGTLRs)
                    if (isSPSaturated(gtlr.gt))
                        satReq.glrs.Add(gtlr);
                    else
                        unsatReq.glrs.Add(gtlr);
            #endregion GT x fc
            #region fc+gc x GT
            if (gcgtSuperpositionKnob || fcgtSuperpositionKnob)
                foreach (var gtsp in spIndex.allGTSTs)
                    if (isSPSaturated(gtsp.gt))
                        satReq.gsts.Add(gtsp);
                    else
                        unsatReq.gsts.Add(gtsp);
            #endregion fc+gc x GT
            #region GC x fc+gc+gt
            if (gcfcSuperpositionKnob || gcgcSuperpositionKnob || gcgtSuperpositionKnob)
                foreach (var gclr in spIndex.allGCLRs)
                    if (isSPSaturated(gclr.gc))
                        satReq.glrs.Add(gclr);
                    else
                        unsatReq.glrs.Add(gclr);//UnionWith(from gfa in gclr.lGT.gfas select gfa);
            #endregion GC x fc+gt+gc
            #region fc+gc x GC
            if (fcgcSuperpositionKnob || gcgcSuperpositionKnob)
                foreach (var gcst in spIndex.allGCSTs)
                    if (isSPSaturated(gcst.gc))
                        satReq.gsts.Add(gcst);
                    else
                        unsatReq.gsts.Add(gcst);
            //allGLRMap.add(from gfa in gclr.lGT.gfas select gfa.b);
            #endregion fc+gc x GC
            #region gt+gc x FC
            if (gtfcSuperpositionKnob || gcfcSuperpositionKnob)
                foreach (var fcst in spIndex.allFCSTs)
                    if (isSPSaturated(fcst.fc))
                        satReq.fsts.Add(fcst);
                    else
                        unsatReq.fsts.Add(fcst);
            #endregion gt+gc x FC
            #region FC x gt+gc
            if (fcgtSuperpositionKnob || fcgcSuperpositionKnob)
                foreach (var fclr in spIndex.allFCLRs)
                    if (isSPSaturated(fclr.fc))
                        satReq.flrs.Add(fclr);
                    else
                        unsatReq.flrs.Add(fclr);
            #endregion FC x gt+gc
            #region res: GC x fc+gc
            if (gcfcResolutionKnob || gcgcResolutionKnob)
                foreach (var gl in spIndex.allGLGCResolvents)
                    if (spIndex.glGCs(gl).All(gc => spSaturatedGCs.Contains(gc)))
                        satReq.gAs.Add(gl);
                    else
                        unsatReq.gAs.Add(gl);
            #endregion res: GC x fc+gc
            #region res: gc x FC
            if (gcfcResolutionKnob)
                foreach (var fcl in spIndex.allFCLs)
                    if (fcl.il.isGround)
                    {
                        var gl = fcl.il as GL;
                        if (isSPSaturated(fcl.fc))
                            satReq.gAs.Add(gl);
                        else
                            unsatReq.gAs.Add(gl);
                    } else
                    {
                        var fl = fcl.il as FL;
                        if (isSPSaturated(fcl.fc))
                            satReq.fAs.Add(fl);
                        else
                            unsatReq.fAs.Add(fl);
                    }
            #endregion res: gc x FC
            #region debug
#if DEBUG
            var postFCs = assumedFCs.Count();
            Debug.WriteLine("   {0,3}.importSpRec  ({1,3})", index, postFCs - preFCs);
#endif
            #endregion debug

            importSPAxioms(satReq, unsatReq);
            var spImportRequest = spMakeDAGRequest(satReq, unsatReq); //new SPDAGImportRequest(this, allGLRMap, allGSTMap, allGResMap);
            importSPDAG(spImportRequest);
            #region debug
#if DEBUG
            var postFCs2 = assumedFCs.Count();
            Debug.WriteLine("   {0,3}.importSpAxiom({1,3})", index, postFCs2 - postFCs);
#endif
            #endregion
            #endregion import

            #region index new fc+gc+gt
            spIndexAll();
            #endregion new index fc+gc+gt
        }

        private SPDAGImportRequest spMakeDAGRequest(SPAxiomReq1 oldReqA, SPAxiomReq1 newReqA)
        {
            var oldReq = spMakeDAGRequest1(oldReqA);
            var newReq = spMakeDAGRequest1(newReqA);
            return new SPDAGImportRequest(this, oldReq, newReq);
        }

        private SPDAGImportRequest1 spMakeDAGRequest1(SPAxiomReq1 reqA)
        {
            var tLs = new Dictionary<Function, SPRequestElement>();
            var types = new HashSet<IType>();
            foreach (var glr in reqA.glrs)
                tLs.getOrAdd(glr.lG.function).addG(glr.lG.gtt, spGetLFSTT(glr.lG.gtt));
            foreach (var flr in reqA.flrs)
            {
                var ifa = flr.l as IFA;
                if (ifa != null)
                    tLs.getOrAdd(ifa.function).flfstts.Add(spGetLFSTT(ifa.itt));
                else
                    types.Add(flr.l.type);
            }
            var tLPs = new Dictionary<Function, SPRequestElement>();
            foreach (var gst in reqA.gsts)
                foreach (var gfa in gst.lpG.gfaECs)
                    tLPs.getOrAdd(gfa.function).addG(gfa.gtt, spGetLFSTT(gfa.gtt));
            foreach (var fst in reqA.fsts)
                tLPs.getOrAdd(fst.lp.function).flfstts.Add(spGetLFSTT(fst.lp.itt));
            var lAs = new Dictionary<PP, SPRequestElement>();
            foreach (var gA in reqA.gAs)
                lAs.getOrAdd(gA.pp).addG(gA.gtt, spGetLFSTT(gA.gtt));
            foreach (var fA in reqA.fAs)
                lAs.getOrAdd(fA.pp).flfstts.Add(spGetLFSTT(fA.ftt));
            return new SPDAGImportRequest1(tLs, tLPs, lAs, types);
        }

        private LFSTT spGetLFSTT(GTT gtt)
        {
            return new LFSTT(from gt in gtt.gtT select spGetLFS(gt));
        }
        private LFSTT spGetLFSTT(ITT itt)
        {
            return new LFSTT(from it in itt.itT select spGetLFS(it));
        }

        private Function spGetLFS(IT it)
        {
            if (it.isGround)
                return spGetLFS(it as GT);
            var ffa = it as FFA;
            if (ffa != null)
                return ffa.function;
            else
                return null;
        }
        private Function spGetLFS(GT gt)
        {
            return gt.gfas[termRepository.getGTMinGFAi(gt)].function;
        }

        private void importSPAxioms(SPAxiomReq1 oldReq1, SPAxiomReq1 newReq1)
        {
            if (this == initialUniverse)
                return;
            var newReq = new SPAxiomReq();
            foreach (var glr in newReq1.glrs)
                newReq.gLs.Add(glr.lG);// UnionWith(glr.lG.gfaECs);
            foreach (var gst in newReq1.gsts)
                newReq.gLPs.Add(gst.lpG);// UnionWith(gst.lpG.gfaECs);
            foreach (var gA in newReq1.gAs)
                newReq.gAs.Add(gA);
            var oldReq = new SPAxiomReq();
            foreach (var glr in oldReq1.glrs)
                if (!newReq.gLs.Contains(glr.lG))
                    oldReq.gLs.Add(glr.lG);
            foreach (var gst in oldReq1.gsts)
                if (!newReq.gLPs.Contains(gst.lpG))
                    oldReq.gLPs.Add(gst.lpG);
            foreach (var gA in oldReq1.gAs)
                if (!newReq.gAs.Contains(gA))
                    oldReq.gAs.Add(gA);


            var ffcs = initialUniverse.exportSPAxioms(this, oldReq, newReq);
            importAxiomFFCs(ffcs);
        }
        private IEnumerable<FC> exportSPAxioms(Universe fu, SPAxiomReq satReq, SPAxiomReq unsatReq)
        {
            Debug.Assert(this == initialUniverse);
            Debug.Assert(fu != this);
            if (spPrevIndex == null)
            {
                spPrevIndex = new SPIndex(this);
                foreach (var ic in spPrevGenClauses)
                    if (!ic.isGround)
                        spPrevIndex.indexFC(ic as FC);
            }
            var fcs = new HashSet<FC>();
            fcs.UnionWith(spIndex.lookupAxioms(fu, unsatReq));
            fcs.UnionWith(spIndex.lookupAxioms(fu, unsatReq));
            fcs.UnionWith(spPrevIndex.lookupAxioms(fu, satReq));
            return fcs;
        }


        private static void importSPDAG(SPDAGImportRequest spImportRequest)
        {
            var dq = new SortedDictionary<int, SPDAGImportRequest>();
            var uq = new SortedDictionary<int, SPDAGImportRequest>();
            dq[spImportRequest.universe.index] = spImportRequest;
            while (dq.Count > 0)
            {
                var kv = dq.Last();
                dq.Remove(kv.Key);
                var spr = kv.Value;
                var nsprs = spr.down();
                if (nsprs.Count() == 0)
                    uq.insert(spr);
                else
                    dq.insert(nsprs);
            }
            while (uq.Count > 0)
            {
                var kv = uq.First();
                uq.Remove(kv.Key);
                var spr = kv.Value;
                spr.up();
            }
        }
        private void spIndexFCs()
        {
            foreach (var fc in assumedFCs)
                if (!isSPNewGen(fc) && spIndexedFCs.Add(fc))
                    spIndex.indexFC(fc);
        }
        private void spIndexGC(GC gc)
        {
            Debug.Assert(isTrue(gc));
            if (spIndexedGCs.Add(gc))
            {
                spIndex.indexGC(gc);
                gcData[gc].setSPIndexed();
            }
        }

        private void spIndexAll()
        {
            spIndexFCs();

            foreach (var gc in assumedGCs)
                spIndexGC(gc);

            foreach (var gt in allGTs)
                if (spIndexedGTs.Add(gt))
                {
                    gtData[gt].setSPIndexed();
                    spIndex.indexGT(gt);
                }

            foreach (var gt in allGTs)
                if (inDepthBoundStrict(gt))
                    foreach (var gt2 in gtData[gt].disequalities)
                        if (inDepthBoundStrict(gt2))
                        {
                            var gl = makeDEG(gt, gt2);
                            var gc = makeGC(gl);
                            spIndexGC(gc);
                        }
        }
        private void gcSuperposition()
        {
            #region GC x GC+GT
            foreach (var spgclr in spIndex.allGCLRs)
            {
                foreach (var gsplp in spIndex.getGCSTs(spgclr.lGT).ToList())
                    if (hasGC(gsplp.gc) && hasGC(spgclr.gc) && isTrue(gsplp.gc) && isTrue(spgclr.gc))
                        if (spgclr.gl != gsplp.gl)
                            gcgcSuperposition(spgclr, gsplp);
                foreach (var spgtst in spIndex.getGTSTs(spgclr.lGT).ToList())
                    if (hasGC(spgclr.gc) && isTrue(spgclr.gc))
                    {
                        gcgtSuperposition(spgclr, spgtst);
                        if (isRefuted)
                            return;
                    }

            }
            #endregion
        }
        private void gcgcResolution()
        {
            #region gcxgc resolution
            foreach (var gl in spIndex.allGLGCResolvents.ToList())
            {
                var gcs = spIndex.glGCs(gl).Except(spSaturatedGCs).ToList();
                if (gcs.Count == 0)
                    continue;
                foreach (var gc2 in spIndex.glGCs(gl.gNegate).ToList())
                {
                    foreach (var gc1 in gcs)
                    {
                        ISet<GL> gls;
                        if (constructConclusion(gc1, gl, gc2, gl.gNegate, null, out gls))
                        {
                            var ngc0 = makeGC(gls, (hasGC(gc1) && isGoal(gc1)) || (hasGC(gc2) && isGoal(gc2)));
                            var ngc = assume(ngc0);
                            if (isRefuted)
                                return;
                        }
                    }
                }
            }
            #endregion gcxgc resolution
        }
        private void gcfcSuperposition() //GT+GC x FC
        {
            #region gt x fc superposition
            if (gtfcSuperpositionKnob)
            {
                var unsaturatedGTLRs = from gtlr in spIndex.allGTLRs where !spSaturatedGTs.Contains(gtlr.gt) select gtlr;
                foreach (var gtlr in unsaturatedGTLRs.ToList())
                {
#if DEBUG
                    //                    if (gtlr.l.ToString().Contains(@"Seq@Length$Int$(Seq@Empty$Int$)"))
                    //                        Debugger.Break();
#endif
                    var fcitps = spIndex.potentialFCSTMatches(gtlr);
                    foreach (var fcitp in fcitps)
                        gtfcSuperposition(gtlr, fcitp);
                }
            }
            #endregion

            #region gc x fc superposition
            if (gcfcSuperpositionKnob)
            {
                var unsaturatedGCLRs = from gclr in spIndex.allGCLRs where !spSaturatedGCs.Contains(gclr.gc) select gclr;
                //Superposition l->r ground, s?t free
                foreach (var gclr in unsaturatedGCLRs.ToList())
                    if (hasGC(gclr.gc) && isTrue(gclr.gc))
                        foreach (var fcst in spIndex.potentialFCSTMatches(gclr))
                            gcfcSuperposition(gclr, fcst);
            }
            #endregion
        }
        private void fcgcSuperposition() //FC x GC+GT
        {
            var ispls = spIndex.allFCLRs;
            foreach (var fclr in ispls)
            {
                #region fc x gt superposition
                if (fcgtSuperpositionKnob)
                {
                    var gtsts = spIndex.potentialGTSTMatches(fclr);
                    foreach (var gtst in gtsts)
                    {
#if DEBUG
                        if (gtst.gt.index == 46105)
                            Debugger.Break();
#endif
                        fcgtSuperposition(fclr, gtst);
                        if (isRefuted)
                            return;
                    }
                }
                #endregion fc x gt superposition

                #region fc x gc superposition
                if (fcgcSuperpositionKnob)
                {
                    var ifa = fclr.l as IFA;
                    var gts = (ifa == null) ? typeToGTsMap.getOrEmpty(fclr.l.type) : lfsToGTMap.getOrEmpty(ifa.function);
                    var gsplps = new List<SPGCST>();
                    gsplps.AddRange(
                        from gt in gts
                        from gsplp in spIndex.getGCSTs(gt)
                        where !spSaturatedGCs.Contains(gsplp.gc)
                        select gsplp);
                    foreach (var gsplp in gsplps)
                        if (hasGC(gsplp.gc) && isTrue(gsplp.gc))
                        {
                            fcgcSuperposition(fclr, gsplp);
                            if (isRefuted)
                                return;
                        }
                }
                #endregion fc x gc superposition
            }
        }
        private void gcfcResolution()
        {
            foreach (var gl in spIndex.allGLGCResolvents.ToList())
            {
                var gcs = spIndex.glGCs(gl).Except(spSaturatedGCs).ToList();
                if (!gcs.Any())
                    continue;
                var p = gl.predicate;
                foreach (var iresp in spIndex.potentialFCLMatches(gl.pp, gl.gtt))
                {
                    var il = iresp.il;
                    var fc = iresp.fc;
                    Debug.Assert(il.predicate == gl.predicate);
                    Debug.Assert(il.polarity != gl.polarity);
                    var ss = tryUnify(il, gl);
                    foreach (var s in ss)
                    {
                        var nilsp = new HashSet<IL>();
                        if (addToConclusion(fc.ils, iresp.ili, s, nilsp))
                            foreach (var gc in gcs)
                                if (hasGC(gc) && isTrue(gc))
                                {
                                    var isConclusionGoal = isGoal(gc);
                                    //                                    if (gc.Count > 1 && fc.Count > 1)
                                    //                                        continue;
                                    var nils = new HashSet<IL>(nilsp);
                                    if (addToConclusion(gc.gls, gl, nils))
                                    {
                                        var pic = makeIC(nils);
                                        var ic = assumeIC(pic);
                                        if (isConclusionGoal && ic.isGround)
                                        {
                                            var gc2 = ic as GC;
                                            addGoalRecursive(gc2);
                                        }
                                    }
                                }
                    }
                }
            }
        }
        private void gcgcSuperposition(SPGCLR lr, SPGCST st)
        {
            if (!hasGC(lr.gc) || !hasGC(st.gc) || !isTrue(lr.gc) || !isTrue(st.gc))
                return;
            Debug.Assert(getAt(st.gl, st.glp) == lr.lGT);

            GL ngl;
            if (trySubstituteAt(st.gl, st.glp, lr.rG, out ngl) && !ngl.isTrue)
            {
                ISet<GL> ngls;
                if (constructConclusion(lr.gc, lr.gli, st.gc, st.gli, ngl, out ngls))
                {
                    var ngc = makeGC(ngls, isGoal(lr.gc) || isGoal(st.gc));
                    if (!ngc.isTrue)
                    {
                        assume(ngc);
                        if (isRefuted)
                            return;
                    }
                }
            }
        }
        private void gcgtSuperposition(SPGCLR lr, SPGTST st)
        {
            if (!hasGC(lr.gc) || !isTrue(lr.gc))
                return;
            Debug.Assert(getAt(st.gt, st.gtp) == lr.lGT);

            GT ngt;
            if (inDepthBoundStrict(st.gt) && trySubstituteAt(st.gt, st.gtp, lr.rG, out ngt) && inDepthBoundStrict(ngt) && ngt != st.gt)
            {
                var ge = makeEQG(st.gt, ngt);
                var ngls = new HashSet<GL>(lr.gc.gls.Except(lr.gl));
                if (!isFalse(ge))
                    ngls.Add(ge);
                var ngc = makeGC(ngls);
                if (!ngc.isTrue)
                {
                    if (isGoal(lr.gc) || isGoal(st.gt))
                        addGoalRecursive(ngc);
                    assume(ngc);
                    if (isRefuted)
                        return;
                }
            }
        }
        public IEnumerable<GTT> spMatchingGTTs(LFSTT lfstt)
        {
            if (lfstt.count == 0)
                return new[] { emptyGTT };
            var ttpString = makeTTPString(from f in lfstt.fs select f.resultType, 0);
            var f0 = lfstt[0];
            return
                (from gt0 in (f0 == null) ? typeToGTsMap.getOrEmpty(f0.resultType) : lfsToGTMap.getOrEmpty(f0)
                 where gt0.gfas[termRepository.getGTMinGFAi(gt0)].function == lfstt[0]
                 from sgtt in gtData[gt0].superGTTsByTTP.getOrEmpty(ttpString)
                 where spMatches(sgtt, lfstt)
                 select sgtt
                 );
        }
        public bool spMatches(GTT gtt, LFSTT lfstt)
        {
            Debug.Assert(gtt.Count == lfstt.count);
            for (var i = 0; i < gtt.Count; i++)
            {
                var gt = gtt.gtT[i];
                if (lfstt[i] != null && lfstt[i] != gt.gfas[termRepository.getGTMinGFAi(gt)].function)
                    return false;
            }
            return true;
        }
        public bool spMatches(ITT itt, IEnumerable<LFSTT> lfstts)
        {
            return lfstts.Any(lfstt => spMatches(itt, lfstt));
        }
        public bool spMatches(ITT itt, LFSTT lfstt)
        {
            Debug.Assert(itt.Count == lfstt.count);
            for (var i = 0; i < itt.Count; i++)
                if (!spMatches(itt.itT[i], lfstt[i]))
                    return false;
            return true;
        }
        public bool spMatches(IT it, Function fi)
        {
            if (fi == null || (it is FVT))
                return true;
            Function f;
            if (it.isGround)
            {
                var gt = it as GT;
                f = gt.gfas[termRepository.getGTMinGFAi(gt)].function;
            } else
                f = (it as FFA).function;
            return f == fi;
        }
        public bool spMatches(GT gt, Function f, IEnumerable<LFSTT> lfstts)
        {
            var gfa = gt.gfas[termRepository.getGTMinGFAi(gt)];
            return gfa.function == f && spMatches(gfa.gtt, lfstts);
        }
        public bool spMatches(IT it, Function f, IEnumerable<LFSTT> lfstts)
        {
            if (it is FVT)
                return true;
            if (it.isGround)
                return spMatches(it as GT, f, lfstts);
            else
            {
                var ffa = it as FFA;
                return ffa.function == f && spMatches(ffa.ftt, lfstts);
            }
        }


#if LOG
        public static bool logCond(Universe u)
        {
            return u.index==74;// && Universe.currentRound>=4;
        }
#endif
        private void gtfcSuperposition(SPGTLR lr, SPFCST st)
        {
            #region debug
#if DEBUG
            if (gtSPBreakCond(this, lr.gt))
                Debugger.Break();
#endif
            #endregion debug
            if (st.lpIT.isGround)
                return;
            if (superpositionOnlyGroundConclusionKnob && st.lpI.freeVariables.Count < st.fc.freeVariables.Count)
                return;
            //            if (st.lpI.isGround)
            //                return;
            #region log
#if DEBUG
#if LOG
            var preGTs = gtData.Count;
            var preGTTs = gttData.Count;
            var preSGTDs = numSGTDs;
            var preSGTTDs = numSGTTDs;
            if (logCond(this))
            {
//                Universe.log(String.Format("gtfc {0}.gtfc({1},{2})", index, lr, st));
//                Universe.log(String.Format("        preGTs:{0}, preGTDs:{1}, preGTTs:{2}, preGTTDs{3}", gtData.Count,numSGTDs,gttData.Count,numSGTTDs));
            }
#endif
#endif
            #endregion log
            var ss = tryUnify(st.lpI, lr.lGFA);
            var fc = st.fc;
            var ils = fc.ils;
            foreach (var s in ss)
            {
                if (superpositionOnlyGroundConclusionKnob && !s.isGrounding)
                    goto skipS;

                /*                var sitT = new IT[2];
                                if (st.il.isEQOrDE)
                                {
                                    var il = st.il;
                                    Debug.Assert(il.itt.Count == 2);
                                    for (var i = 0; i < 2; i++)
                                        if (!trySubstitute(il.itt[i], s, out sitT[i]))
                                            goto skipS;
                                    if (st.fcitp.ilp.iti == 1)
                                        swap(ref sitT[0], ref sitT[1]);
                                    var c = termRepository.compare(sitT[0], sitT[1]);
                                    if (c == -1 || (c == 0 && st.il.polarity))
                                        goto skipS;
                                }*/
                IL srt;
                if (!trySubstituteAt(st.il, st.fcitp.ilp, lr.r, out srt))
                    goto skipS;
                IL sts;
                if (!trySubstitute(srt, s, out sts))
                    goto skipS;
                if (isTrue(sts))
                    goto skipS;
                var nils = new HashSet<IL> { sts };
                if (addToConclusion(st.fc.ils, st.ili, s, nils))
                    assumeSPConclusion(lr, st, nils, isGoal(lr.gt));
                skipS:;
            }
            #region log
#if DEBUG
#if LOG
            if (logCond(this))
            {
                var dGTs = gtData.Count - preGTs;
                var dGTTs = gttData.Count - preGTTs;
                var dSGTDs = numSGTDs - preSGTDs;
                var dSGTTDs = numSGTTDs - preSGTTDs;
                if (dGTs + dGTTs + dSGTDs + dSGTTDs > 0)
                {
                    Universe.log(String.Format("gtfc   {0}.gtfc({1},{2}) done (rn:{3})", index, lr, st,Universe.currentRound));
                    Universe.log(String.Format("   dGTs:{0}, dGTDs:{1}, dGTTs:{2}, dGTTDs{3}, ss:{4}", dGTs, dSGTDs, dGTTs, dSGTTDs, ss.Count()));
                }
            }
#endif
#endif
            #endregion log

        }

        private void assumeSPConclusion(SPLeft lr, SPRight st, IEnumerable<IL> nils, bool isCGoal)
        {
            var nic = makeIC(nils);
            if (nic.isGround && isCGoal)
                addGoalRecursive(nic as GC);
            assumeIC(nic);
            analyzeConclusion(lr, st, nic);
        }
        #region weight
        public class Weight
        {
            public Weight(Universe u)
                : this(u, new IFA[0], new FVT[0])
            {
            }
            public Weight(Universe u, IEnumerable<IFA> ifas, IEnumerable<FVT> fvts)
            {
                this.ifas = new HashSet<IFA>(ifas);
                this.fvts = new HashSet<FVT>(fvts);
                this.u = u;
            }
            public readonly ISet<IFA> ifas;
            public readonly ISet<FVT> fvts;
            public readonly Universe u;
            public int ggw { get { return ifas.Count; } }
            public int gnw { get { return ifas.Count(ifa => !u.isOriginal(ifa)); } }
            public int fgw { get { return ifas.Count + fvts.Count; } }
            public int fnw { get { return ifas.Count(ifa => !u.isOriginal(ifa)) + fvts.Count; } }
            public int ggow { get { return (from ifa in ifas select ifa.itt.Count + 1).Sum(); } }
            public int gnow { get { return (from ifa in ifas where !u.isOriginal(ifa) select ifa.itt.Count + 1).Sum(); } }
            public int fgow { get { return ggow + fvts.Count; } }
            public int fnow { get { return fgow + fvts.Count; } }
            public Weight add(Weight b)
            {
                return new Weight(u, ifas.Union(b.ifas), fvts.Union(b.fvts));
            }
            public Weight sub(Weight b)
            {
                return new Weight(u, ifas.Except(b.ifas), fvts.Except(b.fvts));
            }
        }
        public bool isOriginal(IFA ifa)
        {
            return (ifa is GFA) && isOriginal((ifa as GFA).gt);
        }
        public Weight weight(IC ic)
        {
            var w = new Weight(this);
            foreach (var il in ic.ils)
                foreach (var it in il.itT)
                    w = w.add(weight(it));
            return w;
        }
        public Weight weight(IT it)
        {
            var ifas = new HashSet<IFA>();
            var fvts = new HashSet<FVT>();
            var td = new Queue<IFA>();
            if (it is FVT)
                fvts.Add(it as FVT);
            else
                foreach (var ifa in it.ifas)
                    if (ifas.Add(ifa))
                        td.Enqueue(ifa);
            while (td.Any())
            {
                var ifa = td.Dequeue();
                foreach (var it2 in ifa.itt.itT)
                    if (it2 is FVT)
                        fvts.Add(it as FVT);
                    else
                        foreach (var ifa2 in (it2.ifas))
                            if (ifas.Add(ifa2))
                                td.Enqueue(ifa2);
            }
            return new Weight(this, ifas, fvts);
        }
        public Weight weight(SPLeft lr)
        {
            if (lr is SPGCLR)
                return weight(lr as SPGCLR);
            else if (lr is SPGTLR)
                return weight(lr as SPGTLR);
            else
                return weight(lr as SPFCLR);
        }
        public Weight weight(SPGCLR lr) { return weight(lr.gc); }
        public Weight weight(SPFCLR lr) { return weight(lr.fc); }
        public Weight weight(SPGTLR lr) { return weight(lr.gt); }
        public Weight weight(SPGCST st) { return weight(st.gc); }
        public Weight weight(SPFCST st) { return weight(st.fc); }
        public Weight weight(SPGTST st) { return weight(st.gt); }
        public Weight weight(SPRight st)
        {
            if (st is SPGCST)
                return weight(st as SPGCST);
            else if (st is SPGTST)
                return weight(st as SPGTST);
            else
                return weight(st as SPFCST);
        }
        #endregion
        private void analyzeConclusion(SPLeft lr, SPRight st, IC C)
        {
#if DEBUG
            var wA = weight(lr);
            var wB = weight(st);
            var wC = weight(C);
            var dw = wC.sub(wA.add(wB));
            //            if (dw.ggow > 16)
            {
                Debug.WriteLine(" {0}.SP {1}x{2}:", this, lr.kind, st.kind);
                Debug.WriteLine("    {0}SP.L: {1}", this.index, lr.ToString(), 0);
                Debug.WriteLine("    {0}SP.R: {1}", this.index, st.ToString(), 0);
                Debug.WriteLine("    {0}SP.C: {1}", this.index, C.ToStringB(), 0);
                Debug.WriteLine("    gDW:{0,3}, gGW:{1,3}, gNW:{2,3}", dw.ggw, wC.ggw, wC.gnw);
                Debug.WriteLine("    fDW:{0,3}, fGW:{1,3}, fNW:{2,3}", dw.fgw, wC.fgw, wC.fnw);
                Debug.WriteLine("    gDO:{0,3}, gGO:{1,3}, gNO:{2,3}", dw.ggow, wC.ggow, wC.gnow);
                Debug.WriteLine("    fDO:{0,3}, fGO:{1,3}, fNO:{2,3}", dw.fgow, wC.fgow, wC.fnow);
                //                if (dw.ggow > 20)// && !C.ToString().Contains(@"DecPerm") && !C.ToString().Contains(@"IncPerm"))
                //                    Debug.WriteLine("     SPC.reject {0}",C.ToStringB(),0);
                if (index == -74)
                {
                    Debug.WriteLine("    SP[74]:L = {0}", lr.ToString(), 0);
                    Debug.WriteLine("    SP[74]:R = {0}", st.ToString(), 0);
                    if (lr is SPFCLR)
                    {
                        Debug.WriteLine("    SP[74]:FL = {0}", lr.ToString(), 0);
                        Debug.WriteLine("    SP[74]:GR = {0}", st.ToString(), 0);
                    } else if (st is SPFCST)
                    {
                        Debug.WriteLine("    SP[74]:GL = {0}", lr.ToString(), 0);
                        Debug.WriteLine("    SP[74]:FR = {0}", st.ToString(), 0);
                    } else
                    {
                        Debug.WriteLine("    SP[74]:GGL = {0}", lr.ToString(), 0);
                        Debug.WriteLine("    SP[74]:GGR = {0}", st.ToString(), 0);
                    }
                    if (C.ToStringB().Contains(@"DecPerm") || C.ToStringB().Contains(@"IncPerm"))
                        Debugger.Break();
                }
                //                    Debugger.Break();
            }

            //                    if (index>10 && nfc.ToString().Contains(@"DecPerm"))
            //                        Debugger.Break();
#endif
        }

        private void gcfcSuperposition(SPGCLR lr, SPFCST st)
        {
            if (superpositionOnlyGroundConclusionKnob && st.lpI.freeVariables.Count < st.fc.freeVariables.Count)
                return;
            if (!hasGC(lr.gc) || !isTrue(lr.gc) || !hasFC(st.fc) || !isAssumed(st.fc))
                return;
            var ss = tryUnify(st.lpI, lr.lG);
            var fc = st.fc;
            var ils = fc.ils;
            var gc = lr.gc;
            var gls = gc.gls;
            foreach (var s in ss)
            {
                Debug.Assert(!superpositionOnlyGroundConclusionKnob || s.variables.Count == st.fc.freeVariables.Count);
                if (superpositionOnlyGroundConclusionKnob && !s.isGrounding)
                    goto skipS;
                var sitT = new IT[2];
                if (st.il.isEQOrDE)
                {
                    Debug.Assert(st.il.itt.Count == 2);
                    for (var i = 0; i < 2; i++)
                        if (!trySubstitute(st.il.itt[i], s, out sitT[i]))
                            goto skipS;
                    if (st.fcitp.ilp.iti == 1)
                        swap(ref sitT[0], ref sitT[1]);
                    var c = termRepository.compare(sitT[0], sitT[1]);
                    if (c == -1 || (c == 0 && st.il.polarity))
                        goto skipS;
                }
                IL srt;
                if (!trySubstituteAt(st.il, st.fcitp.ilp, lr.r, out srt))
                    goto skipS;
                IL sts;
                if (!trySubstitute(srt, s, out sts))
                    goto skipS;
                ISet<IL> nils;
                if (constructConclusion(lr.gc.ils, lr.gli, st.fc.ils, st.ili, sts, s, out nils))
                    assumeSPConclusion(lr, st, nils, isGoal(lr.gc));
                skipS:;
            }
        }
        private void fcgcSuperposition(SPFCLR lr, SPGCST st)
        {
            if (superpositionOnlyGroundConclusionKnob && lr.l.freeVariables.Count < lr.fc.freeVariables.Count)
                return;
            var ss = tryUnify(lr.lI, st.lpG);
            var rgc = st.gc;
            var rgls = rgc.gls;
            var lfc = lr.fc;
            var lils = lfc.ils;
            foreach (var s in ss)
            {
                if (superpositionOnlyGroundConclusionKnob && !s.isGrounding)
                    goto skipS;
                IT rs;
                if (!trySubstitute(lr.r, s, out rs))
                    goto skipS;
                IT ls;
                if (!trySubstitute(lr.lI, s, out ls))
                    goto skipS;
                var clr = termRepository.compare(ls, rs);
                if (clr == -1 || clr == 0)
                    goto skipS;
                IL sts;
                if (!trySubstituteAt(st.gl, st.glp, rs, out sts))
                    goto skipS;
                ISet<IL> nils;
                if (constructConclusion(lr.fc.ils, lr.ili, st.gc.ils, st.gli, sts, s, out nils))
                    assumeSPConclusion(lr, st, nils, isGoal(st.gc));
                skipS:;
            }
        }
        private void fcgtSuperposition(SPFCLR lr, SPGTST st)
        {
            #region debug
#if DEBUG
            if (gtSPBreakCond(this, st.gt))
                Debugger.Break();
#endif
            #endregion debug
            if (superpositionOnlyGroundConclusionKnob && lr.l.freeVariables.Count < lr.fc.freeVariables.Count)
                return;
            var ss = tryUnify(lr.lI, st.lpG);
            var rgt = st.gt;
            var lils = lr.ils;
            foreach (var s in ss)
            {
                if (superpositionOnlyGroundConclusionKnob && !s.isGrounding)
                    goto skipS;
                IT rs;
                if (!trySubstitute(lr.r, s, out rs))
                    goto skipS;
                IT ls;
                if (!trySubstitute(lr.lI, s, out ls))
                    goto skipS;
                var clr = termRepository.compare(ls, rs);
                if (clr == -1 || clr == 0)
                    goto skipS;
                IL sts;
                if (!trySubstituteAt(st, rs, out sts) || isTrue(sts))
                    goto skipS;
                ISet<IL> nils = new HashSet<IL> { sts };
                if (addToConclusion(lr.ils, sts, s, nils))
                    assumeSPConclusion(lr, st, nils, isGoal(st.gt));
                skipS:;
            }
        }


        private bool constructConclusion(GC gc1, int gli1, GC gc2, int gli2, GL cgl, out ISet<GL> gls)
        {
            return constructConclusion(gc1, gc1.gls[gli1], gc2, gc2.gls[gli2], cgl, out gls);
        }
        private bool constructConclusion(GC gc1, GL gl1, GC gc2, GL gl2, GL cgl, out ISet<GL> gls)
        {
            gls = new HashSet<GL>();
            if (cgl != null && isTrue(cgl))
                return false;
            foreach (var gl in gc1.gls)
                if (gl != gl1)
                    gls.Add(gl);
            foreach (var gl in gc2.gls)
                if (gl != gl2)
                    if (gls.Contains(gl.gNegate))
                        return false;
                    else
                        gls.Add(gl);
            if (cgl != null)
                if (gls.Contains(cgl.gNegate))
                    return false;
                else
                    gls.Add(cgl);
            return sizeCriterion(gls, gc1.gls, gc2.gls);
        }
        private bool constructConclusion(IList<IL> ils1, int i1, IList<IL> ils2, int i2, IL snil, SubstitutionEC s, out ISet<IL> nils)
        {
            nils = new HashSet<IL>();
            if (isTrue(snil))
                return false;
            if (!isFalse(snil))
                nils.Add(snil);
            if (!addToConclusion(ils1, i1, s, nils))
                return false;
            if (!addToConclusion(ils2, i2, s, nils))
                return false;
            return sizeCriterion(nils, ils1, ils2);
        }
        private bool addToConclusion(IEnumerable<IL> ils, IL sil1, SubstitutionEC s, ISet<IL> nils)
        {
            foreach (var il in ils)
            {
                IL sil;
                if (trySubstitute(il, s, out sil))
                    if (isTrue(sil) || nils.Contains(sil.negate))
                        return false;
                    else
                    {
                        var c = termRepository.compare(sil1, sil);
                        if (c == 0 || c == -1)
                            return false;
                        if (!isFalse(sil))
                            nils.Add(sil);
                    } else
                    return false;
            }
            return true;
        }
        private bool addToConclusion(IList<IL> ils, int i1, SubstitutionEC s, ISet<IL> nils)
        {
            IL sil1;
            if (!trySubstitute(ils[i1], s, out sil1))
                return false;
            for (var i = 0; i < ils.Count; i++)
                if (i != i1)
                {
                    var il = ils[i];
                    IL sil;
                    if (trySubstitute(il, s, out sil))
                        if (isTrue(sil) || nils.Contains(sil.negate))
                            return false;
                        else
                        {
                            var c = termRepository.compare(sil1, sil);
                            if (c == 0 || c == -1)
                                return false;
                            if (!isFalse(sil))
                                nils.Add(sil);
                        } else
                        return false;
                }
            return true;
        }
        private bool addToConclusion(IList<GL> gls, GL gl, ISet<IL> nils)
        {
            foreach (var gl2 in gls)
                if (gl2 != gl)
                    if (isTrue(gl2) || nils.Contains(gl2.gNegate))
                        return false;
                    else if (!isFalse(gl2))
                        nils.Add(gl2);
            return true;
        }
        private bool sizeCriterion<T>(ISet<T> cils, IList<T> ils1, IList<T> ils2)
        {
            var cc = cils.Count;
            var cm = FU.max(ils1.Count, ils2.Count);
            return (cc < resolutionMaxWidth) || (cc <= cm + resolutionMaxWidthDelta);
        }

        private bool trySubstituteAt(SPGTST st, IT rs, out IL sts)
        {
            IT sr;
            if (inDepthBoundStrict(st.t) && trySubstituteAt(st.gt, st.gtp, rs, out sr) && inDepthBoundStrict(sr))
            {
                sts = makeIEE(sr, st.t, true);
                return true;
            }
            sts = null;
            return false;
        }

        private void importAxiomFFCs(IEnumerable<FC> ffcs)
        {
            Debug.Assert(!isRefuted);
            foreach (var ffc in ffcs)
            {
                var fcs = importFFC(ffc);
                foreach (var ifc in fcs)
                {
                    if (!isAssumed(ifc))
                    {
                        var ic = assumeFC(ifc);
                        if (!ic.isGround)
                        {
                            var fc = ic as FC;
                            setImported(fc);
                            setAxiom(fc);
                        }
                    }
                }
            }
        }

        bool trySubstituteAt(IL il, ILITPos pos, IT r, out IL nil)
        {
            if (il.isGround)
                return trySubstituteAt(il as GL, pos.iti, pos.itp as GTGTPos, r, out nil);
            else
                return trySubstituteAt(il as FL, pos as FLITPos, r, out nil);
        }
        bool trySubstituteAt(FL fl, FLITPos flitPos, IT r, out IL nil)
        {
            Debug.Assert(getAt(fl, flitPos) != r);
            IT[] nitT;
            if (trySubstituteAt(fl.itt, flitPos.iti, flitPos.itp, r, out nitT))
            {
                nil = makeIL(fl.pp, nitT);
                return true;
            }
            nil = null;
            return false;
        }
        bool trySubstituteAt(GL gl, GLGTPos pos, IT r, out IL nil)
        {
            return trySubstituteAt(gl, pos.gti, pos.gtp, r, out nil);
        }
        bool trySubstituteAt(GL gl, int gti, GTGTPos gtp, IT r, out IL nil)
        {
            //            Debug.Assert(getAt(gl.gtt.gts[gti],gtp) != r);
            IT[] nitT;
            if (trySubstituteAt(gl.gtt, gti, gtp, r, out nitT))
            {
                nil = makeIL(gl.pp, nitT);
                return true;
            } else
            {
                nil = null;
                return false;
            }
        }
        bool trySubstituteAt(GL gl, GLGTPos pos, GT r, out GL ngl)
        {
            Debug.Assert(getAt(gl, pos) != r);
            GT[] ngtT;
            if (trySubstituteAt(gl.gtT, pos.gti, pos.gtp, r, out ngtT))
            {
                ngl = makeGL(gl.pp, ngtT);
                return true;
            }
            ngl = null;
            return false;
        }
        /*        bool trySubstituteAt(ITT itt, int i, ITITPos pos, IT r, out IT[] nitT)
                {
                    return trySubstituteAt(itt.ToList())
                    IT[] nitA;
                    if (trySubstituteAt(itt.ToList(),i,pos,r,out nitA) && inRadius(nitA))
                    {
                        nitt = makeITT(nitA);
                        return true;
                    }
                    nitt = null;
                    return false;
                }*/
        bool trySubstituteAt(IList<GT> gtA, int i, GTGTPos pos, IT r, out IT[] nitA)
        {
            IT nit;
            if (trySubstituteAt(gtA[i], pos, r, out nit) && inDepthBoundStrict(nit))
            {
                nitA = (from j in Enumerable.Range(0, gtA.Count) select (i == j) ? nit : gtA[j]).ToArray();
                return true;
            }
            nitA = null;
            return false;
        }
        bool trySubstituteAt(ITT itA, int i, ITITPos pos, IT r, out IT[] nitA)
        {
            IT nit;
            if (trySubstituteAt(itA[i], pos, r, out nit) && inDepthBoundStrict(nit))
            {
                nitA = (from j in Enumerable.Range(0, itA.Count) select (i == j) ? nit : itA[j]).ToArray();
                return true;
            } else
            {
                nitA = null;
                return false;
            }
        }
        bool trySubstituteAt(IList<GT> gtA, int i, GTGTPos pos, GT r, out GT[] ngtA)
        {
            GT ngt;
            if (trySubstituteAt(gtA[i], pos, r, out ngt) && inDepthBoundStrict(ngt))
            {
                ngtA = new GT[gtA.Count];
                for (var j = 0; j < gtA.Count; j++)
                    if (j != i)
                        ngtA[j] = gtA[j];
                    else
                        ngtA[j] = ngt;
                return true;
            }
            ngtA = null;
            return false;
        }
        bool trySubstituteAt(IT it, ITITPos pos, IT r, out IT nit)
        {
            if (pos.isEmpty)
            {
                nit = r;
                return true;
            }
            if (it.isGround)
                return trySubstituteAt(it as GT, pos as GTGTPos, r, out nit);
            else
                return trySubstituteAt(it as FT, pos as FTITPos, r, out nit);
        }
        bool trySubstituteAt(GT gt, GTGTPos pos, GT r, out GT ngt)
        {
            if (pos.isEmpty)
            {
                ngt = r;
                return true;
            }
            var pos1 = pos as GTGTPos1;
            var gfa = gt.gfas[pos1.gfai];
            var gtt = gfa.gtt;
            GT[] ngtA;
            if (trySubstituteAt(gtt.gtT, pos1.gti, pos1.next, r, out ngtA) && inDepthBoundStrict(ngtA[pos1.gti]))
            {
                ngt = makeGT(gfa.function, ngtA, false);
                return true;
            }
            ngt = null;
            return false;
        }
        bool trySubstituteAt(GT gt, GTGTPos pos, IT r, out IT nit)
        {
            if (pos.isEmpty)
            {
                nit = r;
                return true;
            }
            var pos1 = pos as GTGTPos1;
            var gfa = gt.gfas[pos1.gfai];
            var gtt = gfa.gtt;
            IT[] nitA;
            if (trySubstituteAt(gtt.gtT, pos1.gti, pos1.next, r, out nitA))
            {
                //                var nitt = makeITT(nitA);
                nit = makeIT(gfa.function, nitA, false);
                return true;
            }
            nit = null;
            return false;
        }
        bool trySubstituteAt(FT ft, FTITPos pos, IT r, out IT nit)
        {
            if (pos.isEmpty)
            {
                nit = r;
                return true;
            }
            var pos1 = pos as FTITPos1;
            var ffa = ft as FFA;
            var ftt = ffa.ftt;
            IT[] nitT;
            if (trySubstituteAt(ftt, pos1.iti, pos1.next, r, out nitT))
            {
                nit = makeIT(ffa.function, nitT, false);
                return true;
            }
            nit = null;
            return false;
        }

        static IT getAt(IL il, ILITPos pos)
        {
            return getAt(il.itt[pos.iti], pos.itp);
        }
        static IT getAt(FL fl, FLITPos pos)
        {
            return getAt(fl.itt[pos.iti], pos.itp);
        }
        static GT getAt(GL gl, GLGTPos pos)
        {
            return getAt(gl.gtT[pos.gti], pos.gtp);
        }
        static GT getAt(GT gt, GTGTPos pos)
        {
            if (pos.isEmpty)
                return gt;
            else
            {
                var pos1 = pos as GTGTPos1;
                return getAt(gt.gfas[pos1.gfai].gtt.gtT[pos1.gti], pos1.next);
            }
        }
        static IT getAt(IT it, ITITPos pos)
        {
            if (it.isGround)
                return getAt(it as GT, pos as GTGTPos);
            return getAt(it as FFA, pos as FTITPos);
        }
        static IT getAt(FFA ffa, FTITPos pos)
        {
            if (pos.isEmpty)
                return ffa;
            else
            {
                var ftp = pos as FTITPos1;
                return getAt(ffa.ftt[ftp.iti], ftp.next);
            }
        }

        #endregion superposition

        #region interface
        public void saturateNonEqualityOnce()
        {
            try
            {
                #region debug
#if DEBUG
                printStatusIf(this, "noneq", true);
#endif
                #endregion debug

                #region setup
                recordForSPCleanup();
                markAdded(false);
                nextInstGeneration();
                var unsaturatedGDEs = queues.unsaturatedDisequalities.ToList();
                var unsaturatedGCs = queues.unsaturatedGCs.ToList();
                var unsaturatedGLs = queues.unsaturatedGLs.ToList();
                var unsaturatedFCs = queues.unsaturatedFCs.ToList();
                var unsaturatedGTs = (from gt in queues.unsaturatedGTs where allPGTsSat(gt) select gt).ToList();
                #endregion setup

                #region import and index
                updateInstantiationCaches();
                #endregion import and index

                #region saturate queues
                foreach (var gde in unsaturatedGDEs)
                    instSaturateGDE(gde.Item1, gde.Item2);
                foreach (var gc in unsaturatedGCs)
                    if (hasGC(gc))
                        instSaturate(gc);
                foreach (var fc in unsaturatedFCs)
                    if (hasFC(fc))
                        instSaturate(fc);
                foreach (var gl in unsaturatedGLs)
                    instSaturate(gl);
                if (gtBuiltinMapPropKnob)
                    propagateMapReads(from gt in allGTs where !isMapROWSat(gt) select gt);
                instSaturate(unsaturatedGTs);
                #endregion saturate queues

                #region integer
                integerStuff();
                if (isRefuted)
                    return;
                #endregion integer

                #region cleanup
                cleanupInt();
                #region consistency
#if DEBUG
                Debug.Assert(depthInvariant());
                foreach (var gt in instantiationIndex.allGTs)
                    Debug.Assert(upToDateGTMM(gt));
                foreach (var gtt in instantiationIndex.allGTTs)
                    Debug.Assert(upToDateGTTMM(gtt));
                foreach (var gt in addedGTs)
                    Debug.Assert(upToDateGTMM(gt));
                queues.checkECs();
#endif
                #endregion consistency

                markAdded(false);
                //                cleanupAxioms();
                cleanupAfterSP();
                #endregion cleanup

                #region consistency
                Debug.Assert(sourcesComplete());
#if DEBUG
                queues.checkECs();
#endif
                #endregion consistency

                #region debug
#if DEBUG
                printStatusIf(this, "noneq", false);
#endif
                #endregion debug
            } catch (RefuteException) { }
        }

        private void integerStuff()
        {
            integerGLStuff();
        }

        private bool notReady(GT x)
        {
            return
                queues.hasEquivalenceClass(x)
                || queues.has(x)
                || !allPGTsSat(x)
                ;
        }
        private void assumeSimplifyGL(GL gl)
        {
            if (gl.isEQOrDE)
            {
                assume(gl);
                return;
            }
            foreach (var gc in glData[gl].gcs.ToList())
                if (gc.Count > 1)
                {
                    clearGoal(gc);
                    clearOriginal(gc);
                    unAssumeGC(gc);
                    unembedGC(gc);
                    if (isRefuted)
                        return;
                }
            foreach (var fc in glData[gl].fcs.ToList())
            {
                clearOriginal(fc);
                if (isAssumed(fc))
                    unAssume(fc);//simplify
                unembedFC(fc);
            }
            var ngl = gl.gNegate;
            foreach (var gc in glData[ngl].gcs.ToList())
                if (isAssumed(gc))
                {
                    if (gc.gls.Count == 1)
                        refute(gl.ToStringB() + " both true and false");
                    assume(makeGC(gc.gls.Except(ngl), isGoal(gc)));
                }
            foreach (var fc in glData[ngl].fcs.ToList())
                if (isAssumed(fc))
                {
                    var orig = clearOriginal(fc);
                    if (isAssumed(fc))
                        unAssume(fc);//simplify
                    unembedFC(fc);
                    assumeFC(makeFC(fc.ils.Except(ngl)));
                    if (isRefuted)
                        return;
                }
        }
        public bool isIntegerReduced(GFA gfa)
        {
            if (!isIntMul(gfa.function) && !isIntPlus(gfa.function))
                return true;
            var x = gfa.gtT[0];
            var y = gfa.gtT[1];
            if (isNumber(y))
                return false;
            if (isIntMul(gfa.function) && isNumber(x) && getNumber(x) == 0)
                return false;
            return true;
        }
#if DEBUG
        private static ISet<string> assumedIntegerGCKeys = new HashSet<string>();
#endif
        private void integerGLStuff()
        {
            foreach (var gaf in allGAFs.ToList())
                if (gaf.predicate.isLessThan)
                {
                    var gldt = glData[gaf.gLiteral(true)];
                    var gldf = glData[gaf.gLiteral(false)];
                    var fics = gldf.gcs.Count + gldf.fcs.Count;
                    var tics = gldt.gcs.Count + gldt.fcs.Count;

                    var x = gaf.gtT[0];
                    var y = gaf.gtT[1];
                    if (isNumber(x) && isNumber(y))
                    {
                        var xn = getNumber(gaf.gtT[0]);
                        var yn = getNumber(gaf.gtT[1]);
                        assumeSimplifyGL(gaf.gLiteral(xn < yn));
                        if (isRefuted)
                            return;
                    } else if (x == y)
                    {
                        assumeSimplifyGL(gaf.gLiteral(false));
                        if (isRefuted)
                            return;
                    } else foreach (var gfax in x.gfas)
                            if (isIntegerReduced(gfax))
                                if (isNumber(x))
                                {

                                } else
                                if (isIntMul(gfax.function))
                                {
                                    var x0 = gfax.gtT[0];
                                    var x1 = gfax.gtT[1];
                                    Debug.Assert(!isNumber(x1));
                                    if (isNumber(x0))
                                        foreach (var gfay in y.gfas)
                                            if (isIntegerReduced(gfay))
                                                if (isNumber(y))
                                                {//km<n
                                                    if (tics > 0)
                                                    { //!km<n \/ !n<km
                                                        var gc = makeGC(new[] { gaf.gLiteral(false), makeLTG(y, x, false) });
                                                        assume(gc);
                                                        if (isRefuted)
                                                            return;
                                                    }
                                                    if (fics > 0)
                                                    { //km<n \/  n<km \/ n=km
                                                        var gc = makeGC(new[] { gaf.gLiteral(true), makeLTG(y, x, true), makeEQG(y, x) });
                                                        assume(gc);
                                                        if (isRefuted)
                                                            return;
                                                    }
                                                } else
                                                    if (isIntMul(gfay.function))
                                                {
                                                    var y0 = gfay.gtT[0];
                                                    var y1 = gfay.gtT[1];
                                                    if (isNumber(x0) && isNumber(y0) && !isNumber(x1) && x1 == y1)
                                                    { //x=mk<nk=y
                                                        Debug.Assert(x0 != y0);
                                                        var m = getNumber(x0);
                                                        var n = getNumber(y0);
                                                        var k = x1;
                                                        Debug.Assert(m != 0 && n != 0);
                                                        Debug.Assert(m != n);
                                                        var b = (m < n);
                                                        if (gldt.gcs.Count + gldt.fcs.Count > 0)
                                                        {
                                                            var gls = new HashSet<GL> { gaf.gLiteral(false) };
                                                            if (b)
                                                            { //!mk<nk \/ 0<k [\/ !m<n]
                                                                gls.Add(makeLTG(zeroGT, k, true));
                                                                var gct = makeGC(gls);
                                                            } else
                                                            {
                                                                var gls2 = new HashSet<GL>(gls);
                                                                gls.Add(makeLTG(zeroGT, x1, false));
                                                                var gc = makeGC(gls); //!mk<nk \/ !0<k  [\/ !n<m]
                                                                gls2.Add(makeEEG(zeroGT, x1, false));
                                                                var gc2 = makeGC(gls2); //!mk<nk \/ !0=k [\/ !n<m]
                                                                assume(gc);
                                                                if (isRefuted)
                                                                    return;
                                                                assume(gc2);
                                                                if (isRefuted)
                                                                    return;
                                                            }

                                                        }
                                                        if (fics > 0)
                                                        {
                                                            var gls = new HashSet<GL> { gaf.gLiteral(true) };
                                                            if (b)//mk<nk \/ !0<k [\/ !m<n  \/ n=m]
                                                                gls.Add(makeLTG(zeroGT, x1, false));
                                                            else
                                                            {//mk<nk \/ 0<k \/ k==0 [\/ !n<m \/ n=m]
                                                                gls.Add(makeLTG(zeroGT, x1, true));
                                                                gls.Add(makeEEG(zeroGT, x1, true));
                                                            }

                                                            var gcf = makeGC(gls);
                                                            assume(gcf);
                                                            if (isRefuted)
                                                                return;
                                                        }
                                                    }//if (isNumber(x0) && !isNumber(x1) && x1 == y1)
                                                }//if (isIntMul(gfay.function))
                                }//if (isIntMul(gfax.function))

                }//if (gaf.predicate.isLessThan)
                else if (gaf.predicate.isEquality && gaf.predicate.argumentTypes.First() == IntegerType.integerType)
                {
                    var x = gaf.gtT[0];
                    var y = gaf.gtT[1];
                    if (x != y && isNumber(x) && isNumber(y))
                    {
                        var xn = getNumber(x);
                        var yn = getNumber(y);
                        //                        Debug.Assert(xn != yn);
                        assumeSimplifyGL(gaf.gLiteral(xn == yn));
                        if (isRefuted)
                            return;
                    }
                }
        }

        private bool isZero(GT x)
        {
            return isNumber(x) && getNumber(x) == 0;
        }

        private int spPasses = 0;
        public static bool isSPPass
        {
            get
            {
                return currentRound >= superpositionFirstRound
                    && (currentRound - superpositionFirstRound) % superpositionFrequency == 0;
            }
        }
        public static int[] spGCNs = new int[10];
        public static int[] spGTNs = new int[10];
        public void saturateSuperpositionOnce()
        {
            try
            {
                #region debug
#if DEBUG
                printStatusIf(this, "SP", true);
#endif
                #endregion debug

                #region superposition
                recordForSPCleanup();
                nextSPGeneration();

                if (!isSPPass)
                    return;
                if (gcgcSuperpositionKnob || gcgcResolutionKnob || gcfcSuperpositionKnob || gcfcResolutionKnob || gtfcSuperpositionKnob || fcgcSuperpositionKnob || fcgtSuperpositionKnob)
                {
                    var preGCs = new HashSet<GC>(assumedGCs.ToList());
                    var preGTs = new HashSet<GT>(allGTs.ToList());

                    var gcsV = new List<int> { numAssumedGCs };
                    var gtsV = new List<int> { gtData.Count };
                    spIndexAndImport();
                    if (isRefuted)
                        return;
                    gcsV.Add(numAssumedGCs);
                    gtsV.Add(gtData.Count);
                    if (gcgcSuperpositionKnob)
                    {
                        gcSuperposition();
                        if (isRefuted)
                            return;
                        gcsV.Add(numAssumedGCs);
                        gtsV.Add(gtData.Count);
                    }
                    if (gcgcResolutionKnob)
                    {
                        gcgcResolution();
                        if (isRefuted)
                            return;
                        gcsV.Add(numAssumedGCs);
                        gtsV.Add(gtData.Count);
                    }
                    if (gcfcSuperpositionKnob || gtfcSuperpositionKnob)
                    {
                        //                        spIndexAll();
                        gcfcSuperposition();
                        if (isRefuted)
                            return;
                        gcsV.Add(numAssumedGCs);
                        gtsV.Add(gtData.Count);
                    }
                    if (fcgcSuperpositionKnob || fcgtSuperpositionKnob)
                    {
                        fcgcSuperposition();
                        if (isRefuted)
                            return;
                        gcsV.Add(numAssumedGCs);
                        gtsV.Add(gtData.Count);
                    }
                    if (gcfcResolutionKnob)
                    {
                        gcfcResolution();
                        if (isRefuted)
                            return;
                        gcsV.Add(numAssumedGCs);
                        gtsV.Add(gtData.Count);
                    }
                    #region mark saturated
                    for (var i = 0; i + 1 < gcsV.Count; i++)
                        spGCNs[i] += gcsV[i + 1] - gcsV[i];
                    for (var i = 0; i + 1 < gtsV.Count; i++)
                        spGTNs[i] += gtsV[i + 1] - gtsV[i];
                    foreach (var gc in preGCs)
                        if (hasGC(gc) && isAssumed(gc) && spSaturatedGCs.Add(gc))
                            gcData[gc].setSPSat();
                    foreach (var gt in preGTs)
                        if (hasGT(gt) && spSaturatedGTs.Add(gt))
                            gtData[gt].setSPSat();
                    #endregion mark saturated
                }
                markAdded(false);
                cleanupAfterSP();
                #endregion superposition

                #region debug
#if DEBUG
                printStatusIf(this, "SP", false);
#endif
                #endregion debug
            } catch (RefuteException) { }
        }
        public void mergeOnce()
        {
            try
            {
                #region debug
#if DEBUG
                printStatusIf(this, "merge", true);
#endif
                #endregion debug
                cleanupInt();
                markAdded(false);
                addRevision();
                cleanupInt();
                assertOriginalsHold();
                cleanupFluff();
                merge();
                if (isRefuted)
                    return;
                Debug.Assert(assertGASubsumes());
                assertOriginalsHold();
                markAdded(false);
                if (isRefuted)
                    return;

                assertOriginalsHold();

                markAdded(false);
                #region consistency
#if DEBUG
                Debug.Assert(depthInvariant());
                queues.checkECs();
                Debug.Assert(instantiationCachesComplete());
#endif
                #endregion consistency
                lastMergeRevision = currentRevision;
                addRevision();

                #region consistency
                Debug.Assert(sourcesComplete());
#if DEBUG
                foreach (var gt in instantiationIndex.allGTs)
                    Debug.Assert(upToDateGTMM(gt));
                foreach (var gtt in instantiationIndex.allGTTs)
                    Debug.Assert(upToDateGTTMM(gtt));
                Debug.Assert(invariant());
                Debug.Assert(instantiationCachesComplete());
                Debug.Assert(addedGTs.Count == 0);
                Debug.Assert(addedGLs.Count == 0);
#endif
                #endregion consistency

                #region debug
#if DEBUG
                printStatusIf(this, "merge", false);
#endif
                #endregion debug
            } catch (RefuteException) { }
        }
        #endregion interface

        #region superposition
        /*        class SuperpositionGC
                {
                    public readonly GC gc;
                    public readonly int atomIndex;
                    public readonly int termIndex;

                }*/
        private void safeSuperposition()
        {
            //            foreach ()
            throw new NotImplementedException();
        }
        #endregion superposition

        #region extra facts
        private void applyBuiltinMapRead(GT gt)
        {
            if (isMapWrite(gt))
                makeMapReadFromMapWrite(gt, true);
        }
        private void applyBuiltinInteger(GT gt)
        {
            var intType = IntegerType.integerType;
            if (gt.type.isEquivalent(intType))
                applyBuiltinIntegerAxioms(gt);
        }
        private void applyBuiltinIntegerAxioms(GT gt)
        {
            foreach (var gfa in gt.gfas)
            {
                var args = gfa.gtT;
                if (args.Count() == 2 && (isIntPlus(gfa.function) || isIntMinus(gfa.function)))
                {
                    if (args.All(isNumber) && args.All(arg => gtDepth(arg) < maxGTDepth))
                    {
                        var nums = new[] { getNumber(args[0]), getNumber(args[1]) };
                        var sum = isIntPlus(gfa.function) ? nums[0] + nums[1] : nums[0] - nums[1];
                        var sumF = srs.getFunction(IntegerValue.make(sum));
                        addToScope(sumF);
                        var sumGT = makeGT(sumF, emptyGTT, false);
                        setGTDepth(sumGT, (from arg in args select gtDepth(arg)).Max() + 1);
                        assumeEQG(gt, sumGT);
                        //                        addNewNumberLTs(sumGT, sum, sumF);
                    } else
                    {
                        if (isNumber(args[0]))
                        {
                            var arg0 = getNumber(args[0]);
                            if (arg0 == 0 && isIntPlus(gfa.function))
                            {
                                assumeEQG(gt, args[1]);
                                if (isRefuted)
                                    return;
                            }
                        } else if (isNumber(args[1]))
                        {
                            var arg1 = getNumber(args[1]);
                            if (arg1 == 0)
                            {
                                assumeEQG(gt, args[0]);
                                if (isRefuted)
                                    return;
                            }
                        } else
                        {
                            var muls0 = from mulgfa in args[0].gfas where isIntMul(mulgfa.function) where isNumber(mulgfa.gtT[0]) where !isNumber(mulgfa.gtT[1]) select mulgfa;
                            var muls1 = from mulgfa in args[1].gfas where isIntMul(mulgfa.function) where isNumber(mulgfa.gtT[0]) where !isNumber(mulgfa.gtT[1]) select mulgfa;
                            foreach (var mul0 in muls0)
                                foreach (var mul1 in muls1)
                                {
                                    if (mul0.gtt.gtT[1] == mul1.gtt.gtT[1])
                                    {
                                        var n0gt = mul0.gtt.gtT[0];
                                        var n1gt = mul1.gtt.gtT[0];
                                        if (inDepthBoundStrict(n0gt, n1gt))
                                        {
                                            var n0 = getNumber(n0gt);
                                            var n1 = getNumber(n1gt);
                                            var sumGT = makeNumberGT(isIntPlus(gfa.function) ? n0 + n1 : n0 - n1);
                                            setGTDepth(sumGT, (from arg in new[] { n0gt, n1gt } select gtDepth(arg)).Max() + 1);
                                            var d = mul0.gtt.gtT[1];
                                            GT mulGT;
                                            if (tryMakeGT(mul0.function, sumGT, d, isGoal(gt), out mulGT))
                                            {
                                                assumeEQG(gt, mulGT);
                                                if (isRefuted)
                                                    return;
                                            }
                                        }
                                    }
                                }
                        }
                    }
                } else if (isIntMul(gfa.function))
                {
                    if (isNumber(args[0]) && getNumber(args[0]) == 0)
                    {
                        assumeEQG(gt, args[0]);
                        if (isRefuted)
                            return;
                    } else if (isNumber(args[1]) && getNumber(args[1]) == 0)
                    {
                        assumeEQG(gt, args[1]);
                        if (isRefuted)
                            return;
                    }
                }
            }
        }
        private BigInteger getNumber(GT gt)
        {
            foreach (var gfa in gt.gfas)
                if (srs.isNumber(gfa.function))
                    return srs.getNumber(gfa.function);
            throw new Exception();
        }
        public bool isNumber(GT gt)
        {
            return gt.gfas.Any(gfa => !gfa.gtt.Any() && srs.isNumber(gfa.function));
        }
        private bool isIntPlus(Function function)
        {
            return function.name == "+";
        }
        private bool isIntMinus(Function function)
        {
            return function.name == "-";
        }
        private bool isIntMul(Function function)
        {
            return function.name == "*";
        }
        #endregion extra facts

        #region case splits
        class ROWGFA
        {
            public readonly GFA gfa;
            public readonly Function mr;
            public readonly Function mw;
            public readonly GT rm;
            public readonly GT wm;
            public readonly GT[] ris;
            public readonly GT[] wis;
            public readonly ISet<int> eqis;
            public readonly ISet<int> neis;
            public readonly GT subreadGT;
            public readonly GT valueGT;

            public ROWGFA(GFA gfa, Function mr, Function mw, GT rm, GT wm, GT[] ris, GT[] wis, ISet<int> eqis, ISet<int> neis, GT subreadGT, GT valueGT)
            {
                this.gfa = gfa;
                this.mr = mr;
                this.mw = mw;
                this.rm = rm;
                this.wm = wm;
                this.ris = ris;
                this.wis = wis;
                this.eqis = eqis;
                this.neis = neis;
                this.subreadGT = subreadGT;
                this.valueGT = valueGT;
            }
        }
        public abstract ISet<GC> newGCs { get; }
        public abstract ISet<GL> newGLs { get; }
        public abstract ISet<GT> gtsWithNewGNEs { get; }
        public abstract ISet<GT> gtsWithNewECs { get; }

        internal bool isSpawn = false;
        #endregion case splits



        protected abstract bool isExpanding(GT gt);
        protected abstract bool isExpanding(GTT gtt);
        protected void markAsNoExpandSaturate(IEnumerable<GL> gls)
        {
            foreach (var gl in gls.ToList())
                markAsNoExpandSaturate(gl);
        }
        protected void markAsNoExpandSaturate(GL gl)
        {
            addedGLs.Remove(gl);
            glData[gl].setExpandRadius(maxGLRadius);
        }
        protected void markAdded(bool allowedToSaturate)
        {
            Debug.Assert(!isRefuted);
            while (addedGTs.Any() || addedGLs.Any())
            {
                var todoGTs = new HashSet<GT>(addedGTs);
                addedGTs.Clear();
                var todoGLs = new HashSet<GL>(addedGLs);
                addedGLs.Clear();
                foreach (var gt in todoGTs.ToList())
                {
                    //                    setGTDepth(gt);
                    //                    addGTHarmlessEqualities(gt);
                    addedGTs.Remove(gt);
                }
                if (!allowedToSaturate)
                    markAsNoExpandSaturate(todoGLs);
            }
        }

        protected bool isUnequal(GT[] is1, GT[] is2)
        {
            Debug.Assert(is1.Length == is2.Length);
            return Enumerable.Range(0, is1.Length).Any(x => isUnequal(is1[x], is2[x]));
        }
        protected bool isEqual(GT[] is1, GT[] is2)
        {
            Debug.Assert(is1.Length == is2.Length);
            return Enumerable.Range(0, is1.Length).All(x => isEqual(is1[x], is2[x]));
        }

        private void makeMapReadFromMapWrite(GT gt, bool isGoal)
        {
            Debug.Assert(gt.lfss.Any(f => f.isMapWrite));
            foreach (var gfa in gt.gfas)
            {
                if (gfa.function.isMapWrite)
                {
                    var map = gfa.gtT[0];
                    var indices = gfa.gtT.Skip(1).Take(gfa.gtT.Count() - 2);
                    var mapRead = srs.getMapRead(gfa.function);
                    var mapReadGT1 = makeGT(mapRead, new[] { map }.Concat(indices));
                    /*
                    var gtt1 = makeGTT(new[] { map }.Concat(indices));
                    var mapReadGT1 = makeGT(mapRead, gtt1, isGoal);*/
                    if (gt.gfas.Any(gfa1 => !gfa1.function.isMapWrite))
                    {
                        var mapReadGT2 = makeGT(mapRead, new[] { gt }.Concat(indices));
                        /*   var gtt2 = makeGTT(new[] { gt }.Concat(indices));
                           var mapReadGT2 = makeGT(mapRead, gtt2, isGoal);*/
                    }

                }
            }
        }
        private bool isMapWrite(GT gt)
        {
            return gt.lfss.Any(f => srs.isMapWrite(f));
        }

        private void assumeGTTDisequality(GTT m1, GTT m2, bool isGoal, bool isOriginal)
        {
            if (m1 == m2)
                return;
            var pairs = new List<GT[]>();
            for (var i = 0; i < m1.Count(); i++)
            {
                var gt1 = m1.gtT[i];
                var gt2 = m2.gtT[i];
                if (gt1 != gt2)
                {
                    if (gtData[gt1].disequalities.Contains(gt2))
                        return;
                    pairs.Add(sort(gt1, gt2));
                }
            }
            if (!pairs.Any())
            {
                refute("Inequality false assumed");
            } else if (pairs.Count == 1)
            {
                assumeGDE(pairs[0][0], pairs[0][1]);
            } else
            {
                assumeGLs(from p in pairs select makeDEG(p[0], p[1]), isGoal, isOriginal);
            }
        }

        private void markAsInstSaturated(GT gt)
        {
            gtData[gt].instSaturatedRadius = maxGTDepth;
            queues.remove(gt);
        }


        #region KBO approx
        private static bool isMaximal(IC ic, int i)
        {
            var ili = ic[i];
            for (var j = 0; j < ic.Count; j++)
                if (i != j)
                {
                    var ilj = ic[j];
                    if (ilj.freeVariables.Except(ili.freeVariables).Any())
                        return false;
                    //                    if (ili.freeVariables.Except(ilj.freeVariables).Any())
                    //                        continue;
                    //                    if (ili.allGTs.Any())
                    //                        continue;
                    var varCountI = getVarCount(ili);
                    var varCountj = getVarCount(ilj);
                    foreach (var kv in varCountj)
                        if (!varCountI.ContainsKey(kv.Key) || varCountI[kv.Key] > kv.Value)
                            return false;
                    if (varCountI.Any(kv => !varCountj.ContainsKey(kv.Key) || kv.Value > varCountj[kv.Key]))
                        return true;
                    foreach (var kv in varCountI)
                        if (!varCountI.ContainsKey(kv.Key) || varCountI[kv.Key] > kv.Value)
                            return false;
                    var kbi = calculateKBIndex(ili);
                    var kbj = calculateKBIndex(ilj);
                    if (kbj > kbi)
                        return false;
                }
            return true;
        }
        private static int calculateKBIndex(IL il)
        {
            return calculateKBIndex(il.iaf.itt);
        }
        private static int calculateKBIndex(ITT iTT)
        {
            return iTT.Aggregate(0, (a, it) => a += calculateKBIndex(it));
        }
        private static int calculateKBIndex(IT it)
        {
            var gt = it as GT;
            if (gt != null)
                return 2;
            //                return gt.allGTs.Sum(gt => gt.gfas.Length);
            var ffa = it as FFA;
            if (ffa != null)
            {
                return 2 + calculateKBIndex(ffa.ftt);
            } else
                return 1;
        }
        private static IDictionary<LVar, int> getVarCount(IL il0)
        {
            var map = new Dictionary<LVar, int>();
            getVarCount(il0.iaf.itt, map);
            return map;
        }
        private static void getVarCount(ITT iTT, Dictionary<LVar, int> map)
        {
            foreach (var it in iTT)
                getVarCount(it, map);
        }
        private static void getVarCount(IT it, Dictionary<LVar, int> map)
        {
            var ffa = it as FFA;
            if (ffa != null)
                getVarCount(ffa.ftt, map);
            else
            {
                var fvt = it as FVT;
                if (fvt != null)
                {
                    var lv = fvt.variable;
                    if (!map.ContainsKey(lv))
                        map[lv] = 0;
                    map[lv]++;
                }
            }
        }
        #endregion KBO approx

        #endregion saturation

        #region evaluation
        //TODO UGC instance of UFC
        #region ground atom
        public bool isTrue(FC fc)
        {
            return isAssumed(fc) || fc.ils.Any(il => isTrue(il));
        }
        public bool isTrue(GC gc)
        {
            return isAssumed(gc) || gc.gls.Any(gl => isTrue(gl));
        }
        public bool isTrue(GL gl)
        {
            if (gl.isTrue)
                return true;
            if (gl.isFalse)
                return false;
            if (gl.isEQOrDE)
                return isTrueGEQNE(gl.polarity, gl.gtt);
            else
                return isTrueGPA(gl);
        }
        public bool isTrue(PP pp, GTT gtt)
        {
            if (!inScope(pp))
                return false;
            if (pp.predicate is Equality)
                return isTrueGEQNE(pp.polarity, gtt);
            else
                return isTrueGPA(pp, gtt);
        }
        private bool isTrueGPA(GL ga)
        {
            Debug.Assert(!ga.isEQOrDE);
            getAssumedGLByPAndGTT(ga.gaf.predicate, ga.gaf.gtt);
            if (isAssumed(ga))
                return true;
            #region consistency
#if DEBUG
            GL aga;
            if (gttData[ga.gtt].assumedGLsByPredicate.TryGetValue(ga.predicate, out aga) && ga.polarity == aga.polarity)
                Debug.Assert(false);
#endif
            #endregion consistency
            //TODO tryUnify with free atoms
            return false;
        }
        private bool isTrueGPA(PP pp, GTT gtt)
        {
            if (!hasGTT(gtt))
                return false;
            getAssumedGLByPAndGTT(pp.predicate, gtt);
            GL ga;
            if (gttData[gtt].assumedGLsByPredicate.TryGetValue(pp.predicate, out ga) && ga.polarity == pp.polarity)
                return true;
            return false;
        }
        private bool isTrueGEQNE(bool polarity, GTT gtt)
        {
            return isTrueGEQNE(polarity, gtt.gtT[0], gtt.gtT[1]);
        }
        private bool isTrueGEQNE(bool polarity, GT gt0, GT gt1)
        {
            if (polarity)
                return isEqual(gt0, gt1);
            else
                return isUnequal(gt0, gt1);
        }
        protected bool isEqual(GT gt0, GT gt1)
        {
            if (gt0 == gt1)
                return true;
            if (queues.areEqual(gt0, gt1))
                return true;
            return false;
        }
        protected bool isUnequal(GT gt0, GT gt1)
        {
            if (gt0 == gt1)
                return false;
            if (!gtData.ContainsKey(gt0) || !gtData.ContainsKey(gt1))
                return false;
            //TODO try unify with assumed GNEs
            if (gtData[gt0].disequalities.Contains(gt1) || !gt0.type.isEquivalent(gt1.type))
                return true;
            if (
                (gt0.gfas.Any(gfa => gfa.function == srs.trueFunction) && gt1.gfas.Any(gfa => gfa.function == srs.falseFunction)) ||
                (gt1.gfas.Any(gfa => gfa.function == srs.trueFunction) && gt0.gfas.Any(gfa => gfa.function == srs.falseFunction)))
                return true;
            return false;
        }
        public bool isFalse(IL il)
        {
            if (il.isGround)
                return isFalse(il as GL);
            else
                return isFalse(il as FL);
        }
        public bool isFalse(GL ga)
        {
            if (isTrue(ga.inverse))
                return true;
            //            return isFalseByNGAs(ga);
            return false;
        }
        public bool isFalse(PP pp, GTT gtt)
        {
            return isTrue(pp.n, gtt);
        }
        #endregion ground atom

        #region free atom
        private bool isTrue(FL fa)
        {
            if (isTrueCA(fa))
                return true;

            return false;
        }
        private bool isTrueCA(FL fa)
        {
            if (fa.isTrue)
                return true;
            if (assumedFLsD.ContainsKey(fa.ToStringNN()))
                return true;
            return false;
        }

        private bool isFalse(FL fa)
        {
            if (isFalseCA(fa))
                return true;

            if (!fa.isEQOrDE)
                return isFalseFPA(fa);
            return false;
        }
        private bool isFalseCA(FL fa)
        {
            if (fa.isFalse)
                return true;
            if (assumedFLsD.ContainsKey(fa.fNegate.ToStringNN()))
                return true;
            return false;
        }
        private bool isFalseFPA(FL fa)
        {
            Debug.Assert(!fa.isEQOrDE);
            if (fa.isFalse)
                return true;
            if (Universe.FLResolveGLKnob)
                foreach (var ga in assumedGLsByPP[fa.negate.pp])
                    if (eUnifyG(fa.ftt, ga.gtt).Any())
                        return true;
            return false;
        }
        #endregion free atom

        #region any atom
        public bool isTrue(IL a)
        {
            if (a.isGround)
                return isTrue(a as GL);
            else
                return isTrue(a as FL);
        }
        public bool isTrueCA(IL a)
        {
            if (a.isGround)
                return isTrue(a as GL);
            else
                return isTrueCA(a as FL);
        }
        private bool isFalseCA(IL a)
        {
            if (a.isGround)
                return isFalse(a as GL);
            else
                return isFalseCA(a as FL);
        }
        #endregion any atom

        /*
        private bool isFalseNI(IAtomEC a)
        {
            return ( (a is GroundAtomEC) && isFalseNI(a as GroundAtomEC) ||
                (a is FreeAtomEC) && isFalse(a as FreeAtomEC))
                ;
        }
        protected bool isTrue(IAtomEC a)
        {
            return ((a is GroundAtomEC) && isTrue(a as GroundAtomEC))
                || ((a is FreeAtomEC) && isTrue(a as FreeAtomEC))
                ;
        }
        
        public bool isFalseNI(PP pp, GroundTupleEC gtt)
        {
            return isTrueNI(predicate, !polarity, gtt);
        }
        protected bool isTrueNI(IAtomEC a)
        {
            return ((a is GroundAtomEC) && isTrueNI(a as GroundAtomEC))
                || ((a is FreeAtomEC) && isTrue(a as FreeAtomEC))
                ;
        }
        private bool isFalse(IAtomEC a)
        {
            return ((a is GroundAtomEC) && isFalse(a as GroundAtomEC) ||
                (a is FreeAtomEC) && isFalse(a as FreeAtomEC))
                ;
        }
        */

        #endregion evaluation

        #region unification
        private IEnumerable<GC> getGroundUnifications(IC c, int i)
        {
            Debug.Assert(i >= 0 && i < c.Count());
            var isClauseGoal = (c is GC) && isGoal(c as GC);
            var result = new List<GC>();
            foreach (var u in getGroundUnifications(c[i]))
            {
                var literals = new List<GL>();
                foreach (var a in c)
                {
                    if (a != c[i])
                    {
                        GL gl;
                        if (!trySubstitute(a, u, out gl))
                            goto skip;
                        if (isTrue(gl))
                            goto skip;
                        else if (!isFalse(gl))
                            literals.Add(gl);
                    }
                }
                var clause = makeGC(literals, isClauseGoal || u.isGoal);
                result.Add(clause);
                skip:;
            }
            return result;
        }
        private IEnumerable<GroundSubstitutionEC> getGroundUnifications(IL a)
        {
            if (a is GL)
                return getGroundUnifications(a as GL);
            else
                return getGroundUnifications(a as FL);
        }
        private IEnumerable<GroundSubstitutionEC> getGroundUnifications(GL ga)
        {
            var predicate = ga.gaf.predicate;
            if (predicate is Equality)
            {
                var gaf = ga.gaf;
                var args = gaf.gtt;
                var gTerms = args.gtT;
                var isGoalv = isGoal(gTerms[0]) || isGoal(gTerms[1]);
                if (ga.polarity)
                    if (gTerms[0] == gTerms[1])
                        return new[] { new GroundSubstitutionEC(this, isGoalv) };
                    else
                        return new GroundSubstitutionEC[0];
                else
                    if (gtData[gTerms[0]].disequalities.Contains(gTerms[1]))
                    return new[] { new GroundSubstitutionEC(this, isGoalv) };
                else
                    return new GroundSubstitutionEC[0];
            } else
            {
                var aga = getAssumedGLByPAndGTT(predicate, ga.gaf.gtt);
                if (aga != null && aga.polarity != ga.polarity)
                    return new[] { new GroundSubstitutionEC(this, isGoal(aga)) };
                else
                    return new GroundSubstitutionEC[0];
            }
        }
        private IEnumerable<GroundSubstitutionEC> getGroundUnifications(FL a)
        {
            Debug.Assert(a.freeVariables.Any());

            var gtAList = new List<Tuple<GT[], bool>>();

            if (a.faf.predicate is Equality)
            {
                ISet<GT> gts;
                if (typeToGTsMap.TryGetValue(a.faf.ftt[0].type, out gts))
                {
                    if (a.polarity)
                    { //equality - match all inequalities of type
                        foreach (var gt1 in gts)
                        {
                            foreach (var gt2 in gtData[gt1].disequalities)
                                gtAList.Add(new Tuple<GT[], bool>(new[] { gt1, gt2 }, isGoal(gt1) || isGoal(gt2)));
                        }
                    } else
                    { //inequality - match all terms of type
                        foreach (var gt in typeToGTsMap[a.faf.ftt[0].type])
                            gtAList.Add(new Tuple<GT[], bool>(new[] { gt, gt }, isGoal(gt)));
                    }
                }
            } else
            {
                ISet<GL> aglsbpap;
                if (assumedGLsByPP.TryGetValue(a.negate.pp, out aglsbpap))
                    foreach (var ga in aglsbpap)
                        if (isGoal(ga) && glData[ga].canExpand)
                            gtAList.Add(new Tuple<GT[], bool>(ga.gaf.gtt.gtT.ToArray(), isGoal(ga)));
            }
            return (
                from gt in gtAList
                from s in unify(a.faf.ftt.ToArray(), gt.Item1, new[] { new GroundSubstitutionEC(this, gt.Item2) })
                select s).ToList();
        }
        #region non ground unification
        private IEnumerable<SubstitutionEC> unify(IAF f1, IAF f2)
        {
            return unify(f1, f2, new[] { new SubstitutionEC(this, false) });
        }
        private IEnumerable<SubstitutionEC> unify(IAF f1, IAF f2, IEnumerable<SubstitutionEC> s)
        {
            if (!f1.predicate.Equals(f2.predicate) || !s.Any())
                return new SubstitutionEC[0];

            return unify(f1.itt, f2.itt, s);

        }
        private IEnumerable<SubstitutionEC> unify(ITT tt1, ITT tt2, IEnumerable<SubstitutionEC> s)
        {
            return unify(tt1.ToArray(), tt2.ToArray(), s);
        }
        private IEnumerable<SubstitutionEC> unify(IT[] tA1, IT[] tA2, IEnumerable<SubstitutionEC> s)
        {
            Debug.Assert(tA1.Length == tA2.Length);
            IEnumerable<SubstitutionEC> substitutions = new List<SubstitutionEC>(s);
            for (var i = 0; i < tA1.Length; i++)
                substitutions = unify(tA1[i], tA2[i], substitutions);
            return substitutions;
        }
        private IEnumerable<SubstitutionEC> unify(IT t1, IT t2, IEnumerable<SubstitutionEC> cs)
        {
            if (cs.Count() == 0)
                return cs;
            var gt1 = t1 as GT;
            var gt2 = t2 as GT;
            var fa1 = t1 as FFA;
            var fa2 = t2 as FFA;
            var v1 = t1 as FVT;
            var v2 = t2 as FVT;

            if (gt1 != null)
                if (gt2 != null)
                    if (gt1 == gt2)
                        return cs;
                    else
                        return new SubstitutionEC[0];
                else if (fa2 != null)
                    return unify(fa2, gt1, cs);
                else //v2!=null
                    return unify(gt1, v2, cs);
            else if (fa1 != null)
                if (gt2 != null)
                    return unify(fa1, gt2, cs);
                else if (fa2 != null)
                    return unify(fa1, fa2, cs);
                else //v2!=null
                    return unify(fa1, v2, cs);
            else //v1!=null
                if (gt2 != null)
                return unify(gt2, v1, cs);
            else if (fa2 != null)
                return unify(fa2, v1, cs);
            else //v2!=null
                return unify(v1, v2, cs);
        }
        private IEnumerable<SubstitutionEC> unify(FFA fa1, FVT v2, IEnumerable<SubstitutionEC> ss)
        {
            var result = new List<SubstitutionEC>();
            foreach (var s in ss)
                if (s.variables.Contains(v2.variable))
                    result.AddRange(unify(fa1, s[v2.variable], new[] { s }));
                else
                    result.Add(s.add(v2.variable, fa1.substitute(s)));
            return result;
        }
        private IEnumerable<SubstitutionEC> unify(GT gt1, FVT v2, IEnumerable<SubstitutionEC> ss)
        {
            var result = new List<SubstitutionEC>();
            foreach (var s in ss)
                if (s.variables.Contains(v2.variable))
                    result.AddRange(unify(gt1, s[v2.variable], new[] { s }));
                else
                    result.Add(s.add(v2.variable, gt1));
            return result;
        }
        private IEnumerable<SubstitutionEC> unify(FVT v1, FVT v2, IEnumerable<SubstitutionEC> ss)
        {
            var result = new List<SubstitutionEC>();
            foreach (var s in ss)
            {
                var t1 = s.variables.Contains(v1.variable) ? s[v1.variable] : v1;
                var t2 = s.variables.Contains(v2.variable) ? s[v2.variable] : v2;

                var vt1 = t1 as FVT;
                var vt2 = t2 as FVT;
                Debug.Assert(vt1 == null || !s.variables.Contains(vt1.variable));
                Debug.Assert(vt2 == null || !s.variables.Contains(vt2.variable));

                if (vt1 == null && vt2 == null)
                    result.AddRange(unify(t1, t2, new[] { s }));
                else
                {
                    if (vt1 == null)
                    {
                        swap(ref t1, ref t2);
                        vt1 = vt2;
                        vt2 = null;
                        //                        swap(vt1, vt2);
                    }
                    Debug.Assert(vt1 != null);

                    var fa2 = t2 as FFA;
                    var gt2 = t2 as GT;
                    if (vt2 != null)
                    {
                        if (vt1 == vt2)
                            result.Add(s);
                        else
                            result.Add(s.add(vt1.variable, vt2));
                    } else if (fa2 != null)
                        result.Add(s.add(vt1.variable, fa2.substitute(s)));
                    else //gt2!=null
                        result.Add(s.add(vt1.variable, gt2));
                }

            }
            return result;
        }
        private IEnumerable<SubstitutionEC> unify(FFA fa1, FFA fa2, IEnumerable<SubstitutionEC> s)
        {
            if (!fa1.function.Equals(fa2.function))
                return new SubstitutionEC[0];
            return unify(fa1.ftt, fa2.ftt, s);
        }
        private IEnumerable<SubstitutionEC> unify(FFA fa, GT gt, IEnumerable<SubstitutionEC> cs)
        {
            IDictionary<GTT, GFA> e;
            if (!gt.gfasByFunction.TryGetValue(fa.function, out e))
                return new SubstitutionEC[0];
            return (from fakv in e from s in unify(fakv.Key, fa.ftt, cs) select s).ToList();
        }
        private IEnumerable<SubstitutionEC> tryUnify(IT it, GFA gfa)
        {
            if (it.isGround)
                return tryUnify(it as GT, gfa);
            else
                return tryUnify(it as FT, gfa);
        }
        private IEnumerable<SubstitutionEC> tryUnify(GT gt, GFA gfa)
        {
            if (gfa.gt == gt)
                return new SubstitutionEC[] { new SubstitutionEC(this, false) };
            else
                return new SubstitutionEC[0];
        }
        private IEnumerable<SubstitutionEC> tryUnify(FT ft, GFA gfa)
        {
            if (ft is FVT)
                return new[] { new SubstitutionEC(this, false, (ft as FVT).variable, gfa.gt) };
            else
                return tryUnify(ft as IFA, gfa);
        }
        /*        private IEnumerable<SubstitutionEC> tryUnify(GFAEC gfa, GFA gfa)
                { 
                    if (ifa.function != gfa.function)
                        return new SubstitutionEC[0];
                    return tryUnify(ifa.itt, gfa.gtt);
                }*/
        private IEnumerable<SubstitutionEC> tryUnify(IFA ifa, GFA gfa)
        {
            if (ifa.function != gfa.function)
                return new SubstitutionEC[0];
            return tryUnify(ifa.itt, gfa.gtt);
        }
        private IEnumerable<SubstitutionEC> tryUnify(IT it, GT gt)
        {
            if (it.isGround)
                if (ReferenceEquals(it, gt))
                    return new[] { new SubstitutionEC(this, false) };
                else
                    return new SubstitutionEC[0];
            else if (it is FVT)
                return tryUnify(it as FVT, gt);
            else
                return tryUnify(it as FFA, gt);
        }
        private IEnumerable<SubstitutionEC> tryUnify(FVT fvt, GT gt)
        {
            Debug.Assert(upToDateGTMM(gt));
            return new[] { new SubstitutionEC(this, false, fvt.variable, gt) };
        }
        private IEnumerable<SubstitutionEC> tryUnify(FFA ffa, GT gt)
        {
            Debug.Assert(upToDateGTMM(gt));
            var result = new List<SubstitutionEC>();
            var gfa = gt.gfas[termRepository.getGTMinGFAi(gt)];
            if (ffa.function == gfa.function)
                result.AddRange(tryUnify(ffa, gfa));
            /*
            IDictionary<GTT, GFA> e;
            if (gt.gfasByFunction.TryGetValue(ffa.function, out e))
                foreach (var gfa in e.Values)
                    result.AddRange(tryUnify(ffa, gfa));*/
            return result;
        }
        private IEnumerable<SubstitutionEC> tryUnify(FFA ffa, GFA gfa)
        {
            Debug.Assert(ffa.function == gfa.function);
            return tryUnify(ffa.ftt, gfa.gtt);
        }
        private IEnumerable<SubstitutionEC> tryUnify(IL il, GL gl)
        {
            if (il.predicate != gl.predicate || il.polarity == gl.polarity)
                return new SubstitutionEC[0];
            return tryUnify(il.itt, gl.gtt);
        }
        private IEnumerable<SubstitutionEC> tryUnify(ITT itt, GTT gtt)
        {
            #region preconditions
#if DEBUG
            Debug.Assert(upToDateGTTMM(gtt));
            Debug.Assert(upToDate(itt));
            Debug.Assert(itt.Count == gtt.Count);
#endif
            #endregion preconditions

            var argSubstitutions = new IList<SubstitutionEC>[gtt.Count()];
            for (var i = 0; i < itt.Count; i++)
            {
                argSubstitutions[i] = tryUnify(itt[i], gtt.gtT[i]).ToList();
                if (argSubstitutions[i].Count == 0)
                    return new SubstitutionEC[0];
            }
            return makeCombinations(argSubstitutions);
            /*            argSubstitutions[0] = tryUnify(itt[0], gtt.gts[0]).ToList();
                        for (var i = 1; i < itt.Count; i++)
                            argSubstitutions[i] = unify(itt[i], gtt.gts[i],argSubstitutions[i-1]).ToList();
                        return argSubstitutions.Last();*/
        }
        #endregion non ground unification

        #region ground unification
        private IEnumerable<GroundSubstitutionEC> unify(ITT tt1, GTT gt2, IEnumerable<GroundSubstitutionEC> gss)
        {
            return unify(tt1.ToArray(), gt2.gtT.ToArray(), gss);
        }
        private IEnumerable<GroundSubstitutionEC> unify(IT[] tA1, GT[] gtA2, IEnumerable<GroundSubstitutionEC> s)
        {
            Debug.Assert(tA1.Length == gtA2.Length);
            IEnumerable<GroundSubstitutionEC> substitutions = new List<GroundSubstitutionEC>(s);
            for (var i = 0; i < tA1.Length; i++)
                substitutions = unify(tA1[i], gtA2[i], substitutions);
            return substitutions;
        }
        private IEnumerable<GroundSubstitutionEC> unify(IT t1, GT gt2, IEnumerable<GroundSubstitutionEC> gss)
        {
            var gt1 = t1 as GT;
            var fa1 = t1 as FFA;
            var v1 = t1 as FVT;

            if (gt1 != null)
                return unify(gt1, gt2, gss);
            else if (fa1 != null)
                return unify(fa1, gt2, gss);
            else
                return unify(v1, gt2, gss);
        }
        private IEnumerable<GroundSubstitutionEC> unify(GT gt1, GT gt2, IEnumerable<GroundSubstitutionEC> gcs)
        {
            if (gt1 == gt2)
                return gcs;
            else
                return new GroundSubstitutionEC[0];
        }
        private IEnumerable<GroundSubstitutionEC> unify(FVT v1, GT gt2, IEnumerable<GroundSubstitutionEC> gss)
        {
            var result = new List<GroundSubstitutionEC>();
            foreach (var gs in gss)
                if (gs.variables.Contains(v1.variable))
                    result.AddRange(unify(gt2, gs[v1.variable], new[] { gs }));
                else
                    result.Add(gs.tryCombine(new GroundSubstitutionEC(gs.universe, false, v1.variable, gt2))); //.add(v1.variable, gt2));
            return result;
        }
        private IEnumerable<GroundSubstitutionEC> unify(FFA fa, GT gt, IEnumerable<GroundSubstitutionEC> gcs)
        {
            IDictionary<GTT, GFA> e;
            if (!gt.gfasByFunction.TryGetValue(fa.function, out e))
                return new GroundSubstitutionEC[0];
            return (from gfaKV in e from s in unify(fa.ftt, gfaKV.Key, gcs) select s).ToList();
        }
        private IEnumerable<GroundSubstitutionEC> eUnifyG(IT t, GT ct)
        {
            if (t is GT)
                if (t.Equals(ct))
                    return new[] { new GroundSubstitutionEC(this, false) };
                else
                    return new GroundSubstitutionEC[0];
            else if (t is FVT)
                return eUnifyG(t as FVT, ct);
            else
                return eUnify(t as FFA, ct);
        }
        private IEnumerable<GroundSubstitutionEC> eUnifyG(FVT fvt, GT gt)
        {
            Debug.Assert(upToDateGTMM(gt));
            return new[] { new GroundSubstitutionEC(this, false, fvt.variable, gt) };
        }
        private IEnumerable<GroundSubstitutionEC> eUnify(FFA pattern, GT t)
        {
            Debug.Assert(upToDateGTMM(t));
            return new List<GroundSubstitutionEC>(
                from gfa in t.gfasByFunction.getOrEmpty(pattern.function).Values
                from gs in eUnifyG(pattern, gfa)
                select gs);
            /*                new List<GroundSubstitutionEC>();
                        IDictionary<GTT, GFA> e;
                        if (t.gfasByFunction.TryGetValue(pattern.function, out e))
                            foreach (var cfa in e.Values)
                                //for each application of the function in this equivalence class
                                result.AddRange(tryUnifyG(pattern, cfa));
                        return result;*/
        }
        private IEnumerable<GroundSubstitutionEC> eUnifyG(FFA pattern, GFA cfa)
        {
            var result = new List<GroundSubstitutionEC>();
            foreach (var s in eUnifyG(pattern.ftt, cfa.gtt))
                result.Add(s);
            return result;
        }
        private IEnumerable<GroundSubstitutionEC> eUnifyG(ITT tuplePattern, GTT gtt)
        {
            #region preconditions
#if DEBUG
            Debug.Assert(upToDateGTTMM(gtt));
            Debug.Assert(
                tuplePattern.All(
                    m => !(m is GT) || upToDateGTMM(m as GT)));
            Debug.Assert(tuplePattern.Count() == gtt.Count());
#endif
            #endregion preconditions

            var argSubstitutions = new IList<GroundSubstitutionEC>[gtt.Count()];
            for (var i = 0; i < tuplePattern.Count(); i++)
                argSubstitutions[i] = eUnifyG(tuplePattern[i], gtt.gtT[i]).ToList();
            var result = makeCombinations(argSubstitutions);
            return result;
        }
        #endregion ground unification

        private IEnumerable<SubstitutionEC> makeCombinations(IEnumerable<IEnumerable<SubstitutionEC>> subs)
        {
            var result = new List<SubstitutionEC>();
            if (!subs.Any())
                return new[] { new SubstitutionEC(this, false) };
            if (subs.Any(sl => !sl.Any()))
                return result;

            return makeCombinations(subs.First(), subs.Skip(1));
        }
        private IEnumerable<SubstitutionEC> makeCombinations(IEnumerable<SubstitutionEC> pss, IEnumerable<IEnumerable<SubstitutionEC>> options)
        {
            if (!options.Any())
                return pss;
            return
                (from ps in pss
                 from c in makeCombinations(options.First(), options.Skip(1))
                 let combination = ps.tryCombine(c)
                 where combination != null
                 select combination).ToList();
        }

        private IEnumerable<GroundSubstitutionEC> makeCombinations(IEnumerable<IEnumerable<GroundSubstitutionEC>> subs)
        {
            var result = new List<GroundSubstitutionEC>();
            if (!subs.Any())
                return new[] { new GroundSubstitutionEC(this, false) };
            if (subs.Any(sl => !sl.Any()))
                return result;

            return makeCombinations(subs.First(), subs.Skip(1));
        }
        private IEnumerable<GroundSubstitutionEC> makeCombinations(IEnumerable<GroundSubstitutionEC> pss, IEnumerable<IEnumerable<GroundSubstitutionEC>> options)
        {
            if (!options.Any())
                return pss;
            return
                (from ps in pss
                 from c in makeCombinations(options.First(), options.Skip(1))
                 let combination = ps.tryCombine(c)
                 where combination != null
                 select combination).ToList();
        }
        private IEnumerable<IEnumerable<GT>> makeCombinations(IEnumerable<IEnumerable<Tuple<GT, IEnumerable<GroundSubstitutionEC>>>> optionSets, bool onlyGoals)
        {
            //            var result = new List<GTT>();
            var mcr = makeCombinationsR(optionSets);
            return from o in mcr where o.Item1.Any(isGoal) select o.Item1;
            /*                            result.AddRange(from )

                        foreach (var o in mcr)
                            if (o.Item1.Any(isGoal))
                            {
                                var gtt = makeGTT(o.Item1);
                                result.Add(o.Item1) // gtt);
                            }
                        return result;*/
        }
        private IEnumerable<Tuple<IEnumerable<GT>, GroundSubstitutionEC>> makeCombinationsR(IEnumerable<IEnumerable<Tuple<GT, IEnumerable<GroundSubstitutionEC>>>> optionSets)
        {
            if (!optionSets.Any())
                return new List<Tuple<IEnumerable<GT>, GroundSubstitutionEC>>
                    {
                        new Tuple<IEnumerable<GT>, GroundSubstitutionEC>(new GT[0],
                                                                                   new GroundSubstitutionEC(this,false))
                    };

            var suffixes =
                makeCombinationsR(optionSets.Skip(1));
            var prefixes = optionSets.First();

            var result = (
                             from p in prefixes
                             from sub in p.Item2
                             from s in suffixes
                             let cs = sub.tryCombine(s.Item2)
                             where cs != null
                             select
                                 new Tuple
                                 <IEnumerable<GT>,
                                 GroundSubstitutionEC>(
                                 new[] { p.Item1 }.Concat(s.Item1),
                                 cs)
                         ).ToList();

            Debug.Assert(result.All(x => x.Item1.Count() == optionSets.Count()));
            return result;
        }
        #endregion unification

        #region matching
        private IEnumerable<Tuple<GT, IEnumerable<GroundSubstitutionEC>>> match(IT pattern)
        {
            if (pattern is GT)
            {
                var gt = pattern as GT;
                return new[]
                    {
                        new Tuple<GT, IEnumerable<GroundSubstitutionEC>>(gt,new[] {new GroundSubstitutionEC(this,isGoal(gt))})
                    };
            }
            if (pattern is FVT)
                return match(pattern as FVT);
            else
                return match(pattern as FFA);
        }
        private IEnumerable<Tuple<GT, IEnumerable<GroundSubstitutionEC>>> match(FFA pattern)
        {
            var result = new List<Tuple<GT, IEnumerable<GroundSubstitutionEC>>>();
            ISet<GT> candidates;
            if (lfsToGTMap.TryGetValue(pattern.function, out candidates))
                foreach (var c in candidates) //For each equivalence class
                    if (/*goalGroundTerms.Contains(c) &&*/ (gtDepth(c) < maxGTDepth)) //!doNotExpandSaturateGTs.Contains(c))
                    {
                        var ss = eUnify(pattern, c);
                        if (ss.Any())
                            result.Add(new Tuple<GT, IEnumerable<GroundSubstitutionEC>>(c, ss));
                    }
            return result;
        }
        private IEnumerable<Tuple<GT, IEnumerable<GroundSubstitutionEC>>> match(FVT pattern)
        {
            //A variable matches all terms of its type
            var result = new List<Tuple<GT, IEnumerable<GroundSubstitutionEC>>>();
            ISet<GT> terms;
            if (typeToGTsMap.TryGetValue(pattern.type, out terms))
                foreach (var t in terms)
                    if ((gtDepth(t) < maxGTDepth))
                        result.Add(
                            new Tuple<GT, IEnumerable<GroundSubstitutionEC>>
                                (t, new[] { new GroundSubstitutionEC(this, false, pattern.variable, t) })
                            );
            return result;
        }
        private IEnumerable<GAF> match(FAF faf, bool onlyGoals)
        {
            var gtTs = makeCombinations((from it in faf.ftt select from gt in match(it) where inDepthBoundStrict(gt.Item1) select gt).ToArray(), onlyGoals);
            return (from gtT in gtTs where gtT.Any(isGoal) select makeGAF(faf.predicate, gtT));
            /*            var argMatches =
                            (from a in args select match(a)).ToList();
                        var result = makeCombinations(argMatches,onlyGoals);
                        Debug.Assert(result.All(x => x.Count() == args.Count()));
                        return result;*/
        }
        #endregion matching

        #region merge
        protected IEnumerable<ISet<GT>> getCanonicalSets()
        {
            var termSets = queues.getEquivalenceClasses();
            var canonicalSets = new Dictionary<GT, ISet<GT>>();
            foreach (var termSet in termSets)
            {
                var existingSets = new List<ISet<GT>>();
                foreach (var gt in termSet)
                {
                    ISet<GT> eSet;
                    if (canonicalSets.TryGetValue(gt, out eSet))
                        existingSets.Add(eSet);
                }
                var newSet = new HashSet<GT>(from es in existingSets from gt in es select gt);
                newSet.UnionWith(termSet);
                foreach (var gt in newSet)
                    canonicalSets[gt] = newSet;
            }
            var result = new List<ISet<GT>>();
            var gts = new HashSet<GT>();
            foreach (var csKV in canonicalSets)
            {
                if (gts.Contains(csKV.Key))
                    continue;
                result.Add(csKV.Value);
                gts.UnionWith(csKV.Value);
            }

            return result;
        }
        protected void getAffectedTermsAndTuples(IEnumerable<GT> initialSet, out ISet<GT> affectedTerms, out ISet<GTT> affectedTuples)
        {
            affectedTerms = new HashSet<GT>(initialSet);
            affectedTuples = new HashSet<GTT>();

            {
                var todoUp = new Queue<GT>(affectedTerms);
                while (todoUp.Any())
                {
                    var gt = todoUp.Dequeue();
                    Debug.Assert(affectedTerms.Contains(gt));
                    foreach (var gtt in gtData[gt].sgtts)
                        if (affectedTuples.Add(gtt))
                            foreach (var gfa in gttData[gtt].sgfas.Values)
                                //                            foreach (var gfaKV in gttInfo.IncomingGFAs.Values) might be a prob
                                //                                foreach (var gfa in gfaKV.Values)
                                if (affectedTerms.Add(gfa.gt))
                                    todoUp.Enqueue(gfa.gt);
                }
            }
        }

        private void merge()
        {
            #region precondition
#if DEBUG
            Debug.Assert(invariant());
            mergeIndex++;
#endif
            #endregion precondition

            var canonicalSets = getCanonicalSets();
//            var cs2 = new List<ISet<GT>>();
            var et = makeMergeTemplate(canonicalSets);
            et.getGTs();
            #region consistency
#if DEBUG
            foreach (var ngti in et.modifiedGTIs)
                foreach (var mgt in et.mgts(ngti))
                    Debug.Assert(et.getLGT(ngti).height <= mgt.height);
            Debug.Assert(!addedGTs.Any());
#endif
            #endregion consistency
            embedTermStructure(et);
            if (isRefuted)
                return;

            #region consistency
#if DEBUG
            Debug.Assert(invariant());
            Debug.Assert(depthInvariant());
            foreach (var oc in originalClauses)
                Debug.Assert(upToDate(oc));
            queues.checkECs();
#endif
            #endregion consistency
        }
        protected abstract IEmbedTemplate makeMergeTemplate(IEnumerable<ISet<GT>> canonicalSets);
        public interface IEmbedTemplate
        {
#if DEBUG
            int index { get; }
#endif
            void embedGT(int gti);
            void embedGTT(int gtti);
            void getGTs();
            IEnumerable<GTI> modifiedGTIs { get; }
            IEnumerable<GTTI> modifiedGTTIs { get; }
            GT getLGT(GTI gti);
            GTT getLGTT(GTTI gtti);
            GT mgtToLGT(GT mgt);
            ISet<GT> mgts(GTI gti);
            ISet<GTT> mgtts(GTTI gtti);
            int gtiDepth(GTI gti);

            bool hasModifiedGTI(GTI gti);
            bool hasModifiedGTTI(GTTI gtti);

            bool checkSourcesBefore();
        }
        public class EmbedTemplate : IEmbedTemplate, ITermStructureTemplate
        {
            #region instance creation
            public int index { get; set; }

            internal EmbedTemplate(int index, IUNG universe) { this.universe = universe; this.index = index; }
            public override string ToString()
            {
                return
                    "ET(" + universe.ToString() + ")"
#if DEBUG
                    + ":" + tmIndex.ToString()
#endif
                    ;
            }
            #endregion instance creation

            #region debug
#if DEBUG
            public int tmIndex;
#endif
            #endregion debug

            #region embed
            public void embedGT(GTI gti)
            {
                var gt = getLGT(gti);
                universe.embedGT(gti, gt, mgts(gti).ToList());
                //                universe.gtData[gt].depth = gSources.getGTIDepth(gti);
            }
            public void embedGTT(GTTI gtti)
            {
                var gtt = getLGTT(gtti);
                universe.embedGTT(gtti, gtt, mgtts(gtti).ToList());
            }
            #endregion embed

            #region make terms
            public void getGTs()
            {
                guniverse.termRepository.getGroundTermStructure(this);
            }
            #endregion make terms

            #region ITermStructureTemplate implementation
            public IEnumerable<GTTI> mapGT(GTI gti, GT gt)
            {
                Debug.Assert(pModifiedGTIs.Contains(gti));
                Debug.Assert(!nlgtToGTIMap.ContainsKey(gt));
                Debug.Assert(!gtiToNLGTMap.ContainsKey(gti));
                Debug.Assert(!sources.getGTIMGTs(gti).Contains(gt));
                nlgtToGTIMap[gt] = gti;
                gtiToNLGTMap[gti] = gt;
                return new HashSet<GTTI>(
                    from gtti in getGTIActualSGTTIs(gti)
                    where getGTTIGTIs(gtti).All(sgti => !isGTIUnassigned(sgti))
                    select gtti);
            }
            public void mapGTT(GTTI gtti, GTT gtt)
            {
                Debug.Assert(pModifiedGTTIs.Contains(gtti));
                Debug.Assert(!nlgttToGTTIMap.ContainsKey(gtt));
                Debug.Assert(!gttiToNLGTTMap.ContainsKey(gtti));
                Debug.Assert(getGTTIGTIs(gtti).All(gti => !pModifiedGTIs.Contains(gti) || gtiToNLGTMap.ContainsKey(gti)));
                Debug.Assert(!sources.getGTTIMGTTs(gtti).Contains(gtt));
                nlgttToGTTIMap[gtt] = gtti;
                gttiToNLGTTMap[gtti] = gtt;
            }
            public void mapGTandSGTTs(GTI gti, GT gt, TermRepository repo)
            {
                var gttis = mapGT(gti, gt);
                foreach (var gtti in gttis)
                    mapGTT(gtti, repo.getGTT(from sgti in getGTTIGTIs(gtti) select getLGT(sgti), ui));
            }

            public int ui { get { return guniverse.index; } }
            public IEnumerable<Tuple<Function, GTTI>> getGTITemplate(GTI gti)
            {
                Debug.Assert(isGTIUnassigned(gti));
                return getGTIActualGFAs(gti);
            }
            public IList<GTTI> getGTTITemplate(GTTI gtti)
            {
                Debug.Assert(isGTTIUnassigned(gtti));
                return getGTTIGTIs(gtti);
            }
            #endregion ITermStructureTemplate implementation

            #region IEmbedTemplate implementation
            public GT getLGT(GTI gti)
            {
                GT lgt;
                if (gtiToNLGTMap.TryGetValue(gti, out lgt))
                    return lgt;
                else return gSources.getGTILGT(gti);
            }
            public GTT getLGTT(GTTI gtti)
            {
                GTT lgtt;
                if (gttiToNLGTTMap.TryGetValue(gtti, out lgtt))
                    return lgtt;
                else return gSources.getGTTILGTT(gtti);
            }
            public bool hasModifiedGTI(GTI gti) { return pModifiedGTIs.Contains(gti); }
            public bool hasModifiedGTTI(GTTI gtti) { return pModifiedGTTIs.Contains(gtti); }
            #endregion IEmbedTemplate implementation

            #region accessors
            public IEnumerable<GTI> modifiedGTIs { get { return pModifiedGTIs; } }
            public IEnumerable<GTTI> modifiedGTTIs { get { return pModifiedGTTIs; } }
            public bool isGTIUnassigned(GTI gti) { return pModifiedGTIs.Contains(gti) && !gtiToNLGTMap.ContainsKey(gti); }
            public bool isGTTIUnassigned(GTTI gtti) { return pModifiedGTTIs.Contains(gtti) && !gttiToNLGTTMap.ContainsKey(gtti); }
            public IEnumerable<GTI> unassignedGTIs { get { return from gti in pModifiedGTIs where !gtiToNLGTMap.ContainsKey(gti) select gti; } }
            public IEnumerable<GTTI> unassignedGTTIs { get { return from gtti in pModifiedGTTIs where !gttiToNLGTTMap.ContainsKey(gtti) select gtti; } }
            USourceStructureNG sources { get { return guniverse.gSourceStructure; } }
            private IEnumerable<Tuple<Function, GTTI>> getGTIActualGFAs(GTI gti)
            {
                return sources.getGTIActualGFAs(gti);
            }
            private IEnumerable<GTTI> getGTIActualSGTTIs(GTI gti)
            {
                return sources.getGTIActualSGTTIs(gti);
            }
            private IList<GTI> getGTTIGTIs(GTTI gtti)
            {
                return sources.getGTTIGTIs(gtti);
            }
            public IUNG guniverse { get { return universe; } }
            public USourceStructureNG gSources { get { return universe.gSourceStructure; } }
            public ISet<GT> mgts(GTI gti) { return gSources.getGTIMGTs(gti); }
            public ISet<GTT> mgtts(GTTI gtti) { return gSources.getGTTIMGTTs(gtti); }
            public int gtiDepth(GTI gti) { return gSources.getGTIDepth(gti); }
            public GT mgtToLGT(GT mgt)
            {
                GTI gti;
                if (gSources.tryGetLGTGTI(mgt, out gti))
                    return getLGT(gti);
                else
                    return mgt;
            }
            #endregion accessors

            #region members
            private IUNG universe;
            private readonly ISet<GTI> pModifiedGTIs = new HashSet<GTI>();
            private readonly ISet<GTTI> pModifiedGTTIs = new HashSet<GTTI>();

            private readonly IDictionary<GT, GTI> nlgtToGTIMap = new Dictionary<GT, GTI>();
            private readonly IDictionary<GTT, GTTI> nlgttToGTTIMap = new Dictionary<GTT, GTTI>();
            private readonly IDictionary<GTI, GT> gtiToNLGTMap = new Dictionary<GTI, GT>();
            private readonly IDictionary<GTTI, GTT> gttiToNLGTTMap = new Dictionary<GTTI, GTT>();
            #endregion members

            #region mutators
            public void addGTI(GTI gti)
            {
                pModifiedGTIs.Add(gti);
            }
            public void addGTTI(int gtti)
            {
                pModifiedGTTIs.Add(gtti);
            }
            #endregion mutators

            #region debug
            public virtual bool invariant()
            {
                //TODO 
                return true;
            }
            public bool checkSourcesBefore() { return sources.sourcesCompleteNoLGTs(); }
            /*            public virtual void check()
                        {
            #if DEBUG
                            Debug.Assert(checkSourcesBefore());
            #endif
                        }*/
            #endregion debug
        }
        protected virtual bool embedTermStructurePostCondition(IEmbedTemplate et)
        {
            return true;
        }
#if DEBUG
        private bool inEmbedTS = false;
#endif
        protected void embedTermStructure(IEmbedTemplate et)
        {
            Contract.Assert(et == null);
            Contract.Ensures(et!=null);
            Contract.Ensures(et== null);
            #region precondition
#if DEBUG
            inEmbedTS = true;
            Debug.Assert(invariant());
#endif

            #endregion precondition

            #region collect ground atomic formulae, assumed ground literals, assumed ground inequalities and non ground tuples
            var localGTMergeMap = new Dictionary<GT, GT>();
            foreach (var gti in et.modifiedGTIs)
                foreach (var mgt in et.mgts(gti))
                    localGTMergeMap[mgt] = et.getLGT(gti);
            var localGTTMergeMap = new Dictionary<GTT, GTT>();
            foreach (var gtti in et.modifiedGTTIs)
                foreach (var mgtt in et.mgtts(gtti))
                    localGTTMergeMap[mgtt] = et.getLGTT(gtti);

            var lgttSourceMap = new Dictionary<GTT, ISet<GTT>>();
            foreach (var gtti in et.modifiedGTTIs)
                lgttSourceMap[et.getLGTT(gtti)] = new HashSet<GTT>(et.mgtts(gtti));

            ///////////////////
            //ground atomic formulae, ground clauses and ground atoms
            var mergedGCs = new HashSet<GC>();
            var mergedGoalGCs = new HashSet<GC>();
            var mergedFCs = new HashSet<FC>();
            var mergedAssumedCs = new HashSet<IC>();

            var mergedAssumedGLs = new Dictionary<GTT, ISet<PP>>();
            var mergedGoalGLs = new Dictionary<GTT, ISet<PP>>();

            var mergedGAFs = new Dictionary<GTT, ISet<IPredicate>>();
            var mergedNSGAs = new Dictionary<GTT, ISet<PP>>();
            var mergedGAFFGAFs = new Dictionary<GTT, IDictionary<IPredicate, ISet<GAF>>>();

            var mergedOriginalClauses = new HashSet<IC>();
            var mergedImportedClauses = new HashSet<IC>();
            var mgcFGCs = new Dictionary<GC, ISet<GC>>();

            foreach (var gtti in et.modifiedGTTIs)
            {
                var gtt = et.getLGTT(gtti);
                var mgtts = et.mgtts(gtti);
                mergedGoalGLs[gtt] = new HashSet<PP>();
                mergedNSGAs[gtt] = new HashSet<PP>();
                mergedGAFFGAFs[gtt] = new Dictionary<IPredicate, ISet<GAF>>();
                mergedGAFs[gtt] = new HashSet<IPredicate>(
                    from mgtt in mgtts
                    from gaf in gttData[mgtt].sgafs.Keys
                    select gaf);

                var localAssumedGLs = new HashSet<GL>(
                    from mgtt in mgtts
                    from agabp in gttData[mgtt].assumedGLsByPredicate
                    select agabp.Value);
                Debug.Assert(!mergedAssumedGLs.ContainsKey(et.getLGTT(gtti)));
                mergedAssumedGLs[gtt] = new HashSet<PP>();
                #region assumedGAs
                if (localAssumedGLs.Count > 0)
                {
                    foreach (var agl in localAssumedGLs)
                    {
                        if (mergedAssumedGLs[gtt].Contains(agl.pp.n))
                        {
                            refute("ground atom " + agl.gaf.predicate.ToString(et.getLGTT(gtti)) + " is both positive and negative");
                            return;
                        }
                        mergedAssumedGLs[gtt].Add(agl.pp);
                        unAssume(agl);
                    }
                }
                #endregion assumedGAs
                foreach (var mgtt in mgtts)
                {
                    var mgafs = new List<GAF>(gttData[mgtt].sgafs.Values);
                    foreach (var mgaf in mgafs)
                    {
                        ISet<GAF> mfgafs;
                        if (!mergedGAFFGAFs[gtt].TryGetValue(mgaf.predicate, out mfgafs))
                            mfgafs = mergedGAFFGAFs[gtt][mgaf.predicate] = new HashSet<GAF>();
                        ISet<GAF> fgafs;
                        if (gafFGAFs.TryGetValue(mgaf, out fgafs))
                        {
                            gafFGAFs.Remove(mgaf);
                            foreach (var fgaf in fgafs)
                            {
                                fgafCache[fgaf].Remove(mgaf);
                                mfgafs.Add(fgaf);
                            }
                        }

                        foreach (var b in trueFalse)
                        {
                            var mgl = mgaf.gLiteral(b);

                            if (clearGoal(mgl))
                                mergedGoalGLs[gtt].Add(mgl.pp);

                            if (!glData[mgl].canExpand)
                                mergedNSGAs[gtt].Add(mgl.pp);

                            foreach (var mgc in glData[mgl].gcs.ToList())
                            {
                                mergedGCs.Add(mgc);
                                if (clearOriginal(mgc))
                                    mergedOriginalClauses.Add(mgc);
                                if (clearGoal(mgc))
                                    mergedGoalGCs.Add(mgc);
                                if (isAssumed(mgc))
                                {
                                    unAssumeGC(mgc);
                                    mergedAssumedCs.Add(mgc);
                                }
                                ISet<GC> fgcs;
                                if (gcFGCs.TryGetValue(mgc, out fgcs))
                                {
                                    gcFGCs.Remove(mgc);
                                    mgcFGCs[mgc] = fgcs;
                                    foreach (var fgc in fgcs)
                                        fgcCache[fgc].Remove(mgc);
                                }
                                unembedGC(mgc);
                            }
                            var fcs = new List<FC>(glData[mgl].fcs);
                            mergedFCs.UnionWith(fcs);
                            var afcs = (from c in fcs where assumedClauses.Contains(c) select c).ToList();
                            mergedAssumedCs.UnionWith(afcs);
                            foreach (var fc in afcs)
                                queues.remove(fc);

                            foreach (var fc in fcs)
                            {
                                if (clearOriginal(fc))
                                    mergedOriginalClauses.Add(fc);
                                if (clearImported(fc))
                                    mergedImportedClauses.Add(fc);
                            }
                            foreach (var afc in afcs)
                                unAssume(afc);//embedTermStructure
                            foreach (var fc in fcs)
                                unembedFC(fc);

                            Debug.Assert(isOrphan(mgl));
                        }
                        Debug.Assert(mergedGAFs[gtt].Contains(mgaf.predicate));
                        Debug.Assert(isOrphan(mgaf)); //TODO check why
                        unembedGAF(mgaf);
                    }
                }
            }//foreach (var gtti in eTemplate.nGTTIs)
            ///////////////////
            //Ground inequalities
            var groundInequalityMap = new Dictionary<GT, ISet<GT>>();

            var goalGTIs = new List<GTI>();
            //(from gti in et.modifiedGTIs where et.mgts(gti).Any(goalGTs.Contains) select gti).ToList();

            foreach (var gti in et.modifiedGTIs)
            {
                var nlgt = et.getLGT(gti);
                Debug.Assert(!groundInequalityMap.ContainsKey(nlgt));
                groundInequalityMap[nlgt] = new HashSet<GT>();
                var isGoal = false;
                var mgts = et.mgts(gti);
                foreach (var mgt in mgts)
                {
                    var gtdata = gtData[mgt];
                    if (gtdata.isGoal)
                        isGoal = true;
                    if (mgt != nlgt)
                    {
                        foreach (var ieGT in gtdata.disequalities)
                        {

                            GTData gtiee;

                            if (gtData.TryGetValue(ieGT, out gtiee))
                                gtiee.disequalities.Remove(mgt);
                            var mie = et.mgtToLGT(ieGT); //tryGetMGTLGT(ieGT,out mie)) // tempGroundTermMergeMap.TryGetValue(ieGT, out mie))
                            if (nlgt == mie)
                            {
                                refute(nlgt.ToStringB() + " not equal to itself");
                                return;
                            }
                            groundInequalityMap[nlgt].Add(mie);
                        }
                        gtdata.disequalities.Clear();
                    }
                }
                if (isGoal)
                    goalGTIs.Add(gti);
            }

            ///////////////////
            //Non ground tuples
            var directSuperTuples = new HashSet<FTT>(
                from gti in et.modifiedGTIs
                where !et.mgts(gti).Contains(et.getLGT(gti))
                from mgt in et.mgts(gti)
                from st in gtData[mgt].sftts
                select st);
            #endregion collect ground atoms inequalities and non ground tuples

            #region embed ground terms
            #region consistency
#if DEBUG
            foreach (var gti in et.modifiedGTIs)
            {
                Debug.Assert(et.gtiDepth(gti) <= maxGTDepth);
                var gt = et.getLGT(gti);
                foreach (var mgt in et.mgts(gti))
                    foreach (var gfa in mgt.gfas)
                    {
                        GTT mgtt;
                        if (!localGTTMergeMap.TryGetValue(gfa.gtt, out mgtt))
                            mgtt = gfa.gtt;
                        Debug.Assert(gt.gfasByFunction[gfa.function].ContainsKey(mgtt));
                    }
            }
#endif
            #endregion consistency

            var localSuccessorRGTTs = new HashSet<GTT>();
            foreach (var gti in et.modifiedGTIs)
            {
                var gt = et.getLGT(gti);
                var mgts = new HashSet<GT>(et.mgts(gti));
                Debug.Assert(!mgts.Contains(gt));
                var isOriginalv = mgts.Any(isOriginal);
                var isInterestingv = mgts.Any(isInteresting);
                updateForeignCache(gt, mgts, gtFGTs, fgtCache);
                foreach (var mgt in mgts)
                {
                    removeGoal(mgt);
                    var mrgtts = getGTRGTTs(mgt).ToList();
                    foreach (var mrgtt in mrgtts)
                    {
                        var rgtt = igetGTT(from sgt in mrgtt.gtT select localGTMergeMap.ContainsKey(sgt) ? localGTMergeMap[sgt] : sgt);
                        #region debug
#if DEBUG
                        if (gttLogCond(this, rgtt))
                            Debug.WriteLine("LLLL {0,14}.removeRGTT({1})", this, rgtt.index);
                        if (gttBreakCond(this, rgtt))
                            Debugger.Break();
#endif
                        #endregion debug
                        localSuccessorRGTTs.Add(rgtt);
                        removeRGTT(mrgtt);
                    }
                }

                setMergedGT(gt, mgts);
                foreach (var mgt in mgts)
                {
                    Debug.Assert(mmGT(mgt) == gt);
                    gtData[mgt].sftts.Clear();
                    removeOriginal(mgt);
                    unembedGT(mgt);
                }

                et.embedGT(gti);

                queues.updateECGT(mgts, gt);

                if (isOriginalv)
                    addOriginal(gt);
                if (isInterestingv)
                    addInteresting(gt);
                //                setGTDepth(gt, et.gtiDepth(gti));
            }
            #endregion embed ground terms

            #region term consistency
#if DEBUG
            foreach (var gti in et.modifiedGTIs)
                foreach (var c in et.getLGT(gti).constants)
                    Debug.Assert(inScope(c));
#endif
            #endregion term consistency

            #region embed ground tuples
            var successorRejectedFunctionApplications = new Dictionary<GTT, ISet<Function>>();
            foreach (var gtti in et.modifiedGTTIs)
            {
                var gtt = et.getLGTT(gtti);
                #region consistency
#if DEBUG
                foreach (var gt in gtt.gtT)
                    Debug.Assert(upToDateGTMM(gt));
#endif
                #endregion consistency
                var mgtts = new HashSet<GTT>(et.mgtts(gtti));
                Debug.Assert(!mgtts.Contains(gtt));
                if (hasRGTT(gtt))
                    removeRGTT(gtt);
                else
                    localSuccessorRGTTs.Remove(gtt);
                {
                    var e = successorRejectedFunctionApplications[gtt] = new HashSet<Function>();
                    e.UnionWith(from mgtt in mgtts from ff in gttData[mgtt].rgfas select ff);
                }
                setMergedGTT(gtt, mgtts);
                et.embedGTT(gtti);

                updateForeignCache(gtt, mgtts, gttFGTTs, fgttCache);

                Debug.Assert(upToDateGTTMM(gtt));
                foreach (var mgtt in mgtts)
                    unembedGTT(mgtt);
            }
            #endregion embed ground tuples

            #region goal gts
            if (goalGTIs.Any())
                addGoalsRecursive(from gti in goalGTIs select et.getLGT(gti));
            #endregion goal gts

            #region new gts
            updateGTsLocalNewStatus(from gti in et.modifiedGTIs select et.getLGT(gti));
            #endregion new gts

            #region fix radii
            //            updateRadii((from nti in et.modifiedGTIs select et.getLGT(nti)).ToList());
            #region consistency
#if DEBUG
            foreach (var ngti in et.modifiedGTIs)
                foreach (var gfa in et.getLGT(ngti).gfas)
                    Debug.Assert(gttDepth(gfa.gtt) < Universe.maxGTDepth);
#endif
            #endregion consistency
            #endregion fix radii

            #region foreign and rejected tuples and terms
            foreach (var rgtt in localSuccessorRGTTs)
            {
                Debug.Assert(!hasGTTMM(rgtt));
                addRGTT(rgtt);
            }
            foreach (var rgfaKV in successorRejectedFunctionApplications)
                foreach (var f in rgfaKV.Value)
                {
                    if (!gttData[rgfaKV.Key].sgfas.ContainsKey(f))
                        addGTTRGFA(rgfaKV.Key, f);
                }

            #endregion foreign and rejected tuples and terms

            #region fix queues
            queues.updateMapECs(localGTMergeMap, localGTTMergeMap);
            /*            var newECs = (from ec in queues.getEquivalenceClasses() select new HashSet<GroundTermEC>(from gt in ec select gtMergeMap[gt])).ToList();
                        foreach (var newEC in newECs)
                            queues.enqueueEquivalenceClass(newEC);*/
#if DEBUG
            queues.checkECs();
#endif
            #endregion fix queues

            #region instantiation index
            instantiationIndex.update(localGTMergeMap, localGTTMergeMap);
            #endregion instantiation index

            #region assume ground inequalities
            foreach (var ieme in groundInequalityMap)
                foreach (var ie in ieme.Value)
                {
                    assumeGDE(ieme.Key, ie);
                    if (isRefuted)
                        return;
                }
            #endregion assume ground inequalities

            #region embed gafs
            foreach (var gtti in et.modifiedGTTIs)
            {
                var gtt = et.getLGTT(gtti);
                //                var mgtts = et.mgtts(gtti);
                //                Debug.Assert(!mgtts.Contains(gtt));
                foreach (var p in mergedGAFs[gtt])
                {
                    var gaf = makeGAF(p, gtt);
                    foreach (var fgaf in mergedGAFFGAFs[gtt][p])
                    {
                        fgafCache[fgaf].Add(gaf);
                        gafFGAFs.insert(gaf, fgaf);
                    }
                }
            }
            #endregion embed gafs

            #region assume ground atoms

            if (trueGAF == null)
                trueGAF = makeGAF(TruePredicate.get, emptyGTT);
            if (!gttData[emptyGTT].sgafs.ContainsKey(trueGAF.predicate))
                embedGAF(trueGAF);

            foreach (var gttKV in mergedAssumedGLs)
                foreach (var pp in gttKV.Value)
                {
                    var gtt = gttKV.Key;
                    var ga = makeGL(pp, gtt, false);

                    if (!isTrue(ga))
                    {
                        assume(ga);
                        if (isRefuted)
                            return;
                    }
                }
            #endregion assume ground inequalities

            #region mark no-saturate ground atoms
            var nsGAs = (
                from gttKV in mergedNSGAs
                from pp in gttKV.Value
                select makeGL(pp, gttKV.Key, false)
                 ).ToList();
#if DEBUG
            foreach (var ga in nsGAs)
                Debug.Assert(upToDate(ga));
#endif

            markAsNoExpandSaturate(nsGAs);
            #endregion mark no-saturate ground atoms

            #region mark goal ground atoms
            var goalAtoms = (
                from gttKV in mergedGoalGLs
                from pp in gttKV.Value
                select makeGL(pp, gttKV.Key, false)
                 ).ToList();
#if DEBUG
            foreach (var ga in goalAtoms)
                Debug.Assert(upToDate(ga));
#endif

            addGoalRecursive(goalAtoms);
            #endregion mark goal ground atoms

            #region assume ground clauses
            foreach (var mgc in mergedGCs)
            {
                var ngas = new List<GL>();
                foreach (var ga in mgc.gls)
                {
                    var gtt = ga.gaf.gtt;
                    var ngtt = merge(ga.gaf.gtt);
                    Debug.Assert(upToDateGTTMM(ngtt));
                    var gaf = makeGAF(ga.gaf.predicate, ngtt);
                    var nga = gaf.gLiteral(ga.polarity);
                    Debug.Assert(glData.ContainsKey(nga));
                    ngas.Add(nga);
                }
                var gc = makeGC(ngas, mergedGoalGCs.Contains(mgc));
                ISet<GC> fgcs;
                if (mgcFGCs.TryGetValue(mgc, out fgcs))
                {
                    foreach (var fgc in fgcs)
                    {
                        fgcCache[fgc].Add(gc);
                        gcFGCs.insert(gc, fgc);
                    }
                }
                if (mergedAssumedCs.Contains(mgc))
                {
                    if (gc.isFalse)
                    {
                        refute(mgc.ToStringB() + " evaluates to false");
                        return;
                    }
                    if (mergedOriginalClauses.Contains(mgc))
                        setOriginal(gc);
                    if (mergedGoalGCs.Contains(mgc))
                        setGoal(gc);
                    assume(gc);
                    if (isRefuted)
                        return;
                }
            }
            #endregion assume ground clauses

            #region embed non ground tuples
            var mergedFFAs = new HashSet<FFA>();
            var affectedFTTs = new HashSet<FTT>(directSuperTuples);
            {
                var faQueue = new Queue<FTT>(directSuperTuples);
                while (faQueue.Any())
                {
                    var tt = faQueue.Dequeue();
                    mergedFFAs.UnionWith(fttData[tt].sffas.Values);
                    foreach (var fa in fttData[tt].sffas.Values)
                        foreach (var stt in ffaData[fa].sftts)
                            if (affectedFTTs.Add(stt))
                                faQueue.Enqueue(stt);
                }
            }

            //TODO - this can be done better - not precalc all set and lazy up
            var fttMissingTerms = new Dictionary<FTT, ISet<FFA>>();
            foreach (var tt in affectedFTTs)
                fttMissingTerms[tt] = new HashSet<FFA>(from t in tt where (t is FFA) && mergedFFAs.Contains(t as FFA) select t as FFA);

            var fttQueue = new Queue<FTT>(from tt in directSuperTuples where !fttMissingTerms[tt].Any() select tt);

            var mergedFAFs = new Dictionary<FTT, ISet<IPredicate>>();
            var mergedFAFFFafs = new Dictionary<FTT, IDictionary<IPredicate, ISet<FAF>>>();
            //            var mergedAssumedFLs = new Dictionary<FTT, IDictionary<IPredicate, bool>>();

#if DEBUG
            var wasInQueue = new HashSet<FTT>(fttQueue);
            var processedFAS = new HashSet<FFA>();
#endif
            var fttMergeMap = new Dictionary<FTT, FTT>();
            while (fttQueue.Any())
            {
                var mftt = fttQueue.Dequeue();
                Debug.Assert(!fttMergeMap.ContainsKey(mftt));
                var ftt = makeFTT(from t in mftt select merge(fttMergeMap, t));
                {
                    if (mftt != ftt)
                    {
                        fttMergeMap[mftt] = ftt;

                        var fftts = new HashSet<FTT>();
                        updateForeignCacheP1(mftt, fttFFTTs, ffttCache, fftts);
                        updateForeignCacheP2A(ftt, fttFFTTs, ffttCache, fftts);
                    }

                    ISet<IPredicate> afe;
                    if (!mergedFAFs.TryGetValue(ftt, out afe))
                        mergedFAFs[ftt] = afe = new HashSet<IPredicate>();
                    IDictionary<IPredicate, ISet<FAF>> ffafe;
                    if (!mergedFAFFFafs.TryGetValue(ftt, out ffafe))
                        mergedFAFFFafs[ftt] = ffafe = new Dictionary<IPredicate, ISet<FAF>>();
                    //                    afe.UnionWith(from mfaf in fttInfo[mftt].incomingFAFs.Values select mfaf.predicate);
                    foreach (var mfaf in fttData[mftt].sfafs.Values)
                    {
                        afe.Add(mfaf.predicate);
                        ISet<FAF> ffafs;
                        if (!ffafe.TryGetValue(mfaf.predicate, out ffafs))
                            ffafs = ffafe[mfaf.predicate] = new HashSet<FAF>();
                        updateForeignCacheP1(mfaf, fafFFAFs, ffafCache, ffafs);
                    }

                    var tempFAFs = new List<FAF>(fttData[mftt].sfafs.Values);
                    foreach (var oaf in tempFAFs)
                    {
                        foreach (var fc in fafData[oaf].allSFCs.ToList())
                            if (hasFC(fc))

                        {
                            mergedFCs.Add(fc);
                            if (clearOriginal(fc))
                                mergedOriginalClauses.Add(fc);
                            if (clearImported(fc))
                                mergedImportedClauses.Add(fc);
                            if (isAssumed(fc))
                            {
                                mergedAssumedCs.Add(fc);
                                unAssume(fc);//embedTermStructure
                            }
                            unembedFC(fc);
                        }
                        unembedFAF(oaf);
                    }
                    var tempFAs = new List<FFA>(fttData[mftt].sffas.Values);
                    foreach (var fa in tempFAs)
                    {
#if DEBUG
                        processedFAS.Add(fa);
#endif
                        Debug.Assert(fa.ftt == mftt);
                        if (mftt != ftt)
                            makeFFA(fa.function, ftt);
                        foreach (var sftt in ffaData[fa].sftts)
                        {
                            Debug.Assert(fttMissingTerms[sftt].Contains(fa));
                            fttMissingTerms[sftt].Remove(fa);
                            if (!fttMissingTerms[sftt].Any())
                            {
#if DEBUG
                                wasInQueue.Add(sftt);
#endif
                                fttQueue.Enqueue(sftt);
                            }
                        }
                        if (mftt != ftt)
                            unembedFFA(fa);
                    }
                    if (mftt != ftt)
                        unembedFTT(mftt);
                }
            }
            Debug.Assert(fttMissingTerms.All(tmt => !tmt.Value.Any()));
            #endregion embed non ground tuples

            #region embed atomic formulae
            foreach (var kv in mergedFAFs)
                foreach (var predicate in kv.Value)
                {
                    var faf = makeFAF(predicate, kv.Key);
                    updateForeignCacheP2A(faf, fafFFAFs, ffafCache, mergedFAFFFafs[kv.Key][predicate]);
                }
            #endregion embed atomic formulae

            #region assume non ground atoms
            /*            foreach (var ttKV in mergedAssumedFLs)
                            foreach (var a in ttKV.Value)
                            {
                                var fa = fttData[ttKV.Key].sfafs[a.Key].fAtom(a.Value);
                                assume(fa);
                                if (isRefuted)
                                    return;
                                if (mergedOriginalAtoms[ttKV.Key].Contains(a))
                                    addOriginal(fa);
                            }*/
            #endregion assume non ground atoms

            #region assume free clauses
            #region ground clause consistency
#if DEBUG
            /*
            foreach (var acap in assumedClauseAtomsByPredicateAndPolarity.Values)
                foreach (var aca in acap.Values)
                    foreach (var ca in aca)
                        if (!clauses.Contains(ca.clause))
                        foreach (var a in ca.clause)
                        {
                            if (a is GroundAtomEC)
                            {
                                Debug.Assert(upToDate(a.formula.arguments));
                                if (!(a.formula.predicate is TruePredicate))
                                {
                                    var ga = a as GroundAtomEC;
                                    Debug.Assert(upToDate(ga));
                                    if (ca.clause is GroundClauseEC)
                                    {
                                        var gc = ca.clause as GroundClauseEC;
                                        Debug.Assert(gcByGAMap[ga].Contains(gc));
                                    }
                                    else
                                        Debug.Assert(clauseByGroundAtomMap[a as GroundAtomEC].Contains(ca.clause));
                                }
                            }
                            else
                            {
                                foreach (var t in a.formula.arguments)
                                {
                                    if (t is GroundTermEC)
                                    {
                                        var gt = t as GroundTermEC;
                                        Debug.Assert(upToDateGTMM(gt));
                                        Debug.Assert(gtSuperTuples[gt].Contains(a.formula.arguments));
                                    }
                                    else if (t is FunctionApplicationEC)
                                    {
                                        var fa = t as FunctionApplicationEC;
                                        Debug.Assert(fa.arguments == tupleMergeMap[fa.arguments]);
                                        Debug.Assert(functionApplicationSuperTuples[fa].Contains(a.formula.arguments));
                                    }
                                }
                                Debug.Assert(upToDate(a.formula.arguments));
                            }
                        }*/
            //removed for performance
#endif
            #endregion ground clause consistency

            var fcInverseMergeMap = new Dictionary<FC, ISet<FC>>();
            foreach (var mfc in mergedFCs)
            {
                var fc = makeFC((from a in mfc select merge(fttMergeMap, a)).ToList());
                Debug.Assert(fc.ToStringN() != mfc.ToStringN());
                if (mergedOriginalClauses.Contains(mfc))
                    setOriginal(fc);
                if (mergedImportedClauses.Contains(mfc))
                    setImported(fc);
                fcInverseMergeMap.insert(fc, mfc);
                if (mergedAssumedCs.Contains(mfc))
                {
                    assumeFC(fc);
                    if (isRefuted)
                        return;
                }
            }

            foreach (var kv in fcInverseMergeMap)
                updateForeignCache(kv.Key, kv.Value, fcFFCs, ffcCache);

            #region ground clause consistency
#if DEBUG
            /*            foreach (var gtKV in gtMergeMap)
                if (gtKV.Key == gtKV.Value)
                {
                    foreach (var tt in gtSuperTuples[gtKV.Key])
                    {
                        Debug.Assert(upToDate(tt));
                        foreach (var af in tupleIncomingAtomicFormulaeByPredicate[tt].Values)
                        {
                            Debug.Assert(upToDate(af));
                            foreach (var b in trueFalse)
                                foreach (var c in clauseByAtomMap[af.atomEC(b)])
                                    Debug.Assert(upToDate(c));
                        }
                    }
                    foreach (var gtt in gtSuperGTTs[gtKV.Key])
                    {
//                        Debug.Assert(upToDate(gtt));
                        foreach (var gaf in gttIncomingGAFs[gtt].Values)
                        {
                            Debug.Assert(upToDate(gaf));
                            foreach (var b in trueFalse)
                            {
                                foreach (var c in clauseByGroundAtomMap[gaf.gAtom(b)])
                                    Debug.Assert(upToDate(c));
                                foreach (var gc in gcByGAMap[gaf.gAtom(b)])
                                    Debug.Assert(upToDate(gc));
                            }
                        }
                    }
                }
            foreach (var tKV in tupleMergeMap)
                if (tKV.Key==tKV.Value)
                    foreach (var af in tupleIncomingAtomicFormulaeByPredicate[tKV.Key].Values)
                    {
                        Debug.Assert(upToDate(af));
                        foreach (var b in trueFalse)
                        {
                            foreach (var c in clauseByAtomMap[af.atomEC(b)])
                                Debug.Assert(upToDate(c));
                        }
                    }

            foreach (var a in this.assumedAtoms)
                Debug.Assert(upToDate(a));
            foreach (var c in this.assumedClauses)
                Debug.Assert(upToDate(c));
            foreach (var acap in assumedClauseAtomsByPredicateAndPolarity.Values)
                foreach (var aca in acap.Values)
                    foreach (var ca in aca)
                        foreach (var a in ca.clause)
                        {
                            if (a is GroundAtomEC)
                            {
                                Debug.Assert(upToDate(a.formula.arguments));
                                if (!(a.formula.predicate is TruePredicate))
                                {
                                    var ga = a as GroundAtomEC;
                                    Debug.Assert(upToDate(ga));
                                    if (ca.clause is GroundClauseEC)
                                    {
                                        var gc = ca.clause as GroundClauseEC;
                                        Debug.Assert(gcByGAMap[ga].Contains(gc));
                                    }
                                    else
                                        Debug.Assert(clauseByGroundAtomMap[a as GroundAtomEC].Contains(ca.clause));
                                }
                            }
                            else
                            {
                                Debug.Assert(upToDate(a.formula.arguments));
                                foreach (var t in a.formula.arguments)
                                {
                                    if (t is GroundTermEC)
                                    {
                                        var gt = t as GroundTermEC;
                                        //                                        Debug.Assert(groundTermSuperTuples[gt].Contains(a.formula.arguments));
                                        Debug.Assert(gtSuperTuples[gt].Contains(a.formula.arguments));
                                    }
                                }
                            }
                        }*/
            //removed for performance
#endif
            #endregion ground clause consistency

            #endregion assume free clauses

            #region join consistency
#if DEBUG
            Debug.Assert(embedTermStructurePostCondition(et));
#endif
            #endregion join consistency

            #region queues consistency
#if DEBUG
            /*            foreach (var ec in queues.equivalenceClasses)
                foreach (var gt in ec)
                    Debug.Assert(groundTermMergeMap[gt]==gt);*/
#endif
            #endregion queues consistency

            #region update foreign caches
            //            updateForeignCaches(localGTMergeMap,localGTTMergeMap);
            #endregion update foreign caches

            #region postconditions
#if DEBUG
#if INVARIANTS
            Debug.Assert(invariant());
            Debug.Assert(sourcesComplete());
#endif
            inEmbedTS = false;
#endif
            #endregion postconditions
        }
        private void updateForeignCacheP1<T>(T mt, IDictionary<T, ISet<T>> tFTs, IDictionary<T, ISet<T>> ftCache, ISet<T> ntFTs)
        {
            ISet<T> mtFTs;
            if (tFTs.TryGetValue(mt, out mtFTs))
            {
                ntFTs.UnionWith(mtFTs);
                tFTs.Remove(mt);
                foreach (var ft in mtFTs)
                {
                    Debug.Assert(ftCache[ft].Contains(mt));
                    ftCache[ft].Remove(mt);
                }
            }
        }
        private void updateForeignCache<T>(T t, ISet<T> mts, IDictionary<T, ISet<T>> tFTs, IDictionary<T, ISet<T>> ftCache)
        {
            Debug.Assert(!mts.Contains(t));
            if (!mts.Any() || ReferenceEquals(mts.First(), t))
                return;
            var ntFTs = new HashSet<T>();
            foreach (var mt in mts)
                updateForeignCacheP1<T>(mt, tFTs, ftCache, ntFTs);
            updateForeignCacheP2<T>(t, tFTs, ftCache, ntFTs);
        }
        private static void updateForeignCacheP2A<T>(T t, IDictionary<T, ISet<T>> tFTs, IDictionary<T, ISet<T>> ftCache, ISet<T> ntFTs)
        {
            if (!ntFTs.Any())
                return;
            ISet<T> e;
            if (!tFTs.TryGetValue(t, out e))
                e = tFTs[t] = ntFTs;
            else
                e.UnionWith(ntFTs);
            foreach (var ft in ntFTs)
                ftCache[ft].Add(t);
        }
        private static void updateForeignCacheP2<T>(T t, IDictionary<T, ISet<T>> tFTs, IDictionary<T, ISet<T>> ftCache, ISet<T> ntFTs)
        {
            Debug.Assert(!tFTs.ContainsKey(t));
            tFTs[t] = ntFTs;
            foreach (var ft in ntFTs)
                ftCache[ft].Add(t);
        }
        /*private void updateRadii(IEnumerable<GT> gts)
        {
            var nngts = new HashSet<GT>(gts);
            var radiiQueue = new Queue<GT>();
            foreach (var gt in gts)
                radiiQueue.Enqueue(gt);
            while (radiiQueue.Any())
            {
                var ngt = radiiQueue.Dequeue();
                var oldR = gtDepth(ngt);
                setGTDepth(ngt);
                Debug.Assert(gtDepth(ngt) <= oldR);
                if (nngts.Contains(ngt) || gtDepth(ngt) < oldR)
                {
                    foreach (var sgtt in gtData[ngt].sgtts)
                        foreach (var sgfa in gttData[sgtt].sgfas.Values)
                            if (!radiiQueue.Contains(sgfa.gt))
                                radiiQueue.Enqueue(sgfa.gt); //todo more efficient
                }
                nngts.Remove(ngt);
            }
        }*/
        protected IT merge(IDictionary<FTT, FTT> fttMM, IT t)
        {
            if (t is GT)
                return mmGT(t as GT);
            else if (t is FFA)
                return fttData[merge(fttMM, (t as FFA).ftt)].sffas[(t as FFA).function];
            else //variable
                return t;
        }
        protected IL merge(IDictionary<FTT, FTT> fttMM, IL a)
        {
            if (a is GL)
                return merge(a as GL);
            else
                return merge(fttMM, a as FL);
        }
        protected FL merge(IDictionary<FTT, FTT> fttMM, FL fa)
        {
            return fttData[merge(fttMM, fa.faf.ftt)].sfafs[fa.faf.predicate].fLiteral(fa.polarity);
        }
        protected GL merge(GL gl)
        {
            var mgtt = mmGTT(gl.gaf.gtt);
            Debug.Assert(upToDateGTTMM(mgtt));
            if (gl.isEQOrDE)
                if (!isSorted(mgtt.gtT[0], mgtt.gtT[1]))
                    return makeGL(gl.pp, mgtt.gtT[1], mgtt.gtT[0]);
            //                mgtt = sort(mgtt);
            return gttData[mgtt].sgafs[gl.gaf.predicate].gLiteral(gl.polarity);
        }
        protected GTT merge(GTT gtt)
        {
            Debug.Assert(upToDateGTTMM(mmGTT(gtt)));
            return mmGTT(gtt);
        }
        protected FTT merge(IDictionary<FTT, FTT> fttMM, FTT ftt)
        {
            FTT result;
            if (!fttMM.TryGetValue(ftt, out result))
                result = ftt;
            return result;
        }
        internal GL transitiveMerge(GL ga)
        {
            return transitiveMerge(ga.gaf).gLiteral(ga.polarity);
        }
        private GAF transitiveMerge(GAF gaf)
        {
            return gttData[transitiveMerge(gaf.gtt)].sgafs[gaf.predicate];
        }
        #endregion merge

        #region revisions
        internal int currentRevision { get { return revisionList.Count; } }
        internal int lastMergeRevision = -1;
        internal void addRevision()
        {
            var r = revisionList.Last();
            //            if (r.any)
            revisionList.Add(new Revision());
        }
        internal Revision getRevision(int lastRevisionNum, out int lastRevision)
        {
#if DEBUG
#if INVARIANTS
                    Debug.Assert(sourcesComplete());
#endif
#endif
            Debug.Assert(lastRevisionNum >= 0);
            Debug.Assert(lastRevisionNum <= revisionList.Count);
            lastRevision = currentRevision;
            if (lastRevisionNum == revisionList.Count)
                return new Revision();
            var result = new Revision(revisionList[lastRevisionNum]);
            for (var i = lastRevisionNum + 1; i < revisionList.Count; i++)
            {
                result.update(revisionList[i]);
                #region consistency
#if DEBUG
                foreach (var ga in result.assumedUGCs)
                {
                    var gtt = ga.gaf.gtt;
                    var gttm = mmGTT(gtt);
                    Debug.Assert(gtt == gttm || gttRevisionMap[gttm] > i);
                }
#endif
                #endregion consistency
            }
            #region consistency
#if DEBUG
            foreach (var gt in result.gts.Keys)
                Debug.Assert(upToDateGTMM(gt));
            foreach (var gtt in result.gtts.Keys)
                Debug.Assert(upToDateGTTMM(gtt));
            foreach (var ga in result.assumedUGCs)
                Debug.Assert(upToDateGTTMM(ga.gaf.gtt));
#endif
            #endregion consistency
            addRevision();
            return result;
        }
        #endregion revisions

        #region mapping
        public override string ToString()
        {
            return "<" + index + ">";
        }
        public override bool Equals(object other)
        {
            return ReferenceEquals(this, other);
        }
        #endregion mapping

        #region dump
        internal static void clean()
        {
#if DEBUG
            m.Clear();
#endif
        }
        public bool isSaturated(GT gt)
        {
            return gtData[gt].instSaturatedRadius >= maxGTDepth;
        }
        public bool isSaturated(GL gl)
        {
            return glData[gl].isInstSat;
        }
        public abstract bool allPGTsSat(GT gt);
        public abstract bool allPGLsSat(GL gl);
        public abstract bool hasAllPreds(GTT gtt);
        public bool isNew(GTT gtt)
        {
            return gtt.gtT.Any(isNew) || !hasAllPreds(gtt);
        }
        protected bool hasPredecessorGL(Universe pu, PP pp, GTT mpgtt)
        {
            if (hasPredecessorGL1(pu, pp, mpgtt))
                return true;
            else
            {
                GTT pgtt;
                if (pp.predicate.isEquality && pu.termRepository.tryGetGTT(new[] { mpgtt.gtT[1], mpgtt.gtT[0] }, out pgtt))
                    return hasPredecessorGL1(pu, pp, pgtt);
            }
            return false;
        }
        protected bool hasPredecessorGL1(Universe pu, PP pp, GTT mpgtt)
        {
            GTT pgtt;
            GAF pgaf;
            return (pu.tryGetLGTT(mpgtt, out pgtt) &&
                pu.gttData[pgtt].sgafs.TryGetValue(pp.predicate, out pgaf) &&
                pu.glData[pgaf.gLiteral(pp.polarity)].isGoal &&
                pu.isSaturated(pgaf.gLiteral(pp.polarity)))
                ;
        }
        public abstract bool hasFullPGLs(GL gl);
        public bool isNewEq(GFA gfa1, GFA gfa2)
        {
            Debug.Assert(hasGT(gfa1.gt) && hasGT(gfa2.gt));
            if (gfa1 == gfa2)
                return false;
            if (!pus.Any())
                return true;
            if (gfa1.gt != gfa2.gt)
                return false;
            foreach (var pi in pis)
            {
                var pu = pus[pi];
                var pgts1 = getPGTs(pi, gfa1);
                var pgts2 = getPGTs(pi, gfa2);
                if (!pgts1.Intersect(pgts2).Any())
                    return true;
            }
            return false;
        }
        public ISet<GT> getPGTs(int pi, GFA gfa)
        {
            return new HashSet<GT>(from pgfa in getPGFAs(pi, gfa) select pgfa.gt);
        }
        private ISet<GFA> getPGFAs(int pi, GFA gfa)
        {
            var pu = pus[pi];
            return new HashSet<GFA>(
                from pgtt in getGTTPGTTs(pi, gfa.gtt)
                let pgt = pu.tryGetGFA(gfa.function, pgtt)
                where pgt != null
                select pgt);
        }
        public bool isNew(GL gl)
        {
            if (isNew(gl.gtt))
                return true;
            if (!hasFullPGLs(gl))
                return true;
            return false;
        }
        public abstract bool isSatInPreds(GL ga);
        public abstract bool isNew(GC gc);
        #endregion dump

        #region utilities
        public static bool[] trueFalse = new[] { false, true };
        private GC makeTrueClause()
        {
            return makeGC(new[] { trueGAF.gLiteral(true) });
        }
        private GC makeFalseClause()
        {
            return makeGC(new GL[0]);
        }
        public static void swap<T>(ref T t1, ref T t2)
        {
            var t = t1;
            t1 = t2;
            t2 = t;
        }
        public static IEnumerable<Function> lfss(IT t)
        {
            var gt = t as GT;
            if (gt != null)
                return gt.gfasByFunction.Keys;
            var fa = t as FFA;
            if (fa != null)
                return new[] { fa.function };
            return new Function[0];
        }
        public bool tryGetGEQNEGA(GT gt0, GT gt1, bool polarity, out GL geq)
        {
            var gtA = sort(gt0, gt1);
            var equality = Equality.get(gt0.type);
            GAF gaf;
            GTT gtt;
            GTTData gttI;
            if (termRepository.tryGetGTT(gtA, out gtt))
                if (gttData.TryGetValue(gtt, out gttI))
                    if (gttI.sgafs.TryGetValue(equality, out gaf))
                    {
                        geq = gaf.gLiteral(polarity);
                        return true;
                    }
            geq = null;
            return false;
        }
        protected string makeInequalityString(GT gt1, GT gt2)
        {
            return gt1.ToStringN() + "!=" + gt2.ToStringN();
        }
        private static ISet<LFSTT> makeLFSTTs(IEnumerable<GTT> gtts)
        {
            return new HashSet<LFSTT>(from gtt in gtts from lfstt in makeLFSTTs(gtt) select lfstt);
        }
        private static ISet<LFSTT> makeLFSTTs(GTT gtt)
        {
            var num = gtt.Count();
            var lfstSets = new ISet<Function>[num];
            for (var i = 0; i < num; i++)
                lfstSets[i] = new HashSet<Function>(gtt.gtT[i].gfasByFunction.Keys);
            var lfstAs = FU.makeOptions(lfstSets); //lfstts
            return new HashSet<LFSTT>(from lfstA in lfstAs select new LFSTT(lfstA));
        }
        #endregion utilities

        #region goals
        protected bool clearGoal(GL gl)
        {
            var result = glData[gl].setGoal(false);
            if (result)
                checkAddOrphan(gl);
            return result;
        }
        internal bool isGoal(GL gl) { return glData[gl].isGoal; }

        #region goal gts
        public bool isGoal(GT gt)
        {
            return gtData[gt].isGoal;
        }
        protected void addGoal(GT gt)
        {
            #region precondition
            Debug.Assert(upToDate(gt));
#if DEBUG
#endif
            #endregion precondition

            if (gtData[gt].setGoal())
                if (isInstSat(gt))
                    clearInstSat(gt);
        }
        private bool removeGoal(GT gt)
        {
            return gtData[gt].clearGoal();
        }
        internal void clearGoals()
        {
            foreach (var gtd in gtData.Values)
                gtd.clearGoal();
            foreach (var gld in glData.Values)
                gld.setGoal(false);
        }
        internal IEnumerable<GT> goalGTs { get { return new HashSet<GT>(from gtKV in gtData where gtKV.Value.isGoal select gtKV.Key); } }
        public int numGoalGTs { get { return goalGTs.Count(); } }
        #endregion goal gts

        #region new gts
        public bool isNew(GT gt)
        {
            return gtData[gt].isNew;
        }
        protected bool setNew(GT gt)
        {
            #region precondition
            Debug.Assert(upToDate(gt));
#if DEBUG
#endif
            #endregion precondition

            var r = gtData[gt].setNew();
            if (r && isInstSat(gt))
                clearInstSat(gt);
            return r;
        }
        private bool removeNew(GT gt)
        {
            return gtData[gt].removeNew();
        }
        internal ISet<GT> newGTs { get { return new HashSet<GT>(from gtKV in gtData where gtKV.Value.isNew select gtKV.Key); } }
        #endregion new gts

        #region new gfa gts
        public bool hasNewGFAs(GT gt)
        {
            return gtData[gt].isNew;
        }
        protected bool addNewGFA(GT gt)
        {
            #region precondition
            Debug.Assert(upToDate(gt));
#if DEBUG
#endif
            #endregion precondition

            var r = gtData[gt].addNewGFA();
            return r;
        }
        private bool removeNewGFA(GT gt)
        {
            return gtData[gt].removeNewGFA();
        }
        internal ISet<GT> gtsWithNewGFAs { get { return new HashSet<GT>(from gtKV in gtData where gtKV.Value.hasNewGFA select gtKV.Key); } }
        #endregion new gfa gts


        private void setGoal(GL gl)
        {
            #region consistency
            Debug.Assert(upToDate(gl));
            #endregion consistency
            var gld = glData[gl];
            gld.setGoal(true);
            if (gld.isInstSat && gld.isAssumed && isNew(gl))
                clearInstSat(makeGC(gl));
            removeOrphan(gl);
        }
        protected bool addGoalRecursive(GT gt)
        {
            if (isGoal(gt))
                return false;
            addGoalsRecursive(new GC[0], new GL[0], new[] { gt });
            return true;
        }
        protected void addGoalsRecursive(IEnumerable<GT> gts)
        {
            if (gts.Any())
                addGoalsRecursive(new GC[0], new GL[0], gts);
        }
        protected bool addGoalRecursive(GL ga)
        {
            if (isGoal(ga))
                return false;
            addGoalsRecursive(new GC[0], new[] { ga }, new GT[0]);
            return true;
        }
        protected void addGoalsRecursive(IEnumerable<GL> gas)
        {
            addGoalsRecursive(new GC[0], gas, new GT[0]);
        }
        protected void addGoalRecursive(IEnumerable<GC> gcs)
        {
            addGoalsRecursive(gcs, new GL[0], new GT[0]);
        }
        internal void addGoalRecursive(IEnumerable<GL> gas)
        {
            addGoalsRecursive(new GC[0], gas, new GT[0]);
        }
        protected bool addGoalRecursive(GC gc)
        {
            if (isGoal(gc))
                return false;
            addGoalsRecursive(new[] { gc }, new GL[0], new GT[0]);
            return true;
        }
        private bool setGoal(GC gc)
        {
            Debug.Assert(upToDate(gc));
            return gcData[gc].setGoal();
        }
        private bool clearGoal(GC gc)
        {
            if (!hasGC(gc))
                return false;
            Debug.Assert(upToDate(gc));
            return gcData[gc].clearGoal();
        }
        private bool setInstSat(GC gc)
        {
            Debug.Assert(upToDate(gc));
            queues.remove(gc);
            if (gc.gls.Count == 1)
                glData[gc.gls[0]].setUGCInstSat(true);
            return gcData[gc].setInstSat(true);
        }
        private bool clearInstSat(GC gc)
        {
            Debug.Assert(upToDate(gc));
            if (gcData[gc].setInstSat(false))
            {
                queues.enqueue(gc);
                //                if (gc.gls.Count == 1)
                //                    glData[gc.gls[0]].setInstSat(false);
                return true;
            } else
                return false;
        }
        private bool setInstSat(FC fc)
        {
            if (!fcData.ContainsKey(fc))
                return false;
            Debug.Assert(upToDate(fc));
            queues.remove(fc);
            return fcData[fc].setSat(true);
        }
        internal void addGoalsRecursive(IEnumerable<GC> nrgcs, IEnumerable<GL> nrgas, IEnumerable<GT> nrgts)
        {
            #region consistency
#if DEBUG
            foreach (var gt in nrgts)
            {
                Debug.Assert(upToDateGTMM(gt));
                foreach (var sgt in gt.allGTs)
                    Debug.Assert(upToDateGTMM(sgt));
            }
#endif
            #endregion consistency
            if (nrgcs.Any() || nrgas.Any() || nrgts.Any())
            {
                var gcs = new HashSet<GC>(from gc in nrgcs where !isGoal(gc) select gc);
                var gas = new HashSet<GL>(from ga in nrgas.Union(from gc in gcs from ga in gc.gls select ga) where !isGoal(ga) select ga);
                var gts = new HashSet<GT>(from gt in nrgts.Union(from ga in gas from gt in ga.gaf.gtt.gtT select gt) where !isGoal(gt) from sgt in gt.allGTs where !isGoal(sgt) select sgt);
                #region consistency
#if DEBUG
                foreach (var gt in gts)
                    Debug.Assert(upToDateGTMM(gt));
#endif
                #endregion consistency
                if (gcs.Any() || gas.Any() || gts.Any())
                {
                    setGoalsPredecessorRecursive(gcs, gas, gts);
                    addGoals(gcs, gas, gts);
                }
            }
        }
        protected abstract void setGoalsPredecessorRecursive(IEnumerable<GC> gcs, IEnumerable<GL> gls, IEnumerable<GT> gts);
        protected void addGoals(IEnumerable<GC> gcs, IEnumerable<GL> gls, IEnumerable<GT> gts)
        {
            foreach (var gc in gcs)
                setGoal(gc);
            foreach (var gl in gls)
                setGoal(gl);
            foreach (var gt in gts)
                addGoal(gt);
        }
        #endregion goals

        #region originals
        #region gt
        public bool isOriginal(GT gt)
        {
            return gtData[gt].isOriginal; // originalGTs.Contains(gt);
        }
        protected void addOriginal(GT gt)
        {
            #region precondition
            Debug.Assert(upToDate(gt));
            #endregion precondition

            gtData[gt].addOriginal();
            //            originalGTs.Add(gt);
        }
        private void removeOriginal(GT gt)
        {
            gtData[gt].removeOriginal();
            //            originalGTs.Remove(gt);
        }
        internal void clearOriginalGTs() { }
        internal ISet<GT> originalGTs { get { return new HashSet<GT>(from gtKV in gtData where gtKV.Value.isOriginal select gtKV.Key); } }
        internal ISet<GT> allMRGTs { get { return new HashSet<GT>(from lfs in mapReadLFSs from gt in lfsToGTMap[lfs] select gt); } }


        public bool isInteresting(GT gt)
        {
            return gtData[gt].isInteresting;
        }
        protected void addInteresting(GT gt)
        {
            #region precondition
            Debug.Assert(upToDate(gt));
#if DEBUG
#endif
            #endregion precondition

            gtData[gt].addInteresting();
        }
        private void removeInteresting(GT gt)
        {
            gtData[gt].removeInteresting();
        }
        internal void clearInterestingGTs() { }
        internal ISet<GT> interestingGTs { get { return new HashSet<GT>(from gtKV in gtData where gtKV.Value.isInteresting select gtKV.Key); } }
        #endregion gt

        public bool isOriginal(IC ic)
        {
            return originalClauses.Contains(ic);
        }
        private bool setOriginal(IC ic)
        {
            if (ic.isGround)
                return setOriginal(ic as GC);
            else
                return setOriginal(ic as FC);
        }
        private bool setOriginal(GC gc)
        {
            Debug.Assert(hasGC(gc));
            gcData[gc].setOriginal();
            return originalClauses.Add(gc);
        }
        private bool setOriginal(FC fc)
        {
            Debug.Assert(hasFC(fc));
            originalClauses.Add(fc);
            return fcData[fc].setOriginal();
        }
        private bool clearOriginal(IC ic)
        {
            if (ic.isGround)
                return clearOriginal(ic as GC);
            else
                return clearOriginal(ic as FC);
        }
        private bool clearOriginal(GC gc)
        {
            if (!hasGC(gc))
                return false;
            Debug.Assert(hasGC(gc));
            gcData[gc].clearOriginal();
            return originalClauses.Remove(gc);
        }
        private bool clearOriginal(FC fc)
        {
            Debug.Assert(hasFC(fc));
            originalClauses.Remove(fc);
            return fcData[fc].clearOriginal();
        }

        /*protected bool isImported(GC gc)
        {
            return gcData[gc].isImported;
        }
        protected bool setImported(GC gc)
        {
            if (gcData[gc].setImported())
            {
                if (gc.gls.Count == 1)
                    glData[gc.gls[0]].setImported(true);
                return true;
            }
            else
                return false;
        }
        private bool clearImported(GC gc)
        {
            return gcData[gc].clearImported();
        }*/
        public bool isImported(FC fc)
        {
            return fcData[fc].isImported;
        }
        protected bool setImported(FC fc)
        {
            Debug.Assert(hasFC(fc));
            return fcData[fc].setImported();
        }
        private bool clearImported(FC fc)
        {
            return fcData[fc].clearImported();
        }
        protected bool isAxiom(FC fc)
        {
            return fcData[fc].isAxiom;
        }
        protected bool setAxiom(FC fc)
        {
            Debug.Assert(hasFC(fc));
            queues.remove(fc);
            spNewGenClauses.Remove(fc);
            return fcData[fc].setAxiom();
        }
        private bool removeAxiom(FC fc)
        {
            return fcData[fc].clearAxiom();
        }
        #endregion originals

        #region refute
        public bool isRefuted { get { return refuted; } }
        public string refuteReason = null;
#if DEBUG
        public static int numRefuted = 0;
#endif
        internal void refute(string why)
        {
            refuteInt(why);
            throw new RefuteException(this, why);
        }
        public void refuteInt(string why)
        {
#if DEBUG
            numRefuted++;
#endif
            Debug.Assert(!isRefuted);
            Debug.Assert(refuteReason == null);
            refuteReason = why;
            refuted = true;

            clearGoals();
            clearOriginalGTs();
            originalClauses.Clear();
            queues.clear();
            clearGCAfterRefute();
        }
        protected abstract void cleanupPredecessors();
        #endregion refute

        #region successors
        protected abstract void removeSources(GTT gtt);
        protected void addRGTT(GTT gtt)
        {
            #region precondition
#if DEBUG
            Debug.Assert(!hasGTTMM(gtt));
            foreach (var gt in gtt.gtT)
            {
                Debug.Assert(upToDateGTMM(gt));
                Debug.Assert(gtDepth(gt) < maxGTDepth);
            }
            if (gttLogCond(this, gtt))
                Debug.WriteLine("LLLL {0,14}.addRGTT([{1}]{2})", this, gtt.index, gtt.ToStringB());
            if (gttBreakCond(this, gtt))
                Debugger.Break();

#endif
            #endregion precondition
            if (rgtts.Add(gtt))
            {
                foreach (var gt in gtt.gtT)
                    gtData[gt].rgtts.Add(gtt);
            }
        }
        internal void removeRGTT(GTT gtt)
        {
            #region precondition
#if DEBUG
            Debug.Assert(hasRGTT(gtt));
            if (gttLogCond(this, gtt))
                Debug.WriteLine("LLLL {0,14}.removeRGTT([{1}]{2}))", this, gtt.index, gtt.ToStringB());
            if (gttBreakCond(this, gtt))
                Debugger.Break();
#endif
            #endregion precondition

            if (rgtts.Remove(gtt))
            {
                mapROWrgtts.Remove(gtt);
                foreach (var gt in gtt.gtT)
                    if (upToDateGTMM(gt))
                        gtData[gt].rgtts.Remove(gtt);
            }
        }
        protected bool addMAPRowRGTT(GTT gtt)
        {
            addRGTT(gtt);
            return mapROWrgtts.Add(gtt);
        }
        protected bool hasMAPRowRGTT(GTT gtt)
        {
            return mapROWrgtts.Contains(gtt);
        }
        internal bool hasRGTT(GTT tuple)
        {
            return rgtts.Contains(tuple);
        }
        internal int numRGTTs()
        {
            return rgtts.Count;
        }
        internal ISet<GTT> getGTRGTTs(GT gt)
        {
            return gtData[gt].rgtts;
        }
        internal bool tryGetGFA(Function f, GTT gtt, out GFA gfa)
        {
            Debug.Assert(upToDateGTTMM(gtt));
            return gttData[gtt].sgfas.TryGetValue(f, out gfa);
        }
        internal GFA tryGetGFA(Function f, GTT gtt)
        {
            GFA gfa;
            if (tryGetGFA(f, gtt, out gfa))
                return gfa;
            return null;
        }
        internal ISet<GT> getGTDisequalities(GT gt) { return gtData[gt].disequalities; }
        internal bool hasDisequality(GT gt0, GT gt1) { return gtData[gt0].disequalities.Contains(gt1); }
        internal IEnumerable<Function> getRGFAs(GTT gtt)
        {
            return gttData[gtt].rgfas;
        }
        internal bool hasRGFA(Function f, GTT gtt)
        {
            Debug.Assert(upToDateGTTMM(gtt));
            return gttData[gtt].rgfas.Contains(f);
        }
        internal bool hasGFA(Function f, GTT gtt)
        {
            Debug.Assert(upToDateGTTMM(gtt));
            return gttData[gtt].sgfas.ContainsKey(f);
        }
        internal GAF getGAFOrNull(IPredicate p, GTT gtt)
        {
            GAF gaf;
            if (gttData[gtt].sgafs.TryGetValue(p, out gaf))
                return gaf;
            else
                return null;
        }
        protected void addGTTRGFA(GTT gtt, Function f)
        {
            #region precondition
#if DEBUG
            Debug.Assert(upToDateGTTMM(gtt));
            Debug.Assert(!gttData[gtt].sgfas.ContainsKey(f));
            if (gfaLogCond(this, gtt, f))
                Debug.WriteLine("LLLL {0,14}.addRGFA({1},{2})", this, gtt.index, f.name);
            if (gttBreakCond(this, gtt))
                Debugger.Break();
#endif
            #endregion precondition
            gttData[gtt].rgfas.Add(f);
        }
        protected void removeGTTRGFA(GTT gtt, Function f)
        {
            #region precondition
#if DEBUG
            if (hasRGFA(f, gtt) && gfaLogCond(this, gtt, f))
                Debug.WriteLine("LLLL {0,14}.removeRGFA({1},{2})", this, gtt.index, f.name);
#endif
            #endregion precondition
            Debug.Assert(upToDateGTTMM(gtt));
            //            Debug.Assert(!gttInfo[gtt].incomingGFAs.ContainsKey(f));
            gttData[gtt].rgfas.Remove(f);
        }
        #endregion successors

        #region cleanup
        /*        private void cleanupNGs()
                {
                    if (!cleanupFreeKnob)
                        return;
                    clearImportCaches();
                    foreach (var fc in assumedFCs.ToList())
                        if (!isOriginal(fc) && !isImported(fc))
                            unAssume(fc);
                    foreach (var fa in assumedFLs.ToList())
                        if (!isOriginal(fa))
                            unAssume(fa);

                    ffcCache.Clear();
                    ffaCache.Clear();
                    ffafCache.Clear();
                    ffttCache.Clear();

                    queues.clearSets();
                }
                */
        #region cleanup debug
#if DEBUG
        protected virtual bool IAmClean()
        {
            #region non ground
            foreach (var ngc in allFCs)
            {
                Debug.Assert(isAssumed(ngc));
                Debug.Assert(isOriginal(ngc));
            }
            foreach (var fafd in fafData.Values)
                Debug.Assert(fafd.anySFCs);
            foreach (var ngtt in allFTTs)
                Debug.Assert(fttData[ngtt].sfafs.Any() || fttData[ngtt].sffas.Any());
            foreach (var vt in allFVTs)
                Debug.Assert(fvData[vt.variable].superFTTs.Any());
            #endregion non ground

            #region ground
            foreach (var gc in allGCs)
            {
                Debug.Assert(isAssumed(gc));
                Debug.Assert(isOriginal(gc));
                foreach (var ga in gc.gls)
                {
                    Debug.Assert(!isAssumed(ga) && !isAssumed(ga.gNegate) && !isFalse(ga) && !isTrue(ga));
                    foreach (var gc2 in allGCs)
                        if (gc2 != gc)
                            Debug.Assert(!subsumes(gc, gc2));
                }
            }

            foreach (var gaf in allGAFs)
            {
                Debug.Assert(
                    isAssumed(gaf.gLiteral(false)) ||
                    isAssumed(gaf.gLiteral(true)) ||
                    glData[gaf.gLiteral(false)].gcs.Count > 0 ||
                    glData[gaf.gLiteral(false)].fcs.Count > 0 ||
                    glData[gaf.gLiteral(true)].gcs.Count > 0 ||
                    glData[gaf.gLiteral(true)].fcs.Count > 0 ||
                    gaf == trueGAF
                    );
            }




            #endregion ground
            return true;
        }
#endif
        #endregion cleanup debug

        protected void clearGCAfterRefute()
        {
            Debug.Assert(isRefuted);

            foreach (var gc in assumedGCs.ToList())
                if (!isOriginal(gc) && !gc.gls.Any(ga => srs.isPathCondition(ga.predicate)))
                {
                    if (isGoal(gc))
                        clearGoal(gc);
                    if (isOriginal(gc))
                        clearOriginal(gc);
                    unAssumeGC(gc);
                    unembedGC(gc);
                }
        }
        private IList<GT> spCleanupPreGTs;
        private IList<GTT> spCleanupPreGTTs;
        private IList<GTT> spCleanupPreRGTTs;
        private IDictionary<GTT, ISet<Function>> spCleanupPreRGFAs;
        protected void recordForSPCleanup()
        {
            spCleanupPreGTs = allGTs.ToList();
            spCleanupPreGTTs = allGTTs.ToList();
            spCleanupPreRGTTs = allRGTTs.ToList();
            spCleanupPreRGFAs = new Dictionary<GTT, ISet<Function>>();
            foreach (var kv in gttData)
                foreach (var f in kv.Value.rgfas)
                    spCleanupPreRGFAs.insert(kv.Key, f);


        }
        protected void cleanupAfterSP()
        {
            #region fcs
            foreach (var fc in allFCs.ToList())
                if (isAxiom(fc))
                {
                    Debug.Assert(!isOriginal(fc));
                    if (isAssumed(fc))
                        unAssume(fc); //cleanupAfterSP
                    unembedFC(fc);
                }
            #endregion fcs
            cleanupFluff();
            removeOrphanPostGTsAndGTTs();
        }
        private void removeOrphanFCs()
        {
            foreach (var fc in allFCs.ToList())
                if (isOrphan(fc))
                    unembedFC(fc);
        }
        private void removeOrphanFAFs()
        {
            foreach (var faf in fafData.Keys.ToList())
                if (isOrphan(faf))
                    unembedFAF(faf);
        }
        private void removeOrphanFTsAndFTTs()
        {
            var todoFVTs = new List<FVT>(from kv in fvData where kv.Value.superFTTs.Count == 0 select kv.Value.vt);
            foreach (var fvt in todoFVTs)
                unembedFVT(fvt);
            var todoFFAs = new HashSet<FFA>(from kv in ffaData where kv.Value.sftts.Count == 0 select kv.Key);
            var todoFTTs = new List<FTT>(from kv in fttData where kv.Value.sfafs.Count + kv.Value.sffas.Count == 0 select kv.Key);
            while (todoFFAs.Count + todoFTTs.Count > 0)
            {
                foreach (var ftt in todoFTTs)
                {
                    unembedFTT(ftt);
                    foreach (var it in ftt)
                        if (!it.isGround)
                        {
                            var ffa = it as FFA;
                            if (ffa != null)
                            {
                                if (ffaData[ffa].sftts.Count == 0)
                                    todoFFAs.Add(ffa);
                            } else
                            {
                                var fvt = it as FVT;
                                if (fvData.ContainsKey(fvt.variable) && fvData[fvt.variable].superFTTs.Count == 0)
                                    unembedFVT(fvt);
                            }
                        }
                }
                todoFTTs.Clear();
                foreach (var ffa in todoFFAs)
                {
                    unembedFFA(ffa);
                    var ftt = ffa.ftt;
                    if (isOrphan(ftt)) // fttData[ftt].incomingFFAs.Count + fttData[ftt].sfafs.Count == 0)
                        todoFTTs.Add(ftt);
                }
                todoFFAs.Clear();
            }
            Debug.Assert(fvData.Values.All(fvd => fvd.superFTTs.Count > 0));
        }
        protected void removeOrphanGCs()
        {
            foreach (var gc in allGCs.ToList())
                if (isOrphan(gc))
                {
                    clearGoal(gc);
                    unembedGC(gc);
                }
        }
        private void removeOrphanGAFs()
        {
            foreach (var gaf in allGAFs.ToList())
                if (isOrphan(gaf))
                    unembedGAF(gaf);
        }
        private void removeOrphanPostGTsAndGTTs()
        {
            var preGTs = new HashSet<GT>(from gt in spCleanupPreGTs select transitiveMerge(gt));
            var preGTTs = new HashSet<GTT>(from gtt in spCleanupPreGTTs select transitiveMerge(gtt));

            foreach (var prgtt in spCleanupPreRGTTs)
                if (!hasRGTT(prgtt))
                {
                    var gtA = (from pgt in prgtt.gtT select transitiveMerge(pgt)).ToArray();
                    GTT gtt;
                    if (termRepository.tryGetGTT(gtA, out gtt) && gttData.ContainsKey(gtt))
                        preGTTs.Add(gtt);
                }
            foreach (var kv in spCleanupPreRGFAs)
            {
                var gtt = transitiveMerge(kv.Key);
                GFA gfa;
                foreach (var f in kv.Value)
                    if (gttData[gtt].sgfas.TryGetValue(f, out gfa))
                        preGTs.Add(gfa.gt);
            }
            spCleanupPreGTs = null;
            spCleanupPreGTTs = null;
            spCleanupPreRGFAs = null;
            spCleanupPreRGTTs = null;

            var todoGTs = new HashSet<GT>(from gt in allGTs where !preGTs.Contains(gt) where isOrphan(gt) select gt);
            var todoGTTs = new HashSet<GTT>(from gtt in allGTTs where !preGTTs.Contains(gtt) where isOrphan(gtt) select gtt);
            while (todoGTs.Count + todoGTTs.Count > 0)
            {
                foreach (var gtt in todoGTTs)
                {
                    removeCompletely(gtt);
                    foreach (var gt in gtt.gtT)
                        if (!preGTs.Contains(gt) && isOrphan(gt))
                            todoGTs.Add(gt);
                }
                todoGTTs.Clear();
                foreach (var gt in todoGTs)
                {
                    removeCompletely(gt);
                    foreach (var gtt in from gfa in gt.gfas select gfa.gtt)
                        if (!preGTTs.Contains(gtt) && isOrphan(gtt))
                            todoGTTs.Add(gtt);
                }
                todoGTs.Clear();
            }
        }

        private void removeCompletely(GT gt)
        {
            unembedHistory(gt, true);
            instantiationIndex.remove(gt);
            queues.removeGEQ(gt);
            unembedGT(gt);
            removeSources(gt);
            removeFromRM(gt);
            removeFromMM(gt);
        }

        protected void cleanupFluff()
        {
            removeOrphanFCs();
            removeOrphanFAFs();
            removeOrphanFTsAndFTTs();
            removeOrphanGCs();
            removeOrphanGAFs();
#if DEBUG
            foreach (var gaf in allGAFs)
                Debug.Assert(!isOrphan(gaf));
#endif
        }

        protected bool isOrphan(GC gc)
        {
            return
                !isOriginal(gc) &&
                !isAssumed(gc) &&
                //              !gcFGCs.ContainsKey(gc)&&
                (!isGoal(gc) || isGEQGNEGC(gc) || gc.isTrue)
                ;
        }
        protected bool isOrphanOld(GC gc)
        {
            return
                !isOriginal(gc)
                && !isAssumed(gc)
                && !gcFGCs.ContainsKey(gc)
                && (!isGoal(gc) || isGEQGNEGC(gc) || gc.isTrue)
                ;
        }
        private bool isGEQGNEGC(GC gc)
        {
            return gc.gls.Count == 1 && gc.gls.First().isEQOrDE;
        }
        private bool isOrphan(GL gl)
        {
            return
                gl.gaf != trueGAF &&
                gl.gaf != falseGAF &&
                glData[gl].fcs.Count == 0 &&
                glData[gl].gcs.Count == 0 &&
                !isAssumed(gl) &&
                !isGoal(gl)
                ;
        }

        public void markOnly()
        {
            markRepo();
            markPredecessors();
            clearSuccessorUsed();
        }

        public abstract bool needEqSync { get; }
        protected static bool predecessorNeedEqSync(Universe p, int plr)
        {
            var plmr = p.lastMergeRevision;
            var pcr = p.currentRevision;

            return (plr < plmr);
            /*            
                            for (var i = plr; i < pcr; i++)
                                if (p.revisionList[i].gts.Count + p.revisionList[i].gtts.Count > 0)
                                    return true;

                        return false;*/
        }

        public void cutCrap()
        {
            cutSourceCrap();
            #region consistency
#if DEBUG1
            Debug.Assert(sourcesComplete());
#endif
            #endregion consistency
            var nonCrapGTs = new HashSet<GT>(
                from gt in allGTs
                where !isCrap(gt)
                select gt);
            var nonCrapGTTs = new HashSet<GTT>(
                from gtt in allGTTs
                let gttd = gttData[gtt]
                where !isCrap(gtt)
                select gtt);
            foreach (var gtt in nonCrapGTTs)
                foreach (var gt in gtt.gtT)
                    nonCrapGTs.Add(gt);
            var todoDown = new HashSet<GT>(nonCrapGTs);
            while (todoDown.Count > 0)
            {
                var gt = todoDown.First();
                todoDown.Remove(gt);
                foreach (var gfa in gt.gfas)
                    if (nonCrapGTTs.Add(gfa.gtt))
                        foreach (var gt2 in gfa.gtt.gtT)
                            if (nonCrapGTs.Add(gt2))
                                todoDown.Add(gt2);
            }

            var todoGTs = new HashSet<GT>(allGTs.Except(nonCrapGTs));
            var todoGTTs = new HashSet<GTT>(allGTTs.Except(nonCrapGTTs));
            while (todoGTs.Count + todoGTTs.Count > 0)
            {
                foreach (var gt in todoGTs)
                {
                    Debug.Assert(isCrap(gt));
                    foreach (var rgtt in getGTRGTTs(gt).ToList())
                        removeRGTT(rgtt);
                    removeCompletely(gt);
                    foreach (var gfa in gt.gfas)
                    {
                        if (isCrap(gfa.gtt))
                            todoGTTs.Add(gfa.gtt);
                        else
                            addGTTRGFA(gfa.gtt, gfa.function);
                    }
                }
                todoGTs.Clear();
                foreach (var gtt in todoGTTs)
                {
                    Debug.Assert(isCrap(gtt));
                    instantiationIndex.remove(gtt);
                    removeCompletely(gtt);
                    var rgtt = true;
                    foreach (var gt in gtt.gtT)
                    {
                        if (isCrap(gt))
                        {
                            todoGTs.Add(gt);
                            rgtt = false;
                        }
                    }
                    if (rgtt)
                        addRGTT(gtt);
                }
                todoGTTs.Clear();
            }
#if DEBUG
            Debug.Assert(sourcesComplete());
#endif
        }

        protected abstract void cutSourceCrap();
        protected abstract bool hasPredecessors(GTT gtt);
        protected abstract bool hasPredecessors(GT gt);

        private bool isCrap(GT gt)
        {
            var gtd = gtData[gt];
            return
                !hasPredecessors(gt) &&
                !isOriginal(gt) &&
                !isInteresting(gt) &&
                gtd.sgtts.Count == 0 &&
                gtd.sftts.Count == 0 &&
                gt.gfas.Length == 1 &&
                gtd.disequalities.Count == 0 &&
                gtd.isSat;
        }

        private bool isCrap(GTT gtt)
        {
            var gttd = gttData[gtt];
            return !hasPredecessors(gtt) && gttd.sgafs.Count == 0 && gttd.sgfas.Count == 0;
        }


        public void markAndSweep(bool successorsComplete)
        {
            #region precondition
            Debug.Assert(addedGLs.Count == 0);
            Debug.Assert(addedGTs.Count == 0);
            Debug.Assert(!needEqSync);
            #endregion precondition

            cleanupUnusedGCsGAFsFCsFAFsFTTsFFAsFVTs();
            cleanupHistory();
            if (successorsComplete)
                removeOrphanSuccessorUnusedGTsAndGTTs();
            markRepo();
            markPredecessors();
            clearSuccessorUsed();
        }

        private void clearSuccessorUsed()
        {
            successorUsedGTs.Clear();
            successorUsedGTTs.Clear();
            successorUsedHGTs.Clear();
            successorUsedHGTTs.Clear();
            successorUsedGLRTCache.Clear();
        }


        private bool isPropagation(FC fc)
        {
            return false;
        }
        private bool isPropagation(GC gc)
        {
            return false;
        }
        private void cleanupUnusedGCsGAFsFCsFAFsFTTsFFAsFVTs()
        {
            foreach (var fc in assumedFCs.ToList())
                if (isPropagation(fc))
                    unAssume(fc);
            foreach (var gc in assumedGCs.ToList())
                if (isPropagation(gc))
                    unAssumeGC(gc);
            cleanupFluff();
        }

        public readonly ISet<GT> successorUsedGTs = new HashSet<GT>();
        public readonly IDictionary<GTT, ISet<Function>> successorUsedGTTs = new Dictionary<GTT, ISet<Function>>();

        public readonly ISet<GT> successorUsedHGTs = new HashSet<GT>();
        public readonly ISet<GTT> successorUsedHGTTs = new HashSet<GTT>();

        public readonly IDictionary<PP, ISet<GTT>> successorUsedGLRTCache = new Dictionary<PP, ISet<GTT>>();
        public void addSuccessorUsedGT(GT gt)
        {
            if (!upToDateGTMM(gt))
            {
                successorUsedHGTs.Add(gt);
                gt = transitiveMerge(gt);
            }
            successorUsedGTs.Add(gt);
        }
        public ISet<GT>[] filterAndTM(IEnumerable<IEnumerable<GT>> gtsT)
        {
            return (from gts in gtsT select new HashSet<GT>(from cgt in gts let gt = transitiveMerge(cgt) where inDepthBoundStrict(gt) select gt)).ToArray();
        }
        public void addSuccessorUsedGTTs(ISet<GT>[] gtsT, IEnumerable<Function> fs)
        {
            #region precondition
#if DEBUG
            foreach (var gts in gtsT)
                foreach (var gt in gts)
                {
                    Debug.Assert(hasGTMM(gt));
                    Debug.Assert(inDepthBoundStrict(gt));
                }
#endif
            #endregion precondition
            foreach (var gtt in from gtT in FU.makeOptions(gtsT) select getGTT(gtT))
                addSuccessorUsedGTT(gtt, fs);
        }
        public void addSuccessorUsedGTT(GTT gtt, IEnumerable<Function> fs)
        {
            #region precondition
#if DEBUG
            foreach (var gt in gtt.gtT)
            {
                Debug.Assert(hasGTMM(gt));
                Debug.Assert(inDepthBoundStrict(gt));
            }
#endif
            #endregion precondition

            if (!rgtts.Contains(gtt))
            {
                if (!hasGTTMM(gtt))
                {
                    var gtA = (from gt in gtt.gtT select transitiveMerge(gt)).ToArray();
                    if (!termRepository.tryGetGTT(gtA, out gtt))
                        Debug.Assert(false);
                    Debug.Assert(rgtts.Contains(gtt) || upToDateGTTMM(gtt));
                } else if (!upToDateGTTMM(gtt))
                {
                    successorUsedHGTTs.Add(gtt);
                    gtt = transitiveMerge(gtt);
                }
            }
            Debug.Assert(rgtts.Contains(gtt) || upToDateGTTMM(gtt));
            successorUsedGTTs.insert(gtt, fs);
        }
        public void addSuccessorUsedGLRTCache(PP pp, ISet<GTT> mgtts)
        {
            if (mgtts.Count == 0)
                return;
            var gtts = new HashSet<GTT>(from mgtt in mgtts select transitiveMerge(mgtt));
            //            Debug.Assert(getGLRTCache(pp).IsSupersetOf(gtts));
            successorUsedGLRTCache.insert(pp, gtts);
            foreach (var gtt in gtts)
                Debug.Assert(successorUsedGTTs.ContainsKey(gtt));
        }
        private void removeOrphanSuccessorUnusedGTsAndGTTs()
        {
            #region consistency
#if DEBUG1
            foreach (var fc in assumedFCs)
                Debug.Assert(isAssumed(fc));

            foreach (var fafd in fafData.Values)
                Debug.Assert(fafd.anySFCs);

            foreach (var ftt in ftts)
                Debug.Assert(fttData[ftt].sfafs.Count > 0 || fttData[ftt].sffas.Count > 0);


            foreach (var fv in fvs)
                Debug.Assert(fvData[fv.variable].superFTTs.Count > 0);

            foreach (var gc in gcs)
                Debug.Assert(isAssumed(gc) || isOriginal(gc)); //|| (originalGCs.Contains(gc) && gc.gls.Count==1 && gc.gls.First().isEQOrNE && !gc.gls.First().polarity));

            foreach (var gaf in gafs)
                Debug.Assert(glData[gaf.gLiteral(false)].isUsed || glData[gaf.gLiteral(true)].isUsed || gaf == trueGAF || gaf == falseGAF);

#endif
            #endregion consistency

            #region needed gts gtts
            #region roots
            var neededGTs = new HashSet<GT>();
            neededGTs.UnionWith(successorUsedGTs);
            var neededGTTs = new HashSet<GTT>();
            var neededRGTTs = new HashSet<GTT>();
            foreach (var kv in successorUsedGTTs)
            {
                var sgtt = kv.Key;
                #region consistency
#if DEBUG
                foreach (var gt in sgtt.gtT)
                    Debug.Assert(upToDateGTMM(gt));
#endif
                #endregion consistency

                if (hasGTTMM(sgtt))
                {
                    neededGTTs.Add(sgtt);
                    var fs = kv.Value;
                    foreach (var f in fs)
                    {
                        GFA gfa;
                        if (gttData[sgtt].sgfas.TryGetValue(f, out gfa))
                            neededGTs.Add(gfa.gt);
                    }

                } else
                    neededRGTTs.Add(sgtt);
            }

            foreach (var rgtt in allRGTTs.ToList())
                if (!neededRGTTs.Contains(rgtt))
                    removeRGTT(rgtt);

            foreach (var gaf in allGAFs)
                neededGTTs.Add(gaf.gtt);

            foreach (var pp in instantiationIndex.allPPs)
                neededGTTs.UnionWith(instantiationIndex.getPPGTTs(pp));

            foreach (var gtt in neededGTTs)
                foreach (var gt in gtt.gtT)
                    neededGTs.Add(gt);

            foreach (var ftt in allFTTs)
                foreach (var t in ftt)
                    if (t.isGround)
                        neededGTs.Add(t as GT);

            neededGTs.UnionWith(originalGTs);
            foreach (var gtKV in gtData)
                if (gtKV.Value.disequalities.Count > 0)
                    neededGTs.Add(gtKV.Key);

            neededGTs.UnionWith(queues.equivalenceGTs);
            neededGTs.UnionWith(queues.inEquivalenceGTs);
            #endregion roots

            var todo = new Queue<GT>(neededGTs);
            while (todo.Count > 0)
            {
                var gt = todo.Dequeue();
                Debug.Assert(neededGTs.Contains(gt));
                foreach (var gfa in gt.gfas)
                    if (neededGTTs.Add(gfa.gtt))
                        foreach (var sgt in gfa.gtt.gtT)
                            if (neededGTs.Add(sgt))
                                todo.Enqueue(sgt);
            }
            #endregion needed gts gtts

            #region remove unneeded
            removeUnneeded(neededGTs, neededGTTs);
            #endregion remove unneeded

            #region cleanup sources
            removeUnusedSources();
            #endregion cleanup sources

            clearSuccessorUsed();
        }
        protected abstract void removeUnusedSources();
#if DEBUG
        //        private readonly IDictionary<PP, IDictionary<GTT,bool>> shouldHadGLRTCache = new Dictionary<PP, IDictionary<GTT,bool>>();
#endif
        /*private bool shouldHaveGLRTCache(PP pp, GTT gtt)
        {
            var result = false;
            if (pp.predicate.isEquality &&
                pp.polarity &&
                gtt.gtT[0] != gtt.gtT[1] &&
                gtData[gtt.gtT[0]].disequalities.Contains(gtt.gtT[1]) &&
                !predecessorsHaveDisequality(gtt.gtT[0], gtt.gtT[1]) &&
                !queues.areUnequal(gtt.gtT[0], gtt.gtT[1])
                )
                result = true;
            else
            {
                GAF gaf;
                if (gttData[gtt].sgafs.TryGetValue(pp.predicate, out gaf))
                {
                    var gl = gaf.gLiteral(!pp.polarity);
                    result = glData[gl].isGoal && isSaturated(gl) && isNew(gl) && !isSatInPreds(gl);
                }
            }
            return result;
        }*/

        private void removeUnneeded(HashSet<GT> neededGTs, HashSet<GTT> neededGTTs)
        {
            #region consistency
#if DEBUG
            foreach (var gt in neededGTs)
                foreach (var gfa in gt.gfas)
                    Debug.Assert(neededGTTs.Contains(gfa.gtt));
            foreach (var gtt in neededGTTs)
                foreach (var gt in gtt.gtT)
                    Debug.Assert(neededGTs.Contains(gt));
#endif
            #endregion consistency

            var toRemoveGTs = new HashSet<GT>(allGTs.Except(neededGTs));
            var toRemoveGTTs = new HashSet<GTT>(allGTTs.Except(neededGTTs));

            foreach (var gt in toRemoveGTs)
                removeCompletely(gt);

            foreach (var gtt in toRemoveGTTs)
                removeCompletely(gtt);
#if DEBUG
            foreach (var gt in allMMGTs)
            {
                Debug.Assert(hasGTMM(mmGT(gt)));
                Debug.Assert(gtRevisionMap.ContainsKey(gt));
            }
            foreach (var gtt in allMMGTTs)
            {
                Debug.Assert(hasGTTMM(mmGTT(gtt)));
                Debug.Assert(gttRevisionMap.ContainsKey(gtt));
            }
#endif
        }

        private void removeCompletely(GTT gtt)
        {
            if (!gttData.ContainsKey(gtt))
                return;
            unembedHistory(gtt, true);
            instantiationIndex.remove(gtt);
            unembedGTT(gtt);
            removeSources(gtt);
            removeFromRM(gtt);
            removeFromMM(gtt);
        }

        protected abstract void markPredecessors();
        protected virtual void markRepo()
        {
            termRepository.usedFCs.UnionWith(allFCs);
            termRepository.usedFAFs.UnionWith(allFAFs);
            termRepository.usedFTTs.UnionWith(allFTTs);
            termRepository.usedFFAs.UnionWith(allFFAs);
            termRepository.usedFVs.UnionWith(allFVTs);

            termRepository.usedGCs.UnionWith(allGCs);
            termRepository.usedGAFs.UnionWith(allGAFs);
            termRepository.usedGTTs.UnionWith(allGTTs);
            termRepository.usedGTTs.UnionWith(allRGTTs);
            termRepository.usedGTs.UnionWith(allGTs);

            termRepository.usedGTs.UnionWith(sourceGTs);
            termRepository.usedGTTs.UnionWith(sourceGTTs);
        }

        private void cleanupHistory()
        {
            var toKeepGTs = new HashSet<GT>(sourceGTs.Union(successorUsedHGTs));
            var toKeepGTTs = new HashSet<GTT>(sourceGTTs.Union(successorUsedHGTTs));
            foreach (var gt in toKeepGTs)
                if (!upToDateGTMM(gt))
                    setGTMergeMap(gt, transitiveMerge(gt));
            foreach (var gtt in toKeepGTTs)
                if (!upToDateGTTMM(gtt))
                    setGTTMergeMap(gtt, transitiveMerge(gtt));

            for (var i = 0; i < revisionList.Count; i++)
            {
                var r = revisionList[i];
                #region gts
                foreach (var gtKV in r.gts.ToArray())
                {
                    var gt = gtKV.Key;
                    var ngt = transitiveMerge(gt);
                    ISet<GT> ogts;
                    if (r.orphanGTMap.TryGetValue(gt, out ogts))
                    {
                        foreach (var ogt in ogts.ToList())
                        {
                            if (toKeepGTs.Contains(ogt))
                            {
                                //                                Debug.Assert(!toKeepGTs.Contains(gt));
                                if (!upToDateGTMM(gt) && !toKeepGTs.Contains(gt))
                                {
                                    Debug.Assert(gtRevisionMap[ngt] > i);
                                    setGTMergeMap(ogt, ngt);
                                    revisionList[gtRevisionMap[ngt]].gts[ngt].Add(ogt);
                                    r.addGT(ogt, new GT[0]);
                                }
                            } else
                            {
                                removeFromRM(ogt);
                                removeFromMM(ogt);
                                ogts.Remove(ogt);
                            }
                        }
                        if ((!upToDateGTMM(gt) && !toKeepGTs.Contains(gt)) || r.orphanGTMap[gt].Count == 0)
                            r.orphanGTMap.Remove(gt);
                    }

                    if (!upToDateGTMM(gt))
                        if (toKeepGTs.Contains(gt))
                        {
                            Debug.Assert(mmGT(gt) == ngt);
                            var nr = gtRevisionMap[ngt];
                            Debug.Assert(nr > i);
                            revisionList[nr].gts[ngt].Add(gt);
                            gtKV.Value.Clear();
                        } else
                        {
                            Debug.Assert(!r.orphanGTMap.ContainsKey(gt));
                            var mgt = mmGT(gt);
                            revisionList[gtRevisionMap[mgt]].gts[mgt].Remove(gt);
                            removeFromRM(gt);
                            removeFromMM(gt);
                            r.gts.Remove(gt);
                        } else
                    {
#if DEBUG
                        foreach (var mgt in r.gts[gt])
                        {
                            Debug.Assert(toKeepGTs.Contains(mgt));
                            Debug.Assert(mmGT(mgt) == gt);
                        }
                        if (r.orphanGTMap.ContainsKey(gt))
                            foreach (var mgt in r.orphanGTMap[gt])
                            {
                                Debug.Assert(toKeepGTs.Contains(mgt));
                                Debug.Assert(mmGT(mgt) == gt);
                            }
#endif
                    }
                }
                #endregion gts

                #region gtts
                foreach (var gttKV in r.gtts.ToArray())
                {
                    var gtt = gttKV.Key;
                    var ngtt = transitiveMerge(gtt);
                    ISet<GTT> ogtts;
                    if (r.orphanGTTMap.TryGetValue(gtt, out ogtts))
                    {
                        foreach (var ogtt in ogtts.ToList())
                        {
                            if (toKeepGTTs.Contains(ogtt))
                            {
                                //                                Debug.Assert(!toKeepGTTs.Contains(gtt));
                                if (!upToDateGTTMM(gtt) && !toKeepGTTs.Contains(gtt))
                                {
                                    Debug.Assert(gttRevisionMap[ngtt] > i);
                                    setGTTMergeMap(ogtt, ngtt);
                                    revisionList[gttRevisionMap[ngtt]].gtts[ngtt].Add(ogtt);
                                    r.addGTT(ogtt, new GTT[0]);
                                }
                            } else
                            {
                                removeFromRM(ogtt);
                                removeFromMM(ogtt);
                                ogtts.Remove(ogtt);
                            }
                        }
                        if ((!upToDateGTTMM(gtt) && !toKeepGTTs.Contains(gtt)) || r.orphanGTTMap[gtt].Count == 0)
                            r.orphanGTTMap.Remove(gtt);
                    }

                    if (!upToDateGTTMM(gtt))
                        if (toKeepGTTs.Contains(gtt))
                        {
                            Debug.Assert(mmGTT(gtt) == ngtt);
                            var nr = gttRevisionMap[ngtt];
                            Debug.Assert(nr > i);
                            revisionList[nr].gtts[ngtt].Add(gtt);
                            gttKV.Value.Clear();
                        } else
                        {
                            Debug.Assert(!r.orphanGTTMap.ContainsKey(gtt));
                            var mgtt = mmGTT(gtt);
                            revisionList[gttRevisionMap[mgtt]].gtts[mgtt].Remove(gtt);
                            removeFromRM(gtt);
                            removeFromMM(gtt);
                            r.gtts.Remove(gtt);
                        } else
                    {
#if DEBUG
                        foreach (var mgtt in r.gtts[gtt])
                        {
                            Debug.Assert(toKeepGTTs.Contains(mgtt));
                            Debug.Assert(mmGTT(mgtt) == gtt);
                        }
                        if (r.orphanGTTMap.ContainsKey(gtt))
                            foreach (var mgtt in r.orphanGTTMap[gtt])
                            {
                                Debug.Assert(toKeepGTTs.Contains(mgtt));
                                Debug.Assert(mmGTT(mgtt) == gtt);
                            }
#endif
                    }
                }
                #endregion gtts

                foreach (var gc in r.assumedGCs.ToList())
                    if (gc.gls.Any(ga => !hasGTTMM(ga.gtt) || !upToDateGTTMM(ga.gtt)))
                        r.removeAssumedGC(gc);

                foreach (var ga in r.assumedUGCs.ToList())
                    if (!hasGTTMM(ga.gtt) || !upToDateGTTMM(ga.gtt))
                        r.removeAssumedUGC(ga);

                foreach (var gaf in r.gafs.ToList())
                    if (!hasGTTMM(gaf.gtt) || !upToDateGTTMM(gaf.gtt))
                        r.removeGAF(gaf);

            }//for i=....
#if DEBUG
            foreach (var gt in allMMGTs)
            {
                Debug.Assert(hasGTMM(mmGT(gt)));
                Debug.Assert(gtRevisionMap.ContainsKey(gt));
            }
            foreach (var gtt in allMMGTTs)
            {
                Debug.Assert(hasGTTMM(mmGTT(gtt)));
                Debug.Assert(gttRevisionMap.ContainsKey(gtt));
            }
#endif
        }

        protected virtual ISet<GT> sourceGTs { get { return new HashSet<GT>(); } }
        protected virtual ISet<GTT> sourceGTTs { get { return new HashSet<GTT>(); } }

        protected bool isOrphan(GAF gaf)
        {
            if (gaf == trueGAF || gaf == falseGAF)
                return false;
            foreach (var b in trueFalse)
            {
                var gad = glData[gaf.gLiteral(b)];
                if (gad.fcs.Count > 0 || gad.gcs.Count > 0 || gad.isAssumed || gad.isGoal)
                    return false;
            }
            return true;
        }
        internal virtual void cleanupInt()
        {
            cleanupInt(false);
        }
        internal virtual void cleanupInt(bool canRemoveOrphanGoals)
        {
            if (!cleanupIntKnob)
                return;
            #region precondition
#if DEBUG
#if INVARIANTS
                    foreach (var gtt in gtts)
                    {
                        foreach (var gt in gtt.gTerms)
                            Debug.Assert(gts.Contains(gt));
                        foreach (var gfa in gttInfo[gtt].incomingGFAs.Values)
                            Debug.Assert(gts.Contains(gfa.ec));
                        foreach (var gaf in gttInfo[gtt].incomingGAFs.Values)
                            Debug.Assert(gafs.Contains(gaf));
                        foreach (var ga in gttInfo[gtt].assumedGAsByPredicate.Values)
                            Debug.Assert(gafs.Contains(ga.gFormula));
                    }
                    foreach (var gt in gts)
                    {
                        foreach (var gtt in gtInfo[gt].superGTTs)
                            Debug.Assert(gtts.Contains(gtt));
                        foreach (var tt in gtInfo[gt].superTTs)
                            Debug.Assert(tts.Contains(tt));
                        foreach (var gfa in gt.gfas)
                            Debug.Assert(gtts.Contains(gfa.arguments));
                        foreach (var ogt in gtInfo[gt].inequalities)
                            Debug.Assert(gts.Contains(ogt));
                    }
                    foreach (var gaf in gafs)
                    {
                        Debug.Assert(gtts.Contains(gaf.gArguments));
                    }

                    foreach (var gc in gcs)
                    {
                        foreach (var ga in gc.gAtoms)
                            Debug.Assert(gafs.Contains(ga.gFormula));
                    }

                    foreach (var ga in assumedGAs)
                        Debug.Assert(gafs.Contains(ga.gFormula));

                    foreach (var gc in assumedGCs)
                        Debug.Assert(gcs.Contains(gc));

                    foreach (var tt in tts)
                    {
                        foreach (var t in tt.termTuple)
                            if (t is GroundTermEC)
                                Debug.Assert(gts.Contains(t as GroundTermEC));
                            else if (t is VariableEC)
                                Debug.Assert(vtInfo[(t as VariableEC).variable].vt == (t as VariableEC));

                        foreach (var fa in ttInfo[tt].incomingFAs.Values)
                            Debug.Assert(fas.Contains(fa));
                        foreach (var af in ttInfo[tt].incomingAFs.Values)
                            Debug.Assert(afs.Contains(af));
                    }

                    foreach (var fa in fas)
                    {
                        Debug.Assert(tts.Contains(fa.arguments));
                        foreach (var tt in faSTTs[fa])
                            Debug.Assert(tts.Contains(tt));
                    }

                    foreach (var af in afs)
                    {
                        foreach (var b in new[]{false,true})
                            foreach (var c in ngaNGCs[af.atomEC(b)])
                                Debug.Assert(ngcs.Contains(c));
                    }

                    foreach (var ngc in ngcs)
                    {
                        foreach (var a in ngc.atoms)
                            if (a is GroundAtomEC)
                                Debug.Assert(gafs.Contains((a as GroundAtomEC).gFormula));
                            else
                                Debug.Assert(afs.Contains((a as AtomEC).formulaEC));
                    }
                    foreach (var fl in assumedFLs)
                            Debug.Assert(afs.Contains(fl.formulaEC));

                    foreach (var c in assumedClauses)
                        if (c is GroundClauseEC)
                            Debug.Assert(gcs.Contains(c as GroundClauseEC));
                        else
                            Debug.Assert(ngcs.Contains(c as ClauseEC));
#endif
#endif
            #endregion precondition
            cleanupFluff();
        }

        private bool isOrphan(GT gt)
        {
            var gtd = gtData[gt];
            return
                !isOriginal(gt) &&
                !gtd.isInteresting &&
                gtd.sgtts.Count == 0 &&
                gtd.sftts.Count == 0 &&
                gtd.rgtts.Count == 0 &&
                gtd.disequalities.Count == 0 &&
                !queues.hasEquivalenceClass(gt);
        }
        private bool isOrphan(GTT gtt)
        {
            Debug.Assert(!hasRGTT(gtt));
            return
                gttData[gtt].rgfas.Count == 0 &&
                gttData[gtt].sgafs.Count == 0 &&
                gttData[gtt].sgfas.Count == 0 &&
                !instantiationIndex.has(gtt)
                ;
        }
        protected bool isOrphan(FC fc)
        {
            Debug.Assert(!isOriginal(fc) || isAssumed(fc) || isTrue(fc) || assumedClauseKeysd.Contains(fc.ToStringNN()));
            return !isOriginal(fc) && !isAssumed(fc);
        }
        protected bool isOrphan(FAF faf)
        {
            return !fafData[faf].anySFCs;
        }
        private bool isOrphan(FTT ftt)
        {
            var fttd = fttData[ftt];
            return fttd.sfafs.Count + fttd.sffas.Count == 0;
        }

        private bool isOrphan(FFA ffa)
        {
            var ffad = ffaData[ffa];
            if (ffad.sftts.Count > 0)
                return false;
            if (ffad.fffas.Count > 0)
                return false;
            return true;
        }
        private bool isOrphan(FVT vt)
        {
            return !fvData[vt.variable].superFTTs.Any();
        }
        #endregion cleanup

        #region consistency
        private void assertOriginalsHold()
        {
            return;
            /*#if DEBUG
                        foreach (var oa in originalAtoms)
                            Debug.Assert(holds(oa));
                        foreach (var oc in originalClauses)
                            Debug.Assert(holds(oc));
                        foreach (var oc in importedClauses)
                            Debug.Assert(holds(oc));
#endif*/
        }
        private bool pauseCondition
        {
            get
            {
                return false; // index == 123; // ((this is JoinUniverse) && (this as JoinUniverse).joinedNum > 2);
            }
        }
        internal bool depthInvariant()
        {
            foreach (var gtIKV in gtData)
            {
                var gt = gtIKV.Key;
                var depth = gtDepth(gt);// gtIKV.Value.depth;
                Debug.Assert(depth <= maxGTDepth);
                if (isOriginal(gt))
                    Debug.Assert(depth == 0);
                else
                {
                    var er = maxGTDepth;
                    foreach (var gfa in gt.gfas)
                    {
                        int per;
                        if (gfa.gtt == emptyGTT)
                            per = getConstantRadius(gfa.function);
                        else
                            per = (from sgt in gfa.gtt.gtT select gtDepth(sgt)).Max() + 1;
                        if (per < er)
                            er = per;
                    }
                    Debug.Assert(depth == er);
                }
            }

            foreach (var gt in allGTs)
                foreach (var gfa in gt.gfas)
                    Debug.Assert(gttDepth(gfa.gtt) < Universe.maxGTDepth);
            return true;
        }

        public int getConstantRadius(Function function)
        {
            if (!srs.isNumber(function))
                return 1;
            else
                return getNumberRadius(function);
        }
        protected int getNumberRadius(Function function)
        {
            Debug.Assert(srs.isNumber(function));
            GFA gfa;
            if (gttData[emptyGTT].sgfas.TryGetValue(function, out gfa))
                if (isOriginal(gfa.gt))
                    return 0;
                else
                    return 1;
            else
                return 1;

        }
        internal bool inScope(LFSTT lfstt)
        {
            foreach (var f in lfstt.fs)
                if (f != null && !inScope(f))
                    return false;
            return true;
        }
        internal bool inScope(GL ga)
        {
            return inScope(ga.gaf.gtt) && inScope(ga.predicate);
        }
        internal bool inScope(GT t)
        {
            return t.constants.All(f => inScope(f));
        }
        internal bool inScope(GTT tt)
        {
            return tt.gtT.All(t => inScope(t));
        }
#if DEBUG
        protected abstract bool disEqualitiesComplete();
        protected virtual bool goalsComplete()
        {
            if (isRefuted)
                return true;
            foreach (var gt in goalGTs)
            {
                Debug.Assert(upToDateGTMM(gt));
                foreach (var gfa in gt.gfas)
                    foreach (var agt in gfa.gtt.gtT)
                        Debug.Assert(isGoal(agt));
            }
            foreach (var ga in goalGLs)
            {
                Debug.Assert(upToDateGTTMM(ga.gaf.gtt));
                foreach (var agt in ga.gaf.gtt.gtT)
                    Debug.Assert(isGoal(agt));
            }
            foreach (var gc in goalGCs)
            {
                Debug.Assert(upToDate(gc));
                foreach (var ga in gc.gls)
                    Debug.Assert(isGoal(ga));
            }
            return true;
        }


        protected bool instantiationCachesComplete()
        {
            #region cache requests
            foreach (var gl in assumedUGCs)
                if (isAssumed(gl) && isUGCInstSat(gl) && glResolveFCCriterion(gl))
                {
                    Debug.Assert(instantiationIndex.has(gl.pp.n));
                    Debug.Assert(instantiationIndex.has(gl.pp.n, gl.gtt));
                    foreach (var lfstt in gl.gtt.lfstts)
                        Debug.Assert(instantiationIndex.has(gl.pp.n, lfstt));
                }
            foreach (var gt in allGTs)
                if (gtInstantiateFCKnob && isInstSat(gt) && gtFCInstantiationCriterion(gt))
                {
                    Debug.Assert(instantiationIndex.has(gt));
                    foreach (var gfa in gt.gfas)
                    {
                        var f = gfa.function;
                        foreach (var lfstt in gfa.gtt.lfstts)
                            Debug.Assert(instantiationIndex.has(f, lfstt));
                    }
                }
            #endregion cache requests
            return true;
        }
#endif
        internal abstract bool sourcesComplete();
        internal virtual bool invariant()
        {
#if DEBUG
#if INVARIANTS
                    foreach (var gtt in gtts)
                        if (!successorForcedGTTs.Contains(gtt))
                            foreach (var gt in gtt.gTerms)
                                foreach (var gfa in gt.gfas)
                                    Debug.Assert(!successorForcedGTTs.Contains(gfa.arguments));
                    Debug.Assert(sourcesComplete());
                    Debug.Assert(inEqualitiesComplete());
                    Debug.Assert(assumedGroundAtomsComplete());
                    Debug.Assert(goalsComplete());
                    if (isRefuted)
                        return true;

            #region true formula
                    Debug.Assert(groundTupleIncomingGroundAtomicFormulaeByPredicate[emptyTuple][TruePredicate.get()] == trueFormula);
            #endregion true formula

            #region ground terms
                    foreach (var gtKV in groundTermMergeMap)
                    {
                        var mgt = gtKV.Key;
                        var gt = gtKV.Value;
                        Debug.Assert(revisionList[groundTermRevisionMap[gt]].groundTerms.ContainsKey(gt) || revisionList[groundTermRevisionMap[gt]].groundTerms[groundTermMergeMap[gt]].Contains(gt));
                        if (revisionList[groundTermRevisionMap[gt]].groundTerms.ContainsKey(gt))
                            foreach (var sgt in revisionList[groundTermRevisionMap[gt]].groundTerms[gt])
                                Debug.Assert(groundTermRevisionMap[sgt] <= groundTermRevisionMap[gt]);

                        if (gt == mgt)
                        {
                            Debug.Assert(groundTermSuperGroundTuples.ContainsKey(gt));
                            Debug.Assert(groundTermSuperTuples.ContainsKey(gt));
                            foreach (var gfa in gt.gfas)
                            {
                                Debug.Assert(groundTupleMergeMap[gfa.arguments] == gfa.arguments);
                                Debug.Assert(groundTupleIncomingGroundFAsByFunction[gfa.arguments][gfa.function].ec == gt);
                                foreach (var gst in gfa.arguments.gTerms)
                                    Debug.Assert(groundTermSuperGroundTuples[gst].Contains(gfa.arguments));
                            }
                            foreach (var ie in groundTermInequalities[gt])
                            {
                                Debug.Assert(groundTermMergeMap[ie] == ie);
                                Debug.Assert(groundTermInequalities[ie].Contains(gt));
                            }
                            foreach (var gtts in groundTermSuperGroundTuplesByTypeTupleAndPosition[gt].Values)
                                foreach (var gtt in gtts)
                                    Debug.Assert(groundTupleMergeMap[gtt] == gtt);
                            foreach (var gstt in groundTermSuperGroundTuples[gt])
                            {
                                Debug.Assert(upToDate(gstt));
                                foreach (var gaf in groundTupleIncomingGroundAtomicFormulaeByPredicate[gstt].Values)
                                    foreach (var polarity in new[] { true, false })
                                        foreach (var c in clauseByGroundAtomMap[gaf.gAtom(polarity)])
                                            Debug.Assert(upToDate(c));
                            }
                        }
                    }

                    foreach (var mtkv in revisionList.Last().groundTerms)
                    {
                        var mt = mtkv.Key;
                        var ss = mtkv.Value;
                        foreach (var s in ss)
                        {
                            Debug.Assert(!revisionList.Last().groundTerms.ContainsKey(s));
                            Debug.Assert(groundTermRevisionMap[s] < currentRevision || (s.gfasByFunction.Count == 1 && s.gfasByFunction.Values.First().Count == 1));
                        }
                    }

            #endregion ground terms

            #region inequalities
                    Debug.Assert(inEqualitiesComplete());
            #endregion inequalities

            #region ground tuples
                    foreach (var gttKV in groundTupleMergeMap)
                    {
                        var gtt = gttKV.Value;
                        var mgtt = gttKV.Key;
                        Debug.Assert(revisionList[groundTupleRevisionMap[mgtt]].groundTuples.ContainsKey(mgtt) || revisionList[groundTupleRevisionMap[mgtt]].groundTuples.ContainsKey(groundTupleMergeMap[mgtt]));
                        if (revisionList[groundTupleRevisionMap[mgtt]].groundTuples.ContainsKey(mgtt))
                            foreach (var sgtt in revisionList[groundTupleRevisionMap[mgtt]].groundTuples[mgtt])
                                Debug.Assert(groundTupleRevisionMap[sgtt] <= groundTupleRevisionMap[mgtt]);
                        if (gtt == mgtt)
                        {
                            foreach (var rf in groundTupleRejectedGFAs[gtt])
                                Debug.Assert(!groundTupleIncomingGroundFAsByFunction[gtt].ContainsKey(rf));

                            var gfas = groundTupleIncomingGroundFAsByFunction[gtt];
                            foreach (var gfa in gfas.Values)
                            {
                                Debug.Assert(gfa.arguments == gtt);
                                Debug.Assert(groundTermMergeMap[gfa.ec] == gfa.ec);
                                Debug.Assert(gfa.ec.gfasByFunction[gfa.function][gfa.arguments] == gfa);
                            }

                            foreach (var ga in groundTupleAssumedGroundAtomsByPredicate[gtt].Values)
                                Debug.Assert(groundTupleIncomingGroundAtomicFormulaeByPredicate[gtt][ga.gFormula.predicate] == ga.gFormula);
                        }
                    }

                    foreach (var sft in successorForeignGroundTuples)
                    {
                        Debug.Assert(!groundTupleMergeMap.ContainsKey(sft));
                        Debug.Assert(sft.gTerms.All(gt => groundTermMergeMap[gt] == gt));
                    }
            #endregion ground tuples

            #region ground atoms
                    foreach (var gapp in assumedGroundAtomsByPredicateAndPolarity)
                        foreach (var gap in gapp.Value)
                            foreach (var ga in gap.Value)
                            {
                                Debug.Assert(groundTupleAssumedGroundAtomsByPredicate[ga.gFormula.gArguments][gapp.Key] == ga);
                                Debug.Assert(ga.gFormula.gArguments == groundTupleMergeMap[ga.gFormula.gArguments]);
                            }

                    foreach (var ic in assumedClauses)
                    {
                        var gc = ic as GroundClauseEC;
                        var c = ic as ClauseEC;
                        if (gc != null)
                            Debug.Assert(groundClauseMergeMap[gc] == gc);
                        else
                            foreach (var a in c)
                                Debug.Assert(upToDate(a));
                    }
            #endregion ground atoms

            #region non ground tuples
                    foreach (var t in tupleMergeMap.Keys)
                        if (t == tupleMergeMap[t])
                            foreach (var fa in tupleIncomingFunctionApplicationsByFunction[t])
                                Debug.Assert(fa.Value == tupleIncomingFunctionApplicationsByFunction[tupleMergeMap[fa.Value.arguments]][fa.Value.function]);
            #endregion non ground tuples

            #region non ground atoms
                    foreach (var a in assumedAtoms)
                    {
                        Debug.Assert(assumedNonGroundAtomsByPredicateAndPolarity[a.formulaEC.predicate][a.polarity].Contains(a));
                        Debug.Assert(tupleAssumedAtomsByPredicate[a.formulaEC.argumentsEC][a.formulaEC.predicate] == a);
                    }
            #endregion non ground atoms
            
            #region clauses
                    Debug.Assert(clauseAtomsUptoDate());
            #endregion clauses
#endif
#endif
            return true;
        }
        /*        private bool clauseAtomsUptoDate()
                {
                    foreach (var fcls in assumedCLsByPP.Values)
                        foreach (var fcl in fcls)
                            foreach (var a in fcl.fc)
                            {
                                if (a.isGround)
                                {
                                    Debug.Assert(upToDate(a));
                                    if (!(a.iaf.predicate is TruePredicate))
                                    {
                                        var ga = a as GL;
                                        Debug.Assert(upToDate(ga));
                                        Debug.Assert(glData[ga].fcs.Contains(fcl.fc));
                                    }
                                }
                                else
                                {
                                    foreach (var t in a.iaf.itt)
                                    {
                                        if (t is GT)
                                        {
                                            var gt = t as GT;
                                            Debug.Assert(upToDateGTMM(gt));
                                            Debug.Assert(gtData[gt].sftts.Contains(a.iaf.itt));
                                        }
                                        else if (t is FFA)
                                        {
                                            var fa = t as FFA;
                                            Debug.Assert(ffaData[fa].sftts.Contains(a.iaf.itt));
                                        }
                                    }
                                    Debug.Assert(upToDate(a.iaf.itt));
                                }
                            }
                    return true;
                }*/
        internal bool upToDate(GC gc)
        {
            var result = gc.gls.All(upToDate);
            result &= hasGC(gc);
            return result;
        }
        internal bool upToDate(GL ga)
        {
            return upToDate(ga.gaf);
        }
        internal bool upToDate(GAF gaf)
        {
            var result = upToDate(gaf.gtt);
            result &= gttData[gaf.gtt].sgafs[gaf.predicate] == gaf;
            return result;
        }
        internal bool upToDate(GTT gtt)
        {
            var result = gtt.gtT.All(upToDate);
            result &= gttData.ContainsKey(gtt);
            return result;
            //
            //return hasSuccessorGTT(tt) || !tt.gTerms.All(gtMergeMap.ContainsKey) || !inScope(tt) || gttMergeMap[tt] == tt;
        }
        internal bool upToDate(GT gt)
        {
            return upToDateGTMM(gt) && gtData.ContainsKey(gt);
        }

        internal bool upToDate(FC fc)
        {
            var result = fc.All(upToDate);
            result &= hasFC(fc);
            return result;
        }
        internal bool upToDate(FL fa)
        {
            return upToDate(fa.faf);
        }
        internal bool upToDate(FAF faf)
        {
            var result = upToDate(faf.ftt);
            result &= fttData[faf.ftt].sfafs[faf.predicate] == faf;
            return result;
        }
        internal bool upToDate(FTT ftt)
        {
            var result = ftt.All(upToDate);
            result &= fttData.ContainsKey(ftt);
            return result;
            //
            //return hasSuccessorGTT(tt) || !tt.gTerms.All(gtMergeMap.ContainsKey) || !inScope(tt) || gttMergeMap[tt] == tt;
        }
        internal bool upToDate(FFA ffa)
        {
            var result = upToDate(ffa.ftt);
            result &= fttData[ffa.ftt].sffas[ffa.function] == ffa;
            return result;
        }
        internal bool upToDate(FVT vt)
        {
            return fvData[vt.variable].vt == vt;
        }

        internal bool upToDate(IC c)
        {
            if (c.isGround)
                return upToDate(c as GC);
            else
                return upToDate(c as FC);
        }
        internal bool upToDate(IL a)
        {
            if (a.isGround)
                return upToDate(a as GL);
            else
                return upToDate(a as FL);
        }
        internal bool upToDate(ITT tt)
        {
            if (tt.isGround)
                return upToDate(tt as GTT);
            else
                return upToDate(tt as FTT);
        }
        internal bool upToDate(IT t)
        {
            var gt = t as GT;
            var vt = t as FVT;
            var fa = t as FFA;

            if (gt != null)
            {
                Debug.Assert(upToDateGTMM(gt));
                return upToDateGTMM(gt);
            } else if (vt != null)
                return upToDate(vt);
            else
                return upToDate(fa);
        }

        private IT update(IT t)
        {
            if (t is GT)
                return transitiveMerge(t as GT);
            else if (t is FVT)
                return t;
            else
            {
                var fa = t as FFA;
                Debug.Assert(fa != null);
                var nArgs = update(fa.ftt);
                return fa.ftt != nArgs ? makeFFA(fa.function, nArgs) : fa;
            }
        }
        private FTT update(FTT tuple)
        {
            var na = new IT[tuple.Count()];
            var updated = false;
            for (var i = 0; i < tuple.Count(); i++)
            {
                na[i] = update(tuple[i]);
                if (na[i] != tuple[i])
                    updated = true;
            }
            if (updated)
                return makeFTT(na);
            else
                return tuple;
        }
        #endregion consistency

        #region statistics
        public abstract int numGTSDs { get; }
        public abstract int numGTTSDs { get; }
#if DEBUG
        public IDictionary<GT, ISet<GC>> mapGTEqGCs
        {
            get
            {
                var result = new Dictionary<GT, ISet<GC>>();
                foreach (var gc in assumedGCs)
                    foreach (var gl in gc.gls)
                        if (gl.isEQOrDE && gl.polarity && gl.gtT.All(isMapRead))
                            for (var i = 0; i < 2; i++)
                                result.insert(gl.gtT[i], gc);
                return result;
            }
        }

        public IDictionary<GAF, ISet<GC>> gafGCs
        {
            get
            {
                var result = new Dictionary<GAF, ISet<GC>>();
                foreach (var gaf in allGAFs)
                {
                    var trueGCs = glData[gaf.gLiteral(true)].gcs;
                    var falseGCs = glData[gaf.gLiteral(false)].gcs;
                    result[gaf] = new HashSet<GC>(trueGCs.Union(falseGCs));
                }
                return result;
            }
        }
        public IDictionary<GAF, ISet<GC>> gafBDGCs
        {
            get
            {
                var result = new Dictionary<GAF, ISet<GC>>();
                foreach (var gaf in allGAFs)
                {
                    var trueGCs = glData[gaf.gLiteral(true)].gcs;
                    var falseGCs = glData[gaf.gLiteral(false)].gcs;
                    if (trueGCs.Count > 0 && falseGCs.Count > 0)
                        result[gaf] = new HashSet<GC>(trueGCs.Union(falseGCs));
                }
                return result;
            }
        }

        public IDictionary<GL, ISet<GC>> gaGCs
        {
            get
            {
                var result = new Dictionary<GL, ISet<GC>>();
                foreach (var gaf in allGAFs)
                {
                    if ((glData[gaf.gLiteral(true)].gcs.Count + glData[gaf.gLiteral(false)].gcs.Count) > 1)
                    {
                        foreach (var b in trueFalse)
                        {
                            var ga = gaf.gLiteral(b);
                            var gcs = glData[ga].gcs;
                            if (gcs.Count > 0)
                                result[gaf.gLiteral(b)] = new HashSet<GC>(gcs);
                        }
                    }
                }
                return result;
            }
        }
#endif

#if DEBUG
        public IDictionary<GT, ISet<GC>> gtGCs
        {
            get
            {
                var result = new Dictionary<GT, ISet<GC>>();
                foreach (var gc in allGCs)
                {
                    foreach (var gt in gc.allGTs)
                        result.insert(gt, gc);
                }
                return result;
            }
        }
        public ISet<GC> gtEqGCs(GT gt)
        {
            return new HashSet<GC>(from gc in allGCs where gc.gls.Any(gl => gl.isEQOrDE && gl.polarity && gl.gtT.Contains(gt)) select gc);
        }
        public IDictionary<GAF, ISet<FC>> gafFCs
        {
            get
            {
                var result = new Dictionary<GAF, ISet<FC>>();
                foreach (var gaf in allGAFs)
                {
                    var fcs = new HashSet<FC>(from b in trueFalse from fc in glData[gaf.gLiteral(b)].fcs select fc);
                    if (fcs.Count > 0)
                        result[gaf] = fcs;
                }
                return result;
            }
        }
#endif

        public virtual ISet<GT> usedGTs { get { return new HashSet<GT>(allGTs); } }
        public virtual ISet<GTT> usedGTTs { get { return new HashSet<GTT>(allGTTs.Union(allRGTTs)); } }
        //        public abstract ISet<GroundTupleEC> usedRGTTs { get; }

        public virtual ISet<GAF> usedGAFs { get { return new HashSet<GAF>((from ga in assumedUGCs select ga.gaf).Union(from c in assumedClauses from a in c let ga = a as GL where ga != null select ga.gaf)); } }
        public virtual ISet<GC> usedGCs { get { return new HashSet<GC>(assumedGCs); } }
        public IDictionary<GL, int> goalGECounts
        {
            get
            {
                var result = new Dictionary<GL, int>();
                foreach (var gc in assumedGCs)
                    foreach (var ga in gc.gls)
                        if (ga.polarity && ga.gaf.predicate is Equality)
                        {
                            if (!result.ContainsKey(ga))
                                result[ga] = 0;
                            result[ga]++;
                        }
                return result;
            }
        }
        public IDictionary<GL, ISet<GL>> mapIndexGoalGEMap
        {
            get
            {
                var result = new Dictionary<GL, ISet<GL>>();
                foreach (var gc in assumedGCs)
                    if (gc.Count() == 2 && gc.gls.All(ga => (ga.isEQOrDE || srs.isPathCondition(ga.predicate))/*&& ga.polarity*/))
                        for (var i = 0; i < 2; i++)
                        {
                            var ga = gc.gls[i];
                            var oga = gc.gls[1 - i];
                            if (oga.polarity && oga.isEQOrDE && oga.gaf.gtt.gtT.Any(
                                gt =>
                                    gt.gfas.Any(gfa =>
                                            srs.isMapRead(gfa.function)
                                            && (
                                                gfa.gtt.gtT.Intersect(ga.gaf.gtt.gtT).Any()
                                                    ||
                                                srs.isPathCondition(ga.predicate)
                                            )
                                        )
                                    )
                                )
                            {
                                var ge = ga; // makeGE(ga.gArguments.gTerms[0], ga.gArguments.gTerms[1]);
                                ISet<GL> e;
                                if (!result.TryGetValue(ge, out e))
                                    e = result[ge] = new HashSet<GL>();
                                e.Add(oga);
                            }

                        }
                return result;
            }
        }

        #region debug statistics
#if DEBUG

        public IEnumerable<GTT> newGTTs { get { return (from gtt in allGTTs where isNew(gtt) select gtt).ToArray(); } }

        public IEnumerable<GT> baselessGTs { get { return (from gt in allGTs where isBaseless(gt) select gt).ToArray(); } }
        public IEnumerable<GTT> baselessGTTs { get { return (from gtt in allGTTs where isBaseless(gtt) select gtt).ToArray(); } }

        public abstract bool isBaseless(GT gt);
        public abstract bool isBaseless(GTT gtt);
#endif
        #endregion debug statistics

        #endregion statistics

        #region scoping
        protected void addToScope(Function f)
        {
            Debug.Assert(f.isConstant);
            constantScope.Add(f);
        }
        public void addToScope(IEnumerable<Function> fs)
        {
            foreach (var f in fs)
                addToScope(f);
        }
        public bool inScope(Function f)
        {
            return Universe.allScopeKnob || !f.isConstant || srs.isNumber(f) || constantScope.Contains(f);
        }

        public ISet<Function> constants { get { return constantScope; } }
        protected void addToScope(Predicate p)
        {
            Debug.Assert(!p.argumentTypes.Any());
            predicateScope.Add(p);
        }
        protected void addToScope(IEnumerable<Predicate> ps)
        {
            foreach (var p in ps)
                addToScope(p);
        }
        public bool inScope(PP pp)
        {
            return inScope(pp.predicate);
        }
        public bool inScope(IPredicate p)
        {
            return p.argumentTypes.Any() || predicateScope.Contains(p);
        }
        public ISet<Predicate> nullaryPredicates { get { return predicateScope; } }
        #endregion scoping

        #region orphanage
        public void checkAddOrphan(GL gl)
        {
            if (isOrphan(gl))
                glData[gl].setOrphan(true);
        }
        public void removeOrphan(GL gl)
        {
#if DEBUG
            Debug.Assert(!isOrphan(gl));
#endif
            glData[gl].setOrphan(false);
        }
        #endregion orphanage

        #region delta
        public virtual ISet<GFA> getGTLostGFAs(GT gt)
        {
            return new HashSet<GFA>();
        }
        public ISet<GC> getGTsGCs(ISet<GT> igts)
        {
            return new HashSet<GC>(
                (from gc in assumedGCs where gc.allGTs.Intersect(igts).Any() select gc).Union
                (from gl in assumedUGCs where gl.allGTs.Intersect(igts).Any() select makeGC(new[] { gl }))
                );
        }
        public ISet<GC> getGTsEqGCs(ISet<GT> igts)
        {
            return new HashSet<GC>(from gt in igts from gc in getGTEqGCs(gt) where isAssumed(gc) select gc);
        }
        public virtual void delta()
        {
            var gtc = gtContexts;
        }

        public IDictionary<GT, GTContexts> gtContexts
        {
            get
            {
                var result = new Dictionary<GT, GTContexts>();
                foreach (var gt in allGTs)
                {
                    var contexts = new GTContexts();
                    foreach (var gtt in gtData[gt].sgtts)
                    {
                        foreach (var gaf in gttData[gtt].sgafs.Values)
                            foreach (var b in trueFalse)
                            {
                                var ga = gaf.gLiteral(b);
                                if (ga.isEQOrDE)
                                    if (ga.polarity)
                                        contexts.directGEQGCs.UnionWith(glData[ga].gcs);
                                    else
                                        contexts.directGNEGCs.UnionWith(glData[ga].gcs);
                                else
                                    if (isAssumed(ga))
                                    contexts.directGPAs.Add(ga);
                                else
                                    contexts.directGPAGCs.UnionWith(glData[ga].gcs);
                            }
                    }
                    foreach (var gt2 in gtData[gt].disequalities)
                        contexts.directGNEs.Add(gt2);

                    contexts.contextGTs.UnionWith(gtSuperGTs(gt));
                    result[gt] = contexts;
                }
                foreach (var gt in allGTs)
                {
                    result[gt].indirectGPAs.UnionWith(from cgt in result[gt].contextGTs from gpa in result[cgt].directGPAs select gpa);
                    result[gt].indirectGNEs.UnionWith(from cgt in result[gt].contextGTs from gt2 in result[cgt].directGNEs select gt2);
                    result[gt].indirectGPAGCs.UnionWith(from cgt in result[gt].contextGTs from gpa in result[cgt].directGPAGCs select gpa);
                    result[gt].indirectGNEGCs.UnionWith(from cgt in result[gt].contextGTs from gpa in result[cgt].directGNEGCs select gpa);
                    result[gt].indirectGEQGCs.UnionWith(from cgt in result[gt].contextGTs from gpa in result[cgt].directGEQGCs select gpa);

                    result[gt].allGCs.UnionWith(result[gt].directGEQGCs);
                    result[gt].allGCs.UnionWith(result[gt].directGNEGCs);
                    result[gt].allGCs.UnionWith(result[gt].directGPAGCs);
                    result[gt].allGCs.UnionWith(result[gt].indirectGEQGCs);
                    result[gt].allGCs.UnionWith(result[gt].indirectGNEGCs);
                    result[gt].allGCs.UnionWith(result[gt].indirectGPAGCs);

                    result[gt].allGPAs.UnionWith(result[gt].directGPAs);
                    result[gt].allGPAs.UnionWith(result[gt].indirectGPAs);
                }

                return result;
            }
        }

        private ISet<GT> gtSuperGTs(GT igt)
        {
            var result = new HashSet<GT>();
            var todo = new Queue<GT>();
            todo.Enqueue(igt);
            while (todo.Count > 0)
            {
                var gt = todo.Dequeue();
                Debug.Assert(gt == igt || result.Contains(gt));
                foreach (var gtt in gtData[gt].sgtts)
                    foreach (var gfa in gttData[gtt].sgfas.Values)
                        if (gfa.gt != igt && result.Add(gfa.gt))
                            todo.Enqueue(gfa.gt);
            }
            return result;
        }


        public class GTContexts
        {
            public readonly ISet<GL> directGPAs = new HashSet<GL>();
            public readonly ISet<GT> directGNEs = new HashSet<GT>();
            public readonly ISet<GC> directGPAGCs = new HashSet<GC>();
            public readonly ISet<GC> directGEQGCs = new HashSet<GC>();
            public readonly ISet<GC> directGNEGCs = new HashSet<GC>();

            public readonly ISet<GT> contextGTs = new HashSet<GT>();
            public readonly ISet<GL> indirectGPAs = new HashSet<GL>();
            public readonly ISet<GT> indirectGNEs = new HashSet<GT>();
            public readonly ISet<GC> indirectGPAGCs = new HashSet<GC>();
            public readonly ISet<GC> indirectGEQGCs = new HashSet<GC>();
            public readonly ISet<GC> indirectGNEGCs = new HashSet<GC>();

            public readonly ISet<GL> allGPAs = new HashSet<GL>();
            public readonly ISet<GC> allGCs = new HashSet<GC>();
        }
        #endregion delta

        #region maps
        public class GFAMap
        {
            public bool any { get { return map.Count > 0; } }
            public IEnumerable<Function> functions { get { return map.Keys; } }
            public ISet<GT>[] get(Function f) { return map[f]; }
            public KeyValuePair<Function, ISet<GT>[]> removeOne()
            {
                var r = map.First();
                map.Remove(r.Key);
                return r;
            }
            public readonly IDictionary<Function, ISet<GT>[]> map = new Dictionary<Function, ISet<GT>[]>();
            public bool insert(GFA gfa)
            {
                return insert(gfa.function, gfa.gtT);
            }
            public bool insert(Function f, IList<GT> gtT)
            {
                return insert(f, (from gt in gtT select new HashSet<GT> { gt }).ToArray());
            }
            public bool has(GFA gfa)
            {
                ISet<GT>[] e;
                return (map.TryGetValue(gfa.function, out e) && Enumerable.Range(0, gfa.gtt.Count).All(i => e[i].Contains(gfa.gtT[i])));
            }
            public bool insert(Function f, ISet<GT>[] gtsT)
            {
                Debug.Assert(f.argumentTypes.Count == gtsT.Length);
                ISet<GT>[] e;
                if (!map.TryGetValue(f, out e))
                {
                    map[f] = gtsT;
                    return true;
                } else
                {
                    var r = false;
                    for (var i = 0; i < gtsT.Length; i++)
                    {
                        var ei = e[i];
                        var c = ei.Count;
                        ei.UnionWith(gtsT[i]);
                        r |= ei.Count > c;
                    }
                    return r;
                }
            }
            public void mergeWith(GFAMap o)
            {
                foreach (var kv in o.map)
                    insert(kv.Key, kv.Value);
            }
        }
        public class MapsRT
        {
            public readonly GFAMap gfaMap = new GFAMap();
            public bool any { get { return gfaMap.any; } }

            public MapsRT()
            {
            }
            public MapsRT(IEnumerable<GT> gts)
            {
                foreach (var gt in gts)
                    foreach (var gfa in gt.gfas)
                        if (gfa.function.isMapRead)
                            gfaMap.insert(gfa);
            }
            public void mergeWith(MapsRT rt)
            {
                gfaMap.mergeWith(rt.gfaMap);
            }
        }
        class UniverseComparer : Comparer<Universe>
        {
            public override int Compare(Universe x, Universe y)
            {
                return x.index.CompareTo(y.index);
            }

        }


        protected static ISet<GT> sm(Universe pu, Func<GT, IEnumerable<GT>> map, GT gt)
        {
            return new HashSet<GT>(map(gt).Union(pu.importFGT(gt)));
        }
        private IEnumerable<GFA> getInitialMWs(GT mgt, bool allIndicesHaveAllPreds)
        {
            return
                from kv in mgt.gfasByFunction
                where kv.Key.isMapWrite
                from gfa in kv.Value.Values
                where !allIndicesHaveAllPreds || pis.Any(pi => !getGFAPGFAs(pi, gfa).Any())
                select gfa;
        }

        private bool hasInitialMW(GT gt)
        {
            return gt.gfasByFunction.Any(kv =>
                kv.Key.isMapWrite
                && kv.Value.Values.Any(
                    gfa => gfa.function.isMapWrite
                          && (pis.Any(pi => !getGFAPGFAs(pi, gfa).Any()
                ))));
        }

        private bool hasMWstart(GT gt)
        {
            return gt.gfas.Any(gfa => gfa.function.isMapWrite && isGFANewDirect(gfa));
            //            throw new NotImplementedException();
        }
        protected void getMapReadNRTs(GFAMap gfaMap, MapsRT rt, Func<GT, IEnumerable<GT>> sm)
        {
            foreach (var mrgfa in gfaMap.map)
                if (mrgfa.Key.isMapRead)
                {
                    var mr = mrgfa.Key;
                    var gtsT = mrgfa.Value;
                    rt.gfaMap.insert(mr, (from gts in gtsT select new HashSet<GT>(from gt in gts from pgt in sm(gt) select pgt)).ToArray());
                }
        }
        protected abstract IDictionary<Universe, MapsRT> getMapReadNRTs(GFAMap gfaMap);
        private bool setMapROWSat(GFA gfa)
        {
            return addMapROWSat(gfa.function, gfa.gtt);
        }
        private bool addMapROWSat(Function f, GTT gtt)
        {
            return gttData[gtt].satMapROW.Add(f);
        }
        private bool isMapROWSat(GFA gfa)
        {
            return isMapROWSat(gfa.function, gfa.gtt);
        }
        private bool isMapROWSat(Function f, GTT gtt)
        {
            return hasGTT(gtt) && gttData[gtt].satMapROW.Contains(f);
        }
        private IEnumerable<GFA> propagateMapROWLocal(GFA gfa, IEnumerable<GFA> mwGFAs)
        {
            var mrgfa = gfa;
            var gt = gfa.gt;
            var mr = mrgfa.function;
            Debug.Assert(mr.isMapRead);
            var gtt = mrgfa.gtt;
            var rm = gtt.gtT[0];
            var readIndices = mrgfa.gtT.Skip(1).ToArray();
            var result = new List<GFA>();
            foreach (var mwgfa in mwGFAs)
                processMapROW(gt, result, mr, readIndices, mwgfa);
            return result;
        }

        private void processMapROW(GT gt, IList<GFA> result, Function mr, GT[] readIndices, GFA mwgfa)
        {
            var mw = mwgfa.function;
            var wm = mwgfa.gtT[0];
            var writeIndices = mwgfa.gtT.Skip(1).Take(mwgfa.gtT.Count - 2).ToArray();
            Debug.Assert(readIndices.Length == writeIndices.Length);
            var equalIndices = new HashSet<int>();
            var unequalIndices = new HashSet<int>();
            for (var i = 0; i < readIndices.Count(); i++)
                if (isEqual(readIndices[i], writeIndices[i]))
                    equalIndices.Add(i);
                else if (isUnequal(readIndices[i], writeIndices[i]))
                    unequalIndices.Add(i);

            var value = mwgfa.gtT.Last();
            if (equalIndices.Count == readIndices.Length)
            {
                #region stats
#if STATS
                if (!isEqual(gt, value))
                {
#if DEBUG
                                            propagatedSuccessfulMapGTs[this]++;
                                            propagatedAddedGCMapGTs[this]++;
#endif
                }
#endif
                #endregion stats
                assumeEQG(gt, value);
                addInteresting(value);
                addGoalRecursive(value);
            }//(equalIndices.Count == readIndices.Length)
            else
            {
                var subReadGTs = new[] { wm }.Concat(readIndices);
                GFA subReadGFA;
                if (tryMakeGFA(mr, subReadGTs, true, out subReadGFA))
                {
                    var subRead = subReadGFA.gt;
                    addInteresting(subRead);
                    result.Add(subReadGFA);
                    //                                    result.Add(gttData[subReadGTT].sgfas[mr]);
                    if (unequalIndices.Count > 0)
                    {
                        if (inDepthBoundStrict(subRead))
                            assumeEQG(gt, subRead);
                    } else
                    {
                        addGoalRecursive(value);
                        if (inDepthBoundStrict(gt))
                        {
                            GL eqPred = null;
                            if (inDepthBoundStrict(subRead))
                                eqPred = makeEQG(gt, subRead);
                            var valAtoms = new HashSet<GL>();
                            for (var i = 0; i < readIndices.Count(); i++)
                            {
                                if (!equalIndices.Contains(i))
                                {
                                    var ri = readIndices[i];
                                    var wi = writeIndices[i];
                                    if (inDepthBoundStrict(ri) && inDepthBoundStrict(wi))
                                    {
                                        var eqgi = makeEQG(ri, wi);
                                        if (eqPred != null)
                                            assumeGLs(new[] { eqgi, eqPred }, isGoal(gt), false);
                                        if (valAtoms != null && inDepthBoundStrict(value))
                                            valAtoms.Add(eqgi.gNegate);// makeGDE(ri, wi));
                                    } else
                                        valAtoms = null;
                                }//(!equalIndices.Contains(i))
                            }
                            if (valAtoms != null && inDepthBoundStrict(value))
                            {
                                Debug.Assert(valAtoms.Any());
                                var eqVal = makeEQG(gt, value);
                                valAtoms.Add(eqVal);
                                assumeGLs(valAtoms, isGoal(gt), false);
                            }
                        }//(inDepthBoundStrict(gt))
                    }//unequalIndices.Count==0
                }//all subreadgts.radius<maxRadius
            }//equalIndices.Count<readIndices.Length
             //foreach mwgfa
        }

        #endregion maps

        #region members

        #region index
        public static int curIndex;
        internal readonly int index;
        #endregion index

        #region debug
#if DEBUG
        public static int mergeIndex = 0;
#endif
        #endregion debug

        #region basics
        public bool hasFrameRule = false;
        public IDictionary<Function, ISet<Function>> functionFrameMap;
        public GTT emptyGTT;
        public readonly ISRS srs;
        private bool refuted = false;
        public GAF trueGAF { get; protected set; }
        public GAF falseGAF { get; protected set; }
        public readonly TermRepository termRepository;
        public GTT getGTT(IEnumerable<GT> gtT)
        {
            #region precondition
#if DEBUG
            foreach (var gt in gtT)
            {
                Debug.Assert(upToDateGTMM(gt));
                Debug.Assert(gtDepth(gt) < maxGTDepth);
            }
#endif
            #endregion precondition
            return igetGTT(gtT);
        }
        private GTT igetGTT(IEnumerable<GT> gtT)
        {
            return termRepository.getGTT(gtT, index);
        }

        public abstract int[] pis { get; }
        public abstract Universe[] pus { get; }
        #endregion basics

        #region assumptions
        public readonly IDictionary<string, FL> assumedFLsD = new Dictionary<string, FL>();
        internal readonly HashSet<IC> assumedClauses = new HashSet<IC>();
        internal readonly HashSet<string> assumedClauseKeysd = new HashSet<string>();
        #endregion assumptions


        #region caches

        #region foreign caches
        public readonly IDictionary<GT, ISet<GT>> fgtCache = new Dictionary<GT, ISet<GT>>();
        public readonly IDictionary<GTT, ISet<GTT>> fgttCache = new Dictionary<GTT, ISet<GTT>>();
        public readonly IDictionary<GAF, ISet<GAF>> fgafCache = new Dictionary<GAF, ISet<GAF>>();
        public readonly IDictionary<GC, ISet<GC>> fgcCache = new Dictionary<GC, ISet<GC>>();

        public readonly IDictionary<FFA, ISet<FFA>> ffaCache = new Dictionary<FFA, ISet<FFA>>();
        public readonly IDictionary<FTT, ISet<FTT>> ffttCache = new Dictionary<FTT, ISet<FTT>>();
        public readonly IDictionary<FAF, ISet<FAF>> ffafCache = new Dictionary<FAF, ISet<FAF>>();
        public readonly IDictionary<FC, ISet<FC>> ffcCache = new Dictionary<FC, ISet<FC>>();

        public readonly IDictionary<GT, ISet<GT>> gtFGTs = new Dictionary<GT, ISet<GT>>();
        public readonly IDictionary<GTT, ISet<GTT>> gttFGTTs = new Dictionary<GTT, ISet<GTT>>();
        public readonly IDictionary<GAF, ISet<GAF>> gafFGAFs = new Dictionary<GAF, ISet<GAF>>();
        public readonly IDictionary<GC, ISet<GC>> gcFGCs = new Dictionary<GC, ISet<GC>>();

        public readonly IDictionary<FAF, ISet<FAF>> fafFFAFs = new Dictionary<FAF, ISet<FAF>>();
        public readonly IDictionary<FC, ISet<FC>> fcFFCs = new Dictionary<FC, ISet<FC>>();
        public readonly IDictionary<FTT, ISet<FTT>> fttFFTTs = new Dictionary<FTT, ISet<FTT>>();
        #endregion foreign caches

        #endregion caches

        #region pass control
        public static int currentRound = 0;
        public static bool isLastRound { get { return currentRound + 1 >= numSaturationRounds; } }
        #endregion pass control

        #region scoping
        private readonly ISet<Function> constantScope = new HashSet<Function>();
        private readonly ISet<Predicate> predicateScope = new HashSet<Predicate>();
        #endregion scoping

        #region ground elements
        #region clauses
        internal class GCData : LEData
        {
            #region flags
            private const int originalMask = 1 << 0;
            private const int assumedMask = 1 << 1;
            private const int goalMask = 1 << 2;
            private const int importedMask = 1 << 3;
            private const int instSatMask = 1 << 4;
            private const int instIndexedMask = 1 << 5;
            private const int spIndexedMask = 1 << 6;
            private const int spSatMask = 1 << 7;
            private const int mapROWSatMask = 1 << 8;
            #region original
            internal bool setOriginal()
            {
                return setFlag(originalMask);
            }
            internal bool clearOriginal()
            {
                return clearFlag(originalMask);
            }
            internal bool isOriginal { get { return isFlag(originalMask); } }
            #endregion original
            #region assumed
            internal void setAssumed()
            {
                setFlag(assumedMask);
            }
            internal void clearAssumed()
            {
                clearFlag(assumedMask);
            }
            internal bool isAssumed { get { return isFlag(assumedMask); } }
            #endregion assumed
            #region goal
            internal bool setGoal()
            {
                return setFlag(goalMask);
            }
            internal bool clearGoal()
            {
                return clearFlag(goalMask);
            }
            internal bool isGoal { get { return isFlag(goalMask); } }
            #endregion goal
            #region imported
            internal bool setImported()
            {
                return setFlag(importedMask);
            }
            internal bool clearImported()
            {
                return clearFlag(importedMask);
            }
            internal bool isImported { get { return isFlag(importedMask); } }
            #endregion imported
            #region inst sat
            public bool setInstSat(bool b)
            {
                if (b)
                    return setFlag(instSatMask);
                else
                    return clearFlag(instSatMask);
            }
            public bool isInstSat { get { return isFlag(instSatMask); } }
            #endregion inst sat
            #region instIndexed
            internal bool setInstIndexed()
            {
                return setFlag(instIndexedMask);
            }
            internal bool clearInstIndexed()
            {
                return clearFlag(instIndexedMask);
            }
            internal bool isInstIndexed { get { return isFlag(instIndexedMask); } }
            #endregion instIndexed
            #region spIndexed
            internal bool setSPIndexed()
            {
                return setFlag(spIndexedMask);
            }
            internal bool clearSPIndexed()
            {
                return clearFlag(spIndexedMask);
            }
            internal bool isSPIndexed { get { return isFlag(spIndexedMask); } }
            #endregion spIndexed
            #region spSat
            internal bool setSPSat()
            {
                return setFlag(spSatMask);
            }
            internal bool clearSPSat()
            {
                return clearFlag(spSatMask);
            }
            internal bool isSPSat { get { return isFlag(spSatMask); } }
            #endregion spSat
            #region mapROW
            internal bool setMapROWSat()
            {
                return setFlag(mapROWSatMask);
            }
            internal bool clearMapROWSat()
            {
                return clearFlag(mapROWSatMask);
            }
            internal bool isMapROWSat { get { return isFlag(mapROWSatMask); } }
            #endregion

            #endregion flags
        }
        public bool isMapROWSat(GC gc) { return gcData[gc].isMapROWSat; }
        private void setMapROWSat(GC gc) { gcData[gc].setMapROWSat(); }
        public bool isMapROWSat(GT gt) { return gtData[gt].isMapROWSat; }
        private bool setMapROWSat(GT gt) { return gtData[gt].setMapROWSat(); }
        public bool hasGC(GC gc) { return gcData.ContainsKey(gc); }
        public IEnumerable<GC> allGCs { get { return gcData.Keys; } }
        public int numGCs { get { return gcData.Count; } }
        public bool isAssumed(GC gc) { return hasGC(gc) && gcData[gc].isAssumed; }
        public bool isInstSat(IC ic) { return ic.isGround ? isInstSat(ic as GC) : isInstSat((IC)(ic as FC)); }
        public bool isInstSat(GC gc) { return gcData[gc].isInstSat; }
        public bool setInstIndexed(GC gc) { return gcData[gc].setInstIndexed(); }
        public bool clearInstIndexed(GC gc) { return gcData[gc].clearInstIndexed(); }
        public bool isInstIndexed(GC gc) { return gcData[gc].isInstIndexed; }
        public bool isGoal(GC gc) { return gcData[gc].isGoal; }
        private readonly IDictionary<GC, GCData> gcData = new Dictionary<GC, GCData>();
        internal int numAssumedGCs { get { return assumedGCs.Count(); } }
        internal int numGoalGCs { get { return goalGCs.Count(); } }
        internal IEnumerable<GC> assumedGCs { get { return from kv in gcData where kv.Value.isAssumed select kv.Key; } }
        internal IEnumerable<GC> goalGCs { get { return from kv in gcData where kv.Value.isGoal select kv.Key; } }
        #endregion clauses
        #region atoms
        public class GLData : LEData
        {
            internal GLData()
            {
                setOrphan(true);
                setExpandRadius(0);
            }
            public readonly ISet<GC> gcs = new HashSet<GC>();
            public readonly ISet<FC> fcs = new HashSet<FC>();
            #region flags
            private const int assumedMask = 1 << 0;
            private const int goalMask = 1 << 1;
            private const int orphanMask = 1 << 2;
            private const int instSatMask = 1 << 3;
            private const int instUGCSatMask = 1 << 4;
            private const int saturatedMask = 1 << 5;
            private int pExpandRadius = 0;
            public int expandRadius { get { return pExpandRadius; } }
            public void setExpandRadius(int r)
            {
                Debug.Assert(r >= pExpandRadius);
                Debug.Assert(r >= 0);
                Debug.Assert(r <= Universe.maxGLRadius);
                pExpandRadius = r;
            }
            public bool canExpand { get { return pExpandRadius < maxGLRadius; } }
            public bool setInstSat(bool b)
            {
                if (b)
                    return setFlag(instSatMask);
                else
                    return clearFlag(instSatMask);
            }
            public bool isInstSat { get { return isFlag(instSatMask); } }
            public bool setUGCInstSat(bool b)
            {
                if (b)
                    return setFlag(instUGCSatMask);
                else
                    return clearFlag(instUGCSatMask);
            }
            public bool isUGCInstSat { get { return isFlag(instUGCSatMask); } }
            public void setAssumed(bool b)
            {
                if (b)
                    setFlag(assumedMask);
                else
                    clearFlag(assumedMask);
            }
            public bool isAssumed { get { return isFlag(assumedMask); } }
            public bool setGoal(bool b)
            {
                if (b)
                    return setFlag(goalMask);
                else
                    return clearFlag(goalMask);
            }
            public bool isGoal { get { return isFlag(goalMask); } }
            public void setOrphan(bool b)
            {
                if (b)
                    setFlag(orphanMask);
                else
                    clearFlag(orphanMask);
            }
            public bool isOrphan { get { return isFlag(orphanMask); } }
            public bool isUsed
            {
                get
                {
                    return gcs.Count > 0 || fcs.Count > 0 || isGoal; //todo also cleanup unused goals
                }
            }
            public bool setSat(bool b)
            {
                if (b)
                    return setFlag(saturatedMask);
                else
                    return clearFlag(saturatedMask);
            }
            public bool isImported { get { return isFlag(saturatedMask); } }
            #endregion flags
        }
        internal IEnumerable<GL> assumedUGCs { get { return from kv in glData where kv.Value.isAssumed select kv.Key; } }
        internal int numAssumedUGCs { get { return assumedUGCs.Count(); } }
        internal IEnumerable<GL> goalGLs { get { return from kv in glData where kv.Value.isGoal select kv.Key; } }
        internal int numGoalGLs { get { return goalGLs.Count(); } }
        internal readonly IDictionary<PP, ISet<GL>> assumedGLsByPP = new Dictionary<PP, ISet<GL>>();
        internal readonly IDictionary<GL, int> augcRevisionMap = new Dictionary<GL, int>();
        public readonly IDictionary<GL, GLData> glData = new Dictionary<GL, GLData>();
        public bool isAssumed(GL gl) { return glData[gl].isAssumed; }
        public bool isInstSat(GL gl) { return glData[gl].isInstSat; }
        public bool setInstSat(GL gl) { return glData[gl].setInstSat(true); }
        public bool isUGCInstSat(GL gl) { return glData[gl].isUGCInstSat; }
        public bool setUGCInstSat(GL gl) { return glData[gl].setUGCInstSat(true); }
        public bool has(GL gl) { return glData.ContainsKey(gl); }
        #endregion atoms
        #region atomic formulae
        public class GAFData { }
        public readonly IDictionary<GAF, GAFData> gafds = new Dictionary<GAF, GAFData>();
        internal readonly IDictionary<GAF, int> gafRevisionMap = new Dictionary<GAF, int>();
        public int gafRevision(GAF gaf) { return gafRevisionMap[gaf]; }
        #endregion atomic formulae
        #region inequalities
#if DEBUG
        internal readonly IDictionary<string, int> gieRevisionMap = new Dictionary<string, int>();
#endif
        #endregion inequalities
        #region tuples
        internal class GTTData
        {
            internal readonly IDictionary<Function, GFA> sgfas = new Dictionary<Function, GFA>();
            internal readonly IDictionary<IPredicate, GAF> sgafs = new Dictionary<IPredicate, GAF>();
            internal readonly ISet<IPredicate> agaPGTTCache = new HashSet<IPredicate>();
            internal readonly IDictionary<IPredicate, GL> assumedGLsByPredicate = new Dictionary<IPredicate, GL>();
            internal readonly ISet<Function> rgfas = new HashSet<Function>();
            internal readonly ISet<Function> satMapROW = new HashSet<Function>();
        }
        internal readonly IDictionary<GTT, GTTData> gttData = new Dictionary<GTT, GTTData>();
        private readonly IDictionary<GTT, GTT> gttMergeMap = new Dictionary<GTT, GTT>();
        private readonly IDictionary<GTT, int> gttRevisionMap = new Dictionary<GTT, int>();
        private readonly ISet<GTT> rgtts = new HashSet<GTT>();
        private readonly ISet<GTT> mapROWrgtts = new HashSet<GTT>();
        public RevisionIndex gttRevision(GTT gtt) { return gttRevisionMap[gtt]; }
        public GAF getGTTGAF(GTT gtt, IPredicate p) { return gttData[gtt].sgafs[p]; }
        public IEnumerable<GTT> allRGTTs { get { return rgtts; } }
        public bool hasGTT(GTT gtt) { return gttData.ContainsKey(gtt); }
        public bool tryGetGTTMM(GTT mgtt, out GTT gtt)
        {
            return gttMergeMap.TryGetValue(mgtt, out gtt);
        }
        public bool upToDateGTTMM(GTT gtt) { return gttMergeMap[gtt] == gtt; }
        public bool hasGTTMM(GTT gtt) { return gttMergeMap.ContainsKey(gtt); }
        public ICollection<GTT> allMMGTTs { get { return gttMergeMap.Keys; } }
        public GTT mmGTT(GTT gtt) { return gttMergeMap[gtt]; }
        internal GTT transitiveMerge(GTT gtt)
        {
            return gTransitiveMerge(gttMergeMap, gtt);
        }
        private void setGTTMergeMap(GTT gtt, GTT tgtt)
        {
            #region consistency
#if DEBUG
            Debug.Assert(gttRevisionMap.ContainsKey(gtt));
            if (gttBreakCond(this, gtt))
                Debugger.Break();
#endif
            #endregion consistency
            gttMergeMap[gtt] = tgtt;
        }
        protected void removeFromMM(GTT gtt)
        {
            #region consistency
#if DEBUG
            Debug.Assert(!gttRevisionMap.ContainsKey(gtt));
            if (gttBreakCond(this, gtt))
                Debugger.Break();
#endif
            #endregion consistency
            gttMergeMap.Remove(gtt);

        }

        #endregion tuples
        #region terms
        public bool hasGT(GT gt) { return gtData.ContainsKey(gt); }
        public abstract class LEData
        {
            #region implementation
            protected bool setFlag(int mask, bool val)
            {
                if (val)
                    return setFlag(mask);
                else
                    return clearFlag(mask);
            }
            protected bool setFlag(int mask)
            {
                var r = !isFlag(mask);
                flags |= mask;
                return r;
            }
            protected bool clearFlag(int mask)
            {
                var r = isFlag(mask);
                flags &= ~mask;
                return r;
            }
            protected bool isFlag(int mask) { return (flags & mask) != 0; }
            private int flags = 0;
            #endregion implementation
        }
        internal class GTData : LEData
        {
            internal readonly ISet<GTT> sgtts = new HashSet<GTT>();
            internal readonly IDictionary<string, ISet<GTT>> superGTTsByTTP = new Dictionary<string, ISet<GTT>>();
            internal readonly ISet<FTT> sftts = new HashSet<FTT>();
            internal readonly ISet<GT> disequalities = new HashSet<GT>();
            internal readonly ISet<GTT> rgtts = new HashSet<GTT>();

            internal int instSaturatedRadius = 0;

            public bool isSat { get { return instSaturatedRadius >= Universe.maxGTDepth; } }
            #region flags
            private const int originalMask = 1 << 0;
            private const int goalMask = 1 << 1;
            private const int interestingMask = 1 << 2;
            private const int newMask = 1 << 4;
            private const int newGFAMask = 1 << 5;
            private const int mapROWSatMask = 1 << 6;
            private const int instSatMask = 1 << 7;
            private const int spIndexedMask = 1 << 8;
            private const int spSatMask = 1 << 9;

            #region original
            internal void addOriginal()
            {
                setFlag(originalMask);
            }
            internal void removeOriginal()
            {
                clearFlag(originalMask);
            }
            internal bool isOriginal { get { return isFlag(originalMask); } }
            #endregion original
            #region goal
            internal bool setGoal()
            {
                return setFlag(goalMask);
            }
            internal bool clearGoal()
            {
                return clearFlag(goalMask);
            }
            internal bool isGoal { get { return isFlag(goalMask); } }
            #endregion goal
            #region new
            internal bool setNew()
            {
                return setFlag(newMask);
            }
            internal bool removeNew()
            {
                return clearFlag(newMask);
            }
            internal bool isNew { get { return isFlag(newMask); } }
            #endregion new
            #region new gfa
            internal bool addNewGFA()
            {
                return setFlag(newGFAMask);
            }
            internal bool removeNewGFA()
            {
                return clearFlag(newGFAMask);
            }
            internal bool hasNewGFA { get { return isFlag(newGFAMask); } }
            #endregion new gfa
            #region interesting
            internal void addInteresting()
            {
                setFlag(interestingMask);
            }
            internal void removeInteresting()
            {
                clearFlag(interestingMask);
            }
            internal bool isInteresting { get { return isFlag(interestingMask); } }
            #endregion interesting
            #region map ROW 
            internal bool setMapROWSat()
            {
                return setFlag(mapROWSatMask);
            }
            internal bool removeMapROWSat()
            {
                return clearFlag(mapROWSatMask);
            }
            internal bool isMapROWSat { get { return isFlag(mapROWSatMask); } }
            #endregion map ROW
            #region inst sat 
            internal bool setInstSat()
            {
                return setFlag(instSatMask);
            }
            internal bool clearInstSat()
            {
                return clearFlag(instSatMask);
            }
            internal bool isInstSat { get { return isFlag(instSatMask); } }
            #endregion inst sat
            #region SP sat 
            internal bool setSPSat()
            {
                return setFlag(spSatMask);
            }
            internal bool clearSPSat()
            {
                return clearFlag(spSatMask);
            }
            internal bool isSPSat { get { return isFlag(spSatMask); } }
            #endregion SP sat
            #region SP indexed
            internal bool setSPIndexed()
            {
                return setFlag(spIndexedMask);
            }
            internal bool clearSPIndexed()
            {
                return clearFlag(spIndexedMask);
            }
            internal bool isSPIndexed { get { return isFlag(spIndexedMask); } }
            #endregion SP indexed
            #endregion flags
        }
        internal readonly IDictionary<GT, GTData> gtData = new Dictionary<GT, GTData>();

        private void setGTMergeMap(GT mgt, GT gt)
        {
#if DEBUG
            if (gtBreakCond(this, gt))
                Debugger.Break();
//            if (index == 12 && mgt.index == 1661)
//                Debugger.Break();
#endif
            gtMergeMap[mgt] = gt;
        }
        private void removeFromMM(GT gt)
        {
            #region precondition
#if DEBUG
            if (gtBreakCond(this, gt))
                Debugger.Break();
#endif
            #endregion precondition

            //            if (upToDateGTMM(gt))
            //                removeSources(gt);
            gtMergeMap.Remove(gt);
        }
        public bool tryGetGTMM(GT mgt, out GT gt)
        {
            return gtMergeMap.TryGetValue(mgt, out gt);
        }
        public bool upToDateGTMM(GT gt) { return gt == gtMergeMap[gt]; }
        public bool hasGTMM(GT gt) { return gtMergeMap.ContainsKey(gt); }
        public GT mmGT(GT gt) { return gtMergeMap[gt]; }
        internal GT transitiveMerge(GT gt)
        {
            return gTransitiveMerge(gtMergeMap, gt);
        }
        private static T gTransitiveMerge<T>(IDictionary<T, T> mm, T t)
        {
            while (true)
            {
                var nt = mm[t];
                if (ReferenceEquals(t, nt))
                    break;
                t = nt;
            }
            return t;
        }
        public ICollection<GT> allMMGTs { get { return gtMergeMap.Keys; } }
        public bool isInstSat(GT gt) { return gtData[gt].isInstSat; }
        private bool setInstSat(GT gt)
        {
            if (gtData[gt].setInstSat())
            {
                queues.remove(gt);
                return true;
            } else
                return false;
        }
        private bool clearInstSat(GT gt)
        {
            if (gtData[gt].clearInstSat())
            {
                queues.enqueue(gt);
                return true;
            } else
                return false;
        }

        public RevisionIndex gtRevision(GT gt) { return gtRevisionMap[gt]; }
        private readonly IDictionary<GT, GT> gtMergeMap = new Dictionary<GT, GT>();
        private readonly IDictionary<GT, int> gtRevisionMap = new Dictionary<GT, int>();

        private readonly IDictionary<Function, ISet<GT>> lfsToGTMap = new Dictionary<Function, ISet<GT>>();
        private readonly ISet<Function> mapReadLFSs = new HashSet<Function>();
        private readonly IDictionary<IType, ISet<GT>> typeToGTsMap = new Dictionary<IType, ISet<GT>>();
        #endregion terms
        #endregion ground elements

        #region free elements
        #region clauses
        internal class FCData : LEData
        {
            #region flags
            private const int originalMask = 1 << 0;
            private const int assumedMask = 1 << 1;
            private const int goalMask = 1 << 2;
            private const int importedMask = 1 << 3;
            private const int satMask = 1 << 4;
            private const int instIndexedMask = 1 << 5;
            private const int spIndexedMask = 1 << 6;
            private const int axiomMask = 1 << 7;
            #region original
            internal bool setOriginal()
            {
                return setFlag(originalMask);
            }
            internal bool clearOriginal()
            {
                return clearFlag(originalMask);
            }
            internal bool isOriginal { get { return isFlag(originalMask); } }
            #endregion original
            #region assumed
            internal void setAssumed()
            {
                setFlag(assumedMask);
            }
            internal void clearAssumed()
            {
                clearFlag(assumedMask);
            }
            internal bool isAssumed { get { return isFlag(assumedMask); } }
            #endregion assumed
            #region goal
            internal void setGoal()
            {
                setFlag(goalMask);
            }
            internal bool clearGoal()
            {
                return clearFlag(goalMask);
            }
            internal bool isGoal { get { return isFlag(goalMask); } }
            #endregion goal
            #region imported
            internal bool setImported()
            {
                return setFlag(importedMask);
            }
            internal bool clearImported()
            {
                return clearFlag(importedMask);
            }
            internal bool isImported { get { return isFlag(importedMask); } }
            #endregion imported
            #region sat
            public bool setSat(bool b)
            {
                if (b)
                    return setFlag(satMask);
                else
                    return clearFlag(satMask);
            }
            public bool isInstSat { get { return isFlag(satMask); } }
            #endregion sat
            #region axiom
            internal bool setAxiom()
            {
                return setFlag(axiomMask);
            }
            internal bool clearAxiom()
            {
                return clearFlag(axiomMask);
            }
            internal bool isAxiom { get { return isFlag(axiomMask); } }
            #endregion axiom
            #region spIndexed
            internal bool setSPIndexed()
            {
                return setFlag(spIndexedMask);
            }
            internal bool clearSPIndexed()
            {
                return clearFlag(spIndexedMask);
            }
            internal bool isSPIndexed { get { return isFlag(spIndexedMask); } }
            #endregion spIndexed
            #region instIndexed
            internal bool setInstIndexed()
            {
                return setFlag(instIndexedMask);
            }
            internal bool clearInstIndexed()
            {
                return clearFlag(instIndexedMask);
            }
            internal bool isInstIndexed { get { return isFlag(instIndexedMask); } }
            #endregion instIndexed
            #endregion flags
        }
        public bool isInstSat(FC fc) { return fcData[fc].isInstSat; }
        public bool setInstIndexed(FC fc) { return fcData[fc].setInstIndexed(); }
        public bool clearInstIndexed(FC fc) { return fcData[fc].clearInstIndexed(); }
        public bool isInstIndexed(FC fc) { return fcData[fc].isInstIndexed; }
        public bool hasFC(FC fc) { return fcData.ContainsKey(fc); }
        public IEnumerable<FC> allFCs { get { return fcData.Keys; } }
        public int numFCs { get { return fcData.Count; } }
        public bool isAssumed(FC fc) { return fcData[fc].isAssumed; }
        private readonly IDictionary<FC, FCData> fcData = new Dictionary<FC, FCData>();
        internal IEnumerable<FC> assumedFCs { get { return from kv in fcData where kv.Value.isAssumed select kv.Key; } }
#if DEBUG
        internal readonly HashSet<LVar> clauseFreeVariables = new HashSet<LVar>();
#endif
        #endregion clauses
        #region atoms
        internal readonly HashSet<FL> assumedUFCs = new HashSet<FL>();
        public bool isAssumed(FL fl) { return assumedUFCs.Contains(fl); }
        #endregion atoms
        #region atomic formulae
        class FAFData
        {
            public void addFC(bool b, FC fc)
            {
                flSFCs.insert(b, fc);
            }
            public void removeFC(bool b, FC fc)
            {
                Debug.Assert(flSFCs[b].Contains(fc));
                flSFCs.remove(b, fc);
            }
            public bool anySFCs { get { return flSFCs.Count > 0; } }
            public IEnumerable<FC> allSFCs { get { return from s in flSFCs.Values from fc in s select fc; } }
            public readonly Dictionary<bool, ISet<FC>> flSFCs = new Dictionary<bool, ISet<FC>>();
        }
        private readonly IDictionary<FAF, FAFData> fafData = new Dictionary<FAF, FAFData>();
        public IEnumerable<FAF> allFAFs { get { return fafData.Keys; } }
        #endregion atomic formulae
        #region function applications
        internal class FFAData : LEData
        {
            internal readonly ISet<FTT> sftts = new HashSet<FTT>();
            internal readonly ISet<FFA> fffas = new HashSet<FFA>();

            internal int radius = topGTDepth;
        }
        internal readonly IDictionary<FFA, FFAData> ffaData = new Dictionary<FFA, FFAData>();
        #endregion function applications
        #region tuples
        internal class FTTInfo
        {
            internal readonly IDictionary<Function, FFA> sffas = new Dictionary<Function, FFA>();
            internal readonly IDictionary<IPredicate, FAF> sfafs = new Dictionary<IPredicate, FAF>();
            internal readonly IDictionary<IPredicate, FL> assumedFLsByPredicate = new Dictionary<IPredicate, FL>();
        }
        internal readonly IDictionary<FTT, FTTInfo> fttData = new Dictionary<FTT, FTTInfo>();
        #endregion tuples
        #region variables
        internal class VTInfo
        {
            public VTInfo(FVT vt)
            {
                this.vt = vt;
            }
            internal readonly FVT vt;
            internal readonly ISet<FTT> superFTTs = new HashSet<FTT>();
        }

        internal readonly IDictionary<LVar, VTInfo> fvData = new Dictionary<LVar, VTInfo>();
        #endregion variables
        #endregion free elements

        #region revisions
        public readonly List<Revision> revisionList = new List<Revision>();
        #endregion revisions

        #region originals
        internal readonly ISet<IC> originalClauses = new HashSet<IC>();
        #endregion originals

        #region imported
        internal ISet<IC> importedAxioms = new HashSet<IC>();

        private ISet<GT> spSaturatedGTs = new HashSet<GT>();
        private ISet<GC> spSaturatedGCs = new HashSet<GC>();
        private ISet<FC> spSaturatedFCs = new HashSet<FC>();
        public bool isSPSaturated(GT gt) { return spSaturatedGTs.Contains(gt); }
        public bool isSPSaturated(GC gc) { return spSaturatedGCs.Contains(gc); }
        public bool isSPSaturated(FC fc) { return spSaturatedFCs.Contains(fc); }
        #endregion imported

        #region saturation
        internal readonly SaturationQueues queues;
        public int splitDepth = 0;
        internal readonly ISet<GT> addedGTs = new HashSet<GT>();
        internal readonly ISet<GL> addedGLs = new HashSet<GL>();
        #endregion saturation

        #region path conditions
        public readonly ISet<GL> pathAtoms = new HashSet<GL>();
        public readonly ISet<GL> addedPathAtoms = new HashSet<GL>();
        #endregion path conditions

        #region summary
        public ISet<Predicate> allPredicates
        {
            get
            {
                return new HashSet<Predicate>(
                    (from gttI in gttData.Values
                     from p in gttI.sgafs.Keys
                     where p is Predicate
                     select p as Predicate)
                    .Union(
                        (from ttKV in fttData.Values
                         from p in ttKV.sfafs.Keys
                         where p is Predicate
                         select p as Predicate)
                     ));
            }
        }
        public ISet<Function> functions
        {
            get
            {
                return new HashSet<Function>(
                    (from gt in allGTs from f in gt.gfasByFunction.Keys select f)
                    .Union(from kv in ffaData.Keys select kv.function));
            }
        }
        public ISet<IType> dataTypes
        {
            get
            {
                return new HashSet<IType>(
                    (from f in functions from at in f.argumentTypes.Union(new[] { f.resultType }) select at)
                    .Union(from p in allPredicates from at in p.argumentTypes select at));
            }
        }
        public IEnumerable<GT> allGTs
        {
            get { return gtData.Keys; }
        }
        public IEnumerable<GTT> allGTTs
        {
            get { return gttData.Keys; }
        }
        public ISet<GAF> allGAFs
        {
            get
            {
                return new HashSet<GAF>(gafds.Keys);
            }
        }
        public ISet<FVT> allFVTs
        {
            get
            {
                return new HashSet<FVT>(from vti in fvData.Values select vti.vt);
            }
        }
        public ISet<FTT> allFTTs
        {
            get
            {
                return new HashSet<FTT>(fttData.Keys);
            }
        }
        public ISet<FFA> allFFAs
        {
            get
            {
                return new HashSet<FFA>(from ttI in fttData.Values from fa in ttI.sffas.Values select fa);
            }
        }
        public abstract string statString { get; }
        #endregion summary

        public abstract bool needSync { get; }
        public bool anyNonEqToDo
        {
            get
            {
                Debug.Assert(!isRefuted);
                return
                    queues.AnyNonEq;
            }
        }
        public bool anyThingToDo
        {
            get
            {
                return
                    !isRefuted &&
                    anyNonEqToDo ||
                    anyMergeToDo ||
                    needSync
                    ;
            }
        }

        /*public bool anySplitToDo
        {
            get
            {
                return
                    !isRefuted &&
                    splitDepth<maxCaseSplitDepth &&
                    currentRound>=firstCaseSplitRound &&
                    (!caseSplitOnlyKeyNodes || isKeyNode) &&
                    ( 
                        caseSplitMap.Values.Any(csu => csu.anyThingToDo) || 
                        getCaseSplitGAs().Except(caseSplitMap.Keys).Any()
                     );
            }

        }*/
        public bool anyMergeToDo
        {
            get
            {
                return
                    !isRefuted &&
                    queues.AnyEq
                    ;
            }
        }

        #region debug
#if DEBUG

        public ISet<GTT> usedTopRadiusTuples
        {
            get
            {
                var result = new HashSet<GTT>(
                    from gtt in allGTTs
                    where gttDepth(gtt) == maxGTDepth
                    where gttData[gtt].sgafs.Count != 0 || gttData[gtt].sgfas.Count != 0
                    select gtt);
                return result;
            }
        }
#endif
        #endregion debug



        public bool isGoalNode = false;
        #endregion members

        #region debug
#if DEBUG
        public class GTDeadEnds
        {
            public readonly IDictionary<int, IDictionary<GTT, Function>> lastGFAs = new Dictionary<int, IDictionary<GTT, Function>>();
            public readonly IDictionary<int, IDictionary<GTT, Function>> lastRGFAs = new Dictionary<int, IDictionary<GTT, Function>>();
            public readonly IDictionary<int, IDictionary<GTT, Function>> lastGTTs = new Dictionary<int, IDictionary<GTT, Function>>();
            public readonly IDictionary<int, ISet<GT>> gtDeadEnds = new Dictionary<int, ISet<GT>>();
        }
        public class GTDeadEndsRT
        {
            public readonly IDictionary<Function, ISet<GTT>> gfaMap = new Dictionary<Function, ISet<GTT>>();
            public readonly ISet<GT> gts = new HashSet<GT>();

            public GTDeadEndsRT()
            {
            }
            public GTDeadEndsRT(GT gt)
            {
                gts.Add(gt);
            }
            public void mergeWith(GTDeadEndsRT rt)
            {
                foreach (var kv in rt.gfaMap)
                    gfaMap.insert(kv.Key, kv.Value);
                gts.UnionWith(rt.gts);
            }
        }
        public GTDeadEnds getGTDeadEnds(GT gt)
        {
            var result = new GTDeadEnds();
            var todo = new SortedList<int, GTDeadEndsRT>();
            todo.Add(index, new GTDeadEndsRT(gt));
            while (todo.Count > 0)
            {
                var kv = todo.Last();
                todo.RemoveAt(todo.Count - 1);
                var rts = Universe.m[kv.Key].getLocalGTDeadEnds(result, kv.Value);
                foreach (var nrt in rts)
                    if (todo.ContainsKey(nrt.Key))
                        todo[nrt.Key].mergeWith(nrt.Value);
                    else
                        todo[nrt.Key] = nrt.Value;
            }
            return result;
        }
        protected void checkGFADeadEnds(Universe p, ISet<GTT> pgtts, GTDeadEnds result, GTDeadEndsRT prt, Function f, GTT gtt)
        {
            if (pgtts.Count == 0)
                result.lastGTTs.insert(index, gtt, f);
            else foreach (var pgtt in pgtts)
                    checkPGFADeadEnds(p, result, prt, f, pgtt, gttData[gtt].sgfas.ContainsKey(f));
        }

        protected void checkPGFADeadEnds(Universe p, GTDeadEnds result, GTDeadEndsRT prt, Function f, GTT pgtt, bool hasGT)
        {
            var pgttData = p.gttData[pgtt];
            if (!pgttData.sgfas.ContainsKey(f))
                if (!pgttData.rgfas.Contains(f))
                    result.lastRGFAs.insert(p.index, pgtt, f);
                else if (hasGT)
                    result.lastGFAs.insert(p.index, pgtt, f);

            if (pgttData.sgfas.ContainsKey(f) || pgttData.rgfas.Contains(f))
                prt.gfaMap.insert(f, pgtt);
        }
        protected void add<K, V>(IDictionary<K, IList<V>> map, K key, V v)
        {
            IList<V> e;
            if (!map.TryGetValue(key, out e))
                map[key] = e = new List<V>();
            e.Add(v);
        }
        protected abstract IDictionary<int, GTDeadEndsRT> getLocalGTDeadEnds(GTDeadEnds result, GTDeadEndsRT rt);
#endif
        public ISet<GC> originalGCs { get { return new HashSet<GC>(from c in originalClauses where c.isGround select c as GC); } }
        public ISet<FC> originalFCs { get { return new HashSet<FC>(from c in originalClauses where !c.isGround select c as FC); } }
        public ISet<GC> localUsedGCs { get { return new HashSet<GC>(assumedGCs.Union(originalGCs).Union(gcFGCs.Keys)); } }
        public ISet<GAF> localUsedGAFs
        {
            get
            {
                return new HashSet<GAF>(
                    (from gc in localUsedGCs from ga in gc.gls select ga.gaf)
                    .Union(from fc in localUsedFCs from il in fc.ils where il.isGround select (il as GL).gaf)
                    .Union(from gl in assumedUGCs select gl.gaf)
                    .Union(from gl in goalGLs select gl.gaf)
                    .Union(gafFGAFs.Keys)
                 );
            }
        }
        public IEnumerable<FC> localUsedFCs { get { return assumedFCs.Union(originalFCs).Union(fcFFCs.Keys); } }
        public ISet<FAF> localUsedFAFs
        {
            get
            {
                return new HashSet<FAF>(
                    (from fa in assumedUFCs select fa.faf)
                    .Union(from fc in localUsedFCs from il in fc.ils where !il.isGround select (il as FL).faf)
                    .Union(fafFFAFs.Keys)
                    );
            }
        }
        public ISet<GTT> localUsedGTTs
        {
            get
            {
                var result = new HashSet<GTT>();
                var todo = new Queue<GTT>();
                foreach (var gaf in localUsedGAFs)
                    if (result.Add(gaf.gtt))
                        todo.Enqueue(gaf.gtt);
                foreach (var gt in originalGTs)
                    foreach (var gfa in gt.gfas)
                        if (result.Add(gfa.gtt))
                            todo.Enqueue(gfa.gtt);
                foreach (var gtt in gttFGTTs.Keys)
                    if (result.Add(gtt))
                        todo.Enqueue(gtt);

                var localUseFTTs = new HashSet<FTT>(
                    (from faf in localUsedFAFs select faf.ftt)
                    .Union(fttFFTTs.Keys)
                    );
                #region ftts
                {
                    var todoFTTs = new Queue<FTT>();
                    var doneFTTs = new HashSet<FTT>();
                    foreach (var ftt in localUseFTTs)
                        if (doneFTTs.Add(ftt))
                            todoFTTs.Enqueue(ftt);
                    while (todoFTTs.Count > 0)
                    {
                        var ftt = todoFTTs.Dequeue();
                        foreach (var t in ftt)
                            if (t.isGround)
                            {
                                var gt = t as GT;
                                foreach (var gfa in gt.gfas)
                                    if (result.Add(gfa.gtt))
                                        todo.Enqueue(gfa.gtt);
                            } else if (t is FFA)
                            {
                                var ffa = t as FFA;
                                if (doneFTTs.Add(ffa.ftt))
                                    todoFTTs.Enqueue(ffa.ftt);
                            }
                    }
                }
                #endregion ftts

                while (todo.Count > 0)
                {
                    var gtt = todo.Dequeue();
                    Debug.Assert(result.Contains(gtt));
                    foreach (var gt in gtt.gtT)
                        foreach (var gfa in gt.gfas)
                            if (result.Add(gfa.gtt))
                                todo.Enqueue(gfa.gtt);
                }
                return result;
            }
        }

        public ISet<GT> succGTs
        {
            get
            {
                var r = new HashSet<GT>();
                foreach (var gt in allGTs)
                    if (gt.gfas.Length == 1 && gtData[gt].sgtts.Count == 0 && gtData[gt].sftts.Count == 0)
                        r.Add(gt);
                return r;
            }
        }
        #endregion debug

        #region knobs
        public static string knobString
        {
            get
            {
                var s = "";
                s += "maxRadius=" + maxGTDepth.ToString();
                if (maxCaseSplitDepth > 0)
                    s += " maxSplitDepth=" + maxCaseSplitDepth.ToString();

                if (joinGCKnob)
                    s += " joinGC";
                if (joinGCCrudeCommonShapeKnob)
                    s += " joinGCCommon";
                if (joinFCKnob)
                    s += " joinFC";

                if (gtSaturateGoalKnob)
                    s += " gtSatGoals";
                if (gtImportClausesKnob)
                    s += " gtTrigger";
                if (gtInstantiateFLEqualityKnob)
                    s += " gtInstFL";
                if (gtInstantiateFLNonEqualityKnob)
                    s += " gtInstFLAll";
                if (gtInstantiateCLTEqualityKnob)
                    s += " gtInstCLTEq";
                if (gtInstantiateCLTNonEqualityKnob)
                    s += " gtInstCLTAll";
                if (gtInstantiateFrameRuleKnob)
                    s += " gtInstFrame";

                if (gtImportGCAllKnob)
                    s += " gtImportGCAll";
                if (gtImportGCEqualityKnob)
                    s += " gtImportGCEQ";
                if (gtImportGCJoinKnob)
                    s += " gtImportGCJoin";
                if (gtImportGLEqualityJoinKnob)
                    s += " gtImportGLEQJoin";
                if (gtImportGLDisequalityJoinKnob)
                    s += " gtImportGLNEJoin";
                if (gtImportGCSelfEqualityGLResolutionKnob)
                    s += " gtImportGCEQRes";
                if (gtImportGCDisequalitiesGLResolutionKnob)
                    s += " gtImportGCNERes";
                if (gtImportFLKnob)
                    s += " gtImportFL";
                if (gtImportFCCLTEqualityKnob)
                    s += " gtImportCLTEq";
                if (gtImportFrameKnob)
                    s += " gtImportFrame";

                if (gtImportCLTNonEqualityKnob)
                    s += " gtImportCLTAll";

                if (gtBuiltinMapAxiomsKnob)
                    s += " gtBuiltinMap";
                if (gtBuiltinMapPropKnob)
                    s += " gtBuiltinMapProp";
                if (gtBuiltinMapReadKnob)
                    s += " gtBuiltinMapRead";
                if (gtBuiltinIntegerKnob)
                    s += " gtBuiltinInt";
                if (gtBuiltinNonGoalKnob)
                    s += " gtBuiltinNonGoal";
                if (gtBuiltinNonNewKnob)
                    s += " gtBuiltinNonNew";

                if (gtDisagreementSetKnob)
                    s += " gtDisagreementSet";

                if (glSaturateGoalKnob)
                    s += " glSat";


                if (glResolveFCKnob)
                    s += " glResFC";
                if (glResolveFCNonGoalKnob)
                    s += " glResFCNonGoal";
                if (glResolveFCNonAssumedKnob)
                    s += " glResFCNonAss";

                if (glImportPathGCKnob)
                    s += " glGCPath";
                if (glImportGCKnob)
                    s += " glImportGC";
                if (glImportGCJoinKnob)
                    s += " glImportGCJoin";
                if (glImportFCKnob)
                    s += " glImportFC";
                if (glImportFCJoinKnob)
                    s += " glImportFCJoin";

                if (gcgcSuperpositionKnob)
                    s += " gcgcSup";
                if (fcgcSuperpositionKnob)
                    s += " fcgcSup";
                if (gcfcSuperpositionKnob)
                    s += " gcfcSup";
                if (gtfcSuperpositionKnob)
                    s += " gtfcSup";

                if (addGTKnob)
                    s += " addGT";
                if (addGTTKnob)
                    s += " addGTT";

                if (extraGoalTermsKnob)
                    s += " xtraGoalGTs";
                if (extraNonGoalTermsKnob)
                    s += " xtraNonGoalGTs";
                if (extraDSATermsKnob)
                    s += " xtraDSAGTs";

                if (joinFactsGTKnob)
                    s += " joinFactsGTs";
                if (joinFactsGLKnob)
                    s += " joinFactsGAs";
                if (joinFactsGCKnob)
                    s += " joinFactsGCs";

                if (cascadeNJoinKnob)
                    s += " cascadeNJoin";

                if (allClausesAreGoalsKnob)
                    s += " allClausesGoal";

                if (cleanupIntKnob)
                    s += " cleanupInt";
                if (cleanupFreeKnob)
                    s += " cleanupFree";
                if (transitiveCleanKnob)
                    s += " tclean";
                else if (oneDownCleanKnob)
                    s += " 1dclean";
                if (numSaturationRounds > 0)
                    s += " numSats:" + numSaturationRounds.ToString();
                return s;
            }
        }

        #region join
        public static readonly bool joinGCKnob = true;
        public static readonly bool joinFCKnob = true;
        public static readonly bool joinGCCrudeCommonShapeKnob = false;
        #endregion join

        #region gt
        public static readonly bool gtSaturateGoalKnob = true;
        public static readonly bool gtSaturateNonGoalKnob = false;
        //        public static readonly bool gtSaturateInRecursionKnob = gtSaturateGoalKnob && false;

        #region gt instantiate
        public static readonly bool gtInstantiateFCKnob = gtSaturateGoalKnob && true;
        public static readonly bool gtInstantiateFCNonGoalKnob = gtInstantiateFCKnob && gtSaturateNonGoalKnob && false;

        public static readonly bool gtInstantiateFLEqualityKnob = gtInstantiateFCKnob && true;
        public static readonly bool gtInstantiateFLNonEqualityKnob = gtInstantiateFLEqualityKnob && false;

        public static readonly bool gtInstantiateCLTEqualityKnob = gtInstantiateFCKnob && false;
        public static readonly bool gtInstantiateCLTNonEqualityKnob = gtInstantiateFCKnob && false;
        public static readonly bool gtInstantiateFrameRuleKnob = gtInstantiateCLTEqualityKnob && true;
        #endregion gt instantiate

        #region gt import
        public static readonly bool gtImportClausesKnob = gtSaturateGoalKnob && true;

        public static readonly bool gtImportGCEqualityKnob = gtImportClausesKnob && true;
        public static readonly bool gtImportGCAllKnob = gtImportClausesKnob && true;
        public static readonly bool gtImportGCJoinKnob = gtImportClausesKnob && true;

        public static readonly bool gtImportGLEqualityJoinKnob = gtImportClausesKnob && joinGCKnob && true;
        public static readonly bool gtImportGLDisequalityJoinKnob = gtImportClausesKnob && joinGCKnob && false;

        public static readonly bool gtImportFCCLTEqualityKnob = gtImportClausesKnob && gtInstantiateCLTEqualityKnob && false;
        public static readonly bool gtImportCLTNonEqualityKnob = gtImportClausesKnob && gtInstantiateCLTNonEqualityKnob && false;
        public static readonly bool gtImportFLKnob = gtImportClausesKnob && gtInstantiateFLEqualityKnob && false;
        public static readonly bool gtImportFrameKnob = gtImportClausesKnob && gtInstantiateFrameRuleKnob && false;

        public static readonly bool gtImportGCSelfEqualityGLResolutionKnob = false;
        public static readonly bool gtImportGCDisequalitiesGLResolutionKnob = true;
        #endregion gt import 

        #region gt builtin
        public static readonly bool gtBuiltinMapAxiomsKnob = gtSaturateGoalKnob && true;
        public static readonly bool gtBuiltinIntegerKnob = gtSaturateGoalKnob && true;
        public static readonly bool gtBuiltinMapReadKnob = gtSaturateGoalKnob && true;

        public static readonly bool gtBuiltinNonGoalKnob = gtSaturateGoalKnob && false;
        public static readonly bool gtBuiltinNonNewKnob = gtSaturateGoalKnob && false;
        #endregion gt builtin

        #region disagreement sets
        public static readonly bool gtDisagreementSetKnob = gtSaturateGoalKnob && false;
        #endregion disagreement sets
        #endregion gt

        #region gl
        public static readonly bool glSaturateGoalKnob = true;

        public static readonly bool glResolveFCKnob = glSaturateGoalKnob && true;
        public static readonly bool glResolveFCNonGoalKnob = glResolveFCKnob && true;
        public static readonly bool glResolveFCNonAssumedKnob = glResolveFCKnob && false;

        public static readonly bool glImportPathGCKnob = glSaturateGoalKnob && false;
        public static readonly bool glImportGCKnob = glSaturateGoalKnob && true;
        public static readonly bool glImportGCJoinKnob = glImportGCKnob && joinGCKnob && true;

        public static readonly bool glImportFCKnob = glResolveFCKnob && true;
        public static readonly bool glImportFCJoinKnob = glImportFCKnob && joinFCKnob && true;
        #endregion gl

        #region gc
        public static readonly bool gcgcSuperpositionKnob = true;
        public static readonly bool gcgtSuperpositionKnob = true;
        public static readonly bool fcgcSuperpositionKnob = true;
        public static readonly bool fcgtSuperpositionKnob = true;
        public static readonly bool gtfcSuperpositionKnob = true;
        public static readonly bool gcfcSuperpositionKnob = true;
        public static readonly bool gcgcResolutionKnob = true;
        public static readonly bool gcfcResolutionKnob = true;

        public static readonly bool fcfcResolutionKnob = true;


        public static readonly int resolutionMaxWidth = 3;
        public static readonly int resolutionMaxWidthDelta = 0;
        #endregion gc

        #region fl
        public static readonly bool FLResolveGLKnob = false;
        public static readonly bool flMatchGTTKnob = false;
        #endregion fl
        #region fc
        public static readonly bool fcGroundInstancesKnob = false;
        #endregion fc

        #region add gt gtt
        public static readonly bool addGTKnob = false;
        public static readonly bool addGTTKnob = false;
        #endregion add gt gtt

        #region case split
        public static readonly int maxCaseSplitDepth = 0;
        public static readonly int firstCaseSplitRound = 1;
        public static readonly bool caseSplitOnlyKeyNodes = true;
        #endregion case split

        #region join facts
        public static readonly bool joinFactsGTKnob = false;
        public static readonly bool joinFactsGLKnob = false;
        public static readonly bool joinFactsGCKnob = false;
        #endregion join facts

        #region CFG
        public static readonly bool cascadeNJoinKnob = true;

        public static readonly bool allClausesAreGoalsKnob = false;

        #region cleanup
        public static readonly bool cleanupIntKnob = false;
        public static readonly bool cleanupFreeKnob = false;
        public static readonly bool transitiveCleanKnob = false;
        public static readonly bool oneDownCleanKnob = false;
        #endregion cleanup

        #region extra terms
        public static readonly bool extraGoalTermsKnob = false;
        public static readonly bool extraNonGoalTermsKnob = false;
        public static readonly bool extraDSATermsKnob = false;
        #endregion extra terms

        //Knoby
        public static readonly bool superpositionOnlyGroundConclusionKnob = true;
        public static readonly int superpositionFrequency = 2;
        public static readonly int superpositionFirstRound = 2;
        public static readonly int numSaturationRounds = 3;
        public static readonly int numMergeRounds = 3;
        public static readonly bool satBackKnob = false;
        public static readonly bool satMRsKnob = true;
        public static readonly bool satMRsFrameKnob = true;
        public static readonly bool gtBuiltinMapPropKnob = gtSaturateGoalKnob && false;
        public const bool allScopeKnob = false;

        public const bool disableClauseJoin = false;
        #endregion CFG

        #region depth
        public static int originalGTDepth = 0;
        public static int maxGTDepth = 3;
        public static int minGTDepth = -maxGTDepth;
        public static int maxGLRadius = 1;
        public static int topGTDepth = int.MaxValue / 4;
        #endregion depth

        #endregion knobs

        #region stats
        public virtual ISet<GTT> indexedGTTs
        {
            get
            {
                return new HashSet<GTT>(allMMGTTs.Union(allRGTTs));
            }
        }
        public virtual ISet<GT> indexedGTs
        {
            get
            {
                return new HashSet<GT>(allMMGTs);
            }
        }
        #endregion stats

        //        private static readonly System.IO.StreamWriter logFile = System.IO.File.CreateText("slicer.log");
        /*public static void log(String s)
        {
            logFile.WriteLine(s);
        }*/
    }
    public static class UU
    {
        public static void insert<K, V>(this IDictionary<K, ISet<V>[]> map, int n, K k, int i, V v)
        {
            Debug.Assert(i >= 0 && i < n);
            ISet<V>[] e;
            if (!map.TryGetValue(k, out e))
                e = map[k] = (from j in Enumerable.Range(0, n) select new HashSet<V>()).ToArray();
            e[i].Add(v);
        }
        public static void insert(
            this SortedDictionary<int, Universe.SPDAGImportRequest> map,
            IEnumerable<Universe.SPDAGImportRequest> sprs)
        {
            foreach (var spr in sprs)
                map.insert(spr);
        }
        public static void insert(
            this SortedDictionary<int, Universe.SPDAGImportRequest> map,
            Universe.SPDAGImportRequest spr)
        {
            var index = spr.universe.index;
            Universe.SPDAGImportRequest ospr;
            if (map.TryGetValue(index, out ospr))
                ospr.add(spr);
            else
                map[index] = spr;
        }
        public static void add(this IDictionary<Function, ISet<GTT>> map, IEnumerable<GFABase> gfas)
        {
            foreach (var gfa in gfas)
                map.add(gfa);
        }
        public static void add(this IDictionary<Function, ISet<GTT>> map, GFABase gfa)
        {
            map.insert(gfa.function, gfa.gtt);
        }


    }//class UU

    class RefuteException : Exception
    {
        public RefuteException(Universe u, String why)
        {
            this.universe = u;
            this.why = why;
        }
        public readonly Universe universe;
        public readonly String why;
    }

}