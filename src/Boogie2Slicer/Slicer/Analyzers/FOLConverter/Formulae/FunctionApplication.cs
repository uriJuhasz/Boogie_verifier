#region

using System;
using System.Collections.Generic;
using System.Linq;
using Slicer.StateSpace.Types;

#endregion

namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public class FunctionApplicationFormula : OperatorApplication, ITerm
    {
        #region creation
        public FunctionApplicationFormula(Function function, IEnumerable<ITerm> args)
            : base(function,args)
        {
            functions.Add(function);
            this.function = function;
        }
        #endregion creation

        #region members
        public readonly Function function;
        #endregion members

        #region ITerm Members
        public bool isGround { get { return !freeVariables.Any(); } }
        public bool isConstant { get { return function.isConstant; } }

        public bool isFunctionApplication { get { return true; } }
        public bool isVariable { get { return false; } }

        public FunctionApplicationFormula asFunctionApplication { get { return this; } }
        public Variable asVariable {get{throw new Exception(); }}

        private ISet<Function> pConstants = null;
        public ISet<Function> constants
        {
            get
            {
                if (pConstants==null)
                {
                    pConstants = new HashSet<Function>();
                    if (args.Count() == 0)
                        pConstants.Add(function);
                    else
                        pConstants.UnionWith(from a in args from c in a.constants select c);
                }
                return pConstants;
            }
        }

        public IType type
        {
            get { return function.resultType; }
        }
        public override bool Equals(object f)
        {
            var result = true;
            var fa = f as FunctionApplicationFormula;
            if (ReferenceEquals(fa, null) || fa.function != function)
                result = false;
            else
            {
                for (var i = 0; i < args.Count(); i++)
                    if (!args[i].Equals(fa.args[i]))
                    {
                        result = false;
                        break;
                    }
            }
            //                Debug.Assert(result || ToString() != f.ToString());
            return result;
        }
        public override int GetHashCode()
        {
            var result = function.GetHashCode();
            foreach (var a in args)
                result += a.GetHashCode();
            return result;
        }

        public int CompareTo(ITerm t)
        {
            return ToString().CompareTo(t.ToString());
        }

        #endregion

        #region order

        public int compare(ITerm other)
        {
            return compare(other, new Dictionary<LVar, int>(), new Dictionary<LVar, int>());
        }

        public int compare(ITerm other, IDictionary<LVar, int> myVM, IDictionary<LVar, int> hisVM)
        {
            return other.compareR(this,hisVM, myVM);
        }

        public int compareR(Variable other, IDictionary<LVar, int> myVM, IDictionary<LVar, int> hisVM)
        {
            return 1;
        }

        public int compareR(FunctionApplicationFormula him, IDictionary<LVar, int> myVM, IDictionary<LVar, int> hisVM)
        {
            if (function.Equals(him.function))
            {
                for (var i=0; i<args.Count(); i++)
                {
                    var tr = him.args[i].compare(args[i], hisVM, myVM);
                    if (tr != 0)
                        return tr;
                }
                return 0;
            }else
                return him.function.name.CompareTo(function.name);
        }

        #endregion order

        #region operations
        public ITerm substitute(Substitution s)
        {
            if (!freeVariables.Intersect(s.domain).Any())
                return this;
            var nts = new List<ITerm>();
            if (TermTuple.substitute(s, args, nts))
                return new FunctionApplicationFormula(function, nts);
            else
                return this;
        }

        public ITerm visit(ITermVisitor v)
        {
            return v.visit(this);
        }
        #endregion operations
    }
}