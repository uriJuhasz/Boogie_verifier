using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Slicer.StateSpace;
using System.Diagnostics;
using Slicer.Programs.Terms.utilities;

namespace Slicer.Programs.Terms.Boogie
{
    public class BoogieMapLookup : MapLookupTerm, BoogieTerm
    {
        ///////////////////////////////////////////////////////////
        public BoogieMapLookup(BoogieMapLookup other) : this(other.boogieMapLookupExpression, other.map, other.indices) { }
        public BoogieMapLookup(Microsoft.Boogie.NAryExpr boogieExpression, Terms.VariableTerm map, ExpressionList indices)
            : base(map,indices)
        {
            Debug.Assert(boogieExpression.Fun.FunctionName.CompareTo("MapSelect") == 0);
            this.boogieMapLookupExpression = boogieExpression;
        }

        //////////////////////////////////////////////
        public Microsoft.Boogie.NAryExpr boogieMapLookupExpression { get; private set; }
        public Microsoft.Boogie.Expr     boogieExpression          { get{ return boogieMapLookupExpression; }}
    }
}
