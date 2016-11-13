namespace Slicer.Analyzers.FOLConverter.Contexts
{
    public class ClauseTermContextIndex //Clause Term Context index
    {
        public readonly int argIndex;
        public readonly ClauseTermIndex contextCTI;
//        public readonly Appliable appliable;

        public ClauseTermContextIndex(ClauseTermIndex cti, int argIndex)
        {
            contextCTI = cti;
            this.argIndex = argIndex;
        }

        public override string ToString()
        {
            return contextCTI + ": " + "[" + argIndex + "]";
        }

        public override int GetHashCode()
        {
            return ToString().GetHashCode();
        }

        public override bool Equals(object obj)
        {
            var o = obj as ClauseTermContextIndex;
            return o != null && o.contextCTI == contextCTI && o.argIndex == argIndex;
        }
    }
}