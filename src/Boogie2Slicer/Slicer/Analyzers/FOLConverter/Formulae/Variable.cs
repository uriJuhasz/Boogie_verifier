#region

using System;
using System.Collections.Generic;
using System.Diagnostics;
using Slicer.StateSpace.Types;

#endregion

namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public class Variable : ITerm, IComparable<Variable>
    {
        #region construction
        public Variable(LVar var)
        {
            variable = var;
            freeVariables = new HashSet<LVar>(new[] {var});
            orderedFreeVariables = new[] { var };
        }
        #endregion construction

        #region IComparable<Variable> Members

        public int CompareTo(Variable o)
        {
            return variable.name.CompareTo(o.variable.name);
        }

        #endregion

        #region ITerm Members
        public bool isGround { get { return false; } }
        public bool isConstant { get { return false; } }
        public int CompareTo(ITerm t)
        {
            return ToString().CompareTo(t.ToString());
        }

        #endregion

        #region properties

        private static readonly ISet<Function> sFunctions = new HashSet<Function>();
        public bool isFunctionApplication { get { return false; } }
        public bool isVariable { get { return true; } }

        public FunctionApplicationFormula asFunctionApplication { get { throw new Exception(); } }
        public Variable asVariable { get { return this; } }

        private static ISet<Function> pConstants = new HashSet<Function>();
        public ISet<Function> constants
        {
            get
            {
                return pConstants;
            }
        }

        public int height
        {
            get { return 1; }
        }
        public int weight
        {
            get { return 1; }
        }

        public ITermTuple subTerms{ get{ return new TermTuple(); } }
        public ISet<Function> functions { get{return sFunctions; } }

        public IType type
        {
            get { return variable.type; }
        }

        public ISet<LVar> freeVariables{ get; private set; }
        public IList<LVar> orderedFreeVariables { get; private set; }
        #endregion properties

        #region indexing
/*        public ITerm getSubTermAt(int pos)
        {
            Debug.Assert(pos < weight);
            Debug.Assert(pos >= 0);
            Debug.Assert(pos == 0);
            return this;
        }
        /*
        public void addOrderedFreeVariables(IList<LVar> l)
        {
            if (!l.Contains(var))
                l.Add(var);
        }*/
        /*
                public Tuple<ITerm, int, int> getSubTermAndContextAt(int pos)
                {
                    throw new NotImplementedException();
                }
                */
        #endregion indexing

        #region mapping
        public override int GetHashCode()
        {
            return variable.GetHashCode();
        }

        public override bool Equals(object f)
        {
            return (f is Variable) && (f as Variable).variable == variable;
        }
        #endregion mapping

        #region operations
        public ITerm substitute(Substitution s)
        {
            var t = s.map(variable);
            return (t == null) ? this : t;
        }

        public ITerm visit(ITermVisitor v)
        {
            return v.visit(this);
        }
        #endregion operations

        #region string
        public override string ToString()
        {
            return variable.name;
        }
        public string ToString(IDictionary<LVar, string> vm)
        {
            return vm.ContainsKey(variable) ? vm[variable] : variable.name;
        }

        public string ToStringN()
        {
            return ToStringB();
        }

        public string ToStringN(IDictionary<LVar, string> vm)
        {
            return ToString(vm);
        }

        public string ToStringB()
        {
            return "v_0";
        }

        #endregion string

        #region order

        public int compare(ITerm other)
        {
            return compare(other, new Dictionary<LVar, int>(), new Dictionary<LVar, int>());
        }
        public int compare(ITerm other, IDictionary<LVar, int> myVM, IDictionary<LVar, int> hisVM)
        {
            if (!myVM.ContainsKey(variable))
                myVM[variable] = myVM.Count;
            return other.compareR(this,hisVM, myVM);
        }

        public int compareR(Variable him, IDictionary<LVar, int> myVM, IDictionary<LVar, int> hisVM)
        {
            Debug.Assert(hisVM.ContainsKey(him.variable));
            
            if (!myVM.ContainsKey(variable))
                myVM[variable] = myVM.Count;
            
            var myIndex = myVM[variable];
            var hisIndex = hisVM[him.variable];
            
            return hisIndex.CompareTo(myIndex);
        }

        public int compareR(FunctionApplicationFormula other, IDictionary<LVar, int> myVM, IDictionary<LVar, int> hisVM)
        {
            return -1;
        }

        #endregion order

        #region members
        public readonly LVar variable;
        #endregion members
    }
}