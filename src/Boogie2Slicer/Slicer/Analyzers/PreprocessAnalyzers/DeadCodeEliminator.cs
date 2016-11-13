using System;
using System.Collections.Generic;
using System.Diagnostics;
using Slicer.Analyzers.Tools;
using Slicer.Programs.Expressions;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;
using Slicer.StateSpace;
using Slicer.StateSpace.Variables;

namespace Slicer.Analyzers
{
    public class DeadCodeEliminator : AVisitor, Analyzer<DeadCodeEliminator>
    {
        private InitializedVariables initializedVariables;
        public HashSet<string> liveVariables;

        public DeadCodeEliminator(Procedure procedure)
            : base(procedure)
        {
        }

        #region Analyzer<DeadCodeEliminator> Members

        public string domainName
        {
            get { return "Dead Code Eliminator"; }
        }

        public void initializeStart(StatementId si)
        {
            liveVariables = new HashSet<string>();
        }

        public void join(ICollection<Tuple<BasicEdge.Guard, DeadCodeEliminator>> predecessors, StatementId si)
        {
            liveVariables = new HashSet<string>();
            foreach (var p in predecessors)
                foreach (var v in p.Item2.liveVariables)
                    liveVariables.Add(v);
        }

        public Statement propagate(DeadCodeEliminator prestate, StatementId si)
        {
            liveVariables = new HashSet<string>();
            foreach (var v in prestate.liveVariables)
                liveVariables.Add(v);

            Statement ns = si.statement.visit(this);

            return ns;
        }

        public DeadCodeEliminator extract(StateInformation si)
        {
            if (si.deadCodeEliminator == null)
                si.deadCodeEliminator = new DeadCodeEliminator(procedure);

            si.deadCodeEliminator.initializedVariables = si.initializedVariables;
            Debug.Assert(si.deadCodeEliminator.initializedVariables != null);
            return si.deadCodeEliminator;
        }

        #endregion

        public override ProgramVariable visitReadProgramVariable(ProgramVariable v)
        {
            if (!v.isConstant && !v.isGlobal && !v.isInput)
                liveVariables.Add(v.name);
            return v;
        }

        public override ProgramVariable visitWriteProgramVariable(ProgramVariable v)
        {
            liveVariables.Remove(v.name);
            return v;
        }

        public override Statement visit(Assume s)
        {
            var fae = s.expression as FAE;
            if (fae != null && fae.function.name == "==")
            {
                var pv0 = fae.arguments[0] as ProgramVariableExpression;
                var pv1 = fae.arguments[1] as ProgramVariableExpression;


                bool pv0i = pv0 != null &&
                            (initializedVariables.firstOccurence.ContainsKey(pv0.programVariable.name) ||
                             pv0.programVariable.isInput || pv0.programVariable.isGlobal);
                bool pv0l = pv0 != null && liveVariables.Contains(pv0.programVariable.name);

                bool pv1i = pv1 != null &&
                            (initializedVariables.firstOccurence.ContainsKey(pv1.programVariable.name) ||
                             pv1.programVariable.isInput || pv1.programVariable.isGlobal);
                bool pv1l = pv1 != null && liveVariables.Contains(pv1.programVariable.name);

                if ((pv0 != null && !pv0i && !pv0l) || (pv1 != null && !pv1i && !pv1l))
                {
                    return null;
                }
            }
            return base.visit(s);
        }
    }
}