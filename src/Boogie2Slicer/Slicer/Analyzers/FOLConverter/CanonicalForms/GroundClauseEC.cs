#region

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Diagnostics.Contracts;
using System.Linq;
using Slicer.Analyzers.FOLConverter.Formulae;
using Slicer.StateSpace.Types;
using LFSTT = Slicer.Analyzers.FOLConverter.CanonicalForms.Universe.LFSTT;
#endregion

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    public interface GFAEC : IFA
    {
        GTT gtt { get; }
    }
    public interface GFAS : IFAS
    {
        IEnumerable<GFAEC> gfaECs { get; }
    }
    public sealed class GFABase : GFAEC,ECLogicElement
    {
        #region creation
        ////////////////////////////////////////////////////////////////////////////
        internal GFABase(Function function, GTT gtt)
        {
            #region precondition
            Debug.Assert(function.argumentTypes.Count() == gtt.Count());
            Debug.Assert(function.argumentTypes.Zip(gtt, (at, a) => at.isEquivalent(a.type)).All(p => p));
            #endregion

            this.function = function;
            this.gtt = gtt;
            stringCacheN = makeStringN(function, gtt);
            hashCache = stringCacheN.GetHashCode();
        }
        #endregion creation

        #region mapping
        ////////////////////////////////////////////////////////////////////////////
        public static string makeStringN(Function function, GTT arguments)
        {
            return function.name + arguments.ToStringN();
        }
        public override bool Equals(object obj)
        {
            return ReferenceEquals(obj, this);
        }
        public override int GetHashCode()
        {
            return hashCache;
        }
        #endregion mapping

        #region strings
        public string ToStringN()
        {
            return stringCacheN;
        }
        public override string ToString()
        {
            return function.ToString(gtt);
        }
        public string ToString(IDictionary<LVar, string> map)
        {
            return function.ToString(gtt, map);
        }
        public string ToStringN(IDictionary<LVar, string> map)
        {
            return function.ToStringN(gtt, map);
        }
        public string ToStringB()
        {
            return function.ToStringB(gtt);
        }
        #endregion strings

        #region properties
        public IType type { get { return function.resultType; } }
        public FVMS fvMS { get { return FVMS.empty; } }
        public int height { get { return 1 + (gtt.Any() ? gtt.Max(a => a.height) : 0); } }
        public FunctionApplicationFormula iFunctionApplication
        {
            get
            {
                return new FunctionApplicationFormula(function, from t in gtt select t.iTerm);
            }
        }
        #endregion properties

        public ISet<LVar> freeVariables { get { return gtt.freeVariables; } }
        public IList<LVar> orderedFreeVariables { get { return gtt.orderedFreeVariables; } }
        public ISet<Function> functions { get { return new HashSet<Function>(gtt.functions.Union(new[] { function })); } }
        public IList<GT> gtT { get { return gtt.gtT; } }
        #region members

        public GTT gtt { get; private set; }
        public Function function{get;private set;}
        public ITT itt { get { return gtt; } }

        private readonly int hashCache;
        private readonly string stringCacheN;
        #endregion members
    }
    public sealed class GFA : GFAEC, GFAS,IComparable<GFA>, ECLogicElement
    {
        public readonly GFABase b;
        internal GFA(GFABase gfaBase)
        {
            this.b = gfaBase;
        }
        public Function function { get { return b.function; } }
        public GTT gtt { get { return b.gtt; } }
        public ITT itt { get { return gtt; } }
        public int CompareTo(GFA other)
        {
            return ToStringN().CompareTo(other.ToStringN());
        }
        public int height { get { return b.height; } }
        public override string ToString() { return b.ToString(); }
        public string ToStringN() { return b.ToStringN(); }
        public string ToStringB() { return b.ToStringB(); }
        public string ToStringN(IDictionary<LVar, string> map){return b.ToStringN(map);}
        public string ToString(IDictionary<LVar, string> map){return b.ToString(map);}
        public IList<GT> gtT { get { return b.gtT; } }

        public GT gt = null;
        public IType type { get { return b.type; } }

        public ISet<Function> functions { get { return b.functions; } }
        public ISet<LVar> freeVariables { get { return b.freeVariables; } }
        public IList<LVar> orderedFreeVariables { get { return b.orderedFreeVariables; } }
        public FVMS fvMS { get { return b.fvMS; } }

        public ISet<Function> lfss { get{return new HashSet<Function>{function};}}
        public IEnumerable<IFA> ifas{get{return gfaECs;}}
        public IEnumerable<GFAEC> gfaECs { get { return new[] { this }; } }

        public override int GetHashCode()
        {
            return b.GetHashCode();
        }
        public override bool Equals(object obj)
        {
            return ReferenceEquals(this, obj);
        }

    }
    public sealed class GT : CT, GFAS, IComparable<GT>
    {
        #region instance creation
#if DEBUG
        public static readonly IDictionary<int, GT> m = new Dictionary<int, GT>();
#endif
        internal GT(IType type)
            :base()
        {
            pType = type;
            index = curIndex;
            curIndex+=2;
            
            pHeight = int.MaxValue / 2;

            hashCache = index.GetHashCode();
            stringCacheN = "|" + index.ToString() + "|";

#if DEBUG
            m[index] = this;
#endif
        }

        public override bool isGround{get { return true; }}
        private GFA[] gfasCache = null;
        public IEnumerable<GFAEC> gfaECs { get { return gfas; } }
        public override IEnumerable<IFA> ifas { get { return gfaECs; } }
        internal GFA[] gfas
        {
            get
            {
                if (gfasCache == null)
                    gfasCache = (from fas in gfasByFunction.Values from fa in fas.Values select fa).ToArray();
                return gfasCache;
            }
        }

        internal void setGFAs(IEnumerable<GFA> gfas)
        {
#if DEBUG
            Debug.Assert(!gfasByFunction.Any());
            Debug.Assert(gfas.All(x=>x.function.resultType.isEquivalent(type)));
            Debug.Assert(gfas.Any());
            Debug.Assert(gfas.All(x => x.function.resultType.isEquivalent(type)));
#endif
            gfasCache = null;
            foreach (var fa in gfas)
            {
                IDictionary<GTT,GFA> e;
                if (!gfasByFunction.TryGetValue(fa.function,out e))
                    gfasByFunction[fa.function] = e = new Dictionary<GTT,GFA>();
                e[fa.gtt] = fa;
                fa.gt = this;
            }
            pHeight = gfas.Min(gfa => gfa.height);
//            pFunctions = new HashSet<Function>(gfasByFunction.Keys);
        }

        #endregion instance creation

        #region rep

        private bool updatingRep;

#if DEBUG
        private static int maxHeight = 0;
#endif
        internal void updateHeightTemp()
        {
#if DEBUG
            var oldHeight = height;
#endif
            var nHeight = gfas.Min(gfa => gfa.height);
            if (nHeight < pHeight)
                pHeight = nHeight;
#if DEBUG
            Debug.Assert(height <= oldHeight);
#endif
        }
        internal void updateRep()
        {
            updateRepI();
            #region consistency
            Debug.Assert(rep != null);
            Debug.Assert(height < int.MaxValue / 2);
//            Debug.Assert(weight < int.MaxValue / 2);
            Debug.Assert(gfas.All(gfa => height <= gfa.height));
#if DEBUG
            if (index % 10000 == 0)
                Console.WriteLine("         ---------Created ground term ([{0}]) - height = {1}", this.ToStringN(), this.height);
#endif
#if DEBUG
            if (height > maxHeight)
//            {
//                Console.WriteLine("Term height {0}", height);
               maxHeight = height;
//            }
#endif
            #endregion consistency
        }
        private void updateRepI()
        {
            if (rep != null)
            {
                Debug.Assert(height < int.MaxValue / 2);
                return;
            }
            if (updatingRep)
            {
                return;
            }
            updatingRep = true;
            var repHeight = pHeight; 
            GFA tobeRep = null;
            foreach (var gfa in gfas)
            {
                var rh = gfa.height; 
                if (rh < repHeight 
                    || (rh==repHeight && (
                        tobeRep==null
                        || (rh==1 && !tobeRep.function.isInterpreted && gfa.function.isInterpreted)
                        )
                   ))
                    
                {
                    tobeRep = gfa;
                    repHeight = rh;
                    Debug.Assert(rh <=pHeight);
                    pHeight = rh;
                }
            }

            for (var c = 0; c < 2; c++)
                foreach (var gfa in gfas)
                {
                    foreach (var a in gfa.gtt.gtT)
                        a.updateRepI();
                    var rh = gfa.height;
                    if (rh < repHeight || (rh == repHeight && tobeRep == null))
                    {
                        tobeRep = gfa;
                        repHeight = rh;
                    }
                }
            rep = tobeRep;
            if (rep != null)
            {
                Debug.Assert(rep.height <= pHeight);
                pHeight = rep.height; 
                Debug.Assert(height < int.MaxValue / 2);
            }
            Debug.Assert(updatingRep || height < int.MaxValue / 2);
            updatingRep = false;
        }

        internal bool updateRep2()
        {
            var r = false;
            foreach (var gfa in gfas)
            {
                var rh = gfa.height;
                if (rh == height && 
                    (gfa != rep) && 
                    ( 
                        ( (!rep.function.isInterpreted || gfa.function.isInterpreted) && gfa.ToString().CompareTo(rep.ToString()) < 0)
                        || (rh==1 && !rep.function.isInterpreted && gfa.function.isInterpreted)
                    )
                )
                {
                    rep = gfa;
                    r = true;
                }
            }
            return r;
        }
        #endregion rep

        #region mapping

        #region IComparable<GroundTermEC> Members

        public int CompareTo(GT other)
        {
            return index.CompareTo(other.index);
        }

        #endregion

        #region ITermEC Members

        public override FVMS fvMS { get { return FVMS.empty; } }
        public override bool Equals(object obj)
        {
            return ReferenceEquals(this, obj);
        }
        public override int GetHashCode()
        {
            return hashCache;
        }

        public override int maxVarDepth(LVar v) { return -1; }
        public override int minVarDepth(LVar v) { return int.MinValue; }
        #endregion

        #endregion mapping

        #region strings
        public override string ToString(IDictionary<LVar, string> vm)
        {
            return ToString();
        }
        public override string ToString()
        {
            return rep.ToString();
        }
        public override string ToStringB()
        {
            return ToString();
        }
        public override string ToStringN()
        {
            return stringCacheN;
        }
        public override string ToStringN(IDictionary<LVar, string> vm)
        {
            return ToStringN();
        }
        public override string ToStringN(IDictionary<LVar, string> lvMap, IDictionary<GT, GT> gtMap)
        {
            return gtMap[this].ToStringN();
        }
        public override string ToStringNoGTN(IDictionary<LVar, string> lvMap)
        {
            return "?";
        }
        #endregion strings

        #region properties
        public override IFA toIFA(int minGFAi) { return gfas[minGFAi]; }
        public override IT1 toIT1(int minGFAi) { return toIFA(minGFAi); }
        public override ISet<Function> lfss { get { return new HashSet<Function>(gfasByFunction.Keys); } }

        private HashSet<Function> pFunctions;
        private HashSet<Function> pConstants;
        private int pHeight;
//        private int pWeight;
        private readonly IType pType;
        public override ISet<LVar> freeVariables { get { return sFreeVariables; } }
        public override IList<LVar> orderedFreeVariables { get { return sOrderedFreeVariables; } }
        public override ISet<Function> functions { 
            get { 
                if (pFunctions==null)
                    pFunctions = getFunctions();
                return pFunctions;
            }
            protected set { }
        }
        public ISet<Function> constants { 
            get {
                if (pConstants == null)
                    pConstants = getConstants();
                return pConstants; 
            } 
        }
//        public override int weight { get { return pWeight; } }
        public override int height { get { return pHeight; } }
        public override IType type { get { return pType; }}

        public override ITerm iTerm
        {
            get
            {
                return new FunctionApplicationFormula(rep.function, (from GT a in rep.gtt select a.iTerm).ToList());
            }
        }

        private HashSet<Function> getFunctions()
        {
            if (pFunctions!=null)
                return pFunctions;

            pFunctions = new HashSet<Function>(gfasByFunction.Keys);
            foreach (var m in gfasByFunction)
                foreach (var fa in m.Value)
                    foreach (var t in fa.Key.gtT)
                        pFunctions.UnionWith(t.functions);

            return pFunctions;
        }
        private HashSet<Function> getConstants()
        {
            Debug.Assert(pConstants == null);

            pConstants = new HashSet<Function>(from f in gfasByFunction.Keys where !f.argumentTypes.Any() select f);
            foreach (var m in gfasByFunction)
                foreach (var fa in m.Value)
                    foreach (var t in fa.Key.gtT)
                        pConstants.UnionWith(t.constants);

            return pConstants;
        }

        public override IEnumerable<GT> topGTs
        {
            get { return new[] { this }; }
        }
        #endregion properties

        #region members

        internal static int curIndex = 1;
        private static readonly ISet<LVar> sFreeVariables = new HashSet<LVar>();
        private static readonly IList<LVar> sOrderedFreeVariables = new List<LVar>();
        private readonly int hashCache;
        internal readonly int index;
        internal readonly IDictionary<Function, IDictionary<GTT, GFA>> gfasByFunction = new Dictionary<Function, IDictionary<GTT, GFA>>();
        private static GFA[] noGFAs = new GFA[0];
        public IEnumerable<GFA> getGFAsByFunction(Function f) {
            IDictionary<GTT, GFA> e;
            if (gfasByFunction.TryGetValue(f, out e))
                return e.Values;
            else
                return noGFAs;
        }
        
        private readonly string stringCacheN;
        public GFA rep{ get; private set; }

        #endregion members

        #region substitution
        public override IT substitute(SubstitutionEC s) { return this; }
        public override IT substitute(GroundSubstitutionEC s) { return this; }
        #endregion substitution

        internal static void resetIndex()
        {
            curIndex = 1;
#if DEBUG
            maxHeight = 0;
            m.Clear();
#endif
        }

        private ISet<GT> allSubtermsButMeCache = null;
        public IEnumerable<GT> allSubtermsButMe
        {
            get
            {
                if (allSubtermsButMeCache == null)
                {
                    allSubtermsButMeCache = new HashSet<GT>();
                    var todo = new Queue<GT>();
                    todo.Enqueue(this);
                    while (todo.Any())
                    {
                        var gt = todo.Dequeue();
                        foreach (var gfa in gt.gfas)
                            foreach (var sgt in gfa.gtt.gtT)
                                if (allSubtermsButMeCache.Add(sgt))
                                    todo.Enqueue(sgt);
                    
                    }
                }
                return allSubtermsButMeCache;
            }
        }
        private ISet<GT> allSubtermsCache = null;
        public override IEnumerable<GT> allGTs
        {
            get
            {
                if (allSubtermsCache==null)
                {
                    allSubtermsCache = new HashSet<GT>{this};
                    allSubtermsCache.UnionWith(allSubtermsButMe);
                }
                return allSubtermsCache;
            }
        }
    }
    public sealed class GTT : CTT
    {
        private readonly GT[] groundTerms;
        public readonly int hashCache;
        public readonly string stringCacheN;

#if DEBUG
        public static readonly IDictionary<string, GTT> ms = new Dictionary<string, GTT>();
        public static readonly IDictionary<int, GTT> m = new Dictionary<int, GTT>();
#endif
        public static int curIndex = 0;
        public readonly int index;
        internal GTT(IEnumerable<GT> terms)
            :base (terms)
        {
            Debug.Assert(terms != null);
            Debug.Assert(terms.All(ct => ct != null));// && ct.universe == universe));

            groundTerms = terms.ToArray();

            stringCacheN = makeStringN(terms);
            hashCache = stringCacheN.GetHashCode();

            index = curIndex;
            curIndex+=2;
#if DEBUG
            ms[stringCacheN] = this;
            m[index] = this;
#endif
        }

        public IList<GT> gtT { get { return groundTerms; } }
        public override bool isGround { get{return true;} }

        internal static string makeStringN(IEnumerable<GT> canonicalTerms)
        {
            return canonicalTerms.Aggregate( "(", (s, ct) => (s + (s.Last() == '(' ? "" : ",") + ct.ToStringN())) + ")";
        }

        ////////////////////////////////////////////////////////////////////////////
        public override bool Equals(object obj)
        {
            return ReferenceEquals(this, obj);
        }

        ////////////////////////////////////////////////////////////////////////////
        public override int GetHashCode()
        {
            return hashCache;
        }

        public override FVMS fvMS { get { return FVMS.empty; } }
        ////////////////////////////////////////////////////////////////////////////
        public override string ToStringN(IDictionary<LVar, string> vm)
        {
            return ToStringN();
        }
        public override string ToStringN()
        {
            return stringCacheN;
        }


        public override string ToString()
        {
            return "(" + Operator.commaSeparatedList(from t in gtT select t.ToString()) + ")"; //.Aggregate("(", (s, ct) => (s + (s.Last() == '(' ? "" : ",") + ct.ToString())) + ")";
        }

        ////////////////////////////////////////////////////////////////////////////
        public static string makeTypeString(IEnumerable<IType> types)
        {
            return "<" + Operator.commaSeparatedList(from t in types select t.ToStringN()) + ">"; // types.Aggregate("<", (s, ct) => (s + (s.Last() == '<' ? "" : ",") + ct.ToStringN())) + ">";
        }

        ////////////////////////////////////////////////////////////////////////////
        [Pure]
        public int CompareTo(GTT other)
        {
            return stringCacheN.CompareTo(other.stringCacheN);
        }

        private string typeStringCache = null;
        [Pure]
        internal string typeString
        {
            get
            {
                if (typeStringCache == null)
                    typeStringCache = makeTypeString(from gt in gtT select gt.type);
                return typeStringCache;
            }
        }

        [Pure]
        internal bool typeEquivalent(GTT other)
        {
            return typeString == other.typeString; // gTerms.Count() == other.gTerms.Count() && gTerms.Zip(other.gTerms, (t1, t2) => t1.type.isEquivalent(t2.type)).All(x => x);
        }

        private IList<GT> pTopGTs = null;
        public override IEnumerable<GT> topGTs
        {
            get {
                if (pTopGTs == null)
                {
                    pTopGTs = new List<GT>();
                    var topGTSet = new HashSet<GT>();
                    foreach (var gt in gtT)
                        if (topGTSet.Add(gt))
                            pTopGTs.Add(gt);

                }
                return pTopGTs;
            }
        }

#if DEBUG
        internal static void resetIndex()
        {
            curIndex = 0;
            ms.Clear();
            m.Clear();
        }
#endif
        public IEnumerable<Universe.LFSTT> lfstts
        {
            get
            {
                var lfstSets = new ISet<Function>[Count];
                for (var i = 0; i < Count; i++)
                    lfstSets[i] = new HashSet<Function>(gtT[i].gfasByFunction.Keys);
                var lfstAs = FU.makeOptions(lfstSets); //lfstts
                return new HashSet<Universe.LFSTT>(from lfstA in lfstAs select new LFSTT(lfstA));
            }
        }
    }
    public sealed class GAF : CAF
    {
#if DEBUG
        public static readonly IDictionary<int, GAF> m = new Dictionary<int, GAF>();
        public static int curIndex = 0;
        public readonly int index;
#endif
        internal GAF(IPredicate predicate, GTT args)
            : base(predicate, args)
        {

            Debug.Assert(predicate.argumentTypes.Count() == args.Count());
            Debug.Assert(predicate.argumentTypes.Zip(args, (at, a) => at.isEquivalent(a.type)).All(x => x));

            gtt = args;

            gAtoms[true] = new GL(this,true);
            gAtoms[false] = new GL(this, false);
#if DEBUG
            index = curIndex;
            curIndex++;
            m[index] = this;
#endif
        }

        #region properties
        public readonly GTT gtt;
        private readonly IDictionary<bool, GL> gAtoms = new Dictionary<bool, GL>();
        public IList<GT> gtT { get { return gtt.gtT; } }


        public override int maxVarDepth(LVar v) { return int.MaxValue; }
        public override int minVarDepth(LVar v) { return int.MinValue; }

        #endregion properties

        #region IAtomicFormulaEC Members

        public override IL il(bool b) { return gAtoms[b]; }

        #endregion

        #region substitution
        public override IAF substitute(GroundSubstitutionEC s) { return this; }
        public override IAF substitute(      SubstitutionEC s) { return this; }
        public GAF gSubstitute(GroundSubstitutionEC s) { return this; }
        public GAF gSubstitute(SubstitutionEC s) { return this; }
        #endregion substitution

        internal static string makeStringN(IPredicate predicate, GTT args)
        {
            return predicate.name + "(" + args.ToStringN() + ")";
        }

        public     GL gLiteral(bool b) { return gAtoms[b]; }

#if DEBUG
        internal static void resetIndex()
        {
            curIndex = 0;
            m.Clear();
        }
#endif
    }
    public sealed class GL : CL, IComparable<GL>
    {
        #region debug
#if DEBUG
        public static new void resetIndex()
        {
            m.Clear();
        }
        public static new readonly IDictionary<int, GL> m = new Dictionary<int, GL>();
#endif
        #endregion debug
        internal GL(GAF formula, bool polarity)
            : base(formula,polarity)
        {
            gaf = formula;
#if DEBUG
            m[index] = this;
#endif
        }

        #region substitution
        public override IL substitute(GroundSubstitutionEC s) {
            Debug.Assert(s.universe.getGTTGAF(gaf.gtt,gaf.predicate).gLiteral(polarity) == this);
            return this;
        }
        public override IL substitute(SubstitutionEC s) { return this; }
        public GL gSubstitute(GroundSubstitutionEC s) { return this; }
        public GL gSubstitute(SubstitutionEC s) { return this; }
        #endregion substitution

        public override bool isGround { get { return true; } }
        public GAF gaf { get; private set; }
        public GTT gtt { get { return gaf.gtt; } }
        public IList<GT> gtT { get { return gtt.gtT; } }


        public GL inverse { get { return gaf.gLiteral(!polarity); } }
        public GL gNegate { get { return gaf.gLiteral(!polarity); } }
        public override IL negate { get { return gNegate; } }
    }
    public sealed class GC : CC
    {
        #region instance creation
        ////////////////////////////////////////////////////////////////////////////
#if DEBUG
        public static readonly IDictionary<int, GC> m = new Dictionary<int, GC>();
        public static int curIndex = 0;
        public readonly int index;
#endif

        internal GC(IEnumerable<GL> atoms)
            : base(atoms)
        {
            gls = atoms.ToList();
            stringCacheN = makeStringN(gls);
            hashCache = stringCacheN.GetHashCode();
#if DEBUG
            index = curIndex;
            curIndex++;
            m[index] = this;
#endif
        }

        public override FVMS fvMS { get { return FVMS.empty; } }
        public override bool isGround { get { return true; } }
        internal static string makeStringN(IEnumerable<GL> atoms)
        {
            return atoms.Aggregate("(", (s, a) => (s + (s.Last() == '(' ? "" : "|") + a.ToStringN())) + ")";
        }

        public override int CompareTo(IC other)
        {
            throw new Exception();
        }

        public override bool Equals(object obj)
        {
            return obj == this;
        }
        private readonly int hashCache;
        public override int GetHashCode()
        {
            return hashCache; // ToStringN().GetHashCode();
        }
        private readonly string stringCacheN;// = null;
        public override string ToStringN()
        {
//            if (stringCacheN == null )
//                stringCacheN = makeStringN(gAtoms);
            return stringCacheN;
        }
        #endregion instance creation

        #region instance variables
        public List<GL> gls { get; private set; }
        #endregion instance variables

        #region debug
#if DEBUG
        internal static void resetIndex()
        {
            curIndex = 0;
            m.Clear();
        }
#endif
        #endregion debug
    }
}
