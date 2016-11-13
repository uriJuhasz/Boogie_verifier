#region

using System;
using System.Collections.Generic;

#endregion

namespace Slicer.Analyzers.FOLConverter.Clauses
{
    public class ClauseSetMutatingVisitorMods
    {
        public readonly ISet<Tuple<Clause, bool>> toAdd = new HashSet<Tuple<Clause, bool>>(); //todo goal marking
        public readonly ISet<Clause> toRemove = new HashSet<Clause>();
        public readonly ISet<Clause> toUpdate = new HashSet<Clause>();
    }
}