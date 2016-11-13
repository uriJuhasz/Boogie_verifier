#region

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Analyzers.FOLConverter.Formulae;
using Slicer.Analyzers.FOLConverter;
using JI = System.Int32;
using GTI = System.Int32;
using GTTI = System.Int32;
#endregion

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    public class JU : IU<JGTSD, JGTTSD, JSourceStructure, JTSourceStructure<GT, JGTSD, JECGT>, JTSourceStructure<GTT, JGTTSD, JECGTT>>
    {
        #region instance creation
#if DEBUG
        private static new IDictionary<int, JU> m = new Dictionary<int, JU>();
#endif
        internal static new void clean()
        {
#if DEBUG
            m.Clear();
#endif
        }
        public JU(IEnumerable<Universe> disjunctss)
            : base(disjunctss.First().srs, disjunctss.First().termRepository)
        {
#if DEBUG
            m[index] = this;
#endif
            Debug.Assert(disjunctss.Any());
            if (disjunctss.All(d => d.isRefuted))
            {
                refuteInt("All joinees refuted");
                return;
            }
            pPUS = (from d in disjunctss where !d.isRefuted select d).ToArray();
            if (pus.Length > 1)
                addToScope(FU.intersection(from ju in pus select ju.constants));
            addToScope(FU.union(from ju in pus select ju.nullaryPredicates));
            js = Enumerable.Range(0, jn).ToArray();
            jSources = new JSourceStructure(this);

            predecessorLastRevisions = (from ju in pus select ju.currentRevision).ToArray();
            for (var j = 0; j < pus.Length; j++)
                pus[j].addRevision();

            emptyGTT = makeGTT(termRepository.emptyGTT);

            #region logic basics
            trueGAF = pus[0].trueGAF;
            falseGAF = pus[0].falseGAF;
            embedGAF(falseGAF);
            #endregion logic basics

            importedJGCs = (from ju in pus select new HashSet<GC>()).ToArray();
            importedJGTs = (from ju in pus select new HashSet<GT>()).ToArray();
            Debug.Assert(invariant());
            Debug.Assert(pus.All(j => j.invariant()));
            #region path conditions
            {
                var jUniquePCs = new ISet<GL>[jn];
                var jPCs = (from ju in pus select ju.pathAtoms).ToArray();
                var cPCs = FU.intersection(jPCs);
                foreach (var cpc in cPCs)
                    assume(makeGL(cpc.pp, cpc.gaf.gtt, true));
                if (jn == 2)
                {
                    for (var j = 0; j < jn; j++)
                        jUniquePCs[j] = new HashSet<GL>(from jpc in jPCs[j] where jPCs.All(jpc2 => ReferenceEquals(jpc2, jPCs[j]) || jpc2.Contains(jpc.gNegate)) select jpc);

                    if (jUniquePCs.All(jupcs => jupcs.Any()))
                    {
                        Debug.Assert(jUniquePCs.All(n => n.Count == jUniquePCs[0].Count));
                        joineePathConditions = new GL[jn];
                        for (var j = 0; j < jn; j++)
                        {
                            var pgl = getLatestPCA(jUniquePCs[j]);
                            joineePathConditions[j] = makeGL(pgl.pp, emptyGTT, true);
                        }
                    }
                    else
                    {
                        joineePathConditions = null;
#if DEBUG
                        Console.WriteLine("      >>>Warning - not a nice join :(");
#endif
                    }
                }
            }
            #endregion path conditions

            pIinitialUniverse = pus[0].initialUniverse;
            Debug.Assert(sourcesComplete());
            #region debug
#if DEBUG
            predecessorVersionHistories = new List<int>[jn];
            for (var j = 0; j < jn; j++)
                predecessorVersionHistories[j] = new List<int> { predecessorLastRevisions[j] };
#endif
            #endregion debug
        }

        private GL getLatestPCA(ISet<GL> pcs)
        {
            Debug.Assert(pcs.Any());
            GL result = null;
            foreach (var pc in pcs)
                if (result == null)
                    result = pc;
                else if (srs.isLaterPathCondition(pc.gaf.predicate, result.gaf.predicate))
                    result = pc;
            return result;
        }
#if DEBUG
        List<int>[] predecessorVersionHistories;
#endif

        private readonly Universe pIinitialUniverse;
        public override Universe initialUniverse
        {
            get
            {
                return pIinitialUniverse;
            }
        }
        public override string ToString()
        {
            return "J<" + index + ">(" + Operator.commaSeparatedList(from j in pus select j.index.ToString()) + ")";
        }
        #endregion instance creation

        #region consistency
#if DEBUG
        /*protected override bool embedTermStructurePostCondition(EmbedTemplate et)
        {
            foreach (var gtti in sources.gtts.allTIs)
            {
                var gtt = sources.gtts.getLT(gtti);
                Debug.Assert(upToDateGTTMM(gtt));
                var gttas = sources.gtts.getTAs(gtt);
                foreach (var sgtt in gttas)
                    foreach (var j in js)
                        Debug.Assert(!joinedArray[j].inScope(sgtt[j]) || joinedArray[j].hasRGTT(sgtt[j]) || joinedArray[j].upToDateGTTMM(sgtt[j]));
            }
            return true;
        }*/

#endif
        #endregion consistency

        #region sources
        /*        protected override void removeSourcesLGT(GT gt)
                {
                    sources.gts.removeLT(gt);
                }
                protected override void removeSourcesLGTT(GTT gtt)
                {
                    sources.gtts.removeLT(gtt);
                }*/
        protected override int calculateGTDepth(GT gt)
        {
            var r = base.calculateGTDepth(gt);
            return r;
        }
        private GT makeNewGT(Function function, GTT gtt)
        {
            #region preconditions
            Debug.Assert(!isRefuted);
            Debug.Assert(upToDateGTTMM(gtt));
            #endregion preconditions
            var et = JImportTemplateMaker.make(this, function, gtt);
            #region consistency
#if DEBUG
#endif
            #endregion consistency
            var gti = sources.gtts.getLTTD(gtt).getSGFA(function);
            #region consistency
#if INVARIANTS
            Debug.Assert(et.checkSourcesBefore());
#endif
            #endregion consistency
            et.getGTs();
            embedTermStructure(et);
            #region consistency
            //TODO
            /*#if DEBUG
                        foreach (var ngti in et.template.existingGTKeys)
                        {
                            var gt1 = et.getLGT(ngti);
                            Debug.Assert(sourcesComplete(gt1));
                        }
                        foreach (var gtti in et.template.existingGTTKeys)
                        {
                            var gtt1 = et.getLGTT(gtti);
                            Debug.Assert(sourcesComplete(gtt1));
                        }
            #endif*/
            Debug.Assert(!isRefuted);
            #endregion consistency
            enqueueJoinedDisequalities(et);
            var gt = et.getLGT(gti);
            #region consistency
            Debug.Assert(gttData[gtt].sgfas[function].gt == gt);
            Debug.Assert(invariant());
            #endregion consistency
            return gt;
        }
        #endregion sources

        #region join
        public int[] js;// { get { return Enumerable.Range(0, joinedNum); } }
        public override int[] pis { get { return js; } }
        #endregion join

        #region import
        ////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////
        public override void makeOriginalGTs(IEnumerable<FunctionApplicationFormula> ts, bool isGoal)
        {
            var et = JImportTemplateMaker.makeOriginals(this, ts);
            et.getGTs();
            embedTermStructure(et);
            foreach (var t in ts)
            {
                var gt = makeGT(t, isGoal);
                Debug.Assert(gtDepth(gt) == 0);
                addOriginal(gt);
            }
            enqueueJoinedDisequalities(et);
            #region consistency
#if DEBUG
            Debug.Assert(disEqualitiesComplete());
            //            Debug.Assert(sourcesComplete());
            Debug.Assert(depthInvariant());
#endif
            #endregion consistency
        }

        #region IClause
        private ISet<IL> importJIL(int j, IL jil)
        {
            var jgl = jil as GL;
            if (jgl != null)
                return new HashSet<IL>(importJGL(j, jgl));
            else
                return new HashSet<IL>(importJFL(j, jil as FL));
        }
        private ISet<IT> importJIT(int j, IT jit)
        {
            if (jit is FVT)
                return new HashSet<IT> { import(j, jit as FVT) };
            else if (jit is GT)
            {
                var gt = jit as GT;
                return new HashSet<IT>(importJGT(j, gt));
            }
            else //if (t is FunctionApplicationEC)
                return new HashSet<IT>(importJFFA(j, jit as FFA));
        }
        #endregion IClause

        #region FreeClause
        private ISet<FC> importJFC(int j, FC jfc)
        {
            var flSets = (from fl in jfc.ils select new HashSet<IL>(importJIL(j, fl))).ToArray();
            var flAs = FU.makeOptions(flSets); //importJ
            var result = new HashSet<FC>(from flA in flAs select makeFC(flA));
            markAdded(false);
            return result;
        }
        private ISet<FL> importJFL(int j, FL jfl)
        {
            var result = new HashSet<FL>(from jaf in importJFAF(j, jfl.faf) select makeFL(jaf, jfl.polarity));
            markAdded(false);
            return result;
        }
        private ISet<FAF> importJFAF(int j, FAF jfaf)
        {
            var result = new HashSet<FAF>(from tt in importJFTT(j, jfaf.ftt) select makeFAF(jfaf.predicate, tt));
            markAdded(false);
            return result;
        }
        private ISet<FTT> importJFTT(int j, FTT jftt)
        {
            var termSets = (from t in jftt select importJIT(j, t)).ToArray();
            var tuples = new HashSet<FTT>(from o in FU.makeOptions(termSets) select makeFTT(o)); //importJ
            markAdded(false);
            return tuples;
        }
        private ISet<FFA> importJFFA(int j, FFA jffa)
        {
            return new HashSet<FFA>(from ftt in importJFTT(j, jffa.ftt) select makeFFA(jffa.function, ftt));
        }
        private FVT import(int j, FVT t)
        {
            return makeVT(t.variable);
        }
        #endregion FreeClause

        #region GroundClause
        private ISet<GC> importJGC(int j, GC jgc)
        {
            var gaNum = jgc.Count();
            var iglSets = new HashSet<GL>[jgc.gls.Count];
            for (var i = 0; i < jgc.gls.Count; i++)
            {
                var jgl = jgc.gls[i];
                var rigls = importJGL(j, jgl);
                var iglSet = iglSets[i] = new HashSet<GL>();
                foreach (var rigl in rigls)
                    if (isFalse(rigl))
                        goto skip;
                    else if (!isTrue(rigl))
                        iglSet.Add(rigl);
                if (!iglSet.Any())
                    return new HashSet<GC>();
                skip:;
            }

            var result = new HashSet<GC>();
            if (iglSets.Length == 0)
                result.Add(makeGC(new GL[0]));
            else
                result.UnionWith(from gaO in FU.makeOptions(iglSets) select makeGC(gaO)); //importJ
            #region debug
#if DEBUG
            //            if (result.Count > 1)
            //                Debugger.Break();
#endif
            #endregion debug
            return result;
        }
        private ISet<GL> importJGL(int j, GL jgl)
        {
            var gafs = importJGAF(j, jgl.gaf);
            markAdded(false);
            var result = new HashSet<GL>(from gaf in gafs select gaf.gLiteral(jgl.polarity));
            #region debug
#if DEBUG
            //            if (result.Count > 1)
            //                Debugger.Break();
#endif
            #endregion debug
            return result;
        }
        private ISet<GAF> importJGAF(int j, GAF jgaf)
        {
            var result = new HashSet<GAF>();
            var jgtt = jgaf.gtt;
            ISet<GTT> gtts; //TODO if complete
            if (sources.gtts.tryGetJTLTs(j, jgtt, out gtts))
                result.UnionWith(from gtt in gtts select makeGAF(jgaf.predicate, gtt));
            else
                result.UnionWith(
                    from gtT in FU.makeOptions(
                        (from jgt in jgtt.gtT select new HashSet<GT>(from gt in importJGT(j, jgt) where inDepthBoundStrict(gt) select gt)
                    ).ToArray())
                    select makeGAF(jgaf.predicate, gtT));
            markAdded(false);
            return result;
        }
        private ISet<GT> importJGT(int j, GT jgt)
        {
            var result = importJGTInt(j, jgt);
            markAdded(false);
#if DEBUG
            //            if (result.Count > 1)
            //                Debugger.Break();
#endif
            return result;
        }
        private ISet<GT> importJGTInt(JI j, GT ijgt)
        {
            #region setup
            var jgttToJGTByFunction = new Dictionary<GTT, IDictionary<GFA, GT>>();
            var jgttMissingTerms = new Dictionary<GTT, ISet<int>>();
            var jgtToJGTTMissingTerms = new Dictionary<GT, IDictionary<GTT, ISet<int>>>();
            var jgtMissingJGFAs = new Dictionary<GT, ISet<GFA>>();
            var objectiveJGTs = new HashSet<GT> { ijgt };
            var todoDown = new Queue<GT>();
            var visitedDownJGTs = new HashSet<GT>();
            #endregion setup

            #region propagate down
            todoDown.Enqueue(ijgt);
            visitedDownJGTs.Add(ijgt);
            jgtToJGTTMissingTerms[ijgt] = new Dictionary<GTT, ISet<int>>();
            while (todoDown.Any())
            {
                var jgt = todoDown.Dequeue();
                Debug.Assert(!jgtMissingJGFAs.ContainsKey(jgt));
                jgtMissingJGFAs[jgt] = new HashSet<GFA>(jgt.gfas);
                foreach (var jgfa in jgt.gfas)
                {
                    var jgtt = jgfa.gtt;
                    var f = jgfa.function;
                    jgttToJGTByFunction.insert(jgtt, jgfa, jgt);
                    if (jgtt.gtT.Any() && !jgttMissingTerms.ContainsKey(jgtt))
                    {
                        jgttMissingTerms[jgtt] = new HashSet<int>();
                        for (var i = 0; i < jgtt.gtT.Count; i++)
                        {
                            jgttMissingTerms[jgtt].Add(i);
                            var sjgt = jgtt.gtT[i];
                            if (visitedDownJGTs.Add(sjgt))
                            {
                                todoDown.Enqueue(sjgt);
                                Debug.Assert(!jgtToJGTTMissingTerms.ContainsKey(sjgt));
                                jgtToJGTTMissingTerms[sjgt] = new Dictionary<GTT, ISet<int>>();
                            }
                            jgtToJGTTMissingTerms.insert(sjgt, jgtt, i);
                        }
                    }
                }
            }
            #endregion propagate down

            #region propagate up
            var jgttToLGTTs = new Dictionary<GTT, ISet<GTT>>();
            var jgtToLGTs = new Dictionary<GT, ISet<GT>>();

            var todoUp = new Queue<GTT>();
            todoUp.Enqueue(emptyGTT);
            jgttToLGTTs[emptyGTT] = new HashSet<GTT> { emptyGTT };
            while (todoUp.Any())
            {
                var jgtt = todoUp.Dequeue();
                var jecgtt = sources.gtts.getJTJEC(j, jgtt);
                var lgtts = jgttToLGTTs[jgtt];
                Debug.Assert(lgtts.All(inDepthBoundStrict));
                var gttds = from lgtt in lgtts select sources.gtts.getLTTD(lgtt);
                //                var ojgtts = new HashSet<GTT>(from gttd in gttds from jgtt3 in gttd.jgtts(1 - j) select jgtt3);
                if (jn == 2 && !gttds.Any(gttd => !gttd.jgtts(1 - j).Any()))
                    continue; //reject jgtt: no gttas, so other side does not have a corresponding tuple
                foreach (var jgfaKV in jgttToJGTByFunction[jgtt])
                {
                    var f = jgfaKV.Key.function;
                    if (!(inScope(f) && pus.All(ju => ju.inScope(f))))
                        continue;//reject jgfa: f not in scope
                    {
                        var jgts = new ISet<GT>[jn];
                        foreach (var j1 in js)
                        {
                            var jgtts1 = from gttd in gttds from jgtt1 in gttd.jec(j1).jts select jgtt1;//new HashSet<GTT>(from gtta in gttas select gtta[j1]);
                            jgts[j1] = new HashSet<GT>(makeJGTs(j1, f, jgtts1)); //make
                        }
                        if (!jgts.All(s => s.Count > 0))
                            continue;
                    }
                    var lgts = new HashSet<GT>();
                    foreach (var gttd in gttds)
                    {
                        Debug.Assert(gttd.lgtts.Count == 1);
                        var lgtt = gttd.lgtts.First(); //sources.gtts.getTAT(gtta);
                        Debug.Assert(gttDepth(lgtt) < maxGTDepth);
                        if (js.All(j1 => gttd.jec(j1).jts.Any(jgtt1 => pus[j1].hasGFA(f, jgtt1))))
                            lgts.Add(makeGT(f, lgtt, false));
                    }
                    if (lgts.Count == 0)
                        continue; //skip if couldn't make LGTs
                    var jgt = pus[j].gttData[jgtt].sgfas[f].gt;
                    var newLGTs = jgtToLGTs.insert(jgt, lgts);
                    if (!jgtToLGTs[jgt].Any(lgt => js.All(j1 => sources.gts.getLTTD(lgt).jec(j1).jts.Any())))// TAs(lgt).Count > 0))//ss
                        continue;
                    if (!jgtMissingJGFAs.ContainsKey(jgt))
                        continue;
                    jgtMissingJGFAs[jgt].Remove(jgfaKV.Key);
                    if (newLGTs || jgtMissingJGFAs[jgt].Count == 0)
                    {
                        if (jgtMissingJGFAs[jgt].Count == 0)
                            jgtMissingJGFAs.Remove(jgt);
                        IDictionary<GTT, ISet<int>> e;
                        if (jgtToJGTTMissingTerms.TryGetValue(jgt, out e))
                        {
                            foreach (var kv in e)
                            {
                                var sjgtt = kv.Key;
                                jgttMissingTerms[sjgtt].ExceptWith(kv.Value);
                                if (jgttMissingTerms[sjgtt].Count == 0)
                                {
                                    var lgtSetT = (from sjgt in sjgtt.gtT select new HashSet<GT>(from lgt in jgtToLGTs[sjgt] where inDepthBoundStrict(lgt) select lgt)).ToArray();
                                    var jgtAT = (from lgtSet in lgtSetT select (from j2 in js select pus[j2].depthFilterStrict(from lgt in lgtSet from jgt2 in sources.gts.getJTs(j2, lgt) select jgt2)).ToArray()).ToArray();
                                    var jgttsA = (from j2 in js select makeJGTTs(j, from jgtA in jgtAT select jgtA[j2])).ToArray();
                                    var slgtts = new HashSet<GTT>();
                                    foreach (var jgttA in FU.makeOptions(jgttsA))
                                    {
                                        var n = jgttA[0].gtT.Count;
                                        var gtdA = new JGTSD[n];
                                        for (var i = 0; i < n; i++)
                                        {
                                            var jecA = (from j1 in js let jgtt1 = jgttA[j] select sources.gts.getJTJEC(j1, jgtt1.gtT[i])).ToArray();
                                            if (!sources.gts.tryGetJECATD(jecA, out gtdA[i]))
                                                goto skipJGTTA;
                                        }
                                        var lgtt = makeGTT(from gtd in gtdA select gtd.lgt());
                                        Debug.Assert(gttDepth(lgtt) < maxGTDepth);
                                        slgtts.Add(lgtt);
                                        skipJGTTA:;
                                    }
                                    //                                    var jecAT = (from lgtSet in lgtSetT select (from j2 in js select new HashSet<JECGT>(joinedArray[j2].depthFilter(from lgt in lgtSet from jgt2 in sources.gts.getJTs(j2, lgt) select jgt2)).ToArray()).ToArray();
                                    /*                                    var slgtts = new HashSet<GTT>();
                                                                        foreach (var pgtt in makePGTTs(jgtAT)) ////importJGT
                                                                        {
                                                                            var n = pgtt[0].gts.Count;
                                                                            var lgtA = new GT[n];
                                                                            for (var i = 0; i < n; i++)
                                                                            {
                                                                                var gta = getGTA(from jgtt1 in pgtt select jgtt1.gts[i]);
                                                                                if (!sources.gts.tryGetTALT(gta,out lgtA[i]))
                                                                                    goto skipPGTT;
                                                                            }
                                                                            var lgtt = makeGTT(lgtA);
                                                                            Debug.Assert(gttDepth(lgtt) < maxGTDepth);
                                                                            slgtts.Add(lgtt);
                                                                        skipPGTT: ;
                                                                        }*/
                                    if (lgtSetT.All(s => s.Count == 1 && gtDepth(s.First()) < maxGTDepth))
                                        slgtts.Add(makeGTT(from lgtSet in lgtSetT select lgtSet.First()));
                                    if (slgtts.Count == 0)
                                        continue;
                                    var newLGTTs = jgttToLGTTs.insert(sjgtt, slgtts);
                                    if (newLGTTs)
                                        todoUp.Enqueue(sjgtt);
                                }
                            }
                        }
                    }

                }
            }
            #endregion propagate up

            #region result
            ISet<GT> result;
            if (!jgtToLGTs.TryGetValue(ijgt, out result))
                result = new HashSet<GT>();
            return result;
            #endregion result
        }//importJGTInt(JI j, GT ijgt)

        #region importJ1
        internal class ImportJ1
        {
#if DEBUG
            private static int lastIndex = 0;
            public readonly int index;
#endif
            internal ImportJ1(JU u)
            {
                this.u = u;
                this.d = (from j in Enumerable.Range(0, u.jn) select new JData(u, j)).ToArray();
#if DEBUG
                index = lastIndex;
                lastIndex++;
#endif
            }

            internal void build(ISet<GT>[] ijgts)
            {
                for (var j = 0; j < jn; j++)
                    this.d[j].ijgts.UnionWith(ijgts[j]);
                buildTables();
            }

            public class JData
            {
                internal JData(JU u, int j)
                {
                    this.u = u;
                    this.j = j;
                }
                internal readonly JU u;
                internal readonly int j;
                internal readonly ISet<GT> ijgts = new HashSet<GT>();
                internal readonly IDictionary<GTT, IDictionary<GFA, GT>> jgttIncomingGFAs = new Dictionary<GTT, IDictionary<GFA, GT>>();
                internal readonly IDictionary<GTT, ISet<GT>> jgttMissingJGTs = new Dictionary<GTT, ISet<GT>>();
                internal readonly IDictionary<GT, ISet<GTT>> jgtSuperJGTTs = new Dictionary<GT, ISet<GTT>>();
                internal readonly IDictionary<GT, ISet<GFA>> jgtMissingJGFAs = new Dictionary<GT, ISet<GFA>>();
                internal readonly IDictionary<GTT, ISet<GTT>> jgttToLGTTs = new Dictionary<GTT, ISet<GTT>>();
                internal readonly IDictionary<GT, ISet<GT>> jgtToLGTs = new Dictionary<GT, ISet<GT>>();
                internal readonly IDictionary<GT, int> jgtRadius = new Dictionary<GT, int>();

                public readonly ISet<GT> infeasibleJGTs = new HashSet<GT>();
                public readonly ISet<GTT> infeasibleJGTTs = new HashSet<GTT>();

                internal void buildDown()
                {
                    var todoDown = new Queue<GT>();
                    var visitedDownJGTs = new HashSet<GT>();
                    foreach (var ijgt in ijgts)
                    {
                        todoDown.Enqueue(ijgt);
                        visitedDownJGTs.Add(ijgt);
                        jgtSuperJGTTs[ijgt] = new HashSet<GTT>();
                    }
                    jgttIncomingGFAs[u.emptyGTT] = new Dictionary<GFA, GT>();
                    jgttMissingJGTs[u.emptyGTT] = new HashSet<GT>();
                    while (todoDown.Any())
                    {
                        var jgt = todoDown.Dequeue();
                        Debug.Assert(!jgtMissingJGFAs.ContainsKey(jgt));
                        jgtMissingJGFAs[jgt] = new HashSet<GFA>(jgt.gfas);
                        foreach (var jgfa in jgt.gfas)
                        {
                            var jgtt = jgfa.gtt;
                            var f = jgfa.function;
                            jgttIncomingGFAs.insert(jgtt, jgfa, jgt);
                            if (!jgttMissingJGTs.ContainsKey(jgtt))
                            {
                                {
                                    jgttMissingJGTs[jgtt] = new HashSet<GT>();
                                    for (var i = 0; i < jgtt.gtT.Count; i++)
                                    {
                                        var sjgt = jgtt.gtT[i];
                                        jgttMissingJGTs[jgtt].Add(sjgt);
                                        if (visitedDownJGTs.Add(sjgt))
                                        {
                                            todoDown.Enqueue(sjgt);
                                            Debug.Assert(!jgtSuperJGTTs.ContainsKey(sjgt));
                                            jgtSuperJGTTs[sjgt] = new HashSet<GTT>();
                                        }
                                        jgtSuperJGTTs.insert(sjgt, jgtt);
                                    }
                                }
                            }
                        }
                    }
                }
                private void removeJGT(GT jgt, Queue<GTT> todoUpJGTTs, ISet<GTT> toRemoveJGTTs)
                {
                    var sjgtjgtts = jgtSuperJGTTs[jgt];
                    jgtSuperJGTTs.Remove(jgt);
                    foreach (var sjgtt in sjgtjgtts)
                        if (toRemoveJGTTs.Add(sjgtt) && jgttIncomingGFAs.ContainsKey(sjgtt) && !todoUpJGTTs.Contains(sjgtt))
                            todoUpJGTTs.Enqueue(sjgtt);

                    ijgts.Remove(jgt);
                    infeasibleJGTs.Remove(jgt);
                    var jgfas = jgtMissingJGFAs[jgt];
                    jgtMissingJGFAs.Remove(jgt);
                    jgtToLGTs.Remove(jgt);

                    foreach (var sjgfa in jgt.gfas) // jgt.gfas)// jgfas)
                        removeJGFA(todoUpJGTTs, toRemoveJGTTs, sjgfa);
                    #region consistency
#if DEBUG
                    Debug.Assert(!jgtToLGTs.ContainsKey(jgt));
                    foreach (var sjgfa in jgt.gfas)
                        Debug.Assert(
                            !jgttIncomingGFAs.ContainsKey(sjgfa.gtt) ||
                            (!jgttIncomingGFAs[sjgfa.gtt].ContainsKey(sjgfa) && jgttIncomingGFAs[sjgfa.gtt].Count > 0) ||
                            (!jgttIncomingGFAs[sjgfa.gtt].ContainsKey(sjgfa) && jgttIncomingGFAs[sjgfa.gtt].Count == 0 && toRemoveJGTTs.Contains(sjgfa.gtt))
                            );
#endif
                    #endregion consistency
                }

                private void removeJGFA(Queue<GTT> todoUpJGTTs, ISet<GTT> toRemoveJGTTs, GFA sjgfa)
                {
                    var sjgtt = sjgfa.gtt;
                    IDictionary<GFA, GT> m;
                    if (jgttIncomingGFAs.TryGetValue(sjgtt, out m))
                    {
                        m.Remove(sjgfa);
                        if (m.Count == 0)
                            if (toRemoveJGTTs.Add(sjgtt) && jgttIncomingGFAs.ContainsKey(sjgtt) && !todoUpJGTTs.Contains(sjgtt))
                                todoUpJGTTs.Enqueue(sjgtt);
                    }
                    /*     else
                             Debug.Assert(toRemoveJGTTs.Contains(sjgtt));*/
                }
                internal void trimToScope()
                {
                    var emptyGTT = u.emptyGTT;
                    var todoUpJGTTs = new Queue<GTT>();
                    var toRemoveJGTTs = new HashSet<GTT>();
                    todoUpJGTTs.Enqueue(emptyGTT);
                    jgttToLGTTs[emptyGTT] = new HashSet<GTT> { emptyGTT };
                    var doneJGTTs = new HashSet<GTT>();

                    while (todoUpJGTTs.Count > 0)
                    {
                        var jgtt = todoUpJGTTs.Dequeue();
                        Debug.Assert(!todoUpJGTTs.Contains(jgtt));
                        doneJGTTs.Add(jgtt);
                        if (toRemoveJGTTs.Contains(jgtt))
                            removeJGTT(jgtt, todoUpJGTTs, toRemoveJGTTs);
                        else
                        {
                            foreach (var jgfa in jgttIncomingGFAs[jgtt].Keys.ToList())
                            {
                                ISet<GTT> e;
                                if (!u.inScope(jgfa.function))
                                {
                                    var m = jgtMissingJGFAs[jgfa.gt];
                                    Debug.Assert(m.Contains(jgfa));
                                    m.Remove(jgfa);
                                    if (m.Count == 0)
                                        removeJGT(jgfa.gt, todoUpJGTTs, toRemoveJGTTs);
                                    else
                                        removeJGFA(todoUpJGTTs, toRemoveJGTTs, jgfa);
                                }
                                else if (jgtSuperJGTTs.TryGetValue(jgfa.gt, out e))
                                    foreach (var sjgtt in e)
                                        if (!toRemoveJGTTs.Contains(sjgtt) && !doneJGTTs.Contains(jgtt) && !todoUpJGTTs.Contains(jgtt))
                                        {
                                            doneJGTTs.Add(sjgtt);
                                            todoUpJGTTs.Enqueue(sjgtt);
                                        }
                            }
                        }
                    }
                    #region consistency
#if DEBUG
                    foreach (var jgttKV in jgttIncomingGFAs)
                    {
                        Debug.Assert(jgttIncomingGFAs[jgttKV.Key].Count > 0 || jgttIncomingGFAs.Count == 1);
                        Debug.Assert(jgttMissingJGTs[jgttKV.Key].SetEquals(jgttKV.Key.gtT));
                        foreach (var jgt in jgttKV.Value.Values)
                            Debug.Assert(jgtSuperJGTTs.ContainsKey(jgt));
                        foreach (var jgt in jgttKV.Key.gtT)
                            Debug.Assert(jgtSuperJGTTs[jgt].Contains(jgttKV.Key));
                    }
#endif
                    #endregion consistency
                }
                private void removeJGTT(GTT jgtt, Queue<GTT> todoUpJGTTs, ISet<GTT> toRemoveJGTTs)
                {
                    var sjgfas = jgttIncomingGFAs[jgtt].Keys;
                    jgttIncomingGFAs.Remove(jgtt);
                    jgttMissingJGTs.Remove(jgtt);
                    jgttToLGTTs.Remove(jgtt);
                    infeasibleJGTTs.Remove(jgtt);
                    foreach (var sjgfa in sjgfas)
                    {
                        var m = jgtMissingJGFAs[sjgfa.gt];
                        m.Remove(sjgfa);
                        Debug.Assert(m.Count == 0 == sjgfa.gt.gfas.All(jgfa => (!u.inScope(jgfa.function) || !jgttIncomingGFAs.ContainsKey(jgfa.gtt))));
                        if (m.Count == 0) //!ijgts.Contains(sjgfa) && m.Count==0) //sjgfa.gfas.All(jgfa => !jgttIncomingGFAs.ContainsKey(jgfa.gtt)))
                            removeJGT(sjgfa.gt, todoUpJGTTs, toRemoveJGTTs);
                    }

                    Debug.Assert(!jgttToLGTTs.ContainsKey(jgtt));
                    foreach (var sjgt in jgtt.gtT)
                    {
                        ISet<GTT> m;
                        if (jgtSuperJGTTs.TryGetValue(sjgt, out m))
                        {
                            m.Remove(jgtt);
                            if (m.Count == 0 && !ijgts.Contains(sjgt))
                                removeJGT(sjgt, todoUpJGTTs, toRemoveJGTTs);
                        }
                    }
                }
                internal void updateRadii(IEnumerable<GTT> updatedJGTTs)
                {
                    var todoUpP = new Queue<GTT>();
                    foreach (var jgtt in updatedJGTTs)
                        todoUpP.Enqueue(jgtt);
                    var jgtsDone = new HashSet<GT>();
                    while (todoUpP.Count > 0)
                    {
                        var jgtt = todoUpP.Dequeue();
                        var jgttRP1 = 1 + FU.max(from jgt in jgtt.gtT select jgtRadius[jgt], 0);
                        foreach (var sjgt in jgttIncomingGFAs[jgtt].Values)
                        {
                            int oldR;
                            if (!jgtRadius.TryGetValue(sjgt, out oldR) || oldR > jgttRP1 || !jgtsDone.Contains(sjgt))
                            {
                                jgtsDone.Add(sjgt);
                                setJGTRadius(sjgt, jgttRP1);
                                if (jgttRP1 > maxGTDepth)
                                    infeasibleJGTs.Add(sjgt);
                                else
                                    infeasibleJGTs.Remove(sjgt);
                                foreach (var sjgtt in jgtSuperJGTTs[sjgt])
                                    if (sjgtt.gtT.All(jgtRadius.ContainsKey))
                                        todoUpP.Enqueue(sjgtt);
                            }
                        }
                    }
                    //                    jgt has only loop jgfas left
                    infeasibleJGTTs.UnionWith(from jgtt in jgttIncomingGFAs.Keys where jgtt.gtT.Any(jgt => !jgtRadius.ContainsKey(jgt) || jgtRadius[jgt] >= maxGTDepth) select jgtt);
                }

                private void setJGTRadius(GT jgt, int r)
                {
                    jgtRadius[jgt] = r;
                }
                internal void populateLGTsUp()
                {
                    var emptyGTT = u.emptyGTT;
                    var todoUpP = new Queue<GTT>();
                    todoUpP.Enqueue(emptyGTT);
                    jgttToLGTTs[emptyGTT] = new HashSet<GTT> { emptyGTT };
                    var updatedRadius = new HashSet<GT>();
                    while (todoUpP.Count > 0)
                    {
                        var jgtt = todoUpP.Dequeue();
                        var isNew = false;
                        if (jgtt.Count > 0)
                        {
                            foreach (var lgt0 in jgtToLGTs[jgtt.gtT[0]])
                            {
                                ISet<GTT> plgtts;
                                if (u.gtData[lgt0].superGTTsByTTP.TryGetValue(Universe.makeTTPString(jgtt.dataTypes, 0), out plgtts))
                                    foreach (var plgtt in plgtts)
                                        if (u.gttDepth(plgtt) < maxGTDepth && Enumerable.Range(0, jgtt.Count).All(i => jgtToLGTs[jgtt.gtT[i]].Contains(plgtt.gtT[i])))
                                            isNew |= jgttToLGTTs.insert(jgtt, plgtt);
                            }
                        }
                        else
                            isNew = true;

                        if (isNew)
                            foreach (var jgfa in jgttIncomingGFAs[jgtt].Keys)
                            {
                                var jgt = jgfa.gt;
                                foreach (var lgtt in jgttToLGTTs[jgtt])
                                {
                                    GFA lgfa;
                                    if (u.gttData[lgtt].sgfas.TryGetValue(jgfa.function, out lgfa))
                                    {
                                        var lgt = lgfa.gt;
                                        if (jgtToLGTs.insert(jgt, lgt))
                                        {
                                            var lgtRadius = u.gtDepth(lgt);
                                            if (jgtRadius[jgt] > lgtRadius)
                                            {
                                                setJGTRadius(jgt, lgtRadius);
                                                updatedRadius.Add(jgt);
                                                infeasibleJGTs.Remove(jgt);
                                            }
                                            foreach (var sjgtt in jgtSuperJGTTs[jgt])
                                                if (sjgtt.gtT.All(jgtToLGTs.ContainsKey))
                                                    todoUpP.Enqueue(sjgtt);
                                        }
                                    }

                                }
                            }
                    }
                    var jgttsToUpdateRadius = new HashSet<GTT>(from jgt in updatedRadius from jgtt in jgtSuperJGTTs[jgt] select jgtt);
                    updateRadii(jgttsToUpdateRadius);
                }
                internal void trimInfeasible()
                {
                    foreach (var jgtt in jgttIncomingGFAs.Keys)
                        if (jgtt.gtT.Any(jgt => jgtRadius[jgt] >= Universe.maxGTDepth))
                            infeasibleJGTTs.Add(jgtt);
                    trim(infeasibleJGTs, infeasibleJGTTs);
                }
                internal void trim(ISet<GT> jgts, ISet<GTT> jgtts)
                {
                    var todoUpJGTTs = new Queue<GTT>();
                    var toRemoveJGTTs = new HashSet<GTT>();
                    foreach (var jgtt in jgtts)
                    {
                        todoUpJGTTs.Enqueue(jgtt);
                        toRemoveJGTTs.Add(jgtt);
                    }
                    foreach (var jgt in jgts.ToList())
                        removeJGT(jgt, todoUpJGTTs, toRemoveJGTTs);
                    while (todoUpJGTTs.Count > 0)
                    {
                        var jgtt = todoUpJGTTs.Dequeue();
                        Debug.Assert(toRemoveJGTTs.Contains(jgtt));
                        removeJGTT(jgtt, todoUpJGTTs, toRemoveJGTTs);
                    }
                }
            }//class JData

            internal readonly JU u;
            internal int jn { get { return u.jn; } }
            private Universe[] jus { get { return u.pus; } }
            private int[] js { get { return u.js; } }
            internal GTT emptyGTT { get { return u.emptyGTT; } }
            internal readonly JData[] d;
            private void buildTables()
            {
                for (var j = 0; j < jn; j++)
                {
                    var dj = d[j];
                    dj.buildDown();
                    dj.trimToScope();
                    if (dj.ijgts.Count == 0)
                        continue;
                    dj.updateRadii(new[] { u.emptyGTT });
                    dj.trim(new HashSet<GT>(dj.jgtSuperJGTTs.Keys.Except(dj.jgtRadius.Keys)), new HashSet<GTT>());
                    dj.populateLGTsUp();
                    dj.trimInfeasible();
                }
            }
            internal void constructUp(int j, bool isGoal, bool allLGTs)
            {
                Debug.Assert(jn == 2);
                var dj = d[j];
                if (dj.ijgts.Count == 0)
                    return;
                var todoUpJGTTs = new Queue<GTT>();
                var todoUpJGTs = new Queue<GT>();
                todoUpJGTTs.Enqueue(emptyGTT);
                dj.jgttMissingJGTs.Remove(emptyGTT);
                dj.jgttToLGTTs[emptyGTT] = new HashSet<GTT> { emptyGTT };
                foreach (var jgt in dj.jgtToLGTs.Keys)
                {
                    Debug.Assert(dj.jgtToLGTs[jgt].Count > 0);
                    todoUpJGTs.Enqueue(jgt);
                }
                while (todoUpJGTTs.Count > 0 || todoUpJGTs.Count > 0)
                {
                    #region jgtts
                    while (todoUpJGTTs.Count > 0)
                    {
                        var jgtt = todoUpJGTTs.Dequeue();
                        var lgtts = dj.jgttToLGTTs[jgtt];
                        Debug.Assert(lgtts.Count > 0);
                        Debug.Assert(lgtts.All(lgtt => u.inDepthBoundStrict(lgtt)));
                        foreach (var jgfaKV in dj.jgttIncomingGFAs[jgtt])
                        {
                            var f = jgfaKV.Key.function;
                            var jgt = jgfaKV.Value;
                            Debug.Assert(u.inScope(f));
                            var enqueueJGT = false;
                            if (dj.jgtMissingJGFAs.ContainsKey(jgt))
                            {
                                var m = dj.jgtMissingJGFAs[jgt];
                                m.Remove(jgfaKV.Key);
                                if (m.Count == 0)
                                    dj.jgtMissingJGFAs.Remove(jgt);
                                enqueueJGT = true;
                            }
                            var selectedLGTTs = new HashSet<GTT>();
                            var nlgtts = new HashSet<GTT>();
                            foreach (var lgtt in lgtts)
                                if (u.gttData[lgtt].sgfas.ContainsKey(f))
                                    selectedLGTTs.Add(lgtt);
                                else
                                    nlgtts.Add(lgtt);
                            if (allLGTs)
                                selectedLGTTs.UnionWith(nlgtts);
                            if (selectedLGTTs.Count == 0)
                                if (nlgtts.Count == 1)
                                    selectedLGTTs.UnionWith(nlgtts);
                            if (selectedLGTTs.Count == 0)
                                foreach (var lgtt in nlgtts)
                                    if (js.All(j1 => u.sources.gtts.getLTTD(lgtt).jgtts(j1).Any(jgtt1 => jus[j1].hasGFA(f, jgtt1))))
                                        selectedLGTTs.Add(lgtt);
                            /*                            {
                                                                var gttas = u.sources.gtts.getTAs(lgtt);
                                                                if (gttas.Count > 0)
                                                                    foreach (var gtta in gttas)
                                                                        if (Enumerable.Range(0, jn).All(jj => u.joinedArray[jj].gttData[gtta[jj]].sgfas.ContainsKey(f)))
                                                                            selectedLGTTs.Add(lgtt);
                                                            }*/
                            if (selectedLGTTs.Count == 0)
                                selectedLGTTs.UnionWith(from lgtt in nlgtts where js.All(j2 => u.sources.gtts.getLTTD(lgtt).jgtts(j).Any()) select lgtt);
                            var minGTTRad = maxGTDepth;
                            {
                                foreach (var lgtt in nlgtts)
                                    if (u.gttDepth(lgtt) < minGTTRad)
                                        minGTTRad = u.gttDepth(lgtt);
                            }

                            if (selectedLGTTs.Count == 0 || selectedLGTTs.All(slgtt => u.gttDepth(slgtt) > minGTTRad))
                            {
                                GTT snlgtt = null;
                                foreach (var nlgtt in nlgtts)
                                    if (u.gttDepth(nlgtt) <= minGTTRad)
                                    {
                                        minGTTRad = u.gttDepth(nlgtt);
                                        snlgtt = nlgtt;
                                    }
                                selectedLGTTs.Add(snlgtt);
                            }
                            Debug.Assert(selectedLGTTs.Count > 0);
                            foreach (var nlgtt in selectedLGTTs)
                            {
                                var nlgt = u.makeGT(f, nlgtt, isGoal);
                                if (dj.jgtToLGTs.insert(jgt, nlgt))
                                    enqueueJGT = true;
                            }
                            Debug.Assert(dj.jgtToLGTs[jgt].Count > 0);
                            if (enqueueJGT && !todoUpJGTs.Contains(jgt))
                                todoUpJGTs.Enqueue(jgt);

                        }//foreach jgfa
                    }
                    #endregion jgtts

                    while (todoUpJGTs.Count > 0)
                    {
                        var jgt = todoUpJGTs.Dequeue();
                        var lgts = dj.jgtToLGTs[jgt];
                        Debug.Assert(lgts.Count > 0);

                        ISet<GTT> e;
                        if (dj.jgtSuperJGTTs.TryGetValue(jgt, out e))
                        {
                            foreach (var kv in e)
                            {
                                var sjgtt = kv;
                                ISet<GT> mis;
                                var enqueueJGTT = false;
                                {
                                    if (dj.jgttMissingJGTs.TryGetValue(sjgtt, out mis))
                                    {
                                        mis.Remove(jgt);
                                        if (mis.Count == 0)
                                        {
                                            dj.jgttMissingJGTs.Remove(sjgtt);
                                            enqueueJGTT = true;
                                        }
                                    }

                                    if (!dj.jgttMissingJGTs.ContainsKey(sjgtt))
                                    {
                                        var lgtSetTuple = (from sjgt in sjgtt.gtT select new HashSet<GT>(from lgt in dj.jgtToLGTs[sjgt] where u.gtDepth(lgt) < maxGTDepth select lgt)).ToArray();
                                        if (lgtSetTuple.Any(s => s.Count == 0))
                                            goto skipPLGTT; //we have here a dummy max radius lgt - TODO remove properly when populating
                                        Debug.Assert(lgtSetTuple.All(s => s.Count > 0));
                                        var selectedLGTAs = new HashSet<GT[]>();
                                        if (allLGTs)                       //brute force all
                                            selectedLGTAs.UnionWith(FU.makeOptions(lgtSetTuple));
                                        if (lgtSetTuple.All(s => s.Count == 1))    //only one option
                                            selectedLGTAs.UnionWith(FU.makeOptions(lgtSetTuple));
                                        if (selectedLGTAs.Count == 0)      //try for all common lgtts
                                        {
                                            var rojgtts = new HashSet<GTT>(from ojgtt in d[1 - j].jgttIncomingGFAs.Keys where ojgtt.typeEquivalent(sjgtt) select ojgtt);
                                            if (rojgtts.Count > 0)
                                            {
                                                foreach (var rojgtt in rojgtts)
                                                {
                                                    var clgtSetTuple = new HashSet<GT>[sjgtt.gtT.Count];
                                                    for (var i = 0; i < sjgtt.gtT.Count; i++)
                                                        clgtSetTuple[i] = new HashSet<GT>(from lgt in lgtSetTuple[i] where u.sources.gts.getLTTD(lgt).jgts(1 - j).Contains(rojgtt.gtT[i]) select lgt);
                                                    if (lgtSetTuple.All(s => s.Count > 0))
                                                        selectedLGTAs.UnionWith(FU.makeOptions(clgtSetTuple));
                                                }
                                            }
                                        }
                                        if (selectedLGTAs.Count == 0)
                                        {
                                            var blgtSetTuple = (from lgtSet in lgtSetTuple select new HashSet<GT>(from lgt in lgtSet where js.All(j1 => u.sources.gts.getLTTD(lgt).jgts(j).Any()) select lgt)).ToArray();
                                            if (blgtSetTuple.All(s => s.Count > 0))
                                                selectedLGTAs.UnionWith(FU.makeOptions(blgtSetTuple));
                                        }
                                        { //select minimum radius lgtt
                                            var lgtA = new GT[sjgtt.Count];
                                            for (var i = 0; i < lgtA.Length; i++)
                                            {
                                                var r = maxGTDepth;
                                                lgtA[i] = null;
                                                foreach (var lgt in lgtSetTuple[i])
                                                    if (u.gtDepth(lgt) < r)
                                                    {
                                                        r = u.gtDepth(lgt);
                                                        lgtA[i] = lgt;
                                                    }
                                            }
                                            selectedLGTAs.Add(lgtA);
                                        }
                                        if (selectedLGTAs.Count > 0)
                                            foreach (var lgtA in selectedLGTAs)
                                            {
                                                var nlgtt = u.makeGTT(lgtA);
                                                Debug.Assert(u.gttDepth(nlgtt) < maxGTDepth);
                                                if (dj.jgttToLGTTs.insert(sjgtt, nlgtt))
                                                    enqueueJGTT = true;
                                            }
                                        else
                                            Debug.Assert(dj.jgttToLGTTs[sjgtt].Count > 0);
                                        skipPLGTT:;
                                    }//if (!dj.jgttMissingJGTs.ContainsKey(sjgtt))

                                    if (enqueueJGTT && dj.jgttToLGTTs.ContainsKey(sjgtt))
                                    {
                                        Debug.Assert(dj.jgttToLGTTs[sjgtt].Count > 0);
                                        todoUpJGTTs.Enqueue(sjgtt);
                                    }
                                }//if (dj.jgtToLGTs[jgt].Any(lgt=>u.gtRadius(lgt)<Universe.maxRadius)
                            }//foreach (var kv in e (jgtToJGTTMissingTerms[jgt]))
                        }//if (dj.jgtToJGTTMissingTerms.TryGetValue(jgt, out e))
                    }//while (todoUpJGTs.Count > 0)
                }//while (todoUpJGTTs.Count>0 || todoUpJGTs.Count>0)

                #region consistency
                foreach (var jgtKV in dj.jgtToLGTs)
                    Debug.Assert(jgtKV.Value.Count > 0);
                foreach (var jgttKV in dj.jgttToLGTTs)
                    Debug.Assert(jgttKV.Value.Count > 0);
                Debug.Assert(dj.jgttMissingJGTs.Count == 0);
                Debug.Assert(dj.jgtMissingJGFAs.Count == 0);
                #endregion consistency
            }
        }//class ImportJ1
#if DEBUG
        private static int importAndAssumeJ1GCsIndex = 0;
#endif
        private void importAndAssumeICs(ISet<GC>[] jgcSetArray, ISet<FC>[] jfcSetArray)
        {
            if (jn == 1  || disableClauseJoin)
            {
                importAndAssumeGCs(jgcSetArray);
                importAndAssumeFCs(jfcSetArray);
            }
            else
                importAndAssumeClauses(jgcSetArray, jfcSetArray);
            /*
#if DEBUG
            ISet<GC> preGCs=null;
            if (index==75 && jgcSetArray.Any(s=>s.Count>0))
            {
                preGCs = new HashSet<GC>(assumedGCs);
                var rjgcs = (from jgcSet in jgcSetArray select new HashSet<GC>(from jgc in jgcSet where isOnlyEQAndPath(jgc) select jgc)).ToArray();
                if (rjgcs.Any(s=>s.Count>0))
                {
                    Console.WriteLine("{0}.Importing", this);
                    for (var j = 0; j < 2; j++)
                        foreach (var jgc in rjgcs[j])
                            Console.WriteLine("   Imp{0}:{1}", joinedArray[j].index, jgc.ToStringB());
                }
            }
#endif
            importAndAssumeGCs(jgcSetArray, joinGuard);
#if DEBUG
            if (index == 75 && jgcSetArray.Any(s => s.Count > 0))
            {
                var newGCs = new HashSet<GC>(from ngc in assumedGCs.Except(preGCs) where isOnlyEQAndPath(ngc) select ngc);
                if (newGCs.Count > 0)
                {
                    Console.WriteLine("New Clauses at {0}", this);
                    foreach (var ngc in newGCs)
                        Console.WriteLine("   Jn{0}:{1}", index, ngc.ToStringB());
                }
            }
#endif*/
        }
        private void importAndAssumeClauses(ISet<GC>[] jgcSetArray, ISet<FC>[] jfcSetArray)
        {

            #region debug
#if DEBUG
            Debug.Assert(jn == 2);
            importAndAssumeJ1GCsIndex++;
#endif
            #endregion debug

            #region early out
            if (jgcSetArray.All(ss => ss.Count == 0) && jfcSetArray.All(ss => ss.Count == 0))
                return;
            #endregion early out

            #region setup
            var isGoal = false;
            var allLGTs = false;
            var joinEqGuard = true;
            var joinGCGuard = joinGCKnob;
            var joinFCGuard = joinFCKnob;

            var s = new ImportJ1(this);
            var jgcTopJGTs = new IDictionary<GC, ISet<GT>>[jn];
            var topJGTGCs = new IDictionary<GT, ISet<GC>>[jn];
            var jfcTopJGTs = new IDictionary<FC, ISet<GT>>[jn];
            var topJGTFCs = new IDictionary<GT, ISet<FC>>[jn];
            var ijgts = new ISet<GT>[jn];
            for (var j = 0; j < jn; j++)
            {
                #region gcs
                jgcTopJGTs[j] = new Dictionary<GC, ISet<GT>>();
                topJGTGCs[j] = new Dictionary<GT, ISet<GC>>();
                ijgts[j] = new HashSet<GT>();
                foreach (var jgc in jgcSetArray[j])
                {
                    var jgts = new HashSet<GT>(from jgl in jgc.gls from jgt in jgl.gtt.gtT select jgt);
                    ijgts[j].UnionWith(jgts);
                    jgcTopJGTs[j].insert(jgc, jgts);
                    foreach (var jgt in jgts)
                        topJGTGCs[j].insert(jgt, jgc);
                }
                #endregion gcs

                #region fcs
                jfcTopJGTs[j] = new Dictionary<FC, ISet<GT>>();
                topJGTFCs[j] = new Dictionary<GT, ISet<FC>>();
                foreach (var jfc in jfcSetArray[j])
                {
                    var jgts = new HashSet<GT>(from jl in jfc.ils from jgt in jl.topGTs select jgt);
                    ijgts[j].UnionWith(jgts);
                    jfcTopJGTs[j].insert(jfc, jgts);
                    foreach (var jgt in jgts)
                        topJGTFCs[j].insert(jgt, jfc);
                }
                #endregion fcs
            }
            s.build(ijgts);
            for (var j = 0; j < jn; j++)
            {
                var dj = s.d[j];
                var jgtsToRemove = new HashSet<GT>();
                var topJGTGCsJ = topJGTGCs[j];
                var jgcJGTsJ = jgcTopJGTs[j];
                var topJGTFCsJ = topJGTFCs[j];
                var jfcJGTsJ = jfcTopJGTs[j];
                var unreachableJGTs = dj.infeasibleJGTs.Union(ijgts[j].Except(dj.jgtSuperJGTTs.Keys));
                var potentialJGTsToRemove = new HashSet<GT>();
                foreach (var jgt in unreachableJGTs)
                {
                    ISet<GTT> jgtSuperJGTTs;
                    if (dj.jgtSuperJGTTs.TryGetValue(jgt, out jgtSuperJGTTs) && jgtSuperJGTTs.Count == 0)
                        jgtsToRemove.Add(jgt);
                    ISet<GC> jgcs;
                    if (topJGTGCsJ.TryGetValue(jgt, out jgcs))
                    {
                        topJGTGCsJ.Remove(jgt);
                        foreach (var jgc in jgcs) //Remove all infeasible jgcs and their jgts
                        {
                            var jgcJGTs = jgcJGTsJ[jgc];
                            jgcJGTsJ.Remove(jgc);
                            jgcJGTs.Remove(jgt);
                            foreach (var jgt2 in jgcJGTs)
                            {
                                var jgt2JGCs = topJGTGCsJ[jgt2];
                                jgt2JGCs.Remove(jgc);
                                if (jgt2JGCs.Count == 0)
                                    potentialJGTsToRemove.Add(jgt2);
                            }
                        }
                    }
                    ISet<FC> jfcs;
                    if (topJGTFCsJ.TryGetValue(jgt, out jfcs))
                    {
                        topJGTFCsJ.Remove(jgt);
                        foreach (var jfc in jfcs) //Remove all infeasible jfcs and their jgts
                        {
                            var jfcJGTs = jfcJGTsJ[jfc];
                            jfcJGTsJ.Remove(jfc);
                            jfcJGTs.Remove(jgt);
                            foreach (var jgt2 in jfcJGTs)
                            {
                                var jgt2JFCs = topJGTFCsJ[jgt2];
                                jgt2JFCs.Remove(jfc);
                                if (jgt2JFCs.Count == 0)
                                    potentialJGTsToRemove.Add(jgt2);
                            }
                        }
                    }
                }
                foreach (var jgt2 in potentialJGTsToRemove)
                {
                    ISet<GC> jgt2JGCs = null;
                    ISet<FC> jgt2JFCs = null;
                    if (
                        (!topJGTGCsJ.TryGetValue(jgt2, out jgt2JGCs) || jgt2JGCs.Count == 0) &&
                        (!topJGTFCsJ.TryGetValue(jgt2, out jgt2JFCs) || jgt2JFCs.Count == 0))
                    {
                        topJGTGCsJ.Remove(jgt2);
                        topJGTFCsJ.Remove(jgt2);
                        ISet<GTT> e;
                        if (dj.jgtSuperJGTTs.TryGetValue(jgt2, out e) && e.Count == 0)
                            jgtsToRemove.Add(jgt2);
                    }
                }

                dj.trim(jgtsToRemove, new HashSet<GTT>());
                #region consistency
#if DEBUG
                foreach (var jgcKV in jgcJGTsJ)
                    foreach (var jgt3 in jgcKV.Value)
                        Debug.Assert(dj.jgtSuperJGTTs.ContainsKey(jgt3));
#endif
                #endregion consistency
            }
            #endregion setup

            #region propagate up
            for (var j = 0; j < jn; j++)
                s.constructUp(j, isGoal, allLGTs);
            #endregion propagate up

            #region build and assume gcs and eqs
            var jglByPP = new IDictionary<string, ISet<GL>>[jn];
            for (var j = 0; j < jn; j++)
            {
                jglByPP[j] = new Dictionary<string, ISet<GL>>();
                foreach (var jgc in jgcTopJGTs[j].Keys)
                    foreach (var jgl in jgc.gls)
                        jglByPP[j].insert(makePPString(jgl), jgl);
            }

            var jglLGLs = new IDictionary<GL, ISet<GL>>[jn];
            var lglJGLs = new IDictionary<GL, ISet<GL>>[jn];
            for (var j = 0; j < jn; j++)
            {
                jglLGLs[j] = new Dictionary<GL, ISet<GL>>();
                foreach (var jgc in jgcTopJGTs[j].Keys)
                {
                    foreach (var jgl in jgc.gls)
                        if (!jglLGLs[j].ContainsKey(jgl))
                        {
                            var lgtTs = new HashSet<GT[]>();
                            var ojgls = new HashSet<GL>();
                            Debug.Assert(jgl.gtt.gtT.All(jgt => s.d[j].jgtToLGTs.Count > 0));
                            var matchingOJGLs = new HashSet<GL>();
                            ISet<GL> oojgls;
                            if (jglByPP[1 - j].TryGetValue(makePPString(jgl), out oojgls))
                            {
                                foreach (var ojgl in oojgls)
                                {
                                    var clgts = new ISet<GT>[jgl.gtt.Count];
                                    Debug.Assert(ojgl.gtt.gtT.All(jgt => s.d[j].jgtToLGTs.Count > 0));
                                    for (var i = 0; i < jgl.gtt.gtT.Count; i++)
                                    {
                                        clgts[i] = depthFilterStrict(s.d[j].jgtToLGTs[jgl.gtt.gtT[i]].Intersect(s.d[1 - j].jgtToLGTs[ojgl.gtt.gtT[i]]));
                                        if (clgts[i].Count == 0)
                                            goto skipOJGL;
                                    }
                                    lgtTs.UnionWith(FU.makeOptions(clgts));
                                    Debug.Assert(lgtTs.All(ss => ss.All(t => t != null)));
                                    matchingOJGLs.Add(ojgl);
                                    skipOJGL:;
                                }
                            }
                            if (lgtTs.Count == 0)
                            {
                                var jgtA = (from jgt in jgl.gtt.gtT select selectMinRadius(s.d[j].jgtToLGTs[jgt])).ToArray();
                                if (inDepthBoundStrict(jgtA))
                                    lgtTs.Add(jgtA);
                            }
                            Debug.Assert(lgtTs.All(ss => ss.All(t => t != null)));
                            Debug.Assert(lgtTs.All(inDepthBoundStrict));

                            jglLGLs[j].insert(jgl, (from lgtT in lgtTs let lgl = makeGL(jgl.pp, lgtT, false) /*where !isTrue(lgl)*/ select lgl).ToArray());
                        }
                }
                lglJGLs[j] = new Dictionary<GL, ISet<GL>>();
                foreach (var jglKV in jglLGLs[j])
                    foreach (var lgl in jglKV.Value)
                        lglJGLs[j].insert(lgl, jglKV.Key);
            }

            var commonLGLs = FU.intersection(from d in lglJGLs select d.Keys);

            var rgcs = new HashSet<GC>();
            for (var j = 0; j < jn; j++)
            {
                foreach (var jgc in jgcTopJGTs[j].Keys)
                {
                    var cglSets = (from jgl in jgc.gls select new HashSet<GL>(jglLGLs[j][jgl].Intersect(commonLGLs))).ToArray();
                    var gcOs = (from glO in FU.makeOptions(cglSets) select new HashSet<GL>(glO));
                    var usedGCOs = new List<ISet<GL>>();
                    foreach (var gcO in gcOs)
                        foreach (var ojgc in jgcTopJGTs[1 - j].Keys)
                        {
                            if (ojgc.gls.All(ojgl => jglLGLs[1 - j][ojgl].Intersect(gcO).Any()))
                            {
                                assumeGLs(gcO, false, false);
                                if (isRefuted)
                                    return;
                                usedGCOs.Add(gcO);
                            }
                        }
                    if (usedGCOs.Count == 0 && joineePathConditions != null && joinGCGuard)
                    {
                        if (jgc.gls.All(jgl => jglLGLs[j][jgl].Count > 0))
                        {
                            var gco = new HashSet<GL>(from jgl in jgc.gls select selectMinRadius(jglLGLs[j][jgl]));
                            gco.Add(joineePathConditions[j].gNegate);
                            assumeGLs(gco, false, false);
                            if (isRefuted)
                                return;
                        }
                    }
                }
                if (!allLGTs && joineePathConditions != null && joinEqGuard)
                {
                    foreach (var jgtKV in s.d[j].jgtToLGTs)
                        if (jgtKV.Value.Count > 1)
                        {
                            var lgt0 = jgtKV.Value.First();
                            if (inDepthBoundStrict(lgt0))
                                foreach (var lgt in jgtKV.Value.Skip(1))
                                    if (inDepthBoundStrict(lgt))
                                    {
                                        assumeGLs(new[] { joineePathConditions[j].gNegate, makeEQG(lgt0, lgt) }, isGoal, false);
                                        if (isRefuted)
                                            return;
                                    }
                        }
                }
            }
            #endregion build and assume gcs and eqs

            #region build and assume fcs
            #region setup
            var todoFCs = (from ss in jfcTopJGTs select new HashSet<FC>(ss.Keys)).ToArray();
#if DEBUG
            for (var j = 0; j < jn; j++)
                foreach (var jfc in todoFCs[j])
                    foreach (var jil in jfc.ils)
                        foreach (var jgt in jil.topGTs)
                            Debug.Assert(s.d[j].jgtToLGTs[jgt].Count > 0);
#endif
            var nfcs = new HashSet<FC>();
            var jgtMapArray = new Dictionary<GT, GT>[jn];
            for (var j = 0; j < pus.Length; j++)
            {
                var gtMap = jgtMapArray[j] = new Dictionary<GT, GT>();
                foreach (var jgtKV in s.d[j].jgtToLGTs)
                    gtMap[jgtKV.Key] = selectMinRadius(jgtKV.Value);
            }
            #endregion setup

            #region common fcs
            var cjfcs = FU.intersection(from ss in jfcTopJGTs select ss.Keys);
            foreach (var jfc in cjfcs)
            {
#if DEBUG
                foreach (var l in jfc.ils)
                    foreach (var gt in l.allGTs)
                        for (var j = 0; j < jn; j++)
                            Debug.Assert(s.d[j].jgtToLGTs.Count > 0);
#endif
                var fc = tryImportCommonJFC(jfc, jgtMapArray);
                if (fc != null)
                    nfcs.Add(fc);
                for (var j = 0; j < jn; j++)
                    todoFCs[j].Remove(jfc);
            }
            #endregion common fcs

            #region matching fcs
            var fcMapArray = new Dictionary<string, ISet<FC>>[jn];
            for (var j = 0; j < pus.Length; j++)
            {
                var fcMap = fcMapArray[j] = new Dictionary<string, ISet<FC>>();
                foreach (var jfc in todoFCs[j])
                    fcMap.insert(jfc.ToStringN(jgtMapArray[j]), jfc);
            }
            var commonKeys = FU.intersection(from jfcm in fcMapArray select jfcm.Keys);
            foreach (var key in commonKeys)
            {
#if DEBUG
                for (var j = 0; j < jn; j++)
                    Debug.Assert(fcMapArray[j][key].Count == 1);
#endif
                var fcA = (from j in Enumerable.Range(0, jn) select fcMapArray[j][key].First()).ToArray();
                var fc = tryImportCommonKeyFC(fcA, jgtMapArray);
                if (fc != null)
                    nfcs.Add(fc);
                for (var j = 0; j < jn; j++)
                    todoFCs[j].Remove(fcA[j]);
            }
            #endregion matching fcs

            #region unmatched fcs
            if (joinFCGuard && (joineePathConditions != null))
                for (var j = 0; j < jn; j++)
                    foreach (var jfc in todoFCs[j])
                    {
                        var fc = tryImportJFC(j, jfc, jgtMapArray);
                        if (fc != null)
                            nfcs.Add(fc);
                    }
            #endregion unmatched fcs

            #region assume fcs
            foreach (var pfc in nfcs)
            {
                var ic = assumeFC(pfc);
                if (isRefuted)
                    return;
                if (!ic.isTrue && !ic.isGround)
                    setImported(ic as FC);
            }
            markAdded(false);
            #endregion assume fcs
            #endregion build and assume fcs
        }

        private FC tryImportCommonJFC(FC jfc, IDictionary<GT, GT>[] jgtMapArray)
        {
            var ls = new HashSet<IL>();
            foreach (var jil in jfc.ils)
            {
                var il = tryImportJIL(0, jil, jgtMapArray);
                if (il == null)
                    return null;
                ls.Add(il);
            }
            return makeFC(ls);
        }
        private IL tryImportJIL(int j, IL jl, IDictionary<GT, GT>[] jgtMapArray)
        {
            var jgl = jl as GL;
            if (jgl != null)
                return tryImportGL(j, jgl, jgtMapArray);
            else
                return tryImportFL(j, jl as FL, jgtMapArray);
        }
        private FL tryImportFL(JI j, FL jfl, IDictionary<GT, GT>[] jgtMapArray)
        {
            var ftt = tryImportJFTT(j, jfl.ftt, jgtMapArray);
            if (ftt == null)
                return null;
            return makeFL(jfl.pp, ftt);
        }
        private FTT tryImportJFTT(JI j, FTT jftt, IDictionary<GT, GT>[] jgtMapArray)
        {
            var ts = new List<IT>();
            foreach (var jit in jftt)
            {
                var it = tryImportJIT(j, jit, jgtMapArray);
                if (it == null || !inDepthBoundStrict(it))
                    return null;
                ts.Add(it);
            }

            return makeFTT(ts);
        }
        private IT tryImportJIT(JI j, IT jit, IDictionary<GT, GT>[] jgtMapArray)
        {
            var jgt = jit as GT;
            if (jgt != null)
                return tryImportJGT(j, jgt, jgtMapArray);
            var jffa = jit as FFA;
            if (jffa != null)
                return tryImportJFFA(j, jffa, jgtMapArray);
            return makeVT((jit as FVT).variable);
        }
        private FFA tryImportJFFA(JI j, FFA jffa, IDictionary<GT, GT>[] jgtMapArray)
        {
            var ftt = tryImportJFTT(j, jffa.ftt, jgtMapArray);
            if (ftt == null)
                return null;
            else
                return makeFFA(jffa.function, ftt);
        }
        private IL tryImportGL(JI j, GL gl, IDictionary<GT, GT>[] jgtMapArray)
        {
            var gtt = tryImportJGTT(j, gl.gtt, jgtMapArray);
            if (gtt == null)
                return null;
            else
                return makeGL(gl.pp, gtt, false);
        }
        private GTT tryImportJGTT(JI j, GTT jgtt, IDictionary<GT, GT>[] jgtMapArray)
        {
            var gtT = from jgt in jgtt.gtT select tryImportJGT(j, jgt, jgtMapArray);
            if (inDepthBoundStrict(gtT))
                return makeGTT(gtT);
            else
                return null;
        }
        private GT tryImportJGT(JI j, GT jgt, IDictionary<GT, GT>[] jgtMapArray)
        {
            //            Debug.Assert(jgtMapArray.All(m => m[jgt] == jgtMapArray[0][jgt]));
            return jgtMapArray[j][jgt];
        }
        private FC tryImportCommonKeyFC(FC[] jfcArray, IDictionary<GT, GT>[] jgtMapArray)
        {
            return tryImportCommonJFC(jfcArray[0], jgtMapArray);
        }
        private FC tryImportJFC(JI j, FC jfc, IDictionary<GT, GT>[] jgtMapArray)
        {
            var ls = new HashSet<IL>();
            foreach (var jil in jfc.ils)
            {
                var il = tryImportJIL(j, jil, jgtMapArray);
                if (il == null)
                    return null;
                ls.Add(il);
            }
            ls.Add(joineePathConditions[j].gNegate);
            return makeFC(ls);
        }

        private T selectMinRadius<T>(ISet<T> ts, Func<T, int> f, int max)
        {
            Debug.Assert(ts.Count > 0);
            var r = max;
            T t = default(T);
            foreach (var nt in ts)
            {
                var nr = f(nt);
                if (nr < r)
                {
                    r = nr;
                    t = nt;
                }
            }
            return t;

        }

        private GT selectMinRadius(ISet<GT> lgts)
        {
            return selectMinRadius(lgts, (lgt) => gtDepth(lgt), int.MaxValue);
        }
        private GL selectMinRadius(ISet<GL> lgls)
        {
            return selectMinRadius(lgls, (lgl) => gttDepth(lgl.gtt), int.MaxValue);
        }

        private string makePPString(GL jgl)
        {
            return (jgl.polarity ? "+" : "-") + jgl.predicate.nameN;
        }


        #endregion importJ1

        #endregion GroundClause
        #endregion import

        #region embed
        protected override GT makeAndEmbedNewGT(Function f, GTT gtt)
        {
            #region preconditions
#if DEBUG
            Debug.Assert(upToDateGTTMM(gtt));
            Debug.Assert(!gttData[gtt].sgfas.ContainsKey(f));
            Debug.Assert(inScope(f));
            Debug.Assert(gttDepth(gtt) < maxGTDepth);
#endif
            #endregion preconditions
            var gt = makeNewGT(f, gtt);
            #region postconditions
            Debug.Assert(gt.gfasByFunction[f].ContainsKey(gtt));
            #endregion postconditions
            return gt;
        }
        #endregion embed

        #region join extras
        private static readonly ISet<GT> noLGTs = new HashSet<GT>();
        private ISet<GT> getJGTLGTs(JI j, GT jgt)
        {
            ISet<GT> lgts;
            if (!tryGetJGTLGTs(j, jgt, out lgts))
                lgts = noLGTs;
            return lgts;
        }
        private void enqueueJoinedDisequalities(IEmbedTemplate et)
        {//TODO incremental
            if (jn == 1)
            {
                var pu = pus[0];
                foreach (var gt in allGTs)
                {
                    var gtd = sources.gts.getLTTD(gt);
                    foreach (var jgt in gtd.jgts(0))
                        foreach (var deJGT in pu.getGTDisequalities(jgt))
                        {
                            ISet<GT> deGTs;
                            if (tryGetJGTLGTs(0, deJGT, out deGTs))
                                foreach (var deGT in deGTs)
                                {
                                    assumeGDE(gt, deGT);
                                    if (isRefuted)
                                        return;
                                }
                        }
                }
            }
            else
            {//Assymtric - to do - symmetric
                Debug.Assert(jn == 2);
                foreach (var gt in allGTs)
                {
                    var gtd = sources.gts.getLTTD(gt);
                    foreach (var jgt0 in gtd.jgts(0))
                        foreach (var deJGT0 in pus[0].getGTDisequalities(jgt0))
                        {
                            ISet<GT> deGTs;
                            if (tryGetJGTLGTs(0, deJGT0, out deGTs))
                                foreach (var deGT in deGTs)
                                    if (!isUnequal(gt, deGT))
                                        if (gtd.jgts(1).Any(jgt1 => pus[1].getGTDisequalities(jgt1).Any(deJGT1 => getJGTLGTs(1, deJGT1).Contains(deGT))))
                                            assumeGDE(gt, deGT);
                        }
                }
            }
            //TODO use new disequalities from template/revision
            /*            foreach (var gt in gts)
                        {
                            var gtd = sources.gts.getLTTD(gt);
                            var commonDEGTs = FU.intersection(from j in js select new HashSet<GT>(from jgt in gtd.jgts(j) from dejgt in pus[j].getGTDisequalities(jgt) where sources.gts.hasJT(j, dejgt) from lgt2 in sources.gts.getJTLTs(j, dejgt) select lgt2));
                            foreach (var gt2 in commonDEGTs)
                                if (!gtData[gt].disequalities.Contains(gt2))
                                {
                                    assumeGNE(gt, gt2);
                                    if (isRefuted)
                                        return;
                                }
                        }*/
        }
        #endregion join extras

        #region JGTs and JGTTs
        public ISet<GT> makeJGTs(int j, Function f, IEnumerable<GTT> jgtts)
        {
            return makeJoineeGTs(j, f, jgtts, false);
        }
        public ISet<GT> makeJoineeGTs(int j, Function f, IEnumerable<GTT> jgtts, bool isGoalv)
        {
            if (!pus[j].inScope(f))
                return new HashSet<GT>();
            return pus[j].makeSuccessorGTs(new MSGTRT(f, jgtts, isGoalv));
        }
        protected override bool predecessorRelevant(Function f, GTT gtt)
        {
            var gttd = sources.gtts.getLTTD(gtt);
            return js.All(j => pus[j].inScope(f) && gttd.jgtts(j).Any());
        }
        #endregion JGTs and JGTTs

        #region MSGT
        internal override MSGTRTC makeMSGTRTC(MSGTRT rt)
        {
            Debug.Assert(inScope(rt.function));
            return new JMSGTRTC(this, rt);
        }
        internal class JMSGTRTC : MSGTRTC
        {
            public JMSGTRTC(JU universe, MSGTRT rt)
                : base(universe, rt)
            {
                this.universe = universe;
            }

            public readonly JU universe;
            protected override void p1I()
            {
                universe.makeSuccessorGTsP1(this);
            }
            protected override void p2I()
            {
                universe.makeSuccessorGTsP2(this);
            }
        }
        internal void makeSuccessorGTsP1(JMSGTRTC ar)
        {
            #region precondition
#if DEBUG
            foreach (var gtt in ar.gtts)
                Debug.Assert(upToDateGTTMM(gtt));
            Debug.Assert(inScope(ar.function));
#if INVARIANTS
            Debug.Assert(invariant());
#endif
#endif
            #endregion precondition

            makeSuccessorGTsP1A(ar);

            var function = ar.function;
            var ngtts = ar.ngtts;
            if (ngtts.Any(ngtt => sources.gtts.ltHasJTsForAll(ngtt)) && pus.Any(ju => ju.inScope(function)))
            {
                ar.outRTs = new MSGTRT[jn];
                if (pus.Any(ju => ju.inScope(function)))
                {
                    var jgtts = (
                        from j in js
                        let pu = pus[j]
                        select new HashSet<GTT>(
                            pu.inScope(function)
                                ?
                            from ngtt in ngtts
                            let gttd = sources.gtts.getLTTD(ngtt)
                            where js.All(j => gttd.jgtts(j).Any())
                            from jgtt in gttd.jgtts(j)
                            select jgtt
                                :
                            new GTT[0])
                        ).ToArray();
                    for (var j = 0; j < pus.Length; j++)
                        if (pus[j].inScope(function))
                            ar.outRTs[j] = new MSGTRT(function, jgtts[j], ar.isGoal);
                        else
                            ar.outRTs[j] = null;

                }
            }
            else
                ar.outRTs = new MSGTRT[0];
        }
        internal void makeSuccessorGTsP2(JMSGTRTC ar)
        {
            var function = ar.function;
            var isGoal = ar.isGoal;
            var ngtts = ar.ngtts;

            if (ar.outRTs.Any())
            {
                var coveredTuplesByJoinee = new Dictionary<GTT, ISet<int>>();
                var jTerms = new ISet<GT>[jn];
                foreach (var j in js)
                    if (ar.outRTs[j] != null)
                    {
                        var jgts = ar.outRTs[j].rgts;
                        foreach (var jgt in jgts)
                            foreach (var jgfa in jgt.gfasByFunction[function].Values)
                            {
                                ISet<GTTI> gttis;
                                if (sources.gtts.tryGetJTTIs(j, jgfa.gtt, out gttis))
                                {
                                    var vgtts = new HashSet<GTT>(from gtti in gttis where sources.gtts.getTD(gtti).isActual select sources.gtts.getLT(gtti));
                                    foreach (var gtt in vgtts)
                                    {
                                        if (ar.ngtts.Contains(gtt)) //TODO: do this better
                                        {
                                            if (j == 0 && !coveredTuplesByJoinee.ContainsKey(gtt))
                                                coveredTuplesByJoinee[gtt] = new HashSet<int>();
                                            if (coveredTuplesByJoinee.ContainsKey(gtt))
                                                coveredTuplesByJoinee[gtt].Add(j);
                                        }
                                    }
                                }
                            }
                    }
                foreach (var gttKV in coveredTuplesByJoinee)
                {
                    var gtt = gttKV.Key;
                    var count = gttKV.Value.Count;
                    if (count == jn && gttDepth(gtt) < maxGTDepth)
                    {
                        var gt = makeGT(function, gtt, isGoal);
                        addMSGT(ar, gt);
                        ngtts.Remove(gtt);
                    }
                }
            }

            makeSuccessorGTsP2A(ar);
            markAdded(false);
        }
        #endregion MSGT

        #region Instantiation
        protected override sealed void instP2(InstRTC ar)
        {
            if (ar.outRTs != null && ar.outRTs.Any())
            {
                foreach (var pp in ar.nInstSet.allPPs)
                    foreach (var ngtt in ar.nInstSet.getPPGTTs(pp))
                    {
                        #region pathGC
                        if (glImportPathGCKnob && joineePathConditions != null && !isFalse(pp.n, ngtt))
                            foreach (var j in js)
                            {
                                var falseInJM1 = getLGTTJGTTs(1 - j, ngtt).Any(jgtt => pus[1 - j].isFalse(pp.n, jgtt));
                                if (falseInJM1)
                                {
                                    var gl = makeGL(pp, ngtt, false);
                                    var gc = makeGC(new[] { gl, joineePathConditions[j] }, true);
                                    assume(gc);
                                }
                            }
                        #endregion pathGC
                    }
                var jfcSetArray = (from j in ar.outRTs select j == null ? new HashSet<FC>() : j.rfcs).ToArray();
                var jgcSetArray = (from j in ar.outRTs select j == null ? new HashSet<GC>() : j.rgcs).ToArray();
                importAndAssumeICs(jgcSetArray, jfcSetArray);
            }
            #region join holds
            if (joineePathConditions != null && jn == 2)
                for (var j = 0; j < jn; j++)
                {
                    var ju = pus[j];
                    if (ju.isRefuted)
                        assume(joineePathConditions[j].gNegate);
                    else
                        foreach (var pp in ar.nInstSet.allPPs)
                            foreach (var ngtt in ar.nInstSet.getPPGTTs(pp))
                                if (pp.isEqDE)
                                {
                                    var jgt0s = new HashSet<GT>(getLGTJGTs(j, ngtt.gtT[0]));
                                    var jgt1s = new HashSet<GT>(getLGTJGTs(j, ngtt.gtT[1]));
                                    if (pp.polarity)
                                    {
                                        if (jgt0s.Intersect(jgt1s).Any())
                                        {
                                            assumeGLs(new[] { joineePathConditions[j].gNegate, makeGL(pp, ngtt) }, false, false);
                                            if (isRefuted)
                                                return;
                                        }
                                    }
                                    else
                                    {
                                        if (jgt0s.Any(jgt0 => ju.gtData[jgt0].disequalities.Intersect(jgt1s).Any()))
                                        {
                                            assumeGLs(new[] { joineePathConditions[j].gNegate, makeGL(pp, ngtt) }, false, false);
                                            if (isRefuted)
                                                return;
                                        }
                                    }
                                }
                                else
                                    if (ju.inScope(pp.predicate))
                                    foreach (var jgtt in getLGTTJGTTs(j, ngtt))
                                        if (ju.isTrue(pp, jgtt))
                                        {
                                            assumeGLs(new[] { joineePathConditions[j].gNegate, makeGL(pp, ngtt) }, false, false);
                                            if (isRefuted)
                                                return;
                                        }
                }
            #endregion join holds

            if (gtImportGLEqualityJoinKnob || gtImportGLDisequalityJoinKnob)
                getGTEQNEGLJoin(ar.nInstSet.allGTs);

            instP2A(ar);
            markAdded(false);
        }
        private void getGTEQNEGLJoin(IEnumerable<GT> ngts)
        {
            if (jn == 2 && joineePathConditions != null)
            {
                foreach (var gt in ngts)
                {
                    var gtd = sources.gts.getLTTD(gt);
                    if (sources.gts.ltHasJTsForAll(gt))
                    {
                        for (var j = 0; j < jn; j++)
                            foreach (var jgt in gtd.jgts(j))
                            {
                                #region equalities
                                if (gtImportGLEqualityJoinKnob && inDepthBoundStrict(gt))
                                    foreach (var gt2 in importJGT(j, jgt))
                                        if (gt2 != gt && inDepthBoundStrict(gt2))
                                        {
                                            var ge = makeEQG(gt, gt2);
                                            makeAndAssumeJoinClause(j, new[] { ge });
                                        }
                                #endregion equalities

                                #region disequalities
                                if (gtImportGLDisequalityJoinKnob)
                                    foreach (var jgtie in pus[j].gtData[jgt].disequalities)
                                    {
                                        JECGT jec;
                                        if (sources.gts.tryGetJTJEC(j, jgtie, out jec))
                                            foreach (var degti in jec.tis)
                                            {
                                                var gt2 = sources.gts.getLT(degti);
                                                if (!gtData[gt].disequalities.Contains(gt2))
                                                {
                                                    var gie = makeDEG(gt, gt2);
                                                    makeAndAssumeJoinClause(j, new[] { gie });
                                                }
                                            }
                                    }
                                #endregion disequalities
                            }
                    }
                }
            }
        }

        private void makeAndAssumeJoinClause(int j, IEnumerable<GL> igas)
        {
            assumeGLs(new[] { joineePathConditions[j].gNegate }.Union(igas), false, false);
            if (isRefuted)
                return;
        }
        #endregion Instantiation

        #region MSGTT
        public bool tryGetJGTLGTs(int j, GT jgt, out ISet<GT> lgts)
        {
            return sources.gts.tryGetJTLTs(j, jgt, out lgts);
        }

        public bool tryGetJGTTLGTTs(int j, GTT jgtt, out ISet<GTT> lgtts)
        {
            return sources.gtts.tryGetJTLTs(j, jgtt, out lgtts);
        }

        public class JMSGTTRTC : MSGTTRTC
        {
            public JMSGTTRTC(JU universe, MSGTTRT rt)
                : base(universe, rt)
            {
                this.universe = universe;
                jgttsA = (from j in universe.pus select new HashSet<GTT>()).ToArray();
            }

            public readonly JU universe;
            public readonly ISet<GTT>[] jgttsA;
            public int gtaIndex = 0;
            protected override void p1I()
            {
                universe.makeSuccessorGTTsP1(this);
            }
            protected override void p2I()
            {
                universe.makeSuccessorGTTsP2(this);
            }
        }
        internal override MSGTTRTC makeMSGTTRTC(MSGTTRT rt)
        {
            return new JMSGTTRTC(this, rt);
        }
        private void makeSuccessorGTTsP1(JMSGTTRTC ar)
        {
            #region precondition
#if DEBUG
            foreach (var gtt in ar.gtts)
                foreach (var gt in gtt.gtT)
                {
                    Debug.Assert(upToDateGTMM(gt));
                    Debug.Assert(inDepthBoundStrict(gt));
                }
#endif
            #endregion precondition

            #region initial triage
            makeSuccessorGTTsP1A(ar);
            #endregion initial triage

            foreach (var ngtt in ar.ngtts)
                getPGTTs(ar, ngtt);

            #region prepare sub queries
            if (ar.jgttsA.Any(s => s.Any()))
            {
                ar.outRTs = new MSGTTRT[jn];
                for (var j = 0; j < pus.Length; j++)
                    ar.outRTs[j] = new MSGTTRT(ar.jgttsA[j]);
            }
            else
                ar.outRTs = new MSGTTRT[0];
            #endregion prepare sub queries
        }
        protected void getPGTTs(JMSGTTRTC ar, GTT gtt)
        {
            /*
            var gttAOs = getGTTAOs(gtt);
            foreach (var gttao in gttAOs)
            {
                ar.indexToGTTAOMap[ar.gtaIndex] = gttao;
                ar.indexToGTTMap[ar.gtaIndex] = gtt;
                for (var j = 0; j < joinedArray.Length; j++)
                {
                    var jgtt = gttao.gttA[j]; 
                    ar.jgttMap[j].insert(jgtt, ar.gtaIndex);
                    ar.jgttsA[j].Add(jgtt);
                }
                ar.gtaIndex++;
            }*/
            foreach (var j in js)
            {
                var ju = pus[j];
                ar.jgttsA[j].UnionWith(
                    from jgtT in FU.makeOptions((from gt in gtt.gtT select ju.depthFilterStrict(sources.gts.getJTs(j, gt))).ToArray())
                    select ju.getGTT(jgtT));
            }
        }
        private void makeSuccessorGTTsP2(JMSGTTRTC ar)
        {
            if (ar.outRTs.Any())
            {
                #region consistency
#if DEBUG
                for (var j = 0; j < pus.Length; j++)
                    foreach (var jgtt in ar.outRTs[j].gtts)
                        Debug.Assert(pus[j].upToDateGTTMM(jgtt));
#endif
                #endregion consistency
                var lgttToJGTTMap = new Dictionary<GTT, ISet<GTT>[]>();

                foreach (var j in js)
                {
                    var ju = pus[j];
                    foreach (var jgtt in ar.outRTs[j].gtts)
                        foreach (var lgtT in FU.makeOptions((from jgt in jgtt.gtT select new HashSet<GT>(sources.gts.getJTLTs(j, jgt))).ToArray()))
                        {
                            GTT lgtt;
                            if (termRepository.tryGetGTT(lgtT, out lgtt) && ar.ngtts.Contains(lgtt))
                                lgttToJGTTMap.insert(lgtt, j, jgtt, jn);
                        }
                }
                foreach (var kv in lgttToJGTTMap)
                    if (kv.Value.All(s => s.Count > 0))
                    {
                        var gtt = kv.Key;
                        Debug.Assert(!hasGTTMM(gtt));
                        makeNewGTT(gtt, kv.Value);
                        ar.ngtts.Remove(gtt);
                    }
            }

            #region add rejected tuples
            foreach (var gtt in ar.ngtts)
                makeSuccessorGTTsP2NGTTS(ar, gtt);
            #endregion add rejected tuples
            markAdded(false);

            #region postcondition
#if DEBUG
            foreach (var gtt in ar.gtts)
                Debug.Assert(hasGTTMM(gtt) && upToDateGTTMM(gtt));
#if INVARIANTS
            Debug.Assert(invariant());
#endif
#endif
            #endregion postcondition
        }
        #endregion MSGTT

        #region AGAPGTT
        internal class JAGAPGTTRTC : AGAPGTTRTC
        {
            public JAGAPGTTRTC(JU universe, AGAPGTTRT rt)
                : base(universe, rt)
            {
                this.universe = universe;
            }
            public readonly JU universe;

            protected override void p1I()
            {
                universe.getAssumedGAByPAndGTTP1(this);
            }
            protected override void p2I()
            {
                universe.getAssumedGLByPAndGTTP2(this);
            }
        }
        internal void getAssumedGAByPAndGTTP1(JAGAPGTTRTC ar)
        {
            getAssumedGLByPAndGTTP1A(ar);


            var rngtts = from ngtt in ar.ngtts where sources.gtts.ltHasJTsForAll(ngtt) select ngtt;
            var jgttsA = (from j in js select new HashSet<GTT>(from ngtt in rngtts from jgtt in sources.gtts.getLTTD(ngtt).jgtts(j) select jgtt)).ToArray();

            if (rngtts.Any() && pus.Any(ju => ju.inScope(ar.predicate)))
            {
                ar.outRTs = new AGAPGTTRT[jn];
                for (var j = 0; j < jn; j++)
                    if (pus[j].inScope(ar.predicate))
                        ar.outRTs[j] = new AGAPGTTRT(ar.predicate, jgttsA[j]);
                    else
                        ar.outRTs[j] = null;
            }
            else
                ar.outRTs = new AGAPGTTRT[0];
        }
        internal void getAssumedGLByPAndGTTP2(JAGAPGTTRTC ar)
        {
            if (ar.outRTs.Any())
            {
                var jgttToPolarityA = (from j in js select new Dictionary<bool, ISet<GTT>>()).ToArray();
                foreach (var j in js)
                {
                    foreach (var b in trueFalse)
                        jgttToPolarityA[j][b] = new HashSet<GTT>();
                    if (ar.outRTs[j] != null)
                        foreach (var jgl in ar.outRTs[j].rgls)
                            jgttToPolarityA[j][jgl.polarity].Add(jgl.gtt);
                }
                foreach (var b in trueFalse)
                    foreach (var jgttA in FU.makeOptions((from j in js select jgttToPolarityA[j][b]).ToArray()))
                    {
                        GTT gtt;
                        if (sources.gtts.tryGetJTALT(jgttA, out gtt))
                        {
                            var gl = makeGL(ar.predicate.pp(b), gtt, false);
                            assume(gl);
                            if (isRefuted)
                                return;
                            ar.rgls.Add(gl);
                        }
                    }
            }
            markAdded(false);
        }
        internal override AGAPGTTRTC makeAGAPGTTRTC(AGAPGTTRT rt)
        {
            return new JAGAPGTTRTC(this, rt);
        }
        #endregion AGAPGTT

        #region element creation
        protected override sealed void makeNewGTT(GTT gtt)
        {
            var et = JMergeTemplateMaker.makeGTT(this, gtt.gtT);
            et.getGTs();
            embedTermStructure(et);
            Debug.Assert(sources.gtts.hasLT(gtt));
        }
        private void makeNewGTT(GTT gtt, ISet<GTT>[] jgttsA)
        {
            makeNewGTT(gtt); //TODO better
            //            var gttd = sources.makeGTT((from gt in gtt.gts select sources.gts.getTI(gt)).ToArray());
            var gttd = sources.gtts.getLTTD(gtt);
            foreach (var j in js)
                foreach (var jgtt in jgttsA[j])
                    Debug.Assert(gttd.hasJGTT(j, jgtt));
            //                    sources.gtts.mapNewJTToJECInt(j, jgtt,gttd.jec(j));
            gttd.clearNewSources();
            Debug.Assert(!gttd.hasNewSources);
            Debug.Assert(!gttd.isAnyUpdated);
        }

        private ISet<GTT>[] makeJGTTsA(GTT gtt)
        {
            if (gtt.gtT.Count == 0)
                return (from j in js select new HashSet<GTT> { emptyGTT }).ToArray();
            return (from j in js select makeJGTTs(j, from gt in gtt.gtT select sources.gts.getJTs(j, gt))).ToArray();
        }
        public ISet<GTT> makeJGTTs(int j, IEnumerable<IEnumerable<IEnumerable<GT>>> jgtSTAi)
        {
            var ju = pus[j];
            var jgtSTs = from jgtSTi in jgtSTAi select ju.depthFilterStrict(jgtSTi);
            var jgtts = new HashSet<GTT>(from jgtST in jgtSTs from jgtT in FU.makeOptions(jgtST) select ju.getGTT(jgtT));
            return ju.makeSuccessorGTTs(new MSGTTRT(jgtts));
        }
        public ISet<GTT> makeJGTTs(int j, IEnumerable<IEnumerable<GT>> jgtSTi)
        {
            return makeJGTTs(j, new[] { jgtSTi });
        }
        #endregion element creation

        #region predecessor synchronization
        ////////////////////////////////////////////////////////////////////////////////////////
        //Predecessor update
        internal bool predecessorGeradeKaput = false;
        protected override void synchronizeWithPredecessors(bool satEqs)
        {
//            if (index == 5 && GT.m.ContainsKey(15447) && SU.m[4].hasGT(GT.m[15447]))
//                Debugger.Break();
            updateForDeadPredecessors();
            if (pus.Length > 1)
                addToScope(FU.intersection(from pu in pus select pu.constants));
            addToScope(FU.union(from pu in pus select pu.nullaryPredicates));
            foreach (var pi in pis)
            {
                importedJGCs[pi].IntersectWith(pus[pi].assumedGCs);
                importedJGTs[pi].IntersectWith(pus[pi].allGTs);
            }

            var newRevisions = new Revision[pus.Length];
            var newLastRevision = new int[pus.Length];
            for (var j = 0; j < pus.Length; j++)
                newRevisions[j] = pus[j].getRevision(predecessorLastRevisions[j], out newLastRevision[j]);
            synchronizeToRevision(newRevisions, satEqs);
            for (var j = 0; j < pus.Length; j++)
                predecessorLastRevisions[j] = newLastRevision[j];
            #region consistency
#if DEBUG
            for (var j = 0; j < jn; j++)
                predecessorVersionHistories[j].Add(predecessorLastRevisions[j]);
            //            Debug.Assert(sourcesComplete());
            Debug.Assert(goalsComplete());
            Debug.Assert(instantiationCachesComplete());
#endif
            #endregion consistency
        }

        ////////////////////////////////////////////////////////////////////////////////////////
        private void updateForDeadPredecessors()
        {
            if (!(pus.Any(p => p.isRefuted)))
                return;
            Debug.Assert(jn == 2);

            predecessorGeradeKaput = true;
            joineePathConditions = null;
            if (pus.All(p => p.isRefuted))
            {
                refuteInt("All joinees refuted");
                return;
            }
            Debug.Assert(!(pus.All(p => p.isRefuted)));

            var numNonRefuted = (from j in pus where !j.isRefuted select j).Count();
            Debug.Assert(numNonRefuted == 1);
            var newJUs = (from j in pus where !j.isRefuted select j).ToArray();
            var newJs = Enumerable.Range(0, numNonRefuted).ToArray();

            var oldPredecessorRevisions = predecessorLastRevisions;
            var puiSources = new int[numNonRefuted];
            var j3 = 0;
            foreach (var j2 in js)
                if (!pus[j2].isRefuted)
                {
                    puiSources[j3] = j2;
                    j3++;
                }

            //            var mergeSets = sources.joineeDied(newJUs, newJs, puiSources);
            //            foreach (var s in mergeSets)
            //                foreach (var gt2 in s.Skip(1))
            //                    assumeEQG(s.First(), gt2);

            predecessorLastRevisions = (from j in newJs select predecessorLastRevisions[puiSources[j]]).ToArray();
            pPUS = newJUs;
            js = newJs;

            importedJGCs = (from ju in pus select new HashSet<GC>()).ToArray();
            importedJGTs = (from ju in pus select new HashSet<GT>()).ToArray();
        }

        ////////////////////////////////////////////////////////////////////////////////////////
        protected override IEmbedTemplate makeMergeTemplate(IEnumerable<ISet<GT>> canonicalSets)
        {
            return JMergeTemplateMaker.make(this, canonicalSets);
        }

        ////////////////////////////////////////////////////////////////////////////////////////
        private void synchronizeToRevision(Revision[] predecessorRevisions, bool satEqs)
        {
            #region precondition
#if DEBUG1
            foreach (var gt in sources.gts.allLTs)
            {
                Debug.Assert(upToDateGTMM(gt));
                Debug.Assert(upToDate(gt));
            }
            if (!predecessorGeradeKaput)
            {
                foreach (var j in js)
                    foreach (var jgt in sources.gts.getAllJTs(j))
                    {
                        var pu = pus[j];
                        Debug.Assert(!pu.inScope(jgt) || pu.upToDateGTMM(jgt) || predecessorRevisions[j].gts.Values.Any(ts => ts.Contains(jgt)));
                    }
            }

            if (!predecessorGeradeKaput)
                foreach (var gt in sources.gts.allLTs)
                {
                    Debug.Assert(upToDateGTMM(gt));
                    for (var j = 0; j < pus.Length; j++)
                        foreach (var jgt in getLGTJGTs(j, gt))
                        {
                            Debug.Assert(
                                pus[j].upToDateGTMM(jgt) ||
                                predecessorRevisions[j].gts.Values.Any(ts => ts.Contains(jgt)));
                        }
                }

/*            foreach (var gtt in sources.gtts.allLTs)
                Debug.Assert(upToDateGTTMM(gtt));*/
#endif
            #endregion precondition

            addRevision();

            var et = JSyncTemplateMaker.make(this, predecessorRevisions, satEqs);
            //            Debug.Assert(et.checkSourcesBefore());
            et.getGTs();
            #region ground term source consistency
#if DEBUG1
            foreach (var gt in sources.gts.allLTs)
                foreach (var j in js)
                    foreach (var jgt in getLGTJGTs(j, gt))
                        Debug.Assert(pus[j].upToDate(jgt));
#endif
            #endregion ground term source consistency
            embedTermStructure(et);
            if (isRefuted)
                return;
            #region consistency
#if DEBUG
            //            Debug.Assert(sourcesComplete());
#endif
            #endregion consistency

            #region disequalities
            enqueueJoinedDisequalities(et);
            #endregion disequalities

            #region caches
            //            fixCaches(predecessorRevisions);
            #endregion caches

            #region goals
            fixPredecessorGoals(predecessorRevisions);// GroundAtoms(predecessorRevisions);
            if (isRefuted)
                return;
            #region consistency
#if DEBUG
            Debug.Assert(goalsComplete());
#endif
            #endregion consistency
            #endregion goals

            #region ground term source consistency
#if DEBUG1
            foreach (var gt in sources.gts.allLTs)
            {
                Debug.Assert(upToDateGTMM(gt));
                foreach (var j in js)
                    foreach (var jgt in getLGTJGTs(j, gt))
                    {
                        Debug.Assert(sources.gts.getJTLTs(j, jgt).Contains(gt));
                        Debug.Assert(pus[j].upToDate(jgt));
                    }
            }
#endif
            #endregion ground term source consistency
        }

        /*        private void fixCaches(Revision[] predecessorRevisions)
                {
                    //TODO: fully
                    if (gtImportGCEqualityKnob || gtImportGCAllKnob)
                    {
                        var igts = interestingGTs;
                        var jfcSetArray = (from j in Enumerable.Range(0, jn)
                                           let lfss = new HashSet<Function>(from gt in igts from gfa in gt.gfas select gfa.function)
                                           select pus[j].getLFSsFCs(lfss)).ToArray();

                        var jgcSetArray = (from j in Enumerable.Range(0, jn)
                                           let jgts = new HashSet<GT>(from gt in igts from jgt in getLGTJGTs(j, gt) select jgt)
                                           select
                                               gtImportGCAllKnob ?
                                               pus[j].getGTsGCs(jgts) :
                                               pus[j].getGTsEqGCs(jgts)).ToArray();
                        importAndAssumeICs(jgcSetArray, jfcSetArray);
                        if (isRefuted)
                            return;
                    }
                    if (glImportGCKnob || glImportFCKnob)
                        redoGLRTCache();
                }*/

        private void fixPredecessorGoals(Revision[] predecessorRevisions)
        {
            foreach (var j in js)
            {
                var pu = pus[j];
                pu.addGoalsRecursive(
                    new GC[0],
                    from gl in goalGLs
                    from jgtt in sources.gtts.getLTTD(gl.gtt).jgtts(j)
                    let gttd = pu.gttData[jgtt]
                    where gttd.sgafs.ContainsKey(gl.predicate)
                    select gttd.sgafs[gl.predicate].gLiteral(gl.polarity),
                    from gt in goalGTs
                    from jgt in sources.gts.getLTTD(gt).jgts(j)
                    select jgt);
            }
        }
        private void fixPredecessorGoalGroundAtoms(Revision[] predecessorRevisions)
        {
            for (var j = 0; j < pus.Length; j++)
                fixPredecessorGoalGroundAtoms(predecessorRevisions[j], j);
            #region postcondition
#if DEBUG
            Debug.Assert(goalsComplete());
#endif
            #endregion postcondition
        }
        private void fixPredecessorGoalGroundAtoms(Revision predecessorRevision, int j)
        {
            var jgasToAdd = new HashSet<GL>();
            var predecessor = pus[j];
            foreach (var gl in goalGLs)
                foreach (var jgtt in getLGTTJGTTs(j, gl.gtt))
                {
                    GAF jgaf;
                    if (predecessor.gttData[jgtt].sgafs.TryGetValue(gl.predicate, out jgaf))
                        jgasToAdd.Add(jgaf.gLiteral(gl.polarity));
                }
            predecessor.addGoalRecursive(jgasToAdd);
        }

        private void importAndAssumeFCs(ISet<FC>[] jfcs)
        {
            if (jfcs.All(jfc => jfc.Count == 0))
                return;

            var cjfcs = FU.intersection(jfcs);

            var imported = (from ju in pus select new HashSet<FC>()).ToArray();
            for (var j = 0; j < jn; j++)
                imported[j].UnionWith(cjfcs);
            var clauseMapNoGT = new Dictionary<string, ISet<FC>>[jn];
            for (var j = 0; j < pus.Length; j++)
            {
                clauseMapNoGT[j] = new Dictionary<string, ISet<FC>>();
                foreach (var jfc in jfcs[j])
                    if (!cjfcs.Contains(jfc))
                    {
                        var key = jfc.ToStringNoGTN();
                        ISet<FC> fcs;
                        if (!clauseMapNoGT[j].TryGetValue(key, out fcs))
                            clauseMapNoGT[j][key] = fcs = new HashSet<FC>();
                        fcs.Add(jfc);
                    }
            }

            var commonNoGTKeys = FU.intersection(from jfcm in clauseMapNoGT select jfcm.Keys);

            var result = new HashSet<FC>();
            foreach (var fc0 in cjfcs)
            {
                var pfc = tryImportFCA((from ju in pus select fc0).ToArray());
                if (pfc != null)
                    result.Add(pfc as FC);
            }

            foreach (var key in commonNoGTKeys)
            {
                var fcAs = FU.makeOptions((from jfcm in clauseMapNoGT select jfcm[key]).ToArray()); //importFCs
                foreach (var fcA in fcAs)
                {
                    var fcAA = fcA.ToArray();
                    var pfc = tryImportFCA(fcAA);
                    if (pfc != null)
                        result.Add(pfc as FC);
                }
                for (var j = 0; j < jn; j++)
                    imported[j].UnionWith(clauseMapNoGT[j][key]);
            }

            if (jn == 1)
                foreach (var jfc in jfcs[0].Except(imported[0]))
                    result.UnionWith(importJFC(0, jfc));
            if (glImportFCJoinKnob && (joineePathConditions != null || jn == 1))
                for (var j = 0; j < jn; j++)
                    foreach (var jfc in jfcs[j].Except(imported[j]))
                        foreach (var fc in importJFC(j, jfc))
                            result.Add(makeFC(fc.ils.Union(new[] { joineePathConditions[j].gNegate })));

            foreach (var fc in result)
            {
                setImported(fc);
                assumeFC(fc);
            }
            markAdded(false);
        }



        private FC tryImportFCA(FC[] cA)
        {
            if (tryImportGTs(cA))
                return import(cA);
            else
                return null;
        }

        private bool tryImportGTs(IC[] cA)
        {
            var pgtas = getPGTAs(cA);
            return tryImportGTs(pgtas);
        }

        private bool tryImportGTs(IDictionary<string, GT[]> pgtas)
        {
            foreach (var pgtaKV in pgtas)
            {
                var jgtA = pgtaKV.Value;
                if (!sources.gts.hasActualJTA(jgtA))
                {
                    if (!jgtA.All(jgt => jgt == jgtA[0]))
                        return false;
                    GT gt;
                    if (!tryImportSameGT(jgtA[0], out gt))
                        return false;
                    Debug.Assert(sources.gts.hasActualJTA(jgtA));
                }
            }
            return true;
        }

        private bool tryImportSameGT(GT jgt, out GT gt)
        {
            var jgtA = (from ju in pus select jgt).ToArray();
            if (!sources.gts.tryGetJTALT(jgtA, out gt))
            {
                gt = null;
                var rep = jgtA[0].rep;
                if (!inScope(rep.function))
                {
                    var gts = importJGT(0, jgtA[0]);
                    Debug.Assert(gts.Count <= 1);
                    if (gts.Count == 1)
                    {
                        gt = gts.First();
                        return true;
                    }
                    else
                        return false;
                }
                var jgttA = (from ju in pus select rep.gtt).ToArray();
                GTT gtt;
                if (!sources.gtts.tryGetJTALT(jgttA, out gtt))
                {
                    var gtT = new GT[rep.gtt.gtT.Count];
                    for (var i = 0; i < gtT.Length; i++)
                        if (!tryImportSameGT(rep.gtt.gtT[i], out gtT[i]) || gtDepth(gtT[i]) >= maxGTDepth)
                            return false;
                    gt = makeGT(rep.function, gtT);
                }
                else if (inDepthBoundStrict(gtt))
                    gt = makeGT(rep.function, gtt);
                else
                    return false;
            }
            return true;
        }

        private IDictionary<string, GT[]> getPGTAs(IC[] cA)
        {
            var result = new Dictionary<string, GT[]>();
            var numAtoms = cA[0].Count();
            for (var i = 0; i < numAtoms; i++)
                for (var k = 0; k < cA[0][i].iaf.itt.Count(); k++)
                    getPGTAs(result, (from jc in cA select jc[i].iaf.itt[k]).ToArray());
            return result;
        }

        private void getPGTAs(Dictionary<string, GT[]> result, IT[] tA)
        {
            if (tA[0] is GT)
            {
                var gtA = (from jt in tA select jt as GT).ToArray();
                var key = HA<GT>.makeString(gtA);
                if (!result.ContainsKey(key))
                    result[key] = gtA;
            }
            else if (tA[0] is FFA)
            {
                var faA = (from jt in tA select jt as FFA).ToArray();
                var numArgs = faA[0].ftt.Count();
                for (var i = 0; i < numArgs; i++)
                    getPGTAs(result, (from jfa in faA select jfa.ftt[i]).ToArray());
            }
        }

        private FC import(FC[] clauseArray)
        {
            Debug.Assert(clauseArray.Count() == jn);
            Debug.Assert(clauseArray.All(jc => jc.Count() == clauseArray[0].Count()));
            Debug.Assert(clauseArray.All(jc => jc.orderedFreeVariables.Count == clauseArray[0].orderedFreeVariables.Count));
            var varMap = makeVarMap((from jc in clauseArray select jc.orderedFreeVariables).ToArray());
            var numAtoms = clauseArray[0].Count();
            var atoms = new IL[numAtoms];
            for (var i = 0; i < numAtoms; i++)
                atoms[i] = import((from jc in clauseArray select jc[i]).ToArray(), varMap);
            var result = makeFC(atoms);
#if DEBUG
            //            if (result.Count == 0)
            //                Debugger.Break();
#endif
            return result;
        }

        private Dictionary<LVar, FVT>[] makeVarMap(IList<LVar>[] ofvArray)
        {
            var varMap = (from ju in pus select new Dictionary<LVar, FVT>()).ToArray();
            var numVars = ofvArray[0].Count;
            for (var i = 0; i < numVars; i++)
            {
                FVT var;
                if (ofvArray.All(ofv => ofv[i] == ofvArray[0][i]))
                    var = makeVT(ofvArray[0][i]);
                else
                {
                    Debug.Assert(ofvArray.All(jofv => jofv[i].type.isEquivalent(ofvArray[0][i].type)));
                    var = makeVT(srs.getFreshVariable(ofvArray[0][i]));
                }
                for (var j = 0; j < jn; j++)
                {
                    Debug.Assert(!varMap[j].ContainsKey(ofvArray[j][i]) || varMap[j][ofvArray[j][i]] == var);
                    varMap[j][ofvArray[j][i]] = var;
                }
            }
            return varMap;
        }
        private IL import(IL[] jilA, IDictionary<LVar, FVT>[] varMap)
        {
            Debug.Assert(jilA.All(jil => jil.isGround == jilA[0].isGround));
            Debug.Assert(jilA.All(jil => jil.pp == jilA[0].pp));
            if (jilA[0].isGround)
                return import((from jil in jilA select jil as GL).ToArray());
            else
                return import((from jil in jilA select jil as FL).ToArray(), varMap);
            //            return makeIL(makeIAF(jilA[0].iaf.predicate, import((from a in jilA select a.iaf.itt).ToArray(), varMap)), jilA[0].polarity, false);
        }
        private FL import(FL[] jflA, IDictionary<LVar, FVT>[] varMap)
        {
            var jfl0 = jflA[0];
            Debug.Assert(jflA.All(jfl => jfl.pp == jfl0.pp));
            var n = jfl0.ftt.Count;
            var itT = (from i in Enumerable.Range(0, n)
                       select
                        import((from jfl in jflA select jfl.ftt[i]).ToArray(), varMap)).ToArray();
            return makeFL(jfl0.pp, makeFTT(itT));
        }
        private GL import(GL[] jglA)
        {
            var jgl0 = jglA[0];
            Debug.Assert(jglA.All(jgl => jgl.pp == jgl0.pp));
            var jgttA = (from jgl in jglA select jgl.gtt).ToArray();
            GTT gtt;
            if (sources.gtts.tryGetJTALT(jgttA, out gtt))
                return makeGL(jgl0.pp, gtt);

            var jgtt0 = jgttA[0];
            var n = jgtt0.Count;
            var gtT = new GT[n];
            for (var i = 0; i < n; i++)
                gtT[i] = import((from jgtt in jgttA select jgtt.gtT[i]).ToArray());
            return makeGL(jgl0.pp, gtT);
        }
        private FTT import(FTT[] tupleArray, IDictionary<LVar, FVT>[] varMap)
        {
            var numTs = tupleArray[0].Count();
            var terms = new IT[numTs];
            for (var i = 0; i < numTs; i++)
                terms[i] = import((from tt in tupleArray select tt[i]).ToArray(), varMap);
            return makeFTT(terms);
        }

        private IT import(IT[] termArray, IDictionary<LVar, FVT>[] varMap)
        {
            if (termArray[0] is GT)
            {
                var gtA = (from t in termArray select t as GT).ToArray();
                return sources.gts.getJTALT(gtA);
            }
            else if (termArray[0] is FVT)
            {
                var vA = (from t in termArray select t as FVT).ToArray();
                #region consistency
#if DEBUG
                for (var j = 1; j < jn; j++)
                    Debug.Assert(varMap[j][vA[j].variable] == varMap[0][vA[0].variable]);
#endif
                #endregion consistency
                return varMap[0][vA[0].variable];
            }
            else
            {
                var faA = (from t in termArray select t as FFA).ToArray();
                Debug.Assert(faA.All(jfa => jfa.function == faA[0].function));
                return makeFFA(faA[0].function, import((from jfa in faA select jfa.ftt).ToArray(), varMap) as FTT);
            }
        }
        private GT import(GT[] gtA)
        {
            return sources.gts.getJTALT(gtA);
        }

        #endregion predecessor synchronization

        #region invariant
        internal override bool invariant()
        {
#if DEBUG
            if (isRefuted)
                return true;
            base.invariant();
#if INVARIANTS

            #region ground terms
            foreach (var gtKV in groundTermInverseJoinMap)
            {
                var gt = gtKV.Key;
                var sgtas = gtKV.Value;
                Debug.Assert(gt == groundTermMergeMap[gt]);

                foreach (var sgta in sgtas)
                {
                    Debug.Assert(groundTermArrayJoinMap[sgta] == gt);
                    for (var j = 0; j < joinedArray.Length; j++)
                    {
//                        Debug.Assert(joinedArray[j].successorFunctionApplications.Contains(sgta[j]) || joinedArray[j].groundTermMergeMap[sgta[j]] == sgta[j]);
                        Debug.Assert(groundTermToTermArrayJoinMap[j][sgta[j]].Contains(sgta));
                    }
                }

                foreach (var gfa in gt.gfas)
                {
                    foreach (var sgtt in groundTupleInverseJoinMap[gfa.arguments])
                    {
                        var should = true;
                        var jgts = new GroundTermEC[joinedArray.Length];
                        for (var j1 = 0; j1 < joinedArray.Length; j1++)
                            if (joinedArray[j1].hasSuccessorForeignTuple(sgtt[j1]))
                                should = false;
                            else
                            {
                                GroundFunctionApplicationEC jgfa;
                                if (joinedArray[j1].groundTupleIncomingGroundFAsByFunction[sgtt[j1]].TryGetValue(gfa.function, out jgfa))
                                    jgts[j1] = jgfa.ec;
                                else
                                    should = false;
                            }

                        if (should)
                        {
                            var iss = false;
                            foreach (var sgt in gtKV.Value)
                            {
                                for (var k = 0; k < joinedArray.Length; k++)
                                    if (sgt[k] != jgts[k])
                                        goto skip;
                                iss = true;
                                break;
                            skip: ;
                            }
                            Debug.Assert(iss);
                        }
                    }
                }
            }
            #endregion ground terms

            #region ground tuples
            foreach (var gttKV in groundTupleInverseJoinMap)
            {
                var gtt = gttKV.Key;
                var sgttas = gttKV.Value;
                Debug.Assert(gtt == groundTupleMergeMap[gtt]);
                foreach (var sgtta in sgttas)
                    Debug.Assert(groundTupleArrayJoinMap[sgtta] == gtt);
                if (gtt.gTerms.Any())
                    checkGroundTupleSources(gtt);
            }
            #endregion ground tuples

            #region join sync
            for (var j = 0; j < joinedArray.Length; j++)
                foreach (var gtakv in groundTermToTermArrayJoinMap[j])
                {
                    Debug.Assert(joinedArray[j].groundTermMergeMap[gtakv.Key] == gtakv.Key);
                    foreach (var gta in gtakv.Value)
                    {
                        Debug.Assert(!joinedArray[j].inScope(gta[j]) || joinedArray[j].groundTermMergeMap[gta[j]] == gta[j]);// || predecessorRevisions[k].groundTerms.Values.Any(ts => ts.Contains(gta[k])));
                        Debug.Assert(gta[j] == gtakv.Key);
                    }
                }
            #endregion join sync
#endif
#endif
            return true;
        }

        /////////////////////////////////////////////////////////////////////
#if DEBUG
        private ISet<GT> getGTJInequalities(IEnumerable<GT> jgts, int j)
        {
            return new HashSet<GT>(
                from jgt in jgts
                from dejgt in pus[j].getGTDisequalities(jgt)
                where sources.gts.hasJT(j, dejgt)
                from lgt in sources.gts.getJTLTs(j, dejgt)
                select lgt);
        }
#endif

#if DEBUG
        protected override bool disEqualitiesComplete()
        {
            foreach (var gt in allGTs)
            {
                var jIEs = (from j in js select getGTJInequalities(getLGTJGTs(j, gt), j)).ToArray();
                var deLGTs = FU.intersection(jIEs);
                foreach (var deLGT in deLGTs)
                    Debug.Assert(gtData[gt].disequalities.Contains(deLGT));
            }
            return true;
        }
#endif

#if DEBUG
        protected override bool goalsComplete()
        {
            if (isRefuted)
                return true;
            base.goalsComplete();
            foreach (var gt in goalGTs)
                foreach (var j in js)
                    foreach (var jgt in getLGTJGTs(j, gt))
                        Debug.Assert(pus[j].isGoal(jgt) || pus[j].gtRevision(jgt) >= predecessorLastRevisions[j]);
            foreach (var gl in goalGLs)
                foreach (var j in js)
                    foreach (var jgl in getGLJGLs(j, gl))
                        if (isJGLLastJoineeRevision(j, jgl))
                            Debug.Assert(pus[j].isGoal(jgl));
            return true;
        }
#endif

        private bool isJGLLastJoineeRevision(JI j, GL jgl)
        {
            return pus[j].gafRevision(jgl.gaf) >= predecessorLastRevisions[j];
        }

        private ISet<GL> getGLJGLs(JI j, GL gl)
        {
            var pu = pus[j];
            return new HashSet<GL>(from jgtt in getLGTTJGTTs(j, gl.gtt) let jgaf = pu.getGAFOrNull(gl.predicate, jgtt) where jgaf != null select jgaf.gLiteral(gl.polarity));
        }
        #endregion invariant

        #region members

        #region main join
        internal Universe[] pPUS;
        public override Universe[] pus { get { return pPUS; } }
        public int jn { get { return pus.Length; } }

        private GL[] joineePathConditions;
        private ISet<GC>[] importedJGCs;
        private ISet<GT>[] importedJGTs;
        #endregion main join

        #region elements
        public override JSourceStructure sources { get { return jSources; } }
        private JSourceStructure jSources;
        #endregion elements

        #region revisions
        internal int[] predecessorLastRevisions;
        #endregion revisions

        #endregion members

        #region goals
        protected override void setGoalsPredecessorRecursive(IEnumerable<GC> gcs, IEnumerable<GL> gls, IEnumerable<GT> gts)
        {
            if (gcs.Any() || gls.Any() || gts.Any())
                foreach (var j in js)
                {
                    var pgcs = new HashSet<GC>();
                    var pgas = new HashSet<GL>(from gl in gls from jgl in getGLJGLs(j, gl) select pus[j].transitiveMerge(jgl));
                    var pgts = new HashSet<GT>(from gt in gts from jgt in getLGTJGTs(j, gt) select pus[j].transitiveMerge(jgt));
                    if (pgcs.Any() || pgas.Any() || pgts.Any())
                        pus[j].addGoalsRecursive(pgcs, pgas, pgts);
                }
        }
        #endregion goals

        #region diff
#if DEBUG
        public override bool isBaseless(GT gt) { return !sources.gts.ltHasJTsForAll(gt); }
        public override bool isBaseless(GTT gtt) { return !sources.gtts.ltHasJTsForAll(gtt); }
#endif
        public override bool isGFANewDirect(GFA gfa)
        {
            var gtt = gfa.gtt;
            if (js.Any(j => !pus[j].inScope(gfa.function) || !sources.gtts.getJTs(j, gtt).Any()))
                return true;
            if (gtt.gtT.Any(isNew))
                return true;
            foreach (var j in js)
                foreach (var jgtt in sources.gtts.getJTs(j, gtt))
                    if (!pus[j].gttData[jgtt].sgfas.ContainsKey(gfa.function))
                        return true;
            return false;
        }
        public override bool isGTMergedDirect(GT gt)
        {
            return lgtNumGTAs(gt) > 1;
        }
        public override bool allPGTsSat(GT gt)
        {
            foreach (var j in js)
            {
                var ju = pus[j];
                foreach (var mjgt in getLGTJGTs(j, gt))
                {
                    var jgt = ju.transitiveMerge(mjgt);
                    if (!ju.isSaturated(jgt))
                        return false;
                }
            }
            return true;
        }
        public override bool allPGLsSat(GL gl)
        {
            for (var j = 0; j < jn; j++)
            {
                var ju = pus[j];
                var pgls = getPGLs(j, gl);
                if (!pgls.All(ju.isSaturated))
                    return false;
            }
            return true;
        }

        protected override bool predecessorsHaveDisequality(GT gt0, GT gt1)
        {
            if (getLGTNumGTAs(gt0) == 0 || getLGTNumGTAs(gt1) == 0)
                return false;
            foreach (var j in js)
                foreach (var jgt0 in getLGTJGTs(j, gt0))
                    foreach (var jgt1 in getLGTJGTs(j, gt1))
                        if (!pus[j].hasDisequality(jgt0, jgt1))
                            return false;
            return true;
        }
        public override bool hasAllPreds(GTT gtt)
        {
            var numGTTAs = getLGTTNumGTTAs(gtt);
            foreach (var j in js)
            {
                var ju = pus[j];
                var p = 1;
                foreach (var gt in gtt.gtT)
                {
                    var gtsc = getLGTNumGTAs(gt);
                    if (gtsc == 0)
                    {
                        Debug.Assert(numGTTAs == 0);
                        return true;
                    }
                    p *= gtsc;
                }
                Debug.Assert(p > 0);
                var jgtts = getLGTTJGTTs(j, gtt);
                if (jgtts.Count() != p)
                    return false;
            }
            return true;
        }

        public override bool hasFullPGLs(GL gl)
        {
            for (var j = 0; j < jn; j++)
            {
                var pu = pus[j];
                var pgls = getPGLs(j, gl);
                if (pgls.Count < getLGTTNumGTTAs(gl.gtt))
                    return false;
                if (glData[gl].isAssumed && !pgls.All(pgl => pu.isAssumed(pgl)))
                    return false;
            }
            return true;
        }
        private ISet<GL> getPGLs(JI j, GL gl)
        {
            return getJGLs(j, gl.pp, gl.gtt);
        }
        private ISet<GL> getJGLs(JI j, PP pp, GTT gtt)
        {
            return new HashSet<GL>(from jgtt in getLGTTJGTTs(j, gtt) let jgl = pus[j].getGLOrNull(pp, gtt) where jgl != null select jgl);
        }

        public override bool isSatInPreds(GL ga)
        {
            for (var j = 0; j < jn; j++)
            {
                var pu = pus[j];
                GTT pgtt;
                GAF pgaf;
                if (!
                    (pu.tryGetLGTT(ga.gtt, out pgtt) &&
                    pu.gttData[pgtt].sgafs.TryGetValue(ga.predicate, out pgaf) &&
                    pu.glData[pgaf.gLiteral(ga.polarity)].isGoal &&
                    pu.isSaturated(pgaf.gLiteral(ga.polarity)) // unsaturatedGLs.Contains(pgaf.gLiteral(ga.polarity))
                    ))
                    return false;
            }
            return true;

            //                return joinedArray.All(ju => ju.glData.ContainsKey(ga) && ju.isSaturated(ga));
        }
        public override bool isNew(GC gc)
        {
            return !pus.All(ju => ju.isAssumed(gc));
        }
        protected override bool isExpanding(GT gt)
        {
            if (getLGTNumGTAs(gt) > 1)
                return true;
            foreach (var gfa in gt.gfas)
                if (getLGTTNumGTTAs(gfa.gtt) > 1 && pus.Any(ju => ju.inScope(gfa.function)))
                    return true;
            return false;
        }
        private int getLGTNumGTAs(GT gt)
        {
            return js.Aggregate(1, (a, j) => a * getLGTJGTs(j, gt).Count());
        }
        private int getLGTTNumGTTAs(GTT gtt)
        {
            return js.Aggregate(1, (a, j) => a * getLGTTJGTTs(j, gtt).Count());
        }
        protected override bool isExpanding(GTT gtt)
        {
            if (getLGTTNumGTTAs(gtt) > 1)
                return true;
            foreach (var gt in gtt.gtT)
                if (getLGTNumGTAs(gt) > 1)
                    return true;
            return false;
        }
        protected override void cleanupPredecessors()
        {
            foreach (var ju in pus)
                ju.cleanupInt();
        }

        internal override void cleanupInt()
        {
            base.cleanupInt();
        }



#if DEBUG
        protected override bool IAmClean()
        {
            if (!base.IAmClean())
                return false;

            Debug.Assert(sources.IAmClean);
            return true;

        }
#endif

        #endregion diff

        #region map reads
        protected override void importMRGTEqGCs(IEnumerable<GT> gts)
        {
            var jgcA = (from pi in pis select new HashSet<GC>(pus[pi].getGTsOOEqGCs(from gt in gts from pgt in getGTPGTs(pi, gt) select pgt))).ToArray();
            importAndAssumeICs(jgcA, (from j in js select new HashSet<FC>()).ToArray());
//            importAndAssumeGCs(jgcA);

/*                             importAndAssume(
                (from pi in pis select new GCsAndFCsAndGTs(
                    pus[pi].getMRGTsEqGCs(),
                    new FC[0],
                    new GT[0] //from gt in gts where !isMapROWSat(gt) from pgt in getGTPGTs(pi,gt) select pgt
                )).ToArray());*/
            importJoinMRGTEqs(gts);
        }
        private void importJoinMRGTEqs(IEnumerable<GT> gts)
        {
            //            IDictionary<GT, GT> jgtToGTMap
            foreach (var gt in gts)
//                if (!isMapROWSat(gt))
                    foreach (var gfa in gt.gfas)
                        if (gfa.function.isMapRead)
                            importJoinMRGFAEqs(gfa);
        }

        private void importJoinMRGFAEqs(GFA gfa)
        {
            if (joineePathConditions!=null && inDepthBoundStrict(gfa.gt))
                foreach (var pi in pis)
                {
                    var pu = pus[pi];
                    foreach (var jgtt in getGTTPGTTs(pi,gfa.gtt))
                    {
                        var jgfa = pu.tryGetGFA(gfa.function, jgtt);
                        if (jgfa!=null)
                        {
                            var ogt = tryImportJGTsp(pi, jgfa.gt);
                            if (ogt != null && ogt != gfa.gt && inDepthBoundStrict(ogt))
                            {
                                if (termRepository.compare(gfa.gt,ogt)==1 && !isRepROW(ogt))
                                    assumeGLs(new[] { joineePathConditions[pi].gNegate, makeEQG(gfa.gt, ogt) }, false, false);
///
//                                    Debugger.Break();
                            }
                        }
                    }
                    
                }
        }

        private bool isRepROW(GT gt)
        {
            var i = termRepository.getGTMinGFAi(gt);
            var mrgfa = gt.gfas[i];
            if (!mrgfa.function.isMapRead)
                return false;
            var m = mrgfa.gtT[0];
            var i2 = termRepository.getGTMinGFAi(m);
            var mwgfa = m.gfas[i2];
            return mwgfa.function.isMapWrite;
        }

        protected override IDictionary<Universe, MapsRT> getMapReadNRTs(GFAMap gfaMap)
        {
            var r = new Dictionary<Universe, MapsRT>();
            for (var j = 0; j < jn; j++)
            {
                var pu = pus[j];
                var rt = new MapsRT();
                getMapReadNRTs(gfaMap, rt, gt => pu.depthFilterStrict(sources.gts.getJTs(j, gt)));
                if (rt.any)
                    r[pu] = rt;
            }
            return r;
        }


        #endregion map reads

        #region superposition
        public override IList<SPDAGImportRequest> spImportDown(SPDAGImportRequest spr)
        {
            Debug.Assert(spr.universe==this);
            var r = base.spImportDown(spr);
            foreach (var j in js)
            {
                var pr = spMakePredecessorRequest(j,spr);
                if (pr != null)
                    r.Add(pr);
            }
            return r;
        }

        public override void spImportUp(SPDAGImportRequest spr)
        {
            var jGCsFCsGTs = (from j in js select pus[j].spFindMatches(spMakePredecessorRequest(j,spr))).ToArray();
            importAndAssume(jGCsFCsGTs);
        }

        private void importAndAssume(GCsAndFCsAndGTs[] jGCsFCs)
        {
            var jgtsA = (from k in jGCsFCs select k.gts).ToArray();
            importAndAssumeGTs(jgtsA);
            var jgcsA = (from k in jGCsFCs select k.gcs).ToArray();
            var jfcsA = (from k in jGCsFCs select k.fcs).ToArray();
            importAndAssumeICs(jgcsA, jfcsA);
//            importAndAssumeGCs(jgcsA);
            //            importAndAssumeFCs(jfcsA);
        }
        #endregion superposition

        #region path sensitivity
        /*
        internal class JPCDAR : PCDAR
        {
            public JPCDAR(JoinUniverse universe, PCRequestData pcrd)
                : base(pcrd)
            {
                this.universe = universe;
                jgtMap = (from ju in universe.joinedArray select new Dictionary<GroundTermEC, ISet<GroundTermEC>>()).ToArray();
            }
            private JoinUniverse universe;

            public override void p1()
            {
                universe.makePCDp1(this);
            }
            public override void p2()
            {
                universe.makePCDp2(this);
            }

            internal readonly IDictionary<GroundTermEC,ISet<GroundTermEC>>[] jgtMap;
            internal readonly IDictionary<AtomicPathCondition, ISet<AtomicPathCondition>[]> apcInverseJoinMap = new Dictionary<AtomicPathCondition,ISet<AtomicPathCondition>[]>();
            internal readonly IDictionary<AtomicPathCondition, ISet<GroundTermEC>> apcGTs = new Dictionary<AtomicPathCondition, ISet<GroundTermEC>>();

        }
        internal override PCDAR makePCDAR(PCRequestData pcd)
        {
#region precondition
            foreach (var kv in pcd.apcMap)
            {
                Debug.Assert(upToDate(kv.Key.ga));
                Debug.Assert(apcMap[kv.Key.ga] == kv.Key);
                foreach (var gt in kv.Value.gts)
                    Debug.Assert(upToDate(gt));
            }
#endregion precondition
            return new JPCDAR(this, pcd);
        }

        internal void makePCDp1(JPCDAR ar)
        {
            IDictionary<AtomicPathCondition, APCRequestData> missing = new Dictionary<AtomicPathCondition, APCRequestData>();
            makePCDp1A(ar, missing);
            if (missing.Any())
            {
                var map = (from ju in joinedArray select new Dictionary<AtomicPathCondition, APCRequestData>()).ToArray();
                var trueAPC = getAtomicPathCondition(trueFormula.gAtom(true));

                foreach (var apcKV in missing)
                {
                    var apc = apcKV.Key;
                    Debug.Assert(!isFalse(apc));
                    var apcGTs = apcKV.Value.gts;
                    Debug.Assert(apcGTs.Any());
                    var pgts = new HashSet<HashableArray<GroundTermEC>>(from gt in apcGTs from pgt in gtInverseJoinMap[gt] select pgt);
                    if (pgts.Any())
                    {
                        var apcd = pcData[apc] = new APCData();
                        var japcs = getJoineeAPCs(apc);
                        Debug.Assert(japcs.All(japc => japc.Any()) || japcs.All(japc => !japc.Any()));
                        if (japcs.All(japc=>japc.Any()))
                        {
                            ar.apcInverseJoinMap[apc] = japcs;
                            ar.apcGTs[apc] = apcGTs;
                            for (var j = 0; j < joinedNum; j++)
                            {
                                foreach (var japc in japcs[j])
                                {
                                    if (!map[j].ContainsKey(japc))
                                        map[j][japc] = new APCRequestData((from pgt in pgts select pgt[j]).ToList());
                                    else
                                        map[j][japc].gts.UnionWith((from pgt in pgts select pgt[j]).ToList());
                                }
                                foreach (var pgt in pgts)
                                {
                                    ISet<GroundTermEC> e;
                                    if (!ar.jgtMap[j].TryGetValue(pgt[j], out e))
                                        ar.jgtMap[j][pgt[j]] = e = new HashSet<GroundTermEC>(); ;
                                    e.Add(gtaJoinMap[pgt]);
                                }
                            }
                        }
                    }
                }
                if (map.Any(jm=>jm.Any()))
                {
                    ar.todo = new PCDAR[joinedNum];
                    for (var j = 0; j < joinedNum; j++)
                        ar.todo[j] = joinedArray[j].makePCDAR(new PCRequestData(map[j]));
                }else
                    ar.todo = new PCDAR[0];
            }
            else
                ar.todo = new PCDAR[0];
        }
        private ISet<AtomicPathCondition>[] getJoineeAPCs(AtomicPathCondition apc)
        {
            var result = (from ju in joinedArray select new HashSet<AtomicPathCondition>()).ToArray();
            Debug.Assert(apc.ga == trueFormula.gAtom(true) || !isTrue(apc));
            var apcs = new HashSet<AtomicPathCondition>{apc};
            if (apc.ga==trueFormula.gAtom(true))
                apcs.UnionWith(atomicPathConditions);
            foreach (var tapc in apcs)
                getJoineeAPCsInt(tapc, result);
            return result;
        }

        private void getJoineeAPCsInt(AtomicPathCondition apc, HashSet<AtomicPathCondition>[] result)
        {
            var pgtts = gttInverseJoinMap[apc.ga.gFormula.gArguments];
            for (var j = 0; j < joinedNum; j++)
                foreach (var pgtt in pgtts)
                    result[j].Add(joinedArray[j].getAtomicPathCondition(joinedArray[j].makeGAF(apc.ga.gFormula.predicate, pgtt[j]).gAtom(apc.ga.polarity)));
        }

        internal void makePCDp2(JPCDAR ar)
        {
            if (ar.todo.Any())
            {
                Debug.Assert(ar.todo.Count() == joinedNum);
                foreach (var apcKV in ar.apcInverseJoinMap)
                {
                    var apc = apcKV.Key;
                    Debug.Assert(pcData.ContainsKey(apc));
                    Debug.Assert(ar.opcrd.apcds.ContainsKey(apc));
                    var japcsA = apcKV.Value;
                    Debug.Assert(japcsA.All(japc=>japc.Any()));
                    
                    var relevanceSet = new HashSet<int>();
                    var eqMap = new Dictionary<GroundTermEC,IDictionary<GroundTermEC,ISet<int>>>();
                    var neMap = new Dictionary<GroundTermEC,IDictionary<GroundTermEC,ISet<int>>>();
                    for (var j=0; j<joinedNum;j++)
                    {
                        var japcs = japcsA[j];
                        var jar = ar.todo[j];
                        if (japcs.All(japc => jar.opcrd.apcds.ContainsKey(japc)))
                        {
                            relevanceSet.Add(j);
                            foreach (var japc in japcs)
                            {
                                var japcd = jar.opcrd.apcds[japc]; 
                                foreach (var jgtKV in japcd.gtMap)
                                {
                                    var jgt1 = jgtKV.Key;
                                    var lgt1s = ar.jgtMap[j][jgtKV.Key];
                                    var eqlgt2s = new HashSet<GroundTermEC>(from jgt2 in jgtKV.Value.eqs                                        from gta2 in jgtToGTAMap[j][jgt2] let lgt1 = gtaJoinMap[gta2] where ar.apcGTs[apc].Contains(lgt1) select lgt1);
                                    var nelgt2s = new HashSet<GroundTermEC>(from jgt2 in jgtKV.Value.nes where jgtToGTAMap[j].ContainsKey(jgt2) from gta2 in jgtToGTAMap[j][jgt2] let lgt2 = gtaJoinMap[gta2] select lgt2);
                                    foreach (var lgt1 in lgt1s)
                                    {
                                        addEqMap(eqMap, j, eqlgt2s, lgt1, true);
                                        addEqMap(neMap, j, nelgt2s, lgt1, false);
                                    }
                                }
                            }
                        }
                    }//for (var j=0; j<joinedNum;j++)
                    if (!relevanceSet.Any())
                    {
                        Debug.Assert(false); //just to see if this happens
                        ar.opcrd.apcds.Remove(apc);
                        pcData.Remove(apc);
                        enqueue(apc.ga.gNegate());
                    }
                    else
                        foreach (var lgt1 in eqMap.Keys.Union(neMap.Keys))
                        {
                            var eqlgt2s = eqMap.ContainsKey(lgt1) ? new HashSet<GroundTermEC>(from lgt2KV in eqMap[lgt1] where lgt2KV.Value.Count==relevanceSet.Count where lgt1 != lgt2KV.Key select lgt2KV.Key) : new HashSet<GroundTermEC>();
                            var nelgt2s = neMap.ContainsKey(lgt1) ? new HashSet<GroundTermEC>(from lgt2KV in neMap[lgt1] where lgt2KV.Value.Count == relevanceSet.Count select lgt2KV.Key) : new HashSet<GroundTermEC>();
                            makePCDp2A(ar, apc, lgt1, eqlgt2s, nelgt2s);
                        }

                }//foreach (var apcKV in ar.apcInverseJoinMap)
            }
        }

        private static void addEqMap(
            IDictionary<GroundTermEC, IDictionary<GroundTermEC, ISet<int>>> eqMap, 
            int j, 
            HashSet<GroundTermEC> eqlgt2s, 
            GroundTermEC lgt1,
            bool removeSelf)
        {
            IDictionary<GroundTermEC, ISet<int>> eqe;
            if (!eqMap.TryGetValue(lgt1, out eqe))
                eqMap[lgt1] = eqe = new Dictionary<GroundTermEC, ISet<int>>();
            foreach (var lgt2 in eqlgt2s)
                if (!removeSelf || lgt1 != lgt2)
                {
                    ISet<int> eqe2;
                    if (!eqe.TryGetValue(lgt2, out eqe2))
                        eqe[lgt2] = eqe2 = new HashSet<int>();
                    eqe2.Add(j);
                }
        }

        public override IEnumerable<GroundAtomEC> newAssumedGAs
        {
            get
            {
                var result = new List<GroundAtomEC>();
                foreach (var ga in assumedGAs)
                {
                    var gtt = ga.gFormula.gArguments;
                    var predicate = ga.gFormula.predicate;
                    var polarity = ga.polarity;
                    var addGA = false;
                    foreach (var pgtt in gttInverseJoinMap[gtt])
                    {
                        for (var j = 0; j < joinedNum; j++)
                        {
                            GroundAtomEC pga;
                            if (joinedArray[j].gttInfo[pgtt[j]].assumedGAsByPredicate.TryGetValue(predicate, out pga))
                            {
                                Debug.Assert(pga.polarity == ga.polarity);
                            }
                            else
                                addGA = true;
                        }
                    }
                    if (addGA)
                        result.Add(ga);
                }
                foreach (var gt in gts)
                {
                    if (gtInverseJoinMap[gt].Count>1)
                        result.Add(makeGA(makeGAF(Equality.get(gt.type), makeGTT(new[] { gt, gt })), true, false));
                    foreach (var gt2 in gtInfo[gt].inequalities)
                    {
                        var addIE = false;
                        foreach (var pgt1 in gtInverseJoinMap[gt])
                            foreach (var pgt2 in gtInverseJoinMap[gt2])
                                for (var j = 0; j < joinedNum; j++ )
                                    if (!joinedArray[j].gtInfo[pgt1[j]].inequalities.Contains(pgt2[j]))
                                        addIE = true;
                        if (addIE)
                            result.Add(makeGIE(gt,gt2));
                    }
                }
                return result;
            }
        }
        */
        #endregion path sensitivity

        #region statistics
        //        public override ISet<GroundTupleEC> usedRGTTs { get { return new HashSet<GroundTupleEC>(from gtt in gtts.Union(getRGTTs()) from gtta in makeSources(gtt) from jgtt in gtta select jgtt); } }
        public override ISet<GT> usedGTs { get { return new HashSet<GT>(base.usedGTs.Union(from j in js from gt in allGTs from jgt in getLGTJGTs(j, gt) select jgt)); } }
        public override ISet<GTT> usedGTTs { get { return new HashSet<GTT>(base.usedGTTs.Union(from j in js from gtt in allGTTs from jgtt in getLGTTJGTTs(j, gtt) select jgtt)); } }

        protected override void removeSources(GTT gtt)
        {
            base.removeSources(gtt);
            return;
        }
        protected override void removeSources(GT gt)
        {
            base.removeSources(gt);
        }
        #endregion statistics

        #region rts

        public void importAndAssumeGTs(ISet<GT>[] ojgts)
        {
            foreach (var pi in pis)
                foreach (var jgt in ojgts[pi])
                    tryImportJGTsp(pi, jgt);
        }

        private GT tryImportJGTsp(int pi, GT jgt)
        {
            var jgtToGTMap = new Dictionary<GT, GT>();
            var gt = tryImportReps(pi, jgt, jgtToGTMap);
            if (gt == null)
                return null;
//            importEqsRecursive(pi, jgt, jgtToGTMap);
            return gt;
        }

        private void importEqsRecursive(int pi, GT jgt, Dictionary<GT, GT> jgtToGTMap)
        {
            if (!importedJGTs[pi].Add(jgt))
                return;
            var gt = tryImportReps(pi, jgt, jgtToGTMap);
            if (gt == null)
                return;
            if (inDepthBoundStrict(gt))
                foreach (var jgfa in jgt.gfas)
                {
                    var gfa = tryImportReps(pi, jgfa, jgtToGTMap);
                    if (gfa != null)
                    {
                        if (gfa.gt != gt && inDepthBoundStrict(gfa.gt))
                            assumeGLs(new[] { joineePathConditions[pi].gNegate, makeEQG(gfa.gt, gt) }, false, false);
//                        foreach (var jgt2 in jgfa.gtT)
//                            importEqsRecursive(pi, jgt2,jgtToGTMap);
                    }
                }
        }

        private GT tryImportReps(int pi, GT jgt, Dictionary<GT, GT> jgtToGTMap)
        {
            GT gt;
            if (jgtToGTMap.TryGetValue(jgt,out gt))
                return gt;

            var minJGFAi = termRepository.getGTMinGFAi(jgt);
            var minJGFA = jgt.gfas[minJGFAi];
            var minGFA = tryImportReps(pi, minJGFA, jgtToGTMap);
            if (minGFA == null)
                return null;
            gt = minGFA.gt;
            jgtToGTMap[jgt] = gt;
            return gt;
        }
        private GFA tryImportReps(int pi, GFA jgfa, Dictionary<GT, GT> jgtToGTMap)
        {
            if (!inScope(jgfa.function))
                return null;
            var pu = pus[pi];
            var gtt = tryImportReps(pi, jgfa.gtt,jgtToGTMap);
            if (gtt != null && inDepthBoundStrict(gtt))
            {
                var gfa = makeGFA(jgfa.function, gtt,false);
                return gfa;
            }
            return null;
        }
        private GTT tryImportReps(int pi, GTT jgtt, Dictionary<GT, GT> jgtToGTMap)
        {
            var gtT = new GT[jgtt.Count];
            for (var i=0; i<jgtt.Count;i++)
            {
                gtT[i] = tryImportReps(pi,jgtt.gtT[i],jgtToGTMap);
                if (gtT[i] == null || !inDepthBoundStrict(gtT[i]))
                    return null;
            }
            return makeGTT(gtT);
        }

        private void importAndAssumeGCs(IEnumerable<GC>[] ojgcs)
        {
            var joinGuard = joinGCKnob;
            if (!joinGuard || joineePathConditions == null)
            {
                #region setup
                if (ojgcs.Any(s => !s.Any()))
                    return;
                var jgcsA = new ISet<GC>[jn];
                for (var j = 0; j < jn; j++)
                {
                    jgcsA[j] = new HashSet<GC>();
                    foreach (var jgc in ojgcs[j])
                        if (importedJGCs[j].Add(jgc))
                            jgcsA[j].Add(jgc);
                }

                var result = new HashSet<GC>();
                #endregion setup

                #region common
                var commonJGCS = FU.intersection(jgcsA);
                result.UnionWith(from jgc in commonJGCS from igc in importJGC(0, jgc) select igc);
                foreach (var jgcs in jgcsA)
                    jgcs.ExceptWith(commonJGCS);
                #endregion common

                #region shape
                var shapeMap = new Dictionary<string, ISet<GC>>[jn];
                for (var j = 0; j < jn; j++)
                {
                    shapeMap[j] = new Dictionary<string, ISet<GC>>();
                    foreach (var jgc in jgcsA[j])
                        shapeMap[j].insert(makeGCStringG(jgc), jgc);
                }
                var commonShapes = FU.intersection(from s in shapeMap select s.Keys);
                #endregion shape

                #region import common shapes
                var igcs = new ISet<GC>[jn];
                if (joinGCCrudeCommonShapeKnob)
                {
                    foreach (var s in commonShapes)
                    {
                        var sjgcs = (from ss in shapeMap select ss[s]).ToArray();
                        for (var j = 0; j < jn; j++)
                            igcs[j] = new HashSet<GC>(from jgc in sjgcs[j] from igc in importJGC(j, jgc) select igc);
                        result.UnionWith(FU.intersection(igcs));
                    }
                    foreach (var gc in result)
                        if (allGCs.Contains(gc))
                        {
                            assume(gc);
                            if (isRefuted)
                                return;
                        }
                }
                #endregion import common shapes
            }
            else
            {
                #region import
                var jgcs = ojgcs;
                var igcs = new ISet<GC>[jn];
                for (var j = 0; j < jn; j++)
                {
                    igcs[j] = new HashSet<GC>();
                    foreach (var jgc in jgcs[j])
                        if (importedJGCs[j].Add(jgc))
                            igcs[j].UnionWith(importJGC(j, jgc));
                }
                #endregion import
//                if (!disableClauseJoin)
                {
                    #region common
                    var commonGCs = FU.intersection(igcs);
                    foreach (var gc in commonGCs)
                        if (allGCs.Contains(gc))
                        {
                            assume(gc);
                            if (isRefuted)
                                return;
                        }
                    for (var j = 0; j < jn; j++)
                        igcs[j].ExceptWith(commonGCs);
                    #endregion common
                }
                #region join with guard
                if (joinGuard && joineePathConditions != null)
                {
                    for (var j = 0; j < jn; j++)
                    {
                        foreach (var igc in igcs[j])
                        {
                            var gc = makeGC(igc.gls.Union(new[] { joineePathConditions[j].gNegate }));
                            assume(gc);
                            if (isRefuted)
                                return;
                        }
                        igcs[j].Clear();
                    }
                }
                #endregion join with guard
            }
            markAdded(false);
            cleanupFluff();
        }

        private string makeGCStringG(GC jgc)
        {
            var ppss = new List<string>();
            foreach (var ga in jgc.gls)
                ppss.Add(makeGAStringG(ga));
            ppss.Sort();
            return Operator.commaSeparatedList(ppss);

        }

        private string makeGAStringG(GL ga)
        {
            return (ga.polarity ? "+" : "-") + ga.predicate.nameN;
        }
        #endregion rts

        #region sweep
        protected override bool hasPredecessors(GTT gtt) { return js.Any(j => sources.gtts.getJTs(j, gtt).Any()); }
        protected override bool hasPredecessors(GT gt) { return js.Any(j => sources.gts.getJTs(j, gt).Any()); }

        protected override bool isHistorySource(GTT mgtt, GTT gtt)
        {
            return false;
        }
        protected override bool isHistorySource(GT mgt, GT gt)
        {
            return false;
        }

        #endregion sweep

        #region delta
        public override bool needEqSync
        {
            get
            {
                for (var j = 0; j < jn; j++)
                {
                    var p = pus[j];
                    var lr = predecessorLastRevisions[j];
                    if (predecessorNeedEqSync(p, lr))
                        return true;
                }
                return false;
            }
        }
        public override ISet<GC> newGCs
        {
            get
            {
                return new HashSet<GC>(from gc in allGCs where isNew2(gc) select gc);
            }
        }
        private ISet<GL> getLGAJGAs(int j, GL lgl)
        {
            var result = new HashSet<GL>();
            var ju = pus[j];
            if (lgl.isEQOrDE)
            {
                var gt0 = lgl.gtt.gtT[0];
                var gt1 = lgl.gtt.gtT[0];
                foreach (var jgt0 in getLGTJGTs(j, gt0))
                    foreach (var jgt1 in getLGTJGTs(j, gt1))
                    {
                        if (jgt0 == jgt1)
                            result.Add(ju.trueGAF.gLiteral(lgl.polarity));
                        else if (ju.gtData[jgt0].disequalities.Contains(jgt1))
                            result.Add(ju.trueGAF.gLiteral(!lgl.polarity));
                        else
                        {
                            GL jga;
                            if (ju.tryGetGEQNEGA(jgt0, jgt1, lgl.polarity, out jga))
                                result.Add(jga);
                        }
                    }
            }
            else
            {
                foreach (var jgtt in getLGTTJGTTs(j, lgl.gtt))
                {
                    GAF jgaf;
                    if (ju.gttData[jgtt].sgafs.TryGetValue(lgl.predicate, out jgaf))
                        result.Add(jgaf.gLiteral(lgl.polarity));
                }
            }
            return result;
        }
        /*
        private ISet<GA> getJGALGA(int j,GA jga)
        {
            var result = new HashSet<GA>();
            var jgtt =jga.gtt;
            if (jga.isEQOrNE)
            {
                GT gt0;
                GT gt1;
                if (tryGetLGT(pga.gtt.gTerms[0],out gt0) && tryGetLGT(pga.gtt.gTerms[1],out gt1))
                {
                    if (tryGetGEQNEGA(gt0,gt1,pga.polarity,out lga))
                        return true;
                    if (
                        (pga.polarity && gt0==gt1) ||
                        (!pga.polarity && gtData[gt0].inequalities.Contains(gt1))
                    {
                        lga=trueGFA.gAtom(true);
                        return true;
                    }
                    if (
                        (!pga.polarity && gt0==gt1) ||
                        (pga.polarity && gtData[gt0].inequalities.Contains(gt1))
                    {
                        lga=trueGFA.gAtom(false);
                        return true;
                    }
                }

            }
            else
            {
                ISet<GTT> lgtts;
                GAF gaf;
                if ( tryGetJGTTLGTTs(j,jgtt,out lgtts) )
                    foreach (var lgtt in lgtts)
                        if (gttData[lgtt].incomingGAFs.TryGetValue(jga.predicate, out gaf))
                            result.Add(gaf.gAtom(jga.polarity));
                    ) ||
                    (
                        jgcjga.predicate.isEquality &&
                        termRepository.tryGetGTT(jgcjga.gtt.gTerms.Reverse(), out mgtt) &&
                        gttMergeMap.TryGetValue(mgtt, out mgtt) &&
                        gttData[transitiveMerge(mgtt)].incomingGAFs.TryGetValue(jgcjga.predicate, out gaf)
                    )
                    )
                    jgcgas.Add(gaf.gAtom(jgcjga.polarity));

            }
        }
        */
        private bool isNew2(GC gc)
        {
            if (pus.All(ju => ju.isAssumed(gc)))
                return false;
            for (var j = 0; j < jn; j++)
            {
                var ju = pus[j];
                var potentialJGCs = new HashSet<GC>();
                var allJGAs = new HashSet<GL>();
                var falseGAs = new HashSet<GL>();
                foreach (var ga in gc.gls)
                {
                    var jgas = getLGAJGAs(j, ga);
                    if (jgas.Any(ju.isTrue))
                        goto nextJ;
                    if (jgas.Any(ju.isFalse))
                        falseGAs.Add(ga);
                    allJGAs.UnionWith(jgas);
                    potentialJGCs.UnionWith(from jga in jgas from jgc in ju.glData[jga].gcs where ju.isAssumed(jgc) select jgc);
                }
                foreach (var jgc in potentialJGCs)
                {
                    var jgas = new HashSet<GL>(jgc.gls.Except(allJGAs));
                    foreach (var jga in jgas)
                    {
                        if (!jgaCanBeFalse(j, jga))
                            goto nextJGC;
                    } //jgc found - holds in ju - next j
                    goto nextJ;
                    nextJGC:;
                }
                return true;
                nextJ:;
            }
            return false;
        }

        private bool jgaCanBeFalse(int j, GL jga)
        {
            if (jga.isEQOrDE)
            {
                var jgts = jga.gtt.gtT;
                ISet<GT> gts0;
                ISet<GT> gts1;
                if (tryGetJGTLGTs(j, jgts[0], out gts0) && tryGetJGTLGTs(j, jgts[1], out gts1))
                {
                    if (jga.polarity)
                        return gts0.Any(gt0 => gtData[gt0].disequalities.Intersect(gts1).Any());
                    else
                        return gts0.Intersect(gts1).Any();
                }
            }
            else
            {
                ISet<GTT> lgtts;
                if (sources.gtts.tryGetJTLTs(j, jga.gtt, out lgtts))
                    foreach (var gtt in lgtts)
                    {
                        GAF gaf;
                        if (gttData[gtt].sgafs.TryGetValue(jga.predicate, out gaf) && isFalse(gaf.gLiteral(jga.polarity)))
                            return true;
                    }
            }
            return false;
        }

        public override ISet<GL> newGLs
        {
            get
            {
                return new HashSet<GL>(from ga in assumedUGCs where isNew2(ga) select ga);
            }
        }
        private bool isNew2(GL gl)
        {
            if (!sources.gtts.ltHasJTsForAll(gl.gtt))
                return true;
            GL pga;
            foreach (var j in js)
                foreach (var jgtt in getLGTTJGTTs(j, gl.gtt))
                    if (!pus[j].gttData[pus[j].transitiveMerge(jgtt)].assumedGLsByPredicate.TryGetValue(gl.gaf.predicate, out pga))
                        return true;
            /*                    else
                                    Debug.Assert(pga.polarity == ga.polarity);*/ //TODO: make Join=>Clone if detected
            return false;
        }

        public override ISet<GT> gtsWithNewGNEs
        {
            get
            {
                var result = new HashSet<GT>();
                foreach (var gt in allGTs)
                {
                    if (gtData[gt].disequalities.Count > 0)
                        if (!sources.gts.ltHasJTsForAll(gt))
                            result.Add(gt);
                        else
                            foreach (var gt2 in gtData[gt].disequalities)
                                if (!sources.gts.ltHasJTsForAll(gt2))
                                    result.Add(gt);
                                else
                                    for (var j = 0; j < jn; j++)
                                    {
                                        var ju = pus[j];
                                        foreach (var jgt1m in getLGTJGTs(j, gt))
                                        {
                                            var jgt1 = ju.transitiveMerge(jgt1m);
                                            foreach (var jgt2m in getLGTJGTs(j, gt2))
                                            {
                                                var jgt2 = ju.transitiveMerge(jgt2m);
                                                if (!ju.gtData[jgt1].disequalities.Contains(jgt2))
                                                {
                                                    result.Add(gt);
                                                    goto gtDone;
                                                }
                                            }
                                        }
                                    }
                    gtDone:;
                }
                return result;
            }
        }
        private int lgtNumGTAs(GT lgt) { var gtd = sources.gts.getLTTD(lgt); return (from j in js select gtd.jgts(j).Count()).Aggregate(1, (a, c) => a * c); }
        public override ISet<GT> gtsWithNewECs
        {
            get
            {
                var result = new HashSet<GT>();
                foreach (var gt in allGTs)
                {
                    if (!sources.gts.ltHasJTsForAll(gt))// sources.gts.getTAs(gt).Count == 0)
                        result.Add(gt);
                    else if (lgtNumGTAs(gt) > 1 || js.Any(j => getLGTJGTs(j, gt).Any(jgt => jgt != gt)))
                        foreach (var gfa in gt.gfas)
                            for (var j = 0; j < jn; j++)
                            {
                                var ju = pus[j];
                                if (ju.inScope(gfa.function))
                                    if (!getLGTTJGTTs(j, gfa.gtt).Any(jgtt => ju.hasGFA(gfa.function, jgtt)))
                                    {
                                        result.Add(gt);
                                        goto gtDone;
                                    }
#if DEBUG
                                    else
                                    {
                                        foreach (var jgtt in getLGTTJGTTs(j, gfa.gtt))
                                            if (ju.gttData[jgtt].sgfas.ContainsKey(gfa.function))
                                                Debug.Assert(sources.gts.getLTTD(gt).hasJGT(j, ju.gttData[jgtt].sgfas[gfa.function].gt));
                                    }
#endif
                            }
                    gtDone:;
                }
                return result;
            }
        }
        public override bool needSync
        {
            get
            {
                for (var j = 0; j < jn; j++)
                    for (var i = predecessorLastRevisions[j]; i < pus[j].currentRevision; i++)
                        if (pus[j].revisionList[i].any)
                            return true;

                //                    if (predecessorLastRevisions[j] < joinedArray[j].currentRevision - 1 || joinedArray[j].revisionList[currentRevision].any)
                //                        return true;
                return false;
            }
        }

        #endregion delta

        #region debug
#if DEBUG
        protected override IDictionary<int, GTDeadEndsRT> getLocalGTDeadEnds(GTDeadEnds result, GTDeadEndsRT rt)
        {
            var rv = new Dictionary<int, GTDeadEndsRT>();
            for (var j = 0; j < jn; j++)
            {
                var prt = new GTDeadEndsRT();
                var ju = pus[j];
                foreach (var gt in rt.gts)
                {
                    var jgts = new HashSet<GT>(getLGTJGTs(j, gt));
                    prt.gts.UnionWith(jgts);
                    if (jgts.Count == 0)
                        result.gtDeadEnds.insert(index, gt);
                    else
                        prt.gts.UnionWith(jgts);
                    foreach (var gfa in gt.gfas)
                        checkGFADeadEnds(j, result, prt, gfa.function, gfa.gtt);
                }

                foreach (var gfaKV in rt.gfaMap)
                    foreach (var gtt in gfaKV.Value)
                        checkGFADeadEnds(j, result, prt, gfaKV.Key, gtt);

                if (prt.gts.Count >= 0 || prt.gfaMap.Count > 0)
                    rv[ju.index] = prt;
            }
            return rv;
        }

        private void checkGFADeadEnds(JI j, GTDeadEnds result, GTDeadEndsRT prt, Function f, GTT gtt)
        {
            var jgtts = new HashSet<GTT>(getLGTTJGTTs(j, gtt));
            checkGFADeadEnds(pus[j], jgtts, result, prt, f, gtt);
        }
#endif
        public IEnumerable<GT> getLGTJGTs(JI j, GT lgt) { return sources.gts.getLTTD(lgt).jgts(j); }
        private IEnumerable<GTT> getLGTTJGTTs(JI j, GTT lgtt) { return sources.gtts.getLTTD(lgtt).jgtts(j); }

        public override ISet<GFA> getGTLostGFAs(GT gt)
        {
            var result = new HashSet<GFA>();
            var gtd = sources.gts.getLTTD(gt);
            for (var j = 0; j < jn; j++)
                foreach (var jgt in gtd.jgts(j))
                    foreach (var jgfa in jgt.gfas)
                    {
                        GFA gfa = null;
                        var pgtt = jgfa.gtt;
                        ISet<GTT> gtts;
                        if (tryGetJGTTLGTTs(j, pgtt, out gtts))
                        {
                            var f = jgfa.function;
                            foreach (var gtt in gtts)
                                if (gttData[gtt].sgfas.TryGetValue(f, out gfa))
                                { /*Debug.Assert(gfa.ec == gt);*/ }
                                else
                                    Debug.Assert(gfa == null);
                        }

                        if (gfa == null)
                            result.Add(jgfa);
                    }

            return result;
        }
        #endregion debug

        #region stats
        public override ISet<GTT> indexedGTTs
        {
            get
            {
                var s = base.indexedGTTs;
                s.UnionWith(from j in js from jgtt in sources.gtts.getAllJTs(j) select jgtt);
                return s;
            }
        }
        public override ISet<GT> indexedGTs
        {
            get
            {
                var s = base.indexedGTs;
                s.UnionWith(from j in js from jgt in sources.gts.getAllJTs(j) select jgt);
                return s;
            }
        }
        #endregion stats
    }
    public static class JUU
    {
        public static bool insert<T>(this IDictionary<T, ISet<T>[]> map, T lt, int j, T jt, int n)
        {
            ISet<T>[] e;
            if (!map.TryGetValue(lt, out e))
                map[lt] = e = (from i in Enumerable.Range(0, n) select new HashSet<T>()).ToArray();
            return e[j].Add(jt);
        }
    }
}
