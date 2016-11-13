using System.Collections.Generic;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Types.Quantification;
using Slicer.Analyzers.FOLConverter.Formulae;

namespace Slicer.StateSpace.Functions
{
    public interface Function
    {
        string name { get; }
        string fullName { get; }

        IType resultType { get; }
        ITypeTuple argumentTypes { get; }

        ISet<TypeVariable> freeTypeVariables { get; }

        string templateName { get; }
        ITypeTuple typeArguments { get; }
        bool isITE { get; }

        Function substitute(TypeParameterInstantiation s);
    }
}