using System.Diagnostics;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Types.Quantification;

namespace Slicer.Programs
{
    public class TypeSynonym
    {
        public TypeSynonym(string name, TypeVariable[] typeParameters, IType type)
        {
            Debug.Assert(name != null);
            Debug.Assert(typeParameters != null);
            Debug.Assert(type != null);
            foreach (var tp in typeParameters)
                Debug.Assert(tp != null);

            this.name = name;
            this.typeParameters = (TypeVariable[]) typeParameters.Clone();
            this.type = type;
        }

        public string name { get; private set; }
        public TypeVariable[] typeParameters { get; private set; }
        public IType type { get; private set; }
    }
}