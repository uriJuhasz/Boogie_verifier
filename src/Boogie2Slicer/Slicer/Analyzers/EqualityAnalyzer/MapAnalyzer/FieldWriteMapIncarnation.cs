using System.Collections.Generic;
using System.Diagnostics;
using Slicer.Programs.Conditions;
using Slicer.Programs.Expressions;
using Slicer.Programs.Expressions.utilities;
using Slicer.StateSpace.Functions;

namespace Slicer.Analyzers.EqualityAnalyzer.MapAnalyzer
{
    internal class FieldWriteMapIncarnation : MapIncarnation
    {
        private readonly Dictionary<string, Expression> cache;
        private readonly MapIncarnation predecessor;
        private readonly ExpressionList updatedIndices;
        private FAE mapWrite;

        public FieldWriteMapIncarnation(IncarnationAndInequalityMap mapAnalyzer, Expression incarnation,
                                        FAE mapWrite)
            : base(mapAnalyzer, incarnation)
        {
            Debug.Assert(mapWrite != null);
            Debug.Assert(mapWrite.function is MapWrite);
            Debug.Assert(mapWrite.arguments.count > 2);
            Debug.Assert(mapWrite.arguments[0] is ProgramVariableExpression);
            this.mapWrite = mapWrite;
            predecessor =
                mapAnalyzer.mapIncarnationMap[(mapWrite.arguments[0] as ProgramVariableExpression).programVariable.name
                    ];
            Debug.Assert(predecessor != null);
            var ui = new List<Expression>();

            for (var i = 1; i < mapWrite.arguments.count - 1; i++)
                ui.Add(mapWrite.arguments[i]);
            updatedIndices = new ExpressionList(ui);
            cache = new Dictionary<string, Expression>();
        }

        public override Expression getEarliestIncarnation(ExpressionList indices, PropositionalFormula condition)
        {
            var result = incarnation;
            var s = indices.ToString();
            if (!cache.TryGetValue(indices.ToString(), out result))
            {
                if (mapAnalyzer.isDisjoint(indices, updatedIndices))
                {
                    result = predecessor.getEarliestIncarnation(indices, condition); //TODO:add guard/inbetween
                }
                else
                    result = incarnation;

                cache[s] = result;
            }

            return result;
        }

        public override string ToString()
        {
            string result = "FW[" + incarnation.ToString() + "](" + predecessor.incarnation.ToString() + ")";
            return result;
        }
    }
}