#region

using System.Diagnostics;
using System.Linq;
using Slicer.Analyzers.FOLConverter.Clauses;
using Slicer.Analyzers.FOLConverter.Formulae;

#endregion

namespace Slicer.Analyzers.FOLConverter.Contexts
{
    internal class TypePredicateInstance //type predicate instance
    {
        public readonly int atomIndex;
        public readonly Clause clause;
        public readonly PredicateApplication predicateApplication;
        public readonly ITerm term;
        public readonly int termIndex;

        public TypePredicateInstance(Clause clause, int atomIndex, int termIndex)
        {
            Debug.Assert(atomIndex >= 0 && atomIndex < clause.literals.Count);
            var atom = clause.literals[atomIndex];
            var pa = atom.f as PredicateApplication;
            Debug.Assert(pa != null);
            Debug.Assert(termIndex >= 0 && termIndex < pa.args.Count());
            this.clause = clause;
            this.atomIndex = atomIndex;
            this.termIndex = termIndex;
            predicateApplication = pa;
            term = pa.args[termIndex];
        }

        public override string ToString()
        {
            return predicateApplication.predicate.name + "[" + termIndex + "]:" + term;
        }

        public override int GetHashCode()
        {
            return ToString().GetHashCode();
        }

        public override bool Equals(object obj)
        {
            var o = obj as TypePredicateInstance;
            return o != null && o.ToString() == ToString();
        }
    }
}