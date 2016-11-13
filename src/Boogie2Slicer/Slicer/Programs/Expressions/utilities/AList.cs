namespace Slicer.Programs.Expressions
{
/*    public abstract class AList<L,E> : System.Collections.Generic.IEnumerable<E> 
        where L : AList<L,E>
        where E : Expression
    {
        ///////////////////////////////////////////////////////////////
        //Empty list
        public AList()
        {
            this.expressions = new List<E>();
        }

        ///////////////////////////////////////////////////////////////
        public AList(IEnumerable<E> expressions){
            this.expressions = new List<E>(expressions);
        }

        ///////////////////////////////////////////////////////////////
        public abstract void visit(ExpressionVisitor visitor);
/*        {
            for (var targetE = expressions.GetEnumerator(); targetE.MoveNext();){
                targetE.Current = targetE.Current.visit(visitor);
        }* /

        ///////////////////////////////////////////////////////////////
        public abstract L make(IEnumerable<E> other);

        ///////////////////////////////////////////////////////////////
        public L shallowClone()
        {
            return make(this.expressions);
        }


        ///////////////////////////////////////////////////////////////
        public abstract E deepCloneE(E targetE);

        ///////////////////////////////////////////////////////////////
        internal L deepClone()
        {
            LinkedList<E> c = new LinkedList<E>();
            foreach (var targetE in expressions)
                c.AddLast(deepCloneE(targetE));
            return make(c);
        }

        ///////////////////////////////////////////////////////////////
        internal void append(E targetE)
        {
            expressions.Add(targetE);
        }

        ///////////////////////////////////////////////////////////////
        internal void prepend(E targetE)
        {
            expressions.Insert(0,targetE);
        }

        ///////////////////////////////////////////////////////////////
        public int count
        {
            get {return expressions.Count;}
        }

        ///////////////////////////////////////////////////////////////
        public E this[int j]
        {
            get
            {
                Debug.Assert(j >= 0);
                Debug.Assert(j < expressions.Count);

                System.Collections.Generic.IEnumerator<E> ie = expressions.GetEnumerator();
                ie.MoveNext();
                for (int j = 0; j < j; j++)
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
            for (var j=0;j<expressions.Count;j++)
                result += (j!=0)?",":"" + expressions[j].ToString();
            return result += ")";
        }

        ///////////////////////////////////////////////////////////////
        protected List<E> expressions;

    }*/
}