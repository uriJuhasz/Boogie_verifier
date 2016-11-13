#region

using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Analyzers.FOLConverter.Clauses;
using Slicer.Analyzers.FOLConverter.Formulae;

#endregion

namespace Slicer.Analyzers.FOLConverter.Contexts
{
    internal class PredicateInstance
    {
        public readonly HashSet<PAInstance> ngPAInstances = new HashSet<PAInstance>();
        public readonly HashSet<PAInstance> nnPAInstances = new HashSet<PAInstance>();
        public readonly HashSet<PAInstance> pgPAInstances = new HashSet<PAInstance>();
        public readonly HashSet<PAInstance> pnPAInstances = new HashSet<PAInstance>();

        public readonly Predicate predicate;

        public PredicateInstance(Predicate predicate)
        {
            this.predicate = predicate;
        }

        public ISet<PAInstance> pPAInstances
        {
            get { return new HashSet<PAInstance>(pgPAInstances.Union(pnPAInstances)); }
        }

        public ISet<PAInstance> nPAInstances
        {
            get { return new HashSet<PAInstance>(ngPAInstances.Union(nnPAInstances)); }
        }

        public int pgAtoms
        {
            get { return pgPAInstances.Sum(i => i.clause.literals.Count); }
        }

        public int pnAtoms
        {
            get { return pnPAInstances.Sum(i => i.clause.literals.Count); }
        }

        public int ngAtoms
        {
            get { return ngPAInstances.Sum(i => i.clause.literals.Count); }
        }

        public int nnAtoms
        {
            get { return nnPAInstances.Sum(i => i.clause.literals.Count); }
        }

        private HashSet<PAInstance> getSet(PredicateApplication pa, bool polarity)
        {
            HashSet<PAInstance> list;
            if (pa.ffreeVariables.Count == 0)
                list = polarity ? pgPAInstances : ngPAInstances;
            else if (polarity)
                list = pnPAInstances;
            else
                list = nnPAInstances;
            return list;
        }

        public void add(Clause clause, int position) //PredicateApplication pa,bool polarity)
        {
            Debug.Assert(position < clause.literals.Count);
            Debug.Assert(position >= 0);
            var a = clause.literals[position];
            var pa = a.f as PredicateApplication;
            Debug.Assert(pa != null);
            Debug.Assert(pa.predicate == predicate);

            var list = getSet(pa, a.polarity);
            list.Add(new PAInstance(clause, position));
        }

        internal void remove(Clause c, int i)
        {
            var list = getSet(c.literals[i].f as PredicateApplication, c.literals[i].polarity);
            list.Remove(new PAInstance(c, i));
        }
    }
}