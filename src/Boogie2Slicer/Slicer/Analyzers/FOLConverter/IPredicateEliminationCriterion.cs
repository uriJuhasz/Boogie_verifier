#region

using System.Collections.Generic;
using Slicer.Analyzers.FOLConverter.Clauses;
using Slicer.Analyzers.FOLConverter.Contexts;

#endregion

namespace Slicer.Analyzers.FOLConverter
{
    internal interface IPredicateEliminationCriterion
    {
        bool preCheck(PredicateInstance pi);
        bool postCheck(PredicateInstance pi, ClauseSet cs, HashSet<Clause> goals);
    }
}