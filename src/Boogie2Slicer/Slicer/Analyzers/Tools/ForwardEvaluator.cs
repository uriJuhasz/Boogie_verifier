using System;
using System.Collections.Generic;
using System.Linq;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;
using Slicer.StateSpace;

namespace Slicer.Analyzers.Tools
{
    public class ForwardEvaluator<A> : Evaluator<A> where A : Analyzer<A> //, new()
    {
        /////////////////////////////////////////////////////////
        public ForwardEvaluator(Procedure program, A dummy)
            : base(program, dummy)
        {
        }

        /////////////////////////////////////////////////////////
        protected override StatementId analyzeStart()
        {
            return StatementIdImp.makeFirst(procedure.cfg.startNode);
        }

        /////////////////////////////////////////////////////////
        protected override StateInformation getPrestate(StatementId s)
        {
            return s.preStates;
        }

        /////////////////////////////////////////////////////////
        protected override StateInformation getPoststate(StatementId s)
        {
            return s.postStates;
        }

        /////////////////////////////////////////////////////////
        protected override IEnumerable<Tuple<BasicEdge.Guard, StatementId>> getPredecessors(StatementId s)
        {
            return s.predecessors;
        }

        /////////////////////////////////////////////////////////
        protected override IEnumerable<Tuple<BasicEdge.Guard, StatementId>> getSuccessors(StatementId s)
        {
            return s.successors;
        }

        /////////////////////////////////////////////////////////
        protected override IEnumerable<Tuple<BasicEdge.Guard, StatementId>> getSuccessors(StatementId si,
                                                                                          ControlStatement cs)
        {
            return from s in cs.successors
                   select new Tuple<BasicEdge.Guard, StatementId>(s.guard, s.target.statements[0].statementId);
        }
    }
}