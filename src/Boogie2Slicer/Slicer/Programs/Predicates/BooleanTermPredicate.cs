using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Slicer.Programs.Terms;
using System.Diagnostics;

namespace Slicer.Programs.Predicates
{
    class BooleanTermPredicate : Predicate
    {
        BooleanTermPredicate(Term term)
        {
            Debug.Assert(term != null);
            this.term = term;
        }

        Term term { get; private set;  }
    }
}
