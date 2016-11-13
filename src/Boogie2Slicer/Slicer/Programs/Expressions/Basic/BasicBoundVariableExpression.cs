using System.Collections.Generic;
using System.Diagnostics;
using Slicer.Programs.Expressions.utilities;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Types.Quantification;
using Slicer.StateSpace.Variables;
using Slicer.StateSpace.Variables.Quantification;

namespace Slicer.Programs.Expressions.Basic
{
    internal class BasicBoundVariableExpression : ExpressionC, BoundVariableExpression
    {
        //////////////////////////////////////////////
        public BasicBoundVariableExpression(BoundVariable boundVariable)
        {
            Debug.Assert(boundVariable != null);
            this.boundVariable = boundVariable;
        }

        public Variable variable
        {
            get { return boundVariable; }
        }

        //////////////////////////////////////////////

        #region BoundVariableExpression Members

        public override Expression visit(ExpressionVisitor v)
        {
            return v.visit(this);
        }

        //////////////////////////////////////////////
        public override IType type
        {
            get { return boundVariable.type; }
        }

        //////////////////////////////////////////////
        public string name
        {
            get { return boundVariable.name; }
        }

        //////////////////////////////////////////////
        public override string ToString()
        {
            return boundVariable.name;
        }
        public override string ToStringN(IDictionary<BoundVariable, string> vMap)
        {
            return vMap[boundVariable];
        }
        public override IList<BoundVariable> orderedVariables
        {
            get { return new List<BoundVariable>{boundVariable}; }
        }

        //////////////////////////////////////////////
        public override bool isGround
        {
            get { return false; }
        }

        //////////////////////////////////////////////
        public override IList<Expression> subExpressions
        {
            get { return new Expression[0]; }
        }

        //////////////////////////////////////////////
        public override ISet<BoundVariable> freeVariables
        {
            get
            {
                var result = new HashSet<BoundVariable>();
                result.Add(boundVariable);
                return result;
            }
        }

        //////////////////////////////////////////////
        public override ISet<TypeVariable> freeTypeVariables
        {
            get { return type.freeTypeVariables; }
        }

        ////////////////////////////////////////////
        public override Expression substitute(ExpressionSubstitution s)
        {
            Expression result = s.lookup(name);
            if (result == null)
                result = this;
            return result;
        }

        //////////////////////////////////////////////
        public BoundVariable boundVariable { get; private set; }

        #endregion
    }
}