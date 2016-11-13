using System.Collections.Generic;
using System.Diagnostics;
using Slicer.Programs.Expressions;
using Slicer.Programs.Expressions.Basic;
using Slicer.Programs.Expressions.utilities;
using Slicer.Programs.Procedures;
using Slicer.StateSpace.Functions.Basic;
using Slicer.StateSpace.Values;
using Slicer.StateSpace.Variables;

namespace Slicer.Programs.Statements
{
    public class ConditionalBranch : ControlStatement
    {
        ///////////////////////////////////////////////////////////////////
        public BasicEdge falseBranch;
        private ProgramVariable myCondition;
        public BasicEdge trueBranch;

        public ConditionalBranch(BasicBlock source, ProgramVariable condition, BasicBlock trueTarget,
                                 BasicBlock falseTarget)
        {
            Debug.Assert(source != null);
            Debug.Assert(trueTarget != null);
            Debug.Assert(falseTarget != null);
            Debug.Assert(condition != null);

            trueBranch = new BasicEdge(source, trueTarget,
                                       new BasicEdge.Guard(new BasicProgramVariableExpression(condition)));
            falseBranch = new BasicEdge(source, falseTarget,
                                        new BasicEdge.Guard(makeNegation(new BasicProgramVariableExpression(condition))));
            this.condition = condition;
        }

        public ProgramVariable condition
        {
            get { return myCondition; }
            set
            {
                myCondition = value;
                trueBranch.guard.expression = new BasicProgramVariableExpression(value);
                falseBranch.guard.expression = makeNegation(new BasicProgramVariableExpression(value));
            }
        }

        ///////////////////////////////////////////////////////////////////
        public BasicEdge[] targets
        {
            get { return new BasicEdge[2] {trueBranch, falseBranch}; }
        }

        ///////////////////////////////////////////////////////////////////
        public override List<BasicEdge> successors
        {
            get
            {
                var result = new List<BasicEdge>();
                foreach (var e in targets)
                    result.Add(e);
                return result;
            }
        }

        public Expression makeNegation(Expression expression)
        {
            var fae = expression as FAE;
            if (fae != null && BFunction.isNegation(fae.function))
                return fae.arguments[0];
            else
            {
                var le = expression as LiteralExpression;
                if (le != null)
                    return new BasicLiteralExpression((le.value as BooleanValue).getNegation());
                else
                    return new BasicFAE(BFunction.not, new ExpressionList(expression));
            }
        }

        ///////////////////////////////////////////////////////////////////
        public override Statement visit(StatementVisitor v)
        {
            return v.visit(this);
        }

        ///////////////////////////////////////////////////////////////////
        public override string ToString()
        {
            return "If (" + condition.name + ") goto " + trueBranch.target.label + " else goto " +
                   falseBranch.target.label;
        }
    }
}