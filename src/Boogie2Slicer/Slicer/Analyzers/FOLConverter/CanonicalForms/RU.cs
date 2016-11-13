#region

using System.Linq;
using System.Diagnostics;
using Slicer.Analyzers.FOLConverter.Formulae;
using System.Collections.Generic;
using Slicer.Analyzers.FOLConverter.CanonicalForms.TermRepositoryNS;
using GTI = System.Int32;
using GTTI = System.Int32;
using System;

#endregion

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    class RU : IU<RGTSD,RGTTSD,RSourceStructure, RTSourceStructure<GT, RGTSD>, RTSourceStructure<GTT, RGTTSD>>
    {
        #region instance creation
        public RU(ISRS srs, TermRepository rep)
            : base(srs,rep)
        {
            rSources = new RSourceStructure(this);
            emptyGTT = makeGTT(termRepository.emptyGTT);
            addToScope(termRepository.truePredicate);
            addToScope(termRepository.falsePredicate);
            trueGAF = makeGAF(termRepository.truePredicate, emptyGTT);
            falseGAF = makeGAF(termRepository.falsePredicate, emptyGTT);
            Debug.Assert(trueGAF.isTrue);
            glData[trueGAF.gLiteral(true)].setInstSat(true);
            glData[trueGAF.gLiteral(false)].setInstSat(true);
            queues.remove(trueGAF.gLiteral(false));
            queues.remove(trueGAF.gLiteral(true));
        }
        public override Universe initialUniverse
        {
            get
            {
                return this;
            }
        }
        private readonly RSourceStructure rSources;
        public override RSourceStructure sources { get { return rSources; } }
        private static readonly int[] pPIs = new int[0];
        public override int[] pis {get {return pPIs; } }
        #endregion instance creation

        #region member creation
        protected override sealed void makeNewGTT(GTT gtt)
        {
            var et = RMergeTemplateMaker.makeGTT(this, gtt.gtT);
            et.getGTs();
            embedTermStructure(et);
            Debug.Assert(sources.gtts.hasLT(gtt));
        }
        public override void makeOriginalGTs(IEnumerable<FunctionApplicationFormula> ts, bool isGoal)
        {
            var et = RMergeTemplateMaker.makeOriginals(this, ts);
            et.getGTs();
            embedTermStructure(et);
            foreach (var t in ts)
            {
                var gt = makeIT(t, isGoal) as GT;
                Debug.Assert(gtDepth(gt) == 0);
                addOriginal(gt);
            }
            #region consistency
#if DEBUG
//            Debug.Assert(sourcesComplete());
            Debug.Assert(depthInvariant());
#endif
            #endregion consistency
        }
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
            var et = RMergeTemplateMaker.make(this, f, gtt);
            var gti = sources.gtts.getLTTD(gtt).getSGFA(f);
            #region consistency
//            Debug.Assert(et.checkSourcesBefore());
            #endregion consistency
            et.getGTs();
            embedTermStructure(et);
            #region consistency
            Debug.Assert(!isRefuted);
            #endregion consistency
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

        #region MSGTTRT
        internal class RMSGTTRTC : MSGTTRTC
        {
            public RMSGTTRTC(RU universe, MSGTTRT rt)
                : base(universe, rt)
            {
                this.universe = universe;
            }

            public readonly RU universe;
            protected override void p1I()
            {
                universe.makeSuccessorGTTsP1(this);
            }
            protected override void p2I()
            {
                universe.makeSuccessorGTTsP2(this);
            }
        }
        internal void makeSuccessorGTTsP1(RMSGTTRTC ar)
        {
            makeSuccessorGTTsP1A(ar);
            ar.outRTs = new MSGTTRT[0];
        }
        internal void makeSuccessorGTTsP2(RMSGTTRTC ar)
        {
            #region add rejected tuples
            foreach (var ngtt in ar.ngtts)
                makeSuccessorGTTsP2NGTTS(ar, ngtt);
            #endregion add rejected tuples
            markAdded(false);
        }
        internal override MSGTTRTC makeMSGTTRTC(MSGTTRT rt)
        {
            return new RMSGTTRTC(this,rt);
        }
        #endregion MSGTTRT

        #region MSGTRT
        internal override MSGTRTC makeMSGTRTC(MSGTRT rt)
        {
            Debug.Assert(inScope(rt.function));
            return new RMSGTRTC(this,rt);
        }
        internal sealed class RMSGTRTC : MSGTRTC
        {
            public RMSGTRTC(RU universe, MSGTRT rt)
                : base(universe,rt)
            {
                this.universe = universe;
            }

            public readonly RU universe;
            protected override void p1I()
            {
                universe.makeSuccessorGTsP1(this);
            }
            protected override void p2I()
            {
            }
        }
        protected override bool predecessorRelevant(Function f, GTT gtt)
        {
            return false;
        }
        internal void makeSuccessorGTsP1(RMSGTRTC ar)
        {
            makeSuccessorGTsP1A(ar);
            Debug.Assert(!ar.ngtts.Any());
            ar.outRTs = new MSGTRT[0];

            markAdded(false);
        }
        #endregion MSGTRT


        /////////////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////////////
        //Assumes ground atoms 
        internal class IAGAPGTTRTC : AGAPGTTRTC 
        {
            public IAGAPGTTRTC(RU universe, AGAPGTTRT rt)
                : base(universe,rt)
            {
                this.universe = universe;
            }
            public readonly RU universe;

            protected override void p1I()
            {
                universe.getAssumedGAByPAndGTTP1(this);
            }
            protected override void p2I()
            {
                universe.getAssumedGAByPAndGTTP2(this);
            }
        }

        internal void getAssumedGAByPAndGTTP1(IAGAPGTTRTC ar)
        {
            getAssumedGLByPAndGTTP1A(ar);
            ar.outRTs = new AGAPGTTRT[0];
        }
        internal void getAssumedGAByPAndGTTP2(IAGAPGTTRTC ar)
        {
        }
        internal override AGAPGTTRTC makeAGAPGTTRTC(AGAPGTTRT rt)
        {
            return new IAGAPGTTRTC(this, rt);
        }

        /*
        /////////////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////////////
        //Assumes ground atoms 
        internal class IANGAPPLFSTTAR : ANGAPPLFSTTAR 
        {
            public IANGAPPLFSTTAR(InitialUniverse universe, IPredicate predicate, bool polarity, ISet<LFSTT> lfstts)
                : base(predicate,polarity,lfstts)
            {
                this.universe = universe;
            }
            public readonly InitialUniverse universe;
            public override void p1()
            {
                universe.getAssumedNGAByPOLFSTTSP1(this);
            }
            public override void p2()
            {
//                universe.getAssumedNGAByPOLFSTTSP2(this);
            }
        }

        internal void getAssumedNGAByPOLFSTTSP1(IANGAPPLFSTTAR ar)
        {
            ticklePredicate(ar.predicate);
            var pngas = assumedNGAsByPredicateAndPolarity[ar.predicate][ar.polarity];
            foreach (var pnga in pngas)
                if (ar.lfstts.Any(lfstt=>matches(lfstt,pnga.formulaEC.argumentsEC)))
                    ar.rngas.Add(pnga);
            ar.todo = new ANGAPPLFSTTAR[0];
        }

        internal override ANGAPPLFSTTAR makeANGAPPLFSTTAR(IPredicate predicate, bool polarity, ISet<LFSTT> lfstts)
        {
            return new IANGAPPLFSTTAR(this, predicate, polarity, lfstts);
        }
        */
        /////////////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////////////
        #endregion member creation

        #region triggers

        protected override bool isExpanding(GT gt) { return false;  }
        protected override bool isExpanding(GTT gtt) { return false; }
        #endregion triggers

        #region invariant
#if DEBUG
        protected override bool disEqualitiesComplete()
        {
            return true;
        }
        protected override bool goalsComplete()
        {
            return true;
        }

#endif
        #endregion invariant

        #region goals
        protected override void setGoalsPredecessorRecursive(IEnumerable<GC> gcs, IEnumerable<GL> gas, IEnumerable<GT> gts)
        {
        }
        #endregion goals

        #region merge
        protected override IEmbedTemplate makeMergeTemplate(IEnumerable<ISet<GT>> canonicalSets)
        {
            var eTemplate = RMergeTemplateMaker.make(this, canonicalSets);
            return eTemplate;
        }

        /*private IEmbedTemplate makeMergeTemplateC(IEnumerable<ISet<GT>> canonicalSets)
        {
            ISet<GT> affectedTerms;
            ISet<GTT> affectedTuples;
            getAffectedTermsAndTuples(from cs in canonicalSets from gt in cs select gt, out affectedTerms, out affectedTuples);

            var newTermIndex = -1;
            var gtToIndexMap = new Dictionary<GT, int>();
            var indexToGTsMap = new Dictionary<int, ISet<GT>>();

            foreach (var cs in canonicalSets)
            {
                var gti = newTermIndex;
                newTermIndex--;
                indexToGTsMap[gti] = new HashSet<GT>(cs);
                foreach (var gt in cs)
                    gtToIndexMap[gt] = gti;
            }
            foreach (var gt in affectedTerms)
                if (!gtToIndexMap.ContainsKey(gt))
                {
                    var gti = newTermIndex;
                    newTermIndex--;
                    indexToGTsMap[gti] = new HashSet<GT> { gt };
                    gtToIndexMap[gt] = gti;
                }

            var existingTermIndex = 1;
            foreach (var gtt in affectedTuples)
                foreach (var gt in gtt.gts)
                    if (!gtToIndexMap.ContainsKey(gt))
                    {
                        var gti = existingTermIndex;
                        existingTermIndex++;
                        indexToGTsMap[gti] = new HashSet<GT> { gt };
                        gtToIndexMap[gt] = gti;
                    }

            var newTupleIndex = -1;
            var gttToIndexMap = new Dictionary<GTT, int>();
            var indexToGTTsMap = new Dictionary<int, ISet<GTT>>();

            var tupleMap = new Dictionary<string, int>();
            foreach (var gtt in affectedTuples)
            {
                var key = Operator.commaSeparatedList(from gt in gtt.gts select gtToIndexMap[gt].ToString());
                int gtti;
                if (!tupleMap.TryGetValue(key, out gtti))
                {
                    gtti = newTupleIndex;
                    newTupleIndex--;
                    indexToGTTsMap[gtti] = new HashSet<GTT>();
                    tupleMap[key] = gtti;
                }
                indexToGTTsMap[gtti].Add(gtt);
                gttToIndexMap[gtt] = gtti;
            }

            var existingTupleIndex = 1;
            foreach (var gt in affectedTerms)
                foreach (var gfa in gt.gfas)
                    if (!gttToIndexMap.ContainsKey(gfa.gtt))
                    {
                        var gtt = gfa.gtt;
                        var gtti = existingTupleIndex;
                        existingTupleIndex++;
                        indexToGTTsMap[gtti] = new HashSet<GTT> { gtt };
                        gttToIndexMap[gtt] = gtti;
                    }

            var result = new IEmbedTemplate(this);

            foreach (var gtiKV in indexToGTsMap)
                if (gtiKV.Key > 0)
                    result.template.addExistingGT(gtiKV.Key, gtiKV.Value.First());
                else
                {
                    result.template.addNewGT(gtiKV.Key, new Tuple<Function, int>[0]);
                    result.addGTI(gtiKV.Key);
                    result.addMGTs(gtiKV.Key, gtiKV.Value);
                }

            foreach (var gttiKV in indexToGTTsMap)
                if (gttiKV.Key > 0)
                    result.template.addExistingGTT(gttiKV.Key, gttiKV.Value.First());
                else
                {
                    result.template.addNewGTT(gttiKV.Key, (from gt in gttiKV.Value.First().gts select gtToIndexMap[gt]).ToArray());
                    result.addGTTI(gttiKV.Key);
                    result.addMGTTs(gttiKV.Key, gttiKV.Value);
                }

            foreach (var gtiKV in indexToGTsMap)
                if (gtiKV.Key < 0)
                {
                    var faMap = new Dictionary<Function, ISet<int>>();
                    foreach (var mgt in gtiKV.Value)
                        foreach (var gfa in mgt.gfas)
                        {
                            ISet<int> argss;
                            if (!faMap.TryGetValue(gfa.function, out argss))
                                faMap[gfa.function] = argss = new HashSet<int>();
                            argss.Add(gttToIndexMap[gfa.gtt]);
                        }
                    foreach (var ff in faMap)
                        foreach (var gtti in ff.Value)
                            result.template.addGFA(gtiKV.Key, ff.Key, gtti); //gfa.function, );
                    Debug.Assert(result.template.getGTITemplate(gtiKV.Key).Any());
                }

            return result;
        }*/

        /*protected override EmbedTemplate makeMergeTemplate(IEnumerable<ISet<GT>> canonicalSets)
        {
            var eTemplate = makeMergeTemplateC(canonicalSets);
            eTemplate.template.congruenceClosure();
            eTemplate.mergeeCongruenceClosure();
            foreach (var gti in eTemplate.updatedGTIs)
                eTemplate.setGTIDepth(gti,(from mgt in eTemplate.mgts(gti) select gtDepth(mgt)).Min());
            return eTemplate;
        }*/
        #endregion merge

        #region sync
        protected override void synchronizeWithPredecessors(bool satEqs)
        {
            if (satEqs)
                mergeOnce();
        }
        #endregion sync

        #region delta
        public override bool needEqSync { get { return false; } }
        public override bool needSync
        {
            get
            {
                return false;
            }
        }
        public override ISet<GC> newGCs
        {
            get
            {
                return new HashSet<GC>(allGCs);
            }
        }

        public override ISet<GL> newGLs
        {
            get
            {
                return new HashSet<GL>(assumedUGCs);
            }
        }
        public override ISet<GT> gtsWithNewECs
        {
            get
            {
                return new HashSet<GT>(allGTs);
            }
        }
        public override ISet<GT> gtsWithNewGNEs
        {
            get
            {
                return new HashSet<GT>(from gt in allGTs where gtData[gt].disequalities.Count>0 select gt);
            }
        }
#if DEBUG
        public override bool isBaseless(GT gt) { return true; }
        public override bool isBaseless(GTT gtt) { return true; }
#endif
        public override bool allPGTsSat(GT gt)
        {
            return true;
        }
        public override bool allPGLsSat(GL gl)
        {
            return true;
        }
        protected override bool predecessorsHaveDisequality(GT gt0, GT gt1)
        {
            return false;
        }
        public override bool isGFANewDirect(GFA gfa)
        {
            return true;
        }
        public override bool isGTMergedDirect(GT gt)
        {
            return false;
        }
        public override bool hasFullPGLs(GL gl)
        {
            return false;
        }
        public override bool hasAllPreds(GTT gtt)
        {
            return true;
        }
        public override bool isSatInPreds(GL ga)
        {
            return false;
        }
        public override bool isNew(GC gc)
        {
            return true;
        }
        #endregion delta

        #region gt garbage collection
        protected override void cutSourceCrap() { }
        protected override bool hasPredecessors(GTT gtt) { return false; }
        protected override bool hasPredecessors(GT gt) { return false; }
        protected override void cleanupPredecessors()
        {
        }
        protected override void removeSources(GTT gtt)
        {
            base.removeSources(gtt);
        }
        protected override void removeSources(GT gt)
        {
            base.removeSources(gt);
        }
        #endregion gt garbage collection

        #region members
        //        public override ISet<GroundTupleEC> usedRGTTs { get { return new HashSet<GroundTupleEC>(); } }
        private readonly Universe[] pPredecessors = new Universe[0];
        public override Universe[] pus { get { return pPredecessors; } }
        #endregion members

        #region rts
        #region Inst
        protected override void instP2(InstRTC ar)
        {
            instP2A(ar);
        }

        #endregion Inst

        #endregion rts

        #region map reads

        protected override IDictionary<Universe,MapsRT> getMapReadNRTs(GFAMap gfaMap)
        {
            return new Dictionary<Universe, MapsRT>();
        }

        #endregion map reads

        #region debug
#if DEBUG
        protected override IDictionary<int, GTDeadEndsRT> getLocalGTDeadEnds(GTDeadEnds result, GTDeadEndsRT rt)
        {
            foreach (var gt in rt.gts)
                result.gtDeadEnds.insert(index, gt);

            foreach (var gfaKV in rt.gfaMap)
                foreach (var gtt in gfaKV.Value)
                    result.lastGFAs.insert(index,gtt,gfaKV.Key);

            var rv = new Dictionary<int, GTDeadEndsRT>();
            return rv;
        }



#endif
        #endregion debug

        #region sweep
        protected override bool isHistorySource(GTT mgtt, GTT gtt){return false;}
        protected override bool isHistorySource(GT mgt, GT gt) { return false; }
        #endregion sweep
    }
}
