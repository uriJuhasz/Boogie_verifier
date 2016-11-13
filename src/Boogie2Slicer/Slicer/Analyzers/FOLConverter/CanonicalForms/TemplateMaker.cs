using Slicer.Analyzers.FOLConverter.CanonicalForms.TermRepositoryNS;
using Slicer.Analyzers.FOLConverter.Formulae;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using GTI = System.Int32;
using GTTI = System.Int32;
using GTTKey = System.String;
using Depth = System.Int32;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    public abstract class TemplateMakerNG
    {
#if DEBUG
        public static bool stopNow = false;
#endif
        private static int lastIndex = 0;
        protected readonly int index;
        protected TemplateMakerNG()
        {
            index = lastIndex;
            lastIndex++;
#if DEBUG
            if (index == 11550)
                stopNow = true;
#endif
        }
        public static List<FunctionApplicationFormula> sortFAs(IEnumerable<FunctionApplicationFormula> ts)
        {
            var tsByDepth = new Dictionary<int, ISet<FunctionApplicationFormula>>();
            foreach (var t in ts)
                tsByDepth.insert(t.height, t);
            Debug.Assert(!tsByDepth.ContainsKey(0));
            var i = 1;
            ISet<FunctionApplicationFormula> fas;
            var tList = new List<FunctionApplicationFormula>();
            while (tsByDepth.TryGetValue(i, out fas))
            {
                foreach (var t in fas)
                {
                    #region consistency
#if DEBUG
                    foreach (var st in t.args)
                        Debug.Assert(tList.Contains(st));
#endif
                    #endregion consistency
                    tList.Add(t);
                }
                i++;
            }
            return tList;
        }

        #region utilities
        public abstract IUNG guniverse { get; }
        public USourceStructureNG gsourceStructure { get { return guniverse.gSourceStructure; } }
        protected GTT emptyGTT { get { return guniverse.emptyGTT; } }
        protected TermRepository tr { get { return guniverse.termRepository; } }
        #endregion utilities
    }
    public abstract class TemplateMaker<U, USS, GTD, GTTD, GTSS, GTTSS> : TemplateMakerNG
        where U : IU<GTD, GTTD, USS, GTSS, GTTSS>
        where USS : USourceStructure<GTD, GTTD, GTSS, GTTSS>
        where GTD : AGTSD
        where GTTD : AGTTSD
        where GTSS : TSourceStructure<GT, GTD>
        where GTTSS : TSourceStructure<GTT, GTTD>
    {
        #region instance creation
        protected TemplateMaker(U universe)
            : base()
        {
            this.universe = universe;
#if DEBUG
            foreach (var gtd in gtSS.allTDs)
                Debug.Assert(!gtd.isAnyUpdated);
            foreach (var gttd in gttSS.allTDs)
                Debug.Assert(!gttd.isAnyUpdated);
#endif
        }
        public override string ToString()
        {
            return "TM[" + index.ToString() + "](" + universe.ToString() + ")";
        }
        #endregion instance creation

        #region accessors
        protected USS sources { get { return universe.sources; } }
        protected GTSS gtSS { get { return sources.gts; } }
        protected GTTSS gttSS { get { return sources.gtts; } }
        public GTD getGTD(GTI gti) { return gtSS.getTD(gti); }
        public GTI getLGTGTI(GT lgt) { return gtSS.getTI(lgt); }
        public ICollection<GTD> allGTDs { get { return gtSS.allTDs; } }
        public ICollection<GTI> allGTIs { get { return gtSS.allTIs; } }
        public ICollection<GTTD> allGTTDs { get { return gttSS.allTDs; } }
        public GTTD getGTTD(GTTI gtti) { return gttSS.getTD(gtti); }
        public GTTI getLGTTGTTI(GTT lgtt) { return gttSS.getTI(lgtt); }
        public void setOriginalGTI(GTI gti)
        {
            var gtd = getGTD(gti);
            if (gtd.isOriginal)
                return;
            gtSS.setOriginal(gti);
            setDepth(gtd, originalDepth);
            setGoalGTI(gti);
            enqueuePropagateGTI(gti);
        }
        public void setGoalGTI(GTI gti)
        {
            var gtd = getGTD(gti);
            if (gtd.isGoal || gtd.isActual)
                return;
            gtd.setGoal();
            goalGTIs.Add(gti);
            if (gtd.isAnyUpdated)
                enqueuePropagateGTI(gti);
        }
        public static string makeGTTKey(IEnumerable<int> gtis)
        {
            return USourceStructureNG.makeGTTKey(gtis);
        }
        #endregion accessors

        #region merge
        protected void makeInitialSets(IEnumerable<ISet<GT>> canonicalSets)
        {
            foreach (var lgts in canonicalSets)
            {
                Debug.Assert(lgts.Count > 1);
                var gti0 = getLGTGTI(universe.transitiveMerge( lgts.First()));
                foreach (var lgt in lgts.Skip(1))
                    enqueueMergeGTI(gti0, getLGTGTI(universe.transitiveMerge(lgt)));
            }
        }
        #endregion merge

        #region makeGTT
        protected Universe.IEmbedTemplate makeGTT(IEnumerable<GT> gtT)
        {
#if DEBUG
            mergeAllowed = false;
#endif
            var gtiT = (from gt in gtT select getLGTGTI(gt)).ToArray();
            var gttd = makeGTT(gtiT);
            setActual(gttd);
            return mainCommon();
        }
        #endregion makeGTT

        #region make gfa
        protected Universe.IEmbedTemplate make(Function f, GTT gtt)
        {
#if DEBUG
            mergeAllowed = false;
#endif
            #region setup
            Debug.Assert(universe.inScope(f));
            var gtti = gttSS.getTI(gtt);
            var gttd = getGTTD(gtti);
            Debug.Assert(gttd.depth < maxDepth);
            Debug.Assert(gttd.isActual);
            var gti = mapGFA(f, gttd).gti;
            setGoalGTI(gti);
            #endregion setup

            return mainCommon();
        }
        #endregion make gfa

        #region main make originals
        protected void setupOriginals(IEnumerable<FunctionApplicationFormula> fas)
        {
            #region setup
            var termMap = new Dictionary<FunctionApplicationFormula, int>();
            var tList = sortFAs(fas);
            foreach (var t in tList)
                makeOriginalTerm(t, termMap);
            #endregion setup
        }
        protected void makeOriginalTerm(FunctionApplicationFormula fa, IDictionary<FunctionApplicationFormula, GTI> termMap)
        {
            #region precondition
#if DEBUG
            Debug.Assert(universe.inScope(fa.function));
            foreach (var arg in fa.args)
            {
                var afa = arg.asFunctionApplication;
                Debug.Assert(termMap.ContainsKey(afa));
            }
#endif
            #endregion precondition

            var gttGTIs = (from tt in fa.args select termMap[tt.asFunctionApplication]).ToArray();
            var gttd = makeGTT(gttGTIs);
            var gtti = gttd.gtti;
            var f = fa.function;
            var gtd = mapGFA(f, gttd);
            var gti = gtd.gti;
            setGoalGTI(gtd.gti);
            setOriginalGTI(gti);
            termMap[fa] = gti;
            Debug.Assert(getGTD(gti).depth == originalDepth);
        }
        #endregion main make originals

        #region abstracts
        public override IUNG guniverse { get { return universe; } }
        private Universe.EmbedTemplate getEmbedTemplate()
        {
            return new Universe.EmbedTemplate(index, universe);
        }
        private readonly ISet<GTI> gtisToEmbed = new HashSet<GTI>();
        private readonly ISet<GTTI> gttisToEmbed = new HashSet<GTTI>();
        private readonly ISet<GTI> goalGTIs = new HashSet<GTI>();
        private readonly ISet<GTI> actualTDUpdatedGTIs = new HashSet<GTI>();

        protected virtual Universe.IEmbedTemplate encodeEmbedTemplate()
        {
            var et = getEmbedTemplate();

            #region debug
#if DEBUG
            et.tmIndex = index;
#endif
            #endregion debug

            #region consistency
#if DEBUG
            foreach (var gtd in gtSS.allTDs)
            {

            }
#endif

            #endregion consistency

            {//upward closure
                var todoUpGTIs = new HashSet<GTI>(gtisToEmbed);
                var todoUpGTTIs = new HashSet<GTTI>(gttisToEmbed);
                while (todoUpGTIs.Count + todoUpGTTIs.Count > 0)
                {
                    foreach (var gti in todoUpGTIs)
                        foreach (var sgtti in getGTD(gti).sgttis)
                            if (getGTTD(sgtti).isActual && gttisToEmbed.Add(sgtti))
                                todoUpGTTIs.Add(sgtti);
                    todoUpGTIs.Clear();
                    foreach (var gtti in todoUpGTTIs)
                        foreach (var sgti in from f in getGTTD(gtti).allSGFAs select getGTTD(gtti).getSGFA(f))
                            if (getGTD(sgti).isActual && gtisToEmbed.Add(sgti))
                                todoUpGTIs.Add(sgti);
                    todoUpGTTIs.Clear();
                }
            }
            {//downwardclosure
                var todoDownGTIs = new HashSet<GTI>(gtisToEmbed);
                while (todoDownGTIs.Count /*+ todoDownGTTIs.Count*/ > 0)
                {
                    foreach (var gti in todoDownGTIs)
                        foreach (var gtti in from gfa in getGTD(gti).gfas select gfa.Item2)
                            if (getGTTD(gtti).isActual && getGTTD(gtti).lgtts.Count != 1 && !gttisToEmbed.Contains(gtti))
                            {
                                Debug.Assert(getGTTD(gtti).lgtts.Count == 0);
                                gttisToEmbed.Add(gtti);
                            }
                    todoDownGTIs.Clear();
                }
            }
            foreach (var gti in gtisToEmbed)
            {
                var gtd = getGTD(gti);
                Debug.Assert(gtd.isActual);
                Debug.Assert(gtd.gfas.Any(gfa => getGTTD(gfa.Item2).isActual));
                et.addGTI(gti);
            }
            foreach (var gtti in gttisToEmbed)
            {
                var gttd = getGTTD(gtti);
                Debug.Assert(gttd.isActual);
                Debug.Assert(gttd.gtiT.All(gti => getGTD(gti).isActual));
                et.addGTTI(gtti);
            }
            foreach (var gti in goalGTIs)
                getGTD(gti).clearGoal();
            foreach (var gti in actualTDUpdatedGTIs)
                getGTD(gti).clearActualTDUpdated();
            /*            foreach (var gtd in allGTDs)
                        {
            //                if (gtd.isGoal)
            //                    gtd.clearGoal();
                            if (gtd.isActualTDUpdated)
                                gtd.clearActualTDUpdated();
                        }*/
            /*            foreach (var gttd in allGTTDs)
                        {
            //                if (gttd.isGoal)
            //                    gttd.clearGoal();
                            if (gttd.isActualTDUpdated)
                                gttd.clearActualTDUpdated();
                        }*/

            #region consistency
#if DEBUG
            foreach (var gtd in allGTDs)
                if (gtd.isActual)
                {
                    Debug.Assert((gtd.lgts.Count == 1) || et.modifiedGTIs.Contains(gtd.gti));
                    if (et.modifiedGTIs.Contains(gtd.gti))
                    {
                        foreach (var sgtti in gtd.sgttis)
                            if (getGTTD(sgtti).isActual)
                                Debug.Assert(et.modifiedGTTIs.Contains(sgtti));
                        foreach (var gtti in from gfa in gtd.gfas select gfa.Item2)
                            if (getGTTD(gtti).isActual)
                                Debug.Assert(getGTTD(gtti).lgtts.Count == 1 || et.modifiedGTTIs.Contains(gtti));
                    }
                }
            foreach (var gttd in allGTTDs)
                if (gttd.isActual)
                {
                    if (gttd.gtiT.Any(gti => et.modifiedGTIs.Contains(gti)))
                        Debug.Assert(et.modifiedGTTIs.Contains(gttd.gtti));
                    foreach (var gti in gttd.gtiT)
                        Debug.Assert(et.modifiedGTIs.Contains(gti) || getGTD(gti).lgts.Count == 1);
                    if (et.modifiedGTTIs.Contains(gttd.gtti))
                        foreach (var sgti in from f in gttd.allSGFAs select gttd.getSGFA(f))
                            if (getGTD(sgti).isActual)
                                Debug.Assert(et.modifiedGTIs.Contains(sgti));
                }
#endif
            #endregion consistency
            return et;
        }
        #endregion abstracts

        #region queues
        protected void enqueuePropagateGTI(GTI gti)
        {
            if (gti == currentPropagatingGTI)
                return;
            Debug.Assert(getGTD(gti).isAnyUpdated);
            if (!gtisToPropagate.Contains(gti) && !gtiMergeToMap.ContainsKey(gti))
                gtisToPropagate.Enqueue(gti);
        }
        protected void enqueuePropagateGTTI(GTTI gtti)
        {
            Debug.Assert(getGTTD(gtti).isAnyUpdated);
            if (!gttisToPropagate.Contains(gtti) && !gttiMergeToMap.ContainsKey(gtti) && currentlyPropagatingGTTI != gtti)
                gttisToPropagate.Add(gtti);
        }
        protected void enqueueMergeGTI(GTI gti1R, GTI gti2R)
        {
            #region consistency
            var gtd1R = getGTD(gti1R);
            var gtd2R = getGTD(gti2R);
            Debug.Assert(gtd1R.type == null || gtd2R.type == null || gtd1R.type.isEquivalent(gtd2R.type));
            #endregion consistency

            var gti1 = gti1R;
            while (gtiMergeToMap.ContainsKey(gti1))
                gti1 = gtiMergeToMap[gti1];
            var gti2 = gti2R;
            while (gtiMergeToMap.ContainsKey(gti2))
                gti2 = gtiMergeToMap[gti2];
            if (gti1 == gti2)
                return;
            if (gti1 > gti2)
                FU.swap(ref gti1, ref gti2);
            if (gti1 == currentlyMergingFromGTI)
                gti1 = currentlyMergingToGTI;
            if (gti2 == currentlyMergingFromGTI && gti1 == currentlyMergingToGTI)
                return;
            Debug.Assert(!gtiMergeMap.ContainsKey(gti1));
            Debug.Assert(!gtiMergeMap.ContainsKey(gti2));
            Debug.Assert(!gtiMergeToMap.ContainsKey(gti1));
            Debug.Assert(!gtiMergeToMap.ContainsKey(gti2));
#if DEBUG
//            if (getGTD(gti1).lgts.Any(isIt) || getGTD(gti2).lgts.Any(isIt))
//                Debugger.Break();
//            if (isItGTI(gti1) || isItGTI(gti2))
//                Debugger.Break();
#endif
            gtiMergeToMap[gti2] = gti1;
        }

        private bool isItGTI(int gti1)
        {
            return universe.index == 12 && (gti1 == 4 || gti1 == 20 || gti1 == 168);
        }

        public bool isIt(GT gt)
        {
            return universe.index==12 && (gt.index == 43 || gt.index == 37 || gt.index == 1891);
        }
        protected void enqueueMergeGTTI(GTTI gtti1R, GTTI gtti2R)
        {
            #region precondition
#if DEBUG
            {
                var gttd1 = getGTTD(gtti1R);
                var gttd2 = getGTTD(gtti2R);
                Debug.Assert(gttd1.gtiT.Length == gttd1.gtiT.Length);
//                for (var i = 0; i < gttd1.gtiT.Length; i++)
//                    Debug.Assert(tMergeToGTI(gttd1.gtiT[i]) == tMergeToGTI(gttd2.gtiT[i]));
            }
#endif
            #endregion precondition
            var gtti1 = gtti1R;
            while (gttiMergeToMap.ContainsKey(gtti1))
                gtti1 = tMergeGTTI(gttiMergeToMap[gtti1]);
            var gtti2 = gtti2R;
            while (gttiMergeToMap.ContainsKey(gtti2))
                gtti2 = tMergeGTTI(gttiMergeToMap[gtti2]);
            Debug.Assert(!gttiMergeMap.ContainsKey(gtti1));
            Debug.Assert(!gttiMergeMap.ContainsKey(gtti2));
            Debug.Assert(!gttiMergeToMap.ContainsKey(gtti1));
            Debug.Assert(!gttiMergeToMap.ContainsKey(gtti2));
            #region debug
#if DEBUG
//            if (universe.index==14 && /*index == 11550 &&*/ (gtti1 == 209 || gtti2 == 209 || gtti1 == 211 || gtti2 == 211))
//                Debugger.Break();
#endif
            #endregion
            if (gtti2 > gtti1)
                gttiMergeToMap[gtti2] = gtti1;
            else if (gtti1 > gtti2)
                gttiMergeToMap[gtti1] = gtti2;
        }
        #endregion queues

        #region main
#if DEBUG
        protected bool mergeAllowed = true;
#endif
        protected Universe.IEmbedTemplate mainCommon()
        {
            #region propagate
            propagate();
            Debug.Assert(!anythingToDo);
            #endregion propagate

            #region encode embed template
            var et = encodeEmbedTemplate();
            #endregion encode embed template

            #region consistency
#if DEBUG1
            Debug.Assert(sources.sourcesCompleteNoLGTs());
#if INVARIANTS
            checkSourcesNoLGTs();
            et.checkSourcesBefore();
#endif
            //            foreach (var gti in allOriginalGTIs)
            //                Debug.Assert(et.toUpdateGTIs.Contains(gti) || et.template.existingGTKeys.Contains(gti));
#endif
            #endregion consistency
            return et;
        }
        /*        protected virtual void checkSourcesNoLGTs()
                {
#if DEBUG
                    Debug.Assert(universe.sources.sourcesCompleteNoLGTs());
                    foreach (var gtd in allGTDs)
                    {
                        var gti = gtd.gti;
                        foreach (var gfa in gtd.gfas)
                        {
                            var f = gfa.Item1;
                            var gtti = gfa.Item2;
                            Debug.Assert(gttSS.hasTI(gtti));
                            var gttd = getGTTD(gtti);
                            Debug.Assert(gttd.allSGFAs.Contains(f));
                            Debug.Assert(gttd.getSGFA(f) == gti);
                            foreach (var lgt in gtd.lgts)
                                Debug.Assert(getLGTGTI(lgt) == gti);
                            foreach (var sgtti in gtd.sgttis)
                            {
                                Debug.Assert(gttSS.hasTI(sgtti));
                                Debug.Assert(getGTTD(sgtti).gtis.Contains(gti));
                            }
                        }
                    }
                    foreach (var gttd in allGTTDs)
                    {
                        var gtti = gttd.gtti;
                        foreach (var gti in gttd.gtis)
                        {
                            Debug.Assert(gtSS.hasTI(gti));
                            Debug.Assert(getGTD(gti).sgttis.Contains(gtti));
                        }
                        foreach (var f in gttd.allSGFAs)
                        {
                            var gti = gttd.getSGFA(f);
                            Debug.Assert(gtSS.hasTI(gti));
                            var gtd = getGTD(gti);
                            Debug.Assert(gtd.hasGFA(f,gtti));
                        }
                        foreach (var lgtt in gttd.lgtts)
                            Debug.Assert(getLGTTGTTI(lgtt) == gtti);

                    }
#endif
                }*/
        #endregion main

        #region propagate up
        public bool anyToPropagate { get { return gtisToPropagate.Count + gttisToPropagate.Count > 0; } }
        public bool anyToMerge { get { return gtiMergeToMap.Count + gttiMergeToMap.Count > 0; } }
        public bool anythingToDo
        {
            get
            {
                return anyToPropagate || anyToMerge;
            }
        }
        private void propagate()
        {
            while (anythingToDo)
            {
                merge();
                while (gtisToPropagate.Count > 0)
                {
                    var gti = gtisToPropagate.Dequeue();
                    if (gtiMergeToMap.ContainsKey(gti) || gtiMergeMap.ContainsKey(gti))
                        continue;
                    propagateGTI(gti);
                }
                #region consistency
#if DEBUG
                foreach (var td in gtSS.allTDs)
                    Debug.Assert(!td.isAnyUpdated || gtiMergeToMap.ContainsKey(td.ti));
#endif
                #endregion consistency
                merge();
                while (gttisToPropagate.Count > 0)
                {
                    var gtti = gttisToPropagate.First();
                    gttisToPropagate.Remove(gtti);
                    if (gttiMergeToMap.ContainsKey(gtti) || gttiMergeMap.ContainsKey(gtti))
                        continue;
                    propagateGTTI(gtti);
                }
                merge();
            }
        }
        protected abstract void propagateUpGTISources(GTD gtd);
        protected abstract void propagateDownGTISources(GTD gtd);
        private const GTI invalidGTI = int.MinValue;
        protected GTI currentPropagatingGTI = invalidGTI;
        private void propagateGTI(int gti)
        {
            #region setup
            currentPropagatingGTI = gti;
            var gtd = getGTD(gti);
            if (!gtd.isAnyUpdated)
                return;

            #region precondition
#if DEBUG
            Debug.Assert(!gtiMergeToMap.ContainsKey(gti));
            Debug.Assert(gtd.isAnyUpdated);
#endif
            #endregion precondition
            #endregion setup
            while (gtd.ngfas.Any() || gtd.hasNewSources || gtd.isDepthDownUpdated)
            {
                while (gtd.ngfas.Any())
                    propagateGTINGFAs(gtd);//ngfas -> npgts, ngfas, up+down depth |||||| clear (pre) ngfas
                propagateUpGTISources(gtd);//npgts -> sgttis
                propagateDownGTISources(gtd); //npgt+pgt || npgt+gfa || (isDepthDownUpdated + (pgt+pgt || pgt+gfa)) -> ngfas |||||| clear npgts
                gtd.clearDepthDownUpdated();
            }

            if (gtd.nlts.Any())
                propagateGTDNLGTs(gtd);
            if (gtd.isActualUpdated)
                gtdActualUpdated(gtd);
            if (gtd.isDepthUpdated && gtd.depth > minDepth)
                gtdDepthUpdated(gtd);
            gtd.clearDepthUpdated();

            Debug.Assert(!gtd.isAnyUpdated);

            if (gtd.isActual && (gtd.lgts.Count != 1 || gtd.isActualTDUpdated))
                gtisToEmbed.Add(gti);

            currentPropagatingGTI = -1;
        }

        private void propagateGTINGFAs(GTD gtd)
        {
            var ngfas = new List<Tuple<Function, GTTI>>(gtd.ngfas);
            gtd.clearNGFAs();
            foreach (var ngfa in ngfas)
            {
                var gtti = ngfa.Item2;
                var gttd = getGTTD(gtti);
                if (gttd.isFeasible && gttd.depth < maxDepth)
                {
                    setDepth(gtd, gttd.depth + 1);
                    if (gtd.isActual && !gttd.isActual)
                    {
                        setActual(gttd);
                        enqueuePropagateGTTI(gttd.gtti);
                    }
                }
                else if (gtd.depth != topDepth && gtd.depth > minDepth)
                    setDepth(gttd, (gtd.depth >= 0 ? 0 : gtd.depth) - 1);
            }
            propagateGTINGFAsSources(gtd, ngfas);
        }
        protected virtual void propagateGTINGFAsSources(GTD gtd, IEnumerable<Tuple<Function, GTTI>> ngfas) { }
        private void gtdDepthUpdated(GTD gtd)
        {
            Debug.Assert(gtd.isDepthUpdated);
            Debug.Assert(gtd.depth != topDepth && gtd.depth > minDepth && gtd.depth <= maxDepth);
            Debug.Assert(gtd.depth > minDepth && gtd.depth <= maxDepth);

            #region down
            var ndd = (gtd.depth < 0 ? gtd.depth : 0) - 1;
            foreach (var gtti in from gfa in gtd.gfas select gfa.Item2)
            {
                var gttd = getGTTD(gtti);
                setDepth(gttd, ndd);
            }
            #endregion down

            #region up
            if (gtd.depth >= 0 && gtd.depth < maxDepth)
                foreach (var sgtti in gtd.sgttis)
                {
                    updateGTTIDepth(sgtti);
                    //                    if (gtd.isFeasibleUpdated)
                    //                        Debug.Assert(getGTTD(sgtti).isFeasible);
                }
            #endregion up

            gtd.clearDepthUpdated();
            gtd.clearFeasibleUpdated();
        }
        private void propagateGTDNLGTs(GTD gtd)
        {
            foreach (var nlgt in gtd.nlts)
                foreach (var rgtt in universe.getGTRGTTs(nlgt))
                    updateRGTTSources(gtd, rgtt);

            gtd.clearNLTs();
        }
        protected abstract void updateRGTTSources(GTD gtd, GTT rgtt);
        protected virtual void gtdActualUpdated(GTD gtd)
        {
            Debug.Assert(gtd.isActualUpdated);
            Debug.Assert(gtd.isActual);
            Debug.Assert(gtd.depth >= 0 && gtd.depth <= maxDepth);
            foreach (var gtti in from gfa in gtd.gfas select gfa.Item2)
            {
                var gttd = getGTTD(gtti);
                if (gttd.isFeasible && !gttd.isActual)
                {
                    Debug.Assert(gttd.isFeasible);
                    Debug.Assert(gttd.depth >= 0 && gttd.depth < maxDepth);
                    setActual(gttd);
                    enqueuePropagateGTTI(gtti);
                }
            }
            gtd.clearActualUpdated();
        }
        protected virtual void gttdActualUpdated(GTTD gttd)
        {
            foreach (var gtd in from f in gttd.allSGFAs select getGTD(gttd.getSGFA(f)))
            {
                gtd.addActualGFA();
                updateGTDActualTDUpdated(gtd);
            }
        }
        private void updateGTDActualTDUpdated(GTD gtd)
        {
            if (gtd.isActualTDUpdated)
                addActualTDUpdatedGTIInt(gtd);
        }
        private void addActualTDUpdatedGTIInt(GTD gtd)
        {
            Debug.Assert(gtd.isActualTDUpdated);
#if DEBUG
            Debug.Assert(mergeAllowed || gtd.lgts.Count == 0);
//            if (index == 11550 && gtd.gti == 244)
//                Debugger.Break();
#endif
            actualTDUpdatedGTIs.Add(gtd.gti);
        }

        protected abstract void propagateUpGTTISources(GTTD gttd);
        protected abstract void propagateDownGTTISources(GTTD gttd);
        protected abstract void propagateGTTINLGTTs(GTTD gttd);
        protected void setDepth(GTD gtd, Depth d)
        {
            var od = gtd.depth;
            gtd.setDepth(d);
            if (gtd.depth != od)
                enqueuePropagateGTI(gtd.gti);
        }
        private void updateGTTIDepth(GTTI gtti)
        {
            var gttd = getGTTD(gtti);
            if (gttd.gtiT.All(gti => { var gtd = getGTD(gti); return gtd.isFeasible && gtd.depth < maxDepth; }))
                setDepth(gttd, (from gti2 in gttd.gtiT select getGTD(gti2).depth).Max());
        }
        protected void setDepth(GTTD gttd, Depth d)
        {
            var od = gttd.depth;
            gttd.setDepth(d);
            if (gttd.depth != od)
                enqueuePropagateGTTI(gttd.gtti);
        }
        protected void setActual(GTTD gttd)
        {
            if (gttd.isActual)
                return;
            Debug.Assert(gttd.isFeasible);
            sources.setActual(gttd);
            enqueuePropagateGTTI(gttd.gtti);
        }
        protected void setActual(GTD gtd)
        {
            if (gtd.isActual)
                return;
            Debug.Assert(gtd.isFeasible);
            gtd.setActual();
            enqueuePropagateGTI(gtd.gti);
        }
        private GTTI currentlyPropagatingGTTI = -1;
        private void propagateGTTI(GTTI gtti)
        {
#region setup
            currentlyPropagatingGTTI = gtti;
            var gttd = getGTTD(gtti);
            Debug.Assert(gttd.isAnyUpdated);
#endregion setup

#region propagate depth and flags
            if (!gttd.isActual && gttd.isFeasibleUpdated)
                foreach (var sgti in from f in gttd.allSGFAs select gttd.getSGFA(f))
                    if (getGTD(sgti).isActual)
                        setActual(gttd);
#region down
            if (gttd.isActualUpdated)
            {
                Debug.Assert(gttd.isActual);
                Debug.Assert(gttd.depth >= 0 && gttd.depth < maxDepth);
                foreach (var gti in gttd.gtiT)
                {
                    var gtd = getGTD(gti);
                    if (!gtd.isActual)
                    {
                        Debug.Assert(gtd.isFeasible);
                        Debug.Assert(gtd.depth >= 0 && gtd.depth < maxDepth);
                        setActual(gtd);
                        enqueuePropagateGTI(gti);
                    }
                }
            }
            else if (gttd.isDepthUpdated && gttd.depth >= minDepth)
            {
                Debug.Assert(gttd.depth >= minDepth && gttd.depth <= maxDepth);
                foreach (var gti in gttd.gtiT)
                {
                    var gtd = getGTD(gti);
                    var nd = gttd.depth >= 0 ? -1 : gttd.depth;
                    setDepth(gtd, nd);
                }
            }
#endregion down

#region up
            if (gttd.isDepthUpdated && gttd.depth >= 0 && gttd.depth < maxDepth)
                foreach (var gti in from f in gttd.allSGFAs select gttd.getSGFA(f))
                    setDepth(getGTD(gti), gttd.depth + 1);
            if (gttd.isActualUpdated)
                gttdActualUpdated(gttd);
#endregion up
#endregion propagate depth and flags

#region propagate up from predecessors
            propagateUpGTTISources(gttd); //updates gttd.nsgfas
#endregion propagate up from predecessors

#region propagate down from predecessors
            propagateDownGTTISources(gttd); //updates gttd.nsgfas
#endregion propagate down from predecessors

#region propagate nlgts
            if (gttd.nlts.Any())
                propagateGTTINLGTTs(gttd);
            gttd.clearNLTs();
#endregion propagate nlgts

            gttd.clearNewsFlags();

            if (gttd.isActual && (gttd.lgtts.Count != 1 || gttd.isActualTDUpdated))
                gttisToEmbed.Add(gtti);
            currentlyPropagatingGTTI = -1;
        }

        protected Depth originalDepth { get { return Universe.originalGTDepth; } }
        protected Depth minDepth { get { return Universe.minGTDepth; } }
        protected Depth maxDepth { get { return Universe.maxGTDepth; } }
        protected Depth topDepth { get { return Universe.topGTDepth; } }
#endregion propagate up

#region mapping
        protected void mapGFA(GTD gtd, Function f, GTTD gttd)
        {
            GTI gti2;
            if (!gttd.tryGetSGFA(f, out gti2))
                addGFAInt(gtd.gti, f, gttd.gtti);
            else
                if (gti2 != gtd.gti)
                enqueueMergeGTI(gti2, gtd.gti);
        }
        private void addGFAInt(GTI gti, Function f, GTTI gtti)
        {
            var gtd = getGTD(gti);
            var gttd = getGTTD(gtti);
#region debug
#if DEBUG
            Debug.Assert(!gttd.hasSGFA(f));
            Debug.Assert(gttd.depth == topDepth || gttd.depth < maxDepth);
            Debug.Assert(gtd.type == null || gtd.type.isEquivalent(f.resultType));
            Debug.Assert(f.argumentTypes.Count == gttd.gtiT.Length);
            foreach (var i in Enumerable.Range(0, gttd.gtiT.Length))
            {
                var gtdType = getGTD(gttd.gtiT[i]).type;
                if (gtdType != null)
                    Debug.Assert(gtdType.isEquivalent(f.argumentTypes[i]));
            }
#endif
#endregion debug
            sources.addGFAInt(gti, f, gtti);
            updateGTDActualTDUpdated(gtd);
            /*            if (gttd.depth >= 0 && gttd.depth < maxDepth)
                            setDepth(gtd,gttd.depth + 1);
                        else if (gtd.depth!=topDepth && gtd.depth>minDepth)
                            setDepth(gttd, (gtd.depth >= 0 ? 0 : gtd.depth )-1);
                            */
            if (gti != currentPropagatingGTI)
                enqueuePropagateGTI(gti);
        }
#endregion mapping

#region merge
        private int tMergeGTI(int gtiR)
        {
            var gti = gtiR;
            int gti2;
            while (gtiMergeMap.TryGetValue(gti, out gti2))
                gti = gti2;
            return gti;
        }
        protected int tMergeToGTI(int gtiR)
        {
            var gti = gtiR;
            int gti2;
            while (gtiMergeToMap.TryGetValue(gti, out gti2))
                gti = gti2;
            return gti;
        }
        private int tMergeGTTI(int gttiR)
        {
            var gtti = gttiR;
            int gtti2;
            while (gttiMergeMap.TryGetValue(gtti, out gtti2))
                gtti = gtti2;
            return gtti;
        }
        protected int tMergeToGTTI(int gttiR)
        {
            var gtti = gttiR;
            int gtti2;
            while (gttiMergeToMap.TryGetValue(gtti, out gtti2))
                gtti = gtti2;
            return gtti;
        }
        private void merge()
        {
            while (gtiMergeToMap.Any() || gttiMergeToMap.Any())
            {
                foreach (var gtiKV in gtiMergeToMap.ToList())
                    mergeGTI(gtiKV.Key, tMergeGTI(gtiKV.Value));
                while (gttiMergeToMap.Any() && !gtiMergeToMap.Any())
                {
                    var kv = gttiMergeToMap.First();
                    //                    gttiMergeToMap.Remove(kv.Key);
                    mergeGTTI(kv.Key, tMergeGTTI(kv.Value));
                }
            }
        }
        protected abstract void mergeSources(GTD gtdFrom, GTD gtdTo);
        protected abstract void mergeSources(GTTD gttdFrom, GTTD gttdTo);
        public void mergeSGTTIs(GTD gtdFrom, GTD gtdTo)
        {
            var gtiFrom = gtdFrom.gti;
            var gtiTo = gtdTo.gti;
            foreach (var sgtti in gtdFrom.sgttis)
            {
                gtdTo.mapSGTTI(sgtti);
                var sgttd = getGTTD(sgtti);
                var oldKey = makeGTTKey(sgttd.gtiT);
                for (var i = 0; i < sgttd.gtiT.Length; i++)
                    if (sgttd.gtiT[i] == gtiFrom)
                        sgttd.gtiT[i] = gtiTo;
                var newKey = makeGTTKey(sgttd.gtiT);
                sources.removeGTTKey(oldKey);
                int gtti2;
                if (sources.tryGetGTTIByKey(newKey, out gtti2))
                    enqueueMergeGTTI(sgtti, gtti2);
                else
                {
                    sources.setGTTKeyInt(sgtti, newKey);
                    completeNewGTTSources(getGTTD(sgtti));
                    updateGTTIDepth(sgtti);
                }
            }
        }
        public void mergeGFAs(GTD gtdFrom, GTD gtdTo)
        {
            var gtiFrom = gtdFrom.gti;
            var gtiTo = gtdTo.gti;
            if (gtdTo.hasActualGFAs && gtdFrom.hasActualGFAs)
            {
                gtdTo.setActualTDUpdated();
                addActualTDUpdatedGTIInt(gtdTo);
            }
            foreach (var kv in gtdFrom.gfas.ToList())
            {
                var f = kv.Item1;
                var gtti = kv.Item2;
                var gttd = getGTTD(gtti);
                Debug.Assert(tMergeToGTI(gttd.getSGFA(f)) == gtiFrom || tMergeToGTI(gttd.getSGFA(f)) == gtiTo);
                sources.swingGFA(gtdFrom, gtdTo, f, gtti);
                enqueuePropagateGTI(gtdTo.gti);
            }
        }
        private void mergeFlags(GTD gtdFrom, GTD gtdTo)
        {
            gtdTo.mergeFlagsFrom(gtdFrom);
            if (gtdTo.isAnyUpdated)
                enqueuePropagateGTI(gtdTo.gti);
        }
        private GTI currentlyMergingFromGTI = -1;
        private GTI currentlyMergingToGTI = -1;
        private void mergeGTI(GTI gtiFrom, GTI gtiToI)
        {
#region preconditions
#if DEBUG
//            if (isItGTI(gtiFrom) || isItGTI(gtiToI))
//                Debugger.Break();
            Debug.Assert(gtiMergeToMap.ContainsKey(gtiFrom));
            Debug.Assert(gtiToI < gtiFrom);
            /*            Debug.Assert(gtiMergeToMap[gtiFrom] == gtiToI);
                        Debug.Assert(!gtiMergeMap.ContainsKey(gtiFrom));
                        Debug.Assert(!gtiMergeMap.ContainsKey(gtiToI));
                        {
                            var gtdFromType = getGTD(gtiFrom).type;
                            var gtdToType   = getGTD(gtiToI).type;
                            Debug.Assert(gtdFromType == null || gtdToType == null || gtdFromType.isEquivalent(gtdToType));
                        }
                        if (universe.index == 11 && gtiToI == 0)
                            Debugger.Break();*/
#endif
#endregion preconditions

            var gtiTo = gtiToI;
            while (gtiMergeMap.ContainsKey(gtiTo) || gtiMergeToMap.ContainsKey(gtiTo))
            {
                while (gtiMergeMap.ContainsKey(gtiTo))
                    gtiTo = gtiMergeMap[gtiTo];
                while (gtiMergeToMap.ContainsKey(gtiTo))
                    gtiTo = gtiMergeToMap[gtiTo];
            }
#if DEBUG
//            if (isItGTI(gtiFrom) || isItGTI(gtiToI))
//                Debugger.Break();
#endif

            currentlyMergingFromGTI = gtiFrom;
            currentlyMergingToGTI = gtiTo;

            var gtdFrom = getGTD(gtiFrom);
            var gtdTo = getGTD(gtiTo);

            Debug.Assert(gtdFrom.type == null || gtdTo.type == null || gtdFrom.type.isEquivalent(gtdTo.type));

            gtiMergeMap[gtiFrom] = gtiTo;
            gtiMergeToMap.Remove(gtiFrom);
            if (gtisToEmbed.Remove(gtiFrom))
                gtisToEmbed.Add(gtiTo);
            if (goalGTIs.Remove(gtiFrom))
                goalGTIs.Add(gtiTo);


            mergeFlags(gtdFrom, gtdTo);
            mergeLGTs(gtdFrom, gtdTo);
            mergeSGTTIs(gtdFrom, gtdTo);
            mergeGFAs(gtdFrom, gtdTo);

            mergeSources(gtdFrom, gtdTo);

            sources.removeGTDInt(gtdFrom);

            actualTDUpdatedGTIs.Remove(gtiFrom);
            updateGTDActualTDUpdated(gtdTo);

            currentlyMergingFromGTI = -1;
            currentlyMergingToGTI = -1;
            //            Debug.Assert(mergeAllowed || !gtdTo.isActualTDUpdated);
        }
        private void mergeFlags(GTTD gttdFrom, GTTD gttdTo)
        {
            gttdTo.mergeFlagsFrom(gttdFrom);
            if (gttdTo.isAnyUpdated)
                enqueuePropagateGTTI(gttdTo.gtti);
        }
        private void mergeLGTTs(GTTD gttdFrom, GTTD gttdTo)
        {
            foreach (var lgtt in gttdFrom.lgtts)
            {
                gttSS.mapLTInt(gttdTo, lgtt);
                enqueuePropagateGTTI(gttdTo.gtti);
            }
        }
        internal void mergeLGTs(GTD gtdFrom, GTD gtdTo)
        {
            foreach (var lt in gtdFrom.lts)
            {
                Debug.Assert(gtSS.getLTTD(lt).ti == gtdFrom.ti);
                Debug.Assert(gtdFrom.lts.Contains(lt));
                Debug.Assert(gtdTo.ti < gtdFrom.ti);
                gtSS.mapLTInt(gtdTo, lt);
                enqueuePropagateGTI(gtdTo.ti);
            }
        }

        private void mergeGTIsSGTTI(GTTD gttdFrom, GTTD gttdTo)
        {
            foreach (var gti in gttdFrom.gtiT)
            {
                var gtd = getGTD(gti);
                gtd.removeSGTTI(gttdFrom.gtti);
                gtd.mapSGTTI(gttdTo.gtti);
            }
        }
        private void mergeSGFAs(GTTD gttdFrom, GTTD gttdTo)
        {
#if DEBUG
//            if (index == 11550 && gttdFrom.gtti == 211 && gttdTo.gtti == 209)
//                Debugger.Break();
#endif
            foreach (var f in gttdFrom.allSGFAs.ToList())
            {
                var gtiFrom = gttdFrom.getSGFA(f);
                int gtiTo;
                if (gttdTo.tryGetSGFA(f, out gtiTo))
                {
                    getGTD(gtiFrom).removeGFAInt(f, gttdFrom.gtti);
                    if (gtiFrom != gtiTo)
                        enqueueMergeGTI(gtiFrom, gtiTo);
                }
                else
                {
                    sources.swingSGFA(gttdFrom, gttdTo, f);
                    var gtdFrom = getGTD(gtiFrom);
                    updateGTDActualTDUpdated(gtdFrom);
                    enqueuePropagateGTI(gtiFrom);
                }
            }
        }
        private GTTI currentlyMergingFromGTTI = -1;
        private GTTI currentlyMergingToGTTI = -1;
        private void mergeGTTI(int gttiFrom, int gttiTo)
        {
#region precondition
#if DEBUG
            Debug.Assert(gttiMergeToMap.ContainsKey(gttiFrom));
            Debug.Assert(gttiTo < gttiFrom);
#endif
#endregion precondition

            currentlyMergingFromGTTI = gttiFrom;
            currentlyMergingToGTTI = gttiTo;

            var gttdFrom = getGTTD(gttiFrom);
            var gttdTo = getGTTD(gttiTo);

            #region consistency
            Debug.Assert(gttdFrom.gtiT.SequenceEqual(gttdTo.gtiT));
            Debug.Assert(makeGTTKey(gttdFrom.gtiT) == makeGTTKey(gttdTo.gtiT));
#if DEBUG
//            if (index == 11550 && gttdFrom.gtti == 211 && gttdTo.gtti == 209)
//                Debugger.Break();
#endif
            #endregion

            gttiMergeToMap.Remove(gttiFrom);
            gttiMergeMap[gttiFrom] = gttiTo;
            if (gttisToEmbed.Remove(gttiFrom))
                gttisToEmbed.Add(gttiTo);

            sources.setGTTKeyInt(gttiTo, makeGTTKey(gttdTo.gtiT));

            mergeSGFAs(gttdFrom, gttdTo);
            mergeFlags(gttdFrom, gttdTo);
            mergeLGTTs(gttdFrom, gttdTo);
            mergeGTIsSGTTI(gttdFrom, gttdTo);
            mergeSources(gttdFrom, gttdTo);
            sources.removeGTTDInt(gttdFrom);

            currentlyMergingFromGTTI = -1;
            currentlyMergingToGTTI = -1;
        }
#endregion merge

#region mapping
        protected GTD makeNewGT()
        {
            var gti = sources.makeNewGTI();
            return getGTD(gti);
        }
        protected GTD mapGFA(Function f, GTTD gttd)
        {
            GTD gtd;
            GTI gti;
            if (gttd.tryGetSGFA(f, out gti))
                gtd = getGTD(gti);
            else
                gtd = mapNewGFA(f, gttd);
            return gtd;
        }
        protected GTD mapNewGFA(Function f, GTTD gttd)
        {
            Debug.Assert(!gttd.hasSGFA(f));
            var gtd = makeNewGT();
            var gti = gtd.gti;
            addGFAInt(gti, f, gttd.gtti);
            return gtd;
        }
        protected GTD mapNewActualGFA(Function f, GTTD gttd)
        {
            Debug.Assert(gttd.depth >= 0 && gttd.depth < maxDepth && gttd.isActual);
            var gtd = mapNewGFA(f, gttd);
            setDepth(gtd, gttd.depth + 1);
            setActual(gtd);
            Debug.Assert(gtd.isAnyUpdated);
            enqueuePropagateGTI(gtd.gti);
            return gtd;
        }
        protected GTTD mapActualGTT(GTI[] gtiT)
        {
            var gttd = makeGTT(gtiT);
            var d = (from gti in gtiT select getGTD(gti).depth).Max();
            setDepth(gttd, d);
            setActual(gttd);
            Debug.Assert(gttd.isAnyUpdated);
            enqueuePropagateGTTI(gttd.gtti);
            return gttd;
        }
        internal bool tryGetGTTIByGTIs(int[] gtiT, out int gtti)
        {
            if (gtiT.Length == 0)
                return tryGetGTTIByKey(makeGTTKey(gtiT), out gtti);

            var gti0 = gtiT[0];
            foreach (var sgtti in getGTD(gti0).sgttis)
            {
                var gttdGTTIs = getGTTD(sgtti).gtiT;
                if (gttdGTTIs.SequenceEqual(gtiT))
                {
                    gtti = sgtti;
                    return true;
                }
            }
            gtti = -1;
            return false;
        }
        internal bool hasGTTIKey(GTTKey key) { return sources.hasGTTKey(key); }
        internal bool tryGetGTTIByKey(GTTKey key, out GTTI gtti)
        {
            return sources.tryGetGTTIByKey(key, out gtti);
        }
        protected GTTD makeGTT(GTI[] gttGTIs)
        {
            var key = makeGTTKey(gttGTIs);
            return makeGTT(gttGTIs, key);
        }
        protected abstract void completeNewGTTSources(GTTD gttd);
        protected GTTD makeGTT(GTI[] gtiT, GTTKey key)
        {
            GTTD gttd;
            GTTI gtti;
            if (!tryGetGTTIByKey(key, out gtti))
                gttd = makeNewGTT(gtiT, key);
            else
                gttd = getGTTD(gtti);
            return gttd;
        }
        internal GTTD makeNewGTT(GTI[] gtiT)
        {
            return makeNewGTT(gtiT, makeGTTKey(gtiT));
        }
        internal GTTD makeNewGTT(GTI[] gtiT, GTTKey key)
        {
            Debug.Assert(!hasGTTIKey(key));
            var gttd = sources.makeGTT(gtiT, key);
            var dT = (from gti in gtiT select getGTD(gti).depth).ToArray();
            if (dT.Length > 0 && dT.All(d => d >= 0 && d < maxDepth))
                setDepth(gttd, dT.Max());
            completeNewGTTSources(gttd);
            if (gttd.isAnyUpdated)
                enqueuePropagateGTTI(gttd.gtti);
            return gttd;
        }
#endregion mapping

#region members
        protected U universe;

        private readonly IDictionary<GTI, GTI> gtiMergeToMap = new Dictionary<int, int>();
        private readonly IDictionary<GTI, GTI> gtiMergeMap = new Dictionary<int, int>();
        private readonly IDictionary<GTTI, GTTI> gttiMergeToMap = new Dictionary<int, int>();
        private readonly IDictionary<GTTI, GTTI> gttiMergeMap = new Dictionary<int, int>();

#region queues
        private Queue<GTI> gtisToPropagate = new Queue<GTI>();
        private ISet<GTTI> gttisToPropagate = new HashSet<GTTI>();
#endregion queues

#endregion members

    }
}
