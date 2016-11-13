using System.Diagnostics;
using Slicer.Programs.Expressions;
using Slicer.StateSpace;

namespace Slicer.Programs.Statements
{
    public abstract class PredicateStatement : StatementImp, Statement
    {
        ///////////////////////////////////////////////////////////////////
        protected PredicateStatement(Expression expression)
        {
            Debug.Assert(expression != null);
            Debug.Assert(expression.isGround);

            this.expression = expression;
//            this.myPredecessors = new ExpressionList<Predicate>();
            //           this.successors   = new ExpressionList<Predicate>();
            preStates = new StateInformation();
            postStates = new StateInformation();
        }

        ///////////////////////////////////////////////////////////////////////

        ///////////////////////////////////////////////////////////////////////
        public StateInformation preStates { get; private set; }
        public StateInformation postStates { get; private set; }
        public Expression expression { get; set; }

        #region Statement Members

        public abstract override Statement visit(StatementVisitor v);

        ///////////////////////////////////////////////////////////////////
        public override string ToString()
        {
            return statementName() + " " + expression.ToString();
        }

        #endregion

        ///////////////////////////////////////////////////////////////////
        public abstract string statementName();

        ///////////////////////////////////////////////////////////////////
    }
}