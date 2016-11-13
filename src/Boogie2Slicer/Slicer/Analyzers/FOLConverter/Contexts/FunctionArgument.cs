#region

using System.Diagnostics;
using System.Linq;
using Slicer.Analyzers.FOLConverter.Formulae;
using Slicer.StateSpace.Types;

#endregion

namespace Slicer.Analyzers.FOLConverter.Contexts
{
    internal class FunctionArgument
    {
        public readonly Function function;
        public readonly int index;

        public FunctionArgument(Function function, int index)
        {
            Debug.Assert(index >= 0 && index < function.argumentTypes.Count());
            this.function = function;
            this.index = index;
        }

        public IType dataType
        {
            get { return function.argumentTypes[index]; }
        }

        public override string ToString()
        {
            return function.name + "[" + index + "]";
        }

        public override bool Equals(object obj)
        {
            return obj is FunctionArgument && obj.ToString() == ToString();
        }

        public override int GetHashCode()
        {
            return ToString().GetHashCode();
        }
    }
}