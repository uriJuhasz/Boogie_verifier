using System.Collections.Generic;
using Slicer.Programs.Procedures;

namespace Slicer.Programs.Statements
{
    public class Block : ControlStatement
    {
        public Block(BasicBlock source)
        {
        }

        public override List<BasicEdge> successors
        {
            get { return new List<BasicEdge>(); }
        }

        public override Statement visit(StatementVisitor v)
        {
            return v.visit(this);
        }

        ///////////////////////////////////////////////////////////////////
        public override string ToString()
        {
            return "Block";
        }
    }
}