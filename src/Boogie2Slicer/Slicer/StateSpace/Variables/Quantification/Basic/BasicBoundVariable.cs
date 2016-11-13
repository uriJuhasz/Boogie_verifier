using System.Diagnostics;
using Slicer.StateSpace.Types;

namespace Slicer.StateSpace.Variables.Quantification.Basic
{
    internal class BasicBoundVariable : BoundVariable
    {
        public BasicBoundVariable(string name, IType type)
        {
            Debug.Assert(name != null);

            this.name = name;
            this.type = type;
        }

        //////////////////////////////////////////////////////////////////

        #region BoundVariable Members

        public override string ToString()
        {
            return name;
        }

        //////////////////////////////////////////////////////////////////
        public string name { get; private set; }
        public IType type { get; private set; }

        #endregion
    }
}