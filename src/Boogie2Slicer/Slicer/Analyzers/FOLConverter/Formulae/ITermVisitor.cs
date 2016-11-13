namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public interface ITermVisitor
    {
        ITerm visit(FunctionApplicationFormula t);
        ITerm visit(Variable t);
    }
}