using System;
using System.Collections.Generic;
using Slicer.StateSpace;
using System.Diagnostics;

namespace Slicer.Programs.Terms.Boogie
{
    class QuantifiedTypeExpression : Terms.QuantifiedTypePredicate, BoogieTerm
    {
        ///////////////////////////////////////////////////////////
        public QuantifiedTypeExpression(
            Microsoft.Boogie.QuantifierExpr boogieExpression,
            Logic.TypeQuantifier            quantifier, 
            Logic.TypeVariable              variable, 
            Terms.Term          expression
        )
        {
            Debug.Assert(boogieExpression != null);
            this.boogieQTExpression = boogieExpression;
            this.quantifier = quantifier;
            this.variable   = variable;
            this.expression = expression;
        }

        //////////////////////////////////////////////
        public void visit(Visitor v)
        {
            v.visit(this);
        }

        ///////////////////////////////////////////////////////////
        public Logic.TypeQuantifier   getQuantifier() { return quantifier; }
        public Logic.TypeVariable getVariable() { return variable; }
        public Terms.Term getExpression() { return expression; }

        ///////////////////////////////////////////////////////////
        public Microsoft.Boogie.Expr getBoogieExpression()
        {
            return boogieQTExpression;
        }

        ///////////////////////////////////////////////////////////
        public Terms.Term shallowClone()
        {
            return new QuantifiedTypeExpression(boogieQTExpression, quantifier, variable, expression);
        }

        ///////////////////////////////////////////////////////////
        public Terms.Term deepClone()
        {
            return new QuantifiedTypeExpression(
                boogieQTExpression,
                quantifier.clone(),
                variable.clone(),
                expression.deepClone()
            );
        }

        ////////////////////////////////////////////
        public override String ToString()
        {
            return quantifier.ToString() + " " + variable.ToString() + " | " + expression.ToString();
        }

        ///////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////
        public Microsoft.Boogie.Expr           boogieExpression { get { return boogieQTExpression; } }
        public Microsoft.Boogie.QuantifierExpr boogieQTExpression { get; private set; }
        public Logic.TypeQuantifier            quantifier       { get; private set;}
        public Logic.TypeVariable              variable         { get; private set;}
        public Terms.Term          expression       { get; private set;}
    }
}
