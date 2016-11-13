namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public class False : LiteralFormulaC
    {
        public override bool Equals(object f)
        {
            return f is False;
        }

        public override int GetHashCode()
        {
            return 12;
        }

        public override IFormula visit(IFormulaVisitor v)
        {
            return v.visit(this);
        }

        //            public override string ToStringN(Dictionary<string, string> vn) { return ToString(); }
        public override string ToString()
        {
            return "false";
        }
    }
}