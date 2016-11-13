using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Slicer.Programs.Terms.Boogie
{
    interface BoogieTerm : Term
    {
        Microsoft.Boogie.Expr boogieExpression { get; }
    }
}
