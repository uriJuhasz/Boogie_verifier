using System.Diagnostics;
using Slicer.StateSpace.Types;
using System.Collections.Generic;

namespace Slicer.StateSpace.Functions.Basic
{
    public class BasicFunctionSignature : FunctionSignature
    {
        public BasicFunctionSignature(IType resultType, IEnumerable<IType> arguments)
        {
            Debug.Assert(resultType != null);
            Debug.Assert(arguments != null);
            foreach (var a in arguments)
                Debug.Assert(a != null);
            this.resultType = resultType;
            argumentTypes = TypeTuple.make(arguments);
        }

        #region FunctionSignature Members

        public IType resultType { get; private set; }
        public ITypeTuple argumentTypes { get; private set; }

        #endregion
    }
}