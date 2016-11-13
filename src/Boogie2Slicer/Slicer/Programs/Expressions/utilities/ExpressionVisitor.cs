namespace Slicer.Programs.Expressions.utilities
{
    public interface ExpressionVisitor
    {
        Expression visit(BoundVariableExpression e);
        Expression visit(ProgramVariableExpression e);
        Expression visit(LiteralExpression e);
        Expression visit(FAE e);
        Expression visit(QuantifiedExpression e);
        Expression visit(QuantifiedTypeExpression e);
    }
}