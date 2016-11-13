using System;
using System.Collections.Generic;
using System.Diagnostics;
using Microsoft.Boogie;
using Slicer.Programs;
using Slicer.Programs.CFG;
using Slicer.Programs.Expressions;
using Slicer.Programs.Expressions.Basic;
using Slicer.Programs.Expressions.utilities;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;
using Slicer.StateSpace.Functions.Basic;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Types.Utilities;
using Slicer.StateSpace.Variables;
using Assert = Slicer.Programs.Statements.Boogie.Assert;
using Block = Microsoft.Boogie.Block;
using MapType = Slicer.StateSpace.Types.MapType;
using Procedure = Slicer.Programs.Procedures.Procedure;
using Program = Microsoft.Boogie.Program;
using Type = Microsoft.Boogie.Type;
using Variable = Microsoft.Boogie.Variable;
using System.Linq;
namespace Slicer.Transformations
{
    internal class StructuredProgramToCFG
    {
        /////////////////////////////////////////////////////////////////////////////////////

        /////////////////////////////////////////////////////////////////////////////////////
        private readonly HashSet<ProgramVariable> nondeterministicConditionVariables = new HashSet<ProgramVariable>();
        private readonly Procedure procedure;
        private readonly Scope scope;
        private CFG<BasicBlock, BasicEdge> cfg;
        private BasicBlock entry, exit;
        private int labelIndex;

        private StructuredProgramToCFG(Procedure procedure)
        {
            this.procedure = procedure;
            scope = procedure;
        }

        public static CFG<BasicBlock, BasicEdge> makeCFGFromDAG(
            Implementation implementation,
            Program program,
            Procedure procedure
            )
        {
            var sptc = new StructuredProgramToCFG(procedure);
            return sptc.getCFGFromDAG(implementation, program);
        }


        /////////////////////////////////////////////////////////////////////////////////////
        IList<Block> topoSort(IEnumerable<Block> blocks, Block initial)
        {
            var result = new List<Block>();
            var blockPredsMissing = new Dictionary<string, int>();
            foreach (var b in blocks)
                blockPredsMissing[b.Label] = 0;
            foreach (var b in blocks)
                if (b.TransferCmd is GotoCmd)
                    foreach (var sb in (b.TransferCmd as GotoCmd).labelTargets)
                        blockPredsMissing[sb.Label]++;

            var todo = new Queue<Block>();
            var done = new HashSet<string>();
            todo.Enqueue(initial);
            while (todo.Count>0)
            {
                var b = todo.Dequeue();
                Debug.Assert(!done.Contains(b.Label));
                result.Add(b);
                var gotoCmd = b.TransferCmd as GotoCmd;
                if (gotoCmd!=null)
                    foreach (var sb in gotoCmd.labelTargets)
                    {
                        Debug.Assert(!done.Contains(sb.Label));
                        Debug.Assert(!todo.Contains(sb));
                        blockPredsMissing[sb.Label]--;
                        Debug.Assert(blockPredsMissing[sb.Label] >= 0);
                        if (blockPredsMissing[sb.Label] == 0)
                        {
                            blockPredsMissing.Remove(sb.Label);
                            todo.Enqueue(sb);
                        }
                    }
                done.Add(b.Label);
            }
            return result;
        }
        public CFG<BasicBlock, BasicEdge> getCFGFromDAG(Implementation imp, Program program)
        {
//            Console.WriteLine("getCFGFromDAG");
            cfg = new CFG<BasicBlock, BasicEdge>();
            entry = cfg.addNode("$start");
            exit = cfg.addNode("$exit");
            labelIndex = 0;

//            Console.WriteLine("\t\t\tDeclarations");
            foreach (var tld in program.TopLevelDeclarations)
            {
                var a = tld as Axiom;
                if (a != null)
                {
//                    Console.WriteLine("\t\tAdding axiom {0}",a.Expr.ToString());
                    var assume = new Assume(procedure.expressionFactory.makeExpression(a.Expr));
                    entry.appendStatement(assume);
                }else
                {
                    var bf = tld as Function;
                    if (bf!=null && bf.Body!=null)
                    {
                        var ft = scope.findFunctionTemplate(bf.Name);
                        var b = ft.body;
                        Debug.Assert(b != null);

                        var eqF = BFunctionTemplate.eq.getInstance(TypeTuple.make(new[] { ft.signature.resultType }));
                        var lhs = new BasicFAE(ft.getInstance(TypeTuple.make(from tv in ft.typeParameters select new VariableType(tv))), new ExpressionList(from bv in b.arguments select new BasicBoundVariableExpression(bv)));
                        var eqe = new BasicFAE(eqF, new ExpressionList(lhs, b.expression));
                        var axiom = procedure.expressionFactory.makeSentence(eqe);
                        var assume = new Assume(axiom);
                        entry.appendStatement(assume);
                    }
                }
            }

//            Console.WriteLine("\t\t\tBlocks");
//            var topoSortedBlocks
            foreach (var b in topoSort(imp.Blocks, imp.Blocks[0]))
                addBlock(b);
            BasicBlock start = cfg.lookupOrAddNode(imp.Blocks[0].Label);

            entry.setControlStatement(new UnconditionalBranch(entry, start));
            exit.setControlStatement(new Programs.Statements.Block(exit));

            cfg.setStartNode("$start");
            cfg.setEndNode("$exit");

            foreach (var bb in cfg.nodes)
                if (!ReferenceEquals(bb, exit) && bb.successors.Count == 0)
                    bb.setControlStatement(new UnconditionalBranch(bb, exit));

            foreach (var bb in cfg.nodes)
                if (!ReferenceEquals(bb, entry) && bb.predecessors.Count == 0)
                {
                    Console.WriteLine("Warning - removing orphan - {0}", bb.label);
                    bb.setControlStatement(new Programs.Statements.Block(bb));
                    bb.delete();
                }

            return cfg;
        }

        /////////////////////////////////////////////////////////////////////////////////////
        private BasicBlock addBigBlocks(StmtList sl, BasicBlock next)
        {
            BasicBlock first = null;
            for (int i = 0; i < sl.BigBlocks.Count; i++)
            {
                BasicBlock cnext = (i + 1 == sl.BigBlocks.Count)
                                       ? next
                                       : cfg.lookupOrAddNode(sl.BigBlocks[i + 1].LabelName);
                BasicBlock current = addBigBlock(sl.BigBlocks[i], cnext);
                if (first == null)
                    first = current;
            }
            return first;
        }

        /////////////////////////////////////////////////////////////////////////////////////
        private BasicBlock addBigBlock(BigBlock bb, BasicBlock next)
        {
            var current = cfg.addNode(bb.LabelName);

//            System.Console.Out.WriteLine("Adding block: \"" + basicBlock.LabelName + "\"");

            addStatementsToBasicBlock(current, bb.simpleCmds);

            setControlStatement(current, bb, next);
            Debug.Assert(current.getControlStatement() != null);
            return current;
        }

        /////////////////////////////////////////////////////////////////////////////////////
        private BasicBlock addBlock(Block b)
        {
//            Console.WriteLine("\t\t\t\tAdding block: {0}",b.Label);
            var current = cfg.addNode(b.Label);

            //            System.Console.Out.WriteLine("Adding block: \"" + basicBlock.LabelName + "\"");

            addStatementsToBasicBlock(current, b.Cmds);
            setControlStatement(current, b.TransferCmd, null);
            Debug.Assert(current.getControlStatement() != null);
            return current;
        }

        /////////////////////////////////////////////////////////////////////////////////////
        private void addStatementsToBasicBlock(BasicBlock current, List<Cmd> boogieCommands)
        {
            foreach (Cmd c in boogieCommands)
                addStatementToBasicBlock(current, c);
        }

        /////////////////////////////////////////////////////////////////////////////////////
        private void addStatementToBasicBlock(BasicBlock current, Cmd c)
        {
//            Console.WriteLine("\t\tAdding statement: {0}", c.ToString());

            if (c is CommentCmd)
                return;
            else if (c is PredicateCmd)
                addPredicate(current, (PredicateCmd) c);

            else if (c is StateCmd)
                addLet(current, (StateCmd) c);

            else
                throw new Exception("Unimplemented Boogie2 statement:\"" + c + "\"");
        }

        /////////////////////////////////////////////////////////////////////////////////////
        private void addLet(BasicBlock current, StateCmd stateCmd)
        {
            foreach (Variable v in stateCmd.Locals)
                if (scope.findVariable(scope.getVarUName(v)) == null)
                    procedure.addVariable(new ProgramVariable(procedure.getVarUName(v), makeType(v.TypedIdent.Type), false, false, false,
                                                              false));
            foreach (Cmd c in stateCmd.Cmds)
                addStatementToBasicBlock(current, c);
        }

        /////////////////////////////////////////////////////////////////////////////////////
        private void addPredicate(BasicBlock current, PredicateCmd predicateCmd)
        {
//            ExpressionFactory file = new ExpressionFactory(procedure);
            Expression e = procedure.expressionFactory.makeExpression(predicateCmd.Expr);

            PredicateStatement p;
            if (predicateCmd is AssumeCmd)
                p = new Programs.Statements.Boogie.Assume((AssumeCmd) predicateCmd, e);
            else
            {
                var ac = predicateCmd as AssertCmd;
                string em = ac.ErrorMessage;
                if (em == null)
                    em = "";
                p = new Assert(ac, e, em);
            }

            current.appendStatement(p);
        }

        /////////////////////////////////////////////////////////////////////////////////////
        private IType makeType(Type type)
        {
//            TypeFactory tf = new TypeFactory(procedure);
            return procedure.typeFactory.makeTypeI(type, new TypeFactory.Context());
        }

        /////////////////////////////////////////////////////////////////////////////////////
        private ProgramVariable getAssignmentTarget(BasicBlock current, AssignLhs target)
        {
            return scope.findVariable(scope.getVarUName(target.DeepAssignedVariable));
        }

        /////////////////////////////////////////////////////////////////////////////////////
        private Expression getAssignmentSourceExpression(AssignLhs target, Expression source)
        {
            if (target is SimpleAssignLhs)
                return getAssignmentSourceExpression((SimpleAssignLhs) target, source);
            else if (target is MapAssignLhs)
                return getAssignmentSourceExpression((MapAssignLhs) target, source);
            else
                throw new NotImplementedException();
        }

        /////////////////////////////////////////////////////////////////////////////////////
        private Expression getAssignmentSourceExpression(SimpleAssignLhs target, Expression source)
        {
            return source;
        }

        //m[m][b] := c;
        //m:A b:B c:C
        // type(m) = [A] ([B]C) 
        // ==>               m [m :=                       m[m] [b:=c]]
        // ==> MU<[A]([B]C)>(m, m ,MU<[B]C>( ML<[A]([B]C)>(m,m), b, c )

        //m[m] := b
        // ==> m := m[m:=b]
        // ==> m := MU<[A]B>(m,m,b)

        /////////////////////////////////////////////////////////////////////////////////////
        private Expression getAssignmentSourceExpression(MapAssignLhs target, Expression source)
        {
            var arguments = new List<Expression>();

            arguments.Add(procedure.expressionFactory.makeExpression(target.Map.AsExpr));

            foreach (var e in target.Indexes)
                arguments.Add(procedure.expressionFactory.makeExpression(e));

            arguments.Add(source);

            var mt = arguments[0].type as MapType;
            Debug.Assert(mt != null);

            var argumentTypes = new IType[arguments.Count];
            for (int i = 0; i < arguments.Count; i++)
                argumentTypes[i] = arguments[i].type;

            IType resultType = arguments[0].type;

            var typeArguments = new IType[target.TypeParameters.FormalTypeParams.Count];
            for (int i = 0; i < typeArguments.Length; i++)
                typeArguments[i] = makeType(target.TypeParameters[target.TypeParameters.FormalTypeParams[i]]);

            Expression recSource = new BasicFAE(
                BasicMapWrite.makeMapWrite(typeArguments, argumentTypes, resultType), new ExpressionList(arguments)
                );

            return getAssignmentSourceExpression(target.Map, recSource);
        }

        /////////////////////////////////////////////////////////////////////////////////////
        private void setControlStatement(BasicBlock current, BigBlock bb, BasicBlock next)
        {
            Debug.Assert(bb.tc == null || bb.ec == null);
            if (bb.tc != null)
                setControlStatement(current, bb.tc, next);
            else if (bb.ec != null)
                setControlStatement(current, bb.ec, next);
            else
                current.setControlStatement(new UnconditionalBranch(current, next));
            Debug.Assert(current.getControlStatement() != null);
        }

        /////////////////////////////////////////////////////////////////////////////////////
        private void setControlStatement(BasicBlock current, StructuredCmd structuredCmd, BasicBlock next)
        {
            if (structuredCmd is IfCmd)
                setControlStatement(current, (IfCmd) structuredCmd, next);
            else if ((structuredCmd is BreakCmd))
                setControlStatement(current, (BreakCmd) structuredCmd, next);
            else
                throw new Exception("Unsupported Boogie Control Command:" + structuredCmd);
        }

        /////////////////////////////////////////////////////////////////////////////////////
        private void setControlStatement(BasicBlock current, BreakCmd breakCmd, BasicBlock next)
        {
            Debug.Assert(breakCmd.BreakEnclosure != null);

            string breakTargetLabel = null;
            if (breakCmd.BreakEnclosure.successorBigBlock != null)
                breakTargetLabel = breakCmd.BreakEnclosure.successorBigBlock.LabelName;
            else
                breakTargetLabel = "$exit";

            current.setControlStatement(new UnconditionalBranch(current, cfg.lookupOrAddNode(breakTargetLabel)));
        }

        /////////////////////////////////////////////////////////////////////////////////////
        public const string pathConditionPrefix = "$@condition";

        private IDictionary<string, ProgramVariable> pathConditionMap = new Dictionary<string, ProgramVariable>();
        private void setControlStatement(BasicBlock current, IfCmd ifCmd, BasicBlock next)
        {
//            ExpressionFactory file = new ExpressionFactory(procedure);

            BasicBlock trueBranch = cfg.addNode("$trueBranch_" + labelIndex.ToString());
            BasicBlock falseBranch = cfg.addNode("$falseBranch_" + labelIndex.ToString());
            BasicBlock join = cfg.addNode("$join_" + labelIndex.ToString());
            labelIndex++;


            join.setControlStatement(new UnconditionalBranch(join, next));

            ProgramVariable ndcondition;
            if (ifCmd.Guard != null)
            {
                Expression conditionExpression = procedure.expressionFactory.makeExpression(ifCmd.Guard);
                if (!pathConditionMap.TryGetValue(conditionExpression.ToStringN(), out ndcondition))
                {
                    ndcondition = scope.makeFreshProgramVariable(pathConditionPrefix, makeBooleanType());
                    pathConditionMap[conditionExpression.ToStringN()] = ndcondition;
                }
                current.appendStatement(
                    new Assume(
                        new BasicFAE(
                            BFunction.equivalence,
                            new ExpressionList(
                                new BasicProgramVariableExpression(ndcondition),
                                conditionExpression
                                )
                            )
                        )
                    );
            }
            else
            {
                ndcondition = scope.makeFreshProgramVariable(pathConditionPrefix, makeBooleanType());
                nondeterministicConditionVariables.Add(ndcondition);
            }

//            nondeterministicConditionVariables.Add(ndcondition);

            current.setControlStatement(new ConditionalBranch(current, ndcondition, trueBranch, falseBranch));


            bool hasTrueBranch = ifCmd.thn != null && ifCmd.thn.BigBlocks != null && ifCmd.thn.BigBlocks.Count > 0;

            if (hasTrueBranch)
            {
                BasicBlock thenBranch = addBigBlocks(ifCmd.thn, join);
                trueBranch.setControlStatement(new UnconditionalBranch(trueBranch, thenBranch));
            }
            else
                trueBranch.setControlStatement(new UnconditionalBranch(trueBranch, join));

            Debug.Assert(ifCmd.elseBlock == null || ifCmd.elseIf == null);
            if (ifCmd.elseBlock != null)
            {
                BasicBlock elseBranch = addBigBlocks(ifCmd.elseBlock, join);
                falseBranch.setControlStatement(new UnconditionalBranch(falseBranch, elseBranch));
            }
            else if (ifCmd.elseIf != null)
                setControlStatement(falseBranch, ifCmd.elseIf, next);
            else
                falseBranch.setControlStatement(new UnconditionalBranch(falseBranch, join));
        }

        /////////////////////////////////////////////////////////////////////////////////////
        private void setControlStatement(BasicBlock current, TransferCmd transferCmd, BasicBlock next)
        {
            if (transferCmd is ReturnCmd)
                setControlStatement(current, (ReturnCmd) transferCmd, next);
            else if (transferCmd is GotoCmd)
                setControlStatement(current, (GotoCmd) transferCmd, next);
            else
                throw new Exception("Unsupported Boogie Transfer Command:" + transferCmd);
        }

        /////////////////////////////////////////////////////////////////////////////////////
        private void setControlStatement(BasicBlock current, ReturnCmd returnCmd, BasicBlock next)
        {
            if (returnCmd is ReturnExprCmd)
            {
                //TODO: Do we support return expressions?
//                Microsoft.Boogie.Expr boogieReturnValue = ((Microsoft.Boogie.ReturnExprCmd)returnCmd).Expr;
//                Expression return 
            }

            current.setControlStatement(new UnconditionalBranch(current, exit));
        }

        /////////////////////////////////////////////////////////////////////////////////////
        private void setControlStatement(BasicBlock current, GotoCmd gotoCmd, BasicBlock next)
        {
            if (gotoCmd.labelNames.Count == 0)
                current.setControlStatement(new Programs.Statements.Block(current));
            else if (gotoCmd.labelNames.Count == 1)
            {
                BasicBlock target = cfg.lookupOrAddNode(gotoCmd.labelNames[0]);
                current.setControlStatement(new UnconditionalBranch(current, target));
            }
            else
            {
                var conditionVariables = new List<ProgramVariable>();
                while ((1 << conditionVariables.Count) < gotoCmd.labelNames.Count)
                {
                    ProgramVariable nd = scope.makeFreshProgramVariable(pathConditionPrefix, makeBooleanType());
                    conditionVariables.Add(nd);
                    nondeterministicConditionVariables.Add(nd);
                }

                string basicLabel = "$cascade_" + labelIndex.ToString();
                labelIndex++;

                int currentTarget = 0;

                for (int i = 0; (1 << i) <= gotoCmd.labelNames.Count; i++)
                    for (int j = 0; (j < (1 << i)) && ((1 << i) + j < gotoCmd.labelNames.Count); j += 2)
                    {
                        int index = (1 << i) + j;
                        string label = basicLabel + "_$" + i.ToString() + "_$" + j.ToString();
                        BasicBlock block = (i == 0) ? current : cfg.lookupOrAddNode(label);

                        string targetLabel1 =
                            (index*2 < gotoCmd.labelNames.Count)
                                ? basicLabel + "_$" + (i + 1).ToString() + "_$" + (j*2).ToString()
                                : gotoCmd.labelNames[currentTarget++];

                        string targetLabel2 =
                            (index*2 + 1 < gotoCmd.labelNames.Count)
                                ? basicLabel + "_$" + (i + 1).ToString() + "_$" + (j*2 + 1).ToString()
                                : (
                                      (currentTarget < gotoCmd.labelNames.Count)
                                          ? gotoCmd.labelNames[currentTarget++]
                                          : null
                                  );

                        BasicBlock target1 = cfg.lookupOrAddNode(targetLabel1);
                        BasicBlock target2 = (targetLabel2 == null) ? null : cfg.lookupOrAddNode(targetLabel2);

                        if (target2 != null)
                            block.setControlStatement(new ConditionalBranch(block, conditionVariables[i], target1,
                                                                            target2));
                        else
                            block.setControlStatement(new UnconditionalBranch(block, target1));
                    }
            }
        }

        private BooleanType makeBooleanType()
        {
            return BooleanType.booleanType;
        }

        private IntegerType makeIntegerType()
        {
            return IntegerType.integerType;
        }

        /////////////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////////////
    }
}