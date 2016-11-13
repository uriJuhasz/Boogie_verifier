using Slicer.Analyzers.FOLConverter.CanonicalForms.TermRepositoryNS;
using GTI = System.Int32;
using GTTI = System.Int32;
using Depth = System.Int32;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System;
using Slicer.Analyzers.FOLConverter.Formulae;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms{
    public abstract class IUNG : Universe
    {
        protected IUNG(ISRS srs, TermRepository tr) : base(srs, tr) { }
        public abstract USourceStructureNG gSourceStructure { get; }

        #region consistency
        internal override sealed bool sourcesComplete() { return gSourceStructure.sourcesComplete(); }
        #endregion consistency
    }
    public abstract class IU<GTSD, GTTSD, USS, GTSS, GTTSS> : IUNG
    where GTSD : AGTSD
    where GTTSD : AGTTSD
    where GTSS : TSourceStructure<GT, GTSD>
    where GTTSS : TSourceStructure<GTT, GTTSD>
    where USS : USourceStructure<GTSD, GTTSD, GTSS, GTTSS>
    {
        #region instance creation
        protected IU(ISRS srs, TermRepository tr) : base(srs, tr) { addToScope(TruePredicate.get); }
        #endregion instance creation

        #region new elements
        //        protected abstract void completeNewGTTSources(GTT gtt);
        #endregion new elements

        #region depth
        public override int gttDepth(GTT gtt)
        {
            return sources.gtts.getLTTD(gtt).depth;
            /*            if (gtt.gtT.Count == 0)
                            return 0;
                        else
                            return gtt.gtT.Max(gt => gtDepth(gt));*/
        }
        public override Depth gtDepth(GT gt) { return sources.getGTIDepth(sources.getLGTGTI(gt)); }
        public override void setGTDepth(GT gt, int newDepth)
        {
            var gti = sources.getLGTGTI(gt);
            var oldDepth = sources.getGTIDepth(gti);
            Debug.Assert(oldDepth >= 0 && oldDepth < maxGTDepth);
            Debug.Assert(newDepth >= 0 && newDepth < maxGTDepth);
            if (newDepth < oldDepth)
                sources.setGTIDepthInt(gti, newDepth);
        }
        #endregion depth

        #region members
        public abstract USS sources { get; }
        public override USourceStructureNG gSourceStructure { get { return sources; } }
        #endregion members

        #region crap
        protected sealed override void markPredecessors()
        {
            sources.markPredecessors();
        }
        protected override void cutSourceCrap()
        {
            sources.cutCrap();
        }
        public sealed override IEnumerable<GTT> getGTTPGTTs(int pi, GTT lgtt) {return sources.getGTTIPGTTs(pi, sources.getLGTTGTTI(lgtt)); }
        public sealed override IEnumerable<GT> getGTPGTs(int pi, GT lgt) {return sources.getGTIPGTs(pi, sources.getLGTGTI(lgt)); }
        public sealed override IEnumerable<GFA> getGFAPGFAs(int pi, GFA lgfa)
        {
            return new HashSet<GFA>(from pgtt in getGTTPGTTs(pi, lgfa.gtt)
                                    let pgfa = pus[pi].tryGetGFA(lgfa.function, pgtt)
                                    where pgfa != null
                                    select pgfa);
        }
        #endregion crap

        #region embed
        protected override void embedGT(GTI gti, GT gt, IEnumerable<GT> mgts)
        {
            #region preconditions
            Debug.Assert(!mgts.Contains(gt));
            foreach (var mgt in mgts)
                Debug.Assert(mmGT(mgt) == gt);
            Debug.Assert(upToDateGTMM(gt));
            #endregion preconditions
            sources.gts.setLT(gti, gt);
            //            foreach (var mgt in mgts)
            //                setMergedGT(mgt, gt);
            embedGT(gt);
        }
        protected override void embedGTT(GTTI gtti, GTT gtt, IEnumerable<GTT> mgtts)
        {
            #region preconditions
            Debug.Assert(!mgtts.Contains(gtt));
            Debug.Assert(mgtts.All(mgtt => mmGTT(mgtt) == gtt));
            Debug.Assert(upToDateGTTMM(gtt));
            #endregion preconditions
            sources.gtts.setLT(gtti, gtt);
            //            foreach (var mgtt in mgtts)
            //                setMergedGTT(mgtt, gtt);
            embedGTT(gtt);
        }
        #endregion embed

        #region mutators
        protected override void removeSources(GT lgt)
        {
            sources.removeLGTGTD(lgt);
        }
        protected override void removeSources(GTT lgtt)
        {
            sources.removeLGTTGTTD(lgtt);
        }

        #endregion mutators

        #region stats
        public override int numGTSDs { get { return sources.gts.numTDs; } }
        public override int numGTTSDs { get { return sources.gtts.numTDs; } }
        public override string statString
        {
            get
            {
                return String.Format("{0,-15}: GT:{2,4}[{24,4}]/{3,5} GTT:{5,4}[{25,4}]+{6,4}/{7,6} GFA/B:{22,5}/{23,5} GAF:{10,3}/{11,4} GC:{12,3}/{14,5} FTT:{15,5}/{16,6} FAF:{18,4}/{19,5} FC:{20,3}/{21,5}",
                    ToString(),

                    numGoalGTs,
                    gtData.Count,
                    termRepository.gts.Count,

                    localUsedGTTs.Count,
                    gttData.Count,
                    numRGTTs(),
                    termRepository.gtts.Count,

                    numAssumedUGCs,
                    numGoalGLs,
                    allGAFs.Count,
                    termRepository.gafs.Count,

                    numGCs,
                    numGoalGCs,
                    termRepository.gcCache.Count,

                    allFTTs.Count,
                    termRepository.fttCache.Count,

                    assumedUFCs.Count,
                    allFAFs.Count(),
                    termRepository.fafs.Count,

                    numFCs,
                    termRepository.fcCache.Count,

                    "X","Y",
//                    termRepository.gfas.Count,
//                    termRepository.gfaBases.Count,

                    numGTSDs, 
                    numGTTSDs
                    );

            }
        }

        #endregion stats

        #region cleanup
        protected override void removeUnusedSources()
        {
            sources.removeUnused();
        }
        #endregion cleanup

        #region map reads
        protected override void importMRGTEqGCs(IEnumerable<GT> gts) { }

        #endregion map reads
    }//class IU
}
