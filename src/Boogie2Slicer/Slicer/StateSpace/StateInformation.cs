using Slicer.Analyzers;
using Slicer.Analyzers.EqualityAnalyzer;
using Slicer.Analyzers.Tools;

namespace Slicer.StateSpace
{
    public class StateInformation
    {
        public StateInformation()
        {
            evaluatorInformation = new EvaluatorInformation();
        }

//        public SSAReincarnator      ssaReincarnator      { get; set; }
//        public MapCollector         mapCollector         { get; set; }
        public EvaluatorInformation evaluatorInformation { get; set; }
        public EqualityAnalyzer equalityAnalyzer { get; set; }
        public InitializedVariables initializedVariables { get; set; }
        public DeadCodeEliminator deadCodeEliminator { get; set; }
        public SubexpressionCounter subexpressionCounter { get; set; }

        public FunctionInliner functionInliner { get; set; }

        public override string ToString()
        {
            string result = "";
            return result;
        }
    }
}