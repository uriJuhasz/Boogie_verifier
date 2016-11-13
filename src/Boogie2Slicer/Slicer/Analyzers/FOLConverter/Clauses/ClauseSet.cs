#region

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Analyzers.FOLConverter.Formulae;

#endregion

namespace Slicer.Analyzers.FOLConverter.Clauses
{
    public class ClauseSet
    {
        public readonly ISet<LVar> freeVariables = new HashSet<LVar>();
        private readonly SortedSet<Clause> pClauses = new SortedSet<Clause>();


        private HashSet<LVar> vars = new HashSet<LVar>();

        public ClauseSet()
        {
            numAtoms = 0;
        }

        public ClauseSet(ClauseSet other)
            : this()
        {
            foreach (var c in other.clauses)
                add(c);
            //                pClauses = new SortedSet<Clause>(other.clauses);
            //                numAtoms = other.numAtoms;
        }

        public ClauseSet(params ClauseSet[] others)
            : this()
        {
            foreach (var cs in others)
                foreach (var c in cs.clauses)
                    add(c);
        }

        public ClauseSet(Clause c)
            : this()
        {
            add(c);
        }

        public ClauseSet(bool v)
            : this()
        {
            if (!v)
                add(new Clause());
        }

        //           public readonly HashSet<Clause> clauses = new HashSet<Clause>();
        //            public readonly SortedSet<Clause> clauses = new SortedSet<Clause>();
        public int numAtoms { get; private set; }
        public int numClauses { get { return pClauses.Count; } }

        public IEnumerable<Clause> clauses
        {
            get { return pClauses; }
        }


        public int size
        {
            get { return pClauses.Count; }
        }

        public bool isFalse
        {
            get { return pClauses.Count == 1 && clauses.First().isFalse; }
        }

        /*        {
            get
            {
                var result = new HashSet<LVar>();
                foreach (var c in clauses)
                    result.UnionWith(c.freeVariables);
                return result;
            }
        }*/

        public int Count
        {
            get { return pClauses.Count; }
        }

        public static readonly bool checkUniqueFVs = false;
        public ClauseSet add(Clause c)
        {
            if (checkUniqueFVs)
            {
                Debug.Assert(!freeVariables.Intersect(c.freeVariables).Any());
                freeVariables.UnionWith(c.freeVariables);
            }
/*            if (c.literals.Count==1 && c.literals.First().f is PredicateApplication && c.literals.First().f.spredicate.argumentTypes.Count()==0)
                Debug.Assert(!c.isFalse);
//                Console.WriteLine("Added unit clause {0}",c);
            //                Debug.Assert(freeVariables.Intersect(c.freeVariables).Count() == 0);*/
            if (isFalse)
                return this;


            if (c.isFalse)
            {
                pClauses.Clear();
                pClauses.Add(c);
                numAtoms = c.literals.Count;
            }
            else if (c.isTrue)
            {
            }
            else
            {
//                if (c.ToString().Contains(@"!anon16_Then@1_assertion"))
//                    Debugger.Break();
                var b = pClauses.Add(c);
                if (b)
                    numAtoms += c.literals.Count;
            }

            return this;
        }

        public ClauseSet add(ClauseSet cs)
        {
            Debug.Assert(!ReferenceEquals(this, cs));
            foreach (var c in cs.clauses)
                add(c);
            return this;
        }

        internal void remove(Clause c)
        {
            if (checkUniqueFVs)
                freeVariables.ExceptWith(c.freeVariables);
            var b = pClauses.Remove(c);
            if (b)
                numAtoms -= c.literals.Count;
        }

        public ClauseSet union(ClauseSet cs)
        {
            var result = new ClauseSet(this);
            result.add(cs);
            return result;
        }

        public override string ToString()
        {
            var result = "";
            foreach (var c in clauses)
                result += ((result == "") ? "" : "/\\") + c;
            return result;
        }

        internal bool hasClause(Clause c)
        {
            return pClauses.Contains(c);
        }
    }
}