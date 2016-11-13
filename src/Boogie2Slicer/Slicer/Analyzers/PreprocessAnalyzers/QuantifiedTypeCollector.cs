using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Programs.Expressions;
using Slicer.Programs.Expressions.utilities;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;
using Slicer.StateSpace.Functions;
using Slicer.StateSpace.Functions.Basic;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Types.Quantification;
using Slicer.StateSpace.Types.Utilities;

namespace Slicer.Analyzers
{
    internal class QuantifiedTypeCollector : ExpressionVisitor, TypeVisitor
    {
        private readonly Dictionary<string, List<FunctionTemplate>> functionTemplates =
            new Dictionary<string, List<FunctionTemplate>>();

        private readonly Procedure procedure;
        private readonly HashSet<TypeVariable> tpSet = new HashSet<TypeVariable>();
        private readonly Stack<TQ> tqStack = new Stack<TQ>();

        public Dictionary<string, FunctioneTemplateEntry> functionTemplateInstantiations =
            new Dictionary<string, FunctioneTemplateEntry>();

        public List<TQ> tqList = new List<TQ>();

        public Dictionary<string, TE> types = new Dictionary<string, TE>();

        public QuantifiedTypeCollector(Procedure procedure)
        {
            this.procedure = procedure;
        }

        //////////////////////////////////////////////////////////////////
//        private StatementId currentStatement;

        //////////////////////////////////////////////////////////////////

        #region ExpressionVisitor Members

        public Expression visit(BoundVariableExpression e)
        {
            addExpression(e);

            if (e.type.freeTypeVariables.Count > 0)
                tqStack.Peek().addExpression(e);

            e.type.visit(this);

            return e;
        }

        public Expression visit(ProgramVariableExpression e)
        {
            addExpression(e);

            Debug.Assert(e.type.freeTypeVariables.Count == 0);

            e.type.visit(this);
            return e;
        }

        public Expression visit(LiteralExpression e)
        {
            addExpression(e);

            return e;
        }

        public Expression visit(FAE e)
        {
            addExpression(e);

            addFunctionInstantiation(e);

            if (e.type.freeTypeVariables.Count > 0)
                tqStack.Peek().addExpression(e);
//            else
            {
                e.type.visit(this);
                foreach (var a in e.arguments)
                    a.visit(this);
            }
            return e;
        }

        public Expression visit(QuantifiedExpression e)
        {
            addExpression(e);

            if (e.type.freeTypeVariables.Count > 0)
                tqStack.Peek().addExpression(e);

            e.type.visit(this);
            e.variable.type.visit(this);
            e.expression.visit(this);
            return e;
        }

        public Expression visit(QuantifiedTypeExpression e)
        {
            addExpression(e);

            tqStack.Push(new TQ(e));
            Expression ee = e.expression;
            while (true)
            {
                var qte = ee as QuantifiedTypeExpression;
                if (qte != null)
                    ee = qte.expression;
                else
                    break;
            }

            ee.visit(this);
            TQ tq = tqStack.Pop();

            tqList.Add(tq);

            return e;
        }

        #endregion

        /////////////////////////////////////////////////////////////////////////

        #region TypeVisitor Members

        public void visit(BitVectorType t)
        {
        }

        public void visit(BooleanType t)
        {
        }

        public void visit(IntegerType t)
        {
        }

        public void visit(MapType t)
        {
            foreach (var tp in t.typeParameters)
                tpSet.Add(tp);

            if (t.freeTypeVariables.Except(tpSet).Count() > 0)
                tqStack.Peek().addType(t);
/*            t.range.visit(this);
            foreach (var tt in t.domain)
                tt.visit(this);
            */
            foreach (var tp in t.typeParameters)
                tpSet.Remove(tp);
        }

        public void visit(TypeConstructorInstance t)
        {
            if (t.freeTypeVariables.Except(tpSet).Count() > 0)
                tqStack.Peek().addType(t);
/*            foreach (var tt in t.arguments)
                tt.visit(this);*/
        }

        public void visit(VariableType t)
        {
            if (t.freeTypeVariables.Except(tpSet).Count() > 0)
                tqStack.Peek().addType(t);
        }

        #endregion

        public void collect(StatementId si)
        {
//            currentStatement = si;
            if (si.statement is PredicateStatement)
                (si.statement as PredicateStatement).expression.visit(this);
            else
                Debug.Assert(si.statement is ControlStatement);
        }

        private void addFunctionInstantiation(FAE e)
        {
            if (ExpressionSymbolCounter.isInterpreted(e.function.name))
                return;
            var f = e.function as BasicFunctionTemplateInstance;
            if (f == null /*|| f.template.mapTypeArguments.Count()==0*/)
                return;
            FunctioneTemplateEntry fti;
            if (!functionTemplateInstantiations.TryGetValue(e.function.name, out fti))
                functionTemplateInstantiations[e.function.name] = fti = new FunctioneTemplateEntry(f.template);
            string s = argumentString(f.typeArguments);
            if (!fti.instances.ContainsKey(s))
                fti.instances[s] = new Dictionary<string, FAE>();
            fti.instances[s][e.ToString()] = e;
            if (f.isGroundInstance())
                fti.groundInstances.Add(s);
        }

        private string argumentString(ITypeTuple dataType)
        {
            string result = "<";
            for (int i = 0; i < dataType.Count(); i++)
                result += ((i == 0) ? "" : ",") + dataType[i].ToStringN();
            result += ">";
            return result;
        }

        private void addExpression(Expression e)
        {
            string ts = e.type.ToStringN();
            TE te = null;
            if (!types.TryGetValue(ts, out te))
                types[ts] = te = new TE();
            te.type = e.type;
            te.expressions[e.ToString()] = e;
        }

        public void collectFunctionTypes()
        {
            foreach (var f in procedure.parentScope.functionTemplates)
            {
                if (ExpressionSymbolCounter.isInterpreted(f.name) /*|| f.mapTypeArguments.Count() == 0*/)
                    continue;

                functionTemplateInstantiations[f.name] = new FunctioneTemplateEntry(f);
                string s = "";
                if (f.typeParameters.Count() > 0)
                {
                    s += "<";
                    foreach (var tp in f.typeParameters)
                        s += ((s.Last() == '<') ? "" : ",") + tp.name;
                    s += "> ";
                }

                s += "(";
                foreach (var at in f.signature.argumentTypes)
                    s += ((s.Count() == 0 || s.Last() == '(') ? "" : ",") + at.ToStringN();
                s += ") --> ";

                s += f.signature.resultType.ToStringN();

                List<FunctionTemplate> ft = null;
                if (!functionTemplates.TryGetValue(s, out ft))
                    functionTemplates[s] = ft = new List<FunctionTemplate>();
                ft.Add(f);
            }
/*
            Console.WriteLine("Function signatures:");
            foreach (var ft in functionTemplates)
            {
                Console.Write("\t{0} :", ft.Key);
                foreach (var f in ft.Value)
                    Console.Write(" {0}", f.name);
                Console.WriteLine();
            }*/
        }

        #region Nested type: FunctioneTemplateEntry

        public class FunctioneTemplateEntry
        {
            public FunctionTemplate functionTemplate;

            public HashSet<string> groundInstances = new HashSet<string>();

            public Dictionary<string, Dictionary<string, FAE>> instances =
                new Dictionary<string, Dictionary<string, FAE>>();

            public FunctioneTemplateEntry(FunctionTemplate ft)
            {
                functionTemplate = ft;
            }
        }

        #endregion

        #region Nested type: TE

        public class TE
        {
            public Dictionary<string, Expression> expressions = new Dictionary<string, Expression>();
            public IType type;
        }

        #endregion

        /////////////////////////////////////////////////////////////////////////

        #region Nested type: TQ

        public class TQ
        {
            public Dictionary<string, TypeConstructorInstance> CITypes =
                new Dictionary<string, TypeConstructorInstance>();

            public QuantifiedTypeExpression e;

            public Dictionary<string, Dictionary<string, Expression>> expressionPerType =
                new Dictionary<string, Dictionary<string, Expression>>();

            public Dictionary<string, MapType> mapTypes = new Dictionary<string, MapType>();

            public Dictionary<string, VariableType> variableTypes = new Dictionary<string, VariableType>();

            public TQ(QuantifiedTypeExpression e)
            {
                this.e = e;
            }

            internal void addType(MapType t)
            {
                mapTypes[t.ToString()] = t;
            }

            internal void addType(TypeConstructorInstance t)
            {
                CITypes[t.ToString()] = t;
            }

            internal void addType(VariableType t)
            {
                variableTypes[t.ToString()] = t;
            }


            internal void addExpression(Expression e)
            {
                Dictionary<string, Expression> perType = null;
                if (!expressionPerType.TryGetValue(e.type.ToString(), out perType))
                {
                    perType = new Dictionary<string, Expression>();
                    expressionPerType.Add(e.type.ToString(), perType);
                }
                perType[e.ToString()] = e;
            }
        }

        #endregion
    }
}