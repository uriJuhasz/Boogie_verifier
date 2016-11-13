using System.Collections.Generic;
using Slicer.Programs.Conditions;
using Slicer.Programs.Expressions.utilities;
using Slicer.StateSpace.Variables;

namespace Slicer.Analyzers.EqualityAnalyzer.MapAnalyzer
{
    public interface IncarnationAndInequalityMap
    {
        //////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////
        Dictionary<string, MapIncarnation> mapIncarnationMap { get; }


        //////////////////////////////////////////////////////////////////
        PropositionalFormula pathCondition { get; }
        Dictionary<string, int> conditionVariableIndices { get; }
        Dictionary<int, ProgramVariable> conditionVariableNames { get; }
        bool isDisjoint(ExpressionList indices, ExpressionList updatedIndices);
        //////////////////////////////////////////////////////////////////
//        ICollection<StateSpace.BoundVariable> getRepresentatives(StateSpace.BoundVariable rep);
//        ICollection<Tuple<PropositionalFormula, IncarnationAndInequalityMap>> getPredecessors(PropositionalFormula.Conjunction additionalInformation);
    }
}