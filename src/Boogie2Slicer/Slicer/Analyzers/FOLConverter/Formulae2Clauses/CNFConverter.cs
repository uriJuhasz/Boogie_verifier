#region

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Analyzers.FOLConverter.Clauses;
using Slicer.Analyzers.FOLConverter.Formulae;
using Slicer.StateSpace.Types;

#endregion

namespace Slicer.Analyzers.FOLConverter.Formulae2Clauses
{
    public class CNFConverter
    {
        private readonly ISRS srs;

        public CNFConverter(ISRS srs)
        {
            this.srs = srs;
        }

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        public CNF2State cnf2i(IFormula f) //skolemized etc
        {
            CNF2State result;

            if (f is PredicateApplication)
            {
                result = new CNF2State(f as PredicateApplication, true);
            }
            else if (f is EqualityFormula)
            {
                result = new CNF2State(f as EqualityFormula, true);
            }
            else if (f is Not)
            {
                var nf = f as Not;
                if (nf.f is PredicateApplication)
                    result = new CNF2State(nf.f as PredicateApplication, false);
                else if (nf.f is EqualityFormula)
                    result = new CNF2State(nf.f as EqualityFormula, false);
                else throw new Exception();
            }
            else if (f is UniversalFormula)
                result = cnf2i((f as UniversalFormula).f);
            else if (f is True)
                result = new CNF2State(true);
            else if (f is False)
                result = new CNF2State(false);
            else if (f is And)
            {
                var af = f as And;
                result = new CNF2State(cnf2i(af.f1), cnf2i(af.f2));
            }
            else if (f is Or) // /\a_i \/ /\b_j => (Na <-> /\a_i) /\ (Nb <-> /\b_j) /\ (Na\/Nb)
            {
                var of = f as Or;
                var cs1 = cnf2i(of.f1);
                var cs2 = cnf2i(of.f2);
                //                Console.WriteLine("\tcnf:dis {0}x{1}", cs1.Count, cs2.Count);
                var d = new SortedSet<Clause>(cs1.definitions.Union(cs2.definitions).Except(new []{new Clause(true)}));
                var cs = new SortedSet<Clause>();
                //                Console.WriteLine("Oring {0} and {1}", cs1.clauses.ToString(), cs2.clauses.ToString());
                Debug.Assert(cs1.clauses.Any() || !cs1.definitions.Any());
                Debug.Assert(cs2.clauses.Any() || !cs2.definitions.Any());
//                Debug.Assert(cs1.clauses.Any() && cs2.clauses.Any());

                if (!cs1.clauses.Any() || !cs2.clauses.Any()) //true
                {
                }
                else if (cs1.clauses.Count() == 1 && cs2.clauses.Count() == 1)
                {
                    var c = new List<Literal>();
                    if (!cs1.clauses.First().isTrue && !cs2.clauses.First().isTrue)
                    {
                        foreach (var a in cs1.clauses.First().literals)
                            c.Add(a);
                        foreach (var a in cs2.clauses.First().literals)
                            c.Add(a);
                        cs.Add(new Clause(c));
                    }
                }
                else if (cs1.clauses.Count() == 1)
                {
                    if (!cs1.clauses.First().isTrue)
                        foreach (var c in cs2.clauses)
                            cs.Add(new Clause(cs1.clauses.First().literals.Union(c.literals)));
                }
                else if (cs2.clauses.Count() == 1)
                {
                    if (!cs2.clauses.First().isTrue)
                        foreach (var c in cs1.clauses)
                            cs.Add(new Clause(cs2.clauses.First().literals.Union(c.literals)));
                }
                else
                {
                    var N1 = makeDefinition(d, cs1.clauses);
                    var N2 = makeDefinition(d, cs2.clauses);

                    var fvs1 = freeVariables(cs1.clauses).ToArray();
                    var fvs2 = freeVariables(cs2.clauses).ToArray();
                    var c = new List<Literal>
                                    {
                                        new Literal(
                                            new PredicateApplication(N1,
                                                                     (from fv in fvs1 select new Variable(fv)).ToArray()),
                                            true),
                                        new Literal(
                                            new PredicateApplication(N2,
                                                                     (from fv in fvs2 select new Variable(fv)).ToArray()),
                                            true)
                                    };
                    cs.Add(new Clause(c));
                }
                result = new CNF2State(cs.Except(new []{new Clause(true)}), d.Except(new []{new Clause(true)}));
                //                Console.WriteLine(" = {0}", result.clauses.ToString());
            }
            else
                throw new Exception();
//            Debug.Assert(result.clauses.Union(result.definitions).All(c => c.freeVariables.All(fv=>!BooleanType.isBoolean(fv.type))));
            return result;
        }

        private Predicate makeDefinition(SortedSet<Clause> d, IEnumerable<Clause> cs)
        {
            // N :: forall ci in cs :: [ N \/ \/_i !Nci ] /\ /\_i [!N \/ Nci]

            var defs = from c in cs select makeDefinition(d, c);

            var fvs = freeVariables(cs).ToArray();
            var dts = TypeTuple.make(from fv in fvs select fv.type);
            var N = srs.getFreshPredicate(CSRS.NPPrefix, dts);
            //            Console.WriteLine("\t Defining {0} as {1}", cs.ToString(), N.name);
            foreach (var def in defs)
            {
                var c = new List<Literal>();
                var vs = srs.getFreshVariables(fvs);
                var vts = (from v in vs select new Variable(v)).ToArray();
                c.Add(new Literal(new PredicateApplication(N, vts), false));
                var s = new Substitution(fvs, vts);
                c.Add(def.substitute(s));
                d.Add(new Clause(c));
                //                Console.WriteLine("\t\t Adding {0}", c.ToString());
            }
            {
                var c = new List<Literal>();
                var vs = srs.getFreshVariables(fvs);
                var vts = (from v in vs select new Variable(v)).ToArray();
                var s = new Substitution(fvs, vts);
                c.Add(new Literal(new PredicateApplication(N, vts), true));
                foreach (var def in defs)
                    c.Add(def.substitute(s).negate());
                d.Add(new Clause(c));
                //                Console.WriteLine("\t\t Adding {0}", c.ToString());
            }

//            definitionMap[cs.ToString()] = N;
            return N;
        }

        private Literal makeDefinition(ISet<Clause> d, Clause c)
        {
            Debug.Assert(!c.isFalse);
            Debug.Assert(!c.isTrue);
            Debug.Assert(c.literals.Count > 0);
            if (c.literals.Count == 1)
                return c.literals.First();

            var fvs = c.freeVariables.ToArray();
            var dts = TypeTuple.make(from fv in fvs select fv.type);
            var N = srs.getFreshPredicate(CSRS.NPPrefix, dts);
            //            Console.WriteLine("\t\t Defining {0} as {1}", c.ToString(), N.name);
            {
                var nc = new List<Literal>();
                var vs = srs.getFreshVariables(fvs);
                var vts = (from v in vs select new Variable(v)).ToArray();
                nc.Add(new Literal(new PredicateApplication(N, vts), false));
                var s = new Substitution(fvs, vts);
                foreach (var a in c.literals)
                    nc.Add(a.substitute(s));
                d.Add(new Clause(nc));
                //                Console.WriteLine("\t\t\t Adding {0}", nc.ToString());
            }
            foreach (var a in c.literals)
            {
                var nc = new List<Literal>();
                var vs = srs.getFreshVariables(fvs);
                var vts = (from v in vs select new Variable(v)).ToArray();
                var s = new Substitution(fvs, vts);
                nc.Add(new Literal(new PredicateApplication(N, vts), true));
                nc.Add(a.substitute(s).negate());
                d.Add(new Clause(nc));
                //                Console.WriteLine("\t\t\t Adding {0}", nc.ToString());
            }

            var ovts = (from v in fvs select new Variable(v)).ToArray();
            return new Literal(new PredicateApplication(N, ovts), true);
        }
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        private static IEnumerable<LVar> freeVariables(IEnumerable<Clause> cs)
        {
            var r = new SortedSet<LVar>();
            foreach (var c in cs)
                r.UnionWith(c.freeVariables);
            return r;
        }
    }
}
