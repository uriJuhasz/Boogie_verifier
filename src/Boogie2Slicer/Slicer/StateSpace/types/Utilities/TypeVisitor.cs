namespace Slicer.StateSpace.Types.Utilities
{
    public interface TypeVisitor
    {
        void visit(BitVectorType t);
        void visit(BooleanType t);
        void visit(IntegerType t);
        void visit(MapType t);
        void visit(TypeConstructorInstance t);
        void visit(VariableType t);
    }
}