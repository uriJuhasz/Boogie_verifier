using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Slicer.Programs.Statements;

namespace Slicer.Transformations
{
    abstract class TraversalNode<T,A,E> where T : TraversalNode<T,A> where A : Analysis<A> where E : Evaluator<A,E>
    {
        public TraversalNode(){
        }

        void evaluate()
        {
            LinkedList<A> predecessorStates = new LinkedList<A>();
            foreach (T n in getPredecessors())
                predecessorStates.AddLast(n.poststate);
            prestate.join(predecessorStates);
            poststate.propagate(prestate,getStatement());
        }

        public abstract void getStatement();
        public abstract void IEnumerable<T> getPredecessors();
        public abstract void IEnumerable<T> getSuccessors();

        A prestate,poststate;
    }
}
