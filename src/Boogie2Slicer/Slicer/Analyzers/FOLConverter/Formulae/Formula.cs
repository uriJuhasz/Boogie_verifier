#region

using System.Collections.Generic;

#endregion

namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public interface IFormula
    {
        ISet<LVar> ffreeVariables { get; } 
        int GetHashCode();
        bool Equals(object f);
        IFormula substitute(Substitution s);
        IFormula visit(IFormulaVisitor v);
        IEnumerable<IFormula> subFormulae { get; }
    }
}