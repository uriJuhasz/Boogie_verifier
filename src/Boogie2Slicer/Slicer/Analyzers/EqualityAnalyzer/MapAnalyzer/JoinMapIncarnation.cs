using System;
using System.Collections.Generic;
using System.Diagnostics;
using Slicer.Programs.Conditions;
using Slicer.Programs.Expressions;
using Slicer.Programs.Expressions.utilities;

namespace Slicer.Analyzers.EqualityAnalyzer.MapAnalyzer
{
    internal class JoinMapIncarnation : MapIncarnation
    {
        ////////////////////////////////////////////////////////////////////////////
        private readonly List<Tuple<MapIncarnation, PropositionalFormula>> predecessors;

        public JoinMapIncarnation(
            IncarnationAndInequalityMap mapAnalyzer,
            Expression incarnation,
            IEnumerable<Tuple<MapIncarnation, PropositionalFormula>> predecessors
            )
            : base(mapAnalyzer, incarnation)
        {
            this.predecessors = new List<Tuple<MapIncarnation, PropositionalFormula>>(predecessors);
//            cache = new Dictionary<string, StateSpace.BoundVariable>();
        }

        ////////////////////////////////////////////////////////////////////////////
        public override Expression getEarliestIncarnation(ExpressionList indices, PropositionalFormula condition)
        {
            var earlyIncarnations = new List<Expression>();
            PropositionalFormula c = mapAnalyzer.pathCondition & condition;
            Expression result = null;
            foreach (var p in predecessors)
            {
                PropositionalFormula pc = p.Item2 & c;
                if (!pc.isFalse)
                    if (p.Item1 == null)
                    {
                        result = incarnation;
                        break;
                    }
                    else
                        earlyIncarnations.Add(p.Item1.getEarliestIncarnation(indices, c));
            }
            if (result == null)
                result = findEarliestSafeIncarnation(incarnation, earlyIncarnations);
            return result;
        }

        ////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////
        private static Expression findEarliestSafeIncarnation(Expression currentIncarnation,
                                                              List<Expression> earlyIncarnations)
        {
            //TODO:maybe can do better
            Debug.Assert(earlyIncarnations != null);
            if (earlyIncarnations.Count == 0)
                return currentIncarnation;
            Expression v = earlyIncarnations[0];
            foreach (var u in earlyIncarnations)
                if (v.ToString() != u.ToString())
                    return currentIncarnation;
            return v;
        }

        ////////////////////////////////////////////////////////////////////////////
        public override string ToString()
        {
            string result = "Join[" + incarnation.ToString() + "](";

            foreach (var p in predecessors)
                result += " " + "[" + p.Item2 + "]" + ((p.Item1 != null) ? p.Item1.incarnation.ToString() : "null");
            result += ")";
            return result;
        }

        ////////////////////////////////////////////////////////////////////////////
    }
}