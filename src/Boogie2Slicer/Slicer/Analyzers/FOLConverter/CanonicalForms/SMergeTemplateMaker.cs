using Slicer.Analyzers.FOLConverter.Formulae;
using Slicer.StateSpace.Types;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    class SMergeTemplateMaker : STemplateMaker
    {
        #region instance creation
        public static Universe.IEmbedTemplate make(SU universe, IEnumerable<ISet<GT>> canonicalSets)
        {
            var maker = new SMergeTemplateMaker(universe);
            return maker.make(canonicalSets);
        }
        private SMergeTemplateMaker(SU universe)
            : base(universe)
        {
        }
        #endregion instance creation

        #region initial terms
        private Universe.IEmbedTemplate make(IEnumerable<ISet<GT>> canonicalSets)
        {
            makeInitialSets(canonicalSets);
            return mainCommon();
        }
        #endregion initial terms
    }
}
