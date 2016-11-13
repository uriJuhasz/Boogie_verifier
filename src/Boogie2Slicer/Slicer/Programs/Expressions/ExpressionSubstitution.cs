using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.StateSpace.Functions;
using Slicer.StateSpace.Variables.Quantification;

namespace Slicer.Programs.Expressions
{
    public class ExpressionSubstitution
    {
        private readonly Dictionary<string, Expression> map = new Dictionary<string, Expression>();

        public ExpressionSubstitution()
        {
            typeSubstitution = new TypeParameterInstantiation();
        }

        public ExpressionSubstitution(BoundVariable v, Expression e)
            : this()
        {
            add(v.name, e);
        }

        public ExpressionSubstitution(BoundVariable[] bvs, Expression[] expressions)
            : this()
        {
            Debug.Assert(bvs.Count() == expressions.Count());
            for (int i = 0; i < bvs.Count(); i++)
                add(bvs[i].name, expressions[i]);
        }

        public TypeParameterInstantiation typeSubstitution { get; private set; }

        public Expression lookup(string name)
        {
            Expression result;
            if (map.TryGetValue(name, out result))
                return result;
            return null;
        }

        public void add(string name, Expression value)
        {
            Debug.Assert(!map.ContainsKey(name));
            map.Add(name, value);
        }

        public void remove(string name)
        {
            Debug.Assert(map.ContainsKey(name));
            map.Remove(name);
        }

        public override string ToString()
        {
            string result = "";
            foreach (var kv in map)
                result += " " + kv.Key + "->" + kv.Value.ToString();
            result += " " + typeSubstitution;
            return result;
        }
    }
}