using Slicer.StateSpace.Values;

namespace Slicer.Programs.Expressions
{
    public interface LiteralExpression : FreeAtomicExpression
    {
        Value value { get; }
    }
}