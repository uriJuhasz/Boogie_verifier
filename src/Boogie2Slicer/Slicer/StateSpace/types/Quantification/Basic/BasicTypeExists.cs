using System;

namespace Slicer.StateSpace.Types.Quantification.Basic
{
    internal class BasicTypeExists : TypeExists
    {
        public static BasicTypeExists get = new BasicTypeExists();

        private BasicTypeExists()
        {
        }

        #region TypeExists Members

        public override String ToString()
        {
            return "exists";
        }

        #endregion
    }
}