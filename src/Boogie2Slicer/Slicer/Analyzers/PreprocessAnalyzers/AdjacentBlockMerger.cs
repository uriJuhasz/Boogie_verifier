using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Programs.CFG;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;

namespace Slicer.Analyzers
{
    internal static class AdjacentBlockMerger
    {
        public static void analyze(Procedure procedure)
        {
            Debug.Assert(procedure != null);
            var cfg = procedure.cfg;
            var todo = new Dictionary<string, BasicBlock>();
            foreach (var bb in cfg.nodes)
                todo.Add(bb.label, bb);

            while (todo.Count > 0)
            {
                var bb = todo.First().Value;
                todo.Remove(bb.label);

                if (bb.successors.Count() != 1 || bb.successors.First().target.predecessors.Count() != 1)
                    continue;

                if (!(bb.getControlStatement() is UnconditionalBranch))
                    continue;

                while (
                    bb.getControlStatement() is UnconditionalBranch
                    && bb.successors.Count() == 1
                    && bb.successors.First().target != bb
                    && bb.successors.First().target.predecessors.Count() == 1
                    )
                {
                    todo.Remove(bb.successors.First().target.label);
                    bb.mergeNextBlock();
                }
            }
        }
    }
}