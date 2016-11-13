using System.Collections.Generic;
using System.Linq;

namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public class ExistentialFormula : QuantifiedFormulaC
    {
        public ExistentialFormula(LVar var, IFormula f, IEnumerable<string> attributes, IEnumerable<IEnumerable<ITerm>> triggers)
            : base(var, f,attributes,triggers)
        {
        }

        public override bool isUniversal { get { return false; } }
        public override bool isExistential { get{return true;} }
        public override bool Equals(object o)
        {
            var fa = o as ExistentialFormula;
            return
                !ReferenceEquals(fa, null) &&
                (f == fa.f);
        }

        public override int GetHashCode()
        {
            return f.GetHashCode() + 6;
        }

        public override IFormula substitute(Substitution s)
        {
            var ms = s.without(var);
            return new ExistentialFormula(var, f.substitute(ms), attributes, from ts in triggers select from t in ts select t.substitute(ms));
        }

        public override IFormula visit(IFormulaVisitor v)
        {
            return v.visit(this);
        }

        public override string ToString()
        {
            return "Exists " + var.name + ": (" + var.type + " : " + f + ")";
        }
    }
}