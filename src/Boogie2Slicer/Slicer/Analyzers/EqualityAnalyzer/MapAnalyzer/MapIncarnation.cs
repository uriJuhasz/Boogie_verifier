using System.Diagnostics;
using Slicer.Programs.Conditions;
using Slicer.Programs.Expressions;
using Slicer.Programs.Expressions.utilities;

namespace Slicer.Analyzers.EqualityAnalyzer.MapAnalyzer
{
    public abstract class MapIncarnation
    {
        protected MapIncarnation(IncarnationAndInequalityMap mapAnalyzer, Expression incarnation)
        {
            Debug.Assert(mapAnalyzer != null);
            Debug.Assert(incarnation != null);
            this.mapAnalyzer = mapAnalyzer;
            this.incarnation = incarnation;
        }

        public IncarnationAndInequalityMap mapAnalyzer { get; protected set; }
        public Expression incarnation { get; protected set; }
        public abstract Expression getEarliestIncarnation(ExpressionList indices, PropositionalFormula conditions);


        public abstract override string ToString();
    }
}