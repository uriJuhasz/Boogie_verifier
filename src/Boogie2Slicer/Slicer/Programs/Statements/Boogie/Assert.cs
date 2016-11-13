using System.Diagnostics;
using Microsoft.Boogie;
using Slicer.Programs.Expressions;

namespace Slicer.Programs.Statements.Boogie
{
    internal class Assert : Statements.Assert
    {
        ///////////////////////////////////////////////////////////////////
        private AssertCmd boogieStatement;

        public Assert(AssertCmd boogieStatement, Expression expression, string message)
            : base(expression, message)
        {
            Debug.Assert(boogieStatement != null);
            Debug.Assert(message != null);
            this.boogieStatement = boogieStatement;
        }


        ///////////////////////////////////////////////////////////////////
        public override string ToString()
        {
            return
                "assert "
                /*+ ((message!="" && message!=null) ?  "\"" + message + "\" " : "")*/
                + expression.ToString();
        }

        ///////////////////////////////////////////////////////////////////
    }
}