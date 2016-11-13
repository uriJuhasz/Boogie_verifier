using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Programs.CFG;
using Slicer.Programs.Statements;
using Slicer.StateSpace;

namespace Slicer.Programs.Procedures
{
    public class BasicBlock : CFGNode<BasicBlock, BasicEdge>
    {
        ////////////////////////////////////////////////////////////////////////
        private readonly List<BasicEdge> myPredecessors;
        private ControlStatement controlStatement;
        private StateInformation postState;
        private StateInformation preState;

        public BasicBlock()
        {
            label = null;
            cfg = null;
            statements = new List<StatementInfo>();
            controlStatement = null;
            myPredecessors = new List<BasicEdge>();
            preState = new StateInformation();
            postState = preState;
        }

        ////////////////////////////////////////////////////////////////////////
        public BasicBlock(Procedure p, string label)
            : this()
        {
            Debug.Assert(label != null);
            this.label = label;
        }

        internal List<StatementInfo> statements { get; private set; }

        #region ICFGNode<BasicBlock,BasicEdge> Members

        public void removePredecessor(BasicEdge e)
        {
            assertLocalInvariant();
            Debug.Assert(e.target == this);
            if (!myPredecessors.Remove(e))
                throw new Exception("Internal error");
            assertLocalInvariant();
        }

        public IList<BasicEdge> successors
        {
            get
            {
                Debug.Assert(controlStatement != null);
                return controlStatement.successors;
            }
        }

        public IList<BasicEdge> predecessors
        {
            get { return myPredecessors; }
        }

        ////////////////////////////////////////////////////////////////////////
        public String label { get; set; }
        public CFG<BasicBlock, BasicEdge> cfg { get; set; }

        #endregion

        ////////////////////////////////////////////////////////////////////////
        public void appendStatement(Statement s)
        {
            Debug.Assert(s != null);
            if (controlStatement == null)
            {
                // Debug.Assert(controlStatement == null);
                var si = new StatementInfo(s, postState, new StateInformation(), this, statements.Count);
                statements.Add(si);
                postState = si.postState;
            }
            else
                insertStatementAt(statements.Count - 1, s);
        }

        ////////////////////////////////////////////////////////////////////////
        public void mergeNextBlock()
        {
            Debug.Assert(controlStatement != null);
            Debug.Assert(controlStatement is UnconditionalBranch);
            BasicBlock next = controlStatement.successors.First().target;


            Debug.Assert(next.controlStatement != null);
            Debug.Assert(next.predecessors.Count() == 1);
            Debug.Assert(next != this);

            statements.RemoveAt(statements.Count - 1); //collect control statement

            int preNumStatements = statements.Count;

            next.removePredecessor(successors.First());

            StateInformation insertionPrestate = (statements.Count > 0) ? statements.Last().postState : preState;
            int i = 0;
            foreach (var nsi in next.statements)
            {
                nsi.preState = (i == 0) ? insertionPrestate : statements.Last().postState;
                nsi.basicBlock = this;
                nsi.index = statements.Count;
                statements.Add(nsi);
                i++;
            }

            postState = statements.Last().postState;
            controlStatement = statements.Last().statement as ControlStatement;
            foreach (var e in controlStatement.successors)
                e.setSource(this);

            assertLocalInvariant();

            next.controlStatement = null;
            next.statements = new List<StatementInfo>();
            next.postState = next.preState;
            next.setControlStatement(new Block(next));
            if (cfg.endNode.label == next.label)
                cfg.endNode = this;
            next.delete();

            foreach (var e in controlStatement.successors)
                e.target.assertLocalInvariant();

            assertLocalInvariant();
        }

        ////////////////////////////////////////////////////////////////////////
        public void setControlStatement(ControlStatement tc)
        {
            Debug.Assert(tc != null);
            if (controlStatement != null)
            {
                Debug.Assert(!ReferenceEquals(controlStatement, tc));

                var os = new List<BasicEdge>(successors);

                foreach (var e in successors)
                    e.target.removePredecessor(e);
                controlStatement = tc;
                statements[statements.Count - 1].statement = tc;
                foreach (var e in tc.successors)
                    Debug.Assert(e.source == this);
                foreach (var e in tc.successors)
                    Debug.Assert(e.target.predecessors.Contains(e));

                foreach (var se in os)
                    if (se.target.predecessors.Count == 0)
                        se.target.delete();
            }
            else
            {
                Debug.Assert(controlStatement == null);
                foreach (var e in tc.successors)
                    Debug.Assert(e.source == this);
                controlStatement = tc;
                var cs = new StatementInfo(tc, postState, new StateInformation(), this, statements.Count);
                statements.Add(cs);
                postState = cs.postState;
            }
            assertLocalInvariant();
        }

        ////////////////////////////////////////////////////////////////////////
        internal void addPredecessor(BasicEdge e)
        {
            assertLocalInvariant();
            Debug.Assert(e.target == this);
            Debug.Assert(!myPredecessors.Contains(e));
            myPredecessors.Add(e);
            assertLocalInvariant();
        }

        ////////////////////////////////////////////////////////////////////////

        ////////////////////////////////////////////////////////////////////////
        public void removeSuccessor(BasicEdge e)
        {
            Debug.Assert(e.source == this);
        }

        ////////////////////////////////////////////////////////////////////////
        public IList<Statement> getStatements()
        {
            return (from s in statements select s.statement).ToList();
        }

        ////////////////////////////////////////////////////////////////////////

        ////////////////////////////////////////////////////////////////////////
        public override string ToString()
        {
            return label;
        }

        ////////////////////////////////////////////////////////////////////////

        ////////////////////////////////////////////////////////////////////////
        public ControlStatement getControlStatement()
        {
            return controlStatement;
        }

        ////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////
        public StatementId insertStatementAt(int index, Statement statement)
        {
            Debug.Assert(controlStatement != null);
            Debug.Assert(statement != null);
            Debug.Assert(index >= 0 && index < statements.Count);
            StateInformation pre = statements[index].preState;
            var post = new StateInformation(); //(index == statements.Count) ?  : statements[index].preState;
            statements[index].preState = post;
            var si = new StatementInfo(statement, pre, post, this, index);

            statements.Insert(index, si);
            assertLocalInvariant();

            for (int i = index + 1; i < statements.Count; i++)
                statements[i].index++;
            return statements[index].statementId;
        }

        ////////////////////////////////////////////////////////
        private void assertLocalInvariant()
        {
            for (int i = 0; i < statements.Count; i++)
            {
                if (i == 0)
                    Debug.Assert(ReferenceEquals(statements[i].preState, preState));
                else
                    Debug.Assert(ReferenceEquals(statements[i - 1].postState, statements[i].preState));

                if (i == statements.Count - 1)
                {
                    Debug.Assert(ReferenceEquals(statements[i].postState, postState));
                    Debug.Assert(ReferenceEquals(statements[i].statement, controlStatement) || controlStatement == null);
                }
                else
                {
                    Debug.Assert(ReferenceEquals(statements[i].postState, statements[i + 1].preState));
                    Debug.Assert(!(statements[i].statement is ControlStatement));
                }

                Debug.Assert(!ReferenceEquals(statements[i].preState, statements[i].postState));
            }
        }

        ////////////////////////////////////////////////////////
        private StateInformation stateAt(int index)
        {
            Debug.Assert(index >= 0 && index <= statements.Count);
            if (index == statements.Count)
                return postState;
            return statements[index].preState;
        }

        ////////////////////////////////////////////////////////
        public StateInformation getPreState(int index)
        {
            Debug.Assert(index >= 0 && index < statements.Count);
            return statements[index].preState;
        }

        ////////////////////////////////////////////////////////
        public StateInformation getPostState(int index)
        {
            Debug.Assert(index >= 0 && index < statements.Count);
            return statements[index].postState;
        }

        ////////////////////////////////////////////////////////////////////////
        internal void deleteStatement(int index)
        {
            Debug.Assert(index >= 0 && index < statements.Count - 1);
//            Console.WriteLine("Deleting statement {0}", label + "_" + index.ToString());

            statements.RemoveAt(index);
            if (index == 0)
                preState = statements[index].preState;
            else
                statements[index - 1].postState = statements[index].preState;

            for (int i = index; i < statements.Count; i++)
                statements[i].index--;

            assertLocalInvariant();
        }

        ////////////////////////////////////////////////////////////////////////
        public void delete()
        {
//            Console.WriteLine("\tDeleting block {0}", label);
            Debug.Assert(predecessors.Count() == 0);
            if (successors.Count > 0)
                setControlStatement(new Block(this));
            Debug.Assert(successors.Count() == 0);
            cfg.removeNode(label);
            preState = null;
            postState = null;
            cfg = null;
            controlStatement = null;
            label = null;
            statements = null;
        }

        ////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////

        #region Nested type: StatementInfo

        internal class StatementInfo
        {
            public BasicBlock basicBlock;
            private int myIndex;

            private StatementId myStatementId;
            public StateInformation postState;
            public StateInformation preState;
            public Statement statement;

            public override string ToString()
            {
                return this.myStatementId + " : " + statement.ToString();
            }
            public bool isAssertion { get { return statement is Assert; } }
            public StatementInfo(
                Statement statement,
                StateInformation preState,
                StateInformation postState,
                BasicBlock basicBlock,
                int index
                )
            {
                Debug.Assert(statement != null);
                Debug.Assert(preState != null);
                Debug.Assert(postState != null);
                Debug.Assert(preState != postState);
                Debug.Assert(basicBlock != null);

                this.statement = statement;
                this.preState = preState;
                this.postState = postState;
                this.basicBlock = basicBlock;
                this.index = index;
            }

            public int index
            {
                get { return myIndex; }
                set
                {
                    myIndex = value;
                    myStatementId = null;
                }
            }

            public StatementId statementId
            {
                get
                {
                    if (myStatementId == null)
                        myStatementId = new StatementIdImp(basicBlock, index);
                    return myStatementId;
                }
            }
        }

        #endregion
    }
}