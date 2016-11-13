namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public interface IFormulaVisitor : ITermVisitor
    {
        IFormula visit(And f);
        IFormula visit(Or f);
        IFormula visit(Not f);
        IFormula visit(Implication f);
        IFormula visit(EquivalenceFormula f);
        IFormula visit(UniversalFormula f);
        IFormula visit(ExistentialFormula f);
        IFormula visit(PredicateApplication f);
        IFormula visit(EqualityFormula f);
        IFormula visit(True f);
        IFormula visit(False f);
    }
}