using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Slicer.Analyzers.FOLConverter.ControlFlowGraph
{
    public class HistoryRecorder
    {
        private class HistoryRecord
        {
            public HistoryRecord(double time, int numGoals, string stage)
            {
                this.time = time;
                this.numGoals = numGoals;
                this.stage = stage;
            }
            public readonly double time;
            public readonly int numGoals;
            public readonly string stage;
        }

        private readonly IList<HistoryRecord> history = new List<HistoryRecord>();
        public void printHistoryString()
        {
            Debug.Write("   ");
            foreach (var he in history)
                Debug.Write(String.Format("[{0,4}]", he.numGoals));
            Debug.WriteLine("");
            Debug.Write("   ");
            foreach (var he in history)
                Debug.Write(String.Format("[{0,4}]", he.time));
            Debug.WriteLine("");
            Debug.Write("   ");
            foreach (var he in history)
                Debug.Write(String.Format("[{0,4}]", he.stage));
            Debug.WriteLine("");
        }
        public void recordGoalHistory(long ms, int numGoals, string stage)
        {
            history.Add(new HistoryRecord(ms / 1000, numGoals, stage));
        }
    }
}
