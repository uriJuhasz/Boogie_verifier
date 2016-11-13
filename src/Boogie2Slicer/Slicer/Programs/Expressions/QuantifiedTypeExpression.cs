using Slicer.Programs.Expressions.utilities;
using Slicer.StateSpace.Types.Quantification;

namespace Slicer.Programs.Expressions
{
    public interface QuantifiedTypeExpression : Expression
    {
        TypeQuantifier quantifier { get; }
        TypeVariable variable { get; }
        Expression expression { get; }

        string attributes { get; }
        ExpressionList triggers { get; }
    }
}