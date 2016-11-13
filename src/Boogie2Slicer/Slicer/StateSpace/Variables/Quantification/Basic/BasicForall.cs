using System;

namespace Slicer.StateSpace.Variables.Quantification.Basic
{
    internal class BasicForall : IForall
    {
        public static BasicForall get = new BasicForall();

        private BasicForall()
        {
        }

        #region Forall Members

        public override String ToString()
        {
            return "forall";
        }
        public bool isForall { get { return true; } }
        public bool isExists { get { return false; } }

        #endregion
    }
}