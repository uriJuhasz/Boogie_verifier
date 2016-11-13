using System;
using System.Collections.Generic;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;
using Slicer.StateSpace;

namespace Slicer.Analyzers.Tools
{
    internal class BackwardEvaluator<A> : Evaluator<A> where A : Analyzer<A>
    {
        /////////////////////////////////////////////////////////
        public BackwardEvaluator(Procedure procedure, A dummy)
            : base(procedure, dummy)
        {
        }

        /////////////////////////////////////////////////////////
        protected override StatementId analyzeStart()
        {
            return StatementIdImp.makeLast(procedure.cfg.endNode);
        }

        /////////////////////////////////////////////////////////
        protected override StateInformation getPrestate(StatementId s)
        {
            return s.postStates;
        }

        /////////////////////////////////////////////////////////
        protected override StateInformation getPoststate(StatementId s)
        {
            return s.preStates;
        }

        /////////////////////////////////////////////////////////
        protected override IEnumerable<Tuple<BasicEdge.Guard, StatementId>> getPredecessors(StatementId s)
        {
            return s.successors;
        }

        /////////////////////////////////////////////////////////
        protected override IEnumerable<Tuple<BasicEdge.Guard, StatementId>> getSuccessors(StatementId si)
        {
            return si.predecessors;
        }

        /////////////////////////////////////////////////////////
        protected override IEnumerable<Tuple<BasicEdge.Guard, StatementId>> getSuccessors(StatementId si,
                                                                                          ControlStatement cs)
        {
            return si.predecessors;
        }
    }
}