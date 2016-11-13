using Slicer.StateSpace.Types;

namespace Slicer.StateSpace.Values
{
    public class BooleanValue : Value
    {
        private static readonly BooleanValue trueValue = new BooleanValue(true);
        private static readonly BooleanValue falseValue = new BooleanValue(false);

        private BooleanValue(bool value)
        {
            this.value = value;
        }

        public bool value { get; private set; }

        #region Value Members

        public IType type
        {
            get { return BooleanType.booleanType; }
        }

        #endregion

        public BooleanValue getNegation()
        {
            return makeBooleanValue(!value);
        }

        public static BooleanValue makeBooleanValue(bool value)
        {
            if (value)
                return trueValue;
            else
                return falseValue;
        }

        public override string ToString()
        {
            return (value ? "true" : "false"); // value.ToString();
        }
    }
}