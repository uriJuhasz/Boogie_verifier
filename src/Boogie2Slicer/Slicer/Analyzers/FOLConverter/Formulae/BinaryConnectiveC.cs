#region

using System.Collections.Generic;

#endregion

namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public abstract class BinaryConnectiveC : IBinaryConnective
    {
        private readonly IFormula pF1;
        private readonly IFormula pF2;
        private readonly HashSet<LVar> pFreeVariables;
        public IEnumerable<IFormula> subFormulae { get { return new[] { pF1,pF2 }; } }

        protected BinaryConnectiveC(IFormula f1, IFormula f2, bool sort = false)
        {
            if (!sort || f1.ToString().CompareTo(f2.ToString()) >= 0)
            {
                pF1 = f1;
                pF2 = f2;
            }
            else
            {
                pF1 = f2;
                pF2 = f1;
            }

            var fv = new HashSet<LVar>(f1.ffreeVariables);
            fv.UnionWith(f2.ffreeVariables);
            pFreeVariables = fv;
        }

        #region IBinaryConnective Members

        public abstract IFormula substitute(Substitution s);
        public abstract IFormula visit(IFormulaVisitor v);

        public IFormula f1
        {
            get { return pF1; }
        }

        public IFormula f2
        {
            get { return pF2; }
        }

        public ISet<LVar> ffreeVariables
        {
            get { return pFreeVariables; }
        }

        #endregion
    }
}