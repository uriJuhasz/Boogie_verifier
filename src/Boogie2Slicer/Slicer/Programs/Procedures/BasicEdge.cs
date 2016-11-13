using System.Diagnostics;
using Slicer.Programs.CFG;
using Slicer.Programs.Expressions;
using Slicer.Programs.Expressions.Basic;
using Slicer.StateSpace.Values;

namespace Slicer.Programs.Procedures
{
    public class BasicEdge : CFGEdge<BasicBlock, BasicEdge>
    {
        internal BasicEdge(BasicBlock source, BasicBlock target, Guard guard)
        {
            Debug.Assert(source != null);
            Debug.Assert(target != null);
            Debug.Assert(guard != null);

            this.source = source;
            this.target = target;
            this.guard = guard;
            target.addPredecessor(this);
        }

        public Guard guard { get; internal set; }

        #region CFGEdge<BasicBlock,BasicEdge> Members

        public BasicBlock source { get; private set; }
        public BasicBlock target { get; private set; }

        public void setTarget(BasicBlock target)
        {
            Debug.Assert(target != null);
            this.target.removePredecessor(this);
            this.target = target;
            target.addPredecessor(this);
        }

        #endregion

        public void setSource(BasicBlock source)
        {
            Debug.Assert(source != null);
            this.source = source;
        }

        #region Nested type: Guard

        public class Guard
        {
            public Expression expression; // ProgramVariable variable; //null means no guard - true/false

            public Guard(bool pos)
                : this(new BasicLiteralExpression(BooleanValue.makeBooleanValue(pos)))
            {
            }

            public Guard(Expression e)
            {
                Debug.Assert(e != null);
                expression = e;
//                this.variable = variable; 
//                this.pos      = pos;
            }

            public override string ToString()
            {
                return expression.ToString();
//                return (variable == null) ? (pos?"":"F") : (((pos) ? "" : "!") + variable.name);
            }

            //            public bool pos;
        }

        #endregion
    }
}