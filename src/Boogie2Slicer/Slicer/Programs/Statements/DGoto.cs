using System;
using System.Collections.Generic;
using Slicer.StateSpace;

namespace Slicer.Programs.Statements
{
    public class DGoto : ControlStatement
    {
        public DGoto(Variable condition, BasicBlock source,BasicBlock thenBlock, BasicBlock elseBlock,bool thenBackEdge,bool elseBackEdge)
            : base()
        {
            addSuccessor(new BasicEdge(source, thenBlock, condition.ToString()      ,thenBackEdge));
            addSuccessor(new BasicEdge(source, elseBlock, "!" + condition.ToString(),elseBackEdge));

            this.condition = condition;
        }

        ///////////////////////////////////////////////////////////////////
        public override void visit(Visitor v)
        {
            v.visit(this);
        }

        public override String ToString()
        {
            return "if " + condition + " then goto " + successors[0].getTarget().getLabel() + " else goto " + successors[1].getTarget().getLabel();
        }

        public BasicEdge getTrueBranch()
        {
            return successors[0];
        }

        public BasicEdge getFalseBranch()
        {
            return successors[1];
        }

        public override Variable getCondition()
        {
            return condition;
        }

        public Variable condition;

    }
}
