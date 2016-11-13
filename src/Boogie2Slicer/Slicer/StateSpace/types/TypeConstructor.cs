using System.Diagnostics;

namespace Slicer.StateSpace.Types
{
    public sealed class TypeConstructor
    {
        public TypeConstructor(string name, int arity)
        {
            Debug.Assert(name != null);
            Debug.Assert(arity >= 0);
            this.name = name;
            this.arity = arity;
        }

        public string name { get; private set; }
        public int arity { get; private set; }
    }
}