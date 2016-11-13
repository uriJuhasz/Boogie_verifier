#region

using System;
using System.Collections.Generic;
using Slicer.Analyzers.FOLConverter.Clauses;
using Slicer.Analyzers.FOLConverter.Formulae;
using Slicer.Utilities;
using System.Diagnostics;
using Slicer.StateSpace.Types;

#endregion

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    public class FVMS //Free variable multiset
    {
        public static readonly FVMS empty = new FVMS();
        private FVMS() //empty multiset
        {
        }
        public FVMS(LVar v)
        {
            fvms[v] = 1;
        }
        public FVMS(IEnumerable<FVMS> os)
        {
            foreach (var o in os)
                foreach (var kv in o.fvms)
                    fvms.add(kv.Key, kv.Value);
        }

        public int count { get { return fvms.Count; } }
        private readonly IDictionary<LVar, int> fvms = new Dictionary<LVar, int>();

        //{-2,2} : incomparable, {-1} il1<il1, {0} equal, {1} il1>il2
        private static int compare1(FVMS ms1, FVMS ms2)
        {
            Debug.Assert(ms1.count<=ms2.count);
            var il1g = false;
            var il2g = ms1.count<ms2.count;
            foreach (var kv in ms1.fvms)
            {
                int il2v;
                if (!ms2.fvms.TryGetValue(kv.Key, out il2v))
                    return 2;
                var c = kv.Value - il2v;
                if (c > 0)
                {
                    if (il2g)
                        return 2; //incomparable
                    il1g = true;
                }
                else if (c < 0)
                {
                    if (il1g)
                        return 2; //incomparable
                    il2g = true;
                }
            }
            Debug.Assert(!il1g || !il2g);
            Debug.Assert(ms1.count == ms2.count || il1g || il2g);
            if (il1g)
                return 1;
            if (il2g)
                return -1;
            return 0;
        }
        public static int compare(FVMS ms1, FVMS ms2)
        {
            if (ms1.count <= ms2.count)
                return compare1(ms1, ms2);
            else
                return -compare1(ms2, ms1);
        }

    }
    public interface ECLogicElement : LogicElement
    {
        FVMS fvMS { get; }
    }
    public interface IT1 : TypedLogicElement
    {
//        IType type { get; }
    }
    public interface IFA : IT1
    {
        Function function{ get; }
        ITT itt{get;}
    }
    public interface IFAS : LogicElement
    {
        IEnumerable<IFA> ifas { get; }
        ISet<Function> lfss { get; }
    }
    public interface IT : IFAS, IComparable<IT>, TypedLogicElement, ECLogicElement
    {
        #region properties

        ITerm iTerm { get; }

        int maxVarDepth(LVar v);
        int minVarDepth(LVar v);

        #endregion properties

        #region mapping
        bool Equals(object obj);
        int GetHashCode();
        #endregion mapping

        #region strings
        string ToString();
        string ToStringN(IDictionary<LVar, string> lvMap, IDictionary<GT, GT> gtMap);
        string ToStringNoGTN(IDictionary<LVar, string> lvMap);
        #endregion strings

        #region substitution
        IT substitute(GroundSubstitutionEC s);
        IT substitute(SubstitutionEC s);
        #endregion substitution

        IEnumerable<GT> topGTs { get; }
        IEnumerable<GT> allGTs { get; }

        bool isGround { get; }

        IT1 toIT1(int minGFAi);
        IFA toIFA(int minGFAi);
    }
    public interface ITT : ITermTuple<IT>, ECLogicElement 
    {
        #region properties
        bool isGround { get; }
        #endregion properties

        #region mapping
        bool Equals(object obj);
        int GetHashCode();
        #endregion mapping

        string ToStringN(IDictionary<LVar, string> lvMap, IDictionary<GT, GT> gtMap);
        IEnumerable<GT> topGTs { get; }
        IEnumerable<GT> allGTs { get; }

        IList<IT> itT { get; }
    }
    public interface IAF : IComparable<IAF>, ECLogicElement
    {
        IPredicate predicate { get; }
        ITT itt { get;}

        bool isTrue { get; }
        bool isFalse { get; }
        bool isGround { get; }

        IL il(bool polarity);

        IDictionary<LVar, string> varMap { get; }

        IAtomicFormula iFormula { get; }
        int maxVarDepth(LVar v);
        int minVarDepth(LVar v);

        #region substitution
        IAF substitute(GroundSubstitutionEC s);
        IAF substitute(SubstitutionEC s);
        #endregion substitution

        string ToStringN(IDictionary<LVar, string> lvMap, IDictionary<GT, GT> gtMap);
        string ToStringNoGTN(IDictionary<LVar, string> varMap);
        IEnumerable<GT> topGTs { get; }
        IEnumerable<GT> allGTs { get; }

    }
    public interface IL : IComparable<IL>, ECLogicElement
    {
        PP pp { get; }
        IAF iaf { get; }
        ITT itt { get; }
        IList<IT> itT { get; }
        IPredicate predicate { get; }
        bool isEQOrDE { get; }
        bool polarity{ get; }
        bool isGround { get; }
        
        bool isTrue{ get; }
        bool isFalse{ get; }

        Literal iLiteral{ get; }

        #region substitution
        IL substitute(GroundSubstitutionEC s);
        IL substitute(SubstitutionEC s);
        #endregion substitution

        IL negate{ get; }

        string ToStringN(IDictionary<LVar,string> lvMap, IDictionary<GT, GT> gtMap);
        string ToStringN(IDictionary<GT, GT> gtMap);
        string ToStringNoGTN(IDictionary<LVar, string> lvMap);

        IEnumerable<GT> topGTs { get; }
        IEnumerable<GT> allGTs { get; }
//        IEnumerable<Function> lfss { get; }

    }
    public interface IC : IComparable<IC>, IEnumerable<IL>, ECLogicElement
    {
        bool isFalse { get; }
        bool isTrue  { get; }
        
        IL this[int i]{ get; }
        IList<IL> ils { get; }

        int Count { get; }

        string ToStringNN();
        string ToStringN(IDictionary<GT, GT> gtMap);
        string ToStringNoGTN();
        IEnumerable<GT> topGTs { get; }
        IEnumerable<GT> allGTs { get; }

        bool isGround { get;  }
    }
}
