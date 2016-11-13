#if DEBUG
#define LOG
#endif

using Slicer.Analyzers.FOLConverter.Formulae;
using Slicer.StateSpace.Types;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using GTI = System.Int32;
using GTTI = System.Int32;

namespace Slicer.Analyzers.FOLConverter.CanonicalForms.TermRepositoryNS
{
    public class TermRepository
    {
        public readonly GAF trueFormula;
        public readonly GAF falseFormula;
        public readonly GTT emptyGTT;
        public readonly Predicate truePredicate;
        public readonly Predicate falsePredicate;

        public readonly IDictionary<Function, SimpleTKBO> functionTKBOMap;
//        public readonly int tkboMaxOrdinals;
        public readonly ISRS srs;

        //////////////////////////////////////////////////////////////////////////////////////////////////
        public TermRepository(ISRS srs, IDictionary<Function, SimpleTKBO> functionTKBOMap)
        {
            this.srs = srs;
            truePredicate = TruePredicate.get;
            falsePredicate = FalsePredicate.get();
            emptyGTT = getGTT(new GT[0], -1);
            trueFormula = getGAF(truePredicate, emptyGTT);
            falseFormula = getGAF(falsePredicate, emptyGTT);
            this.functionTKBOMap = new Dictionary<Function, SimpleTKBO>(functionTKBOMap);
            Debug.Assert(functionTKBOMap.Count > 0);
//            tkboMaxOrdinals = (from v in functionTKBOMap.Values select v.omega).Max() + 2;
        }
//        public int tkboMaxOrdinal { get { return tkboNumOrdinals - 1; } }

        #region element creation
        public GT getSingletonGT(Function function, GTT gtt)
        {
            Debug.Assert(gttIncomingSGFAsByFunction.ContainsKey(gtt));
            GT gt;
            GFA gfa;
            if (!gttIncomingSGFAsByFunction[gtt].TryGetValue(function, out gfa))
            {
                gfa = makeGFA(function, gtt);
                gt = makeNewGT(function.resultType);
                setNewGTGFAs(gt, new[] { gfa });
/*                gt.setGFAs(new[] { gfa });
                gt.updateRep();
                gt.updateRep2();*/
                gttIncomingSGFAsByFunction[gtt][function] = gfa;
                var gtKey = makeGTKey(new[] { new Tuple<Function, GTT>(function, gtt) });
                Debug.Assert(!gtCache.ContainsKey(gtKey));
                cacheGT(gtKey, gt);
            }
            else
                gt = gfa.gt;

            gts.Add(gt);
            Debug.Assert(gt.rep != null);
            return gt;
        }
        public GT getAcyclicGT(IEnumerable<Tuple<Function, GTT>> gfats)
        {
#if DEBUG
            Debug.Assert(gfats.Any());
            Debug.Assert(gfats.All(fat => fat.Item1.resultType.isEquivalent(gfats.First().Item1.resultType)));
            Debug.Assert(gfats.All(fat => gtts.Contains(fat.Item2)));
#endif
            if (gfats.Count() == 1)
                return getSingletonGT(gfats.First().Item1, gfats.First().Item2);

            var gtKey = makeGTKey(gfats);
            GT gt;
            if (!gtCache.TryGetValue(gtKey, out gt))
            {
                gt = makeNewGT(gfats.First().Item1.resultType);
                var gfas = (from gfat in gfats select makeGFA(gfat.Item1, gfat.Item2)).ToList();
                setNewGTGFAs(gt, gfas);
                cacheGT(gtKey, gt);
                gts.Add(gt);
            }

            Debug.Assert(gt.rep != null);
            return gt;
        }

        private static void setNewGTGFAs(GT gt, IEnumerable<GFA> gfas)
        {
            gt.setGFAs(gfas);
            gt.updateRep();
            gt.updateRep2();
        }

        private void cacheGT(string gtKey, GT gt)
        {
#if DEBUG
            Debug.Assert(!gtCache.ContainsKey(gtKey));
#endif
            foreach (var gfa in gt.gfas)
                gttSGTs[gfa.gtt].Add(gt);
            gtCache[gtKey] = gt;
        }
        public GTT getGTT(IEnumerable<GT> gts, int ui)
        {
            Debug.Assert(gts.All(this.gts.Contains));
            var key = GTT.makeStringN(gts);

            GTT gtt;
            if (!gttCache.TryGetValue(key, out gtt))
            {
                gtt = new GTT(gts);
                gttCache[key] = gtt;
                gttIncomingSGFAsByFunction[gtt] = new Dictionary<Function, GFA>();
                gtts.Add(gtt);
                gttIncomingGAFsByPredicate[gtt] = new Dictionary<IPredicate, GAF>();
                #region debug
#if DEBUG
                Debug.Assert(!gttSGTs.ContainsKey(gtt));
                if (GTT.curIndex % 10000 == 0)
                    Console.WriteLine("         ----------[{2}]Created ground tuple {0} : {1}", GTT.curIndex, gtt.ToStringN(), ui.ToString());
#endif
                #endregion debug
                gttSGTs[gtt] = new HashSet<GT>();
                foreach (var gt in gtt.gtT)
                    gtSGTTs[gt].Add(gtt);
            }

            return gtt;
        }
        private GT makeNewGT(IType type)
        {
            var gt = new GT(type);
#if DEBUG
            Debug.Assert(!gtSGTTs.ContainsKey(gt));
#endif
            gtSGTTs[gt] = new HashSet<GTT>();
            return gt;
        }
        public void getGroundTermStructure(ITermStructureTemplate template)
        {
            #region precondition
#if DEBUG
#if INVARIANTS
            template.check();
#endif
#endif
            #endregion precondition

            #region initial tuples
            var tgttsToMap = (from ngtti in template.unassignedGTTIs let tgtt = template.getGTTITemplate(ngtti) where tgtt.All(gti => !template.isGTIUnassigned(gti)) select ngtti).ToList();
            foreach (var ngtti in tgttsToMap)
                template.mapGTT(ngtti, getGTT(from gti in template.getGTTITemplate(ngtti) select template.getLGT(gti), template.ui));
            #endregion initial tuples

            var sccs = calculateSCCsInReverseTopoOrder(template);
            Debug.Assert(sccs.components.All(scc1 => scc1.gttis.All(template.isGTTIUnassigned)));
            while (sccs.any())
            {
                var scc = sccs.pop();
                Debug.Assert(scc.gttis.All(tti => sccs.components.All(scc2 => !scc2.gttis.Contains(tti))));
                matchOrCreateSCC(scc, template);
            }

        }
        private void matchOrCreateSCC(SCC scc, ITermStructureTemplate template)
        {
            Debug.Assert(scc.gtis.All(template.isGTIUnassigned));
            Debug.Assert(scc.gttis.All(template.isGTTIUnassigned));
            if (scc.gtis.Count == 1 && isAcyclicSingleton(scc.gtis.First(), template))
            {
                getGroundAcyclicTermFromTemplate(scc.gtis.First(), template);
#if DEBUG
                foreach (var gtti in template.unassignedGTTIs)
                    Debug.Assert(template.getGTTITemplate(gtti).Any(template.isGTIUnassigned));
#endif
            }
            else
            {
                var enumeration = enumerateSCC(scc, template);
                Debug.Assert(scc.gtis.All(template.isGTIUnassigned));
                Debug.Assert(scc.gtis.Count == enumeration.termMap.Count);
                Debug.Assert(scc.gttis.Count == enumeration.tupleMap.Count);
                var code = encodeSCC(scc, enumeration, template);
                Debug.Assert(scc.gtis.All(template.isGTIUnassigned));
                CTSMap map;
                if (cyclicTermStructureCache.TryGetValue(code, out map))
                {
                    Debug.Assert(scc.gtis.Count == map.termMap.Count);
                    Debug.Assert(scc.gttis.Count == map.tupleMap.Count);
                    assignCTS(scc, enumeration, map, template);
#if DEBUG
                    foreach (var tti in template.unassignedGTTIs)
                    {
                        var b = false;
                        foreach (var ti in template.getGTTITemplate(tti))
                            if (template.isGTIUnassigned(ti))
                                b = true;
                        Debug.Assert(b);
                    }
#endif
                }
                else
                {
                    Debug.Assert(scc.gtis.All(template.isGTIUnassigned));
                    createCTS(scc, template);
                    cacheCTS(scc, enumeration, code, template);
#if DEBUG
                    foreach (var tti in template.unassignedGTTIs)
                        Debug.Assert(template.getGTTITemplate(tti).Any(template.isGTIUnassigned));
#endif
                }
            }
            Debug.Assert(template.unassignedGTTIs.All(tti => template.getGTTITemplate(tti).Any(template.isGTIUnassigned)));
        }
        private void cacheCTS(SCC scc, SCCEnumeration enumeration, string code, ITermStructureTemplate template)
        {
            Debug.Assert(!cyclicTermStructureCache.ContainsKey(code));
            cyclicTermStructureCache[code] = new CTSMap(scc, enumeration, template);
            foreach (var gti in scc.gtis)
                cyclicGTMap[template.getLGT(gti)] = code;
            foreach (var gtti in scc.gttis)
                cyclicGTTMap[template.getLGTT(gtti)] = code;
        }
        private bool isAcyclicSingleton(int p, ITermStructureTemplate template)
        {
            return !(from tt in template.getGTITemplate(p)
                     where template.isGTTIUnassigned(tt.Item2)
                     from t in template.getGTTITemplate(tt.Item2)
                     select t).Contains(p);
        }
        private GT getGroundAcyclicTermFromTemplate(int gti, ITermStructureTemplate template)
        {
            var gfats = (from tt in template.getGTITemplate(gti) select new Tuple<Function, GTT>(tt.Item1, template.getLGTT(tt.Item2))).ToList();
            var gt = getAcyclicGT(gfats);
            template.mapGTandSGTTs(gti, gt, this);
            return gt;
        }

        public readonly IDictionary<Function, IDictionary<GTT, GFABase>> gfaBaseMap = new Dictionary<Function, IDictionary<GTT, GFABase>>();
        public ISet<GFABase> gfaBases { get { return new HashSet<GFABase>(from d in gfaBaseMap.Values from gfab in d.Values select gfab); } }
        public ISet<GFA> gfas { get { return new HashSet<GFA>(from gt in gts from gfa in gt.gfas select gfa); } }
        private GFA makeGFA(Function function, GTT gtt)
        {
            GFABase gfaBase;
            if (!gfaBaseMap.tryGet(function, gtt, out gfaBase))
            {
                gfaBase = new GFABase(function, gtt);
                gfaBaseMap.insert(function, gtt, gfaBase);
            }
            return new GFA(gfaBase);
        }
        private void createCTS(SCC scc, ITermStructureTemplate template)
        {
            #region consistency
#if DEBUG
            Debug.Assert(scc.gtis.All(template.isGTIUnassigned));
//            template.check();
#endif
            #endregion consistency

            var gttsToUpdate = new HashSet<int>();
            var gfatss = new Dictionary<int, IEnumerable<Tuple<Function, int>>>();

            #region create gts
            foreach (var ti in scc.gtis)
            {
                var gt = makeNewGT(template.getGTITemplate(ti).First().Item1.resultType);
                gfatss[ti] = template.getGTITemplate(ti);
                gttsToUpdate.UnionWith(template.mapGT(ti, gt));
                gts.Add(gt);
            }
            #endregion create gts

            #region create gtts
            Debug.Assert(gttsToUpdate.IsSupersetOf(scc.gttis));
            foreach (var gtti in gttsToUpdate)
            {
                Debug.Assert(template.isGTTIUnassigned(gtti));
                template.mapGTT(gtti, getGTT(from ti in template.getGTTITemplate(gtti) select template.getLGT(ti), template.ui));
            }
            #endregion create gtts

            #region map gts
            foreach (var gti in scc.gtis)
            {
                var gt = template.getLGT(gti);
                var gfats = gfatss[gti];
                var gfas = (from gfat in gfats select makeGFA(gfat.Item1, template.getLGTT(gfat.Item2))).ToList();
                gt.setGFAs(gfas);
                var gtKey = makeGTKey(from gfa in gfas select new Tuple<Function, GTT>(gfa.function, gfa.gtt));
                cacheGT(gtKey, gt);
                if (gfas.Count == 1)
                    gttIncomingSGFAsByFunction[gfas.First().gtt][gfas.First().function] = gfas.First();
            }
            #endregion map gts

            #region calculate gt heights
            {
                var goon = true;
                while (goon)
                {
                    goon = false;
                    foreach (var ti in scc.gtis)
                    {
                        var gt = template.getLGT(ti);
                        var oh = gt.height;
                        gt.updateHeightTemp();
                        if (gt.height < oh)
                            goon = true;
                    }
                }
            }
            foreach (var ti in scc.gtis)
                template.getLGT(ti).updateRep();
            var u = true;
            while (u)
            {
                u = false;
                foreach (var ti in scc.gtis)
                {
                    var n = template.getLGT(ti).updateRep2();
                    u = u || n;
                }
            }
            #endregion calculate gt heights

            #region consistency
#if DEBUG
            //            Debug.Assert(template.existingGTKeys.All(t => template.getLGT(t).rep != null));
            Debug.Assert(template.invariant());
//            template.check();
#endif
            #endregion consistency
        }
        private void assignCTS(SCC scc, SCCEnumeration enumeration, CTSMap map, ITermStructureTemplate template)
        {
            var tuplesToUpdate = new HashSet<int>();
            foreach (var t in scc.gtis)
                tuplesToUpdate.UnionWith(template.mapGT(t, map.mapTerm(enumeration.enumerateTerm(t))));
            foreach (var tt in scc.gttis)
                template.mapGTT(tt, map.mapTuple(enumeration.enumerateTuple(tt)));
            foreach (var tt in tuplesToUpdate.Except(scc.gttis))
                template.mapGTT(tt, getGTT(from ti in template.getGTTITemplate(tt) select template.getLGT(ti), template.ui));
        }
        private readonly Dictionary<string, CTSMap> cyclicTermStructureCache = new Dictionary<string, CTSMap>();
        public readonly IDictionary<GT, string> cyclicGTMap = new Dictionary<GT, string>();
        public readonly IDictionary<GTT, string> cyclicGTTMap = new Dictionary<GTT, string>();
        private string encodeSCC(SCC scc, SCCEnumeration enumeration, ITermStructureTemplate template)
        {
            string result = "";
            var sortedTerms = new SortedDictionary<int, int>();
            foreach (var ti in scc.gtis)
                sortedTerms[enumeration.enumerateTerm(ti)] = ti;
            foreach (var ti in sortedTerms.Values)
                result += "{" + encodeSCCTerm(ti, scc, enumeration, template) + "},";
            return result;
        }
        private string encodeSCCTerm(int ti, SCC scc, SCCEnumeration enumeration, ITermStructureTemplate template)
        {
            var faMap = new SortedDictionary<string, ISet<int>>();
            {
                foreach (var fa in template.getGTITemplate(ti))
                {
                    ISet<int> e;
                    if (!faMap.TryGetValue(fa.Item1.nameN, out e))
                        faMap[fa.Item1.name] = e = new HashSet<int>();
                    e.Add(fa.Item2);
                }
            }

            var result = "";
            foreach (var fakv in faMap)
            {
                var faArgss = fakv;// Map.First();
                var tupleKeys = new SortedSet<string>(from tti in faArgss.Value select encodeSCCTuple(tti, scc, enumeration, template));
                result += "(";
                foreach (var tk in tupleKeys)
                    result += makeStringRep(faArgss.Key, tk) + ",";
                result += ")";
            }
            return result;
        }
        private string encodeSCCTuple(GTTI gtti, SCC scc, SCCEnumeration enumeration, ITermStructureTemplate template)
        {
            return
                !template.isGTTIUnassigned(gtti)
                    ?
                template.getLGTT(gtti).ToStringN()
                    :
                Operator.commaSeparatedList(from gti in template.getGTTITemplate(gtti) select (template.isGTIUnassigned(gti) ? "[[" + enumeration.enumerateTerm(gti) + "]]" : template.getLGT(gti).ToStringN()));
        }
        class SCCEnumeration
        {
            public readonly IDictionary<int, int> termMap = new Dictionary<int, int>();
            public readonly IDictionary<int, int> tupleMap = new Dictionary<int, int>();
            internal int enumerateTerm(int t)
            {
                return termMap[t];
            }

            internal int enumerateTuple(int tt)
            {
                return tupleMap[tt];
            }
        }
        private SCCEnumeration enumerateSCC(SCC scc, ITermStructureTemplate template)
        {
            var result = new SCCEnumeration();
            var termContainingTuples = new Dictionary<int, ISet<int>>();
            var tupleIncomingFAs = new Dictionary<int, IDictionary<Function, int>>();
            var tupleUnenumeratedTerms = new Dictionary<int, int>();

            foreach (var tti in scc.gttis)
                tupleIncomingFAs[tti] = new Dictionary<Function, int>();

            var termRepFAKey = new SortedDictionary<int, string>(); //Tuple<Function, string>>();

            foreach (var ti in scc.gtis)
            {
                termContainingTuples[ti] = new HashSet<int>();
                foreach (var ttikv in template.getGTITemplate(ti))
                    if (scc.gttis.Contains(ttikv.Item2))
                    {
                        Debug.Assert(!tupleIncomingFAs[ttikv.Item2].ContainsKey(ttikv.Item1));
                        tupleIncomingFAs[ttikv.Item2][ttikv.Item1] = ti;
                    }
                    else //an existing tuple
                        propagateTuple(template, termRepFAKey, ti, makeStringRep(ttikv.Item1.nameN, template.getLGTT(ttikv.Item2).ToStringN())); //.ToStringN() + ")";ttikv);
            }

            foreach (var tti in scc.gttis)
            {
                tupleUnenumeratedTerms[tti] = 0;
                foreach (var ti in template.getGTTITemplate(tti))
                    if (scc.gtis.Contains(ti))
                    {
                        termContainingTuples[ti].Add(tti);
                        tupleUnenumeratedTerms[tti]++;
                    }
                Debug.Assert(tupleUnenumeratedTerms[tti] > 0);
            }

            var curTermIndex = 0;
            var curTupleIndex = 0;
            while (termRepFAKey.Any())
            {
                var tupleKeyMap = new Dictionary<int, string>();
                {//terms
                    Queue<int> todo;
                    {
                        var dict = new SortedDictionary<string, int>();
                        foreach (var trkv in termRepFAKey)
                            dict[trkv.Value] = trkv.Key;
                        todo = new Queue<int>(dict.Values);
                        termRepFAKey.Clear();
                    }

                    while (todo.Any())
                    {
                        var ti = todo.Dequeue();
                        Debug.Assert(!result.termMap.ContainsKey(ti));
                        result.termMap[ti] = curTermIndex;
                        curTermIndex++;
                        foreach (var tti in termContainingTuples[ti])
                        {
                            Debug.Assert(tupleUnenumeratedTerms[tti] > 0);
                            tupleUnenumeratedTerms[tti] -= template.getGTTITemplate(tti).Count(tei => tei == ti);
                            Debug.Assert(tupleUnenumeratedTerms[tti] >= 0);
                            if (tupleUnenumeratedTerms[tti] == 0)
                                tupleKeyMap[tti] = makeTupleKey(from tei in template.getGTTITemplate(tti) select (template.isGTIUnassigned(tei) ? "[[" + result.termMap[tei].ToString() + "]]" : template.getLGT(tei).ToStringN()));
                        }
                    }
                }


                {//tuples
                    Queue<int> todoTuples;
                    {
                        var dict = new SortedDictionary<string, int>();
                        foreach (var ttrkv in tupleKeyMap)
                            dict[ttrkv.Value] = ttrkv.Key;
                        todoTuples = new Queue<int>(dict.Values);
                    }

                    while (todoTuples.Any())
                    {
                        var tti = todoTuples.Dequeue();
                        Debug.Assert(!result.tupleMap.ContainsKey(tti));
                        result.tupleMap[tti] = curTupleIndex;
                        curTupleIndex++;
                        foreach (var ti in tupleIncomingFAs[tti])
                            if (!result.termMap.ContainsKey(ti.Value))
                                propagateTuple(template, termRepFAKey, ti.Value, makeStringRep(ti.Key.nameN, tupleKeyMap[tti])); // template.newTuples[tti]);
                    }
                    tupleKeyMap.Clear();
                }
            }
            Debug.Assert(scc.gtis.Count == result.termMap.Count);
            return result;
        }
        private static void propagateTuple(ITermStructureTemplate template, SortedDictionary<int, string> termRepFAKey, int ti, string tupleKey)
        {
            var stringRep = tupleKey;
            string k;
            if (termRepFAKey.TryGetValue(ti, out k))
            {
                if (k.CompareTo(stringRep) > 0)
                    termRepFAKey[ti] = stringRep;
            }
            else
                termRepFAKey[ti] = stringRep;
        }
        private string makeTupleKey(IEnumerable<string> stringNs)
        {
            return Operator.commaSeparatedList(stringNs);
        }
        private static string makeStringRep(string functionName, string argumentsStringRep) //GroundTermTupleEC arguments)
        {
            return functionName + "(" + argumentsStringRep + ")";
        }
        private SCCs calculateSCCsInReverseTopoOrder(ITermStructureTemplate template)
        {
            return new SCCMaker(template).sccs;
        }
        private static string makeGTKey(IEnumerable<Tuple<Function, GTT>> fas)
        {
            var sortedFAStrings = new SortedSet<string>(from fa in fas select fa.Item1.nameN + "(" + fa.Item2.ToStringN() + ")");
            return Operator.commaSeparatedList(sortedFAStrings);
        }
        #endregion element creation

        class CTSMap
        {
            public readonly IDictionary<int, GT> termMap = new Dictionary<int, GT>();
            public readonly IDictionary<int, GTT> tupleMap = new Dictionary<int, GTT>();

            public CTSMap(SCC scc, SCCEnumeration enumeration, ITermStructureTemplate template)
            {
                foreach (var ti in scc.gtis)
                    termMap[enumeration.enumerateTerm(ti)] = template.getLGT(ti);
                foreach (var tti in scc.gttis)
                    tupleMap[enumeration.enumerateTuple(tti)] = template.getLGTT(tti);
            }

            internal GT mapTerm(int p)
            {
                return termMap[p];
            }
            internal GTT mapTuple(int p)
            {
                return tupleMap[p];
            }
        }
        class SCC
        {
            public readonly ISet<int> gtis;
            public readonly ISet<int> gttis;

            public SCC(IEnumerable<int> terms, IEnumerable<int> tuples)
            {
                Debug.Assert(terms.Any());
                this.gtis = new HashSet<int>(terms);
                this.gttis = new HashSet<int>(tuples);
            }
        }
        class SCCs
        {
            public readonly Queue<SCC> components = new Queue<SCC>();
            private ITermStructureTemplate template;

            public SCCs(ITermStructureTemplate template)
            {
                this.template = template;
            }

            internal bool any()
            {
                return components.Any();
            }

            internal SCC pop()
            {
                var result = components.Dequeue();
                return result;
            }

            internal void add(IEnumerable<int> terms)
            {
                var tuples =
                        from t in terms
                        from ttkv in template.getGTITemplate(t)
                        where template.isGTTIUnassigned(ttkv.Item2)
                        //                        where !components.Any(scc=>scc.tuples.Contains(ttkv.Item2)) 
                        where template.getGTTITemplate(ttkv.Item2).Intersect(terms).Any()
                        select ttkv.Item2;
                Debug.Assert(tuples.All(tti => components.All(scc => !scc.gttis.Contains(tti))));
                var lastSCC = new SCC(terms, tuples);
                components.Enqueue(lastSCC);
                Debug.Assert(components.All(scc1 => scc1.gttis.All(template.isGTTIUnassigned)));
                Debug.Assert(components.Last().gttis.All(tti => template.getGTTITemplate(tti).Intersect(components.Last().gtis).Any()));
                //                Debug.Assert(components.Last().gts.All(ti => template.getGTITemplate(ti).All(tti => components.Any(scc => scc.gtts.Contains(tti.Item2)) || template.existingGTTKeys.Contains(tti.Item2) || template.getGTTITemplate(tti.Item2).All(ti1 => template.isGTIUpToDate(ti1) || components.Any(scc => scc.gts.Contains(ti1))))));
#if DEBUG
                foreach (var tti in template.unassignedGTTIs)
                {
                    var inElement = lastSCC.gttis.Contains(tti);
                    var gts = template.getGTTITemplate(tti);
                    var containsElement = gts.Any(lastSCC.gtis.Contains);
                    var containingElement = lastSCC.gtis.Any(ti => template.getGTITemplate(ti).Any(fa => fa.Item2 == tti));
                    Debug.Assert(inElement || !containsElement || !containingElement);
                }
#endif
                //                Debug.Assert(template.newTupleKeys.All(tti => components.Last().tuples.Contains(tti) || !template.newTuple(tti).Any(components.Last().terms.Contains) || !components.Last().terms.Any(ti=>template.newTerm(ti).Any(fa=>fa.Item2==ti)) ));
            }
        }
        class SCCMaker
        {
            private readonly ITermStructureTemplate template;
            public readonly SCCs sccs;

            private int curIndex = 0;
            private Stack<int> currentStack = new Stack<int>();
            private ISet<int> currentStackSet = new HashSet<int>();
            private readonly IDictionary<int, VertexRecord> vertices = new Dictionary<int, VertexRecord>();
            public SCCMaker(ITermStructureTemplate t)
            {
                template = t;
                sccs = new SCCs(t);
                foreach (var v in t.unassignedGTIs)
                    if (!vertices.ContainsKey(v))
                        getSCC(v);
            }

            private void getSCC(int v)
            {
                Debug.Assert(!vertices.ContainsKey(v));
                vertices[v] = new VertexRecord(curIndex, curIndex);
                curIndex++;
                Debug.Assert(!currentStackSet.Contains(v));
                currentStack.Push(v);
                currentStackSet.Add(v);
                foreach (var w in getSuccessors(v))
                {
                    if (!vertices.ContainsKey(w))
                    {
                        getSCC(w);
                        vertices[v].minLowIndex(vertices[w].lowIndex);
                    }
                    else if (currentStackSet.Contains(w))
                        vertices[v].minLowIndex(vertices[w].index);
                }
                if (vertices[v].index == vertices[v].lowIndex)
                {
                    Debug.Assert(currentStackSet.Any());
                    Debug.Assert(currentStackSet.Contains(v));
                    var currentSet = new HashSet<int>();
                    int u;
                    do
                    {
                        u = currentStack.Pop();
                        currentStackSet.Remove(u);
                        currentSet.Add(u);
                    } while (u != v);
                    sccs.add(currentSet);
                    currentSet = new HashSet<int>();
                }
            }

            private IEnumerable<int> getSuccessors(int v)
            {
                return (from fa in template.getGTITemplate(v)
                        where template.isGTTIUnassigned(fa.Item2)
                        from st in template.getGTTITemplate(fa.Item2)
                        where template.isGTIUnassigned(st)
                        select st).ToList();
            }

            class VertexRecord
            {
                public readonly int index;
                public int lowIndex;

                public VertexRecord(int index, int lowIndex)
                {
                    this.index = index;
                    this.lowIndex = lowIndex;
                }

                internal void minLowIndex(int low)
                {
                    if (low < lowIndex)
                        lowIndex = low;
                }
            }
        }

        internal readonly IDictionary<string, GTT> gttCache = new Dictionary<string, GTT>();
        internal readonly IDictionary<string, GT> gtCache = new Dictionary<string, GT>();
        internal readonly ISet<GT> gts = new HashSet<GT>();
        internal readonly ISet<GTT> gtts = new HashSet<GTT>();
        internal readonly IDictionary<GTT, IDictionary<Function, GFA>> gttIncomingSGFAsByFunction = new Dictionary<GTT, IDictionary<Function, GFA>>();

        internal readonly IDictionary<GT, ISet<GTT>> gtSGTTs = new Dictionary<GT, ISet<GTT>>();
        internal readonly IDictionary<GTT, ISet<GT>> gttSGTs = new Dictionary<GTT, ISet<GT>>();

        internal bool tryGetGTT(IEnumerable<GT> ts, out GTT tuple)
        {
            var key = GTT.makeStringN(ts);
            return gttCache.TryGetValue(key, out tuple);
        }

        internal readonly IDictionary<GTT, IDictionary<IPredicate, GAF>> gttIncomingGAFsByPredicate = new Dictionary<GTT, IDictionary<IPredicate, GAF>>();
        internal ISet<GAF> gafs = new HashSet<GAF>();
        internal GAF getGAF(IPredicate spredicate, GTT args)
        {
            GAF gaf;
            if (!gttIncomingGAFsByPredicate[args].TryGetValue(spredicate, out gaf))
            {
                gttIncomingGAFsByPredicate[args][spredicate] = gaf = new GAF(spredicate, args);
                gafs.Add(gaf);
                Debug.Assert(!gafGCs.ContainsKey(gaf));
                gafGCs[gaf] = new HashSet<GC>();
                Debug.Assert(!gafFCs.ContainsKey(gaf));
                gafFCs[gaf] = new HashSet<FC>();
#if DEBUG
#if LOG
                if (GAF.curIndex % 10000 == 0)
                    Console.WriteLine("        ----------Created ground atomic formula {0} : {1}", GAF.curIndex, gaf.ToStringN());
#endif
#endif
            }
            return gaf;
        }

        internal readonly IDictionary<GAF, ISet<GC>> gafGCs = new Dictionary<GAF, ISet<GC>>();
        internal readonly IDictionary<GAF, ISet<FC>> gafFCs = new Dictionary<GAF, ISet<FC>>();
        internal readonly IDictionary<FAF, ISet<FC>> fafFCs = new Dictionary<FAF, ISet<FC>>();

        internal readonly IDictionary<string, GC> gcCache = new Dictionary<string, GC>();
        public GC getGroundClause(IEnumerable<GL> ogas)
        {
            var gas = simplifyAndSortGroundAtoms(ogas);
            var key = GC.makeStringN(gas);

            GC gc;
            if (!gcCache.TryGetValue(key, out gc))
            {
                gc = new GC(gas);
                gcCache[key] = gc;
                #region debug
#if DEBUG
#if LOG
                if (GC.curIndex % 10000 == 0)
                    Console.WriteLine("         ----------Created ground clause {0}", GC.curIndex, gc.ToStringN());
#endif
#endif
                #endregion debug
                foreach (var ga in gas)
                    gafGCs[ga.gaf].Add(gc);
            }
            return gc;
        }
        private SortedSet<GL> simplifyAndSortGroundAtoms(IEnumerable<GL> gas)
        {
            var result = new SortedSet<GL>();
            foreach (var a in gas)
                if (a.isTrue || result.Contains(a.gNegate))
                    return new SortedSet<GL> { trueFormula.gLiteral(true) };
                else if (!a.isFalse)
                    result.Add(a);
            return result;
        }

        internal readonly IDictionary<LVar, FVT> fvMap = new Dictionary<LVar, FVT>();
        public FVT getVariableTerm(LVar v)
        {
            FVT result;
            if (!fvMap.TryGetValue(v, out result))
            {
                fvMap[v] = result = new FVT(v);
                #region log
#if DEBUG
#if LOG
                if (fvMap.Count % 10000 == 0)
                    Console.WriteLine("         ----------Created variable term {0}", fvMap.Count);
                //                    Console.WriteLine("----------Created variable term {0} : {1}", variableTerms.Count, v.name);
#endif
#endif
                #endregion log
            }
            return result;
        }

        internal readonly IDictionary<string, FTT> fttCache = new Dictionary<string, FTT>();
        public FTT getNonGroundTuple(IEnumerable<IT> ts)
        {
            Debug.Assert(ts.Any(t => !(t is GT)));
            var key = FTT.makeStringN(ts);
            FTT ftt;
            if (!fttCache.TryGetValue(key, out ftt))
            {
                fttCache[key] = ftt = new FTT(ts);
                fttSuperFAFsByPredicate[ftt] = new Dictionary<IPredicate, FAF>();
                fttSuperFFAsByFunction[ftt] = new Dictionary<Function, FFA>();
                #region log
#if DEBUG
#if LOG
                if (fttCache.Count % 10000 == 0)
                    Console.WriteLine("         ----------Created non ground tuple {0}", fttCache.Count);
#endif
#endif
                #endregion log
            }
            return ftt;
        }

        internal readonly IDictionary<FTT, IDictionary<Function, FFA>> fttSuperFFAsByFunction = new Dictionary<FTT, IDictionary<Function, FFA>>();
#if LOG
        private ISet<FFA> functionApplications = new HashSet<FFA>();
#endif
        public FFA getFFA(Function function, FTT ftt)
        {
            FFA fa;
            if (!fttSuperFFAsByFunction[ftt].TryGetValue(function, out fa))
            {
                fttSuperFFAsByFunction[ftt][function] = fa = new FFA(function, ftt);
#if DEBUG
#if LOG
                functionApplications.Add(fa);
                if (functionApplications.Count % 10000 == 0)
                    Console.WriteLine("         ----------Created non ground function application {0}", functionApplications.Count);
#endif
#endif
            }
            return fa;
        }

        internal readonly IDictionary<FTT, IDictionary<IPredicate, FAF>> fttSuperFAFsByPredicate = new Dictionary<FTT, IDictionary<IPredicate, FAF>>();
        internal ISet<FAF> fafs = new HashSet<FAF>();
        internal FAF getFreeAtomicFormula(IPredicate predicate, FTT tt)
        {
            FAF faf;
            if (!fttSuperFAFsByPredicate[tt].TryGetValue(predicate, out faf))
            {
                fttSuperFAFsByPredicate[tt][predicate] = faf = new FAF(predicate, tt);
                fafs.Add(faf);
                fafFCs[faf] = new HashSet<FC>();
#if DEBUG
#if LOG
                if (fafs.Count % 10000 == 0)
                    Console.WriteLine("         ----------Created free atomic formula {0}", fafs.Count);
#endif
#endif
            }
            return faf;
        }

        internal readonly IDictionary<string, FC> fcCache = new Dictionary<string, FC>();
        public FC getFreeClause(IEnumerable<IL> oias)
        {
            Debug.Assert(oias.Any(a => a.freeVariables.Any()));
            var ias = simplifyAndSortAtoms(oias);

            var key = FC.makeStringN(ias);
            FC c;
            if (!fcCache.TryGetValue(key, out c))
            {
                c = new FC(ias);
                fcCache[key] = c;
                foreach (var a in c.ils)
                {
                    var ga = a as GL;
                    if (ga != null)
                    {
                        gafFCs[ga.gaf].Add(c);
                    }
                    else
                    {
                        var fa = a as FL;
                        fafFCs[fa.faf].Add(c);
                    }
                }
                #region debug hook
#if DEBUG
#if LOG
                if (fcCache.Count % 10000 == 0)
                    Console.WriteLine("         ----------Created non ground clause {0}", fcCache.Count, c.ToStringN());
#endif
#endif
                #endregion debug hook
            }
            else
            {
                #region consistency
#if DEBUG
                foreach (var a in c)
                    Debug.Assert(a == trueFormula.gLiteral(true) || oias.Contains(a));
#endif
                #endregion consistency
            }
            return c;
        }
        private IList<IL> simplifyAndSortAtoms(IEnumerable<IL> ias)
        {
            var map = new SortedList<string, IL>();
            foreach (var a in ias)
                if (a.isTrue || (a is GL && ias.Contains((a as GL).gNegate)))
                    return new List<IL> { trueFormula.gLiteral(true) };
                else if (!a.isFalse)
                    map[a.ToStringN()] = a; //.Add(a.ToStringN(/*a.formula.varMap*/), a); //TODO:sort with canonical atom order with canonical variable names
            return map.Values;
        }

        #region users
        /*        public readonly IDictionary<GroundAtomicFormulaEC,ISet<int>> gafUsers = new Dictionary<GroundAtomicFormulaEC,ISet<int>>();
                internal void addUse(GroundAtomicFormulaEC gaf, int index)
                {
                    ISet<int> e;
                    if (!gafUsers.TryGetValue(gaf, out e))
                        e = gafUsers[gaf] = new HashSet<int>();
                    else
                        Debug.Assert(!e.Contains(index));
                    e.Add(index);
                }
                internal void removeUse(GroundAtomicFormulaEC gaf, int index)
                {
        #if DEBUG
                    if (gaf.index == 1784 || gaf.index == 1627)
                        Debugger.Break();
        #endif
                    var e = gafUsers[gaf];
                    Debug.Assert(e.Contains(index));
                    e.Remove(index);
                    if (!e.Any())
                        removeGAF(gaf);
                }
                private void removeGAF(GroundAtomicFormulaEC gaf)
                {
        #if DEBUG
                    if (gaf.gArguments.index == 5419)
                        Debugger.Break();
        #endif
                    Debug.Assert(!gafUsers[gaf].Any());
                    Debug.Assert(!gafGCs[gaf].Any());
                    Debug.Assert(!gafFCs[gaf].Any());
                    Debug.Assert(gafs.Contains(gaf));
                    gafs.Remove(gaf);
                    gafUsers.Remove(gaf);
                    Debug.Assert(gttIncomingGAFByPredicate[gaf.gArguments][gaf.predicate] == gaf);
                    gttIncomingGAFByPredicate[gaf.gArguments].Remove(gaf.predicate);
                }

                public readonly IDictionary<GroundClauseEC, ISet<int>> gcUsers = new Dictionary<GroundClauseEC, ISet<int>>();
                internal void addUse(GroundClauseEC gc, int index)
                {
                    ISet<int> e;
                    if (!gcUsers.TryGetValue(gc, out e))
                        e = gcUsers[gc] = new HashSet<int>();
                    else
                        Debug.Assert(!e.Contains(index));
                    e.Add(index);
                }
                internal void removeUse(GroundClauseEC gc, int index)
                {
                    var e = gcUsers[gc];
                    Debug.Assert(e.Contains(index));
                    e.Remove(index);
                    if (!e.Any())
                        removeGC(gc);
                }
                private void removeGC(GroundClauseEC gc)
                {
                    Debug.Assert(!gcUsers[gc].Any());
                    gcUsers.Remove(gc);
                    Debug.Assert(gcCache[gc.ToStringN()] == gc);
                    gcCache.Remove(gc.ToStringN());
                    foreach (var ga in gc.gAtoms)
                    {
                        Debug.Assert(gafGCs[ga.gFormula].Contains(gc));
                        gafGCs[ga.gFormula].Remove(gc);
                    }
                }

                public readonly IDictionary<FreeClauseEC, ISet<int>> fcUsers = new Dictionary<FreeClauseEC, ISet<int>>();
                internal void addUse(FreeClauseEC fc, int index)
                {
                    ISet<int> e;
                    if (!fcUsers.TryGetValue(fc, out e))
                        e = fcUsers[fc] = new HashSet<int>();
                    else
                        Debug.Assert(!e.Contains(index));
                    e.Add(index);
                }
                internal void removeUse(FreeClauseEC fc, int index)
                {
                    var e = fcUsers[fc];
                    Debug.Assert(e.Contains(index));
                    e.Remove(index);
                    if (!e.Any())
                        removeFC(fc);
                }
                private void removeFC(FreeClauseEC fc)
                {
                    Debug.Assert(!fcUsers[fc].Any());
                    fcUsers.Remove(fc);
                    Debug.Assert(freeClauseCache[fc.ToStringN()] == fc);
                    freeClauseCache.Remove(fc.ToStringN());
                    foreach (var a in fc.atoms)
                    {
                        var ga = a as GroundAtomEC;
                        var fa = a as FreeAtomEC;
                        if (ga!=null)
                        {
                            Debug.Assert(gafFCs[ga.gFormula].Contains(fc));
                            gafFCs[ga.gFormula].Remove(fc);
                        }
                        else
                        {
                            Debug.Assert(fafFCs[fa.fFormula].Contains(fc));
                            fafFCs[fa.fFormula].Remove(fc);
                        }
                    }
                }

                public readonly IDictionary<FreeAtomicFormulaEC, ISet<int>> fafUsers = new Dictionary<FreeAtomicFormulaEC, ISet<int>>();
                internal void addUse(FreeAtomicFormulaEC faf, int index)
                {
                    ISet<int> e;
                    if (!fafUsers.TryGetValue(faf, out e))
                        e = fafUsers[faf] = new HashSet<int>();
                    else
                        Debug.Assert(!e.Contains(index));
                    e.Add(index);
                }
                internal void removeUse(FreeAtomicFormulaEC faf, int index)
                {
                    var e = fafUsers[faf];
                    Debug.Assert(e.Contains(index));
                    e.Remove(index);
                    if (!e.Any())
                        remove(faf);
                }
                private void remove(FreeAtomicFormulaEC faf)
                {
                    Debug.Assert(!fafUsers[faf].Any());
                    Debug.Assert(!fafFCs[faf].Any());
                    Debug.Assert(freeAtomicFormulae.Contains(faf));
                    freeAtomicFormulae.Remove(faf);
                    fafUsers.Remove(faf);
                    Debug.Assert(fttIncomingFAFsByPredicate[faf.fArguments][faf.predicate] == faf);
                    fttIncomingFAFsByPredicate[faf.fArguments].Remove(faf.predicate);
                }*/
        #endregion users
        #region mark sweep
        public ISet<FC> usedFCs = new HashSet<FC>();
        public ISet<FAF> usedFAFs = new HashSet<FAF>();
        public ISet<FFA> usedFFAs = new HashSet<FFA>();
        public ISet<FTT> usedFTTs = new HashSet<FTT>();
        public ISet<FVT> usedFVs = new HashSet<FVT>();
        public ISet<GC> usedGCs = new HashSet<GC>();
        public ISet<GAF> usedGAFs = new HashSet<GAF>();
        public ISet<GTT> usedGTTs = new HashSet<GTT>();
        public ISet<GT> usedGTs = new HashSet<GT>();

        public void sweepClean()
        {
            Debug.Assert(usedGTTs.Contains(emptyGTT));

            #region fcs
            #region consistency
            foreach (var fc in usedFCs)
                foreach (var a in fc.ils)
                    if (a is GL)
                        Debug.Assert(usedGAFs.Contains(a.iaf as GAF));
                    else
                        Debug.Assert(usedFAFs.Contains(a.iaf as FAF));
            #endregion consistency

            foreach (var fcKV in fcCache.ToList())
            {
                var fc = fcKV.Value;
                if (!usedFCs.Contains(fc))
                {
                    var key = fcKV.Key;
                    fcCache.Remove(key);
                    foreach (var a in fc.ils)
                    {
                        var ga = a as GL;
                        if (ga != null)
                            gafFCs[ga.gaf].Remove(fc);
                        else
                            fafFCs[a.iaf as FAF].Remove(fc);
                    }
                }
            }
            #endregion fcs

            #region fafs
            #region consistency
            foreach (var faf in usedFAFs)
                Debug.Assert(usedFTTs.Contains(faf.ftt));
            #endregion consistency
            foreach (var faf in fafs.ToList())
            {
                if (!usedFAFs.Contains(faf))
                {
                    Debug.Assert(fafFCs[faf].Count == 0);
                    fttSuperFAFsByPredicate[faf.ftt].Remove(faf.predicate);
                    fafFCs.Remove(faf);
                    fafs.Remove(faf);
                }
            }
            #endregion fafs

            #region ftts and ffas

            #region consistency
            foreach (var ftt in usedFTTs)
                foreach (var t in ftt)
                    if (t is GT)
                        Debug.Assert(usedGTs.Contains(t as GT));
                    else if (t is FFA)
                        Debug.Assert(usedFFAs.Contains(t as FFA));
                    else
                        Debug.Assert(usedFVs.Contains(t as FVT));
            #endregion consistency

            foreach (var fttKV in fttCache.ToList())
            {
                var ftt = fttKV.Value;
                foreach (var ffaKV in fttSuperFFAsByFunction[ftt].ToList())
                    if (!usedFFAs.Contains(ffaKV.Value))
                    {
                        fttSuperFFAsByFunction[ftt].Remove(ffaKV.Key);
#if DEBUG
                        functionApplications.Remove(ffaKV.Value);
#endif
                    }
                if (!usedFTTs.Contains(ftt))
                {
                    Debug.Assert(fttSuperFAFsByPredicate[ftt].Count == 0);
                    Debug.Assert(fttSuperFFAsByFunction[ftt].Count == 0);
                    var key = fttKV.Key;
                    fttCache.Remove(key);
                    fttSuperFAFsByPredicate.Remove(ftt);
                    fttSuperFFAsByFunction.Remove(ftt);
                }
            }

            #endregion ftts and ffas

            #region fvs
            foreach (var fvKV in fvMap.ToList())
            {
                if (!usedFVs.Contains(fvKV.Value))
                    fvMap.Remove(fvKV.Key);
            }
            #endregion fvs

            #region gcs
            #region consistency
            foreach (var gc in usedGCs)
                foreach (var ga in gc.gls)
                    Debug.Assert(usedGAFs.Contains(ga.gaf));
            #endregion consistency
            foreach (var gcKV in gcCache.ToList())
            {
                var gc = gcKV.Value;
                if (!usedGCs.Contains(gc))
                {
                    var key = gcKV.Key;
                    gcCache.Remove(key);
                    foreach (var ga in gc.gls)
                        gafGCs[ga.gaf].Remove(gc);
                }
            }
            #endregion gcs

            #region gafs
            #region consistency
            foreach (var gaf in usedGAFs)
                Debug.Assert(usedGTTs.Contains(gaf.gtt));
            #endregion consistency
            foreach (var gaf in gafs.ToList())
            {
                if (!usedGAFs.Contains(gaf))
                {
                    Debug.Assert(gafGCs[gaf].Count == 0);
                    Debug.Assert(gafFCs[gaf].Count == 0);
                    gafs.Remove(gaf);
                    gafGCs.Remove(gaf);
                    gafFCs.Remove(gaf);
                    gttIncomingGAFsByPredicate[gaf.gtt].Remove(gaf.predicate);
                }
            }
            #endregion gafs

            #region gts and gtts

            #region consistency
            foreach (var gtt in usedGTTs)
                foreach (var gt in gtt.gtT)
                    Debug.Assert(usedGTs.Contains(gt));
            foreach (var gt in usedGTs)
                foreach (var gfa in gt.gfas)
                    Debug.Assert(usedGTTs.Contains(gfa.gtt));
            #endregion consistency

            #region gtts
            foreach (var gttKV in gttCache.ToList())
            {
                var gtt = gttKV.Value;
                if (!usedGTTs.Contains(gtt))
                {
                    Debug.Assert(gttIncomingGAFsByPredicate[gtt].Count == 0);
                    Debug.Assert(gttIncomingSGFAsByFunction[gtt].Values.All(gfa => !usedGTs.Contains(gfa.gt)));
                    var key = gttKV.Key;
                    gttCache.Remove(key);
                    gttIncomingSGFAsByFunction.Remove(gtt);
                    gtts.Remove(gtt);
                    gttIncomingGAFsByPredicate.Remove(gtt);
                    foreach (var gt in gtt.gtT)
                        gtSGTTs[gt].Remove(gtt);
                    if (cyclicGTTMap.ContainsKey(gtt))
                    {
                        cyclicTermStructureCache.Remove(cyclicGTTMap[gtt]);
                        cyclicGTTMap.Remove(gtt);
                    }
                }
            }
            #endregion gtts

            #region gts
            foreach (var gtKV in gtCache.ToList())
            {
                var gt = gtKV.Value;
                if (!usedGTs.Contains(gt))
                {
                    Debug.Assert(gtSGTTs[gt].Count == 0);
                    gts.Remove(gt);
                    var key = gtKV.Key;
                    gtCache.Remove(key);
                    gtSGTTs.Remove(gt);
                    if (gt.gfas.Length == 1)
                    {
                        var gfa = gt.gfas[0];
                        var gtt = gfa.gtt;
                        var f = gfa.function;
                        if (usedGTTs.Contains(gtt))
                            gttIncomingSGFAsByFunction[gtt].Remove(f);
                    }
                    if (cyclicGTMap.ContainsKey(gt))
                    {
                        cyclicTermStructureCache.Remove(cyclicGTMap[gt]);
                        cyclicGTMap.Remove(gt);
                    }
                }
            }
            #endregion gts

            #region gfa bases
            var usedBs = new Dictionary<Function, ISet<GTT>>();
            foreach (var gt in gts)
                foreach (var gfa in gt.gfas)
                    usedBs.insert(gfa.function, gfa.gtt);
            foreach (var kv in gfaBaseMap)
                foreach (var kv2 in kv.Value.ToList())
                    if (!usedBs.contains(kv.Key, kv2.Key))
                        kv.Value.Remove(kv2.Key);
            #endregion gfa bases

            #endregion gts and gtts

            usedFCs.Clear();
            usedFAFs.Clear();
            usedFFAs.Clear();
            usedFTTs.Clear();
            usedFVs.Clear();
            usedGCs.Clear();
            usedGAFs.Clear();
            usedGTTs.Clear();
            usedGTs.Clear();
        }

#if DEBUG
        public readonly ISet<GTT> egtts = new HashSet<GTT>();
#endif
        #endregion mark sweep

        #region TKBO
        private readonly IDictionary<FC, IList<int>> fcMaxFLCache = new Dictionary<FC, IList<int>>();
        public IList<int> fcMaximalILIs(FC fc)
        {
            IList<int> flis;
            if (!fcMaxFLCache.TryGetValue(fc, out flis))
            {
                flis = calcMaxFLs(fc);
                fcMaxFLCache[fc] = flis;
            }
            return flis;

        }

        private IList<int> calcMaxFLs(FC fc)
        {
            Debug.Assert(fc.ils.Count > 0);
            if (fc.ils.Count == 1)
                return new List<int> { 0 };
            var n = fc.ils.Count;
            var flis = new List<int>();
            var non = new HashSet<int>();
            for (var i = 0; i < n; i++)
                if (!non.Contains(i))
                {
                    var il1 = fc.ils[i];
                    for (var j = i + 1; j < n; j++)
                    {
                        var il2 = fc.ils[j];
                        var c = compare(il1, il2);
                        if (c == -1)
                        {//il1<il2
                            non.Add(i);
                            goto skipil1; //OK because of transitivity even in partial order
                        }
                        else if (c == 1)
                            non.Add(j);
                    }
                    flis.Add(i);
                    skipil1:;
                }
            Debug.Assert(flis.Count > 0);
            return flis;
        }

        //{-2,2} : incomparable, {-1} il1<il1, {0} equal, {1} il1>il2
        public int compare(IL il1, IL il2)
        {
            if (ReferenceEquals(il1, il2))
                return 0;

            if (il1.isGround && il2.isGround)
                return compare(il1 as GL, il2 as GL);

            var cfv = FVMS.compare(il1.fvMS, il2.fvMS);
            if (cfv == 2 || cfv == -2)
                return cfv;
            var c = compareNoFV(il1, il2);
            Debug.Assert(cfv != 0 || c != 0);
            if ((cfv == 1 || cfv == 0) && c == 1)
                return 1;
            if ((cfv == -1 || cfv == 0) && c == -1)
                return -1;
            return 2; //incomparable: one has more vars, the other more kbo
        }
        private int compareNoFV(IL il1, IL il2)
        {
            if (ReferenceEquals(il1, il2))
                return 0;
            if (il1 == il2.negate)
                if (il1.polarity)
                    return -1;
                else
                    return 1;
            if (il1.isGround && il2.isGround)
                return compare(il1 as GL, il2 as GL);
            //            Debug.Assert(il1.fvMS.count == il2.fvMS.count);
            var tkbo1 = getTKBO(il1);
            var tkbo2 = getTKBO(il2);
            var cr = compare(il1.predicate, tkbo1, il2.predicate, tkbo2);
            if (cr != 0)
                return cr;
            Debug.Assert(il1.predicate == il2.predicate);
            var cr2 = compare(il1.iaf.itt, il2.iaf.itt);
            Debug.Assert(cr2 != 0);
            return cr2;
        }
        private int compare(ITT itt1, ITT itt2)
        {
            if (ReferenceEquals(itt1, itt2))
                return 0;
            if (itt1.isGround && itt2.isGround)
                return compare(itt1 as GTT, itt2 as GTT);
            Debug.Assert(itt1.Count == itt2.Count);
            for (var i = 0; i < itt1.Count; i++)
            {
                var it1 = itt1[i];
                var it2 = itt2[i];
                var c = compare(it1, it2);
                if (c != 0)
                    return c;
            }
            throw new Exception("TKBO not total");
        }
        public int compare(IT it1, IT it2)
        {
            if (ReferenceEquals(it1, it2))
                return 0;
            if (it1.isGround && it2.isGround)
                return compare(it1 as GT, it2 as GT);
            var cfv = FVMS.compare(it1.fvMS, it2.fvMS);
            if (cfv == 2 || cfv == -2)
                return 2;
            var c = compareNoFV(it1, it2);
            Debug.Assert(cfv != 0 || c != 0);
            if ((cfv == 1 || cfv == 0) && c == 1)
                return 1;
            if ((cfv == -1 || cfv == 0) && c == -1)
                return -1;
            return 2; //incomparable: one has more vars, the other more kbo
        }
        public int compareNoFV(IT it1, IT it2)
        {
            Debug.Assert(it1.fvMS.count > 0 || it2.fvMS.count > 0);
            var fvt1 = it1 as FVT;
            var fvt2 = it2 as FVT;
            if (fvt1 != null && fvt2 != null)
                return 0;
            if (fvt2 != null)
                return 1;
            if (fvt1 != null)
                return -1;

            Function o1;
            TKBO tkbo1;
            ITT itt1;
            getOTKBO(it1, out o1, out itt1, out tkbo1);
            Function o2;
            TKBO tkbo2;
            ITT itt2;
            getOTKBO(it2, out o2, out itt2, out tkbo2);
            var cr = compare(o1, tkbo1, o2, tkbo2);
            if (cr != 0)
                return cr;
            Debug.Assert(o1 == o2);
            var crr = compare(itt1, itt2);
            //            Debug.Assert(crr != 0); //e.g. f(x,y) vs f(y,x)
            return crr;
        }

        private void getOTKBO(IT it, out Function o, out ITT itt, out TKBO tkbo)
        {
            Debug.Assert(!(it is FVT));
            var gt = it as GT;
            if (gt != null)
            {
                var gfai = getGTMinGFAi(gt);
                var gfa = gt.gfas[gfai];
                o = gfa.function;
                itt = gfa.gtt;
                tkbo = getTKBO(gt);
            }
            else
            {
                var ft = it as FFA;
                o = ft.function;
                itt = ft.ftt;
                tkbo = getTKBO(ft);
            }
        }

        private readonly IDictionary<GC, int> gcMaxGLCache = new Dictionary<GC, int>();
        public int gcMaximalGL(GC gc)
        {
            int gli;
            if (!gcMaxGLCache.TryGetValue(gc, out gli))
            {
                gli = calcMaxGL(gc);
                gcMaxGLCache[gc] = gli;
            }
            return gli;

        }
        private int calcMaxGL(GC gc)
        {
            var n = gc.gls.Count;
            var r = 0;
            for (var i = 1; i < n; i++)
                if (compare(gc.gls[i], gc.gls[r]) > 0)
                    r = i;
            return r;
        }
        private int compare(GL gl1, GL gl2)
        {
            if (gl1 == gl2)
                return 0;
            if (gl1 == gl2.negate)
                if (gl1.polarity)
                    return -1;
                else
                    return 1;
            var tkbo1 = getTKBO(gl1);
            var tkbo2 = getTKBO(gl2);
            var cr = compare(gl1.predicate, tkbo1, gl2.predicate, tkbo2);
            if (cr != 0)
                return cr;
            Debug.Assert(gl1.predicate == gl2.predicate);
            var cr2 = compare(gl1.gtt, gl2.gtt);
            Debug.Assert(cr2 != 0);
            return cr2;
        }
        private TKBO getTKBO(IL il)
        {
            if (il.isGround)
                return getTKBO(il as GL);
            else
                return getTKBO(il as FL);
        }
        private readonly IDictionary<FL, TKBO> flTKBOMap = new Dictionary<FL, TKBO>();
        private TKBO getTKBO(FL fl)
        {
            TKBO r;
            if (!flTKBOMap.TryGetValue(fl, out r))
            {
                r = makeTKBO(fl.predicate, (from it in fl.ftt select getTKBO(it)).ToList());
                flTKBOMap[fl] = r;
            }
            return r;
        }
        private readonly IDictionary<FVT, TKBO> fvtTKBOCache = new Dictionary<FVT, TKBO>();
        private TKBO getTKBO(IT it)
        {
            if (it.isGround)
                return getTKBO(it as GT);
            var ffa = it as FFA;
            if (ffa != null)
                return getTKBO(ffa);
            else
                return getTKBO(it as FVT);
        }
        private TKBO getTKBO(FVT fvt)
        {
            TKBO r;
            if (!fvtTKBOCache.TryGetValue(fvt, out r))
            {
                r = makeTKBO(fvt.variable);
                fvtTKBOCache[fvt] = r;
            }
            return r;
        }
        private readonly IDictionary<FFA, TKBO> ffaTKBOCache = new Dictionary<FFA, TKBO>();
        private TKBO getTKBO(FFA ft)
        {
            TKBO r;
            if (!ffaTKBOCache.TryGetValue(ft, out r))
            {
                r = makeTKBO(ft.function, (from it in ft.ftt select getTKBO(it)).ToList());
                ffaTKBOCache[ft] = r;
            }
            return r;
        }
        private readonly IDictionary<GL, TKBO> glTKBOMap = new Dictionary<GL, TKBO>();
        private TKBO getTKBO(GL gl)
        {
            TKBO r;
            if (!glTKBOMap.TryGetValue(gl, out r))
            {
                r = makeTKBO(gl.predicate, (from gt in gl.gtt.gtT select getTKBO(gt)).ToList());
                glTKBOMap[gl] = r;
            }
            return r;
        }
        private int compare(GTT gtt1, GTT gtt2)
        {
            if (gtt1 == gtt2)
                return 0;
            for (var i = 0; i < gtt1.gtT.Count; i++)
            {
                var gt1 = gtt1.gtT[i];
                var gt2 = gtt2.gtT[i];
                var c = compare(gt1, gt2);
                if (c != 0)
                    return c;
            }
            throw new Exception("TKBO not total");
        }
        public int compare(GT gt1, GT gt2)
        {
            if (gt1 == gt2)
                return 0;
            var gfa1i = getGTMinGFAi(gt1);
            var gfa2i = getGTMinGFAi(gt2);
            var gfa1 = gt1.gfas[gfa1i];
            var gfa2 = gt2.gfas[gfa2i];
            var tkbo1 = gtTKBOMap[gt1];
            var tkbo2 = gtTKBOMap[gt2];
            var cr = compare(gfa1.function, tkbo1, gfa2.function, tkbo2);
            if (cr != 0)
                return cr;
            Debug.Assert(gfa1.function == gfa2.function);
            var crr = compare(gfa1.gtt, gfa2.gtt);
            Debug.Assert(crr != 0);
            return crr;
        }
        private int compare(IOperator o1, TKBO tkbo1, IOperator o2, TKBO tkbo2)
        {
            var c = tkbo1.compare(tkbo2);
            if (c != 0)
                return c;
            var cf = compare(o1, o2);
            if (cf != 0)
                return cf;
            Debug.Assert(o1 == o2);
            return 0;
        }

        private readonly IDictionary<GL, IList<GLGTPos>> glGTPosCache = new Dictionary<GL, IList<GLGTPos>>();
        public IEnumerable<GLGTPos> getGPAPositions(GL gl)
        {
            Debug.Assert(!gl.isEQOrDE);
            IList<GLGTPos> r;
            if (!glGTPosCache.TryGetValue(gl, out r))
            {
                r = new List<GLGTPos>();
                var gtt = gl.gtt;
                for (var i = 0; i < gtt.Count; i++)
                {
                    var gt = gtt.gtT[i];
                    var gtPoss = getGTPositions(gt);
                    foreach (var gtp in gtPoss)
                        r.Add(makeGLGTPos(i, gtp));
                }
                glGTPosCache[gl] = r;
            }
            Debug.Assert(gl.gtt.Count == 0 || r.Count > 0);
            return r;
        }
        public IEnumerable<ILITPos> getIPANVPositions(IL il)
        {
            if (il.isGround)
                return from p in getGPAPositions(il as GL) select (ILITPos)p;
            return getFPANVPositions(il as FL);
        }
        public IEnumerable<FLITPos> getFPANVPositions(FL fl)
        {
            Debug.Assert(!fl.isEQOrDE);
            IList<FLITPos> r;
            if (!flITPosCache.TryGetValue(fl, out r))
            {
                r = new List<FLITPos>();
                var itt = fl.itt;
                for (var i = 0; i < itt.Count; i++)
                {
                    var it = itt[i];
                    var itPoss = getITNVPositions(it);
                    foreach (var itp in itPoss)
                        r.Add(makeFLITPos(i, itp));
                }
                flITPosCache[fl] = r;
            }
            Debug.Assert(fl.itt.Count == 0 || r.Count > 0 || fl.itt.All(it => it is FVT));
            return r;
        }

        public IEnumerable<ITITPos> getITNVPositions(IT it)
        {
            if (it.isGround)
                return getGTPositions(it as GT);
            else
                return getFTNVPositions(it as FT);
        }

        private static readonly ITITPos[] emptyPosArray = new ITITPos[0];
        private IEnumerable<ITITPos> getFTNVPositions(FT ft)
        {
            if (ft is FVT)
                return emptyPosArray;
            var ffa = ft as FFA;
            var r = new List<ITITPos>();
            var ftt = ffa.ftt;
            r.Add(emptyGTPos);
            for (var i = 0; i < ftt.Count; i++)
            {
                var sit = ftt[i];
                var sitPoss = getITNVPositions(sit);
                foreach (var sp in sitPoss)
                {
                    var pos = makeITITPos(i, sp);
                    r.Add(pos);
                }
            }
            return r;
        }

        private readonly IDictionary<GLGTPos, IDictionary<int, GCGTPos>> glPosGCGTPosCache = new Dictionary<GLGTPos, IDictionary<int, GCGTPos>>();
        public GCGTPos makeGCGTPos(int gli, GLGTPos glp)
        {
            GCGTPos r;
            if (!glPosGCGTPosCache.tryGet(glp, gli, out r))
            {
                r = new GCGTPos(gli, glp);
                glPosGCGTPosCache.insert(glp, gli, r);
            }
            return r;
        }
        private readonly IDictionary<GTGTPos, IDictionary<int, GLGTPos>> gtPosGLGTPosCache = new Dictionary<GTGTPos, IDictionary<int, GLGTPos>>();
        public GLGTPos makeGLGTPos(int i, GTGTPos gtp)
        {
            GLGTPos r;
            if (!gtPosGLGTPosCache.tryGet(gtp, i, out r))
            {
                r = new GLGTPos(i, gtp);
                gtPosGLGTPosCache.insert(gtp, i, r);
            }
            return r;
        }
        private readonly IDictionary<string, GTGTPos1> gtGTPosCache = new Dictionary<string, GTGTPos1>();
        private GTGTPos1 makeGTGTPos(int i, int j, GTGTPos gtp)
        {
            var key = GTGTPos1.makeStringN(i, j, gtp);
            GTGTPos1 r;
            if (!gtGTPosCache.TryGetValue(key, out r))
            {
                r = new GTGTPos1(i, j, gtp);
                gtGTPosCache[key] = r;
            }
            return r;
        }


        private readonly IDictionary<ILITPos, IDictionary<int, FCITPos>> flpFCITPosCache = new Dictionary<ILITPos, IDictionary<int, FCITPos>>();
        public FCITPos makeFCITPos(int ili, ILITPos ilp)
        {
            FCITPos r;
            if (!flpFCITPosCache.tryGet(ilp, ili, out r))
            {
                r = new FCITPos(ili, ilp);
                flpFCITPosCache.insert(ilp, ili, r);
            }
            return r;
        }
        private readonly IDictionary<string, FTITPos> ftITPosCache = new Dictionary<string, FTITPos>();
        private readonly IDictionary<FL, IList<FLITPos>> flITPosCache = new Dictionary<FL, IList<FLITPos>>();
        private readonly IDictionary<ITITPos, IDictionary<int, FLITPos>> itpFLITPCache = new Dictionary<ITITPos, IDictionary<int, FLITPos>>();
        public FLITPos makeFLITPos(int iti, ITITPos itp)
        {
            FLITPos r;
            if (!itpFLITPCache.tryGet(itp, iti, out r))
            {
                r = new FLITPos(iti, itp);
                itpFLITPCache.insert(itp, iti, r);
            }
            return r;
        }
        private FTITPos makeITITPos(int iti, ITITPos itp)
        {
            var key = FTITPos1.makeStringN(iti, itp);
            FTITPos r;
            if (!ftITPosCache.TryGetValue(key, out r))
            {
                r = new FTITPos1(iti, itp);
                ftITPosCache[key] = r;
            }
            return r;
        }
        private readonly IDictionary<GT, IList<GTGTPos>> gtPosCache = new Dictionary<GT, IList<GTGTPos>>();
        public IEnumerable<GTGTPos> getGTPositions(GT gt)
        {
            IList<GTGTPos> r;
            if (!gtPosCache.TryGetValue(gt, out r))
            {
                r = getGTPositionsNew(gt);
                gtPosCache[gt] = r;
            }
            Debug.Assert(r.Count > 0);
            return r;
        }

        public readonly GTGTPos emptyGTPos = new GTGTPosEmpty();
        private readonly IDictionary<GT, IList<GTGTPos1>> gtSTPosCache = new Dictionary<GT, IList<GTGTPos1>>();
        public IEnumerable<GTGTPos1> getGTSTPositions(GT gt)
        {
            IList<GTGTPos1> r;
            if (!gtSTPosCache.TryGetValue(gt, out r))
            {
                r = getGTSTPositionsNew(gt);
                gtSTPosCache[gt] = r;
            }
            return r;
        }
        private IList<GTGTPos1> getGTSTPositionsNew(GT gt)
        {
            var r = new List<GTGTPos1>();
            var mingfai = getGTMinGFAi(gt);
            for (var gfai = 0; gfai < gt.gfas.Length; gfai++)
                if (gfai != mingfai)
                {
                    var gfa = gt.gfas[gfai];
                    var gtt = gfa.gtt;
                    for (var gti = 0; gti < gtt.Count; gti++)
                        r.AddRange(from gtp in getGTMinPositions(gtt.gtT[gti]) select makeGTGTPos(gfai, gti, gtp));
                }
            return r;
        }

        private readonly IDictionary<GT, IList<GTGTPos>> gtMinPosCache = new Dictionary<GT, IList<GTGTPos>>();
        public IEnumerable<GTGTPos> getGTMinPositions(GT gt)
        {
            IList<GTGTPos> r;
            if (!gtMinPosCache.TryGetValue(gt, out r))
            {
                r = getGTMinPositionsNew(gt);
                gtMinPosCache[gt] = r;
            }
            return r;
        }
        private IList<GTGTPos> getGTMinPositionsNew(GT gt)
        {
            var r = new List<GTGTPos>();
            r.Add(emptyGTPos);
            var mingfai = getGTMinGFAi(gt);
            var gfa = gt.gfas[mingfai];
            var gtt = gfa.gtt;
            for (var gti = 0; gti < gtt.Count; gti++)
                r.AddRange(from gtp in getGTMinPositions(gtt.gtT[gti]) select makeGTGTPos(mingfai, gti, gtp));
            return r;
        }


        private readonly IDictionary<GT, IList<GTGTPos1>> gtL1PosCache = new Dictionary<GT, IList<GTGTPos1>>();
        public IEnumerable<GTGTPos1> getGTL1Positions(GT gt)
        {
            IList<GTGTPos1> r;
            if (!gtL1PosCache.TryGetValue(gt, out r))
            {
                r = getGTL1PositionsNew(gt);
                gtL1PosCache[gt] = r;
            }
            return r;
        }
        private IList<GTGTPos1> getGTL1PositionsNew(GT gt)
        {
            var r = new List<GTGTPos1>();
            for (var gfai = 0; gfai < gt.gfas.Length; gfai++)
            {
                var gfa = gt.gfas[gfai];
                var gtt = gfa.gtt;
                for (var gti = 0; gti < gtt.Count; gti++)
                    r.Add(makeGTGTPos(gfai, gti, emptyGTPos));
            }
            return r;
        }

        private IList<GTGTPos> getGTPositionsNew(GT gt)
        {
            Debug.Assert(!gtPosCache.ContainsKey(gt));
            var rgfai = getGTMinGFAi(gt);
            var rgfa = gt.gfas[rgfai];
            var rgtt = rgfa.gtt;
            //            Debug.Assert(rgtt.gts.All(sgt => sgt.index < gt.index));
            var r = new List<GTGTPos>();
            r.Add(emptyGTPos);
            for (var j = 0; j < rgtt.Count; j++)
            {
                var sgt = rgtt.gtT[j];
                var sGTPoss = getGTPositions(sgt);
                foreach (var sp in sGTPoss)
                {
                    var pos = makeGTGTPos(rgfai, j, sp);
                    r.Add(pos);
                }
            }
            return r;
        }

        private readonly IDictionary<GT, int> gtMinGFAICache = new Dictionary<GT, int>();
        private TKBO getTKBO(GT gt)
        {
            TKBO r;
            if (!gtTKBOMap.TryGetValue(gt, out r))
            {
                getGTMinGFAi(gt);
                r = gtTKBOMap[gt];
            }
            return r;
        }
        public int getGTMinGFAi(GT gt)
        {
            int r;
            if (!gtMinGFAICache.TryGetValue(gt, out r))
            {
                r = calculateGTMINGFAi(gt);
                gtMinGFAICache[gt] = r;
            }
            return r;
        }

        class TKBO
        {
            //            public readonly int[] a;
            public int maxOrdinal { get { return list.First().omega; } }
            private class Ord
            {
                public Ord(int omega, int i)
                {
                    Debug.Assert(i >= 0);
                    Debug.Assert(omega >= 0);
                    this.omega = omega;
                    this.i = i;
                }
                public readonly int omega;
                public readonly int i;

                public override string ToString()
                {
                    return "(" + omega + "," + i + ")";
                }

                internal int compare(Ord ord)
                {
                    var co = omega.CompareTo(ord.omega);
                    if (co != 0)
                        return co;
                    return i.CompareTo(ord.i);
                }
            }
            private readonly Ord[] list;
            public TKBO(int l, int wf)
            {
                Debug.Assert(l >= 0);
                list = new[] { new Ord(l, wf) };
            }

            public TKBO(IList<TKBO> tkboA, int l, int wf)
            {
                Debug.Assert(l >= 0);
                var indices = new SortedDictionary<int, ISet<int>>();
                var curIndexA = (from o in tkboA select 0).ToArray();
                var curOmega = l;
                var n = tkboA.Count;
                for (var i = 0; i < n; i++)
                {
                    var mo = tkboA[i].maxOrdinal;
                    indices.insert(mo, i);
                    if (mo > curOmega)
                        curOmega = mo;
                }
                var tempL = new List<Ord>();
                while (indices.Any())
                {
                    var maxO = indices.Keys.Last();
                    Debug.Assert(indices.Keys.All(k => maxO >= k));
                    if (l > maxO)
                        tempL.Add(new Ord(l, wf));
                    var w = (l == maxO) ? wf : 0;
                    var cis = indices[maxO];
                    indices.Remove(maxO);
                    foreach (var i in cis)
                    {
                        var curI = curIndexA[i];
                        var ctkbo = tkboA[i];
                        Debug.Assert(ctkbo.list[curI].omega == maxO);
                        w += ctkbo.list[curI].i;
                        var ni = curI + 1;
                        if (ni < ctkbo.list.Length)
                        {
                            var no = ctkbo.list[ni].omega;
                            indices.insert(no, i);
                            curIndexA[i]++;
                        }
                    }
                    tempL.Add(new Ord(maxO, w));
                }
                if (tempL.Last().omega > l)
                    tempL.Add(new Ord(l, wf));
                list = tempL.ToArray();
            }


            internal static bool lt(TKBO o1, Operator f1, TKBO o2, Operator f2)
            {
                throw new NotImplementedException();
            }

            internal int compare(TKBO tkbo2)
            {
                if (maxOrdinal < tkbo2.maxOrdinal)
                    return -1;
                if (maxOrdinal > tkbo2.maxOrdinal)
                    return 1;
                var i = 0;
                while (i < list.Length)
                {
                    if (i >= tkbo2.list.Length)
                        return 1;
                    else
                    {
                        var c = list[i].compare(tkbo2.list[i]);
                        if (c != 0)
                            return c;
                    }
                    i++;
                }
                if (i < tkbo2.list.Length)
                    return -1;
                return 0;
            }
        }
        private readonly IDictionary<GT, TKBO> gtTKBOMap = new Dictionary<GT, TKBO>();
        private int calculateGTMINGFAi(GT igt)
        {
            var gttToSGFA = new Dictionary<GTT, IDictionary<GFA, int>>();
            var gtToSGTT = new Dictionary<GT, ISet<GTT>>();

            var lgtMinGFAi = new Dictionary<GT, Tuple<int, TKBO>>();

            var todoUp = new HashSet<GT>();

            #region downloop
            var todoDown = new HashSet<GT> { igt };
            var doneDown = new HashSet<GT>();
            gtToSGTT[igt] = new HashSet<GTT>();
            while (todoDown.Count > 0)
            {
                var gt = todoDown.First();
                Debug.Assert(!gtTKBOMap.ContainsKey(gt));
                todoDown.Remove(gt);
                doneDown.Add(gt);
                for (var i = 0; i < gt.gfas.Length; i++)
                {
                    var gfa = gt.gfas[i];
                    var gtt = gfa.gtt;
                    if (gtt.gtT.All(gt2 => gtTKBOMap.ContainsKey(gt2)))
                        insertMinTKBO(lgtMinGFAi, gfa, i);
                    else
                    {
                        foreach (var gt2 in gtt.gtT)
                        {
                            if (!gtTKBOMap.ContainsKey(gt2))
                            {
                                gtToSGTT.insert(gt2, gtt);
                                if (!doneDown.Contains(gt2))
                                    todoDown.Add(gt2);
                            }
                        }
                        gttToSGFA.insert(gtt, gfa, i);
                    }
                }
                if (lgtMinGFAi.ContainsKey(gt))
                    todoUp.Add(gt);
            }
            #endregion downloop

            #region uploop
            Debug.Assert(todoUp.Count > 0);
            while (todoUp.Count > 0)
            {
                var gt = todoUp.First();
                Debug.Assert(lgtMinGFAi.ContainsKey(gt));
                todoUp.Remove(gt);
                Debug.Assert(gt == igt || gtToSGTT.ContainsKey(gt));
                foreach (var gtt in gtToSGTT[gt])
                {
                    if (gtt.gtT.All(gt2 => lgtMinGFAi.ContainsKey(gt2) || gtTKBOMap.ContainsKey(gt2)))
                    {
                        foreach (var gfaKV in gttToSGFA[gtt])
                        {
                            var gfa = gfaKV.Key;
                            var sgt = gfa.gt;
                            if (insertMinTKBO(lgtMinGFAi, gfa, gfaKV.Value))
                                todoUp.Add(sgt);
                        }
                    }

                }
            }
#if DEBUG
            {
                foreach (var gt in doneDown.Except(lgtMinGFAi.Keys))
                {
                    foreach (var gfa in gt.gfas)
                    {
                        Debug.Assert(gttToSGFA[gfa.gtt].ContainsKey(gfa));
                        foreach (var gt2 in gfa.gtt.gtT)
                        {
                            Debug.Assert(gtToSGTT[gt2].Contains(gfa.gtt));
                        }
                        Debug.Assert(gfa.gtt.gtT.Any(gt2 => !lgtMinGFAi.ContainsKey(gt2)));
                    }
                }
            }
#endif
            Debug.Assert(doneDown.SetEquals(lgtMinGFAi.Keys));
            Debug.Assert(lgtMinGFAi.ContainsKey(igt));
            #endregion uploop

            #region commit
            foreach (var kv in lgtMinGFAi)
            {
                var gt = kv.Key;
                var kv2 = kv.Value;
                var i = kv2.Item1;
                var tkbo = kv2.Item2;
                Debug.Assert(!gtTKBOMap.ContainsKey(gt));
                gtTKBOMap[gt] = tkbo;
                Debug.Assert(!gtMinGFAICache.ContainsKey(gt));
                gtMinGFAICache[gt] = i;
            }
            #endregion commit

            return gtMinGFAICache[igt];
        }

        private bool insertMinTKBO(IDictionary<GT, Tuple<int, TKBO>> lgtMinGFAi, GFA gfa, int gfai)
        {
            var ntkbo = makeTKBO(lgtMinGFAi, gfa);
            var gt = gfa.gt;
            Tuple<int, TKBO> tt;
            if (!lgtMinGFAi.TryGetValue(gt, out tt) || compare(lgtMinGFAi, gfa, ntkbo, gt.gfas[tt.Item1], tt.Item2) < 0)
            {
                lgtMinGFAi[gt] = new Tuple<int, TKBO>(gfai, ntkbo);
                return true;
            }
            return false;
        }

        private int compare(IOperator o1, IOperator o2)
        {
            if (ReferenceEquals(o1, o2))
                return 0;
            if (o1 is IPredicate)
                return compare(o1 as IPredicate, o2 as IPredicate);
            else
                return compare(o1 as Function, o2 as Function);
        }
        private int compare(Function f1, Function f2)
        {
            if (ReferenceEquals(f1, f2))
                return 0;
            var f1i = f1.isInterpreted;
            var f2i = f2.isInterpreted;
            if (!f1i && !f2i)
                return f1.nameN.CompareTo(f2.nameN);
            if (f1i && !f2i)
                return -1;
            if (!f1i && f2i)
                return 1;
            return f1.nameN.CompareTo(f2.nameN);
        }
        private int compare(IPredicate p1, IPredicate p2)
        {
            if (ReferenceEquals(p1, p2))
                return 0;
            if (p2 is Equality)
                return 1;
            if (p1 is Equality)
                return -2;
            var p1i = p1.isInterpreted;
            var p2i = p2.isInterpreted;
            if (!p1i && !p2i)
                return p1.nameN.CompareTo(p2.nameN);
            if (p1i && !p2i)
                return -1;
            if (!p1i && p2i)
                return 1;
            return p1.nameN.CompareTo(p2.nameN);
        }

        private int compare(IDictionary<GT, Tuple<int, TKBO>> lgtMinGFAi, GFA gfa1, TKBO tkbo1, GFA gfa2, TKBO tkbo2)
        {
            if (gfa1 == gfa2)
                return 0;
            var cr = compare(gfa1.function, tkbo1, gfa2.function, tkbo2);
            if (cr != 0)
                return cr;
            Debug.Assert(gfa1.function == gfa2.function);

            for (var i = 0; i < gfa1.gtt.Count; i++)
            {
                var gt1i = gfa1.gtt.gtT[i];
                GFA gfa1i;
                TKBO tkbo1i;
                getTKBOAndGFA(lgtMinGFAi, gt1i, out gfa1i, out tkbo1i);
                var gt2i = gfa2.gtt.gtT[i];
                GFA gfa2i;
                TKBO tkbo2i;
                getTKBOAndGFA(lgtMinGFAi, gt2i, out gfa2i, out tkbo2i);
                var crr = compare(lgtMinGFAi, gfa1i, tkbo1i, gfa2i, tkbo2i);
                if (crr != 0)
                    return crr;
            }
            throw new Exception("Internal error:TKBO not total");
        }

        private void getTKBOAndGFA(IDictionary<GT, Tuple<int, TKBO>> lgtMinGFAi, GT gt1i, out GFA gfa1i, out TKBO tkbo1i)
        {
            Tuple<int, TKBO> tt1i;
            if (lgtMinGFAi.TryGetValue(gt1i, out tt1i))
            {
                gfa1i = gt1i.gfas[tt1i.Item1];
                tkbo1i = tt1i.Item2;
            }
            else
            {
                gfa1i = gt1i.gfas[gtMinGFAICache[gt1i]];
                tkbo1i = gtTKBOMap[gt1i];
            }
        }

        private TKBO makeTKBO(IDictionary<GT, Tuple<int, TKBO>> lgtMinGFAi, GFA gfa)
        {
            var tkboA = (from gt in gfa.gtt.gtT select (gtTKBOMap.ContainsKey(gt) ? gtTKBOMap[gt] : lgtMinGFAi[gt].Item2)).ToArray();
            return makeTKBO(gfa.function, tkboA);
        }
        private TKBO makeTKBO(GFA gfa)
        {
            var tkboA = (from gt in gfa.gtt.gtT select gtTKBOMap[gt]).ToArray();
            return makeTKBO(gfa.function, tkboA);
        }

        private TKBO varTKBO = null;
        private TKBO makeTKBO(LVar v)
        {
            if (varTKBO == null)
                varTKBO = new TKBO(0, 1);
            return varTKBO;
        }
        private TKBO makeTKBO(IOperator o, IList<TKBO> tkboA)
        {
            var wf = tkboOperatorWeight(o);
            var omega = getTKBOOrdinal(o);
            Debug.Assert(tkboA.Count == o.argumentTypes.Count);
            if (o.argumentTypes.Count == 0)
                return new TKBO(omega, wf);
            else
                return new TKBO(tkboA, omega, wf);
        }
        private int getTKBOOrdinal(IOperator o)
        {
            if (o.isInterpreted)
                return 0;
            var f = o as Function;
            if (f != null)
                return functionTKBOMap[f].omega;
/*
                if (f.isConstant)
                    return functionTKBOMap[f] + 1;
                else
                    return 0;*/
            var p = o as Predicate;
            if (isPathPredicate(p))
                return 0;
            return 1;
            //            return tkboMaxOrdinal; //uninterpreted predicates
        }
        private bool isPathPredicate(Predicate p)
        {
            return srs.isPathCondition(p);
        }

        private readonly int uninterpretedPredicateWeight = 1;
        private int tkboOperatorWeight(IOperator o)
        {
            if (o.isInterpreted)
                return 1;
            var f = o as Function;
            if (f != null)
                return functionTKBOMap[f].integer;
            if (o.isInterpreted)
                return 1;
            else
                return uninterpretedPredicateWeight;
        }
        #endregion TKBO

    }

    public class SimpleTKBO
    {
        public SimpleTKBO(int omega,int integer)
        {
            this.omega = omega;
            this.integer = integer;
        }
        public readonly int omega;
        public readonly int integer;
        public override string ToString()
        {
            return "[" + omega.ToString() + "]" + integer.ToString();
        }
    }
}
