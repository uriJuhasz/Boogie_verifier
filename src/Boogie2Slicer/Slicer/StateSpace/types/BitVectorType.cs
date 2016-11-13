using System.Collections.Generic;
using System.Diagnostics;
using Slicer.StateSpace.Types.Utilities;

namespace Slicer.StateSpace.Types
{
    public class BitVectorType : AtomicType
    {
        private static readonly Dictionary<int, BitVectorType> instances = new Dictionary<int, BitVectorType>();

        private BitVectorType(int width)
        {
            Debug.Assert(width > 0);
            this.width = width;
        }

        public int width { get; private set; }

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
            var obv = other as BitVectorType;
            if (obv == null)
                return false;
            return width == obv.width;
        }

        ////////////////////////////////////////////////////////////////////
        public override void visit(TypeVisitor v)
        {
            v.visit(this);
        }

        public override string ToString()
        {
            return "BitVector[" + width + "]";
        }

        public static BitVectorType makeBitVectorType(int width)
        {
            Debug.Assert(width > 0);
            BitVectorType result = null;
            if (!instances.TryGetValue(width, out result))
            {
                result = new BitVectorType(width);
                instances[width] = result;
            }
            return result;
        }
    }
}