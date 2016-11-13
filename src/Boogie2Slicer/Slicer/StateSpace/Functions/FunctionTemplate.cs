using Slicer.StateSpace.Types;
using Slicer.StateSpace.Types.Quantification;

namespace Slicer.StateSpace.Functions
{
    public interface FunctionTemplate
    {
        TypeVariable[] typeParameters { get; }
        FunctionSignature signature { get; }

        string name { get; }

        FunctionBody body { get; set; }

        string attributes { get; }

        Function getInstance(ITypeTuple typeArguments);
    }
}