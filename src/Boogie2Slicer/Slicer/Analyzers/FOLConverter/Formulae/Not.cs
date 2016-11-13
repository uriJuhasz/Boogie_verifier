#region

using System.Collections.Generic;

#endregion

namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public class Not : IFormula
    {
        public readonly IFormula f;
        public IEnumerable<IFormula> subFormulae { get { return new[] { f }; } }

        public Not(IFormula f)
        {
            this.f = f;
        }

        #region IFormula Members

        public ISet<LVar> ffreeVariables
        {
            get { return f.ffreeVariables; }
        }

        public override bool Equals(object o)
        {
            var fa = o as Not;
            return
                !ReferenceEquals(fa, null) &&
                (f == fa.f);
        }

        public override int GetHashCode()
        {
            return f.GetHashCode() + 1;
        }

        public IFormula substitute(Substitution s)
        {
            return new Not(f.substitute(s));
        }

        public IFormula visit(IFormulaVisitor v)
        {
            return v.visit(this);
        }

        #endregion

        public override string ToString()
        {
            var result = f.ToString();
            if (!(f is IAtomicFormula))
                result = "(" + result + ")";
            result = "!" + result;
            return result;
        }
    }
}