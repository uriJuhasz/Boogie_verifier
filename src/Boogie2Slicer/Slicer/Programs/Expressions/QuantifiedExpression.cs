using System;
using System.Collections.Generic;
using Slicer.Programs.Expressions.utilities;
using Slicer.StateSpace.Variables.Quantification;

namespace Slicer.Programs.Expressions
{
    public interface QuantifiedExpression : Expression
    {
        Quantifier quantifier { get; }
        BoundVariable variable { get; }
        Expression expression { get; }

        Scope scope { get; }

        IList<ExpressionList> triggers { get; }
        string attributes { get; }

        String ToStringSansQuantifier();
    }
}