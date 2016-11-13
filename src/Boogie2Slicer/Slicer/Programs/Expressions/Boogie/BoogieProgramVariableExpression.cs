using System.Diagnostics;
using Microsoft.Boogie;
using Slicer.Programs.Expressions.Basic;
using Slicer.StateSpace.Variables;
using Constant = Microsoft.Boogie.Constant;

namespace Slicer.Programs.Expressions.Boogie
{
    internal class BoogieProgramVariableExpression : BasicProgramVariableExpression
    {
        //////////////////////////////////////////////
        public BoogieProgramVariableExpression(IdentifierExpr boogieExpression, ProgramVariable variable)
            : base(variable)
        {
            Debug.Assert(boogieExpression != null);
            Debug.Assert(
                boogieExpression.Decl is GlobalVariable
                || boogieExpression.Decl is LocalVariable
                || boogieExpression.Decl is Formal
                || boogieExpression.Decl is Constant
                );
            boogieIdentifierExpression = boogieExpression;
        }

        //////////////////////////////////////////////
        public IdentifierExpr boogieIdentifierExpression { get; private set; }
    }
}