using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Analyzers.Tools;
using Slicer.Programs.Conditions;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;
using Slicer.StateSpace;
using Slicer.StateSpace.Variables;

namespace Slicer.Analyzers
{
    public class InitializedVariables : AVisitor, Analyzer<InitializedVariables>
    {
        private StatementId currentStatement;
        public Dictionary<string, Dictionary<string, Tuple<PropositionalFormula, StatementId>>> firstOccurence;
        private PropositionalFormula pathCondition;

        public InitializedVariables(Procedure procedure)
            : base(procedure)
        {
        }

        #region Analyzer<InitializedVariables> Members

        public InitializedVariables extract(StateInformation si)
        {
            if (si.initializedVariables == null)
                si.initializedVariables = new InitializedVariables(procedure);
            else
            {
                Debug.Assert(si.initializedVariables.procedure != null);
            }
            if (si.equalityAnalyzer == null || si.equalityAnalyzer.pathCondition == null)
                si.initializedVariables.pathCondition = new PropositionalFormula(true);
            else
                si.initializedVariables.pathCondition = si.equalityAnalyzer.pathCondition;
            return si.initializedVariables;
        }

        public string domainName
        {
            get { return "Initialized Variables"; }
        }

        public void initializeStart(StatementId si)
        {
            firstOccurence = new Dictionary<string, Dictionary<string, Tuple<PropositionalFormula, StatementId>>>();
        }

        public void join(ICollection<Tuple<BasicEdge.Guard, InitializedVariables>> predecessors, StatementId si)
        {
//            Console.WriteLine("join({0} : {1})", si.ToString(),si.statement.ToString());
            firstOccurence = new Dictionary<string, Dictionary<string, Tuple<PropositionalFormula, StatementId>>>();

            if (predecessors.Count == 1)
            {
                firstOccurence =
                    new Dictionary<string, Dictionary<string, Tuple<PropositionalFormula, StatementId>>>(
                        predecessors.First().Item2.firstOccurence);
            }
            else
                foreach (var p in predecessors)
                    foreach (var v in p.Item2.firstOccurence)
                    {
                        Dictionary<string, Tuple<PropositionalFormula, StatementId>> l = null;
                        if (!firstOccurence.TryGetValue(v.Key, out l))
                        {
                            l = new Dictionary<string, Tuple<PropositionalFormula, StatementId>>();
                            firstOccurence.Add(v.Key, l);
                        }

                        foreach (var o in v.Value)
                        {
                            if (!l.ContainsKey(o.Key))
                                l.Add(o.Key, o.Value);
                            else
                                l[o.Key] = new Tuple<PropositionalFormula, StatementId>(l[o.Key].Item1 | o.Value.Item1,
                                                                                        o.Value.Item2);
                        }
                    }
        }

        public Statement propagate(InitializedVariables prestate, StatementId si)
        {
//            Console.WriteLine("propagate({0} : {1})", si.ToString(), si.statement.ToString());
            firstOccurence =
                new Dictionary<string, Dictionary<string, Tuple<PropositionalFormula, StatementId>>>(
                    prestate.firstOccurence);
            currentStatement = si;
            si.statement.visit(this);
            currentStatement = null;
            return si.statement;
        }

        #endregion

        private void addFirstOccurenceIfNotInitialized(ProgramVariable v)
        {
            if (!firstOccurence.ContainsKey(v.name))
            {
                firstOccurence.Add(v.name, new Dictionary<string, Tuple<PropositionalFormula, StatementId>>());
                firstOccurence[v.name].Add(currentStatement.ToString(),
                                           new Tuple<PropositionalFormula, StatementId>(pathCondition, currentStatement));
            }
        }

        public override ProgramVariable visitReadProgramVariable(ProgramVariable v)
        {
            addFirstOccurenceIfNotInitialized(v);
            return v;
        }

        public override ProgramVariable visitWriteProgramVariable(ProgramVariable v)
        {
            addFirstOccurenceIfNotInitialized(v);
            return v;
        }
    }
}