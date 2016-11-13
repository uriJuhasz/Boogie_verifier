using System.Collections.Generic;
using System.Linq;

namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public class UniversalFormula : QuantifiedFormulaC
    {
        public UniversalFormula(LVar var, IFormula f, IEnumerable<string> attributes, IEnumerable<IEnumerable<ITerm>> triggers)
            : base(var, f,attributes,triggers)
        {
        }
        public override bool isUniversal { get { return true; } }
        public override bool isExistential { get { return false; } }
        public override bool Equals(object o)
        {
            var fa = o as UniversalFormula;
            return
                !ReferenceEquals(fa, null) &&
                (f == fa.f);
        }

        public override int GetHashCode()
        {
            return f.GetHashCode() + 5;
        }

        public override IFormula substitute(Substitution s)
        {
            var ms = s.without(var);
            return new UniversalFormula(var, f.substitute(ms),attributes,from ts in triggers select from t in ts select t.substitute(ms));
        }

        public override IFormula visit(IFormulaVisitor v)
        {
            return v.visit(this);
        }

        public override string ToString()
        {
            var result = "Forall " + var.name + ":" + var.type.ToStringN();
            var lf = f; 
            var ulf = f as UniversalFormula;
            while (ulf!=null)
            {
                result += "," + ulf.var.name + ":" + ulf.var.type.ToStringN();
                lf = ulf.f;
                ulf = lf as UniversalFormula;
            }
            result += ":: (" + lf + ")";
            return result;
        }
    }
}