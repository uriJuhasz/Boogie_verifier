#region

using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Analyzers.FOLConverter.Clauses;
using Slicer.Analyzers.FOLConverter.Formulae;

#endregion

namespace Slicer.Analyzers.FOLConverter.Formulae2Clauses
{
    public class CNF2State
    {
        private readonly Dictionary<string, Clause> pClauses = new Dictionary<string, Clause>();
        private readonly Dictionary<string, Clause> pDefinitions = new Dictionary<string, Clause>();

        public CNF2State(IEnumerable<Clause> clauses, IEnumerable<Clause> definitions)
        {
            Debug.Assert(clauses.Union(definitions).All(c => !c.isTrue));
            pClauses = new Dictionary<string, Clause>();
            foreach (var c in clauses)
                pClauses[c.ToString()] = c;
            pDefinitions = new Dictionary<string, Clause>();
            foreach (var d in definitions)
                pDefinitions[d.ToString()] = d;
        }

        public CNF2State(PredicateApplication pa, bool p)
            : this(new[]{new Clause(pa,p)},new Clause[0])
        {
            Debug.Assert(!pa.isTrue);
//            var nc = new Clause(pa, p);
//            pClauses[nc.ToString()] = nc;
        }

        public CNF2State(EqualityFormula eq, bool p)
        {
            if (!eq.isTrue)
            {
                var nc = new Clause(eq, p);
                pClauses[nc.ToString()] = nc;
            }
        }

        public CNF2State(bool p)
        {
            if (!p)
            {
                var fc = new Clause(false);
                pClauses[fc.ToString()] = fc;
            }
        }

        public CNF2State(CNF2State c1, CNF2State c2)
        {
            pClauses = new Dictionary<string, Clause>();
            foreach (var c in c1.clauses)
                pClauses[c.ToString()] = c;
            foreach (var c in c2.clauses)
                pClauses[c.ToString()] = c;
            pDefinitions = new Dictionary<string, Clause>();
            foreach (var c in c1.definitions.Union(c2.definitions))
                pDefinitions[c.ToString()] = c;
            Debug.Assert(clauses.Union(definitions).All(c => !c.isTrue));
        }


        public IEnumerable<Clause> clauses
        {
            get { return pClauses.Values; }
        }

        public IEnumerable<Clause> definitions
        {
            get { return pDefinitions.Values; }
        }
    }
}