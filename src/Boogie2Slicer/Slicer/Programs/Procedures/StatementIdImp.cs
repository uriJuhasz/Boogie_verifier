using System;
using System.Collections.Generic;
using System.Diagnostics;
using Slicer.Programs.Statements;
using Slicer.StateSpace;

namespace Slicer.Programs.Procedures
{
    internal class StatementIdImp : StatementId
    {
        /////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////

        /////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////
        private BasicBlock.StatementInfo statementInfo;

        public StatementIdImp(BasicBlock bb, int index)
        {
            Debug.Assert(bb != null);
            Debug.Assert(index >= 0);
            Debug.Assert(index < bb.statements.Count);
            statementInfo = bb.statements[index];
        }

        #region StatementId Members

        public override string ToString()
        {
            return basicBlock.label + "_" + index.ToString();
        }

        /////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////

        public ICollection<Tuple<BasicEdge.Guard, StatementId>> successors
        {
            get
            {
                var result = new List<Tuple<BasicEdge.Guard, StatementId>>();
                Debug.Assert(index < basicBlock.statements.Count);
                if (index == basicBlock.statements.Count - 1)
                    foreach (var e in basicBlock.successors)
                        result.Add(new Tuple<BasicEdge.Guard, StatementId>(e.guard, makeFirst(e.target)));
                else
                    result.Add(new Tuple<BasicEdge.Guard, StatementId>(new BasicEdge.Guard(true),
                                                                       new StatementIdImp(basicBlock, index + 1)));
                return result;
            }
        }

        public ICollection<Tuple<BasicEdge.Guard, StatementId>> predecessors
        {
            get
            {
                var result = new List<Tuple<BasicEdge.Guard, StatementId>>();
                if (index == 0)
                    foreach (var e in basicBlock.predecessors)
                        result.Add(new Tuple<BasicEdge.Guard, StatementId>(e.guard, makeLast(e.source)));
                else
                    result.Add(new Tuple<BasicEdge.Guard, StatementId>(new BasicEdge.Guard(true),
                                                                       new StatementIdImp(basicBlock, index - 1)));
                return result;
            }
        }

        public StateInformation preStates
        {
            get { return statementInfo.preState; }
        }

        public StateInformation postStates
        {
            get { return statementInfo.postState; }
        }

        /////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////
        public StatementId prependStatement(Statement statement)
        {
            Debug.Assert(statement != null);

            return basicBlock.insertStatementAt(index, statement);
        }

        /////////////////////////////////////////////////////////
        public StatementId appendStatement(Statement statement)
        {
            Debug.Assert(statement != null);

            return basicBlock.insertStatementAt(index + 1, statement);
        }

        /////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////
        public void delete()
        {
//            Console.WriteLine("deleting {0}", basicBlock.label + "_" + statementInfo.index.ToString());

            basicBlock.deleteStatement(index);
            statementInfo.basicBlock = null;
            statementInfo.index = -1;
            statementInfo.preState = null;
            statementInfo.postState = null;
            statementInfo.statement = null;
            statementInfo = null;
        }

        /////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////
        public int index
        {
            get { return statementInfo.index; }
        }

        public BasicBlock basicBlock
        {
            get { return statementInfo.basicBlock; }
        }

        public Statement statement
        {
            get { return statementInfo.statement; }
            set { statementInfo.statement = value; }
        }

        #endregion

        public static StatementId makeFirst(BasicBlock bb)
        {
            Debug.Assert(bb != null);
            return new StatementIdImp(bb, 0);
        }

        public static StatementId makeLast(BasicBlock bb)
        {
            Debug.Assert(bb != null);
            return new StatementIdImp(bb, bb.statements.Count - 1);
        }

        public BasicBlock getBasicBlock()
        {
            return basicBlock;
        }

        public bool isEqual(StatementId other)
        {
            return ReferenceEquals((other as StatementIdImp).statementInfo, statementInfo);
        }
    }
}