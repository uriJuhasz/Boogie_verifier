using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Types.Quantification;

namespace Slicer.StateSpace.Functions
{
    public class TypeParameterInstantiation
    {
        public TypeParameterInstantiation()
        {
            typeArguments = new List<IType>();
            typeParameters = new List<TypeVariable>();
        }

        public TypeParameterInstantiation(TypeVariable[] typeParameters, IEnumerable<IType> typeArguments)
        {
            Debug.Assert(typeParameters != null);
            Debug.Assert(typeArguments != null);
            Debug.Assert(typeArguments.Count() == typeParameters.Length);

            this.typeArguments = new List<IType>(typeArguments);
            this.typeParameters = new List<TypeVariable>(typeParameters);
        }

        private List<IType> typeArguments { get; set; }
        private List<TypeVariable> typeParameters { get; set; }

        public void add(TypeVariable variable, IType value)
        {
            foreach (var t in typeParameters)
                Debug.Assert(t.name != variable.name);

            typeParameters.Add(variable);
            typeArguments.Add(value);
        }

        public void remove(TypeVariable variable)
        {
            Debug.Assert(typeParameters.Last().name == variable.name);
            typeParameters.RemoveAt(typeParameters.Count - 1);
            typeArguments.RemoveAt(typeArguments.Count - 1);
        }

        public IType map(TypeVariable typeVariable)
        {
            for (int i = 0; i < typeParameters.Count; i++)
                if (ReferenceEquals(typeParameters[i], typeVariable))
                    return typeArguments[i];
            return null;
        }

        public override string ToString()
        {
            string result = "(";
            for (int i = 0; i < typeArguments.Count; i++)
                result += (i == 0 ? "" : ",") + typeParameters[i].ToString() + " -> " + typeArguments[i].ToString();
            result += ")";
            return result;
        }
    }
}