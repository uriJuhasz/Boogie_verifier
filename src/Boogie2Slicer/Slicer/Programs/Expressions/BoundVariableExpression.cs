using Slicer.StateSpace.Variables.Quantification;

namespace Slicer.Programs.Expressions
{
    public interface BoundVariableExpression : AtomicExpression
    {
        BoundVariable boundVariable { get; }
    }
}