#region

using System.Collections.Generic;
using System.Diagnostics;
using System.Diagnostics.Contracts;
using System.Linq;
using Slicer.Analyzers.FOLConverter.Formulae;

#endregion

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    public class GroundSubstitutionEC
    {
        #region instance creation

        public GroundSubstitutionEC(Universe universe, bool saturate)
        {
            this.universe = universe;
        }

        public GroundSubstitutionEC(Universe universe, bool saturate, LVar v, GT t)
            : this(universe,saturate)
        {
            Debug.Assert(t == universe.transitiveMerge(t));
            this[v] = t;
        }

        internal GroundSubstitutionEC(Universe universe, bool saturate, IDictionary<LVar, GT> mappings)
            : this(universe,saturate)
        {
            Debug.Assert(mappings.Values.All(gt => gt == universe.transitiveMerge(gt)));
            map = new Dictionary<LVar, GT>(mappings);
        }

        #endregion instance creation

        #region members

        internal readonly Dictionary<LVar, GT> map = new Dictionary<LVar, GT>();
        public bool isGoal;
        public readonly Universe universe;

        public ISet<LVar> variables
        {
            get { return new HashSet<LVar>(map.Keys); }
        }

        #endregion members

        #region properties
        public GT this[LVar v]
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
        private bool has(LVar v)
        {
            return map.ContainsKey(v);
        }

        #endregion properties

        #region operators

        internal GroundSubstitutionEC tryCombine(GroundSubstitutionEC c)
        {
            Debug.Assert(universe == c.universe);
            var t = new Dictionary<LVar, GT>(map);
            foreach (var p in c.map)
                if (t.ContainsKey(p.Key) && !t[p.Key].Equals(p.Value))
                    return null;
                else
                    t[p.Key] = p.Value;
            return new GroundSubstitutionEC(universe,isGoal,t);
        }

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
    }
}