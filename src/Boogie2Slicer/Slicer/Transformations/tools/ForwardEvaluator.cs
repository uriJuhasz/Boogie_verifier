using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Slicer.Programs;

namespace Slicer.Transformations.tools
{
    abstract class ForwardEvaluator<E, A> : Evaluator<E, A>
        where E : Evaluator<E, A>
        where A : Analysis<A>
    {
        public ForwardEvaluator(Procedure p, StatementId si)
            : base(p)
        {
            this.statementId = si;
        }
        
        //////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////
        public IEnumerable<E> getSuccessors(EvaluationState es)
        {

        }
        public IEnumerable<A> getPredecessorStates()
        {
            LinkedList<A> result = new LinkedList<A>();
            foreach (StatementId p in statementId.getPredecessors())
                if (
        }

        //////////////////////////////////////////////////////////////
        StatementId statementId;
    }
}
