#region

using System.Collections.Generic;
using Slicer.Analyzers.FOLConverter.Clauses;
using System.Linq;

#endregion

namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public interface IAtomicFormula : IFormula, LogicElement
    {
        #region properties
        IPredicate spredicate { get; }
        ITermTuple subTerms { get; }

        bool isTrue { get; }
        bool isFalse { get; }
        bool isPredicateApplication { get; }
        bool isEquality { get; }
        #endregion properties

        #region formula operations

        PredicateApplication asPredicateApplication { get; }
        EqualityFormula asEquality { get; }
        IAtomicFormula substituteA(Substitution s);

        #endregion formula operations

        IEnumerable<Function> constants { get; }
    }

    public abstract class AtomicFormula : OperatorApplication, IAtomicFormula
    {
        #region creation
        protected AtomicFormula(IPredicate spredicate, IEnumerable<ITerm> arguments)
            : base(spredicate,arguments)
        {
            this.spredicate = spredicate;
        }

        #endregion creation

        #region properties
        public IEnumerable<IFormula> subFormulae { get { return new IFormula[0]; } }
        public IEnumerable<Function> constants { get { return new HashSet<Function>(from t in subTerms from c in t.constants select c); } }
        public IPredicate spredicate { get; private set; }

        public ISet<LVar> ffreeVariables { get { return freeVariables; } } //Hack - have to put IFormula under LogicElement

        public abstract bool isTrue { get; }
        public abstract bool isFalse { get; }
        public abstract bool isPredicateApplication { get; }
        public abstract bool isEquality { get; }
        #endregion properties

        #region formula operations
        public abstract IFormula substitute(Substitution s);
        public abstract IFormula visit(IFormulaVisitor v);
        public abstract IAtomicFormula substituteA(Substitution s);
        public abstract PredicateApplication asPredicateApplication { get; }
        public abstract EqualityFormula asEquality { get; }
        #endregion formula operations
    }

}