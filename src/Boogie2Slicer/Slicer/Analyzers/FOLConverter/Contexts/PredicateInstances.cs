#region

using System.Collections.Generic;
using Slicer.Analyzers.FOLConverter.Clauses;
using Slicer.Analyzers.FOLConverter.Formulae;

#endregion

namespace Slicer.Analyzers.FOLConverter.Contexts
{
    internal class PredicateInstances
    {
        public readonly Dictionary<string, PredicateInstance> pis = new Dictionary<string, PredicateInstance>();

        public void add(Clause c)
        {
            for (var i = 0; i < c.literals.Count; i++)
            {
                var a = c.literals[i];
                var pa = a.f as PredicateApplication;
                if (!ReferenceEquals(pa, null))
                    pis[pa.predicate.name].add(c, i);
            }
        }

        public void remove(Clause c)
        {
            for (var i = 0; i < c.literals.Count; i++)
            {
                var a = c.literals[i];
                var pa = a.f as PredicateApplication;
                if (!ReferenceEquals(pa, null))
                    pis[pa.predicate.name].remove(c, i);
            }
        }
    }
}