using Slicer.Programs.Expressions;

namespace Slicer.Programs.Statements
{
    public class Assert : PredicateStatement
    {
        public readonly string message;

        public Assert(Expression e, string message)
            : base(e)
        {
            this.message = message;
        }

        ///////////////////////////////////////////////////////////////////
        public override Statement visit(StatementVisitor v)
        {
            return v.visit(this);
        }

        ///////////////////////////////////////////////////////////////////
        public override string statementName()
        {
            return "assert";
        }

        ///////////////////////////////////////////////////////////////////
    }
}