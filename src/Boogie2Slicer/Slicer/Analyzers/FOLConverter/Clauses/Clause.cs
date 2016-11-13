#region

using System;
using System.Collections.Generic;
using System.Linq;
using Slicer.Analyzers.FOLConverter.Formulae;

#endregion

namespace Slicer.Analyzers.FOLConverter.Clauses
{
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    public class Clause : IComparable<Clause> , LogicElement
    {
        #region members

        public static readonly Clause falseClause = new Clause(false);
        private readonly SortedSet<EqualityFormula> nEqualities;
        private readonly SortedSet<PredicateApplication> nPredicates;
        private readonly List<Literal> pAtoms;
        private readonly SortedSet<EqualityFormula> pEqualities;
        private readonly SortedSet<PredicateApplication> pPredicates;
        private string stringCache;
        private string stringCacheB;
        private string stringCacheN;

        private readonly ISet<Function> pConstants = new HashSet<Function>();
        public IEnumerable<Function> constants { get { return pConstants; } }
        public IList<Literal> literals { get { return pAtoms; } }

        #endregion members

        #region creation
        public Clause(Literal a)
            : this(new[]{a})
        {
        }

        public Clause(IEnumerable<Literal> atoms)
            : this(from a in atoms where a.f is PredicateApplication && a.polarity select a.f as PredicateApplication,
                   from a in atoms where a.f is PredicateApplication && !a.polarity select a.f as PredicateApplication,
                   from a in atoms where a.f is EqualityFormula && a.polarity select a.f as EqualityFormula,
                   from a in atoms where a.f is EqualityFormula && !a.polarity select a.f as EqualityFormula
                )
        {
        }

/*        public Clause(IEnumerable<Tuple<PredicateApplication, bool>> pas, IEnumerable<Tuple<EqualityFormula, bool>> eqs)
            : this(
                from pa in pas where pa.Item2 select pa.Item1,
                from pa in pas where !pa.Item2 select pa.Item1,
                from eq in eqs where eq.Item2 select eq.Item1,
                from eq in eqs where eq.Item2 select eq.Item1
                )
        {
        }
        */
        public Clause(
            IEnumerable<PredicateApplication> ppas,
            IEnumerable<PredicateApplication> npas,
            IEnumerable<EqualityFormula> peqs,
            IEnumerable<EqualityFormula> neqs)
        {
            var ppas2 = new HashSet<PredicateApplication>(ppas);
            var npas2 = new HashSet<PredicateApplication>(npas);
            var peqs2 = new HashSet<EqualityFormula>(peqs);
            var neqs2 = new HashSet<EqualityFormula>(from p in neqs where !p.isTrue select p);

            pAtoms = new List<Literal>();
            freeVariables = new SortedSet<LVar>();
            orderedFreeVariables = new List<LVar>();

            if (ppas.Intersect(npas).Count() + peqs.Intersect(neqs).Count() > 0)
                isTrue = true;
            if (ppas.Union<IAtomicFormula>(peqs).Any(pa => pa.isTrue))
                isTrue = true;
            if (npas.Union<IAtomicFormula>(neqs).Any(pa => pa.isFalse))
                isTrue = true;
            if (!isTrue)
                foreach (var t in ppas.Union<IAtomicFormula>(peqs))
                    if (t.isTrue)
                    {
                        isTrue = true;
                        break;
                    }

            if (isTrue)
            {
                pPredicates = new SortedSet<PredicateApplication>();
                nPredicates = new SortedSet<PredicateApplication>();
                pEqualities = new SortedSet<EqualityFormula>();
                nEqualities = new SortedSet<EqualityFormula>();
                return;
            }

            pPredicates = new SortedSet<PredicateApplication>(ppas2);
            nPredicates = new SortedSet<PredicateApplication>(npas2);
            pEqualities = new SortedSet<EqualityFormula>(peqs2);
            nEqualities = new SortedSet<EqualityFormula>(neqs2);

            foreach (var fa in pPredicates)
                literals.Add(new Literal(fa, true));
            foreach (var fa in pEqualities)
                literals.Add(new Literal(fa, true));
            foreach (var fa in nPredicates)
                literals.Add(new Literal(fa, false));
            foreach (var fa in nEqualities)
                literals.Add(new Literal(fa, false));

            foreach (var c in pPredicates)
                freeVariables.UnionWith(c.ffreeVariables);
            foreach (var c in nPredicates)
                freeVariables.UnionWith(c.ffreeVariables);
            foreach (var c in pEqualities)
                freeVariables.UnionWith(c.ffreeVariables);
            foreach (var c in nEqualities)
                freeVariables.UnionWith(c.ffreeVariables);

            foreach (var a in literals)
                foreach (var fv in a.orderedFreeVariables)
                    if (!orderedFreeVariables.Contains(fv))
                        orderedFreeVariables.Add(fv);

            pConstants.UnionWith(from a in literals from c in a.constants select c);
        }

        public Clause(PredicateApplication f, bool p)
            : this(
                p ? new[] {f} : new PredicateApplication[0],
                !p ? new[] {f} : new PredicateApplication[0],
                new EqualityFormula[0],
                new EqualityFormula[0]
                )
        {
        }

        public Clause(EqualityFormula f, bool p)
            : this(
                new PredicateApplication[0],
                new PredicateApplication[0],
                p ? new[] {f} : new EqualityFormula[0],
                !p ? new[] {f} : new EqualityFormula[0]
                )
        {
        }

        public Clause()
            : this(new PredicateApplication[0], new PredicateApplication[0], new EqualityFormula[0], new EqualityFormula[0])
        {
        }

        public Clause(bool p)
            : this()
        {
            isTrue = p;
        }

        #endregion creation

        #region properties
        public bool isTrue { get; private set; }

        public bool isFalse
        {
            get { return !isTrue && pPredicates.Count + nPredicates.Count + pEqualities.Count + nEqualities.Count == 0; }
        }

        public ISet<LVar> freeVariables { get; private set; }

        public IList<LVar> orderedFreeVariables { get; private set; }

        public ISet<Function> functions
        {
            get
            {
                var result = new HashSet<Function>();
                foreach (var a in literals)
                    result.UnionWith(a.functions);
                return result;
            }
        }

//        public int weight { get { return atoms.Sum(a => a.weight); } }
        public int height { get { return literals.Any() ? literals.Max(a => a.height) + 1 : 1; } }

        public IEnumerable<PredicateApplication> predicates(bool b)
        {
            return (b) ? pPredicates : nPredicates;
        }

        public IEnumerable<EqualityFormula> equalities(bool b)
        {
            return (b) ? pEqualities : nEqualities;
        }

        #endregion properties

        #region string representation

        public IDictionary<LVar, string> varMap
        {
            get{
                var r = new Dictionary<LVar, string>();
                foreach (var fv in orderedFreeVariables)
                    r[fv] = "v_" + r.Count.ToString();
                return r;
            }
        }

        #region IComparable<Clause> Members

        public int CompareTo(Clause c)
        {
            return ToStringN().CompareTo(c.ToStringN());
        }

        #endregion

        #region indexing
        #endregion indexing

        #region newClause operations
        public Clause substitute(Substitution s)
        {
            if (!freeVariables.Intersect(s.domain).Any())
                return this;
            var nls = new List<Literal>();
            var u = false;
            foreach (var l in literals)
            {
                var nl = l.substitute(s);
                if (!ReferenceEquals(nl, l))
                    u = true;
                nls.Add(nl);
            }
            if (u)
                return new Clause(nls);
            else
                return this;
        }
        #endregion newClause operations

        #region mapping
        public override int GetHashCode()
        {
            var r = ToStringN(); 
            return r.GetHashCode();
        }

        public override bool Equals(object obj)
        {
            var c = obj as Clause;
            if (ReferenceEquals(c, null))
                return false;
            return
                stringCacheN == c.stringCacheN;
        }
        #endregion mapping

        //Pretty print string representation, full variable names

        #region LogicElement Members

        public string ToString(IDictionary<LVar,string> vm)
        {
            return stringRep(from a in literals select a.ToString(vm));
        }

        //Normalized pretty string representation, with guaranteed unique string up to newClause isomorphism (e.g. P(x) and P(y) map to P(v_0)) 
        //  Map operations are fully opened (e.g h[r,f] where f is boolfield maps to MapRead$Map$$alpha$$ref$Field$alpha$$to$alpha$$Boolean(h,r,f)
        public string ToStringN()
        {
            return stringCacheN ?? (stringCacheN = ToStringNInt());
        }

        //Normalized string representation, with localized variables but uniqueness not guaranteed as map operations are pretty printed (h[r,f])
        public string ToStringB()
        {
            return stringCacheB ?? (stringCacheB = ToStringBInt());
        }

        public string ToStringBNoVars()
        {
            return ToStringBNoVarsInt();
        }
        //////////////////////////////////////////////////////////////////////////////////////////

        public string ToStringN(IDictionary<LVar, string> vm)
        {
            return stringRep(from a in literals select a.ToStringN(vm));
        }

        #endregion

        public override string ToString()
        {
            return stringCache ?? (stringCache = ToStringInt());
        }

        private string ToStringInt()
        {
            return stringRep(from a in literals select a.ToString());
        }

        private string ToStringNInt()
        {
            return ToStringN(varMap);
        }

        private string ToStringBInt()
        {
            return (varMap.Any() ? varMap.Aggregate("", (s, x) => s + (s == "" ? "" : ", ") + x.Value.ToString() + " : " + x.Key.type.ToString()) + ":" : "") + ToStringBNoVarsInt();
        }

        private string ToStringBNoVarsInt()
        {
            return ToString(varMap);
        }
        private string stringRep(IEnumerable<string> atomReps)
        {
            if (isFalse)
                return "F";
            else if (isTrue)
                return "T";
            else 
                return atomReps.Aggregate("",(s,ar)=>s+(s==""?"":@" \/ ")+ar);
        }

    }
    #endregion string representation
}