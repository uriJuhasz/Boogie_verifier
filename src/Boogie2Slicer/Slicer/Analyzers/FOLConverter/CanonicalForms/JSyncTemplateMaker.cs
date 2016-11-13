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
    class JSyncTemplateMaker : JTemplateMaker
    {
        public static Universe.IEmbedTemplate make(JU universe, Revision[] predecessorRevisions, bool satEqs)
        {
            return new JSyncTemplateMaker(universe, predecessorRevisions).make(satEqs);
        }
        private JSyncTemplateMaker(JU universe, Revision[] predecessorRevisions)
            : base(universe)
        {
            this.jRevisions = predecessorRevisions;
        }
        private Universe.IEmbedTemplate make(bool satEqs)
        {
            if (universe.predecessorGeradeKaput)
                sources.joineeDied(enqueueMergeGTI, enqueueMergeGTTI,enqueuePropagateGTTI);
            makeInitialTermsAndTuples();
            if (satEqs)
            {
                var canonicalSets = universe.queues.getEquivalenceClasses();
                makeInitialSets(canonicalSets);
            }
            return mainCommon();
        }
        private void makeInitialTermsAndTuples()
        {
            #region initial gts
            var rgfaMap = new Dictionary<JGTTSD, ISet<Function>>();
            foreach (var j in js)
            {
                var jr = jRevisions[j];
                var pu = pus[j];
                foreach (var jgtKV in jr.gts)
                {
                    var jgt = jgtKV.Key;
                    foreach (var cjgt in jgtKV.Value)
                    {
                        Debug.Assert(!upToDateJGT(j, cjgt));
                        if (gtSS.hasJT(j, cjgt))
                            updateJGT(j, cjgt, jgt);
                    }
                    foreach (var jgfa in jgt.gfas)
                    {
                        var f = jgfa.function;
                        if (!universe.inScope(f))
                            continue;
                        var jgtt = jgfa.gtt;
                        Debug.Assert(!jr.gtts.Any(kv => kv.Value.Contains(jgtt)));
                        ISet<GTTI> gttis;
                        if (tryGetJGTTGTTIs(j, jgtt, out gttis))
                            foreach (var gtti in gttis.ToList())
                            {
                                GTI gti;
                                var gttd = getGTTD(gtti);
                                if (gttd.tryGetSGFA(f, out gti))
                                {
                                    var gtd = getGTD(gti);
                                    mapJGT(j, gtd, jgt);
                                }
                                else foreach (var lgtt in gttd.lgtts)
                                    if (guniverse.hasRGFA(f, lgtt))
                                        rgfaMap.insert(gttd, f);
                            }
                    }//foreach (var jgfa in jgt.gfas)
                }//foreach (var jgtKV in jr.gts)
            }//for (var j = 0; j < jn; j++)

            foreach (var e1 in rgfaMap)
            {
                var gttd = e1.Key;
                foreach (var f in e1.Value)
                {
                    var jgtsA = (from j in js select universe.makeJGTs(j, f, from cjgtt in gttd.jgtts(j) select pus[j].transitiveMerge(cjgtt))).ToArray();
                    if (jgtsA.All(s => s.Any()))
                    {
                        GTI gti;
                        JGTSD gtd;
                        if (gttd.tryGetSGFA(f, out gti))
                            gtd = getGTD(gti);
                        else
                            gtd = mapNewActualGFA(f, gttd);
                        foreach (var j in js)
                            mapJGTs(j, gtd, jgtsA[j]);
                    }
                }
                
            }
            #endregion initial gts



            #region initial gtts
            var rgtts = new HashSet<GTT>();
            foreach (var j in js)
            {
                var jr = jRevisions[j];
                var ju = pus[j];
                foreach (var gttKV in jr.gtts)
                {
                    var jgtt = gttKV.Key;
                    var cjgtts = gttKV.Value;
                    foreach (var cjgtt in cjgtts)
                    {//Look for direct updated source pgtt
                        Debug.Assert(!upToDateJGTT(j,cjgtt));
                        if (gttSS.hasJT(j, cjgtt))
                            updateJGTT(j, cjgtt, jgtt);
                    }
                    if (jgtt.Count>0)
                    {
                        var jgts = jgtt.gtT;
                        var num = jgts.Count;
                        var gtiSets = new ISet<GTI>[num];
                        if (Enumerable.Range(0, num).All(i => tryGetJGTGTIs(j, jgts[i], out gtiSets[i])))
                        {
                            foreach (var gtti in getExistingGTTIs(gtiSets))
                                mapJGTT(j,getGTTD(gtti), jgtt);
                            foreach (var gti0 in gtiSets[0])
                            {
                                var gtd0 = getGTD(gti0);
                                    foreach (var lgt0 in gtd0.lgts)
                                        foreach (var rgtt in universe.getGTRGTTs(lgt0))
                                            if (
                                                !rgtts.Contains(rgtt)
                                                && rgtt.Count == jgtt.Count
                                                && Enumerable.Range(0, jgtt.Count).All(i => gtiSets[i].Contains(getLGTGTI(rgtt.gtT[i]))))
                                                rgtts.Add(rgtt);

                            }
                        }
                    }
                }
            }
            foreach (var rgtt in rgtts)
            {
                var gtiT = (from gt in rgtt.gtT select gtSS.getTI(gt)).ToArray();
                var jgttsA = (from j in js select universe.makeJGTTs(j, (from gti in gtiT select from cjgt in gtSS.getTD(gti).jgts(j) select pus[j].transitiveMerge(cjgt))).ToArray()).ToArray();
                if (jgttsA.All(s => s.Any()))
                {
                    GTTI gtti;
                    JGTTSD gttd;
                    if (tryGetGTTIByGTIs(gtiT, out gtti))
                        gttd = getGTTD(gtti);
                    else
                        gttd = mapActualGTT(gtiT);
                    foreach (var j in js)
                        mapJGTTs(j, gttd, jgttsA[j]);
                }
            }
            #endregion initial gtts

            #region dead predecessors
            if (universe.predecessorGeradeKaput)
            {//TODO
                universe.predecessorGeradeKaput = false;
                foreach (var gtd in gtSS.allTDs)
                {
                    gtd.renewJTs();
                    if (gtd.isAnyUpdated)
                        enqueuePropagateGTI(gtd.gti);
                }
                foreach (var gttd in gttSS.allTDs)
                {
                    gttd.renewJTs();
                    if (gttd.isAnyUpdated)
                        enqueuePropagateGTTI(gttd.gtti);
                }

                foreach (var lgt in universe.allGTs)
                    foreach (var gfa in lgt.gfas)
                        mapGFA(getGTD(getLGTGTI(lgt)), gfa.function,getGTTD(getLGTTGTTI(gfa.gtt)));
            }
            #endregion dead predecessors
        }
        private IEnumerable<GTTI> getExistingGTTIs(ISet<GTI>[] gtiSets)
        {
            Debug.Assert(gtiSets.Length > 0);
            return new HashSet<GTI>(
                from gti0 in gtiSets[0]
                let gtd0 = getGTD(gti0)
                from sgtti in gtd0.sgttis
                let gttd = getGTTD(sgtti)
                where gttd.gtiT.Length==gtiSets.Length
                where Enumerable.Range(0, gtiSets.Length).All(i => gtiSets[i].Contains(gttd.gtiT[i]))
                select sgtti
                );
        }
        protected bool upToDateJGT(JI j, GT jgt) { return pus[j].upToDateGTMM(jgt); }
        protected bool upToDateJGTT(JI j, GTT jgtt) { return pus[j].upToDateGTTMM(jgtt); }
        protected void updateJGT(JI j, GT cjgt, GT jgt) {
            Debug.Assert(gtSS.hasJT(j, cjgt));
            Debug.Assert(pus[j].transitiveMerge(cjgt) == jgt);
            var jec = gtSS.getJTJEC(j, cjgt);
            gtSS.removeJT(j, cjgt);
            JECGT jec2;
            if (gtSS.tryGetJTJEC(j, jgt,out jec2))
            {
                if (jec != jec2)
                    mergeJECGTs(j, jec, jec2);
                else
                    Debug.Assert(jec.hasJT(jgt));
            }
            else
            {
                Debug.Assert(!gtSS.hasJT(j, jgt));
                mapNewJGTInt(j, jec, jgt);
            }
        }
        protected void updateJGTT(JI j, GTT cjgtt, GTT jgtt) {
            Debug.Assert(gttSS.hasJT(j, cjgtt));
            Debug.Assert(pus[j].transitiveMerge(cjgtt) == jgtt);
            var jec = gttSS.getJTJEC(j, cjgtt);
            gttSS.removeJT(j, cjgtt);
            JECGTT jec2;
            if (gttSS.tryGetJTJEC(j, jgtt, out jec2))
            {
                if (jec != jec2)
                { } // Debug.Assert(false); // mergeJECGTTs(j, jec, jec2);
                else
                    Debug.Assert(jec.hasJT(jgtt));
            }
            else
            {
                Debug.Assert(!gttSS.hasJT(j, jgtt));
                mapNewJGTTInt(j, jec, jgtt);
            }
        }

        #region members
        private readonly Revision[] jRevisions;
        #endregion members
    }
    public static class JSTMU
    {
        public static bool insertJ<T, S, U>(this IDictionary<T, IDictionary<S, ISet<U>[]>> m, T t, S s, JI j, int jn, U u)
        {
            IDictionary<S, ISet<U>[]> e1;
            if (!m.TryGetValue(t, out e1))
                m[t] = e1 = new Dictionary<S, ISet<U>[]>();
            ISet<U>[] e2;
            if (!e1.TryGetValue(s, out e2))
                e1[s] = e2 = (from j0 in Enumerable.Range(0, jn) select new HashSet<U>()).ToArray();
            return e2[j].Add(u);
        }

    }
}
