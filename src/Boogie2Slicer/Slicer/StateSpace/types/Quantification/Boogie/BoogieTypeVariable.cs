using System.Diagnostics;
using Slicer.StateSpace.Types.Quantification.Basic;

namespace Slicer.StateSpace.Types.Quantification.Boogie
{
    internal class BoogieTypeVariable : BasicTypeVariable
    {
        ////////////////////////////////////////////////////////////////////

        ////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////
        private readonly Microsoft.Boogie.TypeVariable boogieTypeVariable;

        public BoogieTypeVariable(Microsoft.Boogie.TypeVariable boogieTypeVariable)
            : base(boogieTypeVariable.Name)
        {
            Debug.Assert(boogieTypeVariable != null);

            this.boogieTypeVariable = boogieTypeVariable;
        }
    }
}