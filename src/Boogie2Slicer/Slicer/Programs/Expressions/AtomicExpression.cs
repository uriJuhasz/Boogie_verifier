namespace Slicer.Programs.Expressions
{
    public interface AtomicExpression : Expression
    {
        string name { get; }
    }
}