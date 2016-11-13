namespace Slicer.Programs.CFG
{
    public interface CFGEdge<N, E>
        where N : CFGNode<N, E>, new()
        where E : CFGEdge<N, E>
    {
        N source { get; }
        N target { get; }

        void setTarget(N target);
    }
}