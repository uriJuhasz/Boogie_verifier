using Slicer.StateSpace.Types;

namespace Slicer.StateSpace.Variables
{
    public class Constant : ProgramVariable
    {
        public Constant(string name, IType type, bool isUnique)
            : base(name, type, false, false, true, true)
        {
            this.isUnique = isUnique;
        }

        public bool isUnique { get; private set; }
    }
}