using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Slicer.Programs.Terms.Basic;

namespace Slicer.Programs.Terms
{
    public interface TermVisitor
    {
        void visit(ProgramVariableTerm     t);
        void visit(BoundVariableTerm       t);
        void visit(MapLookupTerm           t);
        void visit(FunctionApplicationTerm t);
    }
}
