using System.Collections.Generic;
using System.Diagnostics;
using Slicer.Programs.Expressions.utilities;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Types.Quantification;
using Slicer.StateSpace.Variables;
using Slicer.StateSpace.Variables.Quantification;

namespace Slicer.Programs.Expressions.Basic
{
    internal class BasicProgramVariableExpression : ExpressionC, ProgramVariableExpression
    {
        //////////////////////////////////////////////
        public BasicProgramVariableExpression(ProgramVariable programVariable)
        {
            Debug.Assert(programVariable != null);
            this.programVariable = programVariable;
        }

        public BasicProgramVariableExpression(BasicProgramVariableExpression other)
            : this(other.programVariable)
        {
        }

        public Variable variable
        {
            get { return programVariable; }
        }

        //////////////////////////////////////////////

        #region ProgramVariableExpression Members

        public override Expression visit(ExpressionVisitor v)
        {
            return v.visit(this);
        }

        //////////////////////////////////////////////
        public override IType type
        {
            get { return programVariable.type; }
        }

        //////////////////////////////////////////////
        public string name
        {
            get { return programVariable.name; }
        }

        //////////////////////////////////////////////
        public override string ToString()
        {
            return programVariable.name;
/*            string result = "";
            foreach (var c in programVariable.name)
                result += c;
            return result;*/
        }

        public override string ToStringN(IDictionary<BoundVariable, string> vMap)
        {
            return programVariable.name;
        }
        public override IList<BoundVariable> orderedVariables
        {
            get { return new List<BoundVariable>(); }
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

        //////////////////////////////////////////////
        ////////////////////////////////////////////
        public override Expression substitute(ExpressionSubstitution s)
        {
            return new BasicProgramVariableExpression(this);
        }


        //////////////////////////////////////////////
        public ProgramVariable programVariable { get; private set; }

        #endregion
    }
}