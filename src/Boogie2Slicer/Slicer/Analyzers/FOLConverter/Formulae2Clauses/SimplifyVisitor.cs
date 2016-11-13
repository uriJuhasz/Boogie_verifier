#region

using Slicer.Analyzers.FOLConverter.Formulae;

#endregion

namespace Slicer.Analyzers.FOLConverter.Formulae2Clauses
{
    internal class SimplifyVisitor : IFormulaVisitor
    {
        #region IFormulaVisitor Members

        public IFormula visit(And f)
        {
            var f1 = f.f1.visit(this);
            var f2 = f.f2.visit(this);
            if (f1 is True)
                return f2;
            else if (f2 is True)
                return f1;
            else if (f1 is False || f2 is False)
                return new False();
            else if (f1 is Not && ((f1 as Not).f == f2))
                return new False();
            else if (f2 is Not && ((f2 as Not).f == f1))
                return new False();
            else if (f1 == f2)
                return f1;
            else
                return new And(f1, f2);
        }

        public IFormula visit(Or f)
        {
            var f1 = f.f1.visit(this);
            var f2 = f.f2.visit(this);
            if (f1 is False)
                return f2;
            else if (f2 is False)
                return f1;
            else if (f1 is True || f2 is True)
                return new True();
            else if (f1 is Not && ((f1 as Not).f == f2))
                return new True();
            else if (f2 is Not && ((f2 as Not).f == f1))
                return new True();
            else if (f1 == f2)
                return f1;
            else
                return new Or(f1, f2);
        }

        public IFormula visit(Not f)
        {
            var fnc = f.f.visit(this);
            if (fnc is True)
                return new False();
            else if (fnc is False)
                return new True();
            else if (fnc is Not)
                return ((fnc as Not).f);
            else
                return new Not(fnc);
        }

        public IFormula visit(Implication f)
        {
            var f1 = f.f1.visit(this);
            var f2 = f.f2.visit(this);
            if (f1 == f2)
                return new True();
            else if (f1 is True)
                return f2;
            else if (f1 is False)
                return new True();
            else if (f2 is True)
                return new True();
            else if (f2 is False)
                return new Not(f1).visit(this);
            else
                return new Implication(f1, f2);
        }

        public IFormula visit(EquivalenceFormula f)
        {
            var f1 = f.f1.visit(this);
            var f2 = f.f2.visit(this);
            if (f1 == f2)
                return new True();
            else if (f1 is True)
                return f2;
            else if (f1 is False)
                return new Not(f2).visit(this);
            else if (f2 is True)
                return f1;
            else if (f2 is False)
                return new Not(f1).visit(this);
            else
                return new EquivalenceFormula(f1, f2);
        }

        public IFormula visit(UniversalFormula f)
        {
            var nf = f.f.visit(this);
            return !nf.ffreeVariables.Contains(f.var) ? nf : new UniversalFormula(f.var, nf,f.attributes,f.triggers);
        }

        public IFormula visit(ExistentialFormula f)
        {
            var nf = f.f.visit(this);
            return !nf.ffreeVariables.Contains(f.var) ? nf : new ExistentialFormula(f.var, nf, f.attributes, f.triggers);
        }

        public IFormula visit(PredicateApplication f)
        {
            return f;
        }

        public IFormula visit(EqualityFormula f)
        {
            if (f.t1.Equals(f.t2))
                return new True();
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