#region

using System;
using Slicer.StateSpace.Types;

#endregion

namespace Slicer.Analyzers.FOLConverter.Formulae
{
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    public class LVar : IComparable<LVar>
    {
        public readonly string baseName;
        public readonly string name;
        public readonly IType type;
        private readonly int hashCache;

        public LVar(string name, IType type, string baseName)
        {
            this.name = name;
            this.baseName = baseName;
            this.type = type;
            hashCache = name.GetHashCode();
        }

        #region IComparable<LVar> Members

        public int CompareTo(LVar v)
        {
            return name.CompareTo(v.name);
        }

        #endregion

        public override int GetHashCode()
        {
            return hashCache;
        }

        public override bool Equals(object obj)
        {
            return ReferenceEquals(this, obj);
        }

        public override string ToString()
        {
            return name;
        }
    }


    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
}