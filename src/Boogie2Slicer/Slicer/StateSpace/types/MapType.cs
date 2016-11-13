using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.StateSpace.Functions;
using Slicer.StateSpace.Types.Quantification;
using Slicer.StateSpace.Types.Quantification.Basic;
using Slicer.StateSpace.Types.Utilities;

namespace Slicer.StateSpace.Types
{
    public class MapType : IType
    {
        public readonly ITypeTuple domain;
        public readonly TypeConstructorInstance originalType;
        public readonly IType range;
        public readonly TypeVariable[] typeParameters;
        public MapType originalSubstitution;
        public bool isMapType { get { return true; } }

        public MapType(TypeVariable[] typeParameters, IEnumerable<IType> domain, IType range,
                       TypeConstructorInstance originalType)
        {
            Debug.Assert(typeParameters != null);
            Debug.Assert(domain != null);
            Debug.Assert(range != null);
            Debug.Assert(domain.All(xx=>xx!=null));


            this.typeParameters = new TypeVariable[typeParameters.Length];
            for (int i = 0; i < typeParameters.Length; i++)
                this.typeParameters[i] = typeParameters[i];

            this.domain = TypeTuple.make(domain);
            this.range = range;

            this.originalType = originalType;
        }

        public string originalName
        {
            get
            {
                if (originalType == null)
                    return null;
                else
                    return originalType.ToString();
            }
        }

        #region DataType Members

        public override int GetHashCode()
        {
            return ToStringN().GetHashCode();
        }

        ////////////////////////////////////////////////////////////////////
        public override bool Equals(object o)
        {
            return (o is IType) && ToStringN() == (o as IType).ToStringN();
        }

        ////////////////////////////////////////////////////////////////////
        public VariableType[] canonicalParameterArray()
        {
            var ttv = new VariableType[typeParameters.Length];
            for (int i = 0; i < ttv.Length; i++)
                ttv[i] = new VariableType(new BasicTypeVariable("$T" + i.ToString()));
            return ttv;

        }
        public TypeParameterInstantiation getCanonicalSubstitution()
        {
            var ttv = canonicalParameterArray();
            return new TypeParameterInstantiation(typeParameters, ttv);
        }
        public bool isEquivalent(IType other)
        {
            var omt = other as MapType;
            if (omt == null)
                return false;
            if (omt.typeParameters.Count() != typeParameters.Count())
                return false;
            if (omt.domain.Count() != domain.Count())
                return false;

            var ttv = canonicalParameterArray();
            var otherSub = new TypeParameterInstantiation(omt.typeParameters, ttv);
            var thisSub = new TypeParameterInstantiation(typeParameters, ttv);

//            var omtUnified = omt.substitute(new TypeParameterInstantiation(omt.mapTypeArguments, ttv)) as MapType;
//            var thisUnified = substitute(new TypeParameterInstantiation(mapTypeArguments, ttv)) as MapType;

            for (int i = 0; i < domain.Count(); i++)
                if (!domain[i].substitute(thisSub).isEquivalent(omt.domain[i].substitute(otherSub)))
                    return false;
            if (!range.substitute(thisSub).isEquivalent(omt.range.substitute(otherSub)))
                return false;
            return true;
        }

        public bool isGround
        {
            get { return freeTypeVariables.Count == 0; }
        }

        public void visit(TypeVisitor v)
        {
            v.visit(this);
        }


        public string ToStringB()
        {
            return ToString();
        }

        public override string ToString()
        {
            if (originalName != null)
                return originalName;
            else
                return ToStringN();
        }

        public string ToString(IDictionary<TypeVariable, string> vm)
        {
            if (originalName != null)
                return originalName;
            else
                return ToStringN(vm);
        }

        private string stringNCache = null;
        public string ToStringN()
        {
            if (stringNCache == null)
                stringNCache = ToStringNInt();
            return stringNCache;
        }

        private string ToStringNInt()
        {
            var vm = new Dictionary<TypeVariable, string>();
            foreach (var ftv in freeTypeVariables)
                vm[ftv] = ftv.name;
            return ToStringN(vm);
        }

        public string ToStringN(IDictionary<TypeVariable, string> vm)
        {
            string result = "";
            if (typeParameters.Count() > 0)
            {
                result += "<";
                {
                    bool first = true;
                    foreach (var t in typeParameters)
                    {
                        if (first)
                            first = false;
                        else
                            result += ",";
                        string n = "v" + vm.Values.Count.ToString();
                        vm[t] = n;
                        result += n;
                    }
                }
                result += ">";
            }


            result += "[";
            {
                bool first = true;
                foreach (var t in domain)
                {
                    if (first)
                        first = false;
                    else
                        result += ",";
                    result += t.ToStringN(vm);
                }
            }
            result += "]" + range.ToStringN(vm);

            return result;
        }

        ////////////////////////////////////////////////////////////////////
        public ISet<TypeVariable> freeTypeVariables
        {
            get
            {
                var result = new HashSet<TypeVariable>();
                foreach (var p in domain)
                    result.UnionWith(p.freeTypeVariables);
                result.UnionWith(range.freeTypeVariables);

                foreach (var tp in typeParameters)
                    result.Remove(tp);

                return result;
            }
        }

        /////////////////////////////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////////////////////////////
        public IType substitute(TypeParameterInstantiation instantiation)
        {
            return substituteMap(instantiation);
        }

        public void check(TypeFactory.Context context)
        {
            context.push();
            foreach (var tp in typeParameters)
                Debug.Assert(!ReferenceEquals(context.lookupTypeVariable(tp.name), tp));

            foreach (var tp in typeParameters)
                context.add(tp);

            {
                foreach (var d in domain)
                    d.check(context);
                range.check(context);
            }

            context.pop();
        }

        #endregion

        /////////////////////////////////////////////////////////////////////////////////////////////////////
        public MapType substituteMap(TypeParameterInstantiation instantiation)
        {
            foreach (var tp in typeParameters)
                Debug.Assert(instantiation.map(tp) == null);

//            Debug.Assert(mapTypeArguments.Length == mapTypeArguments.Length);
            bool clone = false;

            var newDomain = new IType[domain.Count()];
            for (int i = 0; i < domain.Count(); i++)
            {
                newDomain[i] = domain[i].substitute(instantiation);
                if (newDomain[i] != domain[i])
                    clone = true;
            }
            IType newRange = range.substitute(instantiation);
            if (newRange != range)
                clone = true;

            TypeConstructorInstance newOriginalType = substituteOriginalType(instantiation);
            if (newOriginalType != originalType)
                clone = true;

            MapType result;
            if (clone)
            {
                result = new MapType((TypeVariable[]) typeParameters.Clone(), newDomain, newRange, newOriginalType);
                result.originalSubstitution = this;
            }
            else
                result = this;

            return result;
        }

        private TypeConstructorInstance substituteOriginalType(TypeParameterInstantiation instantiation)
        {
            if (originalType == null)
                return null;
            return originalType.substitute(instantiation) as TypeConstructorInstance;
        }
    }
}