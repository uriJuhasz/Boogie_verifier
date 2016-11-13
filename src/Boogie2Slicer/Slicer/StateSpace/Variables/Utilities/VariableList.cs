using System.Collections.Generic;

namespace Slicer.StateSpace.Variables.Utilities
{
    public class VariableList
    {
        //////////////////////////////////////////////////////////////

        #region Delegates

        public delegate ProgramVariable ModifyingVisitor(ProgramVariable v);

        #endregion

        private List<ProgramVariable> value;

        public VariableList()
        {
            value = new List<ProgramVariable>();
        }

        //////////////////////////////////////////////////////////////
        public VariableList(IList<ProgramVariable> other)
        {
            value = new List<ProgramVariable>(other);
        }

        //////////////////////////////////////////////////////////////
        public VariableList(VariableList other)
            : this(other.value)
        {
        }

        //////////////////////////////////////////////////////////////
        public VariableList(ProgramVariable v)
            : this()
        {
            append(v);
        }

        //////////////////////////////////////////////////////////////

        public void apply(ModifyingVisitor v)
        {
            for (int i = 0; i < value.Count; i++)
                value[i] = v(value[i]);
        }

        //////////////////////////////////////////////////////////////
        public void clear()
        {
            value = new List<ProgramVariable>();
        }

        //////////////////////////////////////////////////////////////
        public IEnumerator<ProgramVariable> GetEnumerator()
        {
            return value.GetEnumerator();
        }

        //////////////////////////////////////////////////////////////
        public void append(ProgramVariable v)
        {
            value.Add(v);
        }

        //////////////////////////////////////////////////////////////
        public void append(VariableList other)
        {
            value.AddRange(other.value);
        }

        //////////////////////////////////////////////////////////////
        public override string ToString()
        {
            string result = "(";

            bool first = true;
            foreach (var v in value)
            {
                if (!first)
                    result += ",";
                else
                    first = false;
                result += v.name;
            }
            result += ")";
            return result;
        }

        //////////////////////////////////////////////////////////////
        internal VariableList clone()
        {
            return new VariableList(this);
        }

        //////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////
    }
}