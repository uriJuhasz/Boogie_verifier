using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Diagnostics;
using Slicer.StateSpace;

namespace Slicer.Programs.Terms
{
    class BoogueProgramVariable : ProgramVariableTerm, Term
    {
        //////////////////////////////////////////////
        public BoogueProgramVariable(Microsoft.Boogie.IdentifierExpr boogieExpression, Slicer.StateSpace.Variable variable)
            : base(variable)
        {
            Debug.Assert(boogieExpression != null);
            Debug.Assert(
                   boogieExpression.Decl is Microsoft.Boogie.GlobalVariable
                || boogieExpression.Decl is Microsoft.Boogie.Formal
                || boogieExpression.Decl is Microsoft.Boogie.LocalVariable
            );
            this.boogieIdentifierExpression = boogieExpression;
        }

        //////////////////////////////////////////////
        public override Terms.Term deepClone()
        {
            return new BoogueProgramVariable(boogieIdentifierExpression, programVariable);
        }

        //////////////////////////////////////////////
        public override Terms.Term shallowClone()
        {
            return new BoogueProgramVariable(boogieIdentifierExpression, programVariable);
        }
        
        //////////////////////////////////////////////
        public Microsoft.Boogie.IdentifierExpr boogieIdentifierExpression { get; private set; }
        public Microsoft.Boogie.Expr boogieExpression { get { return boogieIdentifierExpression; } }
    }
}
