using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Programs.CFG;
using Slicer.Programs.Conditions;
using Slicer.Programs.Expressions;
using Slicer.Programs.Expressions.Basic;
using Slicer.Programs.Expressions.utilities;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;
using Slicer.StateSpace.Functions.Basic;
using Slicer.StateSpace.Values;
using Slicer.StateSpace.Variables;

namespace Slicer.Transformations
{
    internal class SingleAssertionCFGExtractor
    {
        ////////////////////////////////////////////////////////////////////////////////////////////////
        public static CFG<BasicBlock, BasicEdge> getFlatCFG(CFG<BasicBlock, BasicEdge> cfg, StatementId target)
        {
/*            Console.WriteLine("Slicing for [{0}] {1}: {2}",
                target.basicBlock.statements[0].preState.equalityAnalyzer.pathCondition.ToString(),
                target.ToString(),
                target.statement.ToString()
            );*/
            var targetA = target.statement as Assert;
            var result = new CFG<BasicBlock, BasicEdge>();

            int n = 0;
            foreach (var bb in cfg.nodes)
                foreach (var s in bb.statements)
                    n++;


            IEnumerable<StatementId> relevant = getRelevant(cfg, target);
            Console.WriteLine("[{0}] Statements: {1}, relevant : {2}", target.ToString(), n, relevant.Count());
            Debug.Assert(n >= relevant.Count());

            BasicBlock block = result.lookupOrAddNode("start");

            PropositionalFormula pathCondition = target.preStates.equalityAnalyzer.pathCondition;
            Expression pathConditionExpression = PF2E(
                target.basicBlock.getPreState(0).equalityAnalyzer.conditionVariableNames,
                pathCondition
                );


            PropositionalFormula notPathCondition = !pathCondition;
//            Console.WriteLine("!{0} == {1}", pathCondition.ToString(), notPathCondition.ToString());

            foreach (var si in relevant)
                addAssumptions(block, pathCondition, notPathCondition, si);

//            Console.WriteLine("Assuming path condition [{0}] {1}", pathCondition.ToString(), pathConditionExpression.ToString());
            block.appendStatement(
                new Assume(pathConditionExpression)
                );

            block.appendStatement(new Assert(targetA.expression, targetA.message));
            block.setControlStatement(new Block(block));
            result.setStartNode(block.label);
            result.setEndNode(block.label);

            return result;
        }

        ////////////////////////////////////////////////////////////////////////////////////////////////
        private static void addAssumptions(BasicBlock block, PropositionalFormula pathCondition,
                                           PropositionalFormula notPathCondition, StatementId si)
        {
            Debug.Assert((pathCondition & notPathCondition).isFalse);
            Debug.Assert((pathCondition | notPathCondition).isTrue);
            PropositionalFormula statementPathCondition = si.basicBlock.getPreState(0).equalityAnalyzer.pathCondition;
            if ((statementPathCondition & pathCondition).isFalse)
            {
//                Console.WriteLine("Eliminating {0} & {1}", statementPathCondition.ToString(), pathCondition.ToString());
                return;
            }
            if (!(statementPathCondition.isTrue))
            {
                PropositionalFormula simplifiedPathCondition = statementPathCondition | notPathCondition;

                if (simplifiedPathCondition.size() < statementPathCondition.size())
                    statementPathCondition = simplifiedPathCondition;
            }
            var q = new Queue<Expression>();
            q.Enqueue(((PredicateStatement) si.statement).expression);
            while (q.Count > 0)
            {
                Expression e = q.Dequeue();
                var fae = e as FAE;
                if (fae != null && BFunction.isConjunction(fae.function))
                {
                    q.Enqueue(fae.arguments[0]);
                    q.Enqueue(fae.arguments[1]);
                }
                else
                    block.appendStatement(new Assume(makeFlatExpression(si.basicBlock, statementPathCondition, e)));
            }
        }

        ////////////////////////////////////////////////////////////////////////////////////////////////
        public static IEnumerable<StatementId> extractAssertions(CFG<BasicBlock, BasicEdge> cfg)
        {
            return
                (from bb in cfg.nodes from s in bb.statements where s.statement is Assert select s.statementId).ToList();
        }


        ////////////////////////////////////////////////////////////////////////////////////////////////
        private static Expression makeFlatExpression(BasicBlock bb, PropositionalFormula pathCondition, Expression e)
        {
            Expression result;
            if (pathCondition.isTrue)
                result = e;
            else
                result = new BasicFAE(
                    BFunctionTemplate.implication.getInstance(),
                    new ExpressionList(
                        PF2E(bb.getPreState(0).equalityAnalyzer.conditionVariableNames, pathCondition),
                        e
                        )
                    );
            //TODO:handle assume false
            //Debug.Assert(!(result is LiteralExpression));
            return result;
        }

        ////////////////////////////////////////////////////////////////////////////////////////////////
        private static IEnumerable<StatementId> getRelevant(CFG<BasicBlock, BasicEdge> cfg, StatementId target)
        {
            var result = new Dictionary<string, StatementId>();

            var toMark = new Queue<StatementId>();

            foreach (var p in target.predecessors)
                toMark.Enqueue(p.Item2);
            while (toMark.Count > 0)
            {
                StatementId si = toMark.Dequeue();
                if (!result.ContainsKey(si.ToString()))
                {
                    if (si.statement is PredicateStatement)
                        result.Add(si.ToString(), si);
                    foreach (var p in si.predecessors)
                        toMark.Enqueue(p.Item2);
                }
            }
            return result.Values;
        }

        ////////////////////////////////////////////////////////////////////////////////////////////////
        private static Expression PF2E(IDictionary<int, ProgramVariable> conditionVariableNames, PropositionalFormula f)
        {
            if (f.isTrue)
                return new BasicLiteralExpression(BooleanValue.makeBooleanValue(true));
            if (f.isFalse)
                return new BasicLiteralExpression(BooleanValue.makeBooleanValue(false));

            Debug.Assert(f.disjuncts.Count() > 0);
            Expression result = null;
            foreach (var d in f.disjuncts)
                if (result == null)
                    result = D2E(conditionVariableNames, d);
                else
                    result = new BasicFAE(
                        BFunctionTemplate.or.getInstance(),
                        new ExpressionList(
                            result,
                            D2E(conditionVariableNames, d)
                            )
                        );
            return result;
        }

        ////////////////////////////////////////////////////////////////////////////////////////////////
        private static Expression D2E(IDictionary<int, ProgramVariable> conditionVariableNames,
                                      PropositionalFormula.Conjunction d)
        {
            Expression result = null;
            foreach (var c in d.conjuncts)
                if (result == null)
                    result = C2E(conditionVariableNames, c);
                else
                    result = new BasicFAE(
                        BFunctionTemplate.and.getInstance(),
                        new ExpressionList(
                            result,
                            C2E(conditionVariableNames, c)
                            )
                        );
            return result;
        }

        ////////////////////////////////////////////////////////////////////////////////////////////////
        private static Expression C2E(IDictionary<int, ProgramVariable> conditionVariableNames, Tuple<bool, int> c)
        {
            Expression result = new BasicProgramVariableExpression(conditionVariableNames[c.Item2]);
            if (!c.Item1)
                result = new BasicFAE(
                    BFunctionTemplate.not.getInstance(),
                    new ExpressionList(
                        result
                        )
                    );
            return result;
        }
    }
}