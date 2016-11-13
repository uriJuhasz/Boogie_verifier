using System.Collections.Generic;
using Slicer.Programs.Expressions;
using Slicer.Programs.Expressions.utilities;
using Slicer.StateSpace.Functions;
using Slicer.StateSpace.Functions.Basic;

namespace Slicer.Analyzers
{
    internal class ExpressionSymbolCounter : ExpressionVisitor
    {
        public readonly HashSet<string> symbols;

        public ExpressionSymbolCounter()
        {
            symbols = new HashSet<string>();
        }

        #region ExpressionVisitor Members

        public Expression visit(BoundVariableExpression e)
        {
            return e;
        }

        public Expression visit(ProgramVariableExpression e)
        {
            symbols.Add(e.programVariable.name);
            return e;
        }

        public Expression visit(LiteralExpression e)
        {
            return e;
        }

        public Expression visit(FAE e)
        {
            if (!isInterpreted(e.function))
                symbols.Add(e.function.name);
            foreach (var a in e.arguments)
                a.visit(this);
            return e;
        }

        public Expression visit(QuantifiedExpression e)
        {
            e.expression.visit(this);
            return e;
        }

        public Expression visit(QuantifiedTypeExpression e)
        {
            e.expression.visit(this);
            return e;
        }

        #endregion

        internal static bool isInterpreted(Function f)
        {
            return
                BFunction.isBinaryLogical(f)
                || BFunction.isUnaryLogical(f)
                || BFunction.isEquality(f)
                || BFunction.isInEquality(f)
                || BFunction.isMapRead(f)
                || BFunction.isMapWrite(f)
                || f.name == "+"
                || f.name == "-"
                || f.name == "*"
                || f.name == "/"
                || f.name == "%"
                || f.name == "<"
                || f.name == ":"
                ;
        }

        internal static bool isInterpreted(string name)
        {
            return
                name == "&&"
                || name == "||"
                || name == "==>"
                || name == "<==>"
                || name == "!"
                || name == "=="
                || name == "!="
                || name == "MapRead"
                || name == "MapWrite"
                || name == "+"
                || name == "-"
                || name == "*"
                || name == "/"
                || name == "%"
                || name == "<"
                || name == ":"
                ;
        }
    }
}