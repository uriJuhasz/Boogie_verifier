using Slicer.Analyzers.FOLConverter.Clauses;
using Slicer.Analyzers.FOLConverter.Formulae;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using GTI = System.Int32;
using GTTI = System.Int32;
using JI = System.Int32;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    public abstract class JTemplateMaker : TemplateMaker<
        JU,
        JSourceStructure,
        JGTSD,
        JGTTSD,
        JTSourceStructure<GT,JGTSD,JECGT>,
        JTSourceStructure<GTT, JGTTSD,JECGTT>>
    {
        #region instance creation
        protected JTemplateMaker(JU u)
            : base(u)
        {
            //            jecgttMergeToMap = (from ju in u.js select new Dictionary<JECGTT, JECGTT>()).ToArray();
        }
        #endregion instance creation

        #region mapping
        #region 1 joinee
        private JGTTSD map1JGTT(GTT jgtt)
        {
            Debug.Assert(jn == 1);
            return mapJGTTA(new[] { jgtt });
        }
        #endregion 1 joinee
        private JGTTSD mapJGTTA(GTT[] jgttA)
        {
            Debug.Assert(jgttA.Length == jn);
            var jecA = (from j in js select mapJGTTEC(j,jgttA[j])).ToArray();
            return mapJECGTTA(jecA);
        }
        internal JECGT mapJGTEC(JI j, GT jgt)
        {
            JECGT jec;
            if (!gtSS.tryGetJTJEC(j, jgt, out jec))
            {
                jec = mapNewJGTNewJEC(j, jgt);
                Debug.Assert(jec.hasJT(jgt));
            }
            return jec;
        }
        internal JECGTT mapJGTTEC(JI j, JECGT[] jecgtT)
        {
            return sources.makeJECGTT(j, jecgtT);
        }
        internal JECGTT mapJGTTEC(JI j, GTT jgtt)
        {
            JECGTT jec;
            if (!gttSS.tryGetJTJEC(j, jgtt, out jec))
            {
                var jecgtIs = (from jgt in jgtt.gtT select mapJGTEC(j,jgt)).ToArray();
                jec = sources.makeJECGTT(j, jecgtIs);
                mapNewJGTTInt(j, jec, jgtt);
//                jec = mapNewJECGTT(j,jecgtIs);
                Debug.Assert(jec.hasJT(jgtt));
            }
            return jec;
        }
        private JECGTT mapNewJECGTT(JI j, JECGT[] jecgtis)
        {
            var jec = sources.mapNewJECGTT(j, jecgtis);
            return jec;
        }
        private JECGT mapNewJGTNewJEC(JI j, GT jgt)
        {
            Debug.Assert(!sources.gts.hasJT(j,jgt));
            var jec = sources.makeNewJECGT(j);
            mapNewJGTInt(j, jec, jgt);
            return jec;
        }
        private JGTTSD mapJECGTTA(JECGTT[] jecA)
        {
            JGTTSD gttd;
            if (!gttSS.tryGetJECATD(jecA, out gttd))
                gttd = mapNewJECAGTTD(jecA);
            return gttd;
        }
        private JGTTSD mapNewJECAGTTD(JECGTT[] jecA)
        {
            Debug.Assert(!gttSS.hasJECA(jecA));
            var gtis = mapJECGTTAGTIs(jecA);
            return makeNewGTT(gtis);
        }
        private GTI[] mapJECGTTAGTIs(JECGTT[] jecA)
        {
            var n = jecA[0].n;
            return (from i in Enumerable.Range(0, n) select mapJECGTA((from j in js select jecA[j].jecgtT[i]).ToArray()).gti).ToArray();
        }
        private JGTSD mapJECGTA(JECGT[] jecA)
        {
            JGTSD gtd;
            if (!gtSS.tryGetJECATD(jecA, out gtd))
                gtd = mapNewJECAGTD(jecA);
            return gtd;
        }
        private JGTSD mapNewJECAGTD(JECGT[] jecA)
        {
            Debug.Assert(!gtSS.hasJECA(jecA));
            var gtd = sources.makeNewGTD(jecA);
            return gtd;
        }
        private void mapJGTTsToGTTI(JI j, JGTTSD gttd, IEnumerable<GTT> jgtts)
        {
            foreach (var jgtt in jgtts)
                mapJGTT(j, gttd, jgtt);
        }
        private ISet<GTT> makeJGTTs(int j, int[] gtis)
        {
            var ju = pus[j];
            return u.makeJGTTs(j, from gti in gtis select ju.depthFilterStrict(gtSS.getJTs(j, gti)));
        }
        protected void mapJGTs(JI j,JGTSD gtd, IEnumerable<GT> jgts)
        {
            foreach (var jgt in jgts)
                mapJGT(j, gtd, jgt);
        }
        protected void mapJGT(JI j, JGTSD gtd, GT jgt)
        {
            var jecX = gtd.jec(j);
            JECGT jec;
            if (!gtSS.tryGetJTJEC(j, jgt, out jec))
                mapNewJGTInt(j, jecX, jgt);
            else
                if (jec != gtd.jec(j))
                    mergeJECGTs(j, jec, jecX);
        }
        protected void mapNewJGTInt(JI j,JECGT jec,GT jgt)
        {
            Debug.Assert(!gtSS.hasJT(j, jgt));
            gtSS.mapNewJTToJECInt(j, jgt, jec);//JoinTemplateMaker.mapNewJGTInt
            foreach (var gti in jec.tis)
                enqueuePropagateGTI(gti);
        }
        protected void mapNewJGTTInt(JI j, JECGTT jec, GTT jgtt)
        {
            Debug.Assert(!gttSS.hasJT(j, jgtt));
            gttSS.mapNewJTToJECInt(j, jgtt, jec);//JoinTemplateMaker.mapNewJGTTInt
            foreach (var gtti in jec.tis)
                enqueuePropagateGTTI(gtti);
        }
        protected void mapJGTTs(JI j, JGTTSD gttd, IEnumerable<GTT> jgtts)
        {
            foreach (var jgtt in jgtts)
                mapJGTT(j, gttd, jgtt);
        }
        protected void mapJGTT(JI j, JGTTSD gttd,  GTT jgtt)
        {
            var jec0 = gttd.jec(j);
            JECGTT jec;
            if (gttSS.tryGetJTJEC(j, jgtt, out jec))
            { }// Debug.Assert(jec == jec0);
            else
                mapNewJGTTInt(j, jec0, jgtt);// sources.gtts.mapNewJT(j,jec0, jgtt);
        }
        #endregion mapping

        #region merge
        public void mergeJECGTs(JI j, JECGT jecX, JECGT jecY)
        {
            if (jecX == jecY)
                return;
            JECGT jecFrom, jecTo;
            if (jecX.index < jecY.index)
            {
                jecFrom = jecY;
                jecTo = jecX;
            }
            else
            {
                jecFrom = jecX;
                jecTo = jecY;

            }
            Debug.Assert(jecFrom.index > jecTo.index);
            sources.mergeJECGT(j, jecFrom, jecTo, enqueuePropagateGTI, enqueueMergeGTI, enqueuePropagateGTTI, enqueueMergeGTTI);
        }
        protected override void mergeSources(JGTSD gtdFrom, JGTSD gtdTo)
        {
            foreach (var j in js)
                mergeJECGTs(j,gtdFrom.jec(j), gtdTo.jec(j));
            gtSS.mergeTDInt(gtdFrom, gtdTo);
        }
        protected override void mergeSources(JGTTSD gttdFrom, JGTTSD gttdTo)
        {
            foreach (var j in js)
            {
                var jecFrom = gttdFrom.jec(j);
                var jecTo = gttdTo.jec(j);
//                sources.mergeJECGTT(j,)
                Debug.Assert(jecFrom.jecgtT.SequenceEqual(jecTo.jecgtT));
 /*               if (!ReferenceEquals(jecFrom,jecTo))
                {
                    foreach (var jgtt in jecFrom.jts)
                        sources.gtts.remapJTToJECInt(j, jgtt, jecTo);
                    foreach (var gtti in jecFrom.tis)
                        sources.gtts.remapTIToJECInt(j, getGTTD(gtti), jecTo);
                }*/
                Debug.Assert(jecFrom == jecTo);
            }
            gttSS.mergeTDInt(gttdFrom, gttdTo);
        }
        /*public void mergeJECGTTs(JI j, JECGTT jecX, JECGTT jecY)
        {
            if (jecX == jecY)
                return;
            JECGTT jecFrom, jecTo;
            if (jecX.index < jecY.index)
            {
                jecFrom = jecY;
                jecTo = jecX;
            }
            else
            {
                jecFrom = jecX;
                jecTo = jecY;

            }
            Debug.Assert(jecFrom.index > jecTo.index);
            sources.mergeJECGTT(j, jecFrom, jecTo, enqueueMergeGTI, (jec1, jec2) => enqueueMergeJECGTT(j, jec1, jec2));
        }*/
        #endregion merge

        #region propagate
        protected sealed override void completeNewGTTSources(JGTTSD gttd)
        {
            foreach (var j in js)
            {
                var ju = pus[j];
                var jgtts = makeJGTTs(j, gttd.gtiT);// (from gti in gttd.gtis select new HashSet<GT>(getGTD(gti).jgts(j))).ToArray());
                mapJGTTs(j, gttd, jgtts);
            }
        }
        protected sealed override void propagateUpGTISources(JGTSD gtd)
        {
            if (gtd.sgttis.Count() == 0 && gtd.lgts.All(lgt => !universe.getGTRGTTs(lgt).Any()))
                return;
            foreach (var j in js)
            {
                var njgts = new HashSet<GT>(gtd.njgts(j));
                if (njgts.Count == 0)
                    continue;
                var gti = gtd.gti;
                var sgtiAs = new List<Tuple<int[], JGTTSD>>(
                    from sgtti in gtd.sgttis
                    let gttd = getGTTD(sgtti)
                    select new Tuple<int[], JGTTSD>(gttd.gtiT, gttd));
                /*                if (gtd.isActual)
                                    sgtiAs.AddRange(
                                        from lgt in gtd.lgts
                                        from rgtt in universe.getGTRGTTs(lgt)
                                        select new Tuple<int[], JGTTD>(
                                            (from rgttLGT in rgtt.gts select gtSS.getTI(rgttLGT)).ToArray(), null)
                                            );*/
                foreach (var p in sgtiAs)
                {
                    var gtiA = p.Item1;
                    var gttd = p.Item2;
                    var n = gtiA.Length;
                    Debug.Assert(gtiA.Contains(gti));
                    for (var i = 0; i < n; i++)
                    {
                        var gtii = gtiA[i];
                        if (gtii == gti)
                        {
                            var jgtts = universe.makeJGTTs(j, (
                                from i2 in Enumerable.Range(0, n)
                                let gti2 = gtiA[i2]
                                select i2 == i ? njgts : new HashSet<GT>(getGTD(gti2).jgts(j))
                            ).ToArray());
                            mapJGTTsToGTTI(j, gttd, jgtts);
                        }
                    }
                }
            }
            foreach (var rgtt in new HashSet<GTT>(from lgt in gtd.lgts from rgtt in universe.getGTRGTTs(lgt) select rgtt))
            {
                var n = rgtt.gtT.Count;
                var gtiT = (from gt in rgtt.gtT select gtSS.getTI(gt)).ToArray();
                Debug.Assert(gtiT.Contains(gtd.gti));
                for (var i = 0; i < n; i++)
                    if (gtiT[i]==gtd.gti)
                    {
                        var jgttsA = (from j in js select
                            universe.makeJGTTs(j, (
                                from i2 in Enumerable.Range(0, n)
                                let gti2 = gtiT[i2]
                                select i2 == i ? gtd.njgts(j) : new HashSet<GT>(getGTD(gti2).jgts(j)))
                            )).ToArray();
                        if (jgttsA.All(jgtts => jgtts.Any()))
                            mapRGTT(gtiT, jgttsA);
                    }
            }
        }
        protected sealed override void updateRGTTSources(JGTSD gtd, GTT rgtt)
        {
            var gti = gtd.gti;
            var gtiT = (from rgttLGT in rgtt.gtT select gtSS.getTI(rgttLGT)).ToArray();
            var n = gtiT.Length;
            Debug.Assert(gtiT.Contains(gti));
            var jgttsA = (from j in js select
                universe.makeJGTTs(j, (
                    from i2 in Enumerable.Range(0, n)
                    let gti2 = gtiT[i2]
                    select new HashSet<GT>(getGTD(gti2).jgts(j))
                ))).ToArray();
            if (jgttsA.All(jgtts => jgtts.Any()))
                mapRGTT(gtiT, jgttsA);
        }
        private void mapRGTT(GTI[] gtiT, IEnumerable<GTT>[] jgttsA)
        {
            #region consistency
#if DEBUG
            Debug.Assert(gtiT.Length > 0);
            foreach (var gti in gtiT)
                Debug.Assert(getGTD(gti).depth >= 0 && getGTD(gti).depth < maxDepth);
#endif
            #endregion consistency
            if (jgttsA.Any(jgtts=>!jgtts.Any()))
                return;
            JGTTSD gttd = null;
            GTTI gtti;
            if (tryGetGTTIByGTIs(gtiT, out gtti))
                gttd = getGTTD(gtti);
            else
            {
                var jecgtTA = (from j in js select (from gti in gtiT select getGTD(gti).jecA[j]).ToArray()).ToArray();
                var jecgttA = (from j in js select sources.makeJECGTT(j, jecgtTA[j])).ToArray();
                gttd = mapJECGTTA(jecgttA);
                var d = (from gti in gtiT select getGTD(gti).depth).Max();
                setDepth(gttd, d);
                gtti = gttd.gtti;
            }
            Debug.Assert(gttd.isFeasible);
            setActual(gttd);
            foreach (var j in js)
                mapJGTTs(j, gttd, jgttsA[j]);
            if (gttd.isAnyUpdated)
                enqueuePropagateGTTI(gtti);
        }

        private void mapRGFA(Function f,JGTTSD gttd,ISet<GT>[] jgtsA)
        {
            var actual = jgtsA.All(jgts => jgts.Any());
            JGTSD gtd = null;
            {
                GTI gti;
                if (gttd.tryGetSGFA(f, out gti))
                    gtd = getGTD(gti);
                else if (actual)
                {
                    gtd = mapGFA(f, gttd);
                    setDepth(gtd, gttd.depth + 1);
                }
            }
            if (gtd != null)
            {
                Debug.Assert(gtd.isFeasible);
                if (actual)
                    setActual(gtd);
                foreach (var j in js)
                    mapJGTs(j, gtd, jgtsA[j]);
                if (gtd.isAnyUpdated)
                    enqueuePropagateGTI(gtd.gti);
            }
        }
        protected override sealed void propagateGTTINLGTTs(JGTTSD gttd)
        {
            var jgttsA = (from j in js select gttd.jgtts(j)).ToArray();
            foreach (var f in new HashSet<Function>(from nlgtt in gttd.nlts from rgfa in universe.getRGFAs(nlgtt) select rgfa))
            {
                var jgtsA = (from j in js select universe.makeJGTs(j, f, jgttsA[j])).ToArray();
                mapRGFA(f, gttd, jgtsA);
            }
            gttd.clearNLTs();
        }

        protected sealed override void propagateUpGTTISources(JGTTSD gttd)
        {
            if (gttd.depth < 0 || gttd.depth >= maxDepth)
                return;
            var njgttsA = (from j in js select gttd.njgtts(j)).ToArray();
            foreach (var j in js)
            {
                var njgtts = njgttsA[j];
                if (!njgtts.Any() && !gttd.isDepthDownUpdated)
                    continue;
                foreach (var f in gttd.allSGFAs)
                {
                    var gti = gttd.getSGFA(f);
                    var gtd = getGTD(gti);
                    var jgts = universe.makeJGTs(j, f, njgtts);
                    mapJGTs(j, gtd, jgts);
                }
            }
            foreach (var f in new HashSet<Function>(from lgtt in gttd.lgtts from f in universe.getRGFAs(lgtt) select f))
            {
                var jgtsA = (from j in js select universe.makeJGTs(j, f, njgttsA[j])).ToArray();
                mapRGFA(f, gttd, jgtsA);
            }
        }
        protected override sealed void propagateGTINGFAsSources(JGTSD gtd, IEnumerable<Tuple<Function, GTTI>> ngfas)
        {
            foreach (var j in js)//update jgts
                foreach (var ngfa in ngfas)
                    mapJGTs(j,gtd, universe.makeJGTs(j, ngfa.Item1, getGTTD(ngfa.Item2).jgtts(j)));

            if (gtd.depth == minDepth || gtd.depth == topDepth || jn == 1 || gtd.isDepthDownUpdated || !ngfas.Any())
                return;
            Debug.Assert(jn == 2);
            var ugfas = ngfas;
            foreach (var j in js)//propagate down new gfas
            {
                var X = j;
                var Y = 1 - j;
                var jgtECY = gtd.jec(Y);
                foreach (var ngfa in ugfas)
                {
                    var f = ngfa.Item1;
                    var gtti = ngfa.Item2;
                    var gttd = getGTTD(gtti);
                    var gttECX = gttd.jec(X);
                    foreach (var jgfaY in jgtECY.jgfas(f))
                    {
                        var gttECY = mapJGTTEC(Y, jgfaY.gtt);
                        var ngttd = mapJECTGTT(X, gttECX, gttECY);
                        mapGFA(gtd, f, ngttd);
                    }
                }
            }
        }
        protected sealed override void propagateDownGTISources(JGTSD gtd)
        {
            if (gtd.depth != minDepth && gtd.depth != topDepth)
            {
                Debug.Assert(jn == 1 || jn == 2);
                if (jn == 1)
                {
                    Debug.Assert(js.Length == 1 && js[0] == 0);
                    var j = 0;
                    if (gtd.njgts(j).Any() || gtd.isDepthDownUpdated)
                    {
                        var ujgts = (gtd.isDepthDownUpdated) ? gtd.jgts(j) : gtd.njgts(j);
                        foreach (var njgt in ujgts)
                            foreach (var njgfa in njgt.gfas)
                                if (universe.inScope(njgfa.function))
                                {
                                    var f = njgfa.function;
                                    var dd = (gtd.depth >= 0) ? -1 : gtd.depth - 1;
                                    var gttd = map1JGTT(njgfa.gtt);
                                    mapGFA(gtd, f, gttd);
                                }
                    }
                }
                else
                {//TODO exclude pairs that are checked twice njgt x ngfa + njgt x njgt
                    Debug.Assert(jn == 2);
                    foreach (var j in js)
                    {
                        var X = j;
                        var njgtsX = gtd.njgts(X);
                        if (!njgtsX.Any() && !gtd.isDepthDownUpdated)
                            continue;
                        var jgtECX = gtd.jec(X);
                        var ujgts = (gtd.isDepthDownUpdated) ? jgtECX.jts : gtd.njgts(X);
                        var Y = 1 - j;
                        var jgtECY = gtd.jec(Y);
                        foreach (var njgt in ujgts)
                            foreach (var njgfa in njgt.gfas)
                            {
                                var f = njgfa.function;
                                var jgttX = njgfa.gtt;
                                var jgfasY = jgtECY.jgfas(f);
                                JECGTT gttECX = null;
                                foreach (var jgfaY in jgfasY)
                                {
                                    if (gttECX == null)
                                        gttECX = mapJGTTEC(X, jgttX);
                                    var gttECY = mapJGTTEC(Y, jgfaY.gtt);
                                    var gttd = mapJECTGTT(X, gttECX, gttECY);
                                    mapGFA(gtd, f, gttd);
                                }
                                foreach (var gtti in gtd.getGFAs(f).ToList())
                                {
                                    if (gttECX == null)
                                        gttECX = mapJGTTEC(X, jgttX);
                                    var gttECY = getGTTIEC(Y, gtti);
                                    var gttd = mapJECTGTT(X, gttECX, gttECY);
                                    mapGFA(gtd, f, gttd);
                                }
                            }
                    }
                }
            }
            gtd.clearNewSources();
        }
        private JECGTT getGTTIEC(JI j, GTTI gtti) { return gttSS.getTD(gtti).jec(j); }
        private JECGTT getJGTTEC(JI j, GTT jgtt)
        {
            return gttSS.getJTJEC(j, jgtt);
        }
        private JGTTSD mapJECTGTT(JI j, JECGTT jecGTTECX, JECGTT jecGTTECY)
        {
            Debug.Assert(jn == 2);
            var jecA = (j == 0) ? new[] { jecGTTECX, jecGTTECY } : new[] { jecGTTECY, jecGTTECX };
            return mapJECGTTA(jecA);
        }
        protected sealed override void propagateDownGTTISources(JGTTSD gttd) { }
        #endregion propagate

        #region accessors
        protected bool tryGetJGTGTIs(int j,GT jgt, out ISet<GTI> gtis)
        {
            return gtSS.tryGetJTTIs(j, jgt, out gtis);
        }
        protected bool tryGetJGTTGTTIs(int j, GTT jgtt, out ISet<GTTI> gttis)
        {
            return gttSS.tryGetJTTIs(j, jgtt, out gttis);
        }
        #endregion accessors

        #region members
        public int[] js { get { return universe.js; } }
        public JU u { get { return universe; } }
        public Universe[] pus { get { return u.pus; } }
        protected int jn { get { return universe.jn; } }
        #endregion members

        #region etc
        private ICollection<Function> getJGTTSGFAs(int j,GTT jgtt)
        {
            return pus[j].gttData[jgtt].sgfas.Keys;
        }
        private bool jgttHasSGFA(int j, GTT jgtt,Function f)
        {
            return pus[j].gttData[jgtt].sgfas.ContainsKey(f);
        }
        private GFA getJGTTSGFA(int j, GTT jgtt, Function f)
        {
            return pus[j].gttData[jgtt].sgfas[f];
        }
        #endregion etc
    }
}
