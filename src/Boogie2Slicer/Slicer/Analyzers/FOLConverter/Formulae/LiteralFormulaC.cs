#region

using System.Collections.Generic;

#endregion

namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public abstract class LiteralFormulaC : ILiteralFormula
    {
        private readonly HashSet<LVar> pFreeVariables;
        public IEnumerable<IFormula> subFormulae { get { return new IFormula[0]; } }

        protected LiteralFormulaC()
        {
            pFreeVariables = new HashSet<LVar>();
        }

        #region ILiteralFormula Members

        public ISet<LVar> ffreeVariables
        {
            get { return pFreeVariables; }
        }

        //            public override ISet<Function> functions { get { return new HashSet<Function>(); } }
        public IFormula substitute(Substitution s)
        {
            return this;
        }

        public abstract IFormula visit(IFormulaVisitor v);

        #endregion
    }
}