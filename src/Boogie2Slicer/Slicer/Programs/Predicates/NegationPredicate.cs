using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Diagnostics;

namespace Slicer.Programs.Predicates
{
    public class NegationPredicate : Predicate
    {
        public NegationPredicate(Predicate predicate)
        {
            Debug.Assert(predicate != null);
            this.predicate = predicate;
        }

        Predicate predicate { get; private set;  }
    }
}
