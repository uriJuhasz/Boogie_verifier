namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public interface IBinaryConnective : IFormula
    {
        IFormula f1 { get; }
        IFormula f2 { get; }
    }
}