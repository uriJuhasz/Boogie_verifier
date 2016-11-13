using Slicer.Analyzers.FOLConverter.Formulae;
using Slicer.StateSpace.Types;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using GTI = System.Int32;
using GTTI = System.Int32;
using Depth = System.Int32;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    abstract class STemplateMaker : TemplateMaker<
        SU,
        SSourceStructure,
        SGTSD,
        SGTTSD,
        STSourceStructure<GT, SGTSD>,
        STSourceStructure<GTT, SGTTSD>>
    {
        #region instance creation
        protected STemplateMaker(SU universe)
            : base(universe)
        {
        }
        #endregion instance creation

        #region members
        protected Universe predecessor { get { return universe.predecessor; } }
        #endregion members

        #region mapping
        protected bool upToDatePGT(GT pgt)
        {
            return predecessor.upToDateGTMM(pgt);
        }
        protected bool upToDatePGTT(GTT pgtt)
        {
            return predecessor.upToDateGTTMM(pgtt);
        }
        protected int mapPGT(GT pgt)
        {
            int gti;
            if (!tryGetPGTGTI(pgt, out gti))
            {
                var gtd = makeNewGT();
                gti = gtd.gti;
                mapPGT(gti, pgt);
            }
            Debug.Assert(tMergeToGTI(getPGTGTI(pgt)) == tMergeToGTI(gti));
            return gti;
        }
        protected void mapPGT(int gti, GT pgt)
        {
            mapPGT(getGTD(gti), pgt);
        }
        protected void mapPGTs(SGTSD gtd, IEnumerable<GT> pgts)
        {
            foreach (var pgt in pgts)
                mapPGT(gtd, pgt);
        }
        protected void mapPGT(SGTSD gtd, GT pgt)
        {
            int gti;
            if (tryGetPGTGTI(pgt, out gti))
            {
                if (gti != gtd.gti)
                    enqueueMergeGTI(gti, gtd.gti);
                else { }
            }
            else
            {
                #region preconditions
#if DEBUG
                Debug.Assert(!hasPGT(pgt));
                Debug.Assert(!gtd.pgts.Contains(pgt));
#endif
                #endregion preconditions
                mapNewPGT(gtd, pgt);
            }
            Debug.Assert(gtd.pgts.Contains(pgt) || tMergeToGTI(getPGTGTI(pgt)) == tMergeToGTI(gtd.gti));
        }
        private readonly ISet<GT> newPGTs = new HashSet<GT>();
        private readonly ISet<GTT> newPGTTs = new HashSet<GTT>();
        protected override void gtdActualUpdated(SGTSD gtd)
        {
            base.gtdActualUpdated(gtd);
            newPGTs.UnionWith(gtd.pgts);
        }
        protected override void gttdActualUpdated(SGTTSD gttd)
        {
            base.gttdActualUpdated(gttd);
            newPGTTs.UnionWith(gttd.pgtts);
        }
        void mapNewPGT(SGTSD gtd, GT pgt)
        {
            #region debug
            Debug.Assert(!gtSS.hasPT(pgt));
            #endregion debug
            newPGTs.Add(pgt);
            mapPGTInt(gtd.gti, pgt);
        }
        void remapPGT(GTI gti, GT pgt)
        {
//            Debug.Assert(!gtSS.hasPT(pgt));
            Debug.Assert(gtSS.getPTTI(pgt) != gti);
            mapPGTInt(gti, pgt);
        }
/*        void mapPGTInt(SGTD gtd, GT pgt)
        {
            #region precondition
#if DEBUG
            {
//                if (!mergeAllowed)
//                    Debug.Assert(!hasPGT(pgt) || getPGTGTI(pgt) == gtd.gti);
            }
#endif
            #endregion precondition
            mapPGTIntA(gtd.gti, pgt);
        }*/
        protected void mapPGTInt(GTI gti, GT pgt)
        {
            Debug.Assert(upToDatePGT(pgt));
            gtSS.mapPTInt(gti, pgt);
            if (gti!=currentPropagatingGTI)
                enqueuePropagateGTI(gti);
        }
        void mapNewPGTT(SGTTSD gttd, GTT pgtt)
        {
#if DEBUG
            Debug.Assert(!gttSS.hasPT(pgtt));
#endif
            newPGTTs.Add(pgtt);
            mapPGTTInt(gttd.gtti, pgtt);
        }
        void remapPGTT(GTTI gtti, GTT pgtt)
        {
            Debug.Assert(gttSS.getPTTI(pgtt) != gtti);
            mapPGTTInt(gtti, pgtt);
        }
        protected void mapPGTT(GTTI gtti, GTT pgtt)
        {
            mapPGTT(getGTTD(gtti), pgtt);
        }
        protected void mapPGTT(SGTTSD gttd, GTT pgtt)
        {
            int gtti;
            if (tryGetPGTTGTTI(pgtt, out gtti))
            {
                if (gtti != gttd.gtti)
                    enqueueMergeGTTI(gtti, gttd.gtti);
                else { }
            }
            else
            {
                #region preconditions
#if DEBUG
                Debug.Assert(!hasPGTT(pgtt));
                Debug.Assert(!gttd.pgtts.Contains(pgtt));
#endif
                #endregion preconditions
                mapNewPGTT(gttd, pgtt);
                enqueuePropagateGTTI(gttd.gtti);
            }
            Debug.Assert(gttd.pgtts.Contains(pgtt) || tMergeToGTTI(getPGTTGTTI(pgtt)) == tMergeToGTTI(gttd.gtti));
        }
        protected void mapPGTTInt(GTTI gtti, GTT pgtt)
        {
            Debug.Assert(upToDatePGTT(pgtt));
            gttSS.mapPTInt(gtti, pgtt);
            enqueuePropagateGTTI(gtti);
        }
        private void mapPGTsToGTI(SGTSD gtd, IEnumerable<GT> pgts)
        {
            foreach (var pgt in pgts)
                mapPGT(gtd, pgt);
        }
        private void mapPGTTs(SGTTSD gttd, IEnumerable<GTT> pgtts)
        {
            foreach (var pgtt in pgtts)
                mapPGTT(gttd, pgtt);
/*            {
                GTTI gtti2;
                if (!tryGetPGTTGTTI(pgtt, out gtti2))
                    mapPGTT(gttd, pgtt);
                else
                    Debug.Assert(gtti2 == gttd.gtti);
            }*/
        }
        private SGTTSD mapPGTTDown(GTT pgtt, Depth d)
        {
            Debug.Assert(d < 0);
            Debug.Assert(d >= minDepth);
            var gttd = mapPGTT(pgtt);
            foreach (var gtd in from gti in gttd.gtiT select getGTD(gti))
                setDepth(gtd, d);
            setDepth(gttd, d);
            return gttd;
        }
        private SGTTSD mapPGTT(GTT pgtt)
        {
            GTTI gtti;
            if (!tryGetPGTTGTTI(pgtt, out gtti))
            {
                var gttd = makeGTT((from pgt in pgtt.gtT select mapPGT(pgt)).ToArray());
                mapPGTT(gttd, pgtt);
                return gttd;
            }
            else
                return getGTTD(gtti);
        }
        #endregion mapping

        #region merge
        protected override void mergeSources(SGTSD gtdFrom, SGTSD gtdTo)
        {
            foreach (var pgt in gtdFrom.pgts)
                remapPGT(gtdTo.gti, pgt);
            if (gtdTo.isActual)
                newPGTs.UnionWith(gtdFrom.pgts);
        }
        protected override void mergeSources(SGTTSD gttdFrom, SGTTSD gttdTo)
        {
            foreach (var pgtt in gttdFrom.pgtts)
                remapPGTT(gttdTo.gtti, pgtt);
            if (gttdTo.isActual)
                newPGTTs.UnionWith(gttdFrom.pgtts);
        }
        #endregion merge

        #region consistency
/*        protected override void checkSourcesNoLGTs()
        {
#if DEBUG
            base.checkSourcesNoLGTs();
            foreach (var gtd in allGTDs)
            {
                var gti = gtd.gti;

            }
#endif 
        }*/
        #endregion consistency

        #region propagate
        protected sealed override void completeNewGTTSources(SGTTSD gttd)
        {
            var pgtsT = (from gti in gttd.gtiT select new HashSet<GT>(getGTD(gti).pgts)).ToArray();
            var pgtts = universe.makePGTTs(pgtsT);
            mapPGTTs(gttd, pgtts);
        }
        protected sealed override void propagateUpGTISources(SGTSD gtd)
        {
            if (gtd.sgttis.Count() == 0 && gtd.lgts.All(lgt => !universe.getGTRGTTs(lgt).Any()))
                return;
            var npgts = new HashSet<GT>(gtd.npgts);
            if (npgts.Count == 0)
                return;
            var gti = gtd.gti;
            var sgtiAs = new List<Tuple<int[],SGTTSD>>(
                from sgtti in gtd.sgttis
                let gttd = getGTTD(sgtti)
                select new Tuple<int[], SGTTSD>(gttd.gtiT,gttd));
            if (gtd.isActual)
                sgtiAs.AddRange(
                    from lgt in gtd.lgts
                    from rgtt in universe.getGTRGTTs(lgt)
                    select new Tuple<int[], SGTTSD>(
                        (from rgttLGT in rgtt.gtT select gtSS.getTI(rgttLGT)).ToArray(), null)
                        );
            foreach (var p in sgtiAs)
            {
                var gtiT = p.Item1;
                var gttd = p.Item2;
                var n = gtiT.Length;
                var gtdT = (from gti1 in gtiT select getGTD(gti1)).ToArray();
                #region consistency
#if DEBUG
                Debug.Assert(gtiT.Contains(gti));
//                foreach (var gti1 in gtiT)
//                    Debug.Assert(getGTD(gti1).depth >= 0 && getGTD(gti1).depth < maxDepth);
#endif 
                #endregion consistency
                for (var i = 0; i < n; i++)
                {
                    var gtii = gtiT[i];
                    if (gtii == gti)
                    {
                        var pgtts = universe.makePGTTs((
                            from i2 in Enumerable.Range(0, n)
                            let gti2 = gtiT[i2]
                            select i2 == i ?  npgts : new HashSet<GT>(getGTD(gti2).pgts)
                        ).ToArray());
                        if (pgtts.Any())
                        {
                            if (gttd == null  && gtdT.Any(gtd1 => gtd1.depth<0 || gtd1.depth >= maxDepth))
                                continue;
                            if (gttd == null)
                            {
                                mapRGTT(gtiT, pgtts);
                                gttd = makeGTT(gtiT);
                                setDepth(gttd, (from gti1 in gtiT select getGTD(gti1).depth).Max());
                                Debug.Assert(gttd.isFeasible);
                                setActual(gttd);
                            }
                            mapPGTTs(gttd, pgtts);
                            if (gttd.isAnyUpdated)
                                enqueuePropagateGTTI(gttd.gtti);
                        }
                    }//if (gtii == gti)
                }//for (var i = 0; i < n; i++)
            }
        }
        protected sealed override void updateRGTTSources(SGTSD gtd, GTT rgtt)
        {
            var gtiT = (from rgttLGT in rgtt.gtT select gtSS.getTI(rgttLGT)).ToArray();
            var n = gtiT.Length;
            var pgtts = universe.makePGTTs((
                    from i2 in Enumerable.Range(0, n)
                    let gti2 = gtiT[i2]
                    select new HashSet<GT>(getGTD(gti2).pgts)
                ).ToArray());
            mapRGTT(gtiT,pgtts);
        }
        private void mapRGTT(GTI[] gtiT,IEnumerable<GTT> pgtts)
        {
            #region consistency
#if DEBUG
            Debug.Assert(gtiT.Length > 0);
            foreach (var gti in gtiT)
                Debug.Assert(getGTD(gti).depth >= 0 && getGTD(gti).depth < maxDepth);
#endif
            #endregion consistency
            if (!pgtts.Any())
                return;
            SGTTSD gttd = null;
            GTTI gtti;
            if (tryGetGTTIByGTIs(gtiT,out gtti))
                gttd = getGTTD(gtti);
            else
            {
                gttd = makeNewGTT(gtiT);
                var d = (from gti in gtiT select getGTD(gti).depth).Max();
                setDepth(gttd, d);
                gtti = gttd.gtti;
            }
            if (gttd.gtiT.Length>0)
                setDepth(gttd, (from gti1 in gttd.gtiT select getGTD(gti1).depth).Max());
            if (gttd != null)
            {
                Debug.Assert(gttd.isFeasible);
                setActual(gttd);
                mapPGTTs(gttd, pgtts);
                if (gttd.isAnyUpdated)
                    enqueuePropagateGTTI(gtti);
            }
        }

        private void mapRGFA(Function f, SGTTSD gttd, IEnumerable<GT> pgts)
        {
            Debug.Assert(gttd.depth >= 0 && gttd.depth < maxDepth);
            if (!pgts.Any())
                return;
            GTI gti;
            SGTSD gtd = null;
            if (gttd.tryGetSGFA(f, out gti))
                gtd = getGTD(gti);
            else
            {
                gtd = mapGFA(f, gttd);
                setDepth(gtd, gttd.depth + 1);
                gti = gtd.gti;
            }
            if (gtd != null)
            {
                Debug.Assert(gtd.isFeasible);
                setActual(gtd);
                mapPGTs(gtd, pgts);
                if (gtd.isAnyUpdated)
                    enqueuePropagateGTI(gti);
            }
        }
        protected override sealed void propagateGTTINLGTTs(SGTTSD gttd)
        {
            if (gttd.depth < 0 || gttd.depth >= maxDepth)
                return;
            if (gttd.pgtts.Any())
            {
                foreach (var f in new HashSet<Function>(from nlgtt in gttd.nlts from rgfa in universe.getRGFAs(nlgtt) select rgfa))
                {
                    var pgts = universe.makePredecessorGTs(f, gttd.pgtts);
                    mapRGFA(f, gttd, pgts);
                }
            }
            gttd.clearNLTs();
        }


        protected sealed override void propagateUpGTTISources(SGTTSD gttd)
        {
//            if (gttd.depth < 0 || gttd.depth >= maxDepth)
//                return;
            var npgtts = gttd.npgtts;
            if (!npgtts.Any() && !gttd.isDepthDownUpdated)
                return;
            foreach (var f in gttd.allSGFAs)
            {
                var gti = gttd.getSGFA(f);
                var gtd = getGTD(gti);
                var pgts = universe.makePredecessorGTs(f, npgtts);
                mapPGTsToGTI(gtd, pgts);
            }
            foreach (var f in new HashSet<Function>(from lgtt in gttd.lgtts from f in universe.getRGFAs(lgtt) select f))
            {
                var pgts = universe.makePredecessorGTs(f, npgtts);
                mapRGFA(f, gttd, pgts);
            }
        }
        protected sealed override void propagateGTINGFAsSources(SGTSD gtd, IEnumerable<Tuple<Function, int>> ngfas)
        {
            foreach (var ngfa in ngfas)
                if (universe.predecessor.inScope(ngfa.Item1))
                    mapPGTs(gtd, universe.makePredecessorGTs(ngfa.Item1, getGTTD(ngfa.Item2).pgtts));
        }
        protected sealed override void propagateDownGTISources(SGTSD gtd)
        {
            if (gtd.depth != minDepth && gtd.depth != topDepth && gtd.pgts.Any() && (gtd.isDepthDownUpdated || gtd.npgts.Any()))
            {
                var upgts = (gtd.isDepthDownUpdated) ? gtd.pgts : gtd.npgts;
                var dd = (gtd.depth >= 0) ? -1 : gtd.depth - 1;
                foreach (var npgt in upgts)
                    foreach (var npgfa in npgt.gfas)
                        if (universe.inScope(npgfa.function))
                        {
                            var gttd = mapPGTTDown(npgfa.gtt, dd);
                            mapGFA(gtd, npgfa.function, gttd);
                        }
            }
            gtd.clearNPGTs();
        }
        protected sealed override void propagateDownGTTISources(SGTTSD gttd) { }
        #endregion propagate

        #region accessors
        protected bool hasPGT(GT pgt) { return gtSS.hasPT(pgt); }
        protected bool hasPGTT(GTT pgtt) { return gttSS.hasPT(pgtt); }
        protected bool tryGetPGTGTI(GT pgt, out GTI gti) { return gtSS.tryGetPTTI(pgt, out gti); }
        protected bool tryGetPGTTGTTI(GTT pgtt, out GTTI gtti) { return gttSS.tryGetPTTI(pgtt, out gtti); }
        public GTI getPGTGTI(GT pgt) { return gtSS.getPTTI(pgt); }
        public GTTI getPGTTGTTI(GTT pgtt) { return gttSS.getPTTI(pgtt); }
        #endregion accessors

        #region template
        protected override Universe.IEmbedTemplate encodeEmbedTemplate()
        {
            var et = base.encodeEmbedTemplate();
            foreach (var pgt in newPGTs)
            {
                var gti = gtSS.getPTTI(pgt);
                var gtd = getGTD(gti);
                if (gtd.isActual && !et.hasModifiedGTI(gti))
                {
                    if (universe.hasGTMM(pgt))
                        Debug.Assert(universe.transitiveMerge(pgt) == gtd.lt());
                    else
                        universe.setNewMergedGT(pgt, gtd.lt());
                    foreach (var pgt2 in predecessor.getGTDisequalities(pgt))
                    {
                        SGTSD gtsd2;
                        if (gtSS.tryGetPTTD(pgt2, out gtsd2) && gtsd2.isActual && !et.hasModifiedGTI(gtsd2.gti))
                            universe.assumeGDE(gtd.lt(), gtsd2.lt());
                    }
                }
            }
            foreach (var pgtt in newPGTTs)
            {
                var gtti = gttSS.getPTTI(pgtt);
                var gttd = getGTTD(gtti);
                if (gttd.isActual && !et.hasModifiedGTTI(gtti))
                    if (universe.hasGTTMM(pgtt))
                        Debug.Assert(universe.transitiveMerge(pgtt) == gttd.lt());
                    else
                        universe.setNewMergedGTT(pgtt, gttd.lt());
            }
            return et;
        }

        #endregion template
    }
}
