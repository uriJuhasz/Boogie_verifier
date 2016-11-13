using System.Collections.Generic;
using Slicer.Programs.Expressions.utilities;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Types.Quantification;
using Slicer.StateSpace.Values;
using Slicer.StateSpace.Variables.Quantification;

namespace Slicer.Programs.Expressions.Basic
{
    public class BasicLiteralExpression : ExpressionC, LiteralExpression
    {
        //////////////////////////////////////////////
        public BasicLiteralExpression(Value value)
        {
            this.value = value;
        }

        //////////////////////////////////////////////
        public BasicLiteralExpression(BasicLiteralExpression other)
            : this(other.value)
        {
        }

        //////////////////////////////////////////////

        #region LiteralExpression Members

        public override Expression visit(ExpressionVisitor v)
        {
            return v.visit(this);
        }

        //////////////////////////////////////////////
        public override IList<Expression> subExpressions
        {
            get { return new List<Expression>(); }
        }

        //////////////////////////////////////////////
        public override bool isGround
        {
            get { return true; }
        }

        //////////////////////////////////////////////
        public override ISet<BoundVariable> freeVariables
        {
            get { return new HashSet<BoundVariable>(); }
        }

        //////////////////////////////////////////////
        public override ISet<TypeVariable> freeTypeVariables
        {
            get { return new HashSet<TypeVariable>(); }
        }

        ////////////////////////////////////////////
        public override Expression substitute(ExpressionSubstitution s)
        {
            return new BasicLiteralExpression(this);
        }

        //////////////////////////////////////////////
        //////////////////////////////////////////////
        public override IType type
        {
            get { return value.type; }
        }

        public string name
        {
            get { return value.ToString(); }
        }

        public override string ToString()
        {
            return value.ToString();
        }

        public override string ToStringN(IDictionary<BoundVariable, string> vMap)
        {
            return value.ToString();
        }
        public override IList<BoundVariable> orderedVariables
        {
            get { return new List<BoundVariable>(); }
        }

        public Value value { get; private set; }

        #endregion
    }
}