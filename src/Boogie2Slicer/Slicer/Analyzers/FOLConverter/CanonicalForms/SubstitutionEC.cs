#region

using System.Collections.Generic;
using System.Diagnostics;
using System.Diagnostics.Contracts;
using System.Linq;
using Slicer.Analyzers.FOLConverter.Formulae;

#endregion

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    public class SubstitutionEC
    {
        #region instance creation

        public SubstitutionEC(Universe universe, bool isGoal)
        {
            this.universe = universe;
            this.isGoal = isGoal;
        }

        public SubstitutionEC(Universe universe,bool isGoal,LVar v, IT t)
            : this(universe,isGoal)
        {
            this[v] = t;
//            Debug.Assert(universe.transitiveMerge(t)==t);
        }

        public SubstitutionEC(Universe universe, bool isGoal,IDictionary<LVar, IT> mappings)
            : this(universe,isGoal)
        {
//            Debug.Assert(mappings.Values.All(t=>universe.transitiveMerge(t)==t));
            map = new Dictionary<LVar, IT>(mappings);
        }

        #endregion instance creation

        #region members

        private readonly Dictionary<LVar, IT> map = new Dictionary<LVar, IT>();
        public readonly Universe universe;
        public readonly bool isGoal;

        public ISet<LVar> variables
        {
            get { return new HashSet<LVar>(map.Keys); }
        }

        #endregion members

        #region properties

        public IT this[LVar v]
        {
            get
            {
                Debug.Assert(has(v));
                return map[v];
            }
            set
            {
                Debug.Assert(!has(v));
                map.Add(v, value);
            }
        }

        [Pure]
        public bool has(LVar v)
        {
            return map.ContainsKey(v);
        }

        public IEnumerable<LVar> domain { get { return map.Keys; ; } }
        public IEnumerable<IT> range { get { return map.Values; } }
        #endregion properties

        #region operators

/*
        internal SubstitutionEC tryCombine(SubstitutionEC c)
        {
            var t = new Dictionary<LVar, ITermEC>(map);
            foreach (var p in c.map)
                if (t.ContainsKey(p.Key) && !t[p.Key].Equals(p.Value))
                    return null;
                else
                    t[p.Key] = p.Value;
            return new SubstitutionEC(t);
        }
*/

        #endregion operators

        #region strings

        public override string ToString()
        {
            return "{" +
                   map.Aggregate("",
                                 (s, p) => s + (s.Any() ? " , " : "") + p.Key.ToString() + " => " + p.Value.ToString()) +
                   "}";
        }

        #endregion strings

        internal SubstitutionEC add(LVar v, IT t)
        {
            Debug.Assert(!variables.Contains(v));
            Debug.Assert(!t.freeVariables.Intersect(variables).Any());
//            Debug.Assert(map.All(kv=>!kv.Value.freeVariables.Contains(v)));
            var ks = new HashSet<LVar>(map.Keys);
            foreach (var k in ks)
                if (map[k].freeVariables.Contains(v))
                    map[k] = map[k].substitute(new SubstitutionEC(universe, isGoal,v, t));
//            Debug.Assert(universe.transitiveMerge(t)==t);

            var nm = new Dictionary<LVar, IT>(map);
            nm[v] = t;
            return new SubstitutionEC(universe,isGoal,nm);
        }
        internal SubstitutionEC tryCombine(SubstitutionEC c)
        {
            Debug.Assert(universe == c.universe);
            var t = new Dictionary<LVar, IT>(map);
            foreach (var p in c.map)
                if (t.ContainsKey(p.Key) && !t[p.Key].Equals(p.Value))
                    return null;
                else
                    t[p.Key] = p.Value;
            return new SubstitutionEC(universe, isGoal, t);
        }

        internal IT mapOr(FVT fvt)
        {
            IT it;
            if (!map.TryGetValue(fvt.variable, out it))
                it = fvt;
            return it;
        }

        public bool isGrounding { get { return range.All(it => it.isGround); } }
    }
}
