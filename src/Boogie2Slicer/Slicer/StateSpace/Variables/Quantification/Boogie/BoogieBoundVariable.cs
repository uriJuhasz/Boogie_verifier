using System.Diagnostics;
using Slicer.StateSpace.Types;

namespace Slicer.StateSpace.Variables.Quantification.Boogie
{
    internal class BoogieBoundVariable : BoundVariable
    {
        private readonly Microsoft.Boogie.Variable boogieVariable;

        public BoogieBoundVariable(Microsoft.Boogie.Variable boogieVariable, IType type)
        {
            Debug.Assert(boogieVariable != null);

            this.boogieVariable = boogieVariable;
            this.type = type;
        }

        ///////////////////////////////////////////////////////////////////////////////////

        #region BoundVariable Members

        public string name
        {
            get { return boogieVariable.TypedIdent.Name; }
        }

        public IType type { get; private set; }

        //////////////////////////////////////////////////////////////////
        public override string ToString()
        {
            return boogieVariable.Name;
        }

        #endregion

        ///////////////////////////////////////////////////////////////////////////////////
    }
}