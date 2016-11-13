using System.Collections.Generic;
using System.Numerics;
using Slicer.StateSpace.Types;

namespace Slicer.StateSpace.Values
{
    public class IntegerValue : Value
    {
        private static readonly Dictionary<BigInteger, IntegerValue> values = new Dictionary<BigInteger, IntegerValue>();

        private IntegerValue(BigInteger value)
        {
            this.value = value;
        }

        public BigInteger value { get; private set; }

        #region Value Members

        public IType type
        {
            get { return IntegerType.integerType; }
        }

        #endregion

        public static IntegerValue make(BigInteger value)
        {
            IntegerValue result = null;
            if (!values.TryGetValue(value, out result))
            {
                result = new IntegerValue(value);
                values[value] = result;
            }
            return result;
        }

        public override string ToString()
        {
            return value.ToString();
        }
    }
}