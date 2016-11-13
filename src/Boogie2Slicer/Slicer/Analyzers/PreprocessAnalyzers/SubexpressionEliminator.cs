using System.Collections.Generic;
using System.Linq;
using Slicer.Programs.Expressions;
using Slicer.Programs.Expressions.Basic;
using Slicer.Programs.Expressions.utilities;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;
using Slicer.StateSpace.Functions.Basic;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Variables;

namespace Slicer.Analyzers
{
    internal class SubexpressionEliminator
    {
        public static void appendSubexpressions(Procedure p)
        {
            var subExpressionLeaves = new Dictionary<string, SubExpressionOrderNode>();

            foreach (var sec in p.cfg.startNode.getPreState(0).subexpressionCounter.subexpressionCounts)
                if (sec.Value.contexts.Count > 1 ||
                    (sec.Value.contexts.First().Key == null && sec.Value.contexts.First().Value.Count > 1))
                    subExpressionLeaves.Add(sec.Key, new SubExpressionOrderNode(sec.Value));

            foreach (var ses in subExpressionLeaves.Values)
/*                process(subExpressionLeaves,ses.Value);
            
            Queue<SubExpressionOrderNode> q = new Queue<SubExpressionOrderNode>();

            foreach (var ses in subExpressionLeaves)
                if (ses.Value.numDescendants==0)
                    q.Enqueue(ses.Value);

            int numStatements = 0;
            while (q.Count>0)*/
            {
                Expression e = ses.subExpression.expression;
                IType t = e.type;
                ProgramVariable nv = p.makeFreshProgramVariable("se", t);
                var s =
                    new Assume(
                        new BasicFAE(
                            BFunction.eq(t),
                            new ExpressionList(
                                new BasicProgramVariableExpression(nv),
                                e
                                )
                            )
                        );
                ses.subExpression.definition.prependStatement(s);
            }
        }

        #region Nested type: SubExpressionOrderNode

        private class SubExpressionOrderNode
        {
            public readonly SubexpressionCounter.SubExpression subExpression;

            public SubExpressionOrderNode(SubexpressionCounter.SubExpression subExpression)
            {
                this.subExpression = subExpression;
//                this.parents = new HashSet<string>();
//                this.numDescendants = 0;
            }

//            public readonly HashSet<string> parents;
//            public int numDescendants;
        }

        #endregion
    }
}