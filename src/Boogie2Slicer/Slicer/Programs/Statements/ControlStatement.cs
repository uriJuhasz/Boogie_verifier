using System.Collections.Generic;
using Slicer.Programs.Procedures;

namespace Slicer.Programs.Statements
{
    public abstract class ControlStatement : StatementImp, Statement
    {
        public abstract List<BasicEdge> successors { get; }
    }
}