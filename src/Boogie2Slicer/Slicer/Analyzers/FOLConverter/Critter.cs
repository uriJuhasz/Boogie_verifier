#region

using System;
using System.Collections.Generic;
using System.Linq;
using Slicer.Analyzers.FOLConverter.Clauses;
using Slicer.Analyzers.FOLConverter.Contexts;
using Slicer.Analyzers.FOLConverter.Formulae;

#endregion

namespace Slicer.Analyzers.FOLConverter
{
    internal class Critter : IPredicateEliminationCriterion
    {
        #region IPredicateEliminationCriterion Members

        public bool preCheck(PredicateInstance pi)
        {
            var pn = pi.pnPAInstances;
            var pg = pi.pgPAInstances;
            var nn = pi.nnPAInstances;
            var ng = pi.ngPAInstances;

            var pnc = pn.Count;
            var pgc = pg.Count;
            var nnc = nn.Count;
            var ngc = ng.Count;

            var preClauses = pnc + pgc + nnc + ngc;

            var pna = pi.pnAtoms;
            var pga = pi.pgAtoms;
            var nna = pi.nnAtoms;
            var nga = pi.ngAtoms;

            var postAtomsMax = (pna + pga)*(nna + nga) - preClauses;
            var curAtoms = (pna + pga + nna + nga);
            var arity = pi.predicate.argumentTypes.Count();

            if (isGoal(pi.predicate))
                return false;

            if (arity==0 && !CSRS.isCNFName(pi.predicate.nameN)) //currently avoid to keep cfg shape
                return false;

            if (pnc + pgc == 0 || nnc + ngc == 0) //monopolar
                return true;

            if (pnc == 0 && pgc == 1 && pg.First().clause.literals.Count == 1)
                return true;
            if (pnc == 1 && pgc == 0 && pn.First().clause.literals.Count == 1)
                return true;
            if (nnc == 0 && ngc == 1 && ng.First().clause.literals.Count == 1)
                return true;
            if (nnc == 1 && ngc == 0 && nn.First().clause.literals.Count == 1)
                return true;

            if (pnc + pgc <= 2 && nnc + ngc <= 2)
                return true;

//                if (pnc + pgc <= 1 || nnc + ngc <= 1) //(almost)monopolar
            //                  return true;

            //                if (isInterpreted(pi.predicate))
//                    return false;

/*
                if (arity > 0 && (pnc <= 1 || nnc <= 1) && (pgc*ngc < 10))
                    return true;

                if (arity > 0 && (pnc + pgc)*(nnc + ngc) <= 20)
                    return true;

                if (arity == 0 && postAtomsMax < curAtoms + 4) //Too many resultant atoms
                    return false;

//                if (postAtomsMax < curAtoms + 20) //Too many resultant atoms
//                    return true;

                    if (arity > 0 && (pgc*ngc == 0) && (pnc <= 1 || nnc <= 1))
                        return true;

//                if (((pnc + pgc) * (nnc + ngc) < preClauses + 30) && (pnc == 0 || nnc == 0) && (pnc * ngc) + (nnc * pgc) < (ngc + pgc + 10) && (pgc * ngc < 20)) // non-ground on at most one side
//                    return true;
*/
            return false;
        }

        public bool postCheck(PredicateInstance pi, ClauseSet cs, HashSet<Clause> goals)
        {
            var pn = pi.pnPAInstances;
            var pg = pi.pgPAInstances;
            var nn = pi.nnPAInstances;
            var ng = pi.ngPAInstances;

            var pnc = pn.Count;
            var pgc = pg.Count;
            var nnc = nn.Count;
            var ngc = ng.Count;

            var curClauses = pnc + pgc + nnc + ngc;

            var pna = pi.pnAtoms;
            var pga = pi.pgAtoms;
            var nna = pi.nnAtoms;
            var nga = pi.ngAtoms;

            var preAtoms = (pna + pga + nna + nga);
            var postAtoms = cs.numAtoms;
            var postClauses = cs.clauses.Count();

            var arity = pi.predicate.argumentTypes.Count();

            if (cs.clauses.Any(c=>c.literals.Any(a=>a.f.spredicate.Equals(pi.predicate))))
                return false;

            if (arity == 0 && postAtoms <= preAtoms + 2) //Too many resultant atoms
                return true;

            if (arity > 0 && postAtoms < preAtoms + 20) //Not too many resultant atoms
                return true;

            if (arity > 0 && pnc <= 1 && nnc <= 1 && (pgc == 0 || ngc == 0))
                return true;

            if (pnc + pgc <= 1 || nnc + ngc <= 1) //monopolar
                return true;

            if (arity > 0 && ((pnc <= 2 && pgc*ngc == 0) || (nnc <= 2 && pgc*ngc == 0)))
                return true;

            foreach (var c in cs.clauses)
                foreach (var pa in c.predicates(true).Union(c.predicates(false)))
                    if (pa.predicate == pi.predicate)
                    {
                        Console.WriteLine("Rejected for recursiveness");
                        return false;
                    }

            return arity > 0 && postAtoms < preAtoms + 10;

//                if (pnc == 0 || nnc == 0) // non-ground only on one side
//                    return true;


//                if (cs.Count > pnc + pgc + nnc + ngc)
//                    return false;
        }

        #endregion

        public static bool isGoal(IPredicate predicate)
        {
            return predicate.name.Contains(Slicer.assertionSuffix);
        }
    }
}