using System.Collections.Generic;
using System.Diagnostics;
using Microsoft.Boogie;
using Slicer.Programs.Expressions.Basic;
using Slicer.StateSpace.Types.Quantification;
using TypeVariable = Slicer.StateSpace.Types.Quantification.TypeVariable;

namespace Slicer.Programs.Expressions.Boogie
{
    internal class BoogieQuantifiedTypeExpression : BasicQuantifiedTypeExpression
    {
        ///////////////////////////////////////////////////////////
        public BoogieQuantifiedTypeExpression(
            QuantifierExpr boogieExpression,
            TypeQuantifier quantifier,
            TypeVariable variable,
            Expression expression,
            List<Expression> triggers,
            string attributes
            )
            :
                base(
                quantifier,
                variable,
                expression,
                triggers,
                attributes
                )
        {
            Debug.Assert(boogieExpression != null);
            boogieQTExpression = boogieExpression;
        }

        ///////////////////////////////////////////////////////////

        ///////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////
        public Expr boogieExpression
        {
            get { return boogieQTExpression; }
        }

        public QuantifierExpr boogieQTExpression { get; private set; }

        public Expr getBoogieExpression()
        {
            return boogieQTExpression;
        }
    }
}