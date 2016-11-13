using System;
using System.Collections.Generic;
using Slicer.Programs;
using Slicer.Statements;
using System.Diagnostics;
using Slicer.StateSpace;

namespace Slicer.Analyzers
{
    class ForwardInitializedVariables
    {
        /////////////////////////////////////////////////////////
        public ForwardInitializedVariables(Program program)
        {
            this.program = program;
        }

        /////////////////////////////////////////////////////////
        private class StatementForwardPropagationState
        {
            public StatementForwardPropagationState(Statement statement)
            {
                this.statement = statement;
                this.numIncompletePredecessors = statement.getPredecessors().Count;
            }

            public Statement statement { get; private set; }
            public int numIncompletePredecessors;// { get; private set; }
//            public LinkedList<StatementForwardPropagationState> successors;
        }

        /////////////////////////////////////////////////////////
        public void analyze(Statement start)
        {
            Debug.Assert(start != null);
            
            incompleteNodes = new Dictionary<string, StatementForwardPropagationState>();
            ready = new Queue<Statement>();

            ready.Enqueue(start);

            while (ready.Count > 0)
            {
                propagate(ready.Dequeue());
            }
        }

        /////////////////////////////////////////////////////////
        void propagate(Statement s)
        {
            System.Console.WriteLine("Propagating \"" + s.getLabel() + "\"");

            List<InitializedVariables> predecessors = new List<InitializedVariables>();
            foreach (Statement ps in s.getPredecessors())
                predecessors.Add(ps.postStates.initializedVariables);
            
            s.preStates.initializedVariables.join(predecessors);
            s.postStates.initializedVariables.propagate(s.preStates.initializedVariables, s);

            foreach (Statement ss in s.getSuccessors())
            {
                StatementForwardPropagationState ssps;
                if (incompleteNodes.TryGetValue(ss.getLabel(), out ssps))
                {
                    ssps.numIncompletePredecessors--;
                    if (ssps.numIncompletePredecessors == 0)
                    {
                        incompleteNodes.Remove(ss.getLabel());
                        ready.Enqueue(ss);
                    }
                }
                else
                {
                    if (ss.getPredecessors().Count == 1)
                        ready.Enqueue(ss);
                    else
                        incompleteNodes.Add(ss.getLabel(), new StatementForwardPropagationState(ss));
                }

            }
            System.Console.WriteLine("\t pre  initialized variables = " + s.preStates.initializedVariables.toString());
            System.Console.WriteLine("\t\t Expression = " + s.getExpression().toString() );
            System.Console.WriteLine("\t post initialized variables = " + s.postStates.initializedVariables.toString());
        }

        /////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////
        private Program program;
        private Dictionary<string, StatementForwardPropagationState> incompleteNodes;
        private Queue<Statement> ready;
    }
}
