using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Slicer.Logic;
using System.Diagnostics;

namespace Slicer.Programs.Predicates
{
    public abstract class QuantifierPredicate : Predicate
    {
        public QuantifierPredicate(Quantifier quantifier, Variable variable, Sort typeBound, Predicate predicate)
        {
            Debug.Assert(quantifier != null);
            Debug.Assert(variable   != null);
            Debug.Assert(typeBound  != null);
            Debug.Assert(predicate  != null);

            this.quantifier = quantifier;
            this.variable   = variable;
            this.typeBound  = typeBound;
            this.predicate  = predicate;
        }

        Quantifier quantifier { get; private set; }
        Variable   variable   { get; private set; }
        Sort       typeBound  { get; private set; }
        Predicate  predicate  { get; private set; }
    }
}
