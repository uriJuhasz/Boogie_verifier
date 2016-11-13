using System.Diagnostics;
using Slicer.StateSpace.Types;

namespace Slicer.StateSpace.Variables
{
    public class ProgramVariable : Variable
    {
        public ProgramVariable(string name, IType type, bool isInput, bool isOutput, bool isGlobal, bool isConstant)
        {
            Debug.Assert(name != null);
            Debug.Assert(type != null);
            Debug.Assert(!((isInput || isOutput) && isGlobal));

            this.name = name;
            this.type = type;
            this.isInput = isInput;
            this.isOutput = isOutput;
            this.isGlobal = isGlobal;
            this.isConstant = isConstant;
        }

        public bool isConstant { get; private set; }
        public bool isGlobal { get; private set; }
        public bool isInput { get; private set; }
        public bool isOutput { get; private set; }

        #region Variable Members

        public string name { get; private set; }
        public IType type { get; private set; }

        public override string ToString()
        {
            return name;
        }

        #endregion
    }
}