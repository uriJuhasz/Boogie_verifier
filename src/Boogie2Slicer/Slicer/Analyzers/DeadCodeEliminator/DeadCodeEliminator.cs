using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Slicer.Programs;
using Slicer.StateSpace;
using Slicer.StateSpace.Variables;
using Slicer.Programs.Statements;
using Slicer.Programs.Expressions;

namespace Slicer.Analyzers
{
    public class DeadCodeEliminator : AVisitor, Analyzer<DeadCodeEliminator>
    {
        public string domainName
        {
            get { return "Dead Code Eliminator"; }
        }

        public void initializeStart(StatementId si, Procedure p)
        {
            this.procedure = p;
            liveVariables = new HashSet<string>();
        }

        public void join(ICollection<Tuple<BasicEdge.Guard, DeadCodeEliminator>> predecessors, StatementId si)
        {
            procedure = predecessors.First().Item2.procedure;
            liveVariables = new HashSet<string>();
            foreach (var p in predecessors)
                foreach (var v in p.Item2.liveVariables)
                    liveVariables.Add(v);
        }

        public void propagate(DeadCodeEliminator prestate, StatementId s)
        {
            this.liveVariables = new HashSet<string>();
            foreach (var v in prestate.liveVariables)
                liveVariables.Add(v);

            procedure = prestate.procedure;
            if (!s.deleted)
            {
                var ns = s.statement.visit(this);
                if (ns == null)
                    s.delete();
                else s.statement = ns;
            }
        }

        public override ProgramVariable visitReadProgramVariable(ProgramVariable v) {
            if (!v.isConstant && !v.isGlobal && !v.isInput)
                liveVariables.Add(v.name);
            return v; 
        }
        public override ProgramVariable visitWriteProgramVariable(ProgramVariable v)
        {
            liveVariables.Remove(v.name);
            return v;
        }
        
        public override Statement visit(Assume s)
        {
            var fae = s.expression as FunctionApplicationExpression;
            if (fae != null && fae.function.name == "==")
            {
                var pv0 = fae.arguments[0] as ProgramVariableExpression;
                var pv1 = fae.arguments[1] as ProgramVariableExpression;


                var pv0i = pv0 != null && initializedVariables.firstOccurence.ContainsKey(pv0.programVariable.name);
                var pv0l = pv0 != null && liveVariables.Contains(pv0.programVariable.name);

                var pv1i = pv1 != null && initializedVariables.firstOccurence.ContainsKey(pv1.programVariable.name);
                var pv1l = pv1 != null && liveVariables.Contains(pv1.programVariable.name);

                if ((pv0!=null && !pv0i && !pv0l) || (pv1!=null && !pv1i && !pv1l))
                {
//                    Console.WriteLine("Deleting statement \"{0}\" - live-initialized)", s.ToString());
                    return null;
                }
            }
            return base.visit(s);
        }

        public override Statement visit(Assignment s)
        {
            if (!liveVariables.Contains(s.target.name))
                return null;

            return base.visit(s);
        }
        

        public DeadCodeEliminator extract(StateInformation si)
        {
            if (si.deadCodeEliminator == null)
                si.deadCodeEliminator = new DeadCodeEliminator();
            
            si.deadCodeEliminator.initializedVariables = si.initializedVariables;

            return si.deadCodeEliminator;
        }

        public HashSet<string> liveVariables;
        private InitializedVariables initializedVariables;
        private Procedure procedure;
    }
}
