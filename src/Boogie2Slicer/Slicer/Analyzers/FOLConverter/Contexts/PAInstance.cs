#region

using System.Diagnostics;
using Slicer.Analyzers.FOLConverter.Clauses;
using Slicer.Analyzers.FOLConverter.Formulae;

#endregion

namespace Slicer.Analyzers.FOLConverter.Contexts
{
    internal class PAInstance
    {
        public readonly Clause clause;
        public readonly PredicateApplication pa;
        public readonly bool polarity;
        public readonly int position;

        public PAInstance(Clause clause, int position)
        {
            Debug.Assert(position < clause.literals.Count);
            Debug.Assert(clause.literals[position].f is PredicateApplication);
            this.clause = clause;
            this.position = position;
            pa = clause.literals[position].f as PredicateApplication;
            polarity = clause.literals[position].polarity;
        }

        public override string ToString()
        {
            return clause + "," + position;
        }

        public override int GetHashCode()
        {
            return ToString().GetHashCode();
        }

        public override bool Equals(object obj)
        {
            var o = obj as PAInstance;
            return (o != null && o.clause == clause && o.position == position);
        }
    }
}