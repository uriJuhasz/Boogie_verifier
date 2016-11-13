namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public class True : LiteralFormulaC
    {
        public override bool Equals(object f)
        {
            return f is True;
        }

        public override int GetHashCode()
        {
            return 11;
        }

        public override IFormula visit(IFormulaVisitor v)
        {
            return v.visit(this);
        }

        //            public override string ToStringN(Dictionary<string, string> vn) { return ToString(); }
        public override string ToString()
        {
            return "true";
        }
    }
}