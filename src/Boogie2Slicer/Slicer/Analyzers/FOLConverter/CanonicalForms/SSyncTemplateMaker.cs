using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using GTI = System.Int32;
using GTTI = System.Int32;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    class SSyncTemplateMaker : STemplateMaker
    {
        #region instance creation
        public static Universe.IEmbedTemplate make(SU universe,Revision revision,bool satEqs)
        {
            return new SSyncTemplateMaker(universe,revision).make(satEqs);
        }
        private SSyncTemplateMaker(SU universe, Revision revision)
            : base(universe)
        {
            this.revision = revision;
        }
        #endregion instance creation

        #region initial gts and gtts
        private Universe.IEmbedTemplate make(bool satEqs)
        {
            makeInitialTermsAndTuples();
            if (satEqs)
            {
                var canonicalSets = universe.queues.getEquivalenceClasses();
                makeInitialSets(canonicalSets);
            }
            return mainCommon();
        }
        private void updatePGT(GTI gti,GT opgt,GT npgt)
        {
            var gtd = getGTD(gti);
            gtSS.removePT(opgt);
            mapPGT(gtd, npgt);
        }
        private void updatePGTT(GTTI gtti, GTT opgtt, GTT npgtt)
        {
            var gttd = getGTTD(gtti);
            gttSS.removePT(opgtt);
            mapPGTT(gttd, npgtt);
        }
        private void makeInitialTermsAndTuples()
        {
            #region initial gts
            foreach (var pgtKV in revision.gts)
            {
                var pgt = pgtKV.Key;
                foreach (var cgt in pgtKV.Value)
                {//Look for direct updated source pgt
                    Debug.Assert(!upToDatePGT(cgt));
                    GTI gti;
                    if (tryGetPGTGTI(cgt,out gti))
                        updatePGT(gti, cgt, pgt);
                }
                foreach (var pgfa in pgt.gfas)
                { //Look for new PGFA on existing source PGTT
                    var f = pgfa.function;
                    if (!universe.inScope(f))
                        continue;
                    var pgtt = pgfa.gtt;
                    Debug.Assert(!revision.gtts.Any(kv => kv.Value.Contains(pgtt)));
                    GTI gti;
                    GTTI gtti;
                    if (tryGetPGTTGTTI(pgtt, out gtti))
                    {
                        var gttd = getGTTD(gtti);
                        if (gttd.tryGetSGFA(f, out gti))
                            mapPGT(gti, pgt);
                        else foreach (var lgtt in gttd.lgtts)
                            if (guniverse.hasRGFA(f, lgtt))
                            {
                                var gtd = mapNewActualGFA(f, gttd);
                                mapPGT(gtd, pgt);
                            }

                    }
                }
            }
            #endregion initial gts

            #region initial gtts
            foreach (var gttKV in revision.gtts)
            {
                var pgtt = gttKV.Key;
                var cgtts = gttKV.Value;
                foreach (var cgtt in cgtts)
                {//Look for direct updated source pgtt
                    Debug.Assert(!upToDatePGTT(cgtt));
                    GTTI gtti;
                    if (tryGetPGTTGTTI(cgtt, out gtti))
                        updatePGTT(gtti, cgtt, pgtt);
                }
                {
                    //Look for new pgtt of existing pgts
                    var pgts = pgtt.gtT;
                    var num = pgts.Count;
                    var gtiT = new GTI[num];
                    GTTI gtti;
                    if (Enumerable.Range(0, num).All(i => tryGetPGTGTI(pgts[i], out gtiT[i])))
                        if (tryGetGTTIByGTIs(gtiT, out gtti))
                            mapPGTT(gtti, pgtt);
                        else
                        {
                            var lgtT = new GT[gtiT.Length];
                            for (var i=0; i<gtiT.Length;i++)
                            {
                                var gtd = getGTD(gtiT[i]);
                                Debug.Assert(gtd.lgts.Count <= 1);
                                if (gtd.isActual && gtd.lgts.Count==1)
                                    lgtT[i] = gtd.lt();
                                else
                                    goto skip;
                            }
                            GTT prgtt;
                            if (guniverse.termRepository.tryGetGTT(lgtT, out prgtt) && guniverse.hasRGTT(prgtt))
                            {
                                var gttd = mapActualGTT(gtiT);
                                mapPGTT(gttd, pgtt);
                            }
                            skip:;
                        }
                }
            }
            #endregion initial gtts
        }

        #endregion initial gts and gtts

        #region members
        private readonly Revision revision;
        #endregion members
    }
}
