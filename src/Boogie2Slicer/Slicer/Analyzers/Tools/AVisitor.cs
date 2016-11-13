using System.Linq;
using Slicer.Programs.Expressions;
using Slicer.Programs.Expressions.Basic;
using Slicer.Programs.Expressions.utilities;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;
using Slicer.StateSpace.Functions;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Types.Quantification;
using Slicer.StateSpace.Types.Utilities;
using Slicer.StateSpace.Variables;
using Slicer.StateSpace.Variables.Quantification;

namespace Slicer.Analyzers.Tools
{
    public abstract class AVisitor :
        StatementVisitor,
        ExpressionVisitor,
        TypeVisitor
    {
        ////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////
        public AVisitor(Procedure procedure)
        {
            this.procedure = procedure;
        }

        public Procedure procedure { get; private set; }

        #region ExpressionVisitor Members

        public virtual Expression visit(ProgramVariableExpression e)
        {
            ProgramVariable newV = visitReadProgramVariable(e.programVariable);
            if (!ReferenceEquals(e.programVariable, newV))
                return new BasicProgramVariableExpression(newV);
            else
                return e;
        }

        public virtual Expression visit(BoundVariableExpression v)
        {
            BoundVariable newV = visitBoundVariable(v.boundVariable);
            if (!ReferenceEquals(v.boundVariable, newV))
                return new BasicBoundVariableExpression(newV);
            else
                return v;
        }

        public virtual Expression visit(LiteralExpression e)
        {
            e.type.visit(this);
            return e;
        }

        public virtual Expression visit(FAE f)
        {
            Function newF = visitFunction(f.function);
            ExpressionList newA = f.arguments.visit(this);
            Expression result;
            if (!ReferenceEquals(f.function, newF) || !ReferenceEquals(f.arguments, newA))
                result = new BasicFAE(newF, newA);
            else
                result = f;
            return result;
        }

        public virtual Expression visit(QuantifiedExpression e)
        {
            BoundVariable newV = visitBoundVariable(e.variable);
            Expression newE = e.expression.visit(this);
            var newT = (from trs in e.triggers select trs.visit(this)).ToArray();
            e.type.visit(this);

            Expression result;
            if (!ReferenceEquals(e.variable, newV) || !ReferenceEquals(e.expression, newE) ||
                (e.triggers.Count != newT.Count() || Enumerable.Range(0,e.triggers.Count).Any(i=>!ReferenceEquals(e.triggers[i],newT[i])) ))
                result = new BasicQuantifiedExpression(procedure, e.quantifier, newV, newE, newT, e.attributes);
            else
                result = e;
            return result;
        }

        public virtual Expression visit(QuantifiedTypeExpression e)
        {
            TypeVariable newV = visitTypeVariable(e.variable);
            Expression newE = e.expression.visit(this);
            ExpressionList newT = e.triggers.visit(this);

            Expression result;
            if (!ReferenceEquals(e.variable, newV) || !ReferenceEquals(e.expression, newE) ||
                !ReferenceEquals(e.triggers, newT))
                result = new BasicQuantifiedTypeExpression(e.quantifier, newV, newE, newT, e.attributes);
            else
                result = e;
            return result;
        }

        #endregion

        #region StatementVisitor Members

        public virtual Statement visit(Assert s)
        {
            s.expression = s.expression.visit(this);
            return s;
        }

        public virtual Statement visit(Assume s)
        {
            s.expression = s.expression.visit(this);
            return s;
        }

        public virtual Statement visit(ConditionalBranch s)
        {
            s.condition = visitReadProgramVariable(s.condition);
            return s;
        }

        public virtual Statement visit(UnconditionalBranch s)
        {
            return s;
        }

        public virtual Statement visit(Block s)
        {
            return s;
        }

        #endregion

        ////////////////////////////////////////////////////////
        //Condition visitors
        ////////////////////////////////////////////////////////
/*        public virtual BasicEdge.Guard visitGuard(BasicEdge.Guard g) {
            g.expression = g.expression.visit(this);
            //            if (g.variable!=null)
//                g.variable = visitReadProgramVariable(g.variable);
            return g;
        }
        */
        ////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////

        #region TypeVisitor Members

        public virtual void visit(BitVectorType t)
        {
        }

        public virtual void visit(BooleanType t)
        {
        }

        public virtual void visit(IntegerType t)
        {
        }

        public virtual void visit(MapType t)
        {
            t.range.visit(this);
            foreach (var d in t.domain)
                d.visit(this);
        }

        public virtual void visit(TypeConstructorInstance t)
        {
            visitTypeConstructor(t.typeConstructor);

            foreach (var d in t.arguments)
                d.visit(this);
        }

        public virtual void visit(VariableType t)
        {
        }

        #endregion

        public virtual void visitTypeConstructor(TypeConstructor typeConstructor)
        {
        }

        ////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////
        public virtual ProgramVariable visitReadProgramVariable(ProgramVariable v)
        {
            v.type.visit(this);
            return v;
        }

        public virtual ProgramVariable visitWriteProgramVariable(ProgramVariable v)
        {
            v.type.visit(this);
            return v;
        }

        public virtual ProgramVariable visitHavokProgramVariable(ProgramVariable v)
        {
            v.type.visit(this);
            return v;
        }

        public virtual BoundVariable visitBoundVariable(BoundVariable v)
        {
            v.type.visit(this);
            return v;
        }

        public virtual Function visitFunction(Function function)
        {
            function.resultType.visit(this);
            foreach (var t in function.argumentTypes)
                t.visit(this);
            return function;
        }

//        public virtual DataType         visitType                (DataType        t       ) { return t; }
        public virtual TypeVariable visitTypeVariable(TypeVariable t)
        {
            return t;
        }

        ////////////////////////////////////////////////////////
        //Statement visitors
        ////////////////////////////////////////////////////////
    }
}