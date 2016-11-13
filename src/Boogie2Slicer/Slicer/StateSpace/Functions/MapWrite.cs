using Slicer.StateSpace.Types;
using System.Collections.Generic;

namespace Slicer.StateSpace.Functions
{
    internal interface MapWrite : Function
    {
        MapType mapType { get; }
        ITypeTuple mapTypeArguments { get; }
        ITypeTuple mapIndexTypes { get; }
        IType sourceType { get; }

        MapRead relevantMapRead { get; }

        MapRead mapRead(IEnumerable<IType> dataType);
    }
}