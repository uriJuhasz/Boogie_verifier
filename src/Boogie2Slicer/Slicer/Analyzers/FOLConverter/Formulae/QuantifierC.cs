#region

using System.Collections.Generic;
using System.Linq;

#endregion

namespace Slicer.Analyzers.FOLConverter.Formulae
{
    public abstract class QuantifiedFormulaC : IQuantifiedFormula
    {
        private readonly IFormula pF;
        private readonly ISet<LVar> pFreeVariables;
        private readonly LVar pVar;

        public IEnumerable<IFormula> subFormulae { get { return new[] { pF }; } }

        public abstract bool isUniversal { get; }
        public abstract bool isExistential { get; }
        protected QuantifiedFormulaC(LVar var, IFormula f, IEnumerable<string> attributes, IEnumerable<IEnumerable<ITerm>> triggers)
        {
            pVar = var;
            pF = f;

            var fv = new HashSet<LVar>(f.ffreeVariables);
            fv.Remove(var);
            pFreeVariables = fv;
            foreach (var a in attributes)
                pAttributes.Add(a);
            pTriggers = (from ts in triggers select new List<ITerm>(ts)).ToArray();
        }
        protected IList<string> pAttributes = new List<string>();
        public IEnumerable<string> attributes { get { return pAttributes; } }
        public void addAttribute(string attr)
        {
            pAttributes.Add(attr);
        }

/*        protected void addTrigger(string attr)
        {
            
        }*/
        public IEnumerable<IEnumerable<ITerm>> triggers { get{ return pTriggers;} }
        protected IList<IList<ITerm>> pTriggers;// = new List<List<ITerm>>();

        #region IQuantifier Members

        public LVar var
        {
            get { return pVar; }
        }

        public IFormula f
        {
            get { return pF; }
        }

        public ISet<LVar> ffreeVariables
        {
            get { return pFreeVariables; }
        }

        public abstract IFormula substitute(Substitution s);
        public abstract IFormula visit(IFormulaVisitor v);

        #endregion
    }
}