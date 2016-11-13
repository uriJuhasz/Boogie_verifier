using System.Diagnostics;
using System.Linq;
using Slicer.Programs.Expressions;
using Slicer.StateSpace.Variables.Quantification;

namespace Slicer.StateSpace.Functions
{
    public class FunctionBody
    {
        public readonly BoundVariable[] arguments;

        public FunctionBody(BoundVariable[] arguments, Expression expression)
        {
            foreach (var fv in expression.freeVariables)
                Debug.Assert(arguments.Contains(fv));

            this.arguments = arguments;
            this.expression = expression;
        }

        public Expression expression { get; set; }
    }
}