#region

using Slicer.Analyzers.FOLConverter.Formulae;

#endregion

namespace Slicer.Analyzers.FOLConverter.Formulae2Clauses
{
    internal class NNFVisitor : IFormulaVisitor
    {
        private readonly NNFVisitorN n;
        private readonly NNFVisitor p;

        public NNFVisitor()
        {
            n = new NNFVisitorN(this);
            p = this;
        }

        #region IFormulaVisitor Members

        public IFormula visit(And f)
        {
            return new And(f.f1.visit(this), f.f2.visit(this));
        }

        public IFormula visit(Or f)
        {
            return new Or(f.f1.visit(this), f.f2.visit(this));
        }

        public IFormula visit(Not f)
        {
            return f.f.visit(n);
        }

        public IFormula visit(Implication f)
        {
            return new Or(f.f1.visit(n), f.f2.visit(p));
        }

        public IFormula visit(EquivalenceFormula f)
        {
            return new And(new Or(f.f1.visit(n), f.f2.visit(p)), new Or(f.f1.visit(p), f.f2.visit(n)));
        }

        public IFormula visit(UniversalFormula f)
        {
            return new UniversalFormula(f.var, f.f.visit(p),f.attributes,f.triggers);
        }

        public IFormula visit(ExistentialFormula f)
        {
            return new ExistentialFormula(f.var, f.f.visit(p), f.attributes, f.triggers);
        }

        public IFormula visit(PredicateApplication f)
        {
            return f;
        }

        public IFormula visit(EqualityFormula f)
        {
            return f;
        }

        public IFormula visit(True f)
        {
            return f;
        }

        public IFormula visit(False f)
        {
            return f;
        }

        public ITerm visit(FunctionApplicationFormula t)
        {
            return t;
        }

        public ITerm visit(Variable t)
        {
            return t;
        }

        #endregion
    }
}