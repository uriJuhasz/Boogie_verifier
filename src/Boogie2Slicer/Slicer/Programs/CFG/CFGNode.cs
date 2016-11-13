using System.Collections.Generic;

namespace Slicer.Programs.CFG
{
    public interface CFGNode<N, E>
        where N : CFGNode<N, E>, new()
        where E : CFGEdge<N, E>
    {
        CFG<N, E> cfg { get; set; }
        string label { get; set; }

        IList<E> successors { get; }
        IList<E> predecessors { get; }

        void removePredecessor(E e);
    }
}