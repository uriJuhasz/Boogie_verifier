using System;

namespace Slicer.StateSpace.Types.Quantification.Basic
{
    internal class BasicTypeForall : TypeForall
    {
        public static BasicTypeForall get = new BasicTypeForall();

        private BasicTypeForall()
        {
        }

        #region TypeForall Members

        public override String ToString()
        {
            return "forall";
        }

        #endregion
    }
}