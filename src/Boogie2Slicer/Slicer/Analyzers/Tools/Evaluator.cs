using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;
using Slicer.StateSpace;

namespace Slicer.Analyzers.Tools
{
    public abstract class Evaluator<A> where A : Analyzer<A> //, new()
    {
        /////////////////////////////////////////////////////////
        private readonly A dummyAnalyzer;
        protected readonly Procedure procedure;

        private Queue<StatementId> ready;

        public Evaluator(Procedure procedure, A dummy)
        {
            this.procedure = procedure;
            dummyAnalyzer = dummy;
//            this.extractor = extractor;
        }

        /////////////////////////////////////////////////////////
        protected abstract StatementId analyzeStart();
        protected abstract StateInformation getPrestate(StatementId s);
        protected abstract StateInformation getPoststate(StatementId s);
        protected abstract IEnumerable<Tuple<BasicEdge.Guard, StatementId>> getPredecessors(StatementId s);
        protected abstract IEnumerable<Tuple<BasicEdge.Guard, StatementId>> getSuccessors(StatementId s);

        protected abstract IEnumerable<Tuple<BasicEdge.Guard, StatementId>> getSuccessors(StatementId s,
                                                                                          ControlStatement cs);

        /////////////////////////////////////////////////////////
        public A extract(StateInformation si)
        {
            return dummyAnalyzer.extract(si);
        }

        /////////////////////////////////////////////////////////
        public void analyze()
        {
            foreach (var bb in procedure.cfg.nodes)
                foreach (var s in bb.statements)
                    getPrestate(s.statementId).evaluatorInformation.numIncompletePredecessors =
                        getPredecessors(s.statementId).Count();

            setInitialState(analyzeStart());
            propagateAll(analyzeStart());

            foreach (var bb in procedure.cfg.nodes)
                foreach (var s in bb.statements)
                    Debug.Assert(getPrestate(s.statementId).evaluatorInformation.numIncompletePredecessors == -1);
            // getPredecessors(s.statementId).Count;
        }

        /////////////////////////////////////////////////////////
        private void setInitialState(StatementId start)
        {
            extract(getPrestate(start)).initializeStart(start);
        }

        /////////////////////////////////////////////////////////
        private void propagateAll(StatementId start)
        {
            Debug.Assert(start != null);

            ready = new Queue<StatementId>();

            ready.Enqueue(start);

            while (ready.Count > 0)
            {
                StatementId s = ready.Dequeue();
                propagate(s);
            }
        }

        /////////////////////////////////////////////////////////
        private void propagate(StatementId si)
        {
            getPrestate(si).evaluatorInformation.numIncompletePredecessors = -1;
            IEnumerable<Tuple<BasicEdge.Guard, StatementId>> preSuccessors = getSuccessors(si);

            List<Tuple<BasicEdge.Guard, A>> predMap =
                (from p in getPredecessors(si)
                 select new Tuple<BasicEdge.Guard, A>(p.Item1, extract(getPoststate(p.Item2)))).ToList();

            A preState = extract(getPrestate(si));
            A postState = extract(getPoststate(si));

            if (predMap.Count > 0)
            {
                {
                    bool eq = false;
                    bool ne = false;
                    foreach (var p in predMap)
                        if (ReferenceEquals(p.Item2, preState))
                            eq = true;
                        else
                            ne = true;
                    Debug.Assert(!(eq && ne));
                }
                if (!ReferenceEquals(predMap.First().Item2, preState))
                {
                    //if (predMap.Count>1)
                    foreach (var p in predMap)
                        Debug.Assert(!ReferenceEquals(p.Item2, preState));

                    preState.join(predMap, si);
                }
            }

            Debug.Assert(!ReferenceEquals(postState, preState));
            Statement newS = postState.propagate(preState, si);

//            var os = getSuccessors(si);
//            var ns = getSuccessors(si, newS as ControlStatement);
            if (newS != null && !ReferenceEquals(newS, si.statement))
            {
                if (newS is ControlStatement)
                {
                    var cs = newS as ControlStatement;
                    correctControlStatement(si, cs);
                    si.basicBlock.setControlStatement(cs);
                }
                else
                    si.statement = newS;
            }

            foreach (var psi in (from s in getSuccessors(si) select s.Item2))
            {
                EvaluatorInformation preStateEvalInfo = getPrestate(psi).evaluatorInformation;
                Debug.Assert(preStateEvalInfo.numIncompletePredecessors > 0);

                preStateEvalInfo.numIncompletePredecessors--;
                if (preStateEvalInfo.numIncompletePredecessors == 0)
                {
                    //                    Console.WriteLine("\t[{0}] enqueue", psi.ToString());
                    ready.Enqueue(psi);
                    preStateEvalInfo.numIncompletePredecessors = -1;
                }
//                else
//                    Console.WriteLine("\t[{0}] nip={1}", psi.ToString(),preStateEvalInfo.numIncompletePredecessors);
            }

            if (newS == null)
                si.delete();
        }

        private void correctControlStatement(StatementId si, ControlStatement newS)
        {
            IEnumerable<Tuple<BasicEdge.Guard, StatementId>> os = getSuccessors(si);
            IEnumerable<Tuple<BasicEdge.Guard, StatementId>> ns = getSuccessors(si, newS);
            var dif = new HashSet<BasicBlock>(from s in os select s.Item2.basicBlock);
            var nss = new HashSet<BasicBlock>(from s in ns select s.Item2.basicBlock);

            Debug.Assert(nss.IsSubsetOf(dif));
            dif.ExceptWith(nss);
            if (dif.Count == 0)
                return;
            var q = new Queue<BasicBlock>(dif);
            var numReaches = new Dictionary<BasicBlock, int>();
            foreach (var d in dif)
                numReaches.Add(d, 1);
            while (q.Count > 0)
            {
                BasicBlock bb = q.Dequeue();
                Debug.Assert(bb.statements.First().preState.evaluatorInformation.numIncompletePredecessors > 0);
                bb.statements.First().preState.evaluatorInformation.numIncompletePredecessors--;
                if (bb.statements.First().preState.evaluatorInformation.numIncompletePredecessors == 0)
                {
                    if (bb.predecessors.Count - numReaches[bb] == 0) //will be deleted
                    {
                        foreach (var nbbe in bb.successors)
                        {
                            BasicBlock nbb = nbbe.target;
                            q.Enqueue(nbb);
                            if (!numReaches.ContainsKey(nbb))
                                numReaches.Add(nbb, 1);
                            else
                                numReaches[nbb]++;
                        }
                    }
                    else
                        ready.Enqueue(bb.statements[0].statementId);
                }
            }
        }

        /////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////
    }
}