using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Analyzers.Tools;
using Slicer.Programs.Expressions;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;
using Slicer.StateSpace;

namespace Slicer.Analyzers
{
    public class SubexpressionCounter : AVisitor, Analyzer<SubexpressionCounter>
    {
        //////////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////////

        private Stack<string> context = new Stack<string>(new string[1] {""});
        private StatementId currentStatement;
        public Dictionary<string, SubExpression> subexpressionCounts;

        public SubexpressionCounter(Procedure p)
            : base(p)
        {
        }

        #region Analyzer<SubexpressionCounter> Members

        public string domainName
        {
            get { return "Subexpression counter"; }
        }

        public void initializeStart(StatementId si)
        {
            subexpressionCounts = new Dictionary<string, SubExpression>();
        }

        public void join(ICollection<Tuple<BasicEdge.Guard, SubexpressionCounter>> predecessors, StatementId si)
        {
            subexpressionCounts = new Dictionary<string, SubExpression>();
            currentStatement = si;

//            HashSet<string> ses = new HashSet<string>();
            if (predecessors.Count == 1 && predecessors.First().Item2.currentStatement.predecessors.Count == 1)
            {
                subexpressionCounts = predecessors.First().Item2.subexpressionCounts;
            }
            else
            {
                foreach (var p in predecessors)
                    foreach (var v in p.Item2.subexpressionCounts)
                    {
                        SubExpression se = null;
                        if (!subexpressionCounts.TryGetValue(v.Key, out se))
                        {
                            subexpressionCounts.Add(v.Key, new SubExpression(v.Value));
                            //                        Debug.Assert(v.Key == subexpressionCounts[v.Key].fae.ToString());
                        }
                        else
                        {
                            se.merge(currentStatement, v.Value);
                            //                        Debug.Assert(v.Key == subexpressionCounts[v.Key].fae.ToString());
                        }
                    }
            }
//           currentStatement = null;
        }

        public Statement propagate(SubexpressionCounter prestate, StatementId si)
        {
            currentStatement = si;

            if (si.successors.Count == 1 && si.successors.First().Item2.predecessors.Count == 1)
            {
                subexpressionCounts = prestate.subexpressionCounts;
            }
            else
            {
                subexpressionCounts = new Dictionary<string, SubExpression>();

                foreach (var sec in prestate.subexpressionCounts)
                {
                    subexpressionCounts.Add(sec.Key, new SubExpression(sec.Value));
                    //                Debug.Assert(sec.Key == subexpressionCounts[sec.Key].fae.ToString());
                }
            }
            context = new Stack<string>();
            context.Push("");

            Statement ns = si.statement.visit(this);
            Debug.Assert(ns != null);
            return ns;
        }

        public SubexpressionCounter extract(StateInformation si)
        {
            if (si.subexpressionCounter == null)
                si.subexpressionCounter = new SubexpressionCounter(procedure);

            return si.subexpressionCounter;
        }

        #endregion

        //////////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////////
        public override Expression visit(FAE f)
        {
            context.Push(f.ToString());
            base.visit(f);
            context.Pop();

            Expression result = f;

            bool add = true;

            if (f.arguments.count == 0)
                add = false;
            if (f.arguments.count == 1 && (f.arguments[0] is AtomicExpression))
                add = false;

//            if (BasicFunction.isBinaryLogical(f.function) /*&& (f.arguments[0] is AtomicExpression) && (f.arguments[1] is AtomicExpression)*/)
//                add = false;

//            if (BasicFunction.isUnaryLogical(f.function) /*&& (f.arguments[0] is AtomicExpression)*/)
//                add = false;

            if (add)
                addSubexpression(f, context.Peek());

            return f;
        }

        public override Expression visit(QuantifiedExpression e)
        {
            context.Push(e.ToString());
            base.visit(e);
            context.Pop();

//            addSubexpression(result,context.Peek());
            return e;
        }

        public override Expression visit(QuantifiedTypeExpression e)
        {
            context.Push(e.ToString());
            base.visit(e);
            context.Pop();

//            addSubexpression(result,context.Peek());
            return e;
        }

        //////////////////////////////////////////////////////////////////////////////
        private void addSubexpression(Expression e, string context)
        {
            if (!e.isGround)
                return;

            string key = e.ToString();
            SubExpression se = null;
            if (subexpressionCounts.TryGetValue(key, out se))
                se.add(currentStatement, context);
                //targetE,context,statementId); contexts subexpressionCounts[key].contexts.Add(context);
            else
            {
                Expression ne = e.substitute(new ExpressionSubstitution());
                subexpressionCounts.Add(ne.ToString(), new SubExpression(ne, currentStatement, context));
                Debug.Assert(ne.ToString() == subexpressionCounts[ne.ToString()].expression.ToString());
            }
        }

        //////////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////////

        #region Nested type: SubExpression

        public class SubExpression
        {
            public Dictionary<string, HashSet<StatementId>> contexts;
            public StatementId definition;
            public Expression expression;

            public SubExpression(Expression e, StatementId id, string context)
            {
                Debug.Assert(e != null);
                Debug.Assert(id != null);
                Debug.Assert(context != null);

                expression = e;
                contexts = new Dictionary<string, HashSet<StatementId>>();
                var idSet = new HashSet<StatementId>();
                idSet.Add(id);
                contexts.Add(context, idSet);
                definition = id;
                Debug.Assert(definition != null);
            }

            public SubExpression(SubExpression other)
            {
                Debug.Assert(other != null);
                expression = other.expression;
                contexts = new Dictionary<string, HashSet<StatementId>>();
                foreach (var c in other.contexts)
                    contexts.Add(c.Key, new HashSet<StatementId>(c.Value));
                definition = other.definition;
                Debug.Assert(definition != null);
            }

            public override string ToString()
            {
                return expression.ToString() + " : " + contexts.Count;
            }

            internal void add(StatementId currentStatement, string context)
            {
                Debug.Assert(currentStatement != null);
                HashSet<StatementId> c = null;
                if (!contexts.TryGetValue(context, out c))
                {
                    c = new HashSet<StatementId>();
                    contexts.Add(context, c);
                }
                c.Add(currentStatement);
                definition = currentStatement;
                Debug.Assert(definition != null);
            }

            internal void merge(StatementId currentStatement, SubExpression other)
            {
                Debug.Assert(currentStatement != null);
                Debug.Assert(expression.ToString() == other.expression.ToString());
                foreach (var c in other.contexts)
                {
                    HashSet<StatementId> context = null;
                    if (!contexts.TryGetValue(c.Key, out context))
                    {
                        context = new HashSet<StatementId>();
                        contexts.Add(c.Key, context);
                    }

                    int oldSize = context.Count;

                    context.UnionWith(c.Value);
                    if (oldSize != context.Count || c.Value.Count != context.Count ||
                        !ReferenceEquals(other.definition, definition))
                        definition = currentStatement;
                }
                Debug.Assert(definition != null);
            }
        }

        #endregion
    }
}