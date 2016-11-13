using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Analyzers.EqualityAnalyzer.MapAnalyzer;
using Slicer.Analyzers.Tools;
using Slicer.Programs.Conditions;
using Slicer.Programs.Expressions;
using Slicer.Programs.Expressions.Basic;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;
using Slicer.StateSpace;
using Slicer.StateSpace.Functions.Basic;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Values;
using Slicer.StateSpace.Variables;

namespace Slicer.Analyzers.EqualityAnalyzer
{
    public class EqualityAnalyzer : AVisitor, Analyzer<EqualityAnalyzer>
    {
        ////////////////////////////////////////////////////////////////////////////
        private EqualityDatabase database;
        private HashSet<string> firstOccurenceVariables;

        public EqualityAnalyzer(Procedure procedure)
            : base(procedure)
        {
            database = null;
        }

        public PropositionalFormula pathCondition
        {
            get { return database.pathCondition; }
        }

        public IDictionary<string, int> conditionVariableIndices
        {
            get { return database.conditionVariableIndices; }
        }

        public IDictionary<int, ProgramVariable> conditionVariableNames
        {
            get { return database.conditionVariableNames; }
        }

        public Dictionary<string, MapIncarnation> mapIncarnationMap
        {
            get { return database.mapIncarnationMap; }
        }

        public LazyUnionSet<string> subExpressions
        {
            get { return database.subExpressions; }
        }

        internal EqualityDatabase.AssignmentMap assignmentMap
        {
            get { return database.assignmentMap; }
        }

        public StatementId statementId { get; set; }

        ////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////
        //Analyzer implementation
        ////////////////////////////////////////////////////////////////////////////

        #region Analyzer<EqualityAnalyzer> Members

        public string domainName
        {
            get { return "Equality Analyzer"; }
        }

        ////////////////////////////////////////////////////////////////////////////
        public void initializeStart(StatementId si)
        {
//            Console.WriteLine("EqualityAnalyzer.initializeStart({0})", si.ToString());
            Debug.Assert(procedure != null);
            database = new EqualityDatabase(si, procedure, new PropositionalFormula(true));

            int numConstants = 0;
//            var constants = (from c in procedure.parentScope.locals where c is Constant select c as Constant).ToArray();
            var constantMap = new Dictionary<string, List<BasicProgramVariableExpression>>();
//            Console.Write("\tCollecting unique constants : ");
            foreach (var d in procedure.parentScope.locals)
            {
                var c = d as Constant;
                if (c != null && c.isUnique)
                {
                    numConstants++;
                    List<BasicProgramVariableExpression> cme;
                    if (!constantMap.TryGetValue(c.type.ToStringN(), out cme))
                        constantMap[c.type.ToStringN()] = cme = new List<BasicProgramVariableExpression>();
                    cme.Add(new BasicProgramVariableExpression(c));
                }
            }
//            Console.WriteLine("{0}", numConstants);
            int cc = 0;
            foreach (var l in constantMap)
            {
//                Console.WriteLine("\t\tAdding inequalities for {0} : {1}", l.Key.ToString(), l.Value.Count);
                for (int i = 0; i < l.Value.Count; i++)
                    for (int j = i + 1; j < l.Value.Count; j++)
                    {
//                        Console.WriteLine("\t\t\t{0}: {1} != {2}", cc, l.Value[i].ToString(), l.Value[j].ToString());
                        database.addInequality(l.Value[i], l.Value[j]);
                        cc++;
                    }
            }
            statementId = si;
//            Console.WriteLine("/EqualityAnalyzer.initializeStart({0})", si.ToString());
        }

        ////////////////////////////////////////////////////////////////////////////
        public void join(ICollection<Tuple<BasicEdge.Guard, EqualityAnalyzer>> predecessors, StatementId si)
        {
/*            Console.WriteLine("EqualityAnalyzer.join({0})", si.ToString());
            foreach (var p in predecessors)
                Console.WriteLine("\t{0} : {1}", p.Item2.statementId.ToString(), p.Item2.pathCondition.ToString());
  */
            statementId = si;

            Debug.Assert(predecessors.Count > 0);
            Procedure procedure = predecessors.First().Item2.procedure;
            Debug.Assert(procedure != null);

            if (predecessors.Count == 1 && si.predecessors.First().Item2.successors.Count == 1)
            {
                Debug.Assert(((predecessors.First().Item1.expression as LiteralExpression).value as BooleanValue).value);
                EqualityAnalyzer onlyPred = predecessors.First().Item2;
                database = onlyPred.database;
                database.statementId = si;
            }
            else
            {
                var predConditions = new List<PropositionalFormula>();
                foreach (var p in predecessors)
                {
                    if (!p.Item2.pathCondition.isFalse)
                    {
                        PropositionalFormula c = p.Item2.database.toDNF(p.Item1);
                        PropositionalFormula a = p.Item2.pathCondition & c;
                        predConditions.Add(a);
                    }
                }
//                Console.WriteLine("\tEqualityAnalyzer.join({0}).pathCondition", si.ToString());
                PropositionalFormula pathCondition = PropositionalFormula.or(predConditions);

                var preds = new List<EqualityDatabase>();
                foreach (var p in predecessors)
                    preds.Add(p.Item2.database);

//                Console.WriteLine("\tEqualityAnalyzer.join({0}).database", si.ToString());
                database = new EqualityDatabase(si, procedure, pathCondition, preds);

                if (pathCondition.isFalse)
                {
                    Console.Error.WriteLine("[{0}] Warning - path condition ({1}) is false", si.ToString(),
                                            pathCondition.ToString(conditionVariableNames));
                }
            }
//            Console.WriteLine("/EqualityAnalyzer.join({0})", si.ToString());
        }

        ////////////////////////////////////////////////////////////////////////////
        public Statement propagate(EqualityAnalyzer prestate, StatementId si)
        {
//            Console.WriteLine("EqualityAnalyzer.propagate({0})", si.ToString());
            statementId = si;

            Debug.Assert(!ReferenceEquals(prestate, this));
            database = prestate.database; //alias

            Debug.Assert(database != null);
            Debug.Assert(procedure != null);

            database.statementId = si; //for reporting

            firstOccurenceVariables = new HashSet<string>();

            Statement result;
            if (pathCondition.isFalse || database.additionalConditions.isFalse)
                result = null;
            else
                result = si.statement.visit(this);
//            Console.WriteLine("/EqualityAnalyzer.propagate({0})", si.ToString());
            return result;
        }

        ////////////////////////////////////////////////////////////////////////////
        public EqualityAnalyzer extract(StateInformation si)
        {
            if (si.equalityAnalyzer == null)
                si.equalityAnalyzer = new EqualityAnalyzer(procedure);
            return si.equalityAnalyzer;
        }

        #endregion

        ////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////
        public override ProgramVariable visitReadProgramVariable(ProgramVariable v)
        {
            throw new NotImplementedException();
        }

        ////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////
        //Expression visitors
        ////////////////////////////////////////////////////////////////////////////
        public override Expression visit(ProgramVariableExpression v)
        {
            if (subExpressions.tryAdd(v.name))
                firstOccurenceVariables.Add(v.name);
            return checkReplace(v);
        }

        ////////////////////////////////////////////////////////////////////////////
        public override Expression visit(FAE e)
        {
            Expression result = e;
            string oes = e.ToString();

            result = base.visit(e);

            result = checkReplace(result);
            return result;
        }


        ////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////
        //public virtual Expression visit(BoundVariableExpression v)
        public override Expression visit(QuantifiedExpression e)
        {
            Expression result = checkReplace(base.visit(e));
            return result;
        }

        public override Expression visit(QuantifiedTypeExpression e)
        {
            Expression result = checkReplace(base.visit(e));
            return result;
        }

        private Expression checkReplace(Expression e)
        {
            Expression result = database.simplifyExpression(e);
            return result;
        }


        ////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////
        //Statement visitors
        ////////////////////////////////////////////////////////////////////////////


        ////////////////////////////////////////////////////////////////////////////
        public override Statement visit(Assert s)
        {
//            var st = si.ToString();
            s.expression = s.expression.visit(this);

            int result = evaluatePredicateExpression(s.expression);
            if (result == 1)
            {
//true - delete statement
                return null;
            }
            if (result == -1) //false
                Console.Error.WriteLine("[{0}] Error: assertion evaluates to false: \"{1}\"",
                                        database.statementId.ToString(), s);

            database.assume(s.expression);

            return s;
        }

        ////////////////////////////////////////////////////////////////////////////
        public override Statement visit(Assume s)
        {
            //            var st = si.ToString();
            s.expression = s.expression.visit(this);

            int result = evaluatePredicateExpression(s.expression);
            if (result == 1) //true - delete statement
            {
//true - delete statement
                return null;
            }
            if (result == -1) //false
                Console.Error.WriteLine("[{0}] Warning: assumption evaluates to false: \"{1}\"",
                                        database.statementId.ToString(), s);
            database.assume(s.expression);

            if (firstOccurenceVariables.Count > 0)
                checkAssignment(s);

            return s;
        }

        ////////////////////////////////////////////////////////////////////////////
        public override Statement visit(ConditionalBranch s)
        {
            ControlStatement result = s;

//            var ne = si.fae.visit(this);
            ProgramVariable oc = s.condition;
            ProgramVariable nc = s.condition;

            EqualityDatabase.Representative rep = database.tryGetRepresentative(s.condition);

            if (rep != null)
            {
                Expression ne = rep.expression;

                if (ne is LiteralExpression)
                {
                    if (((ne as LiteralExpression).value as BooleanValue).value)
                        result = new UnconditionalBranch(s.trueBranch.source, s.trueBranch.target);
                    else
                        result = new UnconditionalBranch(s.falseBranch.source, s.falseBranch.target);
                    nc = null;
                }
                else
                {
                    if (ne is ProgramVariableExpression)
                    {
                        s.condition = (ne as ProgramVariableExpression).programVariable;
                        nc = s.condition;
                    }
                    else
                    {
                        nc =
                            (EqualityDatabase.getCompactNegationIfBoolean(ne) as ProgramVariableExpression).
                                programVariable;

                        result = new ConditionalBranch(
                            database.statementId.basicBlock,
                            nc,
                            s.falseBranch.target,
                            s.trueBranch.target
                            );
                    }
                }
            }

            if (nc != null && !database.conditionVariableIndices.ContainsKey(nc.name))
                database.addConditionVariable(nc);

            return result;
        }

//        public virtual Statement visit(UnconditionalBranch si)
//        public virtual Statement visit(Block si)

        ////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////
        private void checkAssignment(Assume s)
        {
            var fae = s.expression as FAE;
            if (fae == null || !BFunction.isEquality(fae.function))
                return;

            Expression arg0 = fae.arguments[0];
            Expression arg1 = fae.arguments[1];

            string arg0s = arg0.ToString();
            string arg1s = arg1.ToString();

            bool arg0new = firstOccurenceVariables.Contains(arg0s);
            bool arg1new = firstOccurenceVariables.Contains(arg1s);

            //            Debug.Assert(!(arg0new && arg1new)); //should be supported

            string key = null;
            Expression value = null;
            if (arg0new) // && !arg1new)
            {
                key = arg0s;
                value = arg1;
            }
            else if (!arg0new && arg1new)
            {
                key = arg1s;
                value = arg0;
            }

            if (key != null)
                assignmentMap.addIfNotAssigned(key, value);
        }

        ////////////////////////////////////////////////////////////////////////////
        private int evaluatePredicateExpression(Expression expression)
        {
            if (database.isFact(expression))
            {
                return 1;
            }
            if (database.isFact(EqualityDatabase.getCompactNegationIfBoolean(expression)))
                return -1;
            var le = expression as LiteralExpression;
            if (le != null)
            {
                Debug.Assert(le.type is BooleanType);
                return ((le.value as BooleanValue).value) ? 1 : -1;
            }
            return 0;
        }

        ////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////
    }
}