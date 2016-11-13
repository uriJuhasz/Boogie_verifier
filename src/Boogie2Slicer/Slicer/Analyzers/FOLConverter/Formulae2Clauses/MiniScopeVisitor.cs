
#region

using System;
using System.Linq;
using Slicer.Analyzers.FOLConverter.Formulae;

#endregion

namespace Slicer.Analyzers.FOLConverter.Formulae2Clauses
{
    internal class MiniScopeVisitor : IFormulaVisitor
    {
        private readonly ISRS srs;

        public MiniScopeVisitor(ISRS srs)
        {
            this.srs = srs;
        }

        #region IFormulaVisitor Members

        public IFormula visit(And f)
        {
            return new And(f.f1.visit(this), f.f2.visit(this));
        }

        public IFormula visit(Or f)
        {
            return new Or(f.f1.visit(this), f.f2.visit(this));
        }

        public IFormula visit(Not f)
        {
            return new Not(f.f.visit(this));
        }

        public IFormula visit(Implication f)
        {
            throw new Exception();
        }

        public IFormula visit(EquivalenceFormula f)
        {
            throw new Exception();
        }

        public IFormula visit(UniversalFormula f)
        {
            if (f.f is And)
            {
                var c = f.f as And;
                var i1 = c.f1.ffreeVariables.Contains(f.var);
                var i2 = c.f2.ffreeVariables.Contains(f.var);

                if (i1 && i2)
                {
                    var newVar = srs.getFreshVariable(f.var);
                    var ns = new Substitution(f.var, new Variable(newVar));
                    return new And(
                        new UniversalFormula(f.var, c.f1,f.attributes,f.triggers).visit(this),
                        new UniversalFormula(newVar, c.f2.substitute(ns),f.attributes,from ts in f.triggers select from t in ts select t.substitute(ns)).visit(this)
                        );
                }
                else if (i1)
                {
                    return new And(new UniversalFormula(f.var, c.f1,f.attributes,f.triggers).visit(this), c.f2.visit(this));
                }
                else if (i2)
                {
                    return new And(c.f1.visit(this), new UniversalFormula(f.var, c.f2, f.attributes, f.triggers).visit(this));
                }
                else
                    return c.visit(this);
            }
            else if (f.f is Or)
            {
                var c = f.f as Or;
                var i1 = c.f1.ffreeVariables.Contains(f.var);
                var i2 = c.f2.ffreeVariables.Contains(f.var);

                if (i1 && i2)
                {
                    return new UniversalFormula(f.var, f.f.visit(this),f.attributes,f.triggers);
                }
                else if (i1)
                {
                    return new Or(new UniversalFormula(f.var, c.f1,f.attributes,f.triggers).visit(this), c.f2.visit(this));
                }
                else if (i2)
                {
                    return new Or(c.f1.visit(this), new UniversalFormula(f.var, c.f2,f.attributes,f.triggers).visit(this));
                }
                else
                    return c.visit(this);
            }
            else
                return new UniversalFormula(f.var, f.f.visit(this),f.attributes,f.triggers);
        }

        public IFormula visit(ExistentialFormula f)
        {
            if (f.f is Or)
            {
                var c = f.f as Or;
                var i1 = c.f1.ffreeVariables.Contains(f.var);
                var i2 = c.f2.ffreeVariables.Contains(f.var);

                if (i1 && i2)
                {
                    var newVar = srs.getFreshVariable(f.var);
                    var ns = new Substitution(f.var, new Variable(newVar));
                    return new Or(
                        new ExistentialFormula(f.var, c.f1,f.attributes,f.triggers).visit(this),
                        new ExistentialFormula(newVar, c.f2.substitute(ns), f.attributes, from ts in f.triggers select from t in ts select t.substitute(ns)).visit(
                            this)
                        );
                }
                else if (i1)
                {
                    return new Or(new ExistentialFormula(f.var, c.f1,f.attributes,f.triggers).visit(this), c.f2.visit(this));
                }
                else if (i2)
                {
                    return new Or(c.f1.visit(this), new ExistentialFormula(f.var, c.f2, f.attributes, f.triggers).visit(this));
                }
                else
                    return c.visit(this);
            }
            else if (f.f is And)
            {
                var c = f.f as And;
                var i1 = c.f1.ffreeVariables.Contains(f.var);
                var i2 = c.f2.ffreeVariables.Contains(f.var);

                if (i1 && i2)
                {
                    return new ExistentialFormula(f.var, f.f.visit(this), f.attributes, f.triggers);
                }
                else if (i1)
                {
                    return new And(new ExistentialFormula(f.var, c.f1, f.attributes, f.triggers).visit(this), c.f2.visit(this));
                }
                else if (i2)
                {
                    return new And(c.f1.visit(this), new ExistentialFormula(f.var, c.f2, f.attributes, f.triggers).visit(this));
                }
                else
                    return c.visit(this);
            }
            else
                return new ExistentialFormula(f.var, f.f.visit(this), f.attributes, f.triggers);
        }

        public IFormula visit(PredicateApplication f)
        {
            return f;
        }

        public IFormula visit(EqualityFormula f)
        {
            return f;
        }

        public IFormula visit(True f)
        {
            return f;
        }

        public IFormula visit(False f)
        {
            return f;
        }

        public ITerm visit(FunctionApplicationFormula t)
        {
            return t;
        }

        public ITerm visit(Variable t)
        {
            return t;
        }

        #endregion
    }
}