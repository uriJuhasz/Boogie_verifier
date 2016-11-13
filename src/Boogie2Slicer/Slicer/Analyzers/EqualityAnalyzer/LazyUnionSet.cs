using System.Collections.Generic;
using System.Linq;

namespace Slicer.Analyzers.EqualityAnalyzer
{
    public class LazyUnionSet<T>
    {
        private readonly HashSet<T> local = new HashSet<T>();
        private readonly IEnumerable<LazyUnionSet<T>> ps;
        private readonly HashSet<T> searched = new HashSet<T>();

        public LazyUnionSet()
            : this(new List<LazyUnionSet<T>>())
        {
        }

        public LazyUnionSet(IEnumerable<LazyUnionSet<T>> ps)
        {
            this.ps = ps;
        }

        public bool has(T k)
        {
            if (local.Contains(k))
                return true;
            if (searched.Contains(k))
                return false;
            bool r = ps.Any((p) => p.has(k));
            if (r)
            {
                local.Add(k);
                return true;
            }
            else
            {
                searched.Add(k);
                return false;
            }
        }

        public bool tryAdd(T k)
        {
            if (has(k))
                return false;

            local.Add(k);
            searched.Remove(k);
            return true;
        }
    }
}