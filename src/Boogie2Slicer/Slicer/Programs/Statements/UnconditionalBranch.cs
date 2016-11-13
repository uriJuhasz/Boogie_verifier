using System.Collections.Generic;
using System.Diagnostics;
using Slicer.Programs.Procedures;

namespace Slicer.Programs.Statements
{
    public class UnconditionalBranch : ControlStatement
    {
        public UnconditionalBranch(BasicBlock source, BasicBlock target)
        {
            Debug.Assert(source != null);
            Debug.Assert(target != null);
            successor = new BasicEdge(source, target, new BasicEdge.Guard(true));
        }

        ///////////////////////////////////////////////////////////////////
        public BasicEdge successor { get; private set; }
        ///////////////////////////////////////////////////////////////////
        public override List<BasicEdge> successors
        {
            get { return new List<BasicEdge>(new BasicEdge[1] {successor}); }
        }

        ///////////////////////////////////////////////////////////////////
        public override Statement visit(StatementVisitor v)
        {
            return v.visit(this);
        }

        ///////////////////////////////////////////////////////////////////
        public override string ToString()
        {
            return "goto " + successor.target.label;
        }
    }
}