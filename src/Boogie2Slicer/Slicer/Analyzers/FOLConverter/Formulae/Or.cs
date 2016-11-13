namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public class Or : BinaryConnectiveC
    {
        public Or(IFormula f1, IFormula f2)
            : base(f1, f2, true)
        {
        }

        public override bool Equals(object f)
        {
            var fa = f as Or;
            return
                !ReferenceEquals(fa, null) &&
                (
                    (f1 == fa.f1 && f2 == fa.f2) ||
                    (f1 == fa.f2 && f2 == fa.f1)
                );
        }

        public override int GetHashCode()
        {
            return f1.GetHashCode() + f2.GetHashCode() + 2;
        }

        public override IFormula substitute(Substitution s)
        {
            return new Or(f1.substitute(s), f2.substitute(s));
        }

        public override IFormula visit(IFormulaVisitor v)
        {
            return v.visit(this);
        }

        public override string ToString()
        {
            var a1 = f1.ToString();
            if (!(f1 is Or || f1 is IAtomicFormula || f1 is Not))
                a1 = "(" + a1 + ")";
            var a2 = f2.ToString();
            if (!(f2 is Or || f2 is IAtomicFormula || f2 is Not))
                a2 = "(" + a2 + ")";


            return a1 + "|" + a2;
        }
    }
}