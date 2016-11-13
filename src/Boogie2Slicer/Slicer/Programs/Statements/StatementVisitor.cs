namespace Slicer.Programs.Statements
{
    public interface StatementVisitor
    {
        Statement visit(Assert s);
        Statement visit(Assume s);
        Statement visit(Block s);
        Statement visit(ConditionalBranch s);
        Statement visit(UnconditionalBranch s);
    }
}