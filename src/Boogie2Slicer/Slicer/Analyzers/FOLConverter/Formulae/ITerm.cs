#region

using System;
using System.Collections.Generic;
using System.Linq;
using Slicer.Analyzers.FOLConverter.Clauses;
using Slicer.Utilities;

#endregion

namespace Slicer.Analyzers.FOLConverter.Formulae
{
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    public interface ITerm : IComparable<ITerm>, TypedLogicElement
    {
        ITermTuple subTerms { get; }
        bool isFunctionApplication { get; }
        bool isVariable { get; }
        bool isGround { get; }
        bool isConstant { get; }

        FunctionApplicationFormula asFunctionApplication { get; }
        Variable asVariable { get; }

        ITerm substitute(Substitution s);
        ITerm visit(ITermVisitor v);

        bool Equals(object f);
        int GetHashCode();

        string ToString();
        
        int compare(ITerm other);
        int compare(ITerm other, IDictionary<LVar, int> myVM, IDictionary<LVar, int> hisVM);
        int compareR(Variable other, IDictionary<LVar, int> myVM, IDictionary<LVar, int> hisVM);
        int compareR(FunctionApplicationFormula other, IDictionary<LVar, int> myVM, IDictionary<LVar, int> hisVM);

        ISet<Function> constants { get; }
    }



    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    public interface ITermTuple : ITuple<ITerm,LVar>
    {
        ITermTuple substitute(Substitution s);
    }
    public class TermTuple : TermTupleC<ITerm>, ITermTuple
    {
        #region creation
        public TermTuple()
            : this(new ITerm[0])
        {
        }
        public TermTuple(IEnumerable<ITerm> terms)
            : base(terms)
        {
        }
        #endregion creation

        #region operations
        public ITermTuple substitute(Substitution s)
        {
            return new TermTuple(from t in ts select t.substitute(s));
        }

        #endregion operations
        public static bool substitute(Substitution s, IEnumerable<ITerm> ts, IList<ITerm> nts)
        {
            var v = false;
//            if (ts.Any(t => t.freeVariables.Intersect(s.domain).Any()))
            {
                foreach (var t in ts)
                {
                    var nt = t.substitute(s);
                    nts.Add(nt);
                    if (!ReferenceEquals(t, nt))
                        v = true;
                }
            }
            return v;
        }
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}