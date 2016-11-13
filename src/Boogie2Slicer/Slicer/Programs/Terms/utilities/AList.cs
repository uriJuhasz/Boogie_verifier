using System;
using System.Collections.Generic;
using System.Diagnostics;
using Slicer.StateSpace;

namespace Slicer.Programs.Terms
{
    public abstract class AList<L,E> : System.Collections.Generic.IEnumerable<E> 
        where L : AList<L,E>
        where E : Term
    {
        ///////////////////////////////////////////////////////////////
        //Empty list
        public AList()
        {
            this.expressions = new LinkedList<E>();
        }

        ///////////////////////////////////////////////////////////////
        public AList(IEnumerable<E> expressions){
            this.expressions = new LinkedList<E>(expressions);
        }

        ///////////////////////////////////////////////////////////////
        public void visit(Visitor visitor)
        {
            foreach (var e in expressions)
                e.visit(visitor);
        }

        ///////////////////////////////////////////////////////////////
        public abstract L make(IEnumerable<E> other);

        ///////////////////////////////////////////////////////////////
        public L shallowClone()
        {
            return make(this.expressions);
        }


        ///////////////////////////////////////////////////////////////
        public abstract E deepCloneE(E e);

        ///////////////////////////////////////////////////////////////
        internal L deepClone()
        {
            LinkedList<E> c = new LinkedList<E>();
            foreach (var e in expressions)
                c.AddLast(deepCloneE(e));
            return make(c);
        }

        ///////////////////////////////////////////////////////////////
        internal void append(E expression)
        {
            expressions.AddLast(expression);
        }

        ///////////////////////////////////////////////////////////////
        public int count
        {
            get {return expressions.Count;}
        }

        ///////////////////////////////////////////////////////////////
        public E this[int i]
        {
            get
            {
                Debug.Assert(i >= 0);
                Debug.Assert(i < expressions.Count);

                System.Collections.Generic.IEnumerator<E> ie = expressions.GetEnumerator();
                ie.MoveNext();
                for (int j = 0; j < i; j++)
                    ie.MoveNext();

                return ie.Current;
            }
        }

        System.Collections.Generic.IEnumerator<E> System.Collections.Generic.IEnumerable<E>.GetEnumerator()
        {
            return expressions.GetEnumerator();
        }

        System.Collections.IEnumerator System.Collections.IEnumerable.GetEnumerator()
        {
            return expressions.GetEnumerator(); // System.Collections.Generic.IEnumerable<E>.GetEnumerator(); // this.GetEnumerator();
        }

        ///////////////////////////////////////////////////////////////
        public override string ToString()
        {
            string result = "(";
            foreach (var e in expressions)
                result += e.ToString() + " ";
            return result += ")";
        }

        ///////////////////////////////////////////////////////////////
        private System.Collections.Generic.LinkedList<E> expressions;

    }
}
