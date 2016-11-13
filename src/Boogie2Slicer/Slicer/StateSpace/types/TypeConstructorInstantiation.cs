using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.StateSpace.Functions;
using Slicer.StateSpace.Types.Quantification;
using Slicer.StateSpace.Types.Utilities;

namespace Slicer.StateSpace.Types
{
    public class TypeConstructorInstance : IType
    {
        public readonly ITypeTuple arguments;
        public readonly TypeConstructor typeConstructor;
        public bool isMapType { get { return false; } }

        public TypeConstructorInstance(TypeConstructor typeConstructor, IEnumerable<IType> arguments)
        {
            Debug.Assert(typeConstructor != null);
            Debug.Assert(arguments != null);
            Debug.Assert(arguments.Count() == typeConstructor.arity);
            Debug.Assert(arguments.All(x => x != null));

            this.typeConstructor = typeConstructor;
            this.arguments = TypeTuple.make(arguments);
        }

        #region DataType Members

        public override int GetHashCode()
        {
            return ToStringN().GetHashCode();
        }

        /////////////////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////
        public override bool Equals(object o)
        {
            return (o is IType) && ToStringN() == (o as IType).ToStringN();
        }

        ////////////////////////////////////////////////////////////////////

        ////////////////////////////////////////////////////////////////////
        public bool isEquivalent(IType other)
        {
            var otci = other as TypeConstructorInstance;
            if (otci == null)
                return false;
            if (otci.arguments.Count() != arguments.Count())
                return false;

            if (otci.typeConstructor.name != typeConstructor.name)
                return false;

            for (int i = 0; i < arguments.Count(); i++)
                if (!arguments[i].isEquivalent(otci.arguments[i]))
                    return false;

            return true;
        }

        ////////////////////////////////////////////////////////////////////
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
                foreach (var a in arguments)
                    result.UnionWith(a.freeTypeVariables);
                return result;
            }
        }

        ////////////////////////////////////////////////////////////////////
        public void visit(TypeVisitor v)
        {
            v.visit(this);
        }

        ////////////////////////////////////////////////////////////////////
        public string ToString(IDictionary<TypeVariable, string> vm)
        {
            string result = typeConstructor.name;
            if (arguments.Count() > 0)
            {
                result += " ";
                for (int i = 0; i < arguments.Count(); i++)
                    result += (i == 0 ? "" : " ") + "(" + arguments[i].ToString(vm) + ")";
                result += " ";
            }
            return result;
        }

        ////////////////////////////////////////////////////////////////////
        public string ToStringN(IDictionary<TypeVariable, string> vm)
        {
            string result = typeConstructor.name;
            if (arguments.Count() > 0)
            {
                result += " ";
                for (int i = 0; i < arguments.Count(); i++)
                    result += (i == 0 ? "" : " ") + "(" + arguments[i].ToStringN(vm) + ")";
                result += " ";
            }
            return result;
        }

        ////////////////////////////////////////////////////////////////////
        private string stringNCache = null;
        public string ToStringN()
        {
            if (stringNCache == null)
                stringNCache = ToStringNInt();
            return stringNCache;
        }

        private string ToStringNInt()
        {
            string result = typeConstructor.name;
            if (arguments.Count() > 0)
            {
                result += " ";
                for (int i = 0; i < arguments.Count(); i++)
                    result += (i == 0 ? "" : " ") + "(" + arguments[i].ToStringN() + ")";
                result += " ";
            }
            return result;
        }

        /////////////////////////////////////////////////////////////////////////////////////////////////////
        public string ToStringB()
        {
            return ToString();
        }

        /////////////////////////////////////////////////////////////////////////////////////////////////////
        public override string ToString()
        {
            string result = typeConstructor.name;
            if (arguments.Count() > 0)
            {
                result += " ";
                for (int i = 0; i < arguments.Count(); i++)
                    result += (i == 0 ? "" : " ") + "(" + arguments[i].ToString() + ")";
                result += " ";
            }
            return result;
        }

        /////////////////////////////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////////////////////////////
        public IType substitute(TypeParameterInstantiation instantiation)
        {
            bool clone = false;
            var newArguments = new IType[arguments.Count()];
            for (int i = 0; i < arguments.Count(); i++)
            {
                newArguments[i] = arguments[i].substitute(instantiation);
                Debug.Assert(newArguments[i] != null);
                if (newArguments[i] != arguments[i])
                    clone = true;
            }

            if (clone)
                return new TypeConstructorInstance(typeConstructor, newArguments);

            return this;
        }

        public void check(TypeFactory.Context context)
        {
            foreach (var a in arguments)
                a.check(context);
        }

        #endregion

        /////////////////////////////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////////////////////////////
    }
}