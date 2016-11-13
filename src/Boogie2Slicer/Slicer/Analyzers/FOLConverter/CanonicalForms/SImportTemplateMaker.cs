using Slicer.Analyzers.FOLConverter.Formulae;
using System.Collections.Generic;
using System.Linq;
using System.Diagnostics;
using GTI = System.Int32;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    class SImportTemplateMaker : STemplateMaker
    {
        #region instance creation
        public static Universe.IEmbedTemplate make(SU universe, GT ipgt)
        {
            return new SImportTemplateMaker(universe).make(ipgt);
        }
        public static Universe.IEmbedTemplate make(SU universe, Function f, GTT gtt)
        {
            return new SImportTemplateMaker(universe).make(f,gtt);
        }
        private SImportTemplateMaker(SU universe)
            : base(universe)
        {
        }
        #endregion instance creation

        #region main makeGTT
        public static Universe.IEmbedTemplate makeGTT(SU universe, IEnumerable<GT> gtT)
        {
            return new SImportTemplateMaker(universe).makeGTT(gtT);
        }
        #endregion main makeGTT

        #region main make originals
        #region debug
        #endregion debug
        public static Universe.IEmbedTemplate makeOriginals(SU universe, IEnumerable<FunctionApplicationFormula> fas)
        {
            return new SImportTemplateMaker(universe).makeOriginals(fas);
        }
        private Universe.IEmbedTemplate makeOriginals(IEnumerable<FunctionApplicationFormula> fas)
        {
            setupOriginals(fas);
            return mainCommon();
        }
        #endregion main make originals

        #region main
        private Universe.IEmbedTemplate make(GT ipgt)
        {
#if DEBUG
            mergeAllowed = false;
#endif
            #region setup
            var gti = mapPGT(ipgt);
            setGoalGTI(gti);
            var gtd = getGTD(gti);
            setDepth(gtd, -1);
            #endregion setup

            return mainCommon();
        }
#endregion main
    }
}
