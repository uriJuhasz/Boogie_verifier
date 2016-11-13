#region

using System;
using System.Collections.Generic;
using System.Diagnostics;

#endregion

namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public class EqualityFormula : AtomicFormula,IAtomicFormula, IComparable<EqualityFormula>
    {
        #region creation
        public EqualityFormula(ITerm t1, ITerm t2)
            : base(Equality.get(t1.type),new[]{t1.compare(t2)>0?t1:t2,t1.compare(t2)>0?t2:t1})
        {
            Debug.Assert(t1.type.isEquivalent(t2.type));
            this.t1 = args[0];
            this.t2 = args[1];

            Debug.Assert(ffreeVariables.Count >= t1.freeVariables.Count);
            Debug.Assert(ffreeVariables.Count >= t2.freeVariables.Count);
            equality = Equality.get(t1.type);
        }
        #endregion creation

        #region properties
        public readonly Equality equality;
        public readonly ITerm t1, t2;
        public override bool isPredicateApplication { get { return false; } }
        public override bool isEquality { get { return true; } }

        public override PredicateApplication asPredicateApplication { get { throw new InvalidOperationException(); } }
        public override EqualityFormula asEquality { get { return this; } }

        public bool isGround { get { return freeVariables.Count==0; } }

        public override bool isTrue
        {
            get { return t1.Equals(t2); }
        }

        public override bool isFalse
        {
            get { return false; }
        }
        #endregion properties

        #region mapping

        #region IAtomicFormula Members

        public override bool Equals(object f)
        {
            var fa = f as EqualityFormula;
            return fa != null && t1.Equals(fa.t1) && t2.Equals(fa.t2);
        }

        public override int GetHashCode()
        {
            return ToStringN().GetHashCode();
        }

        #endregion

        #region IComparable<Equality> Members

        public int CompareTo(EqualityFormula e)
        {
            return ToStringN().CompareTo(e.ToStringN());
        }

        #endregion

        #endregion mapping

        #region operations
        public override IAtomicFormula substituteA(Substitution s)
        {
            return substituteEq(s);
        }

        public override IFormula substitute(Substitution s)
        {
            return substituteA(s);
        }

        public override IFormula visit(IFormulaVisitor v)
        {
            return v.visit(this);
        }

/*        public EqualityFormula substituteEq(Substitution s)
        {
            return new EqualityFormula(t1.substitute(s), t2.substitute(s));
        }*/
        public EqualityFormula substituteEq(Substitution s)
        {
            var newArgs = new List<ITerm>();
            if (TermTuple.substitute(s, args, newArgs))
                return new EqualityFormula(newArgs[0], newArgs[1]);
            else
                return this;
//            foreach (var a in args)
//                newArgs.Add(a.substitute(s));
        }

        #endregion operations
    }
}