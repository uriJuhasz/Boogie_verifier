#region

using Slicer.StateSpace.Types;
using System.Collections.Generic;
using System.Diagnostics;
using System;

#endregion

namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public abstract class Predicate : Operator, IPredicate
    {
        #region creation
        protected Predicate(string name, ITypeTuple argumentTypes)
            : base(name,name,argumentTypes)
        {
            pps[true] = new PP(this);
            pps[false] = pps[true].n;
        }
        #endregion creation
        public bool isITE { get { return name.StartsWith(StateSpace.Functions.Basic.BFunctionTemplate.iteName); } }
        public bool isEquality { get { return false; } }
        public abstract bool isLessThan { get;}

        #region equality
        public override bool Equals(object obj)
        {
            return ReferenceEquals(this, obj);
        }

        public override int GetHashCode()
        {
            return nameN.GetHashCode();
        }

        public override string ToString()
        {
            return name;
        }
        #endregion equality

        private readonly IDictionary<bool, PP> pps = new Dictionary<bool,PP>();
        public PP pp(bool b)
        {
            return pps[b];
        }
    }

    public class UPredicate : Predicate
    {
        public UPredicate(string name, ITypeTuple argumentTypes)
            : base(name,argumentTypes)
        {
            Debug.Assert(name != StateSpace.Functions.Basic.BFunctionTemplate.lt.name);
        }
        public override sealed bool isInterpreted { get { return false; } }
        public override bool isLessThan { get { return false; } }
    }
    public class InterpretedPredicate : Predicate
    {
        public InterpretedPredicate(string name, ITypeTuple argumentTypes)
            : base(name, argumentTypes)
        {
            Debug.Assert(name != StateSpace.Functions.Basic.BFunctionTemplate.lt.name);
        }
        public override sealed bool isInterpreted { get { return true; } }
        public override bool isLessThan { get{return false;}}
    }
    public class LTPredicate : Predicate
    {
        private LTPredicate() : base(StateSpace.Functions.Basic.BFunctionTemplate.lt.name, TypeTuple.make(new[] {IntegerType.integerType,IntegerType.integerType })) { }
        private static readonly LTPredicate lt = new LTPredicate();
        public static LTPredicate get{get {return lt;} }
        public override bool isLessThan { get { return true; } }
        public override bool isInterpreted { get { return true; } }
    }
}