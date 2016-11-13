using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Programs.CFG;
using Slicer.Programs.Conditions;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;

namespace Slicer.Analyzers
{
    internal class BranchConditionMerger
    {
        public static void analyze(Procedure procedure)
        {
            Debug.Assert(procedure != null);
            CFG<BasicBlock, BasicEdge> cfg = procedure.cfg;

            var q = new Queue<BasicBlock>();
            var s = new HashSet<string>();

            q.Enqueue(cfg.startNode);
            while (q.Count > 0)
            {
                foreach (var b in q)
                    Debug.Assert(b.label != null);

                BasicBlock bb = q.Dequeue();
                Debug.Assert(bb.getPreState(0).equalityAnalyzer != null);

                {
                    if (bb.getPreState(0).equalityAnalyzer != null &&
                        bb.getPreState(0).equalityAnalyzer.pathCondition.isFalse)
                    {
                        //Console.WriteLine("\tDeleting - False path condition");
                        bb.delete();
                        continue;
                    }
                }

                var cb = bb.getControlStatement() as ConditionalBranch;
                if (cb == null)
                    goto skip;

                if (cb.trueBranch.target == cb.falseBranch.target)
                {
                    bb.setControlStatement(new UnconditionalBranch(cb.trueBranch.source, cb.trueBranch.target));
                    goto skip;
                }

                if (cb.trueBranch.target.getPreState(0).equalityAnalyzer != null &&
                    cb.falseBranch.target.getPreState(0).equalityAnalyzer != null)
                {
                    PropositionalFormula thenCondition =
                        cb.trueBranch.target.getPreState(0).equalityAnalyzer.pathCondition;
                    PropositionalFormula elseCondition =
                        cb.falseBranch.target.getPreState(0).equalityAnalyzer.pathCondition;
                    Debug.Assert(!thenCondition.isFalse || !elseCondition.isFalse);

                    if (thenCondition.isFalse)
                    {
                        bb.setControlStatement(new UnconditionalBranch(cb.falseBranch.source, cb.falseBranch.target));
                        goto skip;
                    }
                    else if (elseCondition.isFalse)
                    {
                        bb.setControlStatement(new UnconditionalBranch(cb.trueBranch.source, cb.trueBranch.target));
                        goto skip;
                    }
                }

                if (bb.predecessors.Count() != 2 || bb.successors.Count() != 2 || bb.getStatements().Count != 1)
                    goto skip;

                BasicBlock pred0 = bb.predecessors.ElementAt(0).source;
                BasicBlock pred1 = bb.predecessors.ElementAt(1).source;
                BasicBlock succ0 = bb.successors.ElementAt(0).target;
                BasicBlock succ1 = bb.successors.ElementAt(1).target;

                if (
                    pred0.getPreState(0).equalityAnalyzer == null
                    || pred1.getPreState(0).equalityAnalyzer == null
                    || succ0.getPreState(0).equalityAnalyzer == null
                    || succ1.getPreState(0).equalityAnalyzer == null
                    )
                    goto skip;

                PropositionalFormula pred0pc = pred0.getPreState(0).equalityAnalyzer.pathCondition;
                PropositionalFormula pred1pc = pred1.getPreState(0).equalityAnalyzer.pathCondition;
                PropositionalFormula succ0pc = succ0.getPreState(0).equalityAnalyzer.pathCondition;
                PropositionalFormula succ1pc = succ1.getPreState(0).equalityAnalyzer.pathCondition;

                Debug.Assert(succ0.label != null);
                Debug.Assert(succ1.label != null);

                if (
                    (pred0pc & succ0pc).isFalse
                    && (pred1pc & succ1pc).isFalse
                    )
                {
                    pred0.setControlStatement(new UnconditionalBranch(pred0, succ1));
                    pred1.setControlStatement(new UnconditionalBranch(pred1, succ0));
                    if (!s.Contains(succ0.label))
                        q.Enqueue(succ0);
                    if (!s.Contains(succ1.label))
                        q.Enqueue(succ1);
                    s.Add(succ0.label);
                    s.Add(succ1.label);
                    continue;
                }
                if (
                    (pred0pc & succ1pc).isFalse
                    && (pred1pc & succ0pc).isFalse
                    )
                {
                    pred0.setControlStatement(new UnconditionalBranch(pred0, succ0));
                    pred1.setControlStatement(new UnconditionalBranch(pred1, succ1));
                    if (!s.Contains(succ0.label))
                        q.Enqueue(succ0);
                    if (!s.Contains(succ1.label))
                        q.Enqueue(succ1);
                    s.Add(succ0.label);
                    s.Add(succ1.label);
                    continue;
                }
                skip:
                foreach (var sc in bb.successors)
                {
                    Debug.Assert(sc.target.label != null);
                    if (!s.Contains(sc.target.label))
                    {
                        q.Enqueue(sc.target);
                        s.Add(sc.target.label);
                    }
                }
            }
        }
    }
}