using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Slicer.StateSpace;
using System.Diagnostics;
using Slicer.Programs.Terms.utilities;

namespace Slicer.Programs.Terms.Boogie
{
    class BoogieFunctionApplication : Terms.Basic.FunctionApplication, BoogieTerm
    {
        ///////////////////////////////////////////////////////////
        public BoogieFunctionApplication(Microsoft.Boogie.Expr boogieExpression, Logic.Function function, ExpressionList arguments)
            : base(function,arguments)
        {
            Debug.Assert(boogieExpression != null);
            this.boogieExpression = boogieExpression;
        }

        //////////////////////////////////////////////
        public override void visit(Visitor v)
        {
            v.visit(this);
        }

        ////////////////////////////////////////////
        public override Terms.Term shallowClone() 
        {
            return new BoogieFunctionApplication(boogieExpression, function, arguments);
        }

        ////////////////////////////////////////////
        public override Terms.Term deepClone()
        {
            return new BoogieFunctionApplication(boogieExpression, function, arguments.deepClone()); //TODO:functions don't get cloned
        }

        ////////////////////////////////////////////
        ////////////////////////////////////////////
        public Microsoft.Boogie.Expr boogieExpression { get; private set; }
    }
}
