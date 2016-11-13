using Slicer.StateSpace.Types;

namespace Slicer.StateSpace.Functions
{
    public interface FunctionSignature
    {
        IType resultType { get; }
        ITypeTuple argumentTypes { get; }
    }
}