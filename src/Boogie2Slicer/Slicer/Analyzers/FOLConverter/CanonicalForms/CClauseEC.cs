#region

using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Analyzers.FOLConverter.Formulae;
using Slicer.Analyzers.FOLConverter;
using Slicer.StateSpace.Types;
using Slicer.Utilities;
using Slicer.Analyzers.FOLConverter.Clauses;
using System;

#endregion

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    public abstract class CT : IT
    {
        #region instance creation
        protected CT()
        {
        }
        #endregion instance creation

        #region properties
        public abstract IT1 toIT1(int minGFAi);
        public abstract IFA toIFA(int minGFAi);
        public abstract FVMS fvMS { get; }
        public abstract bool isGround { get; }
        public abstract ITerm iTerm { get; }
        public abstract IType type { get; }
        public abstract ISet<LVar> freeVariables { get; }
        public abstract IList<LVar> orderedFreeVariables { get; }
        public abstract ISet<Function> functions { get; protected set; }
        public abstract int maxVarDepth(LVar v);
        public abstract int minVarDepth(LVar v);
        public abstract IEnumerable<GT> topGTs { get; }
        public abstract IEnumerable<GT> allGTs { get; }
        #endregion properties

        #region mapping
        public override bool Equals(object obj)
        {
            return obj == this;
        }
        public override int GetHashCode(){ return ToStringN().GetHashCode(); }
        public virtual int CompareTo(IT other)
        {
            return ToStringN().CompareTo(other.ToStringN());
        }
        #endregion mapping

        #region strings
        public abstract override string ToString();
        public abstract string ToStringN();
        public abstract string ToStringB();
        public abstract string ToString(IDictionary<LVar, string> vm);
        public abstract string ToStringN(IDictionary<LVar, string> vm);
        public abstract string ToStringN(IDictionary<LVar, string> lvMap, IDictionary<GT, GT> gtMap);
        public abstract string ToStringNoGTN(IDictionary<LVar, string> lvMap);
//        public abstract int weight { get; }
        public abstract int height { get; }

        public abstract ISet<Function> lfss { get; }

        #endregion strings

        #region substitution
        public abstract IT substitute(GroundSubstitutionEC s);
        public abstract IT substitute(SubstitutionEC s);
        #endregion substitution

        public abstract IEnumerable<IFA> ifas{get;}
    }
    public abstract class CTT : TermTupleC<IT>, ITT
    {
        #region instance creation
        protected CTT(IEnumerable<IT> terms)
            : base(terms)
        {
        }
        #endregion instance creation

        #region properties
        public abstract FVMS fvMS { get; }
        public abstract bool isGround { get; }
        public abstract IEnumerable<GT> topGTs { get; }
        public IList<IT> itT { get {return ts; } }

        public string ToStringN(IDictionary<LVar, string> lvMap, IDictionary<GT, GT> gtMap)
        {
            return this.Aggregate("(", (s, ct) => (s + (s.Last() == '(' ? "" : ",") + ct.ToStringN(lvMap,gtMap))) + ")";
        }
        private ISet<GT> allGTsCache = null;
        public IEnumerable<GT> allGTs
        {
            get
            {
                if (allGTsCache == null)
                    allGTsCache = new HashSet<GT>(from t in ts from gt in t.allGTs select gt);
                return allGTsCache;
            }
        }

        #endregion properties

    }
    public abstract class CAF : IAF 
    {
        #region construction
        protected CAF(IPredicate predicate, ITT arguments)
        {
            Debug.Assert(predicate.argumentTypes.Count() == arguments.Count());
            Debug.Assert(predicate.argumentTypes.Zip(arguments, (at, a) => at.isEquivalent(a.type)).All(x => x));
            Debug.Assert(arguments.All(t=>(!(t is GT) || (t as GT).rep!=null)));
            this.predicate = predicate;
            this.itt = arguments;
        }
        #endregion construction

        #region properties
        public FVMS fvMS { get { return itt.fvMS; } }
        public bool isGround { get { return itt.isGround; } }
        public bool isTrue
        { 
            get { 
                return 
                    predicate is TruePredicate ||
                    ( (predicate is Equality) && itt[0].Equals(itt[1]) ); 
            } 
        }
        public bool isFalse { 
            get { 
                return 
                    predicate is FalsePredicate; //todo true=false
            } 
        }

        public IPredicate predicate { get; private set; }
        public ITT itt { get; private set; }

        public ISet<LVar> freeVariables { get { return itt.freeVariables; } }
        public IList<LVar> orderedFreeVariables { get { return itt.orderedFreeVariables; } }
        public ISet<Function> functions { get { return itt.functions; } }

        public abstract IL il(bool polarity); 
        public int height {get { return itt.height + 1; }}
//        public int weight {get { return arguments.weight + 1; }}
        public IAtomicFormula iFormula { 
            get
            {
                if (predicate is Equality)
                    return new EqualityFormula(itt[0].iTerm, itt[1].iTerm);
                else
                    return new PredicateApplication(predicate as Predicate,from t in itt select t.iTerm);
            } 
        }

        public IEnumerable<GT> topGTs { get { return itt.topGTs; } }
        public IEnumerable<GT> allGTs
        {
            get
            {
                return itt.allGTs;
            }
        }
        #endregion properties

        #region strings
        private IDictionary<LVar, string> varMapCache = null;
        public IDictionary<LVar, string> varMap{
            get
            {
                if (varMapCache == null)
                {
                    varMapCache = new Dictionary<LVar, string>();
                    foreach (var fv in orderedFreeVariables)
                        varMapCache[fv] = "v" + varMapCache.Count.ToString();
                }
                return varMapCache;
            }
        }
        public string ToStringB()
        {
            return predicate.ToString(itt, varMap);
        }
        private string stringNCache = null;
        public string ToStringN()
        {
            if (stringNCache==null)
                stringNCache = predicate.ToStringN(itt,new Dictionary<LVar,string>());
            return stringNCache;
        }
        public string ToStringN(IDictionary<LVar, string> vm)
        {
            return predicate.ToStringN(itt, vm);
        }
        public string ToString(IDictionary<LVar, string> vm)
        {
            return predicate.ToString(itt, vm);
        }

        public string ToStringN(IDictionary<LVar, string> varMap, IDictionary<GT, GT> gtMap)
        {
            return predicate.ToStringN(from a in itt select a.ToStringN(varMap, gtMap));
        }
        public string ToStringNoGTN(IDictionary<LVar, string> varMap)
        {
            return predicate.ToStringN(from a in itt select a.ToStringNoGTN(varMap));
        }

        public int CompareTo(IAF other)
        {
            return ToStringN().CompareTo(other.ToStringN());
        }

        private string stringCache = null;
        public override string ToString()
        {
            if (stringCache==null)
                stringCache = predicate.ToString(itt);
            return stringCache;
        }

        public override bool Equals(object obj)
        {
            return ReferenceEquals(this, obj);
        }
        public override int GetHashCode()
        {
            return ToStringN().GetHashCode();
        }

        public int CompareTo(FAF other)
        {
            return ToStringN().CompareTo(other.ToStringN());
        }

        #endregion strings
        public abstract int maxVarDepth(LVar v);
        public abstract int minVarDepth(LVar v);


        #region substitution
        public abstract IAF substitute(GroundSubstitutionEC s);
        public abstract IAF substitute(      SubstitutionEC s);
        #endregion substitution
    }
    public abstract class CL : IL
    {
        #region construction
#if DEBUG
        private static int curIndex = 0;
        public readonly int index;
        public static readonly IDictionary<int, CL> m = new Dictionary<int, CL>();
        public static void resetIndex()
        {
            curIndex = 0;
            m.Clear();
        }
#endif
        protected CL(IAF formula, bool polarity)
        {
            this.iaf = formula;
            this.polarity = polarity;
            isTrue  = (polarity && formula.isTrue)  || (isEQOrDE && polarity && formula.itt[0]==formula.itt[1]);
            isFalse = (!polarity && formula.isTrue) || (isEQOrDE && !polarity && formula.itt[0] == formula.itt[1]); ;
            stringCacheN = ToStringNInt();
            varMap = new Dictionary<LVar, string>();
            foreach (var fv in orderedFreeVariables)
                varMap[fv] = "v" + varMap.Count().ToString();
#if DEBUG
            index = curIndex;
            curIndex++;
            m[index] = this;
#endif
        }
        #endregion construction

        #region properties
        public PP pp { get { return predicate.pp(polarity); } }
        public FVMS fvMS { get { return iaf.fvMS; } }
        public readonly Dictionary<LVar, string> varMap;
        public ITT itt { get { return iaf.itt; } }
        public IList<IT> itT { get { return itt.itT; } }
        public IAF iaf { get; private set; }
        public IPredicate predicate { get{return iaf.predicate;} }
        public bool polarity { get; private set; }
        public bool isFalse { get; private set; }
        public bool isTrue { get; private set; }
        public abstract bool isGround { get; }
        public bool isEQOrDE { get { return iaf.predicate.isEquality; } }

        public abstract IL negate { get; }

        public int height { get { return iaf.height + 1; } }
//        public int weight { get { return formula.weight + 1; } }
        public ISet<LVar> freeVariables { get { return iaf.freeVariables; } }
        public IList<LVar> orderedFreeVariables { get { return iaf.orderedFreeVariables; } }
        public ISet<Function> functions { get { return iaf.functions; } }
        public Literal iLiteral
        {
            get
            {
                return new Literal(iaf.iFormula, polarity);
            }
        }


        private Dictionary<LVar, int> minVarDepthMap = new Dictionary<LVar, int>();
        private Dictionary<LVar, int> maxVarDepthMap = new Dictionary<LVar, int>();
        public int maxVarDepth(LVar v)
        {
            int result;
            if (!freeVariables.Contains(v))
                result = int.MinValue;
            else if (!maxVarDepthMap.TryGetValue(v, out result))
                maxVarDepthMap[v] = result = (from t in iaf.itt select t.maxVarDepth(v)).Max();
            return result;
        }
        public int minVarDepth(LVar v)
        {
            int result;
            if (!freeVariables.Contains(v))
                result = int.MaxValue;
            else if (!minVarDepthMap.TryGetValue(v, out result))
                minVarDepthMap[v] = result = (from t in iaf.itt select t.minVarDepth(v)).Min();
            return result;
        }

        public IEnumerable<GT> topGTs { get { return iaf.topGTs; } }
        public IEnumerable<GT> allGTs
        {
            get
            {
                return iaf.allGTs;
            }
        }
        #endregion properties

        #region strings

        protected string stringCacheN;
        public string ToStringN() { return stringCacheN; }

        public string ToStringN(IDictionary<LVar,string> vm)
        {
            return makeString(iaf.ToStringN(vm), polarity);
        }

        public string ToString(IDictionary<LVar, string> vm)
        {
            return makeString(iaf.ToString(vm), polarity);
        }

        public string ToStringB()
        {
            return makeString(iaf.ToStringB(), polarity);
        }

        internal static string makeStringN(IAF f, bool polarity)
        {
            return makeString(f.ToStringN(), polarity);
        }

        public string ToStringN(IDictionary<LVar, string> varMap, IDictionary<GT, GT> gtMap)
        {
            return makeString(iaf.ToStringN(varMap,gtMap),polarity);
        }

        public string ToStringNoGTN(IDictionary<LVar, string> varMap)
        {
            return makeString(iaf.ToStringNoGTN(varMap), polarity);
        }

        public string ToStringN(IDictionary<GT, GT> gtMap)
        {
            return makeString(iaf.ToStringN(varMap, gtMap), polarity);
        }

        private string stringCacheNN = null;
        public string ToStringNN()
        {
            if (stringCacheNN==null)
                stringCacheNN = makeString(iaf.ToStringN(varMap), polarity);
            return stringCacheNN;
        }

        internal static string makeString(string formulaString, bool polarity)
        {
            return (polarity ? "" : "!") + formulaString;
        }

        public string ToStringNInt()
        {
            return makeString(iaf.ToStringN(), polarity);
        }

        public override string ToString()
        {
            return makeString(iaf.ToString(),polarity);
        }

        #endregion strings

        #region indexing

        public int CompareTo(IL other)
        {
            return ToStringN().CompareTo(other.ToStringN());
        }

        public override bool Equals(object obj)
        {
            return ReferenceEquals(this, obj);
        }
        public override int GetHashCode()
        {
            return ToStringN().GetHashCode();
        }

        public int CompareTo(GL other)
        {
            return ToStringN().CompareTo(other.ToStringN());
        }

        #endregion indexing

        #region substitution
        public abstract IL substitute(GroundSubstitutionEC s);
        public abstract IL substitute(SubstitutionEC s);
        #endregion substitution
    }
    public abstract class CC : IC
    {
        #region instance creation
        protected CC(IEnumerable<IL> atoms)
        {
            this.ils = atoms.ToList(); //Atoms should be sorted - cannot have explicit SortedSet because T is not an out parameter

            freeVariables = FU.union(from a in this.ils select a.freeVariables);
            orderedFreeVariables = new List<LVar>();
            foreach (var a in atoms)
                foreach (var fv in a.freeVariables)
                    if (!orderedFreeVariables.Contains(fv))
                        orderedFreeVariables.Add(fv);

            varMap = new Dictionary<LVar, string>();
            foreach (var fv in orderedFreeVariables)
                varMap[fv] = "v" + varMap.Count().ToString();
            stringNCache = ToStringNInt();
            hashCache = stringNCache.GetHashCode();
        }

        
        #endregion instance creation

        #region properties
        public abstract FVMS fvMS { get; }
        public int Count { get { return ils.Count; } }
        private readonly IDictionary<LVar,string> varMap;
        public IList<IL> ils {get; private set; }
        public abstract bool isGround { get; }
        public bool isFalse { get { return !ils.Any(); } }
        public bool isTrue { get { return ils.Any(a => a.isTrue); } }
        public IL this[int i]
        {
            get
            {
                return ils[i];
            }
        }

        public ISet<LVar> freeVariables { get; private set; }
        public IList<LVar> orderedFreeVariables { get; private set; }
        public ISet<Function> functions { get; private set; }

        public int height { get { return (ils.Any() ? ils.Max(a => a.height) : 0) + 1; } }
//        public int weight { get { return atoms.Sum(a => a.weight) + 1; } }

        private IList<GT> pTopGTs = null;
        public IEnumerable<GT> topGTs
        {
            get
            {
                if (pTopGTs == null)
                {
                    pTopGTs = new List<GT>();
                    var gts = new HashSet<GT>();
                    foreach (var a in ils)
                        foreach (var gt in a.topGTs)
                            if (gts.Add(gt))
                                pTopGTs.Add(gt);
                }
                return pTopGTs;
            }
        }
        private ISet<GT> allGTsCache = null;
        public IEnumerable<GT> allGTs
        {
            get
            {
                if (allGTsCache == null)
                    allGTsCache = new HashSet<GT>(from ga in ils from gt in ga.allGTs select gt);
                return allGTsCache;
            }
        }
        #endregion properties

        #region indexing

        private readonly string stringNCache;
        private readonly int hashCache;

        private string ToStringNInt()
        {
            return makeStringN(ils);
        }
        public virtual string ToStringN()
        {
            return stringNCache;
        }
        public virtual string ToString(IDictionary<LVar, string> vm)
        {
            return ToString(from a in ils select a.ToString(vm));
        }

        public string ToStringN(IDictionary<GT, GT> gtMap)
        {
            return ToString(from a in ils select a.ToStringN(varMap,gtMap));
        }

        public string ToStringNoGTN()
        {
            return ToString(from a in ils select a.ToStringNoGTN(varMap));
        }

        public virtual string ToStringB()
        {
            return ToString(varMap);
        }

        private string stringNNCache = null;
        public virtual string ToStringNN()
        {
            if (stringNNCache == null)
                stringNNCache = ToStringN(varMap);
            return stringNNCache;
        }
        public virtual string ToStringN(IDictionary<LVar, string> vm)
        {
            return ToString(from a in ils select a.ToStringN(vm));
        }

        public virtual int CompareTo(IC other)
        {
            return ToStringN().CompareTo(other.ToStringN());
        }

        public override string ToString()
        {
            return ToString(from a in ils select a.ToString());
        }
        public static string makeStringN(IEnumerable<IL> atoms)
        {
            return ToString(from a in atoms select a.ToStringN());
        }

        public static string ToString(IEnumerable<string> strings)
        {
            return strings.Aggregate("{", (s, a) => s + (s == "{" ? "" : ",") + a) + "}";
        }

        public override bool Equals(object obj)
        {
            var result = obj is IC && ToStringN() == (obj as IC).ToStringN();
            Debug.Assert(this!=obj || result);
            return result;
        }

        public override int GetHashCode()
        {
            return hashCache;
        }

        #endregion indexing

        #region enumeration
        public IEnumerator<IL> GetEnumerator()
        {
            return ils.AsEnumerable().GetEnumerator();
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return ils.GetEnumerator();
        }
        #endregion enumeration
    }
}
