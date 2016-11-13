using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Programs.Expressions.utilities;
using Slicer.StateSpace.Functions;
using Slicer.StateSpace.Functions.Basic;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Types.Quantification;
using Slicer.StateSpace.Values;
using Slicer.StateSpace.Variables.Quantification;

namespace Slicer.Programs.Expressions.Basic
{
    public class BasicFAE : ExpressionC, FAE
    {
        //////////////////////////////////////////////
        private readonly string stringCache;
        private readonly Dictionary<string, Expression> substitutionCache = new Dictionary<string, Expression>();

        public BasicFAE(Function function, ExpressionList arguments)
        {
//            if (function.name.StartsWith(Analyzers.FOLConverter.Slicer.booleanFunctionPrefix))
//               Debugger.Break();
            Debug.Assert(function != null);
            Debug.Assert(arguments != null);
            Debug.Assert(function.argumentTypes.Count() == arguments.count);
            for (int j = 0; j < function.argumentTypes.Count(); j++)
                Debug.Assert(function.argumentTypes[j].ToStringN() == arguments[j].type.ToStringN());

            this.function = function;
            this.arguments = new ExpressionList(arguments);
            stringCache = makeString();
        }

        //////////////////////////////////////////////

        #region FunctionApplicationExpression Members

        public override Expression visit(ExpressionVisitor v)
        {
            return v.visit(this);
        }

        ////////////////////////////////////////////
        public override IType type
        {
            get { return function.resultType; }
        }

        ////////////////////////////////////////////

        ////////////////////////////////////////////
        public override Expression substitute(ExpressionSubstitution s)
        {
            string ss = makeSubstitutionString(s);
            if (substitutionCache.ContainsKey(ss))
                return substitutionCache[ss];

            bool needSubstitution = false;
            foreach (var fv in freeVariables)
                if (s.lookup(fv.name) != null)
                    needSubstitution = true;
            foreach (var ftv in freeTypeVariables)
                if (s.typeSubstitution.map(ftv) != null)
                    needSubstitution = true;

            Expression result = this;
            if (needSubstitution)
            {
                ExpressionList sArgs = arguments.substitute(s);
                if (function.name == "==<>")
                {
                    Debug.Assert(sArgs.count == 2);
                    if (sArgs[0].type.ToStringN() == sArgs[1].type.ToStringN())
                        result =
                            new BasicFAE(
                                BFunctionTemplate.eq.getInstance(TypeTuple.make(new[]{sArgs[0].type})), sArgs);
                    else if (sArgs.freeTypeVariables.Count > 0)
                        result =
                            new BasicFAE(
                                BFunctionTemplate.eqG.getInstance(TypeTuple.make(from a in sArgs select a.type)), sArgs);
                    else
                        result = new BasicLiteralExpression(BooleanValue.makeBooleanValue(false));
                    //equality of different types
                }
                else
                    result = new BasicFAE(function.substitute(s.typeSubstitution), sArgs);
            }
            substitutionCache[ss] = result;
            return result;
        }

        public override String ToString()
        {
            return stringCache;
        }

        public override string ToStringN(IDictionary<BoundVariable, string> vMap)
        {
            var result = function.fullName + "(";
            bool b = false;
            foreach (var arg in arguments)
            {
                if (b) result += ",";
                b=true;
                result += arg.ToStringN(vMap);
            }
            result += ")";
            return result;
        }
        public override IList<BoundVariable> orderedVariables
        {
            get {
                var result = new List<BoundVariable>();
                foreach (var arg in arguments)
                    foreach (var fv in arg.orderedVariables)
                        if (!result.Contains(fv))
                            result.Add(fv);
                return result;
            }
        }

        public override IList<Expression> subExpressions
        {
            get { return new List<Expression>(arguments); }
        }

        //////////////////////////////////////////////
        public override bool isGround
        {
            get
            {
                bool result = true;
                foreach (var a in arguments)
                    result &= a.isGround;
                return result;
            }
        }

        //////////////////////////////////////////////
        public override ISet<BoundVariable> freeVariables
        {
            get
            {
                var result = new HashSet<BoundVariable>();
                foreach (var a in arguments)
                    result.UnionWith(a.freeVariables);
                return result;
            }
        }

        //////////////////////////////////////////////
        public override ISet<TypeVariable> freeTypeVariables
        {
            get
            {
                ISet<TypeVariable> result = type.freeTypeVariables;
                result.UnionWith(function.freeTypeVariables);
                foreach (var a in arguments)
                    result.UnionWith(a.freeTypeVariables);

                return result;
            }
        }

        public Function function { get; private set; }
        public ExpressionList arguments { get; private set; }

        #endregion

        ////////////////////////////////////////////
        private string makeSubstitutionString(ExpressionSubstitution s)
        {
            string result = "[";
            foreach (var v in freeVariables)
                if (s.lookup(v.name) != null)
                    result += "(" + s.lookup(v.name) + ")";
                else
                    result += "(" + v.name + ")";
            result += "] <";
            foreach (var tv in freeTypeVariables)
                if (s.typeSubstitution.map(tv) != null)
                    result += "(" + s.typeSubstitution.map(tv).ToString() + ")";
                else
                    result += "(" + tv.name + ")";

            return result;
        }

        ////////////////////////////////////////////
        ////////////////////////////////////////////
        private static string parenthizeIfNeeded(Expression e)
        {
            if (needsParenthesis(e))
                return "(" + e.ToString() + ")";
            else
                return e.ToString();
        }

        ////////////////////////////////////////////
        private static bool needsParenthesis(Expression e)
        {
            var bfae = e as BasicFAE;

            return
                (
                    e is QuantifiedExpression
                    || e is QuantifiedTypeExpression
                    || ((bfae != null) && (bfae.isInfixBinary() || bfae.isPrefixUnary() || bfae.isITE()))
                );
        }

        ////////////////////////////////////////////

        ////////////////////////////////////////////
        private string makeString()
        {
            string result = "";

            if (isInfixBinary())
                result =
                    parenthizeIfNeeded(arguments[0])
                    + " " + infixBinaryToString(function) + " " +
                    parenthizeIfNeeded(arguments[1]);
            else if (isPrefixUnary())
                result = function + parenthizeIfNeeded(arguments[0]);
            else if (isMapRead())
            {
                result = arguments[0].ToString() + "[";
                for (int i = 1; i < arguments.count; i++)
                {
                    result += arguments[i].ToString();
                    if (i < arguments.count - 1)
                        result += ",";
                }
                result += "]";
            }
            else if (isMapWrite())
            {
                result = arguments[0].ToString() + "[";
                for (int i = 1; i < arguments.count - 1; i++)
                {
                    result += arguments[i].ToString();
                    if (i < arguments.count - 2)
                        result += ",";
                }
                result += " := " + arguments[arguments.count - 1].ToString() + "]";
            }
            else if (isITE())
            {
                result = "if " + parenthizeIfNeeded(arguments[0]) + " then " + parenthizeIfNeeded(arguments[1]) +
                         " else " + parenthizeIfNeeded(arguments[2]) + "";
            }
            else
            {
                {
                    foreach (var c in function.ToString())
                        result += c;
                }

                result += "(";
                if (arguments.Any())
                {
                    int i = arguments.count;

                    foreach (var e in arguments)
                    {
                        result += e.ToString();
                        if (i > 1)
                            result += ",";
                        i--;
                    }

                }
                result += ")";
            }
            bool needType = !function.resultType.freeTypeVariables.IsSubsetOf(arguments.freeTypeVariables);
            if (!needType)
            {
                var bfti = function as BasicFunctionTemplateInstance;

                if (bfti != null)
                    if (
                        !bfti.template.signature.resultType.freeTypeVariables.IsSubsetOf(
                            (bfti.template.signature.argumentTypes.SelectMany(ta => ta.freeTypeVariables))))
                        needType = true;
            }

            if (needType)
                result = "(" + result + " : " + function.resultType.ToString() + ")";
            return result;
        }

        private string infixBinaryToString(Function function)
        {
            if (function.name == "==<>")
                return "==";
            return function.name;
        }

        private bool isITE()
        {
            return function.isITE;
        }

        //////////////////////////////////////////////

        ///////////////////////////////////////////////////////////
        private bool isInfixBinary()
        {
            if (arguments.count != 2)
                return false;

            return
                (function.ToString().Equals("=="))
                || (function.ToString().Equals("==<>"))
                || (function.ToString().Equals("!="))
                || (function.ToString().Equals("&&"))
                || (function.ToString().Equals("||"))
                || (function.ToString().Equals("==>"))
                || (function.ToString().Equals("<==>"))
                || (function.ToString().Equals("<"))
                || (function.ToString().Equals(">"))
                || (function.ToString().Equals("<="))
                || (function.ToString().Equals(">="))
                || (function.ToString().Equals("<:"))
                || (function.ToString().Equals("++"))
                || (function.ToString().Equals("+"))
                || (function.ToString().Equals("-"))
                || (function.ToString().Equals("*"))
                || (function.ToString().Equals("/"))
                || (function.ToString().Equals("div"))
                || (function.ToString().Equals("mod"))
                ;
        }

        ///////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////
        private bool isPrefixUnary()
        {
            if (arguments.count != 1)
                return false;

            return
                (function.ToString().Equals("-"))
                || (function.ToString().Equals("!"))
                ;
        }

        ///////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////
        private bool isMapRead()
        {
            if (arguments.count < 2)
                return false;
            return
                function is MapRead;
        }

        ///////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////
        private bool isMapWrite()
        {
            if (arguments.count < 3)
                return false;

            return
                function is MapWrite;
//                   (function.ToString().Equals("MapStore"))
//            ;
        }

        ///////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////
    }
}