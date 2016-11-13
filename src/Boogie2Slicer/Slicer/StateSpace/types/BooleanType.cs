using Slicer.StateSpace.Types.Utilities;

namespace Slicer.StateSpace.Types
{
    public class BooleanType : AtomicType
    {
        public static readonly BooleanType booleanType = new BooleanType();

        private BooleanType()
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
            return other is BooleanType;
        }

        public override void visit(TypeVisitor v)
        {
            v.visit(this);
        }

        public override string ToString()
        {
            return "Boolean";
        }

        public static bool isBoolean(IType t)
        {
            return ReferenceEquals(t, booleanType);
        }
    }
}