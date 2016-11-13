using System.Collections.Generic;
using Slicer.StateSpace.Functions;
using Slicer.StateSpace.Types.Quantification;
using Slicer.StateSpace.Types.Utilities;

namespace Slicer.StateSpace.Types
{
    public abstract class AtomicType : IType
    {
        #region DataType Members
        public bool isMapType { get { return false; } }

        public IType substitute(TypeParameterInstantiation instantiation)
        {
            return this;
        }

        ////////////////////////////////////////////////////////////////////
        public abstract bool isEquivalent(IType other);


        public void check(TypeFactory.Context context)
        {
        }

        ////////////////////////////////////////////////////////////////////
        public bool isGround
        {
            get { return freeTypeVariables.Count == 0; }
        }

        ////////////////////////////////////////////////////////////////////
        public abstract void visit(TypeVisitor v);

        ////////////////////////////////////////////////////////////////////
        private string stringNCache = null;
        public string ToStringN()
        {
            if (stringNCache == null)
                stringNCache = ToString();
            return stringNCache;
        }

        ////////////////////////////////////////////////////////////////////
        public string ToStringB()
        {
            return ToString();
        }
        ////////////////////////////////////////////////////////////////////
        public string ToString(IDictionary<TypeVariable, string> vm)
        {
            return ToString();
        }

        ////////////////////////////////////////////////////////////////////
        public string ToStringN(IDictionary<TypeVariable, string> vm)
        {
            return ToStringN();
        }

        ////////////////////////////////////////////////////////////////////
        public ISet<TypeVariable> freeTypeVariables
        {
            get { return new HashSet<TypeVariable>(); }
        }

        #endregion
    }
}