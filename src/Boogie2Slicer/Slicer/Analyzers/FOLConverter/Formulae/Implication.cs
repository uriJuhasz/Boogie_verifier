namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public class Implication : BinaryConnectiveC
    {
        public Implication(IFormula f1, IFormula f2)
            : base(f1, f2, false)
        {
        }

        public override bool Equals(object f)
        {
            var fa = f as Implication;
            return
                !ReferenceEquals(fa, null) &&
                (f1 == fa.f1 && f2 == fa.f2);
        }

        public override int GetHashCode()
        {
            return f1.GetHashCode() + f2.GetHashCode() + 3;
        }

        public override IFormula substitute(Substitution s)
        {
            return new Implication(f1.substitute(s), f2.substitute(s));
        }

        public override IFormula visit(IFormulaVisitor v)
        {
            return v.visit(this);
        }

        public override string ToString()
        {
            return "(" + f1 + "=>" + f2 + ")";
        }
    }
}