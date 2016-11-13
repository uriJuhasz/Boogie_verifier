using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Programs.Expressions;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;
using Slicer.StateSpace.Functions.Basic;
using Slicer.StateSpace.Variables;

namespace Slicer.Analyzers
{
    internal class BranchConditionAssignmentConsolidator
    {
        public static void consolidate(Procedure procedure)
        {
            var blockMap = new Dictionary<string, BlockEntry>();

            var blockUnfinishedSuccessors = new Dictionary<string, int>();

            foreach (var bb in procedure.cfg.nodes)
                blockUnfinishedSuccessors.Add(bb.label, bb.successors.Count());

            var q = new Queue<BasicBlock>();

            q.Enqueue(procedure.cfg.endNode);

            while (q.Count > 0)
            {
                BasicBlock bb = q.Dequeue();

                blockMap.Add(bb.label, new BlockEntry(bb, from s in bb.successors select blockMap[s.target.label]));

                foreach (var p in bb.predecessors)
                {
                    blockUnfinishedSuccessors[p.source.label]--;
                    if (blockUnfinishedSuccessors[p.source.label] == 0)
                        q.Enqueue(p.source);
                }
            }

            {
                foreach (
                    var v in blockMap[procedure.cfg.startNode.label].variableMap.Values)
                {
                    if (v.assignments.Count > 1)
                    {
                        {
                            Expression a = v.assignments.First().value;
                            foreach (var aa in v.assignments)
                                Debug.Assert((aa.value == null && a == null) || aa.value.ToString() == a.ToString());
                        }

                        if (v.assignments.First().statementId != null)
                        {
                            var na =
                                new Assume(
                                    (v.assignments.First().statementId.statement as Assume).expression.substitute(
                                        new ExpressionSubstitution()));
                            foreach (var a in v.assignments)
                                a.statementId.delete();

                            v.definition.appendStatement(na);
                        }
                    }
                }
            }
        }

        #region Nested type: BlockEntry

        private class BlockEntry
        {
            public readonly Dictionary<ProgramVariable, ConditionVariableEntry> variableMap =
                new Dictionary<ProgramVariable, ConditionVariableEntry>();

            private BasicBlock bb;

            public BlockEntry(BasicBlock bb, IEnumerable<BlockEntry> successors)
            {
                this.bb = bb;

                var variables = new HashSet<ProgramVariable>();
                foreach (var s in successors)
                    variables.UnionWith(s.variableMap.Keys);

                foreach (var v in variables)
                    variableMap.Add(v,
                                    new ConditionVariableEntry(bb, v,
                                                               from s in successors
                                                               select
                                                                   (s.variableMap.ContainsKey(v)
                                                                        ? s.variableMap[v]
                                                                        : null)));

                var cb = bb.getControlStatement() as ConditionalBranch;

                if (cb != null)
                {
                    ProgramVariable cv = cb.condition;
                    Assignment assignment = null;
                    if (bb.statements.Count > 1)
                        assignment = getAssignment(cv, bb.statements[bb.statements.Count - 2].statementId);
                    else
                        assignment = new Assignment(bb, cv);

                    if (variableMap.ContainsKey(cv))
                    {
                        variableMap[cv].add(assignment);
                    }
                    else
                    {
                        variableMap.Add(cv, new ConditionVariableEntry(assignment));
                    }
                }
            }


            private Assignment getAssignment(ProgramVariable v, StatementId statementId)
            {
                StatementId si = statementId;
                var assume = statementId.statement as Assume;

                if (assume == null)
                    si = null;
                else
                {
                    var fae = assume.expression as FAE;

                    if (fae == null || !BFunction.isEquality(fae.function))
                    {
                        si = null;
                    }
                    else
                    {
                        var dest = fae.arguments[0] as ProgramVariableExpression;
                        if (dest == null || (dest.programVariable != v))
                            si = null;
                    }
                }

                if (si == null)
                    return new Assignment(statementId.basicBlock, v);
                else
                    return new Assignment(si);
            }

            #region Nested type: Assignment

            public class Assignment
            {
                public Assignment(StatementId statementId)
                {
                    this.statementId = statementId;
                    Debug.Assert(statementId.statement is Assume);
                    Debug.Assert((statementId.statement as Assume).expression is FAE);
                    Debug.Assert(
                        BFunction.isEquality(
                            ((statementId.statement as Assume).expression as FAE).function));
                    Debug.Assert(
                        (((statementId.statement as Assume).expression as FAE).arguments[0] is
                         ProgramVariableExpression));

                    variable =
                        (((statementId.statement as Assume).expression as FAE).arguments[0] as
                         ProgramVariableExpression).programVariable;
                    value = ((statementId.statement as Assume).expression as FAE).arguments[1];
                    basicBlock = statementId.basicBlock;
                }

                public Assignment(BasicBlock bb, ProgramVariable v)
                {
                    variable = v;
                    statementId = null;
                    basicBlock = bb;
                }

                public StatementId statementId { get; private set; }

                public ProgramVariable variable { get; private set; }
                public BasicBlock basicBlock { get; private set; }

                public Expression value { get; private set; }
            }

            #endregion

            #region Nested type: ConditionVariableEntry

            public class ConditionVariableEntry
            {
                public readonly HashSet<Assignment> assignments = new HashSet<Assignment>();
                private readonly ProgramVariable v;

                public BasicBlock definition;

                public ConditionVariableEntry(BasicBlock bb, ProgramVariable v,
                                              IEnumerable<ConditionVariableEntry> successors)
                {
                    // TODO: Complete member initialization
                    Debug.Assert(bb != null);
                    Debug.Assert(v != null);
                    Debug.Assert(successors != null);
                    Debug.Assert(successors.Count() > 0);

                    this.v = v;

                    foreach (var s in successors)
                        if (s != null)
                            assignments.UnionWith(s.assignments);

                    definition = null;
                    foreach (var s in successors)
                        if (s != null)
                        {
                            if (definition == null)
                                definition = s.definition;
                            else if (definition != s.definition)
                            {
                                definition = bb;
                                break;
                            }
                        }
                    {
                        Assignment e = assignments.First();
                        foreach (var a in assignments)
                        {
                            Debug.Assert(a.variable == v);

                            Debug.Assert((e.value == null && a.value == null) ||
                                         e.value.ToString() == a.value.ToString());
                        }
                    }
                }

                public ConditionVariableEntry(Assignment assignment)
                {
                    v = assignment.variable;
                    assignments.Add(assignment);
                    definition = assignment.basicBlock;
                }

                internal void add(Assignment assignment)
                {
                    Debug.Assert(v == assignment.variable);
                    assignments.Add(assignment);
                    definition = assignment.basicBlock;
                }
            }

            #endregion
        }

        #endregion
    }
}