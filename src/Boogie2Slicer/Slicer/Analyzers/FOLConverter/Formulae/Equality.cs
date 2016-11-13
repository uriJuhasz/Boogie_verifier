#region

using System.Collections.Generic;
using System.Diagnostics;
using System.Diagnostics.Contracts;
using System.Linq;
using Slicer.StateSpace.Types;

#endregion

namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public class Equality : Operator, IPredicate
    {
        #region members
        private static readonly Dictionary<string, Equality> cache = new Dictionary<string, Equality>();
        public readonly IType eqType;
        public bool isEquality { get { return true; } }
        public bool isLessThan { get { return false; } }
        #endregion members

        #region creation

        private Equality(IType eqType)
            : base("=","==[" + eqType.ToStringN() + "]",new[]{eqType,eqType})
        {
            this.eqType = eqType;
            pps[true] = new PP(this);
            pps[false] = pps[true].n;
        }

        public override bool isInterpreted
        {
            get { return true; }
        }
        public static Equality get(IType dataType)
        {
            Equality e;
            if (!cache.TryGetValue(dataType.ToStringN(), out e))
                cache[dataType.ToStringN()] = e = new Equality(dataType);
            return e;
        }

        #endregion creation

        #region ISPredicate Members
        private readonly IDictionary<bool, PP> pps = new Dictionary<bool, PP>();
        public PP pp(bool b)
        {
            return pps[b];
        }

        #endregion

        #region mapping
        public override bool Equals(object obj)
        {
            //            return obj is EqualityIs && (obj as EqualityIs).eqType.isEquivalent(eqType);
            Debug.Assert(this == obj || !(obj is Equality) || !((obj as Equality).eqType.isEquivalent(eqType)));
            return this == obj;
        }

        public override int GetHashCode()
        {
            return nameN.GetHashCode();
        }

        public override string ToString()
        {
            return name;
        }

        public override string ToString(IEnumerable<string> argumentsStrings)
        {
            Debug.Assert(argumentsStrings.Count() == 2);
            return argumentsStrings.First() + " = " + argumentsStrings.Last();
        }

        public override string ToStringN(IEnumerable<string> argumentStrings)
        {
            return ToString(argumentStrings);
        }

        #endregion mapping

        public bool isITE { get { return false; } }
    }

    public class TruePredicate : InterpretedPredicate
    {
        private static readonly TruePredicate value = new TruePredicate();

        private TruePredicate()
            : base("true",TypeTuple.make())
        {
        }

        public static TruePredicate get
        {
            get
            {
                return value;
            }
        }

    }
    public class FalsePredicate : InterpretedPredicate
    {
        private static readonly FalsePredicate value = new FalsePredicate();

        private FalsePredicate()
            : base("false", TypeTuple.make())
        {
        }

        public static FalsePredicate get()
        {
            return value;
        }
    }
}