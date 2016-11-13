using Slicer.StateSpace.Types;

namespace Slicer.StateSpace.Functions
{
    internal interface MapRead : Function
    {
        MapType mapType { get; }
        ITypeTuple mapIndexTypes { get; }
        ITypeTuple mapTypeArguments { get; }
    }
}