using System;
using System.Collections.Generic;
using Slicer.StateSpace;
using System.Diagnostics;

namespace Slicer.Programs.Terms
{
    public interface VariableTerm : Term
    {
        VariableTerm cloneVariable();
        string name { get; }
    }
}
