using System.Collections.Generic;
namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public interface IQuantifiedFormula : IFormula
    {
        LVar var { get; }
        IFormula f { get; }
        bool isUniversal { get; }
        bool isExistential { get; }
        IEnumerable<string> attributes { get; }
        IEnumerable<IEnumerable<ITerm>> triggers { get; }

        
    }
}