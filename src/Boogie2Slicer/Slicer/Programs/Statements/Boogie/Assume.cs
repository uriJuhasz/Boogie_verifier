using System.Diagnostics;
using Microsoft.Boogie;
using Slicer.Programs.Expressions;

namespace Slicer.Programs.Statements.Boogie
{
    internal class Assume : Statements.Assume
    {
        ///////////////////////////////////////////////////////////////////

        ///////////////////////////////////////////////////////////////////
        private AssumeCmd boogieStatement;

        public Assume(AssumeCmd boogieStatement, Expression expression)
            : base(expression)
        {
            Debug.Assert(boogieStatement != null);
            this.boogieStatement = boogieStatement;
        }
    }
}