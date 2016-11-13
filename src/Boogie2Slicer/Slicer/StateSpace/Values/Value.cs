using Slicer.StateSpace.Types;

namespace Slicer.StateSpace.Values
{
    public interface Value
    {
        IType type { get; }
    }
}