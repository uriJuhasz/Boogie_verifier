using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Analyzers.FOLConverter.Formulae;
using GTI = System.Int32;
using GTTI = System.Int32;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    public class SU : IU<SGTSD, SGTTSD, SSourceStructure, STSourceStructure<GT, SGTSD>, STSourceStructure<GTT, SGTTSD>>
    {
        #region instance creation
#if DEBUG
        public static new IDictionary<int, SU> m = new Dictionary<int, SU>();
#endif
        internal static new void clean()
        {
#if DEBUG
            m.Clear();
#endif
        }

        public SU(Universe predecessor)
            : base(predecessor.srs, predecessor.termRepository)
        {
#if DEBUG
            m[index] = this;
#endif
            this.predecessor = predecessor;
            this.pPredecessors = new[] { predecessor };
            this.pPIS = new[] { 0 };
            sSources = new SSourceStructure(this);

            this.emptyGTT = makeGTT(termRepository.emptyGTT);
            addToScope(predecessor.nullaryPredicates);

            predecessorLastRevision = predecessor.currentRevision;
            predecessorNextRevision = predecessorLastRevision;
            predecessor.addRevision();
            trueGAF = predecessor.trueGAF;
            //            embedGAF(trueGAF);
            falseGAF = predecessor.falseGAF;
            embedGAF(falseGAF);
            markAdded(false);
            if (predecessor.isRefuted)
            {
                refute("Predecessor is refuted");
                return;
            }

            groundAtomInverseMergeMap = new GroundAtomInverseMergeMap(this);

            {
                var cPCs = predecessor.pathAtoms;
                foreach (var cpc in cPCs)
                    assume(makeGL(cpc.pp, cpc.gaf.gtt, true));
            }

            pInitialUniverse = predecessor.initialUniverse;

            #region consistency
            Debug.Assert(trueGAF.isTrue);
            Debug.Assert(!predecessor.isRefuted);
            Debug.Assert(predecessor.invariant());

            Debug.Assert(invariant());
#if DEBUG
            predecessorVersionHistory.Add(predecessorLastRevision);
#endif
            #endregion consistency
        }
        private readonly Universe pInitialUniverse;
        public override string ToString()
        {
            return "C<" + index + ">(" + predecessor.index + ")";
        }
        public override Universe initialUniverse
        {
            get
            {
                return pInitialUniverse;
            }
        }
        #endregion instance creation

        #region element import

        #endregion element import

        #region element embedding
        private readonly SSourceStructure sSources;
        public override SSourceStructure sources { get { return sSources; } }
        public bool tryGetPGTLGT(GT pgt, out GT lgt)
        {
            GT mlgt;
            if (tryGetGTMM(pgt, out mlgt))
            {
                lgt = transitiveMerge(mlgt);
                return true;
            }
            else
            {
                lgt = null;
                return false;
            }
        }
        internal void setGTTSources(GTT gtt, IEnumerable<GTT> pgtts)
        {
            #region precondition
#if DEBUG
            Debug.Assert(upToDateGTTMM(gtt));
            foreach (var pgtt in pgtts)
                Debug.Assert(predecessor.upToDateGTTMM(pgtt));
#endif
            #endregion precondition

            var gtti = sources.gtts.getTI(gtt);
            foreach (var pgtt in pgtts)
                sources.mapPGTT(gtti, pgtt);
            setGTTSourcesMM(gtt, pgtts);
        }
        private void setGTSourcesMM(GT gt, IEnumerable<GT> pgts)
        {
            foreach (var pgt in pgts)
                if (!hasGTMM(pgt))
                    setNewMergedGT(pgt, gt);
                else
                    setMergedGT(transitiveMerge(pgt), gt);
        }
        private void setGTTSourcesMM(GTT gtt, IEnumerable<GTT> pgtts)
        {
            foreach (var pgtt in pgtts)
                if (!hasGTTMM(pgtt))
                    setNewMergedGTT(pgtt, gtt);
                else
                    setMergedGTT(transitiveMerge(pgtt), gtt);
        }

        protected override int calculateGTDepth(GT gt)
        {
            var r = base.calculateGTDepth(gt);
            return r;
        }

        protected override void embedGT(GTI gti, GT gt, IEnumerable<GT> mgts)
        {
            #region precondition
#if DEBUG
            Debug.Assert(!mgts.Contains(gt));
#endif
            #endregion consistency

            var pgts = sources.gts.getTD(gti).pgts;
            setGTSourcesMM(gt, pgts);

            #region consistency
#if DEBUG
            foreach (var gfa in gt.gfas)
                Debug.Assert(gfa.function.argumentTypes.Count() > 0 || inScope(gfa.function) || pgts.Any(pgt => pgt.gfas.Any(pgfa => pgfa.function == gfa.function)));
#endif
            #endregion consistency

            base.embedGT(gti, gt, mgts);

            #region postconditions
            Debug.Assert(pgts.All(sgt => transitiveMerge(sgt) == gt));
            #endregion postconditions
        }
        protected override void embedGTT(GTTI gtti, GTT gtt, IEnumerable<GTT> mgtts)
        {
            var pgtts = sources.gtts.getTD(gtti).pgtts;

            #region consistency
#if DEBUG
            Debug.Assert(upToDateGTTMM(gtt));
            Debug.Assert(pgtts.All(tt => predecessor.upToDateGTTMM(tt)));
            Debug.Assert(mgtts.All(mgtt => gttSources(mgtt).All(smgtt => !predecessor.hasGTTMM(smgtt) || pgtts.Contains(predecessor.transitiveMerge(smgtt)))));
            Debug.Assert(pgtts.All(tt => predecessor.upToDateGTTMM(tt)));
#endif
            #endregion consistency

            setGTTSourcesMM(gtt, pgtts);

            base.embedGTT(gtti, gtt, mgtts);
            #region postconditions
            Debug.Assert(pgtts.All(pgtt => transitiveMerge(pgtt) == gtt));
            #endregion postconditions
        }
        #endregion element embedding

        #region element creation
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
            var et = SImportTemplateMaker.make(this, f, gtt);
            var gti = sources.gtts.getLTTD(gtt).getSGFA(f);
            #region consistency
#if INVARIANTS
            Debug.Assert(et.checkSourcesBefore());
#endif 
            foreach (var mgti in et.modifiedGTIs)
                Debug.Assert(et.mgts(mgti).Count == 0);
            #endregion consistency
            et.getGTs();
            embedTermStructure(et);
            #region consistency
            Debug.Assert(!isRefuted);
            #endregion consistency
            enqueuePredecessorDisequalities(et);
            if (isRefuted)
                return null;
            var gt = et.getLGT(gti);
            #region consistency
            Debug.Assert(gttData[gtt].sgfas[f].gt == gt);
            Debug.Assert(invariant());
            #endregion consistency
            #region postconditions
            Debug.Assert(gt.gfasByFunction[f].ContainsKey(gtt));
            #endregion postconditions
            return gt;
        }

        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        public IEnumerable<GT> makePredecessorGTs(Function f, IEnumerable<GTT> pgtts)
        {
            return makePredecessorGTs(f, pgtts, false);
        }
        public IEnumerable<GT> makePredecessorGTs(Function f, IEnumerable<GTT> pgtts, bool isGoalv)
        {
            var rt = new MSGTRT(f, pgtts, isGoalv);
            return predecessor.makeSuccessorGTs(rt);
        }
        internal override MSGTRTC makeMSGTRTC(MSGTRT rt)
        {
            Debug.Assert(inScope(rt.function));
            return new CMSGTRTC(this, rt);
        }

        internal class CMSGTRTC : MSGTRTC
        {
            public CMSGTRTC(SU universe, MSGTRT rt)
                : base(universe, rt)
            {
                this.universe = universe;
            }

            public readonly SU universe;
            protected override void p1I()
            {
                universe.makeSuccessorGTsP1(this);
            }
            protected override void p2I()
            {
                universe.makeSuccessorGTsP2(this);
            }
        }

        protected override bool predecessorRelevant(Function f, GTT gtt)
        {
            return predecessor.inScope(f) && gttSources(gtt).Count > 0;
        }

        internal void makeSuccessorGTsP1(CMSGTRTC ar)
        {
            #region precondition
#if DEBUG
            foreach (var igtt in ar.gtts)
                Debug.Assert(upToDateGTTMM(igtt));
#endif
            #endregion precondition

            makeSuccessorGTsP1A(ar);

            var ppgtts = (from gtt in ar.ngtts from pgtt in gttSources(gtt) select pgtt).ToArray();
            if (ppgtts.Any() && predecessor.inScope(ar.function))
                ar.outRTs = new[] { new MSGTRT(ar.function, ppgtts, ar.isGoal) };
            else
                ar.outRTs = new MSGTRT[0];

            #region postcondition
#if DEBUG
            foreach (var igtt in ar.gtts)
            {
                if (hasGTTMM(igtt))
                    Debug.Assert(
                        gttData[igtt].sgfas.ContainsKey(ar.function) ||
                        hasRGFA(ar.function, igtt) ||
                        ar.ngtts.Contains(igtt)
                    );
                else
                    Debug.Assert(ar.ngtts.Contains(igtt));
            }
#endif
            #endregion postcondition
        }

        internal void makeSuccessorGTsP2(CMSGTRTC ar)
        {
            var function = ar.function;
            var isGoalv = ar.isGoal;
            var ngtts = ar.ngtts;
            if (ar.outRTs.Any() && ar.outRTs[0].rgts.Any())
            {
                var pgts = ar.outRTs[0].rgts;
                GT tgt;
                foreach (var pgt in pgts)
                    tryImport(pgt, isGoalv, out tgt);
            }

            makeSuccessorGTsP2A(ar);
            markAdded(false);

            #region postcondition
#if DEBUG
#if INVARIANTS
            Debug.Assert(invariant());
#endif
#endif
            #endregion postcondition
        }

        #region CGTRTC
        /*        internal class CGTRTC : GTRTC
                {
                    public CGTRTC(SU universe, GTRT request)
                        : base(universe, request)
                    {
                        this.universe = universe;
                    }
                    public readonly SU universe;
                    protected override void p1I()
                    {
                        universe.gtrtP1(this);
                    }
                    protected override void p2I()
                    {
                        universe.gtrtP2(this);
                    }
                }
                private void gtrtP1(CGTRTC ar)
                {
                    gtrtP1A(ar);
                    if (ar.ngts.Any() || ar.nfs.Any())
                        ar.outRTs = new[] { new GTRT(ar.nfs.Union(from gt in ar.ngts from f in lfss(gt) select f), from gt in ar.ngts from pgt in gtSources(gt) select pgt, ar.isGoal) };
                    else
                        ar.outRTs = new GTRT[0];
                }

                private void gtrtP2(GTRTC ar)
                {
                    if (ar.outRTs.Any())
                    {
                        foreach (var pfc in ar.outRTs[0].rfcs)
                            importAndAssume(pfc, false);
                        foreach (var pgc in ar.outRTs[0].rgcs)
                            importAndAssume(pgc, false);
                        markAdded(false);
                    }
                    gtrtP2ANo(ar);
                    markAdded(false);
                }

                internal override GTRTC makeGTRTC(GTRT request)
                {
                    return new CGTRTC(this, request);
                }*/
        #endregion CGTRTC

        #region MSGTTRTC
        internal override MSGTTRTC makeMSGTTRTC(MSGTTRT rt)
        {

            return new CMSGTTRTC(this, rt);
        }

        public class CMSGTTRTC : MSGTTRTC
        {
            public CMSGTTRTC(SU universe, MSGTTRT rt)
                : base(universe, rt)
            {
                this.universe = universe;
            }

            public readonly SU universe;
            public readonly IDictionary<GTT, ISet<GTT>> ngttPGTTs = new Dictionary<GTT, ISet<GTT>>();
            public readonly IDictionary<GTT, GTT> pgttToNGTTMap = new Dictionary<GTT, GTT>();
            public readonly ISet<GTT> pgtts = new HashSet<GTT>();

            protected override void p1I()
            {
                universe.makeSuccessorGTTsP1(this);
            }
            protected override void p2I()
            {
                universe.makeSuccessorGTTsP2(this);
            }
        }

        private ISet<GTT> getPPGTTs(GTT gtt)
        {
            return getPPGTTs(
                (from gt in gtt.gtT
                 select new HashSet<GT>(from pgt in gtSources(gt) where predecessor.inDepthBoundStrict(pgt) select pgt)
                 ).ToArray());
        }
        protected ISet<GTT> getPPGTTs(ISet<GT>[] pgtSetTuple)
        {
            var pgtAs = FU.makeOptions(predecessor.depthFilterStrict(pgtSetTuple));
            var pgtts = new HashSet<GTT>(
                from gtA in pgtAs
                select predecessor.getGTT(gtA));
            return pgtts;
        }
        protected void getPGTTs(CMSGTTRTC ar, GTT gtt)
        {
            ISet<GTT> pgtts;
            if (!ar.ngttPGTTs.TryGetValue(gtt, out pgtts))
            {
                ar.ngttPGTTs[gtt] = pgtts = getPPGTTs(gtt);
                foreach (var pgtt in pgtts)
                    ar.pgttToNGTTMap[pgtt] = gtt;
            }
            ar.pgtts.UnionWith(pgtts);
        }
        private void makeSuccessorGTTsP1(CMSGTTRTC ar)
        {
            makeSuccessorGTTsP1A(ar);

            foreach (var ngtt in ar.ngtts)
                getPGTTs(ar, ngtt);

            if (ar.pgtts.Any())
                ar.outRTs = new MSGTTRT[] { new MSGTTRT(ar.pgtts) };
            else
                ar.outRTs = new MSGTTRT[0];
        }
        bool hasPGTTLostGFAs(GTT pgtt)
        {
            return pgtt.gtT.Any(pgt => hasPGTLostGFAs(pgt));
        }

        private void makeSuccessorGTTsP2(CMSGTTRTC ar)
        {
            Debug.Assert(this == ar.universe);
            Debug.Assert(ar.outRTs.Count() <= 1);

            #region handle predecessor tuples
            if (ar.outRTs.Count() == 1)
            {
                var gttToPGTTsMap = new Dictionary<GTT, ISet<GTT>>();
                {
                    var pgtts = ar.outRTs[0].gtts;
                    foreach (var pgtt in pgtts)
                    {
                        var ngtt = ar.pgttToNGTTMap[pgtt];
                        if (hasGTTMM(ngtt))
                        {
                            Debug.Assert(transitiveMerge(pgtt) == ngtt);
                            Debug.Assert(gttToPGTTsMap.ContainsKey(ngtt));
                        }
                        else
                        {
                            Debug.Assert(!hasGTTMM(pgtt));
                            if (!gttToPGTTsMap.ContainsKey(ngtt))
                                gttToPGTTsMap[ngtt] = new HashSet<GTT>();
                        }
                        gttToPGTTsMap[ngtt].Add(pgtt);
                        ar.ngtts.Remove(ngtt);
                    }
                }
                #region add relevant tuples
                foreach (var gttKV in gttToPGTTsMap)
                    makeNewGTT(gttKV.Key, gttKV.Value);
                #endregion add relevant tuples
            }
            #endregion handle predecessor tuples

            #region add rejected tuples
            foreach (var ngtt in ar.ngtts)
                makeSuccessorGTTsP2NGTTS(ar, ngtt);
            #endregion add rejected tuples

            markAdded(false);


            #region postcondition
#if DEBUG
            foreach (var gtt in ar.gtts)
                Debug.Assert(hasGTTMM(gtt) && upToDateGTTMM(gtt));
#endif
            #endregion postcondition
        }
        #endregion MSGTTRTC

        protected override sealed void makeNewGTT(GTT gtt)
        {
            var et = SImportTemplateMaker.makeGTT(this, gtt.gtT);
            et.getGTs();
            embedTermStructure(et);
            Debug.Assert(sources.gtts.hasLT(gtt));
            //            base.makeNewGTT(gtt);
        }
        private void makeNewGTT(GTT gtt, IEnumerable<GTT> pgtts)
        {
            makeNewGTT(gtt); //TODO maybe more efficient - not call makePGTTs again
                             //            var gtti = sources.makeGTT((from gt in gtt.gts select sources.gts.getTI(gt)).ToArray()).gtti;
                             //            setGTTSources(gtt, pgtts);
        }

        private IEnumerable<GTT> makeSources(GTT gtt)
        {
            return makePGTTs((from gt in gtt.gtT select predecessor.depthFilterStrict(gtSources(gt))).ToArray());
        }
        #endregion element creation

        #region trigger import
        #region assumed ground atoms by predicate and gtts
        internal class CAGAPGTTRTC : AGAPGTTRTC
        {
            public CAGAPGTTRTC(SU universe, AGAPGTTRT rt)
                : base(universe, rt)
            {
                this.universe = universe;
            }
            public readonly SU universe;

            protected override void p1I()
            {
                universe.getAssumedGAByPAndGTTP1(this);
            }
            protected override void p2I()
            {
                universe.getAssumedGAByPAndGTTP2(this);
            }
        }
        internal void getAssumedGAByPAndGTTP1(CAGAPGTTRTC ar)
        {
            getAssumedGLByPAndGTTP1A(ar);

            var pgtts = new HashSet<GTT>(from ngtt in ar.ngtts from pgtt in gttSources(ngtt) select pgtt);
            if (pgtts.Any() && predecessor.inScope(ar.predicate))
                ar.outRTs = new[] { new AGAPGTTRT(ar.predicate, pgtts) };
            else
                ar.outRTs = new AGAPGTTRT[0];
        }
        internal void getAssumedGAByPAndGTTP2(CAGAPGTTRTC ar)
        {
            if (ar.outRTs.Any())
                foreach (var pga in ar.outRTs[0].rgls)
                {
                    Debug.Assert(ar.predicate == pga.gaf.predicate);
                    var ga = makeGL(pga.pp, transitiveMerge(pga.gaf.gtt), false); //TODO goal?
                    assume(ga);
                    if (isRefuted)
                        return;
                    ar.rgls.Add(ga);
                }
            markAdded(false);
        }
        internal override AGAPGTTRTC makeAGAPGTTRTC(AGAPGTTRT rt)
        {
            return new CAGAPGTTRTC(this, rt);
        }
        #endregion assumed ground atoms by predicate and gtts

        #region import

        public override void makeOriginalGTs(IEnumerable<FunctionApplicationFormula> ts, bool isGoal)
        {
            var et = SImportTemplateMaker.makeOriginals(this, ts);
            et.getGTs();
            embedTermStructure(et);
            foreach (var t in ts)
            {
                var gt = makeIT(t, isGoal) as GT;
                Debug.Assert(gtDepth(gt) == 0);
                addOriginal(gt);
            }
            enqueuePredecessorDisequalities(et);
            #region consistency
#if DEBUG
            Debug.Assert(disEqualitiesComplete());
            //            Debug.Assert(sourcesComplete());
            Debug.Assert(depthInvariant());
#endif
            #endregion consistency
        }
        internal bool tryImport(GT ipgt, bool isGoalv, out GT gt)
        {
            #region precondition
#if DEBUG
            Debug.Assert(predecessor.upToDate(ipgt));
            Debug.Assert(predecessor.hasGTMM(ipgt));
            Debug.Assert(predecessor.upToDateGTMM(ipgt));
            if (!hasGTMM(ipgt))
                foreach (var gtt in allGTTs)
                {
                    var pgtts = gttSources(gtt);
                    Debug.Assert(upToDateGTTMM(gtt));
                    foreach (var ott in pgtts)
                    {
                        Debug.Assert(hasGTTMM(ott));
                        Debug.Assert(transitiveMerge(ott) == gtt);
                    }
                    Debug.Assert(gtt.gtT.All(pgt => upToDateGTMM(pgt)));
                }
#if INVARIANTS
            Debug.Assert(sourcesComplete());
#endif
#endif
            #endregion precondition

            if (!hasGTMM(ipgt))
            {
#if DEBUG
//                if (index == 12 && ipgt.index == 1661)
//                    Debugger.Break();
#endif
                var et = SImportTemplateMaker.make(this, ipgt);

                #region source consistency
#if DEBUG1
                et.checkSourcesBefore();
                foreach (var gtt in allGTTs)
                {
                    var pgtts = gttSources(gtt);
                    Debug.Assert(upToDateGTTMM(gtt));
                    foreach (var ott in pgtts)
                    {
                        Debug.Assert(hasGTTMM(ott));
                        Debug.Assert(transitiveMerge(ott) == gtt);
                    }
                    Debug.Assert(gtt.gtT.All(pgt => upToDateGTMM(pgt)));
                }

#endif
                #endregion source consistency
                et.getGTs();
                #region consistency
                //TODO
                /*#if DEBUG
                                foreach (var ti1 in et.template.existingGTKeys)
                                    foreach (var ti2 in et.template.existingGTKeys)
                                        Debug.Assert(ti1 == ti2 || et.getLGT(ti1) != et.getLGT(ti2));
                                foreach (var ti in et.updatedGTIs)
                                    Debug.Assert(et.mgts(ti).Count==0);
                                foreach (var gti in et.updatedGTIs)
                                    foreach (var gfa in et.getLGT(gti).gfas)
                                        if (hasGTTMM(gfa.gtt))
                                            Debug.Assert(
                                                !gttData[transitiveMerge(gfa.gtt)].sgfas.ContainsKey(gfa.function)
                                                || gttData[transitiveMerge(gfa.gtt)].sgfas[gfa.function]==gfa
                                                );
                #endif*/
                #endregion consistency

                embedTermStructure(et);
                if (isRefuted || !hasGTMM(ipgt))
                {
                    gt = null;
                    return false;
                }

                gt = transitiveMerge(ipgt);
                Debug.Assert(upToDateGTMM(gt));
                if (isGoalv)
                    addGoalRecursive(gt);

                enqueuePredecessorDisequalities(et);

                #region consistency
#if DEBUG
#if INVARIANTS
                Debug.Assert(goalsComplete());
#endif
                Debug.Assert(hasGTMM(ipgt));
                foreach (var gti in et.modifiedGTIs)
                    Debug.Assert(upToDateGTMM(et.getLGT(gti)));

                foreach (var gti in et.modifiedGTIs)
                    foreach (var mbfs in et.getLGT(gti).gfasByFunction.Values)
                        foreach (var fa in mbfs.Values)
                            Debug.Assert(upToDateGTTMM(fa.gtt));

                foreach (var gtti in et.modifiedGTTIs)
                    foreach (var tgt in et.getLGTT(gtti).gtT)
                        Debug.Assert(upToDateGTMM(tgt));
#endif
                #endregion consistency
            }
            else
            {
                gt = transitiveMerge(ipgt);
                if (isGoalv && !isGoal(gt))
                    addGoalRecursive(gt);
                Debug.Assert(upToDateGTMM(gt));
            }

            #region postcondition
#if DEBUG
            Debug.Assert(hasGTMM(ipgt) || !predecessor.hasGTMM(ipgt));
#if INVARIANTS
            Debug.Assert(sourcesComplete());
#endif
#endif
            #endregion postcondition
            Debug.Assert(upToDate(gt));
            return true;
        }
        internal bool tryImport(GL pgl, bool isGoal, out GL gl)
        {
            Debug.Assert(predecessor.gttData[pgl.gaf.gtt].sgafs[pgl.gaf.predicate].gLiteral(pgl.polarity) == pgl);
            var pgtt = pgl.gtt;
            GTT gtt;
            gl = null;
            if (tryGetLGTT(pgl.gtt, out gtt))
                if (inDepthBoundStrict(gtt))
                    gl = makeGL(pgl.pp, gtt, isGoal);
                else
                    return false;
            else
            {
                var gtT = new GT[pgtt.Count];
                for (var i = 0; i < pgtt.Count; i++)
                    if (!tryImport(pgtt.gtT[i], isGoal, out gtT[i]) || !inDepthBoundStrict(gtT[i]))
                        return false;
                gl = makeGL(pgl.pp, gtT, isGoal);
            }
            //            if (isGoal)
            //                addGoalRecursive(ga);
            markAdded(false);
            Debug.Assert(upToDate(gl));
            return true;
        }

        private void importAndAssumeFC(FC pfc, bool isGoal)
        {
            var ls = new List<IL>();
            foreach (var pl in pfc)
            {
                IL il;
                if (!tryImport(pl, isGoal, out il))
                    return;
                ls.Add(il);
            }
            var fc = makeFC(ls);
            markAdded(false);
            setImported(fc);
            assumeFC(fc);
        }
        private ISet<GC> importedGCs = new HashSet<GC>();
        internal void importAndAssumeGC(GC pgc, bool isGoal)
        {
            if (importedGCs.Contains(pgc))
                return;
            importedGCs.Add(pgc);
            var allGAs = new HashSet<GL>();
            var gas = new List<GL>();
            foreach (var pga in pgc.gls)
            {
                GL ga;
                if (!tryImport(pga, isGoal, out ga))
                    return;
                allGAs.Add(ga);
            }
            assumeGLs(allGAs, isGoal, false);
            if (isRefuted)
                return;
            markAdded(false);
        }
        private bool tryImport(IL pa, bool isGoal, out IL a)
        {
            if (pa.isGround)
            {
                GL ga;
                if (tryImport(pa as GL, isGoal, out ga))
                {
                    a = ga;
                    return true;
                }
                else
                {
                    a = null;
                    return false;
                }
            }
            else
            {
                FL fa;
                if (tryImport(pa as FL, isGoal, out fa))
                {
                    a = fa;
                    return true;
                }
                else
                {
                    a = null;
                    return false;
                }

            }
        }
        private bool tryImport(FL pfa, bool isGoal, out FL fa)
        {
            FTT ftt;
            if (tryImport(pfa.faf.ftt, isGoal, out ftt))
            {
                fa = makeFAF(pfa.faf.predicate, ftt).fLiteral(pfa.polarity);
                markAdded(false);
                return true;
            }
            else
            {
                fa = null;
                return false;
            }
        }
        private bool tryImport(FTT pftt, bool isGoal, out FTT ftt)
        {
            if (fttData.ContainsKey(pftt))
            {
                ftt = pftt;
                return true;
            }
            else
            {
                var ts = new IT[pftt.Count()];
                for (var i = 0; i < pftt.Count(); i++)
                    if (!tryImport(pftt[i], isGoal, out ts[i]))
                    {
                        ftt = null;
                        return false;
                    }
                ftt = makeFTT(ts);
                return true;
            }
        }
        private bool tryImport(IT t, bool isGoal, out IT result)
        {
            if (t is FVT)
                return tryImport(t as FVT, out result);
            else if (t is FFA)
                return tryImport(t as FFA, isGoal, out result);
            else
            {
                GT gt;
                if (tryImport(t as GT, isGoal, out gt))
                {
                    result = gt;
                    return true;
                }
                else
                {
                    result = null;
                    return false;
                }

            }
        }
        private bool tryImport(FVT t, out IT result)
        {
            result = makeVT(t.variable);
            return true;
        }
        private bool tryImport(FFA t, bool isGoal, out IT result)
        {
            FTT arguments;
            if (!tryImport(t.ftt, isGoal, out arguments))
            {
                result = null;
                return false;
            }

            result = makeFFA(t.function, arguments);
            markAdded(false);
            return true;
        }
        #endregion import

        private void enqueuePredecessorGroundAtoms(Revision predecessorRevision)
        {
            foreach (var pgabt in predecessorRevision.assumedGAsByPredicate)
                foreach (var pga in pgabt.Value)
                {
                    if (isRefuted)
                        return;
                    GTT mlgtt;
                    if (tryGetGTTMM(pga.gaf.gtt, out mlgtt))
                    {
                        var lgtt = transitiveMerge(mlgtt);
                        if (gttData[lgtt].assumedGLsByPredicate.ContainsKey(pga.gaf.predicate) || gttData[lgtt].agaPGTTCache.Contains(pga.gaf.predicate))
                        {
                            var ga = makeGL(pga.pp, lgtt, false);
                            assume(ga);
                            if (isRefuted)
                                return;
                        }
                    }
                }
        }

        private void enqueuePredecessorDisequalities(IEmbedTemplate et)
        {
            var pu = predecessor;
            foreach (var gti in et.modifiedGTIs)
            {
                var gt = et.getLGT(gti);
                foreach (var pgt in gtSources(gt))
                    foreach (var pgt2 in pu.getGTDisequalities(pgt))
                        if (hasGTMM(pgt2))
                            assumeGDE(gt, transitiveMerge(pgt2));
            }
        }
        private void enqueuePredecessorDisequalities(IEmbedTemplate et,Revision rev)
        {
//            enqueuePredecessorDisequalities(et);
            foreach (var gt in allGTs) //gti in et.modifiedGTIs)
            {
                foreach (var pgt in gtSources(gt))
                    foreach (var pgt2 in predecessor.getGTDisequalities(pgt))
                        if (hasGTMM(pgt2))
                            assumeGDE(gt, transitiveMerge(pgt2));
            }
        }
        #endregion trigger import

        #region predecessor update
#if DEBUG
        List<int> predecessorVersionHistory = new List<int>();
#endif
        protected override void synchronizeWithPredecessors(bool satEqs)
        {
            if (predecessor.isRefuted)
                refute("predecessor is refuted");
            importedGCs.IntersectWith(predecessor.assumedGCs);// Clear();
            var predecessorRevision = predecessor.getRevision(predecessorLastRevision, out predecessorNextRevision);
            synchronizeWithPredecessors(predecessorRevision, satEqs);
            if (isRefuted)
                return;
            predecessorLastRevision = predecessorNextRevision;
        }

        private void synchronizeWithPredecessors(Revision predecessorRevision, bool satEqs)
        {
            #region preconditions
#if DEBUG
            if (index == 15 && GTT.m.ContainsKey(7404) && (JU.m[14].hasGTT(GTT.m[7404])))
                Console.Write("");
            //            Debug.Assert(sourcesComplete());
            /*            foreach (var gt in gts)
                            foreach (var pgt in gtSources(gt))
                                Debug.Assert(predecessor.upToDate(pgt) || predecessorRevision.gts.Values.Any(mgts => mgts.Contains(pgt)));
                        foreach (var gtt in gtts)
                            foreach (var pgtt in gttSources(gtt))
                                Debug.Assert(predecessor.upToDate(pgtt) || predecessorRevision.gtts.Values.Any(mgtts=>mgtts.Contains(pgtt)));
                        if (index == 152 && GT.m.ContainsKey(7994) && Universe.m[151].gtData.ContainsKey(GT.m[7994]))
                            Debugger.Break();*/
#endif
            #endregion preconditions

            addRevision();

            var et = SSyncTemplateMaker.make(this, predecessorRevision, satEqs);
            et.getGTs();
            embedTermStructure(et);

            fixPredecessorGoalGroundAtoms(predecessorRevision);
            enqueuePredecessorDisequalities(et,predecessorRevision);
            enqueuePredecessorGroundAtoms(predecessorRevision);
            #region consistency
#if DEBUG
            //            Debug.Assert(sourcesComplete());
            Debug.Assert(instantiationCachesComplete());
#if INVARIANTS
            Debug.Assert(invariant());
#endif
#endif
            #endregion
        }
        /*
        private void fixCaches(Revision predecessorRevision)
        {
            if (gtImportGCEqualityKnob || gtImportGCAllKnob)
            {
                var igts = interestingGTs;
                var pgts = new HashSet<GT>(from gt in igts from pgt in gtSources(gt) select pgt);
                if (pgts.Count > 0)
                {
                    var pgcs = gtImportGCAllKnob ?
                                predecessor.getGTsGCs(pgts) :
                                predecessor.getGTsEqGCs(pgts);
                    importAndAssumeGCs(pgcs,false);
                    if (isRefuted)
                        return;
                }
            }

            if (glImportGCKnob || glImportFCKnob)
            {
                foreach (var gt in gts)
                    foreach (var gt2 in gtData[gt].disequalities)
                    {
                        if (gtImportGCInequalitiesGLResolutionKnob)
                            queues.enqueueInequality(gt, gt2);
                    }
                redoGLRTCache();
            }
        }
        */
        private void fixPredecessorGoalGroundAtoms(Revision predecessorRevision)
        {
            var pgasToAdd = new HashSet<GL>();
            foreach (var pgafKV in predecessorRevision.gafByGTT)
            {
                var pgtt = pgafKV.Key;
                if (hasGTTMM(pgtt))
                {
                    var gtt = transitiveMerge(pgtt);
                    foreach (var gaf in gttData[gtt].sgafs.Values)
                    {
                        GAF pgaf;
                        if (predecessor.gttData[pgtt].sgafs.TryGetValue(gaf.predicate, out pgaf))
                            foreach (var b in trueFalse)
                                if (isGoal(gaf.gLiteral(b)))
                                    if (!predecessor.isGoal(pgaf.gLiteral(b)))
                                        pgasToAdd.Add(pgaf.gLiteral(b));
                    }

                }
            }
            predecessor.addGoalRecursive(pgasToAdd);
#if DEBUG
            Debug.Assert(goalsComplete());
#endif
        }
        //////////////////////////////////////////////////////////////////////////////////////

        public ISet<GT> gtSources(GT gt) { return sources.gts.getLTTD(gt).pgts; }
        private void removePGT(GT pgt) { sources.gts.removePT(pgt); }
        public ISet<GTT> gttSources(GTT gtt) { return sources.gtts.getLTTD(gtt).pgtts; }
        private void removePGTT(GTT pgtt) { sources.gtts.removePT(pgtt); }
        #endregion predecessor update

        #region merge

        protected override IEmbedTemplate makeMergeTemplate(IEnumerable<ISet<GT>> canonicalSets)
        {
            var eTemplate = SMergeTemplateMaker.make(this, canonicalSets);
            return eTemplate;
        }
        internal IEnumerable<GTT> makePGTTs(ISet<GT>[] pgtSetTuple)
        {
            var pgtts = new HashSet<GTT>(
                from ppgtt in getPPGTTs(pgtSetTuple)
                select ppgtt
            );
            return makePGTTs(pgtts);
        }
        internal ISet<GTT> makePGTTs(IEnumerable<GTT> pgtts)
        {
            #region precondition
#if DEBUG
            foreach (var pgtt in pgtts)
            {
                foreach (var pgt in pgtt.gtT)
                {
                    Debug.Assert(predecessor.upToDateGTMM(pgt));
                    Debug.Assert(predecessor.inDepthBoundStrict(pgt));
                }
            }
#endif
            #endregion precondition
            if (pgtts.Count() == 0)
                return new HashSet<GTT>();

            var rt = new MSGTTRT(pgtts);
            predecessor.makeSuccessorGTTs(rt);
            return rt.gtts;
        }
        #endregion merge

        #region map reads
        protected override IDictionary<Universe, MapsRT> getMapReadNRTs(GFAMap gfaMap)
        {
            var r = new Dictionary<Universe, MapsRT>();
            var rt = new MapsRT();

            getMapReadNRTs(gfaMap, rt, gt => predecessor.depthFilterStrict(sm(predecessor, gt2 => gtSources(gt2) , gt)) );
            if (rt.any)
                r[predecessor] = rt;
            return r;
        }
        protected override void importMRGTEqGCs(IEnumerable<GT> gts)
        {
            importAndAssume(new GCsAndFCsAndGTs(predecessor.getGTsOOEqGCs(from gt in gts from pgt in getGTPGTs(0,gt) select pgt), new FC[0], new GT[0]));
        }

        #endregion map reads

        #region superposition
        public override IList<SPDAGImportRequest> spImportDown(SPDAGImportRequest spr)
        {
            var r = base.spImportDown(spr);
            var pr = spMakePredecessorRequest(0,spr);
            if (pr != null)
                r.Add(pr);
            return r;
        }

        public override void spImportUp(SPDAGImportRequest spr)
        {
            var pGCsFCs = predecessor.spFindMatches(spMakePredecessorRequest(0,spr));
            importAndAssume(pGCsFCs);
        }

        private void importAndAssume(GCsAndFCsAndGTs pGCsFCs)
        {
            foreach (var gc in pGCsFCs.gcs)
                importAndAssumeGC(gc, false);
            foreach (var fc in pGCsFCs.fcs)
                importAndAssumeFC(fc, false);
        }
        #endregion superposition

        #region invariant
        internal override bool invariant()
        {
#if DEBUG
            if (isRefuted)
                return true;

            base.invariant();

#if INVARIANTS
            #region constant scope
            Debug.Assert(constantScope.IsSupersetOf(predecessor.constantScope));
            #endregion constant scope

            #region ground terms
            foreach (var kv in groundTermInverseMergeMap)
            {
                var gt = kv.Key;
                var pgts = kv.Value;
                Debug.Assert(groundTermMergeMap[gt] == gt);
                foreach (var pgt in pgts)
                {
                    Debug.Assert(transitiveMerge(pgt) == gt);
                    Debug.Assert(!predecessor.inScope(pgt) || !predecessor.groundTermMergeMap.ContainsKey(pgt) || predecessor.groundTermMergeMap[pgt] == pgt || (predecessor.groundTermRevisionMap[pgt] < predecessor.currentRevision && predecessor.groundTermRevisionMap[predecessor.groundTermMergeMap[pgt]] > predecessorLastRevision));
                }
            }
            #endregion ground terms

            #region ground tuples
            foreach (var gttKV in groundTupleMergeMap)
            {
                var mgtt = gttKV.Key;
                var gtt = gttKV.Value;
                if (mgtt == gtt)
                {
                    Debug.Assert(groundTupleInverseMergeMap.ContainsKey(gtt));

                    var pgtts = groundTupleInverseMergeMap[gtt];
                    foreach (var pgtt in pgtts)
                    {
                        Debug.Assert(transitiveMerge(pgtt) == gtt);
                        var pgttm = predecessor.groundTupleMergeMap[pgtt];
                        Debug.Assert(pgttm==pgtt || predecessor.groundTupleRevisionMap[pgttm]>=predecessorLastRevision);
                    }
                }
            }
            #endregion ground tuples

            #region ground atoms
            Debug.Assert(groundAtomsComplete());
            #endregion ground atoms

            #region predecessor sync
            if (predecessorLastRevision == predecessor.currentRevision)
            {
                foreach (var gt in gts)
                    foreach (var sgt in groundTermInverseMergeMap[gt])
                        Debug.Assert(predecessor.upToDate(sgt));
                foreach (var gtt in gtts)
                    foreach (var sgtt in groundTupleInverseMergeMap[gtt])
                        Debug.Assert(predecessor.upToDate(sgtt));
                foreach (var gt in gts)
                    foreach (var fas in gt.gfasByFunction.Values)
                        foreach (var fa in fas.Values)
                            Debug.Assert(upToDate(fa.arguments));
            }
            #endregion predecessor sync
#endif
#endif
            return true;
        }

        public class GroundAtomInverseMergeMap
        {
            public GroundAtomInverseMergeMap(SU universe)
            {
                this.universe = universe;
            }
            private readonly SU universe;

            public ISet<GL> this[GL ga]
            {
                get
                {
                    return universe.groundAtomInverseMergeMapI(ga);
                }
            }
        }
        public readonly GroundAtomInverseMergeMap groundAtomInverseMergeMap;
        internal ISet<GL> groundAtomInverseMergeMapI(GL ga)
        {
            var result = new HashSet<GL>();
            foreach (var pgtt in gttSources(ga.gaf.gtt))
            {
                GAF pgaf;
                if (predecessor.gttData.ContainsKey(pgtt) && predecessor.gttData[pgtt].sgafs.TryGetValue(ga.gaf.predicate, out pgaf))
                    result.Add(pgaf.gLiteral(ga.polarity));
            }
            return result;
        }

        protected override void setGoalsPredecessorRecursive(IEnumerable<GC> gcs, IEnumerable<GL> gas, IEnumerable<GT> gts)
        {
            var pgcs = new HashSet<GC>(); //from gc in gcs select groundCluaseInverseMergeMap[gc]
            var pgas = new HashSet<GL>(from ga in gas from pga in groundAtomInverseMergeMap[ga] where !predecessor.isGoal(pga) select pga);
            var pgts = new HashSet<GT>(from gt in gts from pgt in gtSources(gt) where !predecessor.isGoal(pgt) select pgt);
            if (pgcs.Any() || pgas.Any() || pgts.Any())
                predecessor.addGoalsRecursive(pgcs, pgas, pgts);
        }
#if DEBUG
        protected override bool goalsComplete()
        {
#if DEBUG
            if (isRefuted)
                return true;
            base.goalsComplete();
            foreach (var gt in goalGTs)
                foreach (var pgt in gtSources(gt))
                    Debug.Assert(predecessor.isGoal(pgt) || predecessor.gtRevision(pgt) >= predecessorLastRevision);
            foreach (var ga in goalGLs)
                foreach (var pga in gaSourceMap(ga))
                    Debug.Assert(predecessor.isGoal(pga) || predecessor.gafRevisionMap[pga.gaf] >= predecessorLastRevision);
#endif
            return true;
        }

        private ISet<GL> gaSourceMap(GL ga)
        {
            Debug.Assert(upToDate(ga));
            var result = new HashSet<GL>(from pgtt in gttSources(ga.gaf.gtt) where predecessor.gttData[pgtt].sgafs.ContainsKey(ga.predicate) select predecessor.gttData[pgtt].sgafs[ga.predicate].gLiteral(ga.polarity));
            return result;
        }

        protected override bool disEqualitiesComplete()
        {
#if DEBUG
            if (isRefuted)
                return true;
            foreach (var gt in allGTs)
                foreach (var pgt in gtSources(gt))
                    foreach (var pie in predecessor.gtData[pgt].disequalities)
                        if (hasGTMM(pie))
                            if (predecessor.gieRevisionMap[makeInequalityString(pgt, pie)] < predecessorLastRevision)
                                Debug.Assert(gtData[gt].disequalities.Contains(transitiveMerge(pie)));

#endif
            return true;
        }

        private void rgttsComplete()
        {
            foreach (var rgtt in allRGTTs)
            {
                foreach (var rgt in rgtt.gtT)
                    Debug.Assert(getGTRGTTs(rgt).Contains(rgtt));

                Debug.Assert(rgtt.gtT.All(gt => upToDateGTMM(gt)));
                Debug.Assert(!hasGTTMM(rgtt));
                var ppgtts = makeSourcesDebug(rgtt);
                foreach (var ppgtt in ppgtts)
                    Debug.Assert(
                        (!predecessor.hasGTTMM(ppgtt) && predecessor.hasRGTT(ppgtt)) ||
                        predecessor.gttRevision(ppgtt) >= predecessorLastRevision
                    );
            }

        }
        /*protected override bool glrtCacheComplete(PP pp, ISet<GTT> gtts)
        {
            if (predecessor.inScope(pp.predicate))
            {
                var pgtts = new HashSet<GTT>(from gtt in gtts from pgtt in gttSources(gtt) where predecessor.gttRevision(pgtt)<predecessorLastRevision select pgtt);
                if (pgtts.Count > 0)
                {
                    if (!predecessor.hasInGLRTCache(pp, pgtts))
                    {
                        Debug.Assert(false);
                        return false;
                    }
                }
            }
            return true;
        }*/

#endif
        #endregion invariant

        #region members
        internal readonly Universe predecessor;
        internal int predecessorLastRevision;
        private int predecessorNextRevision = -1;
        public int predecessorSuccessorIndex;
        private readonly Universe[] pPredecessors;
        private readonly int[] pPIS;
        public override int[] pis { get { return pPIS; } }
        public override Universe[] pus { get { return pPredecessors; } }

        #endregion members

        #region diff
#if DEBUG
        public override bool isBaseless(GT gt) { return !gtSources(gt).Any(); }
        public override bool isBaseless(GTT gtt) { return !gttSources(gtt).Any(); }
#endif
        public override bool isGFANewDirect(GFA gfa)
        {
            var gtt = gfa.gtt;
            var pgtts = gttSources(gtt);
            if (!predecessor.inScope(gfa.function) || pgtts.Count == 0)
                return true;
            if (pgtts.Any(pgtt => !predecessor.gttData[pgtt].sgfas.ContainsKey(gfa.function)))
                return true;
            #region consistency
#if DEBUG
            foreach (var pgtt in gttSources(gfa.gtt))
            {
                var pgt = predecessor.gttData[pgtt].sgfas[gfa.function].gt;
                if (predecessorLastRevision > predecessor.gttRevision(pgtt) && predecessorLastRevision > predecessor.gtRevision(pgt))
                    Debug.Assert(gtSources(gfa.gt).Contains(pgt));
            }
#endif
            #endregion consistency
            return false;
        }
        public override bool isGTMergedDirect(GT gt)
        {
            return gtSources(gt).Count > 1;
        }
        public override bool allPGTsSat(GT gt)
        {
            var pu = predecessor;
            foreach (var mpgt in gtSources(gt))
            {
                var pgt = pu.transitiveMerge(mpgt);
                if (!pu.isSaturated(pgt))
                    return false;
            }
            return true;
        }

        public override bool allPGLsSat(GL gl)
        {
            var pgls = getPGLs(gl);
            return pgls.All(predecessor.isSaturated);
        }

        protected override bool predecessorsHaveDisequality(GT gt0, GT gt1)
        {
            if (isNew(gt0) || isNew(gt1))
                return false;
            foreach (var pgt0 in gtSources(gt0))
                foreach (var pgt1 in gtSources(gt1))
                    if (!predecessor.gtData[pgt0].disequalities.Contains(gt1))
                        return false;
            return true;
        }
        public override bool hasAllPreds(GTT gtt)
        {
            var pgtts = gttSources(gtt);
            var p = 1;
            foreach (var gt in gtt.gtT)
            {
                var gtsc = gtSources(gt).Count;
                if (gtsc == 0)
                {
                    Debug.Assert(pgtts.Count == 0);
                    return true;
                }
                p *= gtsc;
            }
            Debug.Assert(p > 0);
            return (pgtts.Count == p);
        }
        public override bool hasFullPGLs(GL gl)
        {
            var pu = predecessor;
            var pgls = getPGLs(gl);
            if (pgls.Count < gttSources(gl.gtt).Count)
                return false;
            if (glData[gl].isAssumed && !pgls.All(pgl => pu.isAssumed(pgl)))
                return false;
            return true;
        }
        private ISet<GL> getPGLs(GL gl)
        {
            return getPGLs(gl.pp, gl.gtt);
        }
        private ISet<GL> getPGLs(PP pp, GTT gtt)
        {
            var pu = predecessor;
            var mpgtts = gttSources(gtt);
            var r = new HashSet<GL>();
            GL pgl;
            foreach (var mpgtt in mpgtts)
                if (pu.tryGetGL(pp, mpgtt, out pgl))
                    r.Add(pgl);
            return r;
        }
#if DEBUG
        private ISet<GL> wasSatInpreds = new HashSet<GL>();
#endif
        public override bool isSatInPreds(GL gl)
        {
            if (isNew(gl.gtt))
                return false;
            var pgtts = gttSources(gl.gtt);
            foreach (var mpgtt in pgtts)
            {
                if (!hasPredecessorGL(predecessor, gl.pp, mpgtt))
                    return false;
            }
            return true;
        }
        public override bool isNew(GC gc)
        {
            return !predecessor.hasGC(gc) || !predecessor.isAssumed(gc); //TODO more accurate
        }

        protected override bool isExpanding(GT gt)
        {
            if (gtSources(gt).Count > 1)
                return true;
            foreach (var gfa in gt.gfas)
                if (gttSources(gfa.gtt).Count > 1 && predecessor.inScope(gfa.function))
                    return true;
            return false;
        }

        /*        protected override bool hasPredecessorRejected(GroundTermEC gt)
                {
                    if (gtInverseMergeMap[gt].Count > 1)
                        return true;
                    foreach (var gfa in gt.gfas)
                        if (gttInverseMergeMap[gfa.arguments].Count > 1 && predecessor.inScope(gfa.function))
                            return true;
                    return false;
                }
                */
        protected override bool isExpanding(GTT gtt)
        {
            if (gttSources(gtt).Count > 1)
                return true;
            foreach (var gt in gtt.gtT)
                if (gtSources(gt).Count > 1)
                    return true;
            return false;
        }
        protected override void cleanupPredecessors()
        {
            predecessor.cleanupInt();
        }

        protected override void removeSources(GTT gtt)
        {
            base.removeSources(gtt);
            return;
        }
        protected override void removeSources(GT gt)
        {
            base.removeSources(gt);
            return;
        }

#if DEBUG
        protected override bool IAmClean()
        {
            if (!base.IAmClean())
                return false;


            return true;

        }
#endif
        #endregion diff

        #region rts
        #region Instantiation recursive import

        protected override void instP2(InstRTC ar)
        {
            if (ar.outRTs!=null && ar.outRTs.Any())
            {
                var outRT = ar.outRTs[0];
                importAndAssume(new GCsAndFCsAndGTs(outRT.rgcs,outRT.rfcs,new GT[0]));
            }
            instP2A(ar);
            markAdded(false);
            addRevision();
        }
        #endregion Instantiation recursive import

        #endregion rts

        #region statistics
        protected override ISet<GT> sourceGTs { get { return new HashSet<GT>(from gt in allGTs from mgt in gtSources(gt) select mgt); } }
        protected override ISet<GTT> sourceGTTs { get { return new HashSet<GTT>(from gtt in allGTTs from mgtt in gttSources(gtt) select mgtt); } }
        public override ISet<GT> usedGTs { get { return new HashSet<GT>(base.usedGTs.Union(from gt in allGTs from pgt in gtSources(gt) select pgt)); } }
        public override ISet<GTT> usedGTTs { get { return new HashSet<GTT>(base.usedGTTs.Union(from gtt in allGTTs from pgtt in gttSources(gtt) select pgtt)); } }
        public int ppgttCount { get { return (from gtt in allGTTs select getPPGTTCount(gtt)).Sum(); } }
        public int pgttCount { get { return (from gtt in allGTTs select gttSources(gtt).Count).Sum(); } }

        private int getPPGTTCount(GTT gtt)
        {
            var i = 1;
            foreach (var gt in gtt.gtT)
                i *= gtSources(gt).Count;
            return i;
        }
#if DEBUG
#endif
        #endregion statistics

        protected override bool hasPredecessors(GTT gtt) { return gttSources(gtt).Count > 0; }
        protected override bool hasPredecessors(GT gt) { return gtSources(gt).Count > 0; }

        protected override bool isHistorySource(GTT mgtt, GTT gtt)
        {
            return gttSources(gtt).Contains(mgtt);
        }
        protected override bool isHistorySource(GT mgt, GT gt)
        {
            return gtSources(gt).Contains(mgt);
        }


        #region delta
        public override bool needEqSync
        {
            get
            {
                var p = predecessor;
                var lr = predecessorLastRevision;
                return predecessorNeedEqSync(p, lr);
            }
        }


        /*        public ISet<GroundTermEC> gtsWithNewEC
                {
                    get
                    {
                        var result = new HashSet<GroundTermEC>();
                        foreach (var gt in gts)
                            if (gtInverseMergeMap[gt].Count>0)
                        {
                            foreach (var gfa in gt.gfas)
                                if (predecessor.inScope(gfa.function))
                                {
                                    var found = false;
                                    foreach (var pgtt in gttInverseMergeMap[gfa.arguments])
                                    {
                                        GroundFunctionApplicationEC pgfa;
                                        if (predecessor.gttInfo[pgtt].incomingGFAs.TryGetValue(gfa.function,out pgfa))
                                        {
                                            found=true;
                                            Debug.Assert(transitiveMerge(pgfa.ec)==gt);
                                        }
                                    }
                                    if (!found)
                                        result.Add(gt);
                                }
                        }
                        return result;
                    }
                }*/

        public IDictionary<GT, ISet<GC>> gtsWithNewSuper
        {
            get
            {
                var result = new Dictionary<GT, ISet<GC>>();
                foreach (var gt in allGTs)
                    if (gtSources(gt).Count > 0)
                        foreach (var gtt in gtData[gt].sgtts)
                            foreach (var gaf in gttData[gtt].sgafs.Values)
                                foreach (var ga in from b in trueFalse select gaf.gLiteral(b))
                                {
                                    var pgas = new HashSet<GL>();
                                    foreach (var pgtt in gttSources(gtt))
                                    {
                                        GAF pgaf;
                                        if (predecessor.gttData[pgtt].sgafs.TryGetValue(gaf.predicate, out pgaf))
                                            pgas.Add(pgaf.gLiteral(ga.polarity));
                                    }

                                    if (isAssumed(ga))
                                        if (!pgas.Any(predecessor.assumedUGCs.Contains))
                                        {
                                            if (!result.ContainsKey(gt))
                                                result[gt] = new HashSet<GC>();
                                        }

                                    foreach (var gc in glData[ga].gcs)
                                    {
                                        Debug.Assert(isAssumed(gc));
                                        if (isNew2(gc))
                                            result.insert(gt, gc);
                                    }

                                }
                return result;
            }
        }

        public override ISet<GC> newGCs
        {
            get
            {
                return new HashSet<GC>(from gc in allGCs where isNew2(gc) select gc);
            }
        }

        public override ISet<GT> gtsWithNewECs
        {
            get
            {
                var result = new HashSet<GT>();
                foreach (var gt in allGTs)
                {
                    if (gtSources(gt).Count == 0)
                        result.Add(gt);
                    else if (gtSources(gt).First() != gt)
                        foreach (var gfa in gt.gfas)
                            if (predecessor.inScope(gfa.function))
                                if (!gttSources(gfa.gtt).Any(pgtt => predecessor.gttData[pgtt].sgfas.ContainsKey(gfa.function)))
                                {
                                    result.Add(gt);
                                    break;
                                }
                                else
                                {
                                    #region consistency
#if DEBUG
                                    foreach (var pgtt in gttSources(gfa.gtt))
                                    {
                                        GFA pgfa;
                                        if (predecessor.gttData[pgtt].sgfas.TryGetValue(gfa.function, out pgfa))
                                        {
                                            var pgt = pgfa.gt;
                                            Debug.Assert(
                                                predecessorLastRevision <= predecessor.gtRevision(pgt) ||
                                                gtSources(gt).Contains(pgt)
                                            );
                                        }
                                    }
#endif
                                    #endregion consistency
                                }
                }
                return result;
            }
        }
        public override ISet<GL> newGLs
        {
            get
            {
                return new HashSet<GL>(from ga in assumedUGCs where isNew2(ga) select ga);
            }
        }
        public override ISet<GT> gtsWithNewGNEs
        {
            get
            {
                var result = new HashSet<GT>();
                foreach (var gt in allGTs)
                    if (gtData[gt].disequalities.Count > 0)
                        if (gtSources(gt).Count == 0)
                            result.Add(gt);
                        else
                            foreach (var pgt1 in gtSources(gt))
                                foreach (var gt2 in gtData[gt].disequalities)
                                    if (gtSources(gt2).Count == 0)
                                        result.Add(gt);
                                    else
                                        foreach (var pgt2 in gtSources(gt2))
                                            if (!predecessor.gtData[predecessor.transitiveMerge(pgt1)].disequalities.Contains(predecessor.transitiveMerge(pgt2)))
                                                result.Add(gt);
                return result;
            }
        }
        /*        public override IDictionary<GroundTermEC, ISet<GroundTermEC>> newGNEs
                {
                    get
                    {
                        var result = new Dictionary<GroundTermEC, ISet<GroundTermEC>>();
                        foreach (var gt in gts)
                            if (gtData[gt].inequalities.Any())
                                if (!gtInverseMergeMap[gt].Any())
                                    result[gt] = new HashSet<GroundTermEC>(gtData[gt].inequalities);
                                else
                                    foreach (var pgt1 in gtInverseMergeMap[gt])
                                        foreach (var gt2 in gtData[gt].inequalities)
                                            if (!gtInverseMergeMap[gt2].Any())
                                                insert(result, gt, gt2);
                                            else
                                                foreach (var pgt2 in gtInverseMergeMap[gt2])
                                                    if (!predecessor.gtData[predecessor.transitiveMerge(pgt1)].inequalities.Contains(predecessor.transitiveMerge(pgt2)))
                                                        insert(result, gt, gt2);
                        return result;
                    }
                }
                */
        private bool isNew2(GL ga)
        {
            if (gttSources(ga.gtt).Count == 0)
                return true;
            GL pga;
            foreach (var pgtt in gttSources(ga.gtt))
                if (!predecessor.gttData[predecessor.transitiveMerge(pgtt)].assumedGLsByPredicate.TryGetValue(ga.gaf.predicate, out pga))
                    return true;
                else
                    Debug.Assert(pga.polarity == ga.polarity);
            return false;
        }

        private bool tryGetPGALGA(GL pga, out GL lga)
        {
            if (pga.isEQOrDE)
            {
                GT gt0;
                GT gt1;
                if (tryGetPGTLGT(pga.gtt.gtT[0], out gt0) && tryGetPGTLGT(pga.gtt.gtT[1], out gt1))
                {
                    if (tryGetGEQNEGA(gt0, gt1, pga.polarity, out lga))
                        return true;
                    if (
                        (pga.polarity && gt0 == gt1) ||
                        (!pga.polarity && gtData[gt0].disequalities.Contains(gt1)))
                    {
                        lga = trueGAF.gLiteral(true);
                        return true;
                    }
                    if (
                        (!pga.polarity && gt0 == gt1) ||
                        (pga.polarity && gtData[gt0].disequalities.Contains(gt1)))
                    {
                        lga = trueGAF.gLiteral(false);
                        return true;
                    }
                }
            }
            else
            {
                GAF gaf;
                GTT gtt;
                if ((tryGetLGTT(pga.gtt, out gtt) && gttData[gtt].sgafs.TryGetValue(pga.predicate, out gaf)))
                {
                    lga = gaf.gLiteral(pga.polarity);
                    return true;
                }
            }
            lga = null;
            return false;
        }

        private ISet<GL> getGAPGAs(GL gl)
        {
            var result = new HashSet<GL>();
            if (gl.isEQOrDE)
            {
                var pgts0 = gtSources(gl.gtt.gtT[0]);
                var pgts1 = gtSources(gl.gtt.gtT[1]);
                foreach (var pgt0 in pgts0)
                    foreach (var pgt1 in pgts1)
                        if (pgt0 == pgt1)
                            result.Add(predecessor.trueGAF.gLiteral(gl.polarity));
                        else if (predecessor.gtData[pgt0].disequalities.Contains(pgt1))
                            result.Add(predecessor.trueGAF.gLiteral(!gl.polarity));
                        else
                        {
                            GL pga;
                            if (predecessor.tryGetGEQNEGA(pgt0, pgt1, gl.polarity, out pga))
                                result.Add(pga);
                        }
            }
            else
            {
                foreach (var pgtt in gttSources(gl.gtt))
                {
                    GAF pgaf;
                    if (predecessor.gttData[pgtt].sgafs.TryGetValue(gl.predicate, out pgaf))
                        result.Add(pgaf.gLiteral(gl.polarity));
                }

            }
            return result;
        }
        private ISet<GC> getGCPGCs(GC gc)
        {
            var result = new HashSet<GC>();
            var potentialPGCs = new HashSet<GC>();
            var allPGAs = new HashSet<GL>();
            foreach (var ga in gc.gls)
            {
                var pgas = getGAPGAs(ga);
                Debug.Assert(!pgas.Any(predecessor.isTrue));
                Debug.Assert(!pgas.Any(predecessor.isFalse));
                if (pgas.Count == 0)
                    return result;
                allPGAs.UnionWith(pgas);
                potentialPGCs.UnionWith(from pga in pgas from pgc in predecessor.glData[pga].gcs select pgc);
            }
            foreach (var pgc in potentialPGCs)
            {
                var pgas = new HashSet<GL>(pgc.gls);
                pgas.ExceptWith(allPGAs);
                foreach (var pga in pgas)
                {
                    GL lga;
                    if (!tryGetPGALGA(pga, out lga) || !isFalse(lga))
                        goto skipPGC;
                }
                result.Add(pgc);
                skipPGC:;
            }
            return result;
        }
        private bool isNew2(GC gc)
        {
            var pgcs = getGCPGCs(gc);
            if (pgcs.Count > 0)
                return false;
            else
                return true;
        }

        public override void delta()
        {
            base.delta();
            var oldGEs = new HashSet<GL>(from gc in assumedGCs where !newGCs.Contains(gc) from ga in gc.gls where ga.isEQOrDE where ga.polarity select ga);
            var gesFromNewGCs = new HashSet<GL>(from gc in newGCs from ga in gc.gls where ga.isEQOrDE where ga.polarity select ga);
            var newGEs = gesFromNewGCs.Except(oldGEs);
            var oldGEsWithNewGC = gesFromNewGCs.Intersect(oldGEs);
            var gts1 = gtsWithNewECs;
            var gts2 = gtsWithNewSuper;
            var ngcs = newGCs;
            var ngcGTs = new HashSet<GT>(from ngc in ngcs from gt in ngc.allGTs select gt);
            var ngcGTGCs = new HashSet<GC>(from ngt in ngcGTs from gc in getGTEqGCs(ngt) select gc);
            var ngcgas = new HashSet<GL>(from ngc in ngcs from ga in ngc.gls select ga);
            var ngcGTGCGAs = new HashSet<GL>(from ngc in ngcGTGCs from ga in ngc.gls select ga);
            var gtc = gtContexts;
            var gcsWithMultipleEQs = new HashSet<GC>(from gc in allGCs where (from ga in gc.gls where ga.isEQOrDE where ga.polarity select ga).Count() > 1 select gc);
            var gcGEs = new HashSet<GL>(from gc in allGCs from ga in gc.gls where ga.isEQOrDE where ga.polarity select ga);
            var gtsWithOneGC = new HashSet<GT>(from gt in allGTs where gtc[gt].allGCs.Count + gtc[gt].allGPAs.Count <= 1 where gtData[gt].disequalities.Count == 0 select gt);
            var newGCEQGAs = new HashSet<GL>(from gc in newGCs from ga in gc.gls where ga.isEQOrDE where ga.polarity select ga);
            var lnewGCs = this.newGCs;
            var lnewGAs = this.newGLs;
            var lgtsWithNewGNEs = this.gtsWithNewGNEs;
            var potentialGAGTs = new HashSet<GT>(from ga in gcGEs from gt in ga.gtt.gtT select gt);
            var gtsWithNewInfo = new HashSet<GT>(
                (from gc in lnewGCs from gt in gc.allGTs select gt).Union(
                from ga in lnewGAs from gt in ga.allGTs select gt).Union(
                lgtsWithNewGNEs)
                );
            Debug.Assert(gtsWithNewInfo.IsSupersetOf(lgtsWithNewGNEs));
            var gtsWithNewEquality = new HashSet<GT>(from gc in newGCs from ga in gc.gls where ga.isEQOrDE where ga.polarity from gt in ga.gtt.gtT select gt);
            var gtPotentialEquality = new Dictionary<GT, ISet<GT>>();
            foreach (var ga in gcGEs)
            {
                var pogts = ga.gaf.gtt.gtT;
                gtPotentialEquality.insert(pogts[0], pogts[1]);
                gtPotentialEquality.insert(pogts[1], pogts[0]);
            }
            var gtPotentialEquality2 = new Dictionary<GT, ISet<GT>>();
            var gaPotentialGC2 = new Dictionary<GL, ISet<GC>>();
            foreach (var ga in gcGEs)
            {
                var pogts = ga.gaf.gtt.gtT;
                if (!gtsWithOneGC.Contains(pogts[0]) && !gtsWithOneGC.Contains(pogts[1]))
                {
                    gtPotentialEquality2.insert(pogts[0], pogts[1]);
                    gtPotentialEquality2.insert(pogts[1], pogts[0]);
                    gaPotentialGC2[ga] = new HashSet<GC>(glData[ga].gcs);
                }
            }
        }

        public override bool needSync
        {
            get
            {
                for (var i = predecessorLastRevision; i < predecessor.currentRevision; i++)
                    if (predecessor.revisionList[i].any)
                        return true;
                //                    if (predecessorLastRevision < predecessor.currentRevision - 1 || predecessor.revisionList[currentRevision].any)
                //                        return true;
                return false;
            }
        }

        private bool noCommonContexts(GT gt1, GT gt2)
        {
            return true;//gtData[gt1].
        }
        #endregion delta

        #region debug
#if DEBUG
        private IEnumerable<GTT> makeSourcesDebug(GTT gtt) //debug only
        {
            var pu = predecessor;
            var pgtSetTuple = (from gt in gtt.gtT
                               select new HashSet<GT>(
                                   from mpgt in gtSources(gt)
                                   let pgt = predecessor.transitiveMerge(mpgt)
                                   where pu.inDepthBoundStrict(pgt)
                                   select pgt
                                )).ToArray();
            var pgtAs = FU.makeOptions(pgtSetTuple); //debug only
            return (from pgtA in pgtAs select predecessor.getGTT(pgtA));
        }
        protected override IDictionary<int, GTDeadEndsRT> getLocalGTDeadEnds(GTDeadEnds result, GTDeadEndsRT rt)
        {
            var rv = new Dictionary<int, GTDeadEndsRT>();
            var prt = new GTDeadEndsRT();

            foreach (var gt in rt.gts)
            {
                var pgts = gtSources(gt);
                prt.gts.UnionWith(pgts);
                if (pgts.Count == 0)
                    result.gtDeadEnds.insert(index, gt);
                else
                    prt.gts.UnionWith(pgts);
                foreach (var gfa in gt.gfas)
                    checkGFADeadEnds(result, prt, gfa.function, gfa.gtt);
            }

            foreach (var gfaKV in rt.gfaMap)
                foreach (var gtt in gfaKV.Value)
                    checkGFADeadEnds(result, prt, gfaKV.Key, gtt);

            if (prt.gts.Count >= 0 || prt.gfaMap.Count > 0)
                rv[predecessor.index] = prt;
            return rv;
        }

        private void checkGFADeadEnds(GTDeadEnds result, GTDeadEndsRT prt, Function f, GTT gtt)
        {
            checkGFADeadEnds(predecessor, gttSources(gtt), result, prt, f, gtt);
        }
#endif

        public override ISet<GFA> getGTLostGFAs(GT gt)
        {
            var result = new HashSet<GFA>();
            var pgts = gtSources(gt);
            foreach (var pgt in pgts)
                foreach (var pgfa in pgt.gfas)
                {
                    GFA gfa = null;
                    var pgtt = pgfa.gtt;
                    GTT gtt;
                    if (tryGetLGTT(pgtt, out gtt))
                    {
                        var f = pgfa.function;
                        if (gttData[gtt].sgfas.TryGetValue(f, out gfa))
                            Debug.Assert(gfa.gt == gt);
                        else
                            Debug.Assert(gfa == null);
                    }

                    if (gfa == null)
                        result.Add(pgfa);
                }
            return result;
        }

        public bool hasPGTLostGFAs(GT pgt)
        {
            var lgt = transitiveMerge(pgt);

            foreach (var gfa in pgt.gfas)
            {
                GTT lgtt;
                GFA lgfa;
                var f = gfa.function;
                if (!tryGetLGTT(gfa.gtt, out lgtt) || !gttData[lgtt].sgfas.TryGetValue(f, out lgfa))
                    return true;
                Debug.Assert(lgfa.gt == lgt);
            }
            return false;
        }
        public ISet<GTT> pgttsWithLostGFAs(IEnumerable<GTT> pgtts, ISet<GT> pgtsWithLostGFAs)
        {
            var result = new HashSet<GTT>(from pgtt in pgtts where pgtt.gtT.Intersect(pgtsWithLostGFAs).Any() select pgtt);
            return result;
        }

        #endregion debug
    }//class SU

}
