using System;
using System.Collections.Generic;
using Slicer.Programs.Statements;
using Slicer.StateSpace;

namespace Slicer.Programs.Procedures
{
    public interface StatementId
    {
        Statement statement { get; set; }

        ICollection<Tuple<BasicEdge.Guard, StatementId>> successors { get; }
        ICollection<Tuple<BasicEdge.Guard, StatementId>> predecessors { get; }

        StateInformation preStates { get; }
        StateInformation postStates { get; }

        BasicBlock basicBlock { get; }
        int index { get; }

        string ToString();

        StatementId prependStatement(Statement statement);
        StatementId appendStatement(Statement statement);

        void delete();
    }
}