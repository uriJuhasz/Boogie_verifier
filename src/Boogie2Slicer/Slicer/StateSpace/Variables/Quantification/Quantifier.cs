namespace Slicer.StateSpace.Variables.Quantification
{
    public interface Quantifier
    {
        string ToString();
        bool isForall { get; }
        bool isExists { get; }
    }
}