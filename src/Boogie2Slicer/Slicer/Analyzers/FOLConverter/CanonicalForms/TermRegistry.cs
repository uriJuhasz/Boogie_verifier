using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using Slicer.Analyzers.FOLConverter.Formulae;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms
{
    public class TermRegistry
    {
        #region instance creation
        public TermRegistry(ISRS srs, Predicate truePredicate)
        {
            this.srs = srs;
            this.emptyTuple = getGroundTuple(new GroundTermEC[0]);
            this.trueFormula = getGroundAtomicFormula(truePredicate, emptyTuple);
            Debug.Assert(trueFormula.isTrue); //could be important
        }
        #endregion instance creation

        #region simple element creation
        public GroundClauseEC getGroundClause(IEnumerable<GroundAtomEC> atoms)
        {
            var sAtoms = simplifyAndSortAtoms(atoms);
            var key = GroundClauseEC.makeStringN(sAtoms);
            GroundClauseEC clause;
            if (!groundClauseCache.TryGetValue(key, out clause))
            {
                clause = new GroundClauseEC(sAtoms);
                groundClauseCache[key] = clause;
            }
            return clause;
        }
        private SortedSet<GroundAtomEC> simplifyAndSortAtoms(IEnumerable<GroundAtomEC> atoms)
        {
            var result = new SortedSet<GroundAtomEC>();
            foreach (var a in atoms)
                if (a.isTrue || result.Contains(a.gNegate()))
                    return new SortedSet<GroundAtomEC> { trueFormula.gAtom(true) };
                else if (!a.isFalse)
                    result.Add(a);
            return result;
        }

        public GroundAtomicFormulaEC getGroundAtomicFormula(ISPredicate spredicate, GroundTermTupleEC arguments)
        {
            GroundAtomicFormulaEC formula;
            if (!groundTupleIncomingPAsByPredicate[arguments].TryGetValue(spredicate, out formula))
            {
                formula = new GroundAtomicFormulaEC(spredicate, arguments);
                groundTupleIncomingPAsByPredicate[arguments][spredicate] = formula;
            }
            return formula;
        }

        public GroundTermTupleEC     getGroundTuple        (IEnumerable<GroundTermEC> terms)
        {
            Debug.Assert(terms.All(t=>groundTerms.Contains(t)));
            var key = GroundTermTupleEC.makeStringN(terms);
            
            GroundTermTupleEC result;
            if (!groundTupleCache.TryGetValue(key, out result))
            {
                groundTupleCache[key] = result = new GroundTermTupleEC(terms);
                groundTupleIncomingSingletonFAsByFunction[result] = new Dictionary<Function, GroundTermEC>();
                groundTupleIncomingPAsByPredicate[result] = new Dictionary<ISPredicate, GroundAtomicFormulaEC>();
            }
            return result;
        }

        public GroundTermEC getSingletonGroundTerm(Function function, GroundTermTupleEC arguments)
        {
            GroundTermEC term;
            if (!groundTupleIncomingSingletonFAsByFunction[arguments].TryGetValue(function, out term))
            {
                term = new GroundTermEC(function.resultType);
                groundTupleIncomingSingletonFAsByFunction[arguments][function] = term;
                var fa = makeGroundFunctionApplication(function, arguments);
                term.setFAs(new[] { fa });
                term.updateRep();
            }
            return term;
        }

        private GroundFunctionApplicationEC makeGroundFunctionApplication(Function function, GroundTermTupleEC arguments)
        {
            Debug.Assert(!groundTupleIncomingSingletonFAsByFunction[arguments].ContainsKey(function));
            var fa = new GroundFunctionApplicationEC(function, arguments);
            return fa;
        }

        public ClauseEC getClause(IEnumerable<IAtomEC> atoms)
        {
            //TODO: simplify clause
            var key = ClauseEC.makeStringN(atoms);
            ClauseEC clause;
            if (!nonGroundClauseCache.TryGetValue(key, out clause))
            {
                Debug.Assert(!clauseFreeVariables.Intersect(from a in atoms from fv in a.freeVariables select fv).Any());
                clause = new ClauseEC(atoms);
                nonGroundClauseCache[key] = clause;
                clauseFreeVariables.UnionWith(clause.freeVariables);
            }
            return clause;
        }
        public AtomicFormulaEC getAtomicFormula(ISPredicate spredicate, TermTupleEC arguments)
        {
            AtomicFormulaEC formula;
            if (!tupleIncomingAtomicFormulaeByPredicate[arguments].TryGetValue(spredicate, out formula))
            {
                formula = new AtomicFormulaEC(spredicate, arguments);
                tupleIncomingAtomicFormulaeByPredicate[arguments][spredicate] = formula;
            }
            return formula;
        }
        public TermTupleEC getTuple(IEnumerable<ITermEC> terms)
        {
            var key = TermTupleEC.makeStringN(terms);
            TermTupleEC tuple;
            if (!nonGroundTupleCache.TryGetValue(key, out tuple))
            {
                tuple = new TermTupleEC(terms);
                nonGroundTupleCache[key] = tuple;
                tupleIncomingFunctionApplicationsByFunction[tuple] = new Dictionary<Function, FunctionApplicationEC>();
                tupleIncomingAtomicFormulaeByPredicate[tuple] = new Dictionary<ISPredicate, AtomicFormulaEC>();
            }
            return tuple;
        }

        public FunctionApplicationEC getFunctionApplication(Function function, TermTupleEC arguments)
        {
            FunctionApplicationEC functionApplication;
            if (!tupleIncomingFunctionApplicationsByFunction[arguments].TryGetValue(function, out functionApplication))
            {
                functionApplication = new FunctionApplicationEC(function, arguments);
                tupleIncomingFunctionApplicationsByFunction[arguments][function] = functionApplication;
            }
            return functionApplication;
        }

        public VariableEC getVariableTerm(LVar v)
        {
            VariableEC variableTerm;
            if (!variableTerms.TryGetValue(v, out variableTerm))
                variableTerms[v] = variableTerm = new VariableEC(v);
            return variableTerm;
        }
        #endregion simple element creation

        #region element structure creation
        public void getTermStructure(
            IDictionary<int, IEnumerable<Tuple<Function, int>>> newTerms, 
            IDictionary<int, GroundTermEC> existingTerms,
            IDictionary<int, int[]> newTuples, 
            IDictionary<int, GroundTermTupleEC> existingTuples,

            out IDictionary<int, GroundTermEC> finalTermMap,
            out IDictionary<int, GroundTermTupleEC> finalTupleMap
            )
        {

            Debug.Assert(!newTerms.Keys.Intersect(existingTerms.Keys).Any());
            Debug.Assert(!newTuples.Keys.Intersect(existingTuples.Keys).Any());

            //All tuples that appear in FAs are mapped
            Debug.Assert(newTerms.All(nt => nt.Value.All(ntt => newTuples.Keys.Contains(ntt.Item2) || existingTuples.Keys.Contains(ntt.Item2))));
            //All FAs for the same term have the same type
            Debug.Assert(newTerms.Values.All(nts => nts.All(nt => nt.Item1.resultType.isEquivalent(nts.First().Item1.resultType))));
            //All terms in tuples are mapped
            Debug.Assert(newTuples.Values.All(nt => nt.All(t => newTerms.ContainsKey(t) || existingTerms.ContainsKey(t))));
            //A new tuple must have at least one new term
            Debug.Assert(newTuples.Values.All(nt => nt.Any(t => newTerms.ContainsKey(t))));


            finalTermMap = new Dictionary<int, GroundTermEC>();
            finalTupleMap = new Dictionary<int, GroundTermTupleEC>();
            
            {
                var acyclicTerms = new Queue<int>();

                var tupleIncomingTermMap = new Dictionary<int, ISet<int>>();
                var termNewSubTuples = new Dictionary<int, ISet<int>>();
                var tupleNewSubTerms = new Dictionary<int, ISet<int>>();
                var termSuperTuples = new Dictionary<int, ISet<int>>();

                var tupleIncomingSortedFAs = new Dictionary<int,SortedDictionary<string,int>>();

                foreach (var t in newTerms)
                    termSuperTuples[t.Key] = new HashSet<int>();

                foreach (var t in newTuples)
                {
                    tupleIncomingTermMap[t.Key] = new HashSet<int>();
                    tupleIncomingSortedFAs[t.Key] = new SortedDictionary<string,int>();
                    tupleNewSubTerms[t.Key] = new HashSet<int>();
                    foreach (var st in t.Value)
                        if (newTerms.ContainsKey(st))
                        {
                            termSuperTuples[st].Add(t.Key);
                            tupleNewSubTerms[t.Key].Add(st);
                        }
                }
                foreach (var t in newTerms)
                {
                    termNewSubTuples[t.Key] = new HashSet<int>();
                    foreach (var fa in t.Value)
                        if (newTuples.ContainsKey(fa.Item2))
                        {
                            tupleIncomingTermMap[fa.Item2].Add(t.Key);
                            Debug.Assert(!tupleIncomingSortedFAs[fa.Item2].ContainsKey(fa.Item1.name));
                            tupleIncomingSortedFAs[fa.Item2][fa.Item1.name] = t.Key;
                            termNewSubTuples[t.Key].Add(fa.Item2);
                        }
                    if (!termNewSubTuples[t.Key].Any())
                        acyclicTerms.Enqueue(t.Key);
                }

                while (acyclicTerms.Any())
                {
                    var t = acyclicTerms.Dequeue();
                    Debug.Assert(newTerms[t].All(fa => existingTuples.ContainsKey(fa.Item2)));
                    var term = getAcyclicTerm(from fa in newTerms[t] select new Tuple<Function, GroundTermTupleEC>(fa.Item1, existingTuples[fa.Item2]));
                    existingTerms[t] = term;
                    newTerms.Remove(t);

                    var acyclicTuples = new HashSet<int>();
                    foreach (var st in termSuperTuples[t])
                    {
                        var b = tupleNewSubTerms[st].Remove(t);
                        Debug.Assert(b);
                        if (!tupleNewSubTerms[st].Any())
                            acyclicTuples.Add(st);
                    }

                    foreach (var at in acyclicTuples)
                    {
                        Debug.Assert(newTuples[at].All(tt=>existingTerms.ContainsKey(tt)));

                        existingTuples[at] = getGroundTuple(from tt in newTuples[at] select existingTerms[t]);
                        newTuples.Remove(at);
                        foreach (var tt in tupleIncomingTermMap[at])
                        {
                            var b = termNewSubTuples[tt].Remove(at);
                            Debug.Assert(b);
                            if (!termNewSubTuples[tt].Any())
                                acyclicTerms.Enqueue(tt);
                        }
                    }
                }

                
                if (newTerms.Any())
                {//Find an anchor for a minimal connected set
                    Debug.Assert(newTuples.Any());

                    var elements = new HashSet<int>(newTerms.Keys);
//                    var anchorKey = makeAnchorKey(newTerms[elements.First()],existingTuples);

                    var currentDependants = new HashSet<int>();
                    var anchor = elements.First();
                    while (elements.Any())
                    {
                        var todo = new Queue<int>();
                        anchor = elements.First();
                        todo.Enqueue(anchor);
                        while (todo.Any())
                        {
                            var t = todo.Dequeue();
                            foreach (var st in termSuperTuples[t])
                                foreach (var stt in tupleIncomingTermMap[st])
                                {
                                    Debug.Assert(newTerms.ContainsKey(stt));
                                    if (!currentDependants.Contains(stt) && elements.Contains(stt))
                                    {
                                        Debug.Assert(newTerms.ContainsKey(stt));
                                        currentDependants.Add(stt);
                                        elements.Remove(stt);
                                    }
                                }
                        }
                    }

                    //Now we have an anchor for a minimal connected set - we find the set by downward closure
                    var connectedSet = new HashSet<int>();
                    {
                        var todo = new Queue<int>();
                        todo.Enqueue(anchor);
                        while (todo.Any())
                        {
                            var t = todo.Dequeue();
                            Debug.Assert(newTerms.ContainsKey(t));
                            if (connectedSet.Contains(t))
                                continue;
                            connectedSet.Add(t);
                            foreach (var fa in newTerms[t])
                                if (newTuples.ContainsKey(fa.Item2))
                                    foreach (var stt in newTuples[fa.Item2])
                                        if (newTerms.ContainsKey(stt) && !connectedSet.Contains(stt))
                                            todo.Enqueue(stt);
                        }
                    }

                    //Now we have the connected set and anchor - try to match it
                    { //We order the nodes in a unique order, and so create a "normal form" for the cyclic spaghetti
                        //Sort terms by number of grounded (into existing tuple) FAs
                        var groundedTermGroundedFAs = new Dictionary<int, List<Tuple<Function, GroundTermTupleEC>>>();
                        var maxGroundedFAs = 0;
                        foreach (var t in connectedSet)
                        {
                            var groundedFAs = (from fa in newTerms[t] where existingTuples.ContainsKey(fa.Item2) select new Tuple<Function, GroundTermTupleEC>(fa.Item1,existingTuples[fa.Item2])).ToList();
                            if (groundedFAs.Any())
                                groundedTermGroundedFAs[t] = groundedFAs;
                            if (groundedFAs.Count > maxGroundedFAs)
                                maxGroundedFAs = groundedFAs.Count;
                        }

                        Debug.Assert(maxGroundedFAs > 0);

                        var termsByGroundedKey = new SortedDictionary<string, int>();
                        foreach (var tkv in groundedTermGroundedFAs)
                        {
                            var t = tkv.Key;
                            var groundedFAsArray = tkv.Value;
                            var sortedFAs = new SortedDictionary<string,Tuple<Function,GroundTermTupleEC>>();
                            foreach (var fa in groundedFAsArray)
                            {
                                string faKey = makeGroundedFAKey(sortedFAs);
                                sortedFAs[faKey] = fa;
                            }
                            string termKey = makeGroundedTermKey(maxGroundedFAs,sortedFAs);
                            termsByGroundedKey[termKey] = t;
                        }

                        var curIndex = 0;
                        var termIndexMap = new Dictionary<int, int>();
                        var todo = new Queue<int>();

                        var tupleUnindexedTerms = new Dictionary<int, ISet<int>>();
                        var connectedTuples = new HashSet<int>( from t in connectedSet from fa in newTerms[t] where newTuples.ContainsKey(fa.Item2) select fa.Item2);
                        foreach (var tt in connectedTuples)
                        {
                            tupleUnindexedTerms[tt] = new HashSet<int>(from t in newTuples[tt] where newTerms.ContainsKey(t) select t);
                            Debug.Assert(tupleUnindexedTerms[tt].All(newTerms.ContainsKey));
                            Debug.Assert(tupleUnindexedTerms[tt].Any());
                        }

                        var tupleLayer = new HashSet<int>();
                        foreach (var t in termsByGroundedKey.Values)
                        {
                            termIndexMap[t] = curIndex;
                            curIndex++;
                            todo.Enqueue(t);
                            foreach (var st in termSuperTuples[t])
                                if (connectedTuples.Contains(st))
                                {
                                    tupleUnindexedTerms[st].Remove(t);
                                    if (!tupleUnindexedTerms[st].Any())
                                        tupleLayer.Add(st);
                                }
                        }
                        
                        while (tupleLayer.Any() && termIndexMap.Count < connectedSet.Count)
                        {
                            var tlc = new HashSet<int>(tupleLayer);
                            var sortedTuples = new SortedDictionary<string, int>();
                            foreach (var tt in tlc)
                                sortedTuples[makeGroundedTupleKey(newTuples[tt], existingTerms, termIndexMap)] = tt;
                            tupleLayer.Clear();
                            foreach (var tt in sortedTuples.Values)
                            {
                                var fas = tupleIncomingSortedFAs[tt];
                                foreach (var fa in fas)
                                    if (connectedSet.Contains(fa.Value) && !termIndexMap.ContainsKey(fa.Value))
                                    {
                                        var t = fa.Value;
                                        termIndexMap[t] = curIndex;
                                        curIndex++;
                                        foreach (var st in termSuperTuples[t])
                                            if (connectedTuples.Contains(st))
                                            {
                                                var b = tupleUnindexedTerms[st].Remove(t);
                                                Debug.Assert(b);
                                                if (!tupleUnindexedTerms[st].Any())
                                                    tupleLayer.Add(st);
                                            }
                                    }
                            }
                        }
                        Debug.Assert(termIndexMap.Count == connectedSet.Count);
                    }
                }
            }

/*            createAcyclicTerms(newTerms, existingTerms, newTuples, existingTuples, finalTermMap, finalTupleMap);
            matchCyclicTerms(newTerms, existingTerms, newTuples, existingTuples, finalTermMap, finalTupleMap);
            if (newTerms.Any())
                createCyclicTerms(newTerms, existingTerms, newTuples, existingTuples, finalTermMap, finalTupleMap);*/
            Debug.Assert(!newTerms.Any());
            Debug.Assert(!newTuples.Any());
        }

        private string makeGroundedTupleKey(int[] p, IDictionary<int, GroundTermEC> existingTerms, Dictionary<int, int> termIndexMap)
        {
            throw new NotImplementedException();
        }

        private string makeAnchorKey(IEnumerable<Tuple<Function, int>> enumerable,IDictionary<int,GroundTermTupleEC> existingTuples)
        {
            throw new NotImplementedException();
        }

        private string makeKey(int anchor, IDictionary<int, IEnumerable<Tuple<Function, int>>> newTerms, IDictionary<int, GroundTermTupleEC> existingTuples)
        {
            throw new NotImplementedException();
        }

        private GroundTermEC getAcyclicTerm(IEnumerable<Tuple<Function, GroundTermTupleEC>> enumerable)
        {
            throw new NotImplementedException();
        }
/*
        private void createCyclicTerms(IDictionary<int, IEnumerable<Tuple<Function, int[]>>> newTerms, IDictionary<int, GroundTermEC> existingTerms, Dictionary<int, GroundTermEC> result)
        {
            throw new NotImplementedException();
        }

        private void matchCyclicTerms(IDictionary<int, IEnumerable<Tuple<Function, int[]>>> newTerms, IDictionary<int, GroundTermEC> existingTerms, Dictionary<int, GroundTermEC> result)
        {
            throw new NotImplementedException();
        }

        private void createAcyclicTerms(IDictionary<int, IEnumerable<Tuple<Function, int[]>>> newTerms, IDictionary<int, GroundTermEC> existingTerms, Dictionary<int, GroundTermEC> result)
        {
            throw new NotImplementedException();
        }
 * */
        #endregion element structure creation

        #region members
        internal readonly IDictionary<string, GroundTermTupleEC> groundTupleCache = new Dictionary<string, GroundTermTupleEC>();
        internal readonly IDictionary<string, GroundClauseEC> groundClauseCache = new Dictionary<string, GroundClauseEC>();

        internal readonly IDictionary<string, ClauseEC> nonGroundClauseCache = new Dictionary<string, ClauseEC>();
        internal readonly IDictionary<string, TermTupleEC> nonGroundTupleCache = new Dictionary<string, TermTupleEC>();

        private readonly ISet<GroundTermEC> groundTerms = new HashSet<GroundTermEC>();
        private readonly IDictionary<GroundTermTupleEC, IDictionary<Function, GroundTermEC>> groundTupleIncomingSingletonFAsByFunction = new Dictionary<GroundTermTupleEC, IDictionary<Function, GroundTermEC>>();
        private readonly IDictionary<GroundTermTupleEC, IDictionary<ISPredicate, GroundAtomicFormulaEC>> groundTupleIncomingPAsByPredicate = new Dictionary<GroundTermTupleEC, IDictionary<ISPredicate, GroundAtomicFormulaEC>>();


        public readonly ISRS srs;
        public readonly GroundTermTupleEC emptyTuple;
        public readonly GroundAtomicFormulaEC trueFormula; // { get; protected set; }

        //Variable terms
        internal readonly IDictionary<LVar, VariableEC> variableTerms = new Dictionary<LVar, VariableEC>();

        //Function applications
        internal readonly IDictionary<TermTupleEC, IDictionary<Function, FunctionApplicationEC>> tupleIncomingFunctionApplicationsByFunction = new Dictionary<TermTupleEC, IDictionary<Function, FunctionApplicationEC>>();

        //Predicate applications
        internal readonly IDictionary<TermTupleEC, IDictionary<ISPredicate, AtomicFormulaEC>> tupleIncomingAtomicFormulaeByPredicate = new Dictionary<TermTupleEC, IDictionary<ISPredicate, AtomicFormulaEC>>();

        internal readonly HashSet<LVar> clauseFreeVariables = new HashSet<LVar>();

        #endregion members
    }
}
