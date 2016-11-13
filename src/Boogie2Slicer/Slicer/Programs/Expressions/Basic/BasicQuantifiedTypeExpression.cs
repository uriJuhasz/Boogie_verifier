using System;
using System.Collections.Generic;
using Slicer.Programs.Expressions.utilities;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Types.Quantification;
using Slicer.StateSpace.Types.Quantification.Basic;
using Slicer.StateSpace.Variables.Quantification;

namespace Slicer.Programs.Expressions.Basic
{
    internal class BasicQuantifiedTypeExpression : ExpressionC, QuantifiedTypeExpression
    {
        ///////////////////////////////////////////////////////////
        private static int substitutionIndex = 1;

        public BasicQuantifiedTypeExpression(
            TypeQuantifier quantifier,
            TypeVariable variable,
            Expression expression,
            IEnumerable<Expression> triggers,
            string attributes
            )
        {
            this.quantifier = quantifier;
            this.variable = variable;
            this.expression = expression;
            this.triggers = new ExpressionList(triggers);
            this.attributes = attributes;
        }

        //////////////////////////////////////////////

        ///////////////////////////////////////////////////////////
        public BasicQuantifiedTypeExpression(
            QuantifiedTypeExpression other,
            ExpressionSubstitution s
            )
        {
            quantifier = other.quantifier;
            variable = new BasicTypeVariable(getFreshTypeVariableName());

            s.typeSubstitution.add(other.variable, new VariableType(variable));

            expression = other.expression.substitute(s);
            triggers = new ExpressionList(other.triggers);
            attributes = other.attributes;

            s.typeSubstitution.remove(other.variable);
        }

        //////////////////////////////////////////////

        //////////////////////////////////////////////

        #region QuantifiedTypeExpression Members

        public override Expression visit(ExpressionVisitor v)
        {
            return v.visit(this);
        }

        ///////////////////////////////////////////////////////////

        public override IType type
        {
            get { return BooleanType.booleanType; }
        }

        ///////////////////////////////////////////////////////////
        public override Expression substitute(ExpressionSubstitution s)
        {
            bool needSubstitution = false;
            foreach (var fv in freeVariables)
                if (s.lookup(fv.name) != null)
                    needSubstitution = true;
            foreach (var ftv in freeTypeVariables)
                if (s.typeSubstitution.map(ftv) != null)
                    needSubstitution = true;
            if (needSubstitution)
                return new BasicQuantifiedTypeExpression(this, s);
            else
                return this;
        }


        ////////////////////////////////////////////
        ////////////////////////////////////////////
        public override string ToStringN(IDictionary<BoundVariable, string> vMap)
        {
            return ToString();
        }
        public override IList<BoundVariable> orderedVariables
        {
            get
            {
                return expression.orderedVariables;
            }
        }

        public override String ToString()
        {
            Expression se = expression;
            var typeVars = new List<TypeVariable>();
            QuantifiedTypeExpression qte = this;
            while (qte != null && qte.quantifier == quantifier)
            {
                typeVars.Add(qte.variable);
                se = qte.expression;
                qte = se as QuantifiedTypeExpression;
            }

            string result = "";
            {
                result = quantifier.ToString() + "<";
                for (int i = 0; i < typeVars.Count; i++)
                    result += (i == 0 ? "" : ",") + typeVars[i].name;
                result += ">";
            }

            var qe = se as QuantifiedExpression;
            if (qe != null && matches(quantifier, qe.quantifier))
                result += qe.ToStringSansQuantifier();
            else
            {
                result += " :: ";
                if (triggers.count > 0)
                {
                    result += "{";
                    for (int i = 0; i < triggers.count; i++)
                        result += (i == 0 ? "" : ",") + triggers[i].ToString();
                    result += "} ";
                }
                if (attributes != null)
                    result += attributes;

                result += se.ToString();
            }

            return "(" + result + ")";
        }

        //////////////////////////////////////////////
        public override IList<Expression> subExpressions
        {
            get { return new List<Expression>(new Expression[] {expression}); }
        }

        //////////////////////////////////////////////
        public override bool isGround
        {
            get { return freeVariables.Count == 0 && freeTypeVariables.Count == 0; }
        }

        //////////////////////////////////////////////
        public override ISet<BoundVariable> freeVariables
        {
            get { return expression.freeVariables; }
        }

        //////////////////////////////////////////////
        public override ISet<TypeVariable> freeTypeVariables
        {
            get
            {
                ISet<TypeVariable> result = expression.freeTypeVariables;
                result.Remove(variable);
                return result;
            }
        }

        ///////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////

        ///////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////
        public TypeQuantifier quantifier { get; private set; }
        public TypeVariable variable { get; private set; }
        public Expression expression { get; private set; }

        public string attributes { get; private set; }
        public ExpressionList triggers { get; private set; }

        #endregion

        public static string getFreshTypeVariableName()
        {
            string result = "T_$" + substitutionIndex.ToString();
            substitutionIndex++;
            return result;
        }

        public Expression clone()
        {
            return new BasicQuantifiedTypeExpression(this, new ExpressionSubstitution());
        }

        public TypeQuantifier getQuantifier()
        {
            return quantifier;
        }

        public TypeVariable getVariable()
        {
            return variable;
        }

        public Expression getExpression()
        {
            return expression;
        }

        private static bool matches(TypeQuantifier typeQuantifier, Quantifier quantifier)
        {
            return
                (typeQuantifier is TypeForall && quantifier.isForall)
                || (typeQuantifier is TypeExists && quantifier.isExists)
                ;
        }
    }
}