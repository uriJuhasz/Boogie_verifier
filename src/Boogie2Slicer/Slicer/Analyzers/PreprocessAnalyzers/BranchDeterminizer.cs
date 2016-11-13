using System.Collections.Generic;
using System.Diagnostics;
using Slicer.Analyzers.EqualityAnalyzer;
using Slicer.Programs.CFG;
using Slicer.Programs.Expressions;
using Slicer.Programs.Expressions.Basic;
using Slicer.Programs.Expressions.utilities;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;
using Slicer.StateSpace.Functions.Basic;
using Slicer.StateSpace.Variables;

namespace Slicer.Analyzers
{
    internal class BranchDeterminizer
    {
        public static void analyze(Procedure procedure)
        {
            Debug.Assert(procedure != null);
            CFG<BasicBlock, BasicEdge> cfg = procedure.cfg;

            int mergeIndex = 0;

            var conditionMap = new Dictionary<string, ProgramVariable>();

            var basicBlocks = new List<BasicBlock>(cfg.nodes);

            foreach (var bb in basicBlocks)
            {
                /////////////////////////////////////////////////////////////////////////////////////
                //Determine we have m conditional branch
                var cb = bb.getControlStatement() as ConditionalBranch;
                if (cb == null)
                    continue;

                ProgramVariable cv = cb.condition;

                ////////////////////////////////////////////////////////////
                Expression assumeE = null; //Expression from own assume statement
                getOwnAssume(bb, out assumeE);

                ////////////////////////////////////////////////////////////
                //see if opposite assumes used on both branches
                Expression targetE = null; //fae from target assumes
                getTargetAssumes(bb, cb, out targetE);

/*                ////////////////////////////////////////////////////////////
                var result  = (assumeE != null) ? assumeE  : targetE;
                var en = (assumeE != null) ? assumeNE : targetNE;
                var polarity = (assumeE  != null) ? assumePolarity : targetPolarity;
                */
                ////////////////////////////////////////////////////////////
                List<BasicBlock> friends = getFriends(bb);

                BasicBlock assumeInsertion = bb;
                if (friends.Count > 0)
                {
                    string label = "$branchMerge_" + mergeIndex;
                    mergeIndex++;
                    assumeInsertion = cfg.addNode(label);
                    assumeInsertion.setControlStatement(
                        new ConditionalBranch(
                            assumeInsertion,
                            cv,
                            cb.trueBranch.target,
                            cb.falseBranch.target
                            )
                        );
                }


                if (targetE != null) //append assignment if needed
                {
                    var s =
                        new Assume(
                            new BasicFAE(
                                BFunction.equivalence,
                                new ExpressionList(
                                    new BasicProgramVariableExpression(cv),
                                    targetE.substitute(new ExpressionSubstitution())
                                    )
                                )
                            );
//                    assumeInsertion.appendStatement(s);
                    cb.trueBranch.target.insertStatementAt(0, s);
                    cb.falseBranch.target.insertStatementAt(0, s);
                }

                cb.trueBranch.target.insertStatementAt(0,
                    new Assume(new BasicProgramVariableExpression(cv)));
                cb.falseBranch.target.insertStatementAt(0,
                    new Assume(new BasicFAE(BFunction.not, new ExpressionList(new BasicProgramVariableExpression(cv)))));

                foreach (var f in friends)
                    redirectFriend(f, assumeInsertion);
                if (friends.Count > 0)
                    redirectFriend(bb, assumeInsertion);

                /*
                                if (assumeE != null)
                                {
                                    if (assumePolarity) //reverse polarity of assigned fae
                                    {
                                        (bb.statements[bb.statements.Count - 2].statement as Assume).fae =
                                            new BasicFunctionApplicationExpression(
                                                BasicFunctionTemplate.eq.getInstance(new DataType[2] { BooleanType.booleanType, BooleanType.booleanType }),
                                                new ExpressionList(
                                                    new BasicProgramVariableExpression(cv),
                                                    assumeNE
                                                )
                                            );
                                    }
                                }
                
                 * cb.fae = new BasicProgramVariableExpression(newCondition);
                */


                ////////////////////////////////////////////////////////////////////////////
                //If other branches share the same true/false branches, unify condition variables
/*                foreach (var pe in cb.trueBranch.target.predecessors)
                {
                    var pbb = pe.source;
                    //make sure other predecessor has same true/false branches
                    if (ReferenceEquals(pbb, bb))
                        continue;

                    var pcb = pbb.getControlStatement() as ConditionalBranch;
                    if (pcb == null)
                        continue;

                    var pcv = (pcb.fae as ProgramVariableExpression).programVariable;
                    Debug.Assert(pcv != null);

                    if (ReferenceEquals(pcv, newCondition))
                        continue;
                    
                    //Check polarity of other predecessor and unify condition
                    var ppolarity = true;
                    if (ReferenceEquals(pcb.trueBranch.target, cb.trueBranch.target) && ReferenceEquals(pcb.falseBranch.target, cb.falseBranch.target))
                    {
                        pcb.fae = new BasicProgramVariableExpression(newCondition);
                        ppolarity = true;
                    }
                    else if (ReferenceEquals(pcb.trueBranch.target, cb.falseBranch.target) && ReferenceEquals(pcb.falseBranch.target, cb.trueBranch.target))
                    {
                        pcb.fae = new BasicProgramVariableExpression(newCondition);
                        ppolarity = false;
                    }
                    else
                        continue;

                    //Check if need to fix assigned fae of other predecessor
                    if (pbb.statements.Count > 1)
                    {
                        var pa = pbb.statements[pbb.statements.Count - 2].statement as Assume;
                        if (pa == null)
                            continue;
                        var fae = pa.fae as FunctionApplicationExpression;
                        if (fae == null)
                            continue;
                        if (!BasicFunction.isEquality(fae.function))
                            continue;
                        if (!(fae.arguments[0] is ProgramVariableExpression))
                            continue;
                        if (!ReferenceEquals((fae.arguments[0] as ProgramVariableExpression).programVariable, pcv))
                            continue;
                        //Replace predecessor variable by our variable, fixing polarity if needed
                        if (ppolarity)
                        {
                            pa.fae = new BasicFunctionApplicationExpression(
                                BasicFunctionTemplate.eq.getInstance(new DataType[2] { BooleanType.booleanType, BooleanType.booleanType }),
                                new ExpressionList(
                                    new BasicProgramVariableExpression(newCondition),
                                    fae.arguments[1]
                                )
                            );
                        }
                        else
                        {
                            pa.fae = new BasicFunctionApplicationExpression(
                                BasicFunctionTemplate.eq.getInstance(new DataType[2] { BooleanType.booleanType, BooleanType.booleanType }),
                                new ExpressionList(
                                    new BasicProgramVariableExpression(newCondition),
                                    EqualityDatabase.getCompactNegationIfBoolean(fae.arguments[1])
                                )
                            );
                        }
                    }
                }*/
            }
        }

        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        private static List<BasicBlock> getFriends(BasicBlock bb)
        {
            var result = new List<BasicBlock>();

            var cb = bb.getControlStatement() as ConditionalBranch;

            foreach (var pfe in cb.trueBranch.target.predecessors)
            {
                BasicBlock pf = pfe.source;

                if (ReferenceEquals(pf, bb))
                    continue;

                var fcb = pf.getControlStatement() as ConditionalBranch;
                if (fcb == null)
                    continue;

                if (
                    (ReferenceEquals(fcb.trueBranch.target, cb.trueBranch.target) &&
                     ReferenceEquals(fcb.falseBranch.target, cb.falseBranch.target))
                    ||
                    (ReferenceEquals(fcb.trueBranch.target, cb.falseBranch.target) &&
                     ReferenceEquals(fcb.falseBranch.target, cb.trueBranch.target))
                    )
                    result.Add(pf);
            }
            return result;
        }

        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        private static void redirectFriend(BasicBlock f, BasicBlock assumeInsertion)
        {
            bool polarity = true;

            var fcb = f.getControlStatement() as ConditionalBranch;
            Debug.Assert(fcb != null);

            var icb = assumeInsertion.getControlStatement() as ConditionalBranch;
            Debug.Assert(icb != null);

            ProgramVariable icv = icb.condition;

            Debug.Assert(
                (fcb.trueBranch.target == icb.trueBranch.target && fcb.falseBranch.target == icb.falseBranch.target)
                || (fcb.trueBranch.target == icb.falseBranch.target && fcb.falseBranch.target == icb.trueBranch.target)
                );

            if (fcb.trueBranch.target == icb.trueBranch.target)
                polarity = true;
            else
                polarity = false;

            Expression assumeE;
            getOwnAssume(f, out assumeE);

            if (assumeE != null)
            {
                var assume = f.statements[f.statements.Count - 2].statement as Assume;
                Expression newAssumeE = (polarity) ? assumeE : EqualityDatabase.getCompactNegationIfBoolean(assumeE);
                assume.expression = new BasicFAE(
                    BFunction.equivalence, //eq(BooleanType.booleanType),
                    new ExpressionList(
                        new BasicProgramVariableExpression(icv),
                        newAssumeE
                        )
                    );
            }
            f.setControlStatement(new UnconditionalBranch(f, assumeInsertion));
        }

        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        private static void getTargetAssumes(BasicBlock bb, ConditionalBranch cb, out Expression targetE)
        {
            targetE = null;

            if (targetE == null)
            {
                var ta = cb.trueBranch.target.statements[0].statement as Assume;
                var fa = cb.falseBranch.target.statements[0].statement as Assume;


                if (ta != null && fa != null && isNegation(ta.expression, fa.expression))
                    targetE = ta.expression;
            }
        }

        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        private static bool isNegation(Expression e1, Expression e2)
        {
            var fae1 = e1 as FAE;
            var fae2 = e2 as FAE;
            return
                (fae1 != null && BFunction.isNegation(fae1.function) &&
                 e2.ToString() == fae1.arguments[0].ToString())
                ||
                (fae2 != null && BFunction.isNegation(fae2.function) &&
                 e1.ToString() == fae2.arguments[0].ToString())
                ;
        }

        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        private static void getOwnAssume(BasicBlock bb, out Expression assumeE)
        {
            assumeE = null;

            ProgramVariable cv = (bb.getControlStatement() as ConditionalBranch).condition;

            {
                if (bb.statements.Count > 1)
                {
                    var pa = bb.statements[bb.statements.Count - 2].statement as Assume;
                    if (pa != null)
                    {
                        var fae = pa.expression as FAE;
                        if (fae != null && BFunction.isEquality(fae.function))
                        {
                            var apv = fae.arguments[0] as ProgramVariableExpression;
                            if (apv != null && ReferenceEquals(apv.programVariable, cv))
                                assumeE = fae.arguments[1];
                        }
                    }
                }
            }
        }

        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        private static bool getVariable(Expression e, out ProgramVariable v)
        {
            if (e is ProgramVariableExpression)
            {
                v = (e as ProgramVariableExpression).programVariable;
                return true;
            }
            else
            {
                var fae = e as FAE;
                Debug.Assert(fae != null);
                Debug.Assert(BFunction.isNegation(fae.function));
                v = (fae.arguments[0] as ProgramVariableExpression).programVariable;
                Debug.Assert(v != null);
                return false;
            }
        }
    }
}