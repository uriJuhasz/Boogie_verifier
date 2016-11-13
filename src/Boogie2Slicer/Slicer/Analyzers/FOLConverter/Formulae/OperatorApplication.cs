#region

using System.Collections.Generic;
using System.Linq;
using Slicer.Analyzers.FOLConverter.Clauses;

#endregion

namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public abstract class OperatorApplication : LogicElement
    {
        #region creation
        protected OperatorApplication(IOperator op, IEnumerable<ITerm> arguments)
        {
            this.op = op;
            args = new TermTuple(arguments);
            subTerms = args;
            freeVariables = new HashSet<LVar>(from a in args from fv in a.freeVariables select fv);
            
            orderedFreeVariables = new List<LVar>();
            foreach (var a in args)
                foreach (var fv in a.orderedFreeVariables)
                    if (!orderedFreeVariables.Contains(fv))
                        orderedFreeVariables.Add(fv);
            functions = new HashSet<Function>(from a in args from f in a.functions select f);
            varMap = new Dictionary<LVar,string>();
            foreach (var fv in orderedFreeVariables)
                varMap[fv] = "v_"+varMap.Count.ToString();

            stringCache = op.ToString(args);
            stringCacheN = op.ToStringN(args, new Dictionary<LVar, string>());//, varMap);
            stringCacheB = op.ToString(args, varMap);

            height = 0;
//            weight = 0;
            foreach (var a in args)
            {
                if (height < a.height)
                    height = a.height;
//                weight += a.weight;
            }
            height++;
//            weight++;
        }

        #endregion creation

        #region indexing

        #endregion indexing

        #region properties
        public IOperator    op       { get; private set; }
        public ITermTuple   subTerms { get; private set; }
        public ITermTuple   args     { get; private set; }

        public ISet<LVar> freeVariables { get; private set; } //{ return folUtilities.FOLUtilities.union(from s in subTerms select s.freeVariables); } }
        public IList<LVar> orderedFreeVariables { get; private set; }
        public ISet<Function> functions { get; private set; }// { return folUtilities.FOLUtilities.union(from s in subTerms select s.functions); }  }

        public int height { get; private set; }
        public int weight { get; private set; }
        #endregion properties

        #region strings
        private readonly string stringCache;
        private readonly string stringCacheB;
        private readonly string stringCacheN;
        private readonly Dictionary<LVar, string> varMap;

        public string ToString(IDictionary<LVar,string> vm)
        {
            return op.ToString(args,vm);
        }

        public string ToStringB()
        {
            return stringCacheB;
        }

        public string ToStringN()
        {
            return stringCacheN;
        }

        public string ToStringN(IDictionary<LVar, string> vm)
        {
            return op.ToStringN(args, vm);
        }

        public override string ToString()
        {
            return stringCache;
        }

        #endregion strings
    }
}
