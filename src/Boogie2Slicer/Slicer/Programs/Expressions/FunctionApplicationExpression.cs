using Slicer.Programs.Expressions.utilities;
using Slicer.StateSpace.Functions;

namespace Slicer.Programs.Expressions
{
    public interface FAE : Expression
    {
        Function function { get; }
        ExpressionList arguments { get; }
    }
}