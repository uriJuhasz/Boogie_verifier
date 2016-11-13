using Slicer.StateSpace.Types.Utilities;

namespace Slicer.StateSpace.Types
{
    public class IntegerType : AtomicType
    {
        public static readonly IntegerType integerType = new IntegerType();

        private IntegerType()
        {
        }

        public override int GetHashCode()
        {
            return ToStringN().GetHashCode();
        }

        ////////////////////////////////////////////////////////////////////
        public override bool Equals(object o)
        {
            return (o is IType) && ToStringN() == (o as IType).ToStringN();
        }

        ////////////////////////////////////////////////////////////////////
        public override bool isEquivalent(IType other)
        {
            return other is IntegerType;
        }

        public override void visit(TypeVisitor v)
        {
            v.visit(this);
        }

        public override string ToString()
        {
            return "Integer";
        }
    }
}