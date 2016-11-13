#region

using Slicer.Analyzers.FOLConverter.Clauses;
using Slicer.StateSpace.Types;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;

#endregion

namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public abstract class Function : Operator, IOperator, NormalizedStringElement
    {
        public readonly IType resultType;
#if DEBUG
        public static readonly IDictionary<string, Function> m = new Dictionary<string, Function>();
        public static void clearIndex()
        {
            m.Clear();
        }
#endif
//        public readonly int index;
//        private static int lastIndex = 0;
        protected Function(string name, ITypeTuple argumentTypes, IType resultType)
            : base(name,name,argumentTypes)
        {
//            if (name == @"2147483647")
//                Debugger.Break();
            this.resultType = resultType;
            hashCache = nameN.GetHashCode();
//            index = lastIndex;
//            lastIndex++;
#if DEBUG
            m[name] = this;
#endif
        }

        public override bool Equals(object obj)
        {
            Debug.Assert(this == obj || !(obj is Function) || (obj as Function).nameN != nameN);
            return ReferenceEquals(this, obj);
        }

        private readonly int hashCache;
        internal bool isITE { get { return name.StartsWith(@"if-then-else$"); } }

        public bool isConstant { get { return !argumentTypes.Any(); } }
        public override int GetHashCode()
        {
            return hashCache;
        }
        public string ToStringB()
        {
            return ToString();
        }
        public string ToStringN()
        {
            return nameN;
        }

    }
    public class UFunction : Function
    {
        public UFunction(string name, ITypeTuple argumentTypes, IType resultType)
            : base(name, argumentTypes, resultType)
        {
        }
        public override bool isInterpreted { get { return false; } }
    }
    public class InterpretedFunction : Function
    {
        public InterpretedFunction(string name, ITypeTuple argumentTypes, IType resultType)
            : base(name, argumentTypes, resultType)
        {
        }
        public override bool isInterpreted { get { return true; } }
        public bool isNumber { get { return name.All(Char.IsDigit); } }
    }
}