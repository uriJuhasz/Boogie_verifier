using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Slicer.StateSpace;
using System.Diagnostics;

namespace Slicer.Programs.Terms.Boogie
{
    class QuantifiedExpression : Terms.QuantifiedPredicate, BoogieTerm
    {
        ///////////////////////////////////////////////////////////
        public QuantifiedExpression(
            Microsoft.Boogie.QuantifierExpr boogieExpression, 
            Logic.Quantifier       quantifier, 
            Logic.Variable         variable, 
            Logic.Sort             sort, 
            Terms.Term expression
        )
        {
            Debug.Assert(boogieExpression != null);
            this.boogieQExpression = boogieExpression;
            this.quantifier = quantifier;
            this.variable   = variable;
            this.typeBound  = sort;
            this.expression = expression;
        }

        //////////////////////////////////////////////
        public void visit(Visitor v)
        {
            v.visit(this);
        }

        ///////////////////////////////////////////////////////////
        public Microsoft.Boogie.Expr getBoogieExpression()
        {
            return boogieQExpression;
        }

        ///////////////////////////////////////////////////////////
        public Terms.Term shallowClone()
        {
            return new QuantifiedExpression(boogieQExpression, quantifier, variable, typeBound, expression);
        }

        ///////////////////////////////////////////////////////////
        public Terms.Term deepClone()
        {
            return new QuantifiedExpression(
                boogieQExpression,
                quantifier.clone(),
                variable.clone(),
                typeBound.clone(),
                expression.deepClone()
            );
        }

        ////////////////////////////////////////////
        public override String ToString()
        {
            return quantifier.ToString() + " " + variable.ToString() + " : " + typeBound.ToString() + " | " + expression.ToString();
        }

        ///////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////
        public Microsoft.Boogie.Expr           boogieExpression { get { return boogieQExpression; } }
        public Microsoft.Boogie.QuantifierExpr boogieQExpression { get; set; }
        public Logic.Quantifier                quantifier       { get; set; }
        public Logic.Variable                  variable         { get; set; }
        public Logic.Sort                      typeBound        { get; set; }
        public Terms.Term          expression       { get; set; }
    }
}
