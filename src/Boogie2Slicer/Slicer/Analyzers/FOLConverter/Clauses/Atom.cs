#region

using System;
using System.Collections.Generic;
using Slicer.Analyzers.FOLConverter.Formulae;

#endregion

namespace Slicer.Analyzers.FOLConverter.Clauses
{
    public class Literal : IComparable<Literal>, LogicElement
    {
        #region creation
        public Literal(IAtomicFormula f, bool polarity)
        {
            this.f = f;
            this.polarity = polarity;
            stringCache = ToStringInt();
            
            variableMap = new Dictionary<LVar,string>();
            foreach (var fv in orderedFreeVariables)
                variableMap[fv] = "v_"+variableMap.Count.ToString();
        }
        #endregion creation

        #region comparison
        public int CompareTo(Literal a)
        {
            return ToString().CompareTo(a.ToString());
        }

        #endregion comparison

        #region mapping
        public override bool Equals(Object o)
        {
            return o is Literal && ToString() == o.ToString();
        }

        public override int GetHashCode()
        {
            return ToString().GetHashCode();
        }
        #endregion mapping

        #region atom operations
        public Literal substitute(Substitution s)
        {
            var nf = f.substituteA(s);
            if (ReferenceEquals(nf, f))
                return this;
            else
                return new Literal(nf, polarity);
        }

        internal Literal negate()
        {
            return new Literal(f, !polarity);
        }

        #endregion atom operations

        #region strings

        private readonly IDictionary<LVar, string> variableMap;

        public string ToString(IDictionary<LVar, string> vm)
        {
            if (f.spredicate is Equality)
                if (!polarity)
                    return f.subTerms[0].ToString(vm) + " !=" + f.subTerms[1].ToString(vm);
            return stringRep(f.ToString(vm));
        }

        public string ToStringN()
        {
            return ToStringN(variableMap);
        }

        public string ToStringN(IDictionary<LVar, string> vm)
        {
            return stringRep(f.ToStringN(vm));
        }

        public string ToStringB()
        {
            return ToString(variableMap);
        }

        public override string ToString()
        {
            return stringCache;
        }

        private string stringRep(string fRep)
        {
            return (polarity ? "" : "!") + fRep;
        }

        private string ToStringInt()
        {
            return stringRep(f.ToString());
        }

        #endregion strings

        #region properties
        public bool isGround { get { return freeVariables.Count == 0;} }
        public bool isTrue { get { return (f.isTrue && polarity) || (f.isFalse && !polarity); } }
        public bool isFalse { get { return (f.isTrue && !polarity) || (f.isFalse && polarity); } }
        public ISet<LVar> freeVariables
        {
            get { return f.ffreeVariables; }
        }

        public IList<LVar> orderedFreeVariables
        {
            get
            {
                return f.orderedFreeVariables;
            }
        }
        public ISet<Function> functions
        {
            get { return f.functions; }
        }

        public int height
        {
            get { return f.height + 1; }
        }

        #endregion properties

        #region members
        public readonly IAtomicFormula f;
        public readonly bool polarity;
        private readonly string stringCache;
        #endregion members

        public IEnumerable<Function> constants { get{return f.constants;} }
    }
}