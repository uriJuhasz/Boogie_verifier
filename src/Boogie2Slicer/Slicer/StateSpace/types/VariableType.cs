using System;
using System.Collections.Generic;
using System.Diagnostics;
using Slicer.StateSpace.Functions;
using Slicer.StateSpace.Types.Quantification;
using Slicer.StateSpace.Types.Utilities;

namespace Slicer.StateSpace.Types
{
    public class VariableType : IType
    {
        public readonly TypeVariable typeVariable;

        public VariableType(TypeVariable typeVariable)
        {
            Debug.Assert(typeVariable != null);
            this.typeVariable = typeVariable;
        }

        ////////////////////////////////////////////////////////////////////

        #region DataType Members

        public bool isMapType { get{return false;} }

        public override bool Equals(object o)
        {
            return (o is IType) && ToStringN() == (o as IType).ToStringN();
        }

        ////////////////////////////////////////////////////////////////////
        public bool isEquivalent(IType other)
        {
            var ovt = other as VariableType;
            if (ovt == null)
                return false;
            return ReferenceEquals(typeVariable, ovt.typeVariable);
        }

        ////////////////////////////////////////////////////////////////////
        public void visit(TypeVisitor v)
        {
            v.visit(this);
        }

        public string ToStringN()
        {
            return typeVariable.ToStringN();
        }

        public string ToStringN(IDictionary<TypeVariable, String> vm)
        {
            return vm[typeVariable];
        }

        public string ToString(IDictionary<TypeVariable, String> vm)
        {
            return vm[typeVariable];
        }

        public override string ToString()
        {
            return typeVariable.name;
        }

        public string ToStringB()
        {
            return typeVariable.name;
        }

        public bool isGround
        {
            get { return freeTypeVariables.Count == 0; }
        }

        ////////////////////////////////////////////////////////////////////
        public ISet<TypeVariable> freeTypeVariables
        {
            get
            {
                var result = new HashSet<TypeVariable>();
                result.Add(typeVariable);
                return result;
            }
        }

        ////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////
        public IType substitute(TypeParameterInstantiation instantiation)
        {
            IType result = instantiation.map(typeVariable);
            if (result == null)
                result = this;
            return result;
        }

        public void check(TypeFactory.Context context)
        {
            Debug.Assert(context.lookupTypeVariable(typeVariable.name) != null);
        }

        public override int GetHashCode()
        {
            return ToStringN().GetHashCode();
        }

        #endregion
    }
}