using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Slicer.Analyzers.FOLConverter.Formulae;
using Slicer.StateSpace.Types;
using System.Diagnostics.Contracts;
using System.Diagnostics;
using Slicer.Analyzers.FOLConverter.Clauses;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    public class HUniverse
    {
        #region construction
        ////////////////////////////////////////////////////////////////////////////
        public HUniverse(Function zero)
        {
            index = curIndex;
            curIndex++;
            isRefuted = false;
            var zeroTerm = new FunctionApplication(zero,new TermTuple());
            trueFormula = makeGroundAtomicFormula(new Equality(zeroTerm,zeroTerm));
        }

        GroundAtomicFormulaEC trueFormula;
        #endregion construction

        #region element creation

        public  GroundClauseEC makeGroundClause(Clause c)
        {
            var r = new List<GroundAtomEC>();
            foreach (var a in c.atoms)
                r.Add(makeGroundAtom(a));
            return makeGroundClause(r); //(from a in c.atoms select makeGroundAtom(a)).ToList());
        }
        public  GroundClauseEC makeGroundClause(IEnumerable<GroundAtomEC> atoms)
        {
            return new GroundClauseEC(this,atoms);
        }

        public  GroundAtomEC makeGroundAtom(Atom a)
        {
            Debug.Assert(!a.freeVariables.Any());
            return makeGroundAtom(a.f, a.polarity);
        }
        public  GroundAtomEC makeGroundAtom(IAtomicFormula formula, bool polarity)
        {
            return makeGroundAtom(makeGroundAtomicFormula(formula), polarity);
        }
        private GroundAtomEC makeGroundAtom(GroundAtomicFormulaEC formula, bool polarity)
        {
            return formula.gAtom(this,polarity);
/*            var key = CAtomEC.makeStringN(formula, polarity);
            GroundAtomEC result;
            if (!groundAtomCache.TryGetValue(key, out result))
                groundAtomCache[key] = result = formula.gAtom(polarity);
            return result;*/
        }

        public  GroundAtomicFormulaEC makeGroundAtomicFormula(IAtomicFormula formula)
        {
            return makeGroundAtomicFormula(formula.spredicate, makeGroundTuple(formula.subTerms));
        }
        public  GroundAtomicFormulaEC makeGroundAtomicFormula(ISPredicate spredicate, GroundTermTupleEC args)
        {
            Debug.Assert(tupleMergeMap[args] == args);
//            if (spredicate.name == "=")
//                Console.WriteLine("********Making formula {0}({1})",spredicate.ToString(),args.ToStringB());
//            var key = GroundAtomicFormulaEC.makeStringN(spredicate, args);
            GroundAtomicFormulaEC result;
            if (!args.incomingPAsByPredicate.TryGetValue(spredicate,out result))
                result = new GroundAtomicFormulaEC(this, spredicate, args);
            /*
            if (!atomicFormulaCache.TryGetValue(key, out result))
            {
                if (spredicate.name == "=")
                    Console.WriteLine("      Making new");
                atomicFormulaCache[key] = result = new GroundAtomicFormulaEC(this, spredicate, args);
            }
            */
            if (spredicate is Predicate)
            { 
                var predicate = spredicate as Predicate;
                ISet<GroundTermTupleEC> e;
                if (!predicateToTuplesMap.TryGetValue(predicate, out e))
                    predicateToTuplesMap[predicate] = e = new HashSet<GroundTermTupleEC>();
                e.Add(args);
            }
            return result;
        }

        public  GroundTermTupleEC makeGroundTuple(IEnumerable<ITerm> terms)
        {
//            nl++;
//            Console.WriteLine("   {0}makeGroundTuple({1})", new String(' ', nl * 3), Operator.commaSeparatedList(from t in terms select t.ToString()));

            Debug.Assert(terms.All(t => !t.freeVariables.Any()));
            var r = new List<GroundTermEC>();
            foreach (var t in terms)
                r.Add(makeGroundTerm(t));
            var result = makeGroundTuple(r); //(from t in terms select makeGroundTerm(t)).ToList());

//            Console.WriteLine("   {0}/makeGroundTuple", new String(' ', nl * 3));
//            nl--;
            return result;
        }
        public  GroundTermTupleEC makeGroundTuple(IEnumerable<GroundTermEC> oTerms)
        {
            GroundTermTupleEC result;
            var terms = oTerms.ToList();// (from t in oTerms select transitiveMerge(t)).ToList();
            var key = GroundTermTupleEC.makeStringN(this, terms);
            Debug.Assert(terms.All(t => termMergeMap[t] == t));
            if (!groundTupleCache.TryGetValue(key, out result))
            {
                groundTupleCache[key] = result = new GroundTermTupleEC(this, terms);
                tupleMergeMap[result] = result;

                var typeKey = GroundTermTupleEC.typeString((from t in terms select t.type).ToList());
                ISet<GroundTermTupleEC> e;
                if (!tuplesByTypeMap.TryGetValue(typeKey, out e))
                    tuplesByTypeMap[typeKey] = e = new HashSet<GroundTermTupleEC>();
                e.Add(result);
            }
            return result;
        }

        public GroundTermEC makeGroundTerm(ITerm t)
        {
            Contract.Requires(!t.freeVariables.Any());
            return makeGroundTerm(t.asFunctionApplication.function, makeGroundTuple(t.asFunctionApplication.args));
        }
        public GroundTermEC makeGroundTerm(Function function, GroundTermTupleEC arguments)
        {
            return makeGroundFunctionApplication(function, arguments, null).ec;
        }

        private GroundFunctionApplicationEC makeGroundFunctionApplication(Function function, GroundTermTupleEC arguments, GroundTermEC ec)
        {
            Contract.Requires(arguments.universe == this);
            Debug.Assert(arguments == tupleMergeMap[arguments]);
            arguments = transitiveMerge(arguments);

            GroundFunctionApplicationEC fa;
            if (!arguments.incomingGroundFAsByFunction.TryGetValue(function, out fa))
            {
//                Debug.Assert(this.termMergeMap.Values.All(x => x.members.All(y => !(y.function == function && y.arguments == arguments))));
                var term = ec;
                if (term == null)
                {
                    term = new GroundTermEC(this, function.resultType);
                    termMergeMap[term] = term;
                }
                fa = new GroundFunctionApplicationEC(function, arguments, term);
                Debug.Assert(fa.ec.functionGroundTupleMap[function][arguments] == fa);
                { //Update type=>term map
                    ISet<GroundTermEC> e;
                    if (!typeToTermsMap.TryGetValue(term.type, out e))
                        typeToTermsMap[term.type] = e = new HashSet<GroundTermEC>();
                    e.Add(term);
                }
            }
            else
            {
                Debug.Assert(ec == null || fa.ec == ec);
            }

            return fa;
        }

        public IClauseEC makeClause(Clause c)
        {
            if (c.freeVariables.Any())
                return makeClause((from a in c.atoms select makeAtom(a)).ToList());
            else
                return makeGroundClause(c);
        }
        public IClauseEC makeClause(IEnumerable<IAtomEC> atoms)
        {
            if (atoms.All(a => a is GroundAtomEC))
                return makeGroundClause((from a in atoms select a as GroundAtomEC).ToList());
            else
                return new ClauseEC(this, atoms);
        }

        public   IAtomEC makeAtom(Atom a)
        {
            if (a.freeVariables.Any())
                return makeAtom(a.f, a.polarity);
            else
                return makeGroundAtom(a);

        }
        public   IAtomEC makeAtom(IAtomicFormula formula, bool polarity)
        {
            if (formula.freeVariables.Any())
                return makeAtom(makeAtomicFormula(formula), polarity);
            else
                return makeGroundAtom(formula, polarity);
        }
        internal IAtomEC makeAtom(IAtomicFormulaEC formula, bool polarity)
        {
            if (formula is GroundAtomicFormulaEC)
                return makeGroundAtom(formula as GroundAtomicFormulaEC, polarity);

            return new AtomEC(this, formula, polarity); //No cache for non-ground atoms
        }

        public IAtomicFormulaEC makeAtomicFormula(IAtomicFormula formula)
        {
//            Console.WriteLine("   MakeFormula({0})", formula.ToString());
            if (formula.freeVariables.Any())
                return makeAtomicFormula(formula.spredicate, makeTuple(formula.subTerms));
            else
                return makeGroundAtomicFormula(formula.spredicate, makeGroundTuple(formula.subTerms));
        }
        public IAtomicFormulaEC makeAtomicFormula(ISPredicate spredicate, ITermTupleEC args)
        {
            if (args is GroundTermTupleEC)
                return makeGroundAtomicFormula(spredicate, args as GroundTermTupleEC);
            
            var result = new AtomicFormulaEC(this, spredicate, args);

            /* TODO:do we need this mapping also for nongound?
            if (spredicate is Predicate) 
            {
                var predicate = spredicate as Predicate;
                ISet<GroundTermTupleEC> e;
                if (!predicateToTuplesMap.TryGetValue(predicate, out e))
                    predicateToTuplesMap[predicate] = e = new HashSet<GroundTermTupleEC>();
                e.Add(args);
            }*/
            return result;
        }

        public ITermTupleEC makeTuple(IEnumerable<ITerm> terms)
        {
//            nl++;
//            Console.WriteLine("   {0}makeTuple({1})", new String(' ', nl * 3), Operator.commaSeparatedList(from t in terms select t.ToString()));

            if (terms.All(t => !t.freeVariables.Any()))
                return makeGroundTuple(terms);
            var result = makeTuple((from t in terms select makeTerm(t)).ToList());

//            Console.WriteLine("   {0}/makeTuple", new String(' ', nl * 3));
//            nl--;

            return result;
        }
        public ITermTupleEC makeTuple(IEnumerable<ITermEC> terms)
        {
            if (terms.All(t => t is GroundTermEC))
                return makeGroundTuple((from t in terms select t as GroundTermEC).ToList());
//            if ((terms.First() is GroundTermEC) && (terms.Last().ToString().Contains(@"m_$4_$4_2[obj_$6_2,f_$3_$4_2][perm$N]")) && (terms.First() as GroundTermEC).index == 11 && terms.Count() == 2)
//                Console.WriteLine();

            var key = TermTupleEC.makeString(terms);
            TermTupleEC result;
            if (!nonGroundTupleCache.TryGetValue(key,out result))
                nonGroundTupleCache[key] = result = new TermTupleEC(this, terms);
//            if ((terms.First() is GroundTermEC) && (terms.Last().ToString().Contains(@"m_$4_$4_2[obj_$6_2,f_$3_$4_2][perm$N]")))
//                Console.WriteLine("   Created tuple({0}[{1}])", result.ToString(), result.ToStringN());
            return result;
            /* TODO:Do we need this mapping?
            var key = GroundTermTupleEC.makeStringN(this, terms);
            GroundTermTupleEC result;
            if (!tupleCache.TryGetValue(key, out result))
            {
                tupleCache[key] = result = new GroundTermTupleEC(this, terms);
                tupleMergeMap[result] = result;

                var typeKey = GroundTermTupleEC.typeString(from t in terms select t.type);
                ISet<GroundTermTupleEC> e;
                if (!tuplesByTypeMap.TryGetValue(typeKey, out e))
                    tuplesByTypeMap[typeKey] = e = new HashSet<GroundTermTupleEC>();
                e.Add(result);
            }
            return result;
             * */
        }

//        int nl = 0;
        public ITermEC makeTerm(ITerm t)
        {
//            nl++;
//            Console.WriteLine("   {0}makeTerm({1})", new String(' ', nl * 3), t.ToString());

            ITermEC result;
            if (!t.freeVariables.Any())
                result = makeGroundTerm(t.asFunctionApplication.function, makeGroundTuple(t.asFunctionApplication.args));
            else
                if (t.isVariable)
                    result = makeTerm(t.asVariable);
                else
                    result = makeTerm(t.asFunctionApplication.function, makeTuple(t.asFunctionApplication.args));

//            Console.WriteLine("   {0}/makeTerm", new String(' ', nl * 3));
//            nl--;
            return result;
        }
        IDictionary<LVar, VariableEC> variableTerms = new Dictionary<LVar, VariableEC>();
        public ITermEC makeTerm(Variable v)
        {
            VariableEC result;
            if (!variableTerms.TryGetValue(v.variable, out result))
                variableTerms[v.variable] = result = new VariableEC(this, v.variable);

            return result;

            /* TODO indexing
            Contract.Requires(arguments.universe == this);
            Debug.Assert(arguments == tupleMergeMap[arguments]);
            arguments = transitiveMerge(arguments);

            GroundFunctionApplicationEC fa;
            if (!arguments.incomingFAsByFunction.TryGetValue(function, out fa))
            {
                Debug.Assert(this.termMergeMap.Values.All(x => x.members.All(y => !(y.function == function && y.arguments == arguments))));
                var term = new GroundTermEC(this, function.resultType);
                termMergeMap[term] = term;
                fa = new GroundFunctionApplicationEC(function, arguments, term);

                //                term.addMember(fa);
                { //Update type=>term map
                    ISet<GroundTermEC> e;
                    if (!typeToTermsMap.TryGetValue(term.type, out e))
                        typeToTermsMap[term.type] = e = new HashSet<GroundTermEC>();
                    e.Add(term);
                }
            }

            return fa.ec;
             * */
        }
        public ITermEC makeTerm(Function function, ITermTupleEC arguments)
        {
            if (arguments is GroundTermTupleEC)
                return makeGroundTerm(function, arguments as GroundTermTupleEC);

            return new FunctionApplicationEC(this, function, arguments as TermTupleEC);

            /* TODO indexing
            Contract.Requires(arguments.universe == this);
            Debug.Assert(arguments == tupleMergeMap[arguments]);
            arguments = transitiveMerge(arguments);

            GroundFunctionApplicationEC fa;
            if (!arguments.incomingFAsByFunction.TryGetValue(function, out fa))
            {
                Debug.Assert(this.termMergeMap.Values.All(x => x.members.All(y => !(y.function == function && y.arguments == arguments))));
                var term = new GroundTermEC(this, function.resultType);
                termMergeMap[term] = term;
                fa = new GroundFunctionApplicationEC(function, arguments, term);

                //                term.addMember(fa);
                { //Update type=>term map
                    ISet<GroundTermEC> e;
                    if (!typeToTermsMap.TryGetValue(term.type, out e))
                        typeToTermsMap[term.type] = e = new HashSet<GroundTermEC>();
                    e.Add(term);
                }
            }

            return fa.ec;
             * */
        }

        #endregion element creation

        #region assumptions

        public void assertClause(GroundClauseEC c)
        {
            assumeClause(c, true);
        }
        public void assumeClause(GroundClauseEC c,bool create)
        {
            //Should be already saturated with universe
            Debug.Assert(c.universe == this);
            var sc = c;
            if (sc.Count() == 0)
                isRefuted = true;
            else if (sc.Count() == 1)
                sc.gAtoms.First().assume();
            else
                indexClause(sc);
        }

        private void indexClause(GroundClauseEC sc)
        {
            assumedClauses.Add(sc);
            for (var i = 0; i < sc.Count(); i++)
                indexClauseAtom(new ClauseAtomEC(sc, i));
        }

        private void indexClauseAtom(ClauseAtomEC ca)
        {
            IDictionary<bool, ISet<ClauseAtomEC>> e1;
            if (!assumedClauseAtomsByPredicateAndPolarity.TryGetValue(ca.atom.formula.predicate, out e1))
                assumedClauseAtomsByPredicateAndPolarity[ca.atom.formula.predicate] = e1 = new Dictionary<bool, ISet<ClauseAtomEC>>();
            
            ISet<ClauseAtomEC> e2;
            if (!e1.TryGetValue(ca.atom.polarity, out e2))
                e1[ca.atom.polarity] = e2 = new HashSet<ClauseAtomEC>();
            e2.Add(ca);
        }
        /*        
                private GroundClauseEC simplify(GroundClauseEC c)
                {
                    throw new NotImplementedException();
                    if (c.isFalse || c.isTrue)
                        return c;

                    var atoms = new HashSet<Atom>();
                    foreach (var a in c)
                    {
                        var er = eval(a);
                        if (er.isTrue)
                            return new Clause(true);
                        if (er.isFalse)
                            continue;
                        atoms.Add(a);
                    }

                    return new Clause(atoms);
            
                }
        */
        public void assertClause(Clause c)
        {
            assumeClause(c,true);
        }
        public void assumeClause(Clause oc,bool create=false)
        {
            var c = makeClause(oc);
            if (c.Count() == 0)
            {
                Debug.Assert(c.isFalse);
                isRefuted=true;
            }
            else if (c.Count() == 1)
            {
                assumeAtom(c.First(), create);
            }
            else
            {
                //Console.WriteLine("   indexing");
                indexClause(c);
            }
        }
        private void indexClause(IClauseEC cs)
        {
            assumedClauses.Add(cs);
            for (var i = 0; i < cs.Count(); i++)
                indexClauseAtom(new ClauseAtomEC(cs, i));
        }

        abstract class EvalResult
        {
            public abstract bool isTrue { get; }
            public abstract bool isFalse { get; }
        }
        class TrueEvalResult : EvalResult {
            public override bool isTrue { get { return true; } }
            public override bool isFalse { get{ return false; } }
        }
        class FalseEvalResult : EvalResult 
        {
            public override bool isTrue { get { return false; } }
            public override bool isFalse { get { return true; } }
        }
        class UnknownEvalResult : EvalResult 
        {
            public override bool isTrue { get { return false; } }
            public override bool isFalse { get { return false; } }
        }
        private Clause simplify(Clause c)
        {
 	        if (c.isFalse || c.isTrue)
                return c;

            var atoms = new HashSet<Atom>();
            foreach (var a in c.atoms)
            {
                var er = eval(a);
                if (er.isTrue)
                    return new Clause(true);
                if (er.isFalse)
                    continue;
                atoms.Add(a);
            }

            return new Clause(atoms);
        }

        private EvalResult eval(Atom a)
        {
            if (hasAtom(a))
                return new TrueEvalResult();
 	        if (a.f is Equality)
                if (a.f.freeVariables.Any())
                    return new UnknownEvalResult(); //TODO:see may hold/may not hold
                else
                {
                    var ct1 = makeGroundTerm(a.f.asEquality.t1);
                    var ct2 = makeGroundTerm(a.f.asEquality.t2);
                    var eq = ct1.Equals(ct2);
                    var ne = ct1.inequalities.Contains(ct2);
                    if (a.polarity)
                        if (eq)
                            return new TrueEvalResult();
                        else if (ne)
                            return new FalseEvalResult();
                        else 
                            return new UnknownEvalResult();
                    else
                        if (eq)
                            return new FalseEvalResult();
                        else if (ne)
                            return new TrueEvalResult();
                        else 
                            return new UnknownEvalResult();
                }
            else
                return new UnknownEvalResult(); //TODO: non-ground can be evaluated as may / may not
        }

        private bool hasAtom(Atom a)
        {
            if (a.f.freeVariables.Any())
                return assumedAtoms.Contains(makeAtom(a));
            else if (a.f is Equality)
            {
                var t1 = makeGroundTerm(a.f.asEquality.t1);
                var t2 = makeGroundTerm(a.f.asEquality.t2);
                if (a.polarity)
                    return t1.Equals(t2);
                else
                    return t1.inequalities.Contains(t2);
            }
            else
            {
                var args = makeGroundTuple(a.f.asPredicateApplication.args);
                return args.establishedAtomsByPredicate.ContainsKey(a.f.asPredicateApplication.predicate) &&
                    args.establishedAtomsByPredicate[a.f.asPredicateApplication.predicate].polarity == a.polarity;
            }
        } 
        public void assertAtom(Atom a)
        {
            assumeAtom(makeAtom(a),true);
        }
        public void assumeAtom(GroundAtomEC a)
        {
            a.assume();
            assumedAtoms.Add(a);
        }
        private void assumeAtom(IAtomEC a, bool create = false)
        {
            assumeAtom(a.formula, a.polarity,create);
            assumedAtoms.Add(a);
        }
        private void assumeAtom(IAtomicFormulaEC f, bool polarity,bool create)
        {
            if (f.predicate is EqualityIs)
                if (polarity)
                    assumeEquality(f.arguments[0], f.arguments[1]);
                else
                    assumeInequality(f.arguments[0], f.arguments[1]);
            else
                assumePredicateApplication(f, polarity,create);
        }

        /////////////////////////////////////////////////////////////////////////////////////////////
        private void assumePredicateApplication(PredicateApplication pa, bool polarity, bool create)
        {
            assumePredicateApplication(makeAtomicFormula(pa), polarity, create);
        }

        /////////////////////////////////////////////////////////////////////////////////////////////
        private void assumePredicateApplication(IAtomicFormulaEC pa, bool polarity,bool create)
        {
            if (pa is GroundAtomicFormulaEC) //Always create for ground atoms
                assumeAtom(makeGroundAtom(pa as GroundAtomicFormulaEC, polarity));
            else 
            {
                var aec = makeAtom(pa,polarity);
                var matches = match(pa.arguments,create);
                foreach (var m in matches)
                    assumeAtom(makeGroundAtom(makeGroundAtomicFormula(pa.predicate, m), polarity));
/*                foreach (var m in matches) //Add Predicate application/atom only where tuple exists
            {
                GroundAtomEC otherAtom;
                if (m.establishedAtomsByPredicate.TryGetValue(pa.predicate, out otherAtom))
                {
                    Debug.Assert(otherAtom.formula.arguments == m);
                    Debug.Assert(otherAtom.formula.predicate == pa.predicate);
                    if (otherAtom.polarity != polarity)
                        m.universe.isRefuted = true;
                }
                else
                {
                    GroundAtomicFormulaEC formula;
                    if (!m.incomingPAsByPredicate.TryGetValue(pa.predicate, out formula))
                        m.incomingPAsByPredicate[pa.predicate] = formula = makeGroundAtomicFormula(pa.predicate, m);
                    var atom = makeGroundAtom(formula, polarity);
                    atom.assume();
                }*/
                addUnitPA(pa,polarity);
            }
        }
        private void assumeInequality(ITermEC t1, ITermEC t2)
        {
            if (t1 is GroundTermEC && t2 is GroundTermEC)
                if (t1.Equals(t2))
                {
                    isRefuted = true;
                    return;
                }
                else
                {
                    (t1 as GroundTermEC).inequalities.Add(t2 as GroundTermEC);
                    (t2 as GroundTermEC).inequalities.Add(t1 as GroundTermEC);
                }
            else
            {
                var ne = new DirectionalEquality(t1, t2);
                var rne = new DirectionalEquality(t2, t1);
                inequalities.Add(ne);
                inequalities.Add(rne);
                applyDirectionalInequality(ne);
                applyDirectionalInequality(rne);
            }
        }
        private void assumeEquality(ITermEC t1, ITermEC t2)
        {
            //            Console.WriteLine("   AssumeEq({0})", t1.ToStringB());
            if (t1 is GroundTermEC && t2 is GroundTermEC)
            {
                if (t1.Equals(t2))
                    return; //already known
                if ((t1 as GroundTermEC).inequalities.Contains(t2 as GroundTermEC))
                {
                    isRefuted = true;
                    return;
                }
            }

            assumeDirectionalEquality(t1, t2);
            assumeDirectionalEquality(t2, t1);
        }
        public void assumeDirectionalEquality(ITermEC from, ITermEC to)
        {
//            Debug.Assert(from.freeVariables.IsSupersetOf(to.freeVariables));//TODO remove and match by type
            var newEq = new DirectionalEquality(from, to);
            if (!equalities.Add(newEq)) //equality already exists
                return;
            if (from.weight >= to.weight && from.height >= to.height && from.freeVariables.IsSupersetOf(to.freeVariables))
            {
                reducingOrNeutralEqualities.Add(newEq);
//                while (merged.Any())
//                    merged = from eq in reducingOrNeutralEqualities from t in applyDirectionalEquality(eq) select t;
//                foreach (var ne in inequalities)
//                    applyDirectionalInequality(ne);
                var merged = applyDirectionalEquality(newEq);
            }
            else
            {
                expandingEqualities.Add(newEq);
//                Console.WriteLine("***Expanding");
            }
        }

        internal bool upToDate(IAtomEC a)
        {
            return upToDate(a.formula);
        }

        private bool upToDate(IAtomicFormulaEC f)
        {
            return upToDate(f.arguments);
        }

        internal bool upToDate(ITermEC t)
        {                
            if (t is GroundTermEC)
            {
                Debug.Assert(termMergeMap[t as GroundTermEC] == t);
                return termMergeMap[t as GroundTermEC] == t;
            }
            else if (t is VariableEC)
                return true;
            else
                return upToDate((t as FunctionApplicationEC).arguments);
        }

        private bool upToDate(ITermTupleEC tuple)
        {
            if (tuple is GroundTermTupleEC)
            {
                Debug.Assert((tupleMergeMap[tuple as GroundTermTupleEC] == tuple));
                if (!(tupleMergeMap[tuple as GroundTermTupleEC] == tuple))
                    return false;
            }
            return tuple.All(x=>upToDate(x));
        }

        internal ITermEC update(ITermEC t)
        {
            if (t is GroundTermEC)
                return transitiveMerge(t as GroundTermEC);
            else if (t is VariableEC)
                return t;
            else
            {
                var fa = t as FunctionApplicationEC;
                var nArgs = update(fa.arguments);
                if (fa.arguments != nArgs)
                    return new FunctionApplicationEC(this,fa.function, nArgs);
                else
                    return fa;
            }
        }

        private TermTupleEC update(TermTupleEC tuple)
        {
            var na = new ITermEC[tuple.Count()];
            var updated = false;
            for (var i=0; i<tuple.Count(); i++)
            {
                na[i] = update(tuple[i]);
                if (na[i]!=tuple[i])
                    updated = true;
            }
            if (updated)
                return makeTuple(na) as TermTupleEC;
            else
                return tuple;
        }

        private IEnumerable<GroundTermEC> applyDirectionalEquality(DirectionalEquality eq)
        {
/*            foreach (var aa in assumedClauseAtomsByPredicateAndPolarity.Values)
                foreach (var aaa in aa.Values)
                    foreach (var aaaa in aa)
                        foreach (var ca in aaaa.Value)
                            foreach (var a in ca.clause)
                                Debug.Assert(upToDate(a));*/
                        //Update lazily
            eq.source = update(eq.source);
            eq.target = update(eq.target);
            Debug.Assert(upToDate(eq.source));
            Debug.Assert(upToDate(eq.target));
//            Console.WriteLine("Applying {0}", eq.ToString());
//            if (eq.source.Equals(eq.target))
//                Console.WriteLine();
            //            if (eq.ToString().Contains(@"null") && eq.ToString().Contains(@"this"))
//                Console.WriteLine();
//            Debug.Assert(eq.source.freeVariables.IsSupersetOf(eq.target.freeVariables));//Contract.Requires complains about IsSubsetof not being Pure
            if (eq.source is FunctionApplicationEC && !leadingFunctionSymbolToTermMap.ContainsKey((eq.source as FunctionApplicationEC).function))
                return new GroundTermEC[0];
//            Console.WriteLine("   Applying unit equality {0}", eq);
            var newlyEquivalentClasses = findEquivalencClasses(eq.source, eq.target);

            var newTerms = new HashSet<GroundTermEC>();
            foreach (var nec in newlyEquivalentClasses)
                newTerms.UnionWith(merge(nec));
            
/*            foreach (var aa in assumedClauseAtomsByPredicateAndPolarity.Values)
                foreach (var aaa in aa.Values)
                    foreach (var aaaa in aa)
                        foreach (var ca in aaaa.Value)
                            foreach (var a in ca.clause)
                                Debug.Assert(upToDate(a));*/

            return newTerms;
        }
        private void applyDirectionalInequality(DirectionalEquality eq)
        {
//            Debug.Assert(eq.source.freeVariables.IsSupersetOf(eq.target.freeVariables));//Contract.Requires complains about IsSubsetof not being Pure
            if (eq.source is FunctionApplicationEC && !leadingFunctionSymbolToTermMap.ContainsKey((eq.source as FunctionApplicationEC).function))
                return;
            //            Console.WriteLine("   Applying unit inequality {0}", eq);
            var matchingPairs = matchCreateDirectionalPair(eq.source, eq.target).ToList();
            foreach (var sl in matchingPairs)
                foreach (var mp2 in sl.Item2)
                {
                    if (sl.Item1.Equals(mp2))
                        isRefuted = true;
                    sl.Item1.inequalities.Add(mp2);
                    mp2.inequalities.Add(sl.Item1);
                }
        }

        private IEnumerable<IEnumerable<GroundTermEC>> findEquivalencClasses(ITermEC source, ITermEC target) //returns sets of equivalence classes defined by equality source==target
        {
            //            var matches = match(source);

            //Go over all matches, for each creating the set of matched targets and saturating with existing sets
            var matches = matchCreateDirectionalPair(source, target);
            var ecs = (from m in matches select new HashSet<GroundTermEC>(m.Item2.Union(new[] { m.Item1 }))).ToList();
            return (from ec in ecs where ec.Count > 1 select ec).ToList(); // saturateEquivalenceClasses(ecs);
        }
        private IEnumerable<Tuple<GroundTermEC, IEnumerable<GroundTermEC>>> matchCreateDirectionalPair(ITermEC source, ITermEC target)
        {
            //returns pairs of directed matches, left is match of source, right is match/create of target with substitution from source
            return
                (from sm in match(source)
                 select new Tuple<GroundTermEC, IEnumerable<GroundTermEC>>(sm.Item1,
                     from s in sm.Item2
                     from tm in createAllMatches(target.substitute(s))
                     select tm
                     )).ToList();
        }

        private IEnumerable<GroundTermEC> createAllMatches(ITermEC t) 
        {
//            Debug.Assert(t.freeVariables.IsSubsetOf(sub.variables)); //Contract.Requires complains about IsSubsetof not being Pure
            if (t is GroundTermEC)
                return new[] { t as GroundTermEC };
            
            if (t is VariableEC)
                if (typeToTermsMap.ContainsKey((t as VariableEC).variable.type))
                    return typeToTermsMap[(t as VariableEC).variable.type];
                else
                    return new GroundTermEC[0];

            var result = new List<GroundTermEC>();
            foreach (var cgtt in createAllMatches((t as FunctionApplicationEC).arguments))
                result.Add(makeGroundTerm((t as FunctionApplicationEC).function, cgtt));
            return result;
        }
        private IEnumerable<GroundTermTupleEC> createAllMatches(ITermTupleEC terms) 
        {
            return (from tl in createAllMatchesRecursive(terms) select makeGroundTuple(tl)).ToList();
        }
        private IEnumerable<IList<GroundTermEC>> createAllMatchesRecursive(IEnumerable<ITermEC> terms) 
        {
            if (terms.Count() == 0)
                return new[] { new GroundTermEC[0] };
            return (
                from prefix in createAllMatches(terms.First())
                from suffix in createAllMatchesRecursive(terms.Skip(1).ToList())
                select new[] { prefix }.Concat(suffix).ToList()).ToList();
        }

        private void addUnitPA(IAtomicFormulaEC pa, bool polarity)
        {
            {
                IDictionary<bool, ISet<IAtomicFormulaEC>> e1;
                if (!unitPAsByPredicate.TryGetValue(pa.predicate, out e1))
                    unitPAsByPredicate[pa.predicate] = e1 = new Dictionary<bool, ISet<IAtomicFormulaEC>>();
                ISet<IAtomicFormulaEC> e2;
                if (!e1.TryGetValue(polarity, out e2))
                    e1[polarity] = e2 = new HashSet<IAtomicFormulaEC>();
                e2.Add(pa);
            }

            {
                IDictionary<bool,ISet<IAtomicFormulaEC>> tte1;
                if (!unitPAsByArgTypes.TryGetValue(pa.predicate.argumentTypes, out tte1))
                    unitPAsByArgTypes[pa.predicate.argumentTypes] = tte1 = new Dictionary<bool, ISet<IAtomicFormulaEC>>();
                ISet<IAtomicFormulaEC> tte2;
                if (!tte1.TryGetValue(polarity, out tte2))
                    tte1[polarity] = tte2 = new HashSet<IAtomicFormulaEC>();
                tte2.Add(pa);
            }
        }

        /*        private void assumeInequality(ITerm t1, ITerm t2, bool create)
                {
                    var mss = match(t1, t2, create);
                    var ms2 = match(t2, create);


                    GroundTermEC gt1=null,gt2=null;
                    if (!t1.freeVariables.Any())
                        gt1=makeGroundTerm(t1);
                    if (!t2.freeVariables.Any())
                        gt2=makeGroundTerm(t2);
            
                    if (gt1!=null && gt2!=null){
                        gt1.inequalities.Add(gt2);
                        gt2.inequalities.Add(gt1);
                    }else{
                        IEnumerable<Tuple<GroundTermEC,IEnumerable<GroundSubstitutionEC>>> ms1, ms2; 
                        if (create)
                        {
                            ms1 = matchCreate(t1);
                            ms2 = matchCreate(t2);
                        }else{
                            ms1 = match(t1);
                            ms2 = match(t2);
                        }
                        foreach (var m1 in ms1)
                            foreach (var m2 in ms2)
                                if (m1.Item2.Any(s1 => m2.Item2.Any(s2 => s1.tryCombine(s2) != null)))
                                {
                                    m1.Item1.inequalities.Add(m2.Item1);
                                    m2.Item1.inequalities.Add(m1.Item1);
                                }
                    }
                }

        private IEnumerable<Tuple<GroundTermEC, IEnumerable<GroundTermEC>>> match(ITerm t1, ITerm t2, bool create)
        {
            if (t1.freeVariables.Any() || t2.freeVariables.Any())
            {
                return matchDirectional(t1,t2,create).Union(matchDirectional(t2,t1,create));
            }
            else
                return new[] { new Tuple<GroundTermEC, IEnumerable<GroundTermEC>>(makeGroundTerm(t1), new[]{makeGroundTerm(t1)}) };
        }

        private IEnumerable<Tuple<GroundTermEC, IEnumerable<GroundTermEC>>> matchDirectional(ITerm t1, ITerm t2, bool create)
        {
            var m1 = match(t1, create);

        }

        private IEnumerable<Tuple<GroundTermEC, IEnumerable<GroundSubstitutionEC>>> match(ITerm t1, bool create)
        {
            throw new NotImplementedException();
        }
                    */
        
        ////////////////////////////////////////////////////////////////////////////
        public void applyEqualities()
        {
            foreach (var eq in reducingOrNeutralEqualities)
                applyDirectionalEquality(eq);
        }
        #endregion assumptions

        #region matching

        private IEnumerable<GroundTermTupleEC> match(ITermTupleEC args, bool create)
        {
            if (create)
                return createAllMatches(args);
            else
                return match(args);
        }

        private IEnumerable<Tuple<GroundTermTupleEC, IEnumerable<GroundSubstitutionEC>>> match(IAtomicFormulaEC pattern)
        {
            var result = new List<Tuple<GroundTermTupleEC, IEnumerable<GroundSubstitutionEC>>>();
            ISet<GroundTermTupleEC> candidates;
            if (predicateToTuplesMap.TryGetValue(pattern.predicate, out candidates))
                result.AddRange((
                    from c in candidates
                    let options =
                        from to in tryUnify(pattern.arguments, c)
                        select to
                    where options.Any()
                    select new Tuple<GroundTermTupleEC, IEnumerable<GroundSubstitutionEC>>(c, options)
                    ).ToList());
            return result;
        }
        private IEnumerable<Tuple<GroundTermEC, IEnumerable<GroundSubstitutionEC>>> match(ITermEC pattern)
        {
            if (pattern is GroundTermEC)
                return new[]{new Tuple<GroundTermEC, IEnumerable<GroundSubstitutionEC>>(pattern as GroundTermEC,new GroundSubstitutionEC[]{new GroundSubstitutionEC()})};
            if (pattern is VariableEC)
                return match(pattern as VariableEC);
            else
                return match(pattern as FunctionApplicationEC);
        }
        private IEnumerable<Tuple<GroundTermEC, IEnumerable<GroundSubstitutionEC>>> match(FunctionApplicationEC pattern)
        {
            var result = new List<Tuple<GroundTermEC, IEnumerable<GroundSubstitutionEC>>>();
            ISet<GroundTermEC> candidates;
            if (leadingFunctionSymbolToTermMap.TryGetValue(pattern.function, out candidates))
                foreach (var c in candidates) //For each equivalence class
                {
                    var ss = tryUnify(pattern, c);
                    if (ss.Any())
                        result.Add(new Tuple<GroundTermEC, IEnumerable<GroundSubstitutionEC>>(c,ss));
                }
            return result;
        }
        private IEnumerable<Tuple<GroundTermEC, IEnumerable<GroundSubstitutionEC>>> match(VariableEC pattern)
        { //A variable matches all terms of its type
            var result = new List<Tuple<GroundTermEC, IEnumerable<GroundSubstitutionEC>>>();
            ISet<GroundTermEC> terms;
            if (typeToTermsMap.TryGetValue(pattern.type, out terms))
                foreach (var t in terms)
                    result.Add(
                        new Tuple<GroundTermEC, IEnumerable<GroundSubstitutionEC>>
                            (t, new[] { new GroundSubstitutionEC((pattern as VariableEC).variable, t) })
                    );
            return result;
        }
        private IEnumerable<GroundTermTupleEC> match(ITermTupleEC args)
        {
            return makeCombinations(from a in args select match(a));
        }

        ////////////////////////////////////////////////////////////////////////////
        private IEnumerable<GroundSubstitutionEC> tryUnify(ITermEC t, GroundTermEC ct)
        {//Directional unification - right side is ground(canonical)
//            Contract.Requires(t.type.isEquivalent(ct.type));
            if (t is GroundTermEC)
                if (t.Equals(ct))
                    return new[] { new GroundSubstitutionEC() };
                else
                    return new GroundSubstitutionEC[0];
            else if (t is VariableEC)
                return tryUnify(t as VariableEC, ct);
            else
                return tryUnify(t as FunctionApplicationEC, ct);
        }
        private IEnumerable<GroundSubstitutionEC> tryUnify(VariableEC pattern, GroundTermEC t)
        {
            Debug.Assert(termMergeMap[t]==t);
            return new[] { new GroundSubstitutionEC(pattern.variable, t) };
        }
        private IEnumerable<GroundSubstitutionEC> tryUnify(FunctionApplicationEC pattern, GroundTermEC t)
        {
            Debug.Assert(termMergeMap[t] == t);
            var result = new List<GroundSubstitutionEC>();
            if (t.groundFunctionApplicationMap.ContainsKey(pattern.function))
                foreach (var cfa in t.groundFunctionApplicationMap[pattern.function])     //for each application of the function in this equivalence class
                    result.AddRange(tryUnify(pattern, cfa));
            return result;
        }
        private IEnumerable<GroundSubstitutionEC> tryUnify(FunctionApplicationEC pattern, GroundFunctionApplicationEC cfa)
        {
            var result = new List<GroundSubstitutionEC>();
            foreach (var s in tryUnify(pattern.arguments, cfa.arguments))
                result.Add(s);
            return result;
        }
        private IEnumerable<GroundSubstitutionEC> tryUnify(ITermTupleEC tuplePattern, GroundTermTupleEC tuple)
        {
            Debug.Assert(tupleMergeMap[tuple] == tuple);
            Debug.Assert(tuplePattern.All(m=>!(m is GroundTermEC) || termMergeMap[m as GroundTermEC]==(m as GroundTermEC)));
            Debug.Assert(tuplePattern.Count() == tuple.Count());
//            Debug.Assert(tuplePattern.Zip(tuple, (x, y) => x.type.isEquivalent(y.type)).All(x => x));

            var argSubstitutions = new IList<GroundSubstitutionEC>[tuple.Count()];
            for (var i = 0; i < tuplePattern.Count(); i++)
                argSubstitutions[i] = tryUnify(tuplePattern[i], tuple.groundTerms[i]).ToList();
            var result = makeCombinations(argSubstitutions);
            return result;
        }

        ////////////////////////////////////////////////////////////////////////////
        private IEnumerable<GroundSubstitutionEC> makeCombinations(IEnumerable<IEnumerable<GroundSubstitutionEC>> subs)
        {
            var result = new List<GroundSubstitutionEC>();
            if (!subs.Any())
                return new[] { new GroundSubstitutionEC() };
            if (subs.Any(sl => !sl.Any()))
                return result;

            return makeCombinations(subs.First(), subs.Skip(1));
        }
        private IEnumerable<GroundSubstitutionEC> makeCombinations(IEnumerable<GroundSubstitutionEC> pss, IEnumerable<IEnumerable<GroundSubstitutionEC>> options)
        {
            if (options.Count() == 0)
                return pss;
            return
                (from ps in pss
                from c in makeCombinations(options.First(), options.Skip(1))
                let combination = ps.tryCombine(c)
                where combination != null
                select combination).ToList();
        }
        private IEnumerable<GroundTermTupleEC> makeCombinations(IEnumerable<IEnumerable<Tuple<GroundTermEC, IEnumerable<GroundSubstitutionEC>>>> optionSets)
        {
            return from o in makeCombinationsR(optionSets) select makeGroundTuple(o.Item1);
        }
        private IEnumerable<Tuple<IEnumerable<GroundTermEC>, GroundSubstitutionEC>> makeCombinationsR(IEnumerable<IEnumerable<Tuple<GroundTermEC, IEnumerable<GroundSubstitutionEC>>>> optionSets)
        {
            if (!optionSets.Any())
                return new List<Tuple<IEnumerable<GroundTermEC>, GroundSubstitutionEC>> { 
                    new Tuple<IEnumerable<GroundTermEC>,GroundSubstitutionEC>(new GroundTermEC[0],new GroundSubstitutionEC())
                };

            var suffixes = makeCombinationsR(optionSets.Skip(1));
            var prefixes = optionSets.First();

            return (
                from p in prefixes
                from sub in p.Item2
                from s in suffixes
                let cs = sub.tryCombine(s.Item2)
                where cs != null
                select new Tuple<IEnumerable<GroundTermEC>, GroundSubstitutionEC>(new[] { p.Item1 }.Union(s.Item1), cs)
            ).ToList();
        }

        #endregion matching

        ////////////////////////////////////////////////////////////////////////////
/*      private IEnumerable<IEnumerable<GroundTermEC>> saturateEquivalenceClasses(IEnumerable<IEnumerable<GroundTermEC>> ecs)
        {
            var result = new Dictionary<int, ISet<GroundTermEC>>();
            var termSetIndex = new Dictionary<GroundTermEC, int>();
            var i = 0;

            foreach (var ec in ecs)
            {
                var curSet = new HashSet<GroundTermEC>(ec);
                var found = new HashSet<int>(); //saturate merge equivalence classes
                int index;
                foreach (var t in curSet)
                    if (termSetIndex.TryGetValue(t, out index))
                    {
                        curSet.UnionWith(result[index]);
                        found.Add(index);
                    }
                foreach (var f in found)
                    result.Remove(f);
                foreach (var t in curSet)
                    termSetIndex[t] = i;
                result[i] = curSet;
                i++;
            }
            return result.Values;

        }*/
/*      private IEnumerable<Tuple<GroundTermEC, IEnumerable<GroundTermEC>>> matchPair(ITerm t1, ITerm t2)
        {
            var t1matches = match(t1);
            var t2matches = match(t2);
            return
                (from t1match in t1matches
                 select new Tuple<GroundTermEC, IEnumerable<GroundTermEC>>(
                     t1match.Item1,
                     
                     from t2match in t2matches
                     from s1 in t1match.Item2
                     from s2 in t2match.Item2
                     where (s1.tryCombine(s2)!=null)
                     select t2match.Item1)
                 ).ToList();
        }
        */
        /*
        ////////////////////////////////////////////////////////////////////////////
        //Match term t, under (partial) substitution sub
        private IEnumerable<GroundTermEC> match(ITerm t, GroundECSubstitution sub)
        {
            if (t.isVariable)
                if (sub.has(t.asVariable.var))
                    return new[] { sub[t.asVariable.var] };
                else
                    if (typeToTermsMap.ContainsKey(t.asVariable.var.type))
                        return typeToTermsMap[t.asVariable.var.type];
                    else
                        return new GroundTermEC[0];

            var result = new List<GroundTermEC>();
            foreach (var cgtt in match(t.asFunctionApplication.args, sub))
                result.Add(makeGroundTerm(t.asFunctionApplication.function, cgtt));
            return result;
        }
        */

        #region merge

        ////////////////////////////////////////////////////////////////////////////
        //Merges a set of terms (equivalence class), propagating merging until saturation, returns all newly wed couples
        private IEnumerable<GroundTermEC> merge(IEnumerable<GroundTermEC> terms) 
        {
            Contract.Requires(terms.All(t=>t.universe == this));
            if (terms.Count()==1)
                return new GroundTermEC[0];

            var result = new HashSet<GroundTermEC>();
            var todo = new Queue<IEnumerable<GroundTermEC>>();
            todo.Enqueue(terms);
            while (todo.Any())
            {
                var pec = todo.Dequeue();

                var ec = (from t in pec select transitiveMerge(t)).ToList();
                var mergedTerm = mergeI(new HashSet<GroundTermEC>((from t in ec select transitiveMerge(t))).ToList()); 

                Debug.Assert(ec.All(t=>transitiveMerge(t) == mergedTerm));

                result.Add(mergedTerm);

                var superTuples = new HashSet<TermTupleEC>(from term in ec from tuple in term.superTuples select tuple);
                foreach (var st in superTuples)
                    st.updateTerms();

                var groundSuperTuples = new HashSet<GroundTermTupleEC>((from term in ec from tuple in term.superGroundTuples select tuple).ToList());
                foreach (var t in ec)
                {
                    var tt = transitiveMerge(t);
                    foreach (var st in t.superGroundTuples)
                    {
                        var stt = transitiveMerge(st);
                    }
                    foreach (var st in tt.superGroundTuples)
                    {
                        var stt = transitiveMerge(st);
                    }
                }
                var impliedMerges = mergeTuples(groundSuperTuples);

                foreach (var st in mergedTerm.superGroundTuples)
                {
                    Debug.Assert(st == tupleMergeMap[st]);
                    foreach (var tt in st.groundTerms)
                        Debug.Assert(tt==termMergeMap[tt]);
                }
                foreach (var t in ec)
                    foreach (var st in transitiveMerge(t).superGroundTuples)
                    {
                        Debug.Assert(st == tupleMergeMap[st]);
                        foreach (var tt in st.groundTerms)
                            Debug.Assert(tt == termMergeMap[tt]);
                    }

                {
                    foreach (var t in ec)
                        foreach (var st in transitiveMerge(t).superGroundTuples)
                            Debug.Assert(mergedTerm.superGroundTuples.Contains(transitiveMerge(st)));
                    foreach (var st in mergedTerm.superGroundTuples)
                    {
                        Debug.Assert(tupleMergeMap[st] == st);
                        foreach (var tt in st.groundTerms)
                            Debug.Assert(tt == termMergeMap[tt]);
                    }
                }

                foreach (var im in impliedMerges)
                    todo.Enqueue(im);
            }
            return result;
        }

        ////////////////////////////////////////////////////////////////////////////
        //merge two terms without propagating to tuples
        private GroundTermEC mergeI(IEnumerable<GroundTermEC> mergees)
        {
            Contract.Requires(mergees.All(t=>mergees.First().type.isEquivalent(t.type)));
            Contract.Requires(mergees.All(t => t.universe == this));
            
            if (mergees.Any(t => t.inequalities.Intersect(mergees).Any()))
                isRefuted = true;
            var result = new GroundTermEC(this, mergees);

            termMergeMap[result] = result;
            foreach (var t in mergees)
            {
                typeToTermsMap[t.type].Remove(t);
                termMergeMap[t] = result;
            }
            typeToTermsMap[result.type].Add(result);
            return result;
        }

        ////////////////////////////////////////////////////////////////////////////
        //Merge tuples and propagate merge of terms, returning new equivalence classes thus found
        private IEnumerable<IEnumerable<GroundTermEC>> mergeTuples(IEnumerable<GroundTermTupleEC> tuples)
        {
            var result = new List<IEnumerable<GroundTermEC>>();
            Debug.Assert(tuples.All(t => groundTupleCache[t.ToStringN()] == t));
            foreach (var tuple in tuples)
                result.AddRange(updateTuple(tuple));
            return result;
        }

        ////////////////////////////////////////////////////////////////////////////
        //Propagate merge of t1+t2=>merged to super tuple source, returning the updated tuple and termsToMerge as terms that need propagations
        private IEnumerable<IEnumerable<GroundTermEC>> updateTuple(GroundTermTupleEC tuple)
        {
            var newTuple = makeGroundTuple((from GroundTermEC ct in tuple select transitiveMerge(ct)).ToList());
            
            Debug.Assert(tupleMergeMap[newTuple] == newTuple);
            tupleMergeMap[tuple] = newTuple;
            Debug.Assert(newTuple != tuple);

            //Remove from cache
            var oldKey = GroundTermTupleEC.makeStringN(tuple.universe, tuple.groundTerms);
            Debug.Assert(groundTupleCache[oldKey] == tuple);
            var b = groundTupleCache.Remove(oldKey);//When multiversing this may not be wanted
            Debug.Assert(b);

            var result = new List<IEnumerable<GroundTermEC>>();

            //Update pointing ground function applications
            {
                var cfasToUpdate = new List<GroundFunctionApplicationEC>(tuple.incomingGroundFAsByFunction.Values);
                foreach (var cfa in cfasToUpdate)
                {
                    Debug.Assert(cfa.arguments == tuple);
                    Debug.Assert(cfa.ec.members.Contains(cfa));
                    if (newTuple.incomingGroundFAsByFunction.ContainsKey(cfa.function)) //Merge function edges - mark sources for merge
                    {
                        cfa.ec.remove(cfa);
                        if (!cfa.ec.Equals(newTuple.incomingGroundFAsByFunction[cfa.function].ec)) //unless they are already the same
                        {
                            result.Add(new[] { cfa.ec, newTuple.incomingGroundFAsByFunction[cfa.function].ec });
                        }
                        else
                        {
                        }

                    }
                    else //redirect function application to merged tuple
                    {
                        var ec = cfa.ec;
                        ec.remove(cfa);
                        Debug.Assert(cfa.arguments.incomingGroundFAsByFunction[cfa.function]==cfa);
                        cfa.arguments.incomingGroundFAsByFunction.Remove(cfa.function);
                        makeGroundFunctionApplication(cfa.function, newTuple, ec);
                    }
                }
            }


            {//Update predicate applications from old to new tuple
                Debug.Assert(newTuple.establishedAtomsByPredicate.All(x => newTuple == x.Value.gFormula.gArguments));
                Debug.Assert(newTuple.establishedAtomsByPredicate.All(x => newTuple.incomingPAsByPredicate[x.Key] == x.Value.formula));

                var PAsToUpdate = new List<GroundAtomicFormulaEC>(tuple.incomingPAsByPredicate.Values);
                foreach (var pa in PAsToUpdate)
                {
                    var newPA = pa.redirect(this,newTuple);
                    Debug.Assert(newPA.arguments == newTuple);
                    Debug.Assert(newTuple.incomingPAsByPredicate[pa.predicate] == newPA);
                }
            }

            var subTermsToUpdate = new HashSet<GroundTermEC>(newTuple.groundTerms); //old tuple subterms don't care
            foreach (var t in subTermsToUpdate)
            {
                var sts = new HashSet<GroundTermTupleEC>(t.superGroundTuples);
                foreach (var st in sts)
                {
                    if (st != newTuple)
                        if (transitiveMerge(st) == newTuple)
                        {
//                            Console.WriteLine("         Removing super tuple {0}[{1}] from {2}[{3}]", st.ToStringB(), st.index, t.ToStringB(), t.index);
                            t.superGroundTuples.Remove(st);
                        }
                }
            }
            return result;
        }

        internal GroundTermTupleEC transitiveMerge(GroundTermTupleEC st)
        {
            var t = st;
            while (t != tupleMergeMap[t])
                t = tupleMergeMap[t]; //Do not compress path - (maybe keep also compressed paths)
            return t;
        }

        internal GroundTermEC transitiveMerge(GroundTermEC st)
        {
            var t = st;
            while (t != termMergeMap[t])
                t = termMergeMap[t]; //Do not compress path - (maybe keep also compressed paths)
            return t;
        }

        ////////////////////////////////////////////////////////////////////////////
        internal void mapFunctionApplicationToTerm(GroundFunctionApplicationEC cfa)
        {
            ISet<GroundTermEC> e;
            if (!leadingFunctionSymbolToTermMap.TryGetValue(cfa.function, out e))
                leadingFunctionSymbolToTermMap[cfa.function] = e = new HashSet<GroundTermEC>();
            e.Add(cfa.ec);
        }
        internal void unmapFunctionApplicationFromTerm(GroundFunctionApplicationEC cfa)
        {
            leadingFunctionSymbolToTermMap[cfa.function].Remove(cfa.ec);
        }

        #endregion merge

        #region clauses
        internal IEnumerable<GroundClauseEC> getGroundUnifications(GroundAtomEC g)
        {
//            Debug.Assert(upToDate(g));
            var result = new HashSet<GroundClauseEC>();
            var candidates = getGroundUnificationCandidates(g);
//            Console.WriteLine("      Unification candidates for {0}", g.ToStringB());
//                foreach (var c in candidates)
//                    Console.WriteLine("         {0}", c.ToStringB());
            foreach (var c in candidates)
            {
                Debug.Assert(g.formula.predicate == c.atom.formula.predicate);
                Debug.Assert(g.polarity != c.atom.polarity);
                var ss = tryUnify(c.atom.formula.arguments, g.gFormula.gArguments);
                Debug.Assert(ss.All(s=>s.variables.All(v=>(termMergeMap[s[v]] == s[v]))));
                foreach (var s in ss)
                    result.Add(makeGroundClause((from a in c.clause.Except(new[]{c.atom}) select a.substitute(s) as GroundAtomEC).ToList()));
            }
            return result;
        }

        private IEnumerable<ClauseAtomEC> getGroundUnificationCandidates(GroundAtomEC g)
        {
            IDictionary<bool, ISet<ClauseAtomEC>> e1;
            if (!assumedClauseAtomsByPredicateAndPolarity.TryGetValue(g.formula.predicate, out e1))
                return new ClauseAtomEC[0];
            ISet<ClauseAtomEC> e2;
            if (!e1.TryGetValue(!g.polarity, out e2))
                return new ClauseAtomEC[0];
//            Debug.Assert(e2.All(ca=>ca.clause.All(a=>upToDate(a))));
            foreach (var c in e2)
                foreach (var a in c.clause)
                    Debug.Assert(upToDate(a.formula.arguments));

            var result = new List<ClauseAtomEC>();
            foreach (var c in e2)
            {
                if (!c.atom.freeVariables.IsSupersetOf(c.clause.freeVariables))
                    continue;
                for (var i = 0; i < g.gFormula.gArguments.Count(); i++)
                {
                    if (g.formula.arguments[i].Equals(c.atom.formula.arguments[i]))
                        continue;
                    if (c.atom.formula.arguments[i] is GroundTermEC)
                        goto c2;
                    if (c.atom.formula.arguments[i] is VariableEC)
                        continue;
                    var fa = c.atom.formula.arguments[i] as FunctionApplicationEC;
                    if (!g.gFormula.gArguments.groundTerms[i].functionGroundTupleMap.ContainsKey(fa.function))
                        goto c2;
                } 
                result.Add(c);
            c2: ;

            }
//            var result = (from c in e2 where c.atom.freeVariables.IsSupersetOf(c.clause.freeVariables) select c).ToList();
            
            return result;
        }
        internal GroundAtomEC makeGroundAtom(bool p)
        {
            return makeGroundAtom(trueFormula,p);
        }
        #endregion clauses

        #region mapping

        ////////////////////////////////////////////////////////////////////////////
        public override string ToString()
        {
            return "|"+index + "|";
        }

        ////////////////////////////////////////////////////////////////////////////
        public string ToStringN()
        {
            return "|" + index + "|";
        }

        public override int GetHashCode()
        {
            return index.GetHashCode();
        }

        public override bool Equals(object other)
        {
            return ReferenceEquals(this, other);
        }
        #endregion mapping

        #region members
        
        ////////////////////////////////////////////////////////////////////////////
        public bool isRefuted { get; internal set; }
        
        private readonly int index;
        private static int curIndex = 0;

        ////////////////////////////////////////////////////////////////////////////
        //Mapping for instance creation
        private Dictionary<string, GroundTermTupleEC>        groundTupleCache         = new Dictionary<string, GroundTermTupleEC>();
        private Dictionary<string, TermTupleEC>              nonGroundTupleCache = new Dictionary<string, TermTupleEC>();

//        private Dictionary<string, GroundAtomicFormulaEC> atomicFormulaCache = new Dictionary<string, GroundAtomicFormulaEC>();
//        private Dictionary<string, GroundAtomEC            > groundAtomCache          = new Dictionary<string, GroundAtomEC            >();

        //Mapping for matching
        internal Dictionary<Function,  ISet<GroundTermEC>     >   leadingFunctionSymbolToTermMap = new Dictionary<Function, ISet<GroundTermEC>>();
        private Dictionary<IType,  ISet<GroundTermEC>     >       typeToTermsMap = new Dictionary<IType, ISet<GroundTermEC>>();
        private Dictionary<string,    ISet<GroundTermTupleEC>>   tuplesByTypeMap = new Dictionary<string,   ISet<GroundTermTupleEC>>();
        private Dictionary<ISPredicate, ISet<GroundTermTupleEC>> predicateToTuplesMap = new Dictionary<ISPredicate, ISet<GroundTermTupleEC>>();

        //Merging data
        internal Dictionary<GroundTermEC,      GroundTermEC     >  termMergeMap = new Dictionary<GroundTermEC,      GroundTermEC     >();
        internal Dictionary<GroundTermTupleEC, GroundTermTupleEC> tupleMergeMap = new Dictionary<GroundTermTupleEC, GroundTermTupleEC>();

        //Assumptions to saturate
        public HashSet<DirectionalEquality> reducingOrNeutralEqualities = new HashSet<DirectionalEquality>();
        public HashSet<DirectionalEquality> expandingEqualities         = new HashSet<DirectionalEquality>();

        public HashSet<DirectionalEquality> equalities   = new HashSet<DirectionalEquality>();
        public HashSet<DirectionalEquality> inequalities = new HashSet<DirectionalEquality>();
        
        private IDictionary<ISPredicate, IDictionary<bool, ISet<IAtomicFormulaEC>>> unitPAsByPredicate = new Dictionary<ISPredicate, IDictionary<bool, ISet<IAtomicFormulaEC>>>();
        private IDictionary<ITypeTuple,  IDictionary<bool, ISet<IAtomicFormulaEC>>> unitPAsByArgTypes  = new Dictionary<ITypeTuple,IDictionary<bool,ISet<IAtomicFormulaEC>>>();
        //TODO: check on create/merge tuple of given type


        private HashSet<IClauseEC> assumedClauses = new HashSet<IClauseEC>();
        private IDictionary<ISPredicate, IDictionary<bool, ISet<ClauseAtomEC>>> assumedClauseAtomsByPredicateAndPolarity = new Dictionary<ISPredicate, IDictionary<bool, ISet<ClauseAtomEC>>>();
        private HashSet<IAtomEC> assumedAtoms = new HashSet<IAtomEC>();
        ////////////////////////////////////////////////////////////////////////////
        public IEnumerable<GroundTermEC> termECs { get { return (from s in typeToTermsMap.Values from t in s select t).ToList(); } }

        //Clause indexing
//        private IDictionary<ISPredicate,ISet<GroundClauseAtomEC>> spredicateToClauseAtomMap = new Dictionary<ISPredicate,ISet<GroundClauseAtomEC>>();
        #endregion members
    }
   
    ////////////////////////////////////////////////////////////////////////////
    public class DirectionalEquality
    {
        internal ITermEC source;
        internal ITermEC target;
        private Dictionary<LVar, string> variableMap;

        public DirectionalEquality(ITermEC source, ITermEC target)
        {
            this.source = source;
            this.target = target;
            variableMap = new Dictionary<LVar, string>();
            foreach (var fv in source.orderedFreeVariables)
                variableMap[fv] = "v_" + variableMap.Count().ToString();
            foreach (var fv in target.orderedFreeVariables)
                if (!variableMap.ContainsKey(fv))
                    variableMap[fv] = "v_" + variableMap.Count().ToString();

        }

        public override string ToString()
        {
            return source.ToString(variableMap) + " => " + target.ToString(variableMap);
        }

        public string ToStringN()
        {
            return source.ToStringN(variableMap) + " => " + target.ToStringN(variableMap);
        }

        public override bool Equals(object obj)
        {
            var de = obj as DirectionalEquality;
            return
                de != null &&
                de.source.Equals(source) &&
                de.target.Equals(target);
        }

        public override int GetHashCode()
        {
            return ToStringN().GetHashCode();
        }
    }

    ////////////////////////////////////////////////////////////////////////////
    public class GroundSubstitutionEC
    {
        #region members
        private readonly Dictionary<LVar, GroundTermEC> map = new Dictionary<LVar, GroundTermEC>();
        public ISet<LVar> variables { get { return new HashSet<LVar>(map.Keys); } }
        #endregion members

        #region properties
        [Pure]
        public bool has(LVar v)
        {
            return map.ContainsKey(v);
        }
        public GroundTermEC this[LVar v]
        {
            get
            {
                Contract.Requires(has(v));
                return map[v];
            }
            set
            {
                Contract.Requires(!has(v));
                map.Add(v, value);
            }
        }
        #endregion properties

        #region creation
        public GroundSubstitutionEC()
        {
        }
        public GroundSubstitutionEC(LVar v, GroundTermEC t)
            : this()
        {
            this[v] = t;
        }

        public GroundSubstitutionEC(IDictionary<LVar, GroundTermEC> mappings)
        {
            map = new Dictionary<LVar, GroundTermEC>(mappings);
        }
        #endregion properties

        #region operators
        internal GroundSubstitutionEC tryCombine(GroundSubstitutionEC c)
        {
            var t = new Dictionary<LVar, GroundTermEC>(map);
            foreach (var p in c.map)
                if (t.ContainsKey(p.Key) && !t[p.Key].Equals(p.Value))
                    return null;
                else
                    t[p.Key] = p.Value;
            return new GroundSubstitutionEC(t);
        }
        #endregion operators

        #region strings
        public override string ToString()
        {
            return "{" + map.Aggregate("", (s, p) => s + (s.Any() ? " , " : "") + p.Key.ToString() + " => " + p.Value.ToString()) + "}";
        }
        #endregion strings
    }

}
