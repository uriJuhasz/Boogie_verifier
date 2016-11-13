#region

using System;
using System.Linq;
using Slicer.Analyzers.FOLConverter.Formulae;
using Slicer.StateSpace.Types;

#endregion

namespace Slicer.Analyzers.FOLConverter.Formulae2Clauses
{
    internal class SkolemizationVisitor : IFormulaVisitor
    {
        private readonly ISRS srs;

        public SkolemizationVisitor(ISRS srs)
        {
            this.srs = srs;
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
            return new Not(f.f.visit(this));
        }

        public IFormula visit(Implication f)
        {
            throw new Exception();
        }

        public IFormula visit(EquivalenceFormula f)
        {
            throw new Exception();
        }

        public IFormula visit(UniversalFormula f)
        {
            return new UniversalFormula(f.var, f.f.visit(this),f.attributes,f.triggers);
        }

        public IFormula visit(ExistentialFormula f)
        {
            var fvs = (from fv in f.f.ffreeVariables where fv != f.var select fv).ToArray();
            var fvts = TypeTuple.make(from fv in fvs select fv.type);
            var newF = srs.getFreshFunction("@sk", fvts, f.var.type);

            var fvTerms = (from fv in fvs select new Variable(fv)).ToArray<ITerm>();
            return f.f.substitute(new Substitution(f.var, new FunctionApplicationFormula(newF, fvTerms))).visit(this);
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