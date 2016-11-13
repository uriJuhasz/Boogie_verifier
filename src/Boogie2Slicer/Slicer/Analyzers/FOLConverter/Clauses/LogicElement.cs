#region

using System.Collections.Generic;
using Slicer.Analyzers.FOLConverter.Formulae;
using Slicer.StateSpace.Types;

#endregion

namespace Slicer.Analyzers.FOLConverter.Clauses
{
    public interface NormalizedStringElement
    {
        #region strings
        string ToStringN();                               //normalized unique to isomorphism name
        string ToStringB();                               //localized variables
        #endregion strings
    }
    public interface NormalizedVarStringElement<V> : NormalizedStringElement
    {
        #region strings
        string ToString(IDictionary<V, string> vm);    //variables mapped to names
        string ToStringN(IDictionary<V, string> vm);   //normalized with variable mapping
        #endregion strings
    }

    public interface LogicElement : NormalizedVarStringElement<LVar>
    {
        int height { get; }
//        int weight { get; }

        ISet<LVar> freeVariables { get; }
        IList<LVar> orderedFreeVariables { get; }
        ISet<Function> functions { get; }
    }
    public interface TypedElement
    {
        IType type { get; }
    }

    public interface TypedLogicElement : LogicElement, TypedElement
    {
    }
}
