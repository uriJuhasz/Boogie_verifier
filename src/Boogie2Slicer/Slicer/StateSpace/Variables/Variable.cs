using Slicer.StateSpace.Types;

namespace Slicer.StateSpace.Variables
{
    public interface Variable
    {
        string name { get; }
        IType type { get; }
        string ToString();
    }
}