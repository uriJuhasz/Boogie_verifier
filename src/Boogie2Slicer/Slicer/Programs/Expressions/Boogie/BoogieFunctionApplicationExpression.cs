using System.Diagnostics;
using Microsoft.Boogie;
using Slicer.Programs.Expressions.Basic;
using Slicer.Programs.Expressions.utilities;
using Function = Slicer.StateSpace.Functions.Function;

namespace Slicer.Programs.Expressions.Boogie
{
    internal class BoogieFunctionApplicationExpression : BasicFAE
    {
        ///////////////////////////////////////////////////////////
        public BoogieFunctionApplicationExpression(Expr boogieExpression, Function function, ExpressionList arguments)
            : base(function, arguments)
        {
            Debug.Assert(boogieExpression != null);
            this.boogieExpression = boogieExpression;
        }

        //////////////////////////////////////////////

        ////////////////////////////////////////////
        ////////////////////////////////////////////
        public Expr boogieExpression { get; private set; }

        public override Expression visit(ExpressionVisitor v)
        {
            return v.visit(this);
        }
    }
}