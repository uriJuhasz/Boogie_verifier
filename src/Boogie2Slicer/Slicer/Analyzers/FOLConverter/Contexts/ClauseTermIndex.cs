namespace Slicer.Analyzers.FOLConverter.Contexts
{
    public class ClauseTermIndex //Clause Term index
    {
        public readonly int atomIndex;
        public readonly int position;
        public readonly int termIndex;

        public ClauseTermIndex(int atomIndex, int termIndex, int position)
        {
            this.atomIndex = atomIndex;
            this.termIndex = termIndex;
            this.position = position;
        }

        public override string ToString()
        {
            return atomIndex + "," + termIndex + "," + position;
        }

        public override int GetHashCode()
        {
            return ToString().GetHashCode();
        }

        public override bool Equals(object obj)
        {
            var o = obj as ClauseTermIndex;
            return o != null && o.atomIndex == atomIndex && o.termIndex == termIndex && o.position == position;
        }
    }
}