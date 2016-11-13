namespace Slicer.Programs.Statements
{
    public abstract class StatementImp : Statement
    {
        #region Statement Members

        public abstract override string ToString();
        public abstract Statement visit(StatementVisitor v);

        #endregion
    }
}