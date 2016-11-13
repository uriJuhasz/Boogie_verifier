using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Diagnostics;
using Slicer.Programs.Terms;
using Slicer.Logic;

namespace Slicer.Programs.Predicates
{
    public class BinaryRelationPredicate : Predicate
    {
        public BinaryRelationPredicate(BinaryRelation relation, Term first, Term second)
        {
            Debug.Assert(relation != null);
            Debug.Assert(first != null);
            Debug.Assert(second != null);
            this.relation = relation;
            this.first  = first;
            this.second = second;
        }

        public Term first { get; private set; }
        public Term second { get; private set; }

        public string ToString() { return first.ToString() + " " + relation.ToString() + " " + second.ToString(); }

        public BinaryRelation relation { get; private set; }
    }
}
