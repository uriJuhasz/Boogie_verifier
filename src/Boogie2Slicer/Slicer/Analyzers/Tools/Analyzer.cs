using System;
using System.Collections.Generic;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;
using Slicer.StateSpace;

namespace Slicer.Analyzers.Tools
{
    public interface Analyzer<A> where A : Analyzer<A>
    {
        string domainName { get; }
        Procedure procedure { get; }

        void initializeStart(StatementId si);
        void join(ICollection<Tuple<BasicEdge.Guard, A>> predecessors, StatementId si);
        Statement propagate(A prestate, StatementId s);
        A extract(StateInformation si);


        string ToString();
    }
}