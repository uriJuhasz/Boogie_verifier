using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;

namespace Slicer.Programs.CFG
{
    public class CFG<N, E>
        where N : CFGNode<N, E>, new()
        where E : CFGEdge<N, E>
    {
        //////////////////////////////////////////////////////////////////
        private readonly Dictionary<string, N> labelMap = new Dictionary<string, N>();
        public N endNode;
        public N startNode;

        //////////////////////////////////////////////////////////////////
        public CFG()
        {
            labelMap = new Dictionary<string, N>();
        }

        public ICollection<N> nodes
        {
            get { return labelMap.Values; }
        }

        //////////////////////////////////////////////////////////////////
        public bool hasLabel(string label)
        {
            return labelMap.ContainsKey(label);
        }

        //////////////////////////////////////////////////////////////////
        public void validate()
        {
            Debug.Assert(startNode != null);
            foreach (var bb in nodes)
            {
                foreach (var e in bb.successors)
                {
                    Debug.Assert(ReferenceEquals(e.source, bb));
                    Debug.Assert(e.target.predecessors.Contains(e));
                }
                foreach (var e in bb.predecessors)
                {
                    Debug.Assert(ReferenceEquals(e.target, bb));
                    Debug.Assert(e.source.successors.Contains(e));
                }
            }
        }

        //////////////////////////////////////////////////////////////////
        public void contractEmptyNodes(Predicate<N> isEmpty)
        {
            var contractedNodes = new List<string>();
            foreach (var n in labelMap.Values)
                if (isEmpty(n) && n.successors.Count() == 1)
                {
                    contract(n);
                    contractedNodes.Add(n.label);
                }

            foreach (var l in contractedNodes)
                labelMap.Remove(l);
        }

        //////////////////////////////////////////////////////////////////
        private void contract(N n)
        {
            Debug.Assert(n.successors.Count() == 1);
            N next = n.successors.First().target;
            next.removePredecessor(n.successors.First());
            var preds = new List<CFGEdge<N, E>>();
            foreach (var be in n.predecessors)
                preds.Add(be);
            foreach (E be in preds)
                be.setTarget(next);
        }

        //////////////////////////////////////////////////////////////////
        public void setStartNode(string label)
        {
            Debug.Assert(labelMap.ContainsKey(label));
//            Debug.Assert(startNode == null);
            startNode = labelMap[label];
            Debug.Assert(startNode.predecessors.Count() == 0);
        }

        //////////////////////////////////////////////////////////////////
        public void setEndNode(string label)
        {
            Debug.Assert(labelMap.ContainsKey(label));
//            Debug.Assert(endNode == null);
            endNode = labelMap[label];
            Debug.Assert(endNode.successors.Count() == 0);
        }

        //////////////////////////////////////////////////////////////////
        public N lookupOrAddNode(string label)
        {
            if (labelMap.ContainsKey(label))
                return labelMap[label];
            else
            {
                var n = new N();
                n.label = label;
                n.cfg = this;
                labelMap.Add(label, n);
                return n;
            }
        }

        //////////////////////////////////////////////////////////////////
        public N addNode(string label)
        {
            if (labelMap.ContainsKey(label))
            {
                N result = labelMap[label];
                return result;
            }
            else
            {
                var n = new N();
                n.label = label;
                n.cfg = this;
                labelMap.Add(label, n);
                return n;
            }
        }

        //////////////////////////////////////////////////////////////////
        public void removeNode(string label)
        {
            Debug.Assert(labelMap.ContainsKey(label));
            Debug.Assert(startNode==null || startNode.label != label);
            Debug.Assert(endNode==null || endNode.label != label);
            N n = labelMap[label];
            Debug.Assert(n.successors.Count == 0);
            Debug.Assert(n.predecessors.Count == 0);
            labelMap.Remove(label);
        }

        //////////////////////////////////////////////////////////////////

        //////////////////////////////////////////////////////////////////
        public long getPathCount(String start, String end)
        {
            Debug.Assert(labelMap.ContainsKey(start));
            Debug.Assert(labelMap.ContainsKey(end));

            var pathNodes = new Dictionary<string, PathCountNode>();
            var workList = new Queue<PathCountNode>();

            workList.Enqueue(new PathCountNode(labelMap[start], 1));
            while (workList.Count > 0)
            {
                PathCountNode n = workList.Dequeue();
                Debug.Assert(n.numUnresolvedPredecessors == 0);
                foreach (var ne in n.node.successors)
                {
                    N nn = ne.target;

                    PathCountNode npn = null;
                    if (pathNodes.ContainsKey(nn.label))
                        npn = pathNodes[nn.label];
                    else
                    {
                        npn = new PathCountNode(nn, 0);
                        pathNodes.Add(nn.label, npn);
                    }
                    npn.numPathsFromSource += n.numPathsFromSource;
                    Debug.Assert(npn.numUnresolvedPredecessors > 0);
                    npn.numUnresolvedPredecessors--;

                    if (npn.numUnresolvedPredecessors == 0)
                    {
                        workList.Enqueue(npn);
                    }
                }
            }
            {
                foreach (var n in pathNodes.Values)
                    if (n.numUnresolvedPredecessors > 0)
                        Console.Error.WriteLine("Warning: Node \"" + n.node.label +
                                                "\" is part of m cycle with no back edges");
            }
            if (!pathNodes.ContainsKey(end))
            {
                Console.Error.WriteLine("Warning: \"" + end + "\" not reachable from \"" + start + "\"");
                return 0;
            }
            return pathNodes[end].numPathsFromSource;
        }

        #region Nested type: PathCountNode

        private class PathCountNode
        {
            internal readonly N node;
            internal long numPathsFromSource;
            internal int numUnresolvedPredecessors;

            internal PathCountNode(N node, long paths)
            {
                Debug.Assert(node != null);
                this.node = node;
                numUnresolvedPredecessors = node.predecessors.Count();
                numPathsFromSource = paths;
            }
        }

        #endregion

        //////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////
    }
}