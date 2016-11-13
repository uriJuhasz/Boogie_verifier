#region

using System.Diagnostics;
using Slicer.Analyzers.FOLConverter.Clauses;
using Slicer.Analyzers.FOLConverter.Formulae;

#endregion

namespace Slicer.Analyzers.FOLConverter.Contexts
{
    internal class TypeEqualityInstance //type equality instance
    {
        public readonly int atomIndex;
        public readonly Clause clause;
        public readonly EqualityFormula equality;

        public TypeEqualityInstance(Clause clause, int atomIndex)
        {
            Debug.Assert(atomIndex >= 0 && atomIndex < clause.literals.Count);
            this.clause = clause;
            this.atomIndex = atomIndex;
            equality = clause.literals[atomIndex].f as EqualityFormula;
        }
    }
}