using System.Diagnostics;
using Microsoft.Boogie;
using Slicer.Programs.Expressions.Basic;
using BoundVariable = Slicer.StateSpace.Variables.Quantification.BoundVariable;

namespace Slicer.Programs.Expressions.Boogie
{
    internal class BoogieBoundVariableExpression : BasicBoundVariableExpression
    {
        //////////////////////////////////////////////
        public BoogieBoundVariableExpression(IdentifierExpr boogieExpression, BoundVariable variable)
            : base(variable)
        {
            Debug.Assert(boogieExpression != null);
            Debug.Assert(boogieExpression.Decl is Microsoft.Boogie.BoundVariable || boogieExpression.Decl is Formal);
            boogieIdentifierExpression = boogieExpression;
        }

        //////////////////////////////////////////////
        public IdentifierExpr boogieIdentifierExpression { get; private set; }
    }
}