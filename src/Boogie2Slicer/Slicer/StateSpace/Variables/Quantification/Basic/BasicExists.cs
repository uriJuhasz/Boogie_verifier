namespace Slicer.StateSpace.Variables.Quantification.Basic
{
    internal class BasicExists : IExists
    {
        public static BasicExists get = new BasicExists();

        private BasicExists()
        {
        }

        #region Exists Members

        public override string ToString()
        {
            return "exists";
        }
        public bool isForall { get { return false; } }
        public bool isExists { get { return true; } }

        #endregion
    }
}