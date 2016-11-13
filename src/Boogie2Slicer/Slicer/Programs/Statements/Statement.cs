namespace Slicer.Programs.Statements
{
    public interface Statement
    {
        Statement visit(StatementVisitor v);

        string ToString();
    }
}