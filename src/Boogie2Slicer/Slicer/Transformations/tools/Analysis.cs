using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Slicer.Programs.Statements;

namespace Slicer.Transformations
{
    interface Analysis<A> where A : Analysis<A>
    {
        IEnumerable<A> startup();
        void join(IEnumerable<A> predecessors);
        void propagate(A preState, Statement s);
    }
}
