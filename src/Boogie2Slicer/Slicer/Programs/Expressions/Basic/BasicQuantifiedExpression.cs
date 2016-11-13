using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Programs.Expressions.utilities;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Types.Quantification;
using Slicer.StateSpace.Variables.Quantification;

namespace Slicer.Programs.Expressions.Basic
{
    internal class BasicQuantifiedExpression : ExpressionC, QuantifiedExpression
    {
        ///////////////////////////////////////////////////////////
        public BasicQuantifiedExpression(
            Scope scope,
            Quantifier quantifier,
            BoundVariable variable,
//            DataType      typeBound, 
            Expression expression,
            IEnumerable<IEnumerable<Expression>> triggers,
            string attributes
            )
        {
            Debug.Assert(scope != null);
            this.scope = scope;
            scope.addBoundVariable(variable);
            this.quantifier = quantifier;
            this.variable = variable;
//            this.typeBound  = typeBound;
            this.expression = expression;

            this.triggers = (from trs in triggers select new ExpressionList(trs)).ToArray();
            if (attributes != null)
                this.attributes = (string) (attributes.Clone());
        }

        ///////////////////////////////////////////////////////////
        public BasicQuantifiedExpression(
            QuantifiedExpression other,
            ExpressionSubstitution s
            )
        {
            scope = other.scope;
            quantifier = other.quantifier;
            variable = scope.makeFreshBoundVariable(other.variable.name,
                                                    other.variable.type.substitute(s.typeSubstitution));
            s.add(other.variable.name, new BasicBoundVariableExpression(variable));
            expression = other.expression.substitute(s);
            triggers = (from trs in other.triggers select trs.substitute(s)).ToArray();
            if (other.attributes != null)
                attributes = (string) (other.attributes.Clone());

            s.remove(other.variable.name);
        }

        #region QuantifiedExpression Members

        public Scope scope { get; private set; }

/*        //////////////////////////////////////////////
        public static string getFreshBoundVariableName()
        {
            var result = "v_$" + substitutionIndex.ToString();
            substitutionIndex++;
            return result;
        }

//        //////////////////////////////////////////////
//        public static int substitutionIndex = 1;
        */
        //////////////////////////////////////////////
        public override IList<Expression> subExpressions
        {
            get { return new List<Expression>(new Expression[] {expression}); }
        }

        //////////////////////////////////////////////
        public override Expression visit(ExpressionVisitor v)
        {
            return v.visit(this);
        }

        //////////////////////////////////////////////
        public override IType type
        {
            get { return BooleanType.booleanType; }
        }

        //////////////////////////////////////////////
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
                return new BasicQuantifiedExpression(this, s);
            else
                return this;
        }

        //////////////////////////////////////////////
        ////////////////////////////////////////////
        public override String ToString()
        {
            return "(" + quantifier.ToString() + " " + ToStringSansQuantifier() + ")";
        }

        public override string ToStringN(IDictionary<BoundVariable, string> vMap)
        {
            var result = "(" + quantifier.ToString() + " " + vMap[variable] + ":" + variable.type.ToStringN() + " :: " + expression.ToStringN(vMap) + ")";  
            return result;
        }
        public override IList<BoundVariable> orderedVariables
        {
            get
            {
                var result = new List<BoundVariable>();
                result.Add(variable);
                foreach (var fv in expression.orderedVariables)
                    if (!result.Contains(fv))
                        result.Add(fv);
                return result;
            }
        }
        ////////////////////////////////////////////
        public String ToStringSansQuantifier()//KKK
        {
            Expression se = expression;
            var vars = new List<BoundVariable>();

            var rTriggers = triggers;
            string attrs = attributes;
            var qe = this as QuantifiedExpression;
            while (qe != null && qe.quantifier == quantifier)
            {
                vars.Add(qe.variable);
                rTriggers = qe.triggers;
                attrs = qe.attributes;
                se = qe.expression;
                qe = se as QuantifiedExpression;
            }

            string result = "";
            for (int i = 0; i < vars.Count; i++)
                result += (i == 0 ? " " : ", ") + vars[i].name + " : " + vars[i].type.ToString();

            result += " :: ";
            if (rTriggers.Count() > 0)
            {
                for (int j = 0; j < rTriggers.Count(); j++)
                {
                    result += "{";
                    for (int i = 0; i < rTriggers[j].Count(); i++)
                        result += (i == 0 ? "" : ",") + rTriggers[j][i].ToString();
                    result += "} ";
                }
            }
            if (attrs != null)
                result += attrs;

            result += "( " + se.ToString() + " )";

            return result;
        }

        //////////////////////////////////////////////
        public override bool isGround
        {
            get { return freeVariables.Count == 0 && freeTypeVariables.Count == 0; }
        }

        //////////////////////////////////////////////
        public override ISet<BoundVariable> freeVariables
        {
            get
            {
                ISet<BoundVariable> result = expression.freeVariables;
                result.Remove(variable);
                return result;
            }
        }

        //////////////////////////////////////////////
        public override ISet<TypeVariable> freeTypeVariables
        {
            get
            {
                ISet<TypeVariable> result = expression.freeTypeVariables;
                result.UnionWith(variable.type.freeTypeVariables);
                return result;
            }
        }

        ///////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////
        public Quantifier quantifier { get; private set; }
        public BoundVariable variable { get; private set; }
        public Expression expression { get; private set; }

        public IList<ExpressionList> triggers { get; private set; }
        public string attributes { get; private set; }

        #endregion
    }
}