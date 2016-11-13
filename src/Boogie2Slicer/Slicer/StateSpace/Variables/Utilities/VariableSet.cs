using System;
using System.Collections.Generic;

namespace Slicer.StateSpace.Variables.Utilities
{
    public class VariableSet
    {
        //////////////////////////////////////////////////////////////

        #region Delegates

        public delegate ProgramVariable ModifyingVisitor(ProgramVariable v);

        #endregion

        private Dictionary<String, ProgramVariable> value;

        public VariableSet()
        {
            value = new Dictionary<string, ProgramVariable>();
        }

        //////////////////////////////////////////////////////////////
        public VariableSet(ProgramVariable condition)
        {
            value = new Dictionary<string, ProgramVariable>();
            include(condition);
        }

        //////////////////////////////////////////////////////////////

        public void apply(ModifyingVisitor visitor)
        {
            var newValue = new Dictionary<string, ProgramVariable>();
            foreach (var kv in value)
            {
                ProgramVariable v = visitor(kv.Value);
                newValue.Add(v.name, v);
            }
            value = newValue;
        }

        //////////////////////////////////////////////////////////////
        public IEnumerator<ProgramVariable> GetEnumerator()
        {
            return value.Values.GetEnumerator();
        }

        //////////////////////////////////////////////////////////////
        public void include(ProgramVariable v)
        {
            if (!value.ContainsKey(v.name))
                value.Add(v.name, v);
        }

        //////////////////////////////////////////////////////////////
        public void include(VariableSet vs)
        {
            foreach (var v in vs.value.Values)
                include(v);
        }

        //////////////////////////////////////////////////////////////
        //Exclude v if in set, nop otherwise
        public void exclude(ProgramVariable v)
        {
            if (value.ContainsKey(v.name))
                if (value[v.name] == v)
                    value.Remove(v.name);
                else
                    throw new Exception("Internal error - scoping error with programVariable \"" + v.name + "\"");
        }

        //////////////////////////////////////////////////////////////
        //Exclude v if in set, nop otherwise
        public void exclude(VariableSet vs)
        {
            foreach (var v in vs.value.Values)
                exclude(v);
        }

        //////////////////////////////////////////////////////////////
        public bool has(ProgramVariable v)
        {
            return value.ContainsKey(v.name);
        }

        public VariableSet getIntersectionWith(VariableSet other)
        {
            var result = new VariableSet();

            foreach (var v in value.Values)
                if (other.has(v))
                    result.include(v);
            return result;
        }

        //////////////////////////////////////////////////////////////
        public override string ToString()
        {
            string result = "{";

            bool first = true;
            foreach (var kvp in value)
            {
                if (!first)
                    result += ",";
                else
                    first = false;
                result += kvp.Value.name;
            }
            result += "}";
            return result;
        }

        //////////////////////////////////////////////////////////////
        internal VariableSet clone()
        {
            var result = new VariableSet();
            foreach (var v in value.Values)
                result.include(v);
            return result;
        }

        //////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////

        internal ProgramVariable find(string p)
        {
            return value[p];
        }

        internal void clear()
        {
            value = new Dictionary<string, ProgramVariable>();
        }
    }
}