#region

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;

#endregion

namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public class PredicateApplication : AtomicFormula, IAtomicFormula, IComparable<PredicateApplication>
    {
        #region members
        public readonly Predicate predicate;
        #endregion members

        #region creation
        public PredicateApplication(Predicate p, IEnumerable<ITerm> args)
            : base(p,args)
        {
            Debug.Assert(p.argumentTypes.Count() == args.Count());
            Debug.Assert(p.argumentTypes.Zip(args, (x, y) => x.isEquivalent(y.type)).All(x => x));
            predicate = p;
        }
        #endregion creation

        #region properties

        public override bool isPredicateApplication { get { return true; } }
        public override bool isEquality { get { return false; } }

        public override PredicateApplication asPredicateApplication { get { return this; } }
        public override EqualityFormula asEquality { get { throw new Exception(); } }

        public override bool isTrue
        {
            get { return predicate.name == "true" || predicate.name=="True" ; }
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
            var fa = f as PredicateApplication;
            if (ReferenceEquals(fa, null) || fa.predicate != predicate)
                return false;
            for (var i = 0; i < args.Count(); i++)
                if (args[i] != fa.args[i])
                    return false;
            return true;
        }

        public override int GetHashCode()
        {
            return ToString().GetHashCode();
        }

        #endregion

        #region IComparable<PredicateApplication> Members

        public int CompareTo(PredicateApplication pa)
        {
            return ToString().CompareTo(pa.ToString());
        }

        #endregion

        #endregion mapping

        #region formula operations
        public override IFormula substitute(Substitution s)
        {
            return substituteA(s);
        }

        public override IAtomicFormula substituteA(Substitution s)
        {
            return substitutePA(s);
        }

        public override IFormula visit(IFormulaVisitor v)
        {
            return v.visit(this);
        }

        public PredicateApplication substitutePA(Substitution s)
        {
            var newArgs = new List<ITerm>();
            if (TermTuple.substitute(s, args, newArgs))
                return new PredicateApplication(predicate, newArgs);
            else
                return this;
//            foreach (var a in args)
//                newArgs.Add(a.substitute(s));
        }

        #endregion formula operations
    }
}