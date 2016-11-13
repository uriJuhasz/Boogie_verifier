using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Diagnostics;
using Slicer.Logic;

namespace Slicer.Programs.Predicates
{
    public abstract class BinaryPredicate : Predicate
    {
        public BinaryPredicate(BinaryConnective connective, Predicate first, Predicate second)
        {
            Debug.Assert(connective != null);
            Debug.Assert(first  != null);
            Debug.Assert(second != null);

            this.connective = connective;
            this.first  = first;
            this.second = second;
        }

        public string ToString() { return first.ToString() + " " + operatorName + " " + second.ToString(); }

        public BinaryConnective connective { get; private set; }
        public Predicate first { get; private set; }
        public Predicate second{ get; private set; }

        public abstract string operatorName{ get; }
    }
}
