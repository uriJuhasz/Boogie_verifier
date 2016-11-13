using System.Collections.Generic;
using Slicer.Programs.Expressions.utilities;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Types.Quantification;
using Slicer.StateSpace.Variables.Quantification;

namespace Slicer.Programs.Expressions
{
    public interface Expression
    {
        IType type { get; }

        bool isGround { get; }
        ISet<BoundVariable> freeVariables { get; }
        IList<BoundVariable> orderedVariables { get; }
        ISet<TypeVariable> freeTypeVariables { get; }

        IList<Expression> subExpressions { get; }
        Expression visit(ExpressionVisitor v);
        Expression substitute(ExpressionSubstitution s);

        string ToStringN();
        string ToStringN(IDictionary<BoundVariable,string> vMap);
    }

    public abstract class ExpressionC : Expression
    {
        public abstract IType type { get; }

        public abstract bool isGround { get; }
        public abstract ISet<BoundVariable> freeVariables { get; }
        public abstract IList<BoundVariable> orderedVariables { get; }
        public abstract ISet<TypeVariable> freeTypeVariables { get; }

        public abstract IList<Expression> subExpressions { get; }
        public abstract Expression visit(ExpressionVisitor v);
        public abstract Expression substitute(ExpressionSubstitution s);

        public string ToStringN()
        {
            return ToStringN(makeVarMap());
        }
        private IDictionary<BoundVariable,string> makeVarMap()
        {
            var index = 0;
            var result = new Dictionary<BoundVariable, string>();
            foreach (var fv in orderedVariables)
            {
                result[fv] = "v_" + index.ToString();
                index++;
            }
            return result;
        }
        public abstract string ToStringN(IDictionary<BoundVariable, string> vMap);
    }
}