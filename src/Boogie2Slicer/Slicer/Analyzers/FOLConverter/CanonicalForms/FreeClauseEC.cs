#region

using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Analyzers.FOLConverter.Formulae;
using Slicer.StateSpace.Types;

#endregion

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    public interface FT : IT { }
    public class FFA : CT, IFA,FT, IComparable<FFA>
    {
        #region instance creation
#if DEBUG
        public static readonly IDictionary<int, FFA> m = new Dictionary<int, FFA>();
        public static int curIndex = 0;
        public readonly int index;
#endif
        public FFA(Function function, FTT ftt)
            : base()
        {
            this.function = function;
            this.ftt = ftt;
            pHeight = ftt.height + 1;
//            pWeight = arguments.weight + 1;
            functions = new HashSet<Function>(new[] { function }.Union(ftt.functions));
#if DEBUG
            index = curIndex;
            curIndex++;
            m[index] = this;
#endif
        }
        #endregion instance creation

        #region properties

        public ITT itt { get { return ftt; } }
        public readonly FTT ftt;
        public Function function { get; private set; }
        public override IEnumerable<IFA> ifas { get { return new[] { this }; } }

        private readonly int pHeight;
        public override ISet<Function> lfss { get { return new HashSet<Function> { function }; } }

        public override IType type { get { return function.resultType;  } }
        public override int height { get { return pHeight; } }
        public override ITerm iTerm { get { return new FunctionApplicationFormula(function, ftt.terms); } }
        public override int maxVarDepth(LVar v) {
            if (!freeVariables.Contains(v))
                return -1;
            return (from t in ftt where t.freeVariables.Contains(v) select t.maxVarDepth(v)).Max() + 1;
        }
        public override int minVarDepth(LVar v)
        {
            if (!freeVariables.Contains(v))
                return int.MinValue;
            return (from t in ftt where t.freeVariables.Contains(v) select t.minVarDepth(v)).Min() + 1;
        }
        #endregion properties

        #region ITermEC implementation
        public override FVMS fvMS { get { return ftt.fvMS; } }
        public override bool isGround { get { return false; } }

        public override ISet<LVar> freeVariables
        {
            get { return ftt.freeVariables; }
        }

        public override IList<LVar> orderedFreeVariables
        {
            get { return ftt.orderedFreeVariables; }
        }

        public override ISet<Function> functions{get;protected set;}

        public int CompareTo(FFA other)
        {
            return ToStringN().CompareTo(other.ToStringN());
        }

        public override int CompareTo(IT other)
        {
            return other.ToStringN().CompareTo(ToStringN());
        }

        public override string ToString()
        {
            return function.ToString(ftt);
        }

        public override string ToString(IDictionary<LVar, string> vm)
        {
            return function.ToString(ftt, vm);
        }

        public override string ToStringB()
        {
            return ToString(varMap());
        }

        private string stringNCache = null;
        public override string ToStringN()
        {
            if (stringNCache == null)
                stringNCache = ToStringN(new Dictionary<LVar, string>());
            return stringNCache;
        }
        private IDictionary<LVar, string> varMap()
        {
            var vm = new Dictionary<LVar, string>();
            foreach (var fv in orderedFreeVariables)
                vm[fv] = "v" + vm.Count.ToString();
            return vm;
        }

        public override string ToStringN(IDictionary<LVar, string> vm)
        {
            return function.ToStringN(ftt, vm);
        }
        public override string ToStringN(IDictionary<LVar, string> varMap, IDictionary<GT, GT> gtMap)
        {
            return function.ToStringN(from a in ftt select a.ToStringN(varMap, gtMap));
        }
        public override string ToStringNoGTN(IDictionary<LVar, string> varMap)
        {
            return function.ToStringN(from a in ftt select a.ToStringNoGTN(varMap));
        }

        public override IEnumerable<GT> topGTs
        {
            get
            {
                return ftt.topGTs;
            }
        }

        public override IEnumerable<GT> allGTs
        {
            get
            {
                return ftt.allGTs;
            }
        }
        #endregion ITermEC implementation

        public override IT1 toIT1(int minGFAi) { return this; }
        public override IFA toIFA(int minGFAi) { return this; }

        #region substitution
        public override IT substitute(GroundSubstitutionEC s) {
            return substitute(s.universe, from it in ftt select it.substitute(s), s.isGoal);
        }
        public override IT substitute(SubstitutionEC s) {
            return substitute(s.universe, from it in ftt select it.substitute(s), s.isGoal);
        }
        private IT substitute(Universe u,IEnumerable<IT> itT, bool isGoal)
        {
            if (itT.All(it => it.isGround))
                return u.makeGT(function, from it in itT select it as GT, isGoal);
            else
                return u.makeFFA(function, u.makeFTT(itT));
        }
        #endregion substitution

#if DEBUG
        internal static void resetIndex()
        {
            curIndex = 0;
        }
#endif

    }
    public class FVT : CT, IT1, FT, IComparable<FVT>
    {
        #region instance creation
        internal static int count = 0;
        public FVT(LVar variable)
            : base()
        {
            this.variable = variable;
            count++;
            varMS = new FVMS(variable);
        }
        #endregion instance creation

        #region properties
        public override IT1 toIT1(int minGFAi) { return this; }
        public override IFA toIFA(int minGFAi) { throw new Exception(); }
        private readonly FVMS varMS;
        public override FVMS fvMS { get { return varMS; } }
        public override bool isGround { get { return false; } }
        public LVar variable { get; private set; }
        public override IEnumerable<IFA> ifas{get { return new IFA[0]; }}
        public override int height { get { return 1; } }
        public override ITerm iTerm { get { return new Variable(variable); } }
        public override IType type { get { return variable.type; } }
        public override int maxVarDepth(LVar v)
        {
            if (v == variable)
                return 0;
            else
                return -1;
        }
        public override int minVarDepth(LVar v)
        {
            if (v == variable)
                return 0;
            else
                return int.MinValue;
        }
        public override IEnumerable<GT> topGTs
        {
            get
            {
                return new GT[0];
            }
        }
        public override ISet<Function> lfss { get { return new HashSet<Function>(); } }
        #endregion properties

        #region indexing
        public int CompareTo(FVT other)
        {
            return ToStringN().CompareTo(other.ToStringN());
        }
        #endregion indexing

        #region strings
        public override string ToString() { return variable.name; }
        public override string ToStringN() { return variable.name; }
        public override string ToStringB() { return variable.name; }
        public override string ToString(IDictionary<LVar, string> vm){return vm[variable];}
        public override string ToStringN(IDictionary<LVar, string> vm) { if (vm.ContainsKey(variable))return vm[variable]; else return variable.name; }
        public override string ToStringN(IDictionary<LVar, string> varMap, IDictionary<GT, GT> gtMap)
        {
            return varMap[variable];
        }
        public override string ToStringNoGTN(IDictionary<LVar, string> varMap)
        {
            return varMap[variable];
        }
       
        #endregion strings

        #region ITermEC implementation
        public override ISet<LVar> freeVariables
        {
            get { return new HashSet<LVar>{ variable }; }
        }

        public override IList<LVar> orderedFreeVariables
        {
            get { return new [] { variable }; }
        }

        public override ISet<Function> functions
        {
            get { return new HashSet<Function>(); }
            protected set { }
        }

        public override IEnumerable<GT> allGTs
        {
            get
            {
                return new HashSet<GT>();
            }
        }
        #endregion ITermEC implementation

        #region substitution
        public override IT substitute(GroundSubstitutionEC s) { return s.variables.Contains(variable) ? s[variable] : this as IT; }
        public override IT substitute(SubstitutionEC s) { return s.variables.Contains(variable) ? s[variable] : this; }
        #endregion substitution

        internal static void resetIndex()
        {
            count = 0;
        }
    }
    public class FTT : CTT, ITT
    {
        #region instance creation
        internal static int currentIndex = 0;
        public readonly int index;
#if DEBUG
        public static readonly IDictionary<int, FTT> m = new Dictionary<int, FTT>();
        public static void resetIndex()
        {
            currentIndex=0;
            m.Clear();
        }
#endif
        internal FTT(IEnumerable<IT> its)
            : base(its)
        {
            Debug.Assert(its.Any());
            Debug.Assert(its.Any(t=>t.freeVariables.Any()));
//            Debug.Assert(terms.All(t => !(t is GroundTermEC) || universe.groundTermMergeMap[t as GroundTermEC]==t));
            pHeight = its.Max(t => t.height) + 1;
//            pWeight = terms.Sum(t => t.weight) + 1;
            stringCacheN = makeStringN(ts);
            hashCache = stringCacheN.GetHashCode();
            index = currentIndex;
            currentIndex++;
#if DEBUG
            m[index] = this;
#endif
            varMS = new FVMS(from it in its select it.fvMS);
        }
        #endregion instance creation

        #region properties
        private readonly FVMS varMS;
        public override FVMS fvMS { get { return varMS; } }
        
        private readonly int pHeight;

        public ITermTuple terms
        {
            get { return new TermTuple(from t in ts select t.iTerm); }
        }

        public override int height{get{return pHeight;}}
//        public override int weight { get { return pWeight; } }

        public override bool isGround { get { return false; } }
        private IList<GT> pTopGTs = null;
        public override IEnumerable<GT> topGTs
        {
            get
            {
                if (pTopGTs == null)
                {
                    pTopGTs = new List<GT>();
                    var gts = new HashSet<GT>();
                    foreach (var t in this)
                        foreach (var gt in t.topGTs)
                            if (gts.Add(gt))
                                pTopGTs.Add(gt);
                }
                return pTopGTs;
            }
        }

        #endregion properties

        #region IEnumerable implementation

        IEnumerator IEnumerable.GetEnumerator()
        {
            return ts.GetEnumerator();
        }
        #endregion IEnumerable implementation

        #region indexing

        public override int GetHashCode()
        {
            return hashCache;
        }
        public override bool Equals(object obj)
        {
            return this == obj;
        }

        public int CompareTo(ITT other)
        {
            return ToStringN().CompareTo(other.ToStringN());
        }

        #endregion indexing

        #region strings

        private readonly int hashCache;
        private readonly string stringCacheN;

        public override string ToString(IDictionary<LVar, string> vm)
        {
            return Operator.commaSeparatedList(from t in ts select t.ToString(vm));
        }

        public override string ToStringB()
        {
            return ToStringN(varMap());
        }

        public override string ToStringN(IDictionary<LVar, string> vm)
        {
            return Operator.commaSeparatedList(from t in ts select t.ToStringN(vm));
        }

        public override string ToStringN()
        {
            return stringCacheN;
        }

        public override string ToString()
        {
            return Operator.commaSeparatedList(from t in ts select t.ToString());
        }

        private IDictionary<LVar, string> varMap()
        {
            var vm = new Dictionary<LVar, string>();
            foreach (var fv in orderedFreeVariables)
                vm[fv] = "v" + vm.Count.ToString();
            return vm;
        }

        internal static string makeStringN(IEnumerable<IT> terms)
        {
            return Operator.commaSeparatedList(from t in terms select t.ToStringN());
        }
        #endregion strings

        #region substitution
/*        public override ITT substitute(GroundSubstitutionEC s) {
            var gts = new IT[ts.Length];
            for (var i = 0; i < ts.Length; i++)
                gts[i] = this[i].substitute(s);
            return s.universe.makeITT(gts); 
        }
        public override ITT substitute(SubstitutionEC s) {
            var ts = new List<IT>();
            foreach (var a in this)
                ts.Add(a.substitute(s));
            var result = s.universe.makeITT(ts);
            return result;
            //return s.universe.makeTuple((from a in this select a.substitute(s)).ToList()); 
        }*/
        #endregion substitution

    }
    public class FAF : CAF, IComparable<FAF>
    {
        #region instance creation
#if DEBUG
        internal static int count = 0;
        public readonly int index;
        public static void resetIndex()
        {
            count = 0;
        }
#endif
        public FAF(IPredicate predicate, FTT arguments)
            : base(predicate,arguments)
        {
            Debug.Assert(arguments.Any(a => a.freeVariables.Any()));
            foreach (var b in new[]{false,true})
                fAtoms[b] = new FL(this, b);
            ftt = arguments;
#if DEBUG
            index = count;
            count++;
#endif
        }
        #endregion instance creation

        #region properties

        public readonly FTT ftt;
        private readonly IDictionary<bool, FL> fAtoms = new Dictionary<bool, FL>();

        public override IL il(bool polarity) { return fAtoms[polarity]; }
        public FL fLiteral(bool polarity) { return fAtoms[polarity]; }

        public override int maxVarDepth(LVar v)
        {
            if (!freeVariables.Contains(v))
                return -1;
            return (from t in ftt where t.freeVariables.Contains(v) select t.maxVarDepth(v)).Max();
        }
        public override int minVarDepth(LVar v)
        {
            if (!freeVariables.Contains(v))
                return int.MinValue;
            return (from t in ftt where t.freeVariables.Contains(v) select t.minVarDepth(v)).Min();
        }
        #endregion properties

        #region substitution
        public override IAF substitute(GroundSubstitutionEC s) { 
            var itT = (from it in ftt select it.substitute(s)).ToArray();
            if (itT.All(it => it.isGround))
                return s.universe.makeGAF(predicate, from it in itT select it as GT);
            else
                return s.universe.makeFAF(predicate, s.universe.makeFTT(itT)); 
        }
        public override IAF substitute(      SubstitutionEC s) {
            var itT = (from it in ftt select it.substitute(s)).ToArray();
            if (itT.All(it => it.isGround))
                return s.universe.makeGAF(predicate, from it in itT select it as GT);
            else
                return s.universe.makeFAF(predicate, s.universe.makeFTT(itT));
        }
        #endregion substitution
    }
    public class FL : CL, IL
    {
        #region instance creation
        internal FL(FAF formula, bool polarity)
            : base(formula, polarity)
        {
            faf = formula;
        }
        #endregion instance creation

        #region properties
        public readonly FAF faf;
        public FTT ftt { get { return faf.ftt; } }
        public IList<IT> ftT { get { return ftt.itT; } }
        public FL fNegate { get { return faf.fLiteral(!polarity); } }
        public override IL negate { get { return fNegate; } }
        public override bool isGround{get { return false; }}
        #endregion properties

        #region substitution
        public override IL substitute(GroundSubstitutionEC s) { 
            var result = s.universe.makeIL(faf.substitute(s),polarity,s.isGoal);
#if DEBUG
            if (result is GL)
            {
                var ga = result as GL;
                Debug.Assert(s.universe.getGTTGAF(ga.gtt,ga.predicate).gLiteral(result.polarity) == result);
            }
#endif
            return result;
        }
        public override IL substitute(      SubstitutionEC s) { return s.universe.makeIL(faf.substitute(s), polarity,s.isGoal); }
        #endregion substitution
    }
    public class FC : CC
    {
        #region instance creation
#if DEBUG
        private static int currentIndex;
        public readonly int index;
        public static readonly IDictionary<int, FC> m = new Dictionary<int, FC>();
//        internal static int count = 0;
        public static void resetIndex()
        {
            currentIndex = 0;
            m.Clear();
        }
#endif
        internal FC(IEnumerable<IL> ils)
            : base(ils)
        {
#if DEBUG
            index = currentIndex;
            currentIndex++;
            m[index] = this;
#endif
            stringNCache = makeStringN(ils);
            hashCache = stringNCache.GetHashCode();
            varMS = new FVMS(from il in ils select il.fvMS);
        }
        #endregion instance creation

        #region properties
        private readonly FVMS varMS;
        public override FVMS fvMS { get { return varMS; } }
        public override bool isGround { get { return false; } }

        #endregion properties

        #region indexing

        private readonly string stringNCache;
        private readonly int hashCache;

        public override int CompareTo(IC other)
        {
            throw new NotImplementedException();
//            return (other is ClauseEC) ? index.CompareTo((other as ClauseEC).index);
        }

        public override bool Equals(object obj)
        {
            return ReferenceEquals(this, obj);
//            var result = obj is FreeClauseEC && index == (obj as FreeClauseEC).index;
//            Debug.Assert(this != obj || result);
//            return result;
        }

        public override int GetHashCode()
        {
            return hashCache;
        }
        #endregion indexing
    }

    public class FCL
    {
        #region instance creation
        public FCL(FC clause, int index)
        {
            Debug.Assert(index >= 0 && index < clause.Count());
            this.fc = clause;
            this.index = index;
        }

        #endregion instance creation

        #region properties
        public readonly FC fc;
        public readonly int index;
        public IL il { get { return fc[index]; } }
        #endregion properties

        #region strings
        public override string ToString()
        {
            return fc + " [" + index.ToString() + "]";
        }
        private string stringNCache = null;
        public string ToStringN()
        {
            if (stringNCache == null)
                stringNCache = fc.ToStringN() + " [" + index.ToString() + "]";
            return stringNCache;
        }
        internal string ToStringB()
        {
            return fc.ToStringB() + " [" + index.ToString() + "]";
        }
        #endregion strings

        #region indexing
        public override bool Equals(object obj)
        {
            return obj is FCL && ToStringN() == (obj as FCL).ToStringN();
        }
        public override int GetHashCode()
        {
            return ToStringN().GetHashCode();
        }
        #endregion indexing
    }
    public class FCLT
    {
        public readonly FCL cl;
        public readonly int index;
        public IT term { get { return cl.il.iaf.itt[index]; } }
        public FCLT(FCL cl, int i)
        {
            this.cl = cl;
            this.index = i;
        }
        public override bool Equals(object obj)
        {
            if (!(obj is FCLT))
                return false;
            var ocat = obj as FCLT;
            return Equals(cl, ocat.cl) && index == ocat.index;
        }
        public override int GetHashCode()
        {
            return ToStringN().GetHashCode();
        }
        public override string ToString()
        {
            return cl.ToString() + " [" + index.ToString() + "]" + term.ToString();
        }
        public string ToStringN()
        {
            return cl.ToStringN() + " [" + index.ToString() + "]" + term.ToStringN();
        }

    }

}
