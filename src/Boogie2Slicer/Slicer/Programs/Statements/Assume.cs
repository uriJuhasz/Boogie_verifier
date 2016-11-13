using Slicer.Programs.Expressions;

namespace Slicer.Programs.Statements
{
    public class Assume : PredicateStatement
    {
        public Assume(Expression e)
            : base(e)
        {
        }

        ///////////////////////////////////////////////////////////////////
        public override Statement visit(StatementVisitor v)
        {
            return v.visit(this);
        }

        ///////////////////////////////////////////////////////////////////
        public override string statementName()
        {
            return "assume";
        }
    }
}