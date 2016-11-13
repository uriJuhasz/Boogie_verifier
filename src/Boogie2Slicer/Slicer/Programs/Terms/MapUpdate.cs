using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Slicer.Programs.Expressions.utilities;
using Slicer.StateSpace;

namespace Slicer.Programs.Expressions
{
    public interface MapUpdate : FunctionApplication
    {
        Variable   map     { get; }
        ExpressionList       indices { get; }
        Expression value   { get; }
    }
}
