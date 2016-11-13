using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Diagnostics;
using Slicer.StateSpace;

namespace Slicer.Programs.Terms.Boogie
{
    class BoogieBoundVariableTerm : BoundVariableTerm
    {
        public BoogieBoundVariableTerm(Microsoft.Boogie.IdentifierExpr boogieExpression, Logic.Variable variable)
            : base(variable)
        {
            Debug.Assert(boogieExpression != null);
            Debug.Assert( boogieExpression.Decl is Microsoft.Boogie.BoundVariable );
            this.boogieExpression = boogieExpression;
        }

        //////////////////////////////////////////////
        public BoogieBoundVariableTerm(BoogieBoundVariableTerm other) : this(other.boogieExpression, other.boundVariable) { }

        //////////////////////////////////////////////
        public override BoogieTerm deepClone()
        {
            return new BoogieBoundVariableTerm(boogieExpression, boundVariable);
        }

        //////////////////////////////////////////////
        public override BoogieTerm shallowClone()
        {
            return new BoogieBoundVariableTerm(boogieExpression, boundVariable);
        }

        //////////////////////////////////////////////
        public Microsoft.Boogie.IdentifierExpr boogieExpression { get; private set; }
    }
}
