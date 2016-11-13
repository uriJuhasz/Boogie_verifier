using Slicer.Analyzers.FOLConverter.Formulae;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    class JImportTemplateMaker : JTemplateMaker
    {
        #region instance creation
        public static Universe.IEmbedTemplate make(JU universe, Function function, GTT arguments)
        {
            return new JImportTemplateMaker(universe).make(function, arguments);
        }
        private JImportTemplateMaker(JU universe)
            : base(universe)
        {
        }
        public static Universe.IEmbedTemplate makeOriginals(JU universe, IEnumerable<FunctionApplicationFormula> fas)
        {
            return new JImportTemplateMaker(universe).makeOriginals(fas);
        }
        #endregion instance creation

        #region main
        private Universe.IEmbedTemplate makeOriginals(IEnumerable<FunctionApplicationFormula> fas)
        {
#if DEBUG
            mergeAllowed = false;
#endif
            setupOriginals(fas);
            return mainCommon();
        }
        #endregion main
    }
}
