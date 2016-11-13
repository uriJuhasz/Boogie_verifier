using System;
using System.Collections.Generic;
using Slicer.Programs;
using Slicer.Programs.Statements;
using Slicer.Programs.CFG;
using System.Diagnostics;

namespace Slicer.Transformations
{
    abstract class Evaluator<A, E>
        where A : Analysis<A>
        where E : Evaluator<A,E>
    {
        public class NodeInfo { };
    }
}
