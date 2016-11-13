using Slicer.Programs.Conditions;
using Slicer.Programs.Expressions;
using Slicer.Programs.Expressions.utilities;

namespace Slicer.Analyzers.EqualityAnalyzer.MapAnalyzer
{
    internal class InitialMapIncarnation : MapIncarnation
    {
        public InitialMapIncarnation(IncarnationAndInequalityMap mapAnalyzer, Expression incarnation)
            : base(mapAnalyzer, incarnation)
        {
        }

        public override Expression getEarliestIncarnation(ExpressionList indices, PropositionalFormula condition)
        {
            return incarnation;
        }

        public override string ToString()
        {
            string result = "Initial[" + incarnation.ToString() + "]";
            return result;
        }
    }
}