using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Slicer.StateSpace;

namespace Slicer.Programs.Terms
{
    public interface Term
    {
        Term shallowClone();
        Term deepClone();

        void visit(TermVisitor v);
    }
}
