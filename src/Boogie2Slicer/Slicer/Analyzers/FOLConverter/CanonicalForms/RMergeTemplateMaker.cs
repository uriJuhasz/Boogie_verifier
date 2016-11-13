using System.Collections.Generic;
using GTI = System.Int32;
using GTTI = System.Int32;
using Depth = System.Int32;
using System;
using Slicer.Analyzers.FOLConverter.Formulae;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    abstract class RootTemplateMaker : TemplateMaker<
        RU,
        RSourceStructure,
        RGTSD,
        RGTTSD,
        RTSourceStructure<GT, RGTSD>,
        RTSourceStructure<GTT, RGTTSD>>
    {
        #region instance creation
        protected RootTemplateMaker(RU universe)
            : base(universe)
        {
        }
        #endregion instance creation

        #region abstracts
        public override IUNG guniverse{get{return universe;}}
//        protected override void checkSourcesNoLGTs(){}
        protected sealed override void propagateUpGTISources(RGTSD gtd) { }
        protected sealed override void propagateDownGTISources(RGTSD gttd) { }
        protected sealed override void propagateUpGTTISources(RGTTSD gttd) { }
        protected sealed override void propagateDownGTTISources(RGTTSD gttd) { }
        protected sealed override void mergeSources(RGTSD gtdFrom, RGTSD gtdTo) { }
        protected sealed override void mergeSources(RGTTSD gttdFrom, RGTTSD gttdTo) { }
        protected sealed override void completeNewGTTSources(RGTTSD gttd) { }
        #endregion abstracts
    }
    class RMergeTemplateMaker : RootTemplateMaker
    {
        #region instance creation
        public static Universe.IEmbedTemplate make(RU universe, IEnumerable<ISet<GT>> canonicalSets)
        {
            var maker = new RMergeTemplateMaker(universe);
            return maker.make(canonicalSets);
        }
        public static Universe.IEmbedTemplate make(RU universe, Function f, GTT gtt)
        {
            return new RMergeTemplateMaker(universe).make(f, gtt);
        }
        private RMergeTemplateMaker(RU universe)
            : base(universe)
        {
        }
        public static Universe.IEmbedTemplate makeOriginals(RU universe, IEnumerable<FunctionApplicationFormula> fas)
        {
            return new RMergeTemplateMaker(universe).makeOriginals(fas);
        }
        #endregion instance creation

        #region initial terms
        private Universe.IEmbedTemplate make(IEnumerable<ISet<GT>> canonicalSets)
        {
            makeInitialSets(canonicalSets);
            return mainCommon();
        }
        #endregion initial terms

        #region propagate
        protected sealed override void updateRGTTSources(RGTSD gtd, GTT rgtt) { }
        protected override sealed void propagateGTTINLGTTs(RGTTSD gttd)
        {
            gttd.clearNLTs();
        }

        #endregion propagate

        #region main make originals
        private Universe.IEmbedTemplate makeOriginals(IEnumerable<FunctionApplicationFormula> fas)
        {
            setupOriginals(fas);
            return mainCommon();
        }
        #endregion main make originals

        #region main makeGTT
        public static Universe.IEmbedTemplate makeGTT(RU universe, IEnumerable<GT> gtT)
        {
            return new RMergeTemplateMaker(universe).makeGTT(gtT);
        }
        #endregion main makeGTT
    }
}
