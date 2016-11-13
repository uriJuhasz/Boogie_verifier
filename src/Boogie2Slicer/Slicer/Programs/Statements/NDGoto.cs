using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Diagnostics;
using Slicer.StateSpace;

namespace Slicer.Programs.Statements
{
    public class NDGoto : ControlStatement
    {
        //No edges
        public NDGoto(BasicBlock current)
            : this(current, new BasicBlock[] {}, new bool[] {})
        {
        }

        //one edge
        public NDGoto(BasicBlock current, BasicBlock target, bool backEdge)
            : this(current,new BasicBlock[] {target}, new bool[]{backEdge})
        {
        }

        public NDGoto(BasicBlock current, BasicBlock[] targets, bool[] backEdges)
            : base()
        {
            Debug.Assert(targets.Count() == backEdges.Count());
            for (int i=0;i<targets.Count();i++)
                addSuccessor(new BasicEdge(current, targets[i],"",backEdges[i]));

        }

        ///////////////////////////////////////////////////////////////////
        public override void visit(Visitor v)
        {
            v.visit(this);
        }

        public override Variable getCondition()
        {
            return null;
        }

        public override String ToString()
        {
            string result = "goto ";
            foreach (var b in successors)
                result += b.getTarget().getLabel() + " ";
            return result;
        }


    }
}
