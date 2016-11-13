using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Slicer.Logic;

namespace Slicer.Programs.Predicates
{
    public interface QuantifiedTypePredicate : Predicate
    {
        TypeQuantifier quantifier { get; }
        TypeVariable   variable   { get; }
        Predicate      predicate  { get; }
    }
}
