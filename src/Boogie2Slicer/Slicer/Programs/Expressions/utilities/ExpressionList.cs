using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.StateSpace.Types.Quantification;
using Slicer.StateSpace.Variables.Quantification;

namespace Slicer.Programs.Expressions.utilities
{
    public class ExpressionList : IEnumerable<Expression> // : AList<ExpressionList,Expression>
    {
        ///////////////////////////////////////////////////////////////
        //Empty list
        protected readonly List<Expression> expressions;

        public ExpressionList()
            : this(new Expression[0])
        {
        }

        ///////////////////////////////////////////////////////////////
        public ExpressionList(Expression expression)
            : this(new Expression[1] {expression})
        {
        }

        ///////////////////////////////////////////////////////////////
        public ExpressionList(Expression expression1, Expression expression2)
            : this(new Expression[2] {expression1, expression2})
        {
        }

        ///////////////////////////////////////////////////////////////
        public ExpressionList(IEnumerable<Expression> expressions)
        {
            Debug.Assert(expressions != null);
            foreach (var e in expressions)
                Debug.Assert(e != null);
            this.expressions = new List<Expression>(expressions);
        }

        ///////////////////////////////////////////////////////////////

        ///////////////////////////////////////////////////////////////
        public int count
        {
            get { return expressions.Count; }
        }

        ///////////////////////////////////////////////////////////////
        public bool isGround
        {
            get
            {
                foreach (var e in expressions)
                    if (!e.isGround)
                        return false;
                return true;
            }
        }

        ///////////////////////////////////////////////////////////////
        public Expression this[int i]
        {
            get
            {
                Debug.Assert(i >= 0);
                Debug.Assert(i < expressions.Count);

                IEnumerator<Expression> ie = expressions.GetEnumerator();
                ie.MoveNext();
                for (int j = 0; j < i; j++)
                    ie.MoveNext();

                return ie.Current;
            }
        }

        public ISet<BoundVariable> freeVariables
        {
            get
            {
                var s = new HashSet<BoundVariable>();
                foreach (var a in expressions)
                    s.UnionWith(a.freeVariables);
                return s;
            }
        }

        public ISet<TypeVariable> freeTypeVariables
        {
            get
            {
                var s = new HashSet<TypeVariable>();
                foreach (var a in expressions)
                    s.UnionWith(a.freeTypeVariables);
                return s;
            }
        }

        #region IEnumerable<Expression> Members

        public IEnumerator<Expression> GetEnumerator()
        {
            return expressions.GetEnumerator();
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return expressions.GetEnumerator();
        }

        #endregion

        public ExpressionList visit(ExpressionVisitor visitor)
        {
            var ne = new Expression[expressions.Count];

            bool rn = false;
            for (int i = 0; i < expressions.Count; i++)
            {
                ne[i] = expressions[i].visit(visitor);
                if (!ReferenceEquals(ne[i], expressions[i]))
                    rn = true;
            }
            var result = (rn) ? new ExpressionList(ne) : this;
//                result return this;
            return result;
        }

        ///////////////////////////////////////////////////////////////
        public ExpressionList make(IEnumerable<Expression> other)
        {
            return new ExpressionList(other);
        }

        ///////////////////////////////////////////////////////////////
        public override string ToString()
        {
            string result = "(";
            for (int i = 0; i < expressions.Count; i++)
                result += ((i != 0) ? "," : "") + expressions[i].ToString();
            return result += ")";
        }

        ///////////////////////////////////////////////////////////////

        ///////////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////////
        internal ExpressionList substitute(ExpressionSubstitution s)
        {
            return new ExpressionList(from e in expressions select e.substitute(s));
        }
    }
}