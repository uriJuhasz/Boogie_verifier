#region

using Slicer.Analyzers.FOLConverter.Formulae;

#endregion

namespace Slicer.Analyzers.FOLConverter.Formulae2Clauses
{
    internal class NNFVisitorN : IFormulaVisitor
    {
        private readonly NNFVisitorN n;
        private readonly NNFVisitor p;

        internal NNFVisitorN(NNFVisitor positiveVisitor)
        {
            p = positiveVisitor;
            n = this;
        }

        #region IFormulaVisitor Members

        public IFormula visit(And f)
        {
            return new Or(f.f1.visit(n), f.f2.visit(n));
        }

        public IFormula visit(Or f)
        {
            return new And(f.f1.visit(n), f.f2.visit(n));
        }

        public IFormula visit(Not f)
        {
            return f.f.visit(p);
        }

        public IFormula visit(Implication f)
        {
            return new And(f.f1.visit(p), f.f2.visit(n));
        }

        public IFormula visit(EquivalenceFormula f)
        {
            return new Or(
                new And(f.f1.visit(p), f.f2.visit(n)),
                new And(f.f1.visit(n), f.f2.visit(p))
                );
        }

        public IFormula visit(UniversalFormula f)
        {
            return new ExistentialFormula(f.var, f.f.visit(n), f.attributes, f.triggers);
        }

        public IFormula visit(ExistentialFormula f)
        {
            return new UniversalFormula(f.var, f.f.visit(n), f.attributes, f.triggers);
        }

        public IFormula visit(PredicateApplication f)
        {
            return new Not(f);
        }

        public IFormula visit(EqualityFormula f)
        {
            return new Not(f);
        }

        public IFormula visit(True f)
        {
            return new False();
        }

        public IFormula visit(False f)
        {
            return new True();
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