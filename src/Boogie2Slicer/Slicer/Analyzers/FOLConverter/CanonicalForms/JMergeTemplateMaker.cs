using Slicer.Analyzers.FOLConverter.Formulae;
using Slicer.StateSpace.Types;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    class JMergeTemplateMaker : JTemplateMaker
    {
        #region instance creation
        public static Universe.IEmbedTemplate make(JU universe, IEnumerable<ISet<GT>> canonicalSets)
        {
            return new JMergeTemplateMaker(universe).make(canonicalSets);
        }
        private JMergeTemplateMaker(JU universe)
            : base(universe)
        {
        }
        #endregion instance creation

        #region initial sets
        private Universe.IEmbedTemplate make(IEnumerable<ISet<GT>> canonicalSets)
        {
            makeInitialSets(canonicalSets);
            return mainCommon();
        }
        #endregion initial sets

        #region main makeGTT
        public static Universe.IEmbedTemplate makeGTT(JU universe, IEnumerable<GT> gtT)
        {
            return new JMergeTemplateMaker(universe).makeGTT(gtT);
        }
        #endregion main makeGTT
    }
}
