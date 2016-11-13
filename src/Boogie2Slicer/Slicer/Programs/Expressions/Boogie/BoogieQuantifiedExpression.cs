using System.Collections.Generic;
using System.Diagnostics;
using Microsoft.Boogie;
using Slicer.Programs.Expressions.Basic;
using Slicer.StateSpace.Variables.Quantification;
using BoundVariable = Slicer.StateSpace.Variables.Quantification.BoundVariable;

namespace Slicer.Programs.Expressions.Boogie
{
    internal class BoogieQuantifiedExpression : BasicQuantifiedExpression
    {
        ///////////////////////////////////////////////////////////
        public BoogieQuantifiedExpression(
            Scope s,
            QuantifierExpr boogieExpression,
            Quantifier quantifier,
            BoundVariable variable,
            Expression expression,
            IEnumerable<IEnumerable<Expression>> triggers,
            string attributes
            )
            : base(
                s,
                quantifier,
                variable,
                expression,
                triggers,
                attributes
                )
        {
            Debug.Assert(boogieExpression != null);
            boogieQExpression = boogieExpression;
        }

        ///////////////////////////////////////////////////////////

        ///////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////
        public Expr boogieExpression
        {
            get { return boogieQExpression; }
        }

        public QuantifierExpr boogieQExpression { get; private set; }

        public Expr getBoogieExpression()
        {
            return boogieQExpression;
        }
    }
}