using System.Diagnostics;

namespace Slicer.StateSpace.Types.Quantification.Basic
{
    internal class BasicTypeVariable : TypeVariable
    {
        ////////////////////////////////////////////////////////////////////
        private static int lastIndex = 0;
        private readonly int index;
        public BasicTypeVariable(string name)
        {
            Debug.Assert(name != null);

            this.name = name;
            this.index = lastIndex;
            lastIndex++;
        }

        //////////////////////////////////////////////////////////////////

        #region TypeVariable Members

        public string ToStringN()
        {
            return "@TV|" + index.ToString() + "|";
        }
        public override string ToString()
        {
            return name;
        }

        ////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////
        public string name { get; set; }

        public override bool Equals(object obj)
        {
            return obj is BasicTypeVariable && ToString() == obj.ToString();
        }
        public override int GetHashCode()
        {
            return ToString().GetHashCode();
        }
        public int CompareTo(TypeVariable other)
        {
            return name.CompareTo(other.name);
        }
        #endregion
    }
}