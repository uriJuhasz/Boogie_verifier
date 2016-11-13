using Slicer.Analyzers.FOLConverter.Backends;
using Slicer.Analyzers.FOLConverter.CanonicalForms;
using Slicer.Analyzers.FOLConverter.CanonicalForms.TermRepositoryNS;
using Slicer.Analyzers.FOLConverter.Clauses;
using Slicer.Analyzers.FOLConverter.Formulae;
using Slicer.Programs.Expressions;
using Slicer.StateSpace.Types;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using GC = Slicer.Analyzers.FOLConverter.CanonicalForms.GC;
using Slicer.StateSpace.Functions.Basic;
using Slicer.StateSpace.Values;
using Slicer.Programs.Expressions.Basic;
using Slicer.Programs.Expressions.utilities;
using System.Numerics;

namespace Slicer.Analyzers.FOLConverter.ControlFlowGraph
{
    class SMTLibDumperEC : IDisposable
    {
        public void Dispose()
        {
            file.Dispose();
        }
        public SMTLibDumperEC(CFG cfg)
        {
            this.cfg = cfg;
        }
        CFG cfg;

        class NodeAxioms
        {
            public readonly IList<IFormula> formulae = new List<IFormula>();
            public readonly IList<Expression> expressions = new List<Expression>();
        }

        private readonly IDictionary<CFG.Node, NodeAxioms> nodeAxiomMap = new Dictionary<CFG.Node, NodeAxioms>();
        /*        public void dumpOrig(
                    string suffix,
                    IDictionary<PredicateApplication, ISet<Expression>> quantifiedAxioms,
                    IDictionary<Predicate, IList<IFormula>> mapAxioms)
                {
                    onlyOrig = true;
                    dump(suffix, quantifiedAxioms, mapAxioms);
                }*/

        private IList<string> ssPrefix = new List<string>();
        private IList<string> ssSuffix = new List<string>();
        private IList<string> ssBody = new List<string>();

        private ISet<IType> declaredTypes = new HashSet<IType>();
        private ISet<Formulae.Function> declaredFunctions = new HashSet<Formulae.Function>();
        public static string smtExtension = SMTLibDumperFormulae.smtExtension;
        public void dump(
            string suffix,
            IDictionary<PredicateApplication, ISet<Expression>> quantifiedAxioms,
            IDictionary<Predicate, IList<IFormula>> mapAxioms)
        {
            #region setup
            var name = cfg.srs.procedure.fileName + "." + cfg.srs.procedure.name + "." + suffix;
            var fileName = FileUtilities.trimFileName(name + smtExtension);
            var handle = File.Create(fileName);
            file = new StreamWriter(handle);
            dumpComment(String.Format("Analysis time until now:{0,6}s", main.SemanticSlicer.totalSW.ElapsedMilliseconds / 1000));
            if (cfg.rootNode.universe != null)
            {
                emptyTuple = cfg.rootNode.universe.emptyGTT;
                trueAtom = cfg.rootNode.universe.trueGAF.gLiteral(true);
                termRepo = cfg.rootNode.universe.termRepository;
            }
            makeNodeAtomMap();
            #endregion

            #region axioms maps
            foreach (var n in cfg.nodes)
                //                if (n.isUniverseMine)
                nodeAxiomMap[n] = new NodeAxioms();
            foreach (var kv in quantifiedAxioms)
            {
                var n = getActualNode(kv.Key.predicate);
                if (n != null)
                {
                    var e = nodeAxiomMap[n];
                    foreach (var a in kv.Value)
                        e.expressions.Add(a);
                } else
                {
#if DLOG1
                    var isg = kv.Key.predicate.name.EndsWith(@"_assertion");
                    Console.WriteLine("Skipping expressions for node[{0}] {1}", isg, kv.Key.predicate.name);
                    if (!isg)
                        foreach (var e in kv.Value)
                            Console.WriteLine("   {0}", e.ToString());

#endif
                }
            }
            foreach (var kv in mapAxioms)
            {
                var n = getActualNode(kv.Key);
                if (n != null)
                {
                    var e = nodeAxiomMap[n];
                    foreach (var a in kv.Value)
                        e.formulae.Add(a);
                }
            }
            #endregion

            #region program
            if (cfg.rootNode.universe != null)
            {
                calcNodeRelevantGTs();
                calcGTStrings3();
                calcNodeConjuncts();
            }
            var axiomSs = getNodeConjuncts(cfg.rootNode);
            var programSs = polishProgram();
            #endregion

            #region dump preamble
            dumpPreamble();
            #endregion

            #region dump declarations
            foreach (var f in allUsedFunction)
                if (cfg.srs.predicateMap.ContainsKey(f.nameN))
                    allUsedPredicates.Remove(cfg.srs.predicateMap[f.nameN]);
            //            dumpComment("Types");
            SMTLibDumperFormulae.dumpSorts(file, allUsedTypes);
            //            dumpComment("Functions");
            SMTLibDumperFormulae.dumpFunctions(file, allUsedFunction);
            /*            foreach (var n in cfg.nodes)
                            if (n.universe != null)
                                foreach (var gt in n.universe.allGTs)
                                    calcGTString2(gt);*/
            //            dumpComment("Predicates");
            SMTLibDumperFormulae.dumpPredicates(file, allUsedPredicates);
            #endregion

            #region dump axioms
            dumpString("");
            dumpComment("Axioms");
            var axIndex = 0;
            foreach (var s in axiomSs)
            {
                var actual = getActual(s);
                var comment = getComment(s);
                if (actual != null)
                {
                    dumpString(String.Format("   (assert (! {0} :named {1})){2}", actual, "ax_" + axIndex.ToString(), comment));
                    axIndex++;
                } else if (comment != "")
                    dumpString(String.Format("   {0}", comment));
            }
            #endregion

            #region dump program
            dumpString("");
            dumpComment("Program");
            foreach (var s in programSs)
                dumpString(s);
            #endregion

            #region dump suffix
            dumpCheckSat();
            #endregion

            file.Close();
        }

        private string getComment(string s)
        {
            var i = s.IndexOf(";");
            if (i == -1)
                return "";
            else
                return s.Substring(i);
        }

        private string getActual(string s)
        {
            if (s == null || s.All(Char.IsWhiteSpace))
                return null;
            var i = 0;
            while (Char.IsWhiteSpace(s[i]))
                i++;
            if (s[i] == ';')
                return null;
            var r = "";
            while (i < s.Length && s[i] != ';')
            {
                r = r + s[i];
                i++;
            }
            return r;
        }

        private CFG.Node getActualNode(Predicate op)
        {
            CFG.Node n;
            //                        if (cfg.tryGetNode(a, out n) && nodeAtomMap.TryGetValue(n, out pc))
            if (oPredicateToNodeMap.TryGetValue(polish(op), out n) && nodeAtomMap.ContainsKey(n))
                return n;
            else
            {
                allUsedPredicates.Remove(op);
                return null;
            }
        }
        IDictionary<CFG.Node, ISet<GT>> nodeRelevantGTs = new Dictionary<CFG.Node, ISet<GT>>();
        private void calcNodeRelevantGTs()
        {
            var todoNodes = new Queue<CFG.Node>();
            var doneNodes = new HashSet<CFG.Node>();
            foreach (var n in cfg.goalNodes)
                todoNodes.Enqueue(n);
            while (todoNodes.Any())
            {
                var n = todoNodes.Dequeue();
                doneNodes.Add(n);
                var u = n.universe;
                nodeRelevantGTs.add(n, u.originalGTs);
                foreach (var pn in n.predecessors)
                    if (!pn.successors.Except(doneNodes).Any())
                        todoNodes.Enqueue(pn);
            }

        }

        private IList<string> polishProgramForward()
        {
            var r = new List<string>();

            var todo = new Queue<CFG.Node>();
            var done = new HashSet<CFG.Node>();
            todo.Enqueue(cfg.rootNode);
            while (todo.Any())
            {
                #region progress
                var n = todo.Dequeue();
                /*                var u = n.universe;
                                if (u == null)
                                    continue;*/
                done.Add(n);
                foreach (var sn in n.successors)
                    if (!sn.predecessors.Except(done).Any())
                        todo.Enqueue(sn);
                #endregion
                var ns = nodeAtomMap[n];
                {
                    if (n == cfg.rootNode)
                        r.Add("(assert (! (and true");
                    else if (n.isGoal)
                    {
                        //                        if (onlyOrig)
                        r.Add(string.Format("(assert (! (=> {0} (not (and true", ns));
                        /*                        else
                                                {
                                                    r.Add(string.Format("(assert (! (=> {0} (and (and true", ns));
                                                    var ss = new SortedSet<string>();
                        //                            ss.UnionWith(nodeConjunctsP(n).Except(nodePreTRConjuncts[n].Union(rootNodeConjuncts)));
                                                    r.AddRange(from s in ss select "      " + s);
                                                    r.Add(string.Format(") (not (and true ", ns));
                                                }*/
                    } else
                        r.Add(string.Format("(assert (! (=> {0} (and true ", ns));
                    #region conjuncts
                    if (n != cfg.rootNode)
                    {
                        var ss = new SortedSet<string>();
                        ss.UnionWith(nodeConjunctsN(n));
                        if (!n.isGoal && !onlyOrig)
                            ss.UnionWith(nodeConjunctsP(n).Except(nodePreTRConjuncts[n].Union(rootNodeConjuncts)));
                        r.Add("   (and true");

                        r.AddRange(from s in ss select "      " + s);
                        r.Add("   )");
                    }
                    #endregion
                    #region successors
                    if (n.successors.Any())//TODO disjunction
                        //r.Add(String.Format("   (or {0})", n.successors.Aggregate("", (s, sn) => s + (s == "" ? "" : " ") + nodeAtomMap[sn])));
                        r.Add(disjunction(from sn in n.successors select nodeAtomMap[sn])); //  String.Format("   (or {0})", n.successors.Aggregate("", (s, sn) => s + (s == "" ? "" : " ") + nodeAtomMap[sn])));
                    {
                        var s = ")";
                        if (n == cfg.rootNode)
                            s = s + "";
                        else if (!n.isGoal)
                            s = s + ")";
                        else //if (onlyOrig)
                            s = s + "))";
                        //                        else
                        //                            s=s+")))";
                        s = s + " :named ax_" + ns + "))";
                        r.Add(s);
                    }
                    #endregion
                }
            }
            if (true)
            {
                r.Add(@"(assert (=> false (not (and");
                var gns = new SortedSet<string>();
                foreach (var n in cfg.goalNodes)
                    if (!n.isRefuted)
                        gns.Add(nodeAtomMap[n]);
                foreach (var s in gns)
                    r.Add("   " + s);
                r.Add(@"))))");
            }

            foreach (var n in cfg.nodes)
                foreach (var p in n.compressedPredicates)
                    allUsedPredicates.Remove(p);
            return r;
        }

        private IEnumerable<string> nodeConjunctsP(CFG.Node n)
        {
            var ss = new List<string>();
            var u = n.universe;
            if (!n.isUniverseMine)
                return ss;
            #region gts
            if (dumpAllGTECs)
            {
                foreach (var gt in u.allGTs)
                    foreach (var gfa in gt.gfas)
                        if (u.isNewEq(gfa, gt.rep))
                            addPolishEq(ss, u, gfa.gt, gfa);

                foreach (var gt1 in u.allGTs)
                    foreach (var gt2 in u.getGTDisequalities(gt1))
                        if (gt1.CompareTo(gt2) < 0 && isNewGDE(u, gt1, gt2))
                            ss.Add("(not (= " + polish(u, gt1.rep) + " " + polish(u, gt2.rep) + "))");
            } else
            {
                #region originals
                foreach (var gfa in getOriginalGFAs(n))
                    addPolishEq(ss, u, gfa.gt, gfa);
                #endregion
                #region map reads
                var gts = u.originalGTs;
                if (dumpMREqGCs)
                {
                    foreach (var gt in u.allMRGTs)
                        if (gt.gfas.Length > 1)
                            foreach (var gfa in gt.gfas)
                                if (gfa.function.isMapRead || gt.rep.function.isMapRead)
                                    if (u.isNewEq(gfa, gt.rep))
                                        addPolishEq(ss, u, gt.rep, gfa);
                    gts.UnionWith(u.allMRGTs);
                }
                #endregion
                #region dis-equalities
                foreach (var gt in gts)
                    foreach (var gt2 in u.gtData[gt].disequalities.Intersect(gts))
                        if (gt.CompareTo(gt2) < 0)
                            ss.Add("(not (= " + polish(u, gt.rep) + " " + polish(u, gt2.rep) + "))");
                #endregion
            }
            #endregion

            #region GCs
            var gcs = new HashSet<GC>();
            if (dumpAllGCs)
                gcs.UnionWith(u.allGCs);
            else
            {
                if (dumpOriginalGCs)
                    gcs.UnionWith(u.originalGCs);
                else
                {
                    gcs.UnionWith(from gc in u.originalGCs where gc.gls.Count == 1 select gc);
                    if (dumpMREqGCs)
                        gcs.UnionWith(u.getMRGTsEqGCs());
                }
            }
            foreach (var gc in gcs)
                ss.Add(polish(gc));
            #endregion
            return ss;
        }
        private IEnumerable<string> nodeConjunctsN(CFG.Node n)
        {
            return polishFCs(n);
        }


        private IList<string> polishProgram()
        {
            if (dumpForward)
                return polishProgramForward();
            else
                return polishProgramLazySMT3();
        }
        private IList<string> polishProgramLazySMT3()
        {
            var r = new List<string>();

            var rootSymbol = "$root";
            var todo = new Queue<CFG.Node>();
            var done = new HashSet<CFG.Node>();
            foreach (var n in cfg.goalNodes)
                todo.Enqueue(n);
            r.Add("(assert (not");
            while (todo.Any())
            {
                #region progress
                var n = todo.Dequeue();
                done.Add(n);
                foreach (var pn in n.predecessors)
                    if (!pn.successors.Except(done).Any())
                        todo.Enqueue(pn);
                #endregion
                var ns = (n == cfg.rootNode) ? rootSymbol : nodeAtomMap[n];
                {
                    var ncs = new List<String>();
                    if (n != cfg.rootNode)
                        ncs.AddRange(getNodeConjuncts(n));
                    {
                        var preS = "(let ((" + ns + " ";
                        if (n.isGoal)
                            preS += ("(and");
                        else
                            preS += "(=> (and true";
                        r.Add(preS);
                        foreach (var nc in ncs)
                            r.Add("    " + nc);
                        if (n.isGoal)
                            r.Add(")))");
                        else
                        {
                            var rsns = from sn in n.successors where !sn.isGoal select sn;
                            var gsns = from sn in n.successors where sn.isGoal select sn;
                            Debug.Assert(gsns.Any() || rsns.Any());
                            r.Add(@"  )" + ((gsns.Any() && rsns.Any()) ? "(and " : ""));
                            if (gsns.Any())
                                r.Add("    " + disjunction(from gsn in gsns select nodeAtomMap[gsn]));
                            if (rsns.Any())
                                r.Add("    " + conjunction(from rsn in rsns select nodeAtomMap[rsn]));
                            r.Add(((gsns.Any() && rsns.Any()) ? ")" : "") + @")))");
                        }
                    }

                }
            }
            r.Add(String.Format("   {0}", rootSymbol));
            r.Add(new String(')', cfg.nodes.Count));
            r.Add("))");

            /*            if (true)
                        {
                            r.Add(@"(assert (=> false (not (and");
                            var gns = new SortedSet<string>();
                            foreach (var n in cfg.goalNodes)
                                if (!n.isRefuted)
                                    gns.Add(nodeAtomMap[n]);
                                foreach (var n in gns)
                                    r.Add("   " + n);
                            r.Add(@"))))");
                        }*/

            foreach (var n in cfg.nodes)
                foreach (var p in new[] { n.predicate }.Concat(n.compressedPredicates))
                    allUsedPredicates.Remove(p);
            return r;
        }

        public static string disjunction(IEnumerable<string> ss)
        {
            return opN("or", ss);
        }
        public static string conjunction(IEnumerable<string> ss)
        {
            return opN("and", ss);
        }

        public static string opN(string op, IEnumerable<string> ss)
        {
            Debug.Assert(ss.Any());
            if (ss.Count() == 1)
                return ss.First();
            else
                return "(" + op + " " + aggr(" ", ss) + ")";
        }
        public static string aggr(string sep, IEnumerable<string> ss)
        {
            var r = "";
            foreach (var s in ss)
                r += (r == "" ? "" : sep) + s;
            return r;
        }

        private IList<string> getNodeConjuncts(CFG.Node n)
        {
            return (onlyOrig)
                ? getNodeConjunctsOnlyOrig(n)
                : getNodeConjuncts3(n);
        }

        private IList<string> getNodeConjunctsOnlyOrig(CFG.Node n)
        {
            var result = new List<string>();
            Debug.Assert(!n.isRefuted);
            var u = n.universe;

            addNodeExpressionsAndFormulaeOrig(n, result);
            result.Sort();
            return result;
        }

        private IEnumerable<string> polishFCs(CFG.Node n)
        {
            var result = new List<string>();
            var u = n.universe;
            var addGCs = onlyOrig || n.isGoal || (!dumpOriginalGCs && !dumpAllGCs);
            var simplifyV = !onlyOrig && !n.isGoal;// && (!dumpForward || n.isGoal);
                                                   //            if (n.predicate.name == @"anon263_assertion")
                                                   //                Debugger.Break();
            foreach (var e0 in nodeAxiomMap[n].expressions)
                foreach (var e in unfoldConjunctions(e0))
                    if (addGCs || hasQuantifiers(e))
                    {
                        var se = simplifyV ? simplify(u, e) : e;
                        if (!isTrue(se))
                            result.Add(polish(se));
                    }

            foreach (var f0 in nodeAxiomMap[n].formulae)
                foreach (var f in unfoldConjunctions(f0))
                    result.Add(polish(f));
            return result;
        }
        private void addNodeExpressionsAndFormulaeOrig(CFG.Node n, List<string> result)
        {
            foreach (var e0 in nodeAxiomMap[n].expressions)
                foreach (var e in unfoldConjunctions(e0))
                if (!isTrue(e) && !e.ToString().Contains(Slicer.pathConditionPrefix))
                {
                    var se = e;
                    if (simplifyOrig)
                        se = simplify(null, e);
                    result.Add(polish(se));
                }
            foreach (var f0 in nodeAxiomMap[n].formulae)
                foreach (var f in unfoldConjunctions(f0))
                    if (!isBFDefinition(f, true))
                        result.Add(polish(f));
        }

        private bool isBFDefinition(IFormula f0, bool consts) //hacky
        {
            var f = f0;
            while (f is UniversalFormula)
                f = (f as UniversalFormula).f;
            var ef = f as EquivalenceFormula;
            if (ef == null)
                return false;
            var a0 = ef.f1 as EqualityFormula;
            if (a0 == null)
                return false;
            var b1 = a0.t2 as FunctionApplicationFormula;
            if (b1 == null)
                return false;
            return (consts || b1.function.argumentTypes.Any()) && isBF(b1.function);
        }
        IEnumerable<Expression> unfoldConjunctions(Expression e0)
        {
            var result = new List<Expression>();
            var todo = new Queue<Expression>();
            todo.Enqueue(e0);
            while (todo.Any())
            {
                var e = todo.Dequeue();
                if (e is FAE && StateSpace.Functions.Basic.BFunction.isConjunction((e as FAE).function))
                {
                    var andf = e as FAE;
                    todo.Enqueue(andf.arguments[0]);
                    todo.Enqueue(andf.arguments[1]);
                } else
                {
                    result.Add(e);
                }
            }
            return result;
        }
        IEnumerable<IFormula> unfoldConjunctions(IFormula f0)
        {
            var result = new List<IFormula>();
            var todo = new Queue<IFormula>();
            todo.Enqueue(f0);
            while (todo.Any())
            {
                var f = todo.Dequeue();
                if (f is And)
                {
                    var andf = f as And;
                    todo.Enqueue(andf.f1);
                    todo.Enqueue(andf.f2);
                } else
                    result.Add(f);
            }
            return result;
        }
        private IList<string> getNodeConjuncts3(CFG.Node n)
        {
            var result = new List<string>();
            Debug.Assert(!n.isRefuted);
            var u = n.universe;
            if (n.isUniverseMine)
            {
                Debug.Assert(u != null);
                var acs = new HashSet<string>(allNodeConjuncts(n).Except(nodePreTRConjuncts[n]));
                if (n.predecessors.Any())
                    acs.ExceptWith(rootNodeConjuncts);
                result.AddRange(acs);
            }
            return result;
        }

        public bool isTrue(Expression e)
        {
            if (e == trueExpression)
                return true;

            var le = e as LiteralExpression;
            if (le != null)
                return BooleanType.isBoolean(le.type) && (le.value as BooleanValue).value;
            var fae = e as FAE;
            return fae != null
                    && String.Equals(fae.function.name, "true", StringComparison.OrdinalIgnoreCase);
        }
        public bool isFalse(Expression e)
        {
            if (e == falseExpression)
                return true;
            var le = e as LiteralExpression;
            if (le != null)
                return BooleanType.isBoolean(le.type) && !(le.value as BooleanValue).value;
            var fae = e as FAE;
            return fae != null
                    && String.Equals(fae.function.name, "false", StringComparison.OrdinalIgnoreCase);
        }
        public Expression negate(Expression e)
        {
            if (isTrue(e))
                return falseExpression;
            else if (isFalse(e))
                return trueExpression;
            var fae = e as FAE;
            if (fae != null && BFunction.isNegation(fae.function))
                return fae.arguments[0];
            else return new BasicFAE(BFunction.not, new ExpressionList(e));
        }
        private Expression simplify(Universe u, Expression e)
        {
            if (!BooleanType.isBoolean(e.type))
                return e;
            Debug.Assert(BooleanType.isBoolean(e.type));
            if (e is LiteralExpression)
                return simplify(u, e as LiteralExpression);
            else if (e is ProgramVariableExpression)
                return simplify(u, e as ProgramVariableExpression);
            else if (e is FAE)
                return simplify(u, e as FAE);
            else if (e is QuantifiedExpression)
                return simplify(u, e as QuantifiedExpression);
            else if (e is BoundVariableExpression)
                return e;
            throw new NotImplementedException();
        }
        private Expression simplify(Universe u, QuantifiedExpression qe)
        {
            var se = simplify(u, qe.expression);
            if (isTrue(qe.expression))
                return qe.expression;
            //            if (!se.freeVariables.Contains(qe.variable) && !qe.triggers.Any(trs=>trs.Any(e=>e.freeVariables.Contains(qe.variable))))
            //                return se;
            return new BasicQuantifiedExpression(qe.scope, qe.quantifier, qe.variable, se, (from tr in qe.triggers select tr).ToArray(), qe.attributes);
        }
        private Expression simplify(Universe u, LiteralExpression e)
        {
            return e;
        }
        public readonly Expression trueExpression = new BasicLiteralExpression(BooleanValue.makeBooleanValue(true));
        public readonly Expression falseExpression = new BasicLiteralExpression(BooleanValue.makeBooleanValue(false));

        public static void soOrig(SMTLibDumperEC d)
        {
            d.onlyOrig = true;
        }
        public static void soNOP(SMTLibDumperEC d)
        {
        }
        public static void soFw(SMTLibDumperEC d)
        {
            d.dumpForward = true;
        }
        public static void soFwOrig(SMTLibDumperEC d)
        {
            d.dumpForward = true;
            d.onlyOrig = true;
        }
        public static void soFwFull(SMTLibDumperEC d)
        {
            d.dumpForward = true;
            d.dumpAllGCs = true;
            d.dumpAllGTECs = true;
            d.dumpOriginalGCs = true;
        }
        public static void soFwMRs(SMTLibDumperEC d)
        {
            d.dumpForward = true;
            d.dumpMREqGCs = true;
            d.dumpOriginalGCs = true;
        }
        public bool simplifyOrig = false;
        public bool onlyOrig = false;
        public bool simplifyByECs = true;
        public bool simplifyByUGCs = true;
        public bool dumpJoin = false;
        public bool dumpMREqGCs = false;
        public bool dumpAllSources = false;
        public bool dumpAllGTECs = false;
        public bool dumpAllGCs = false;
        public bool dumpForward = false;
        public bool dumpOriginalGCs = false;

        private Expression simplify(Universe u, ProgramVariableExpression e)
        {
            var p = cfg.srs.tryGetPredicate(e.programVariable);
            if (p != null && u != null)
            {
                if (simplifyByUGCs && u.inScope(p))
                {
                    if (u.isTrue(p.pp(true), u.emptyGTT))
                        return trueExpression;
                    else if (u.isTrue(p.pp(false), u.emptyGTT))
                        return falseExpression;
                }
            } else if (simplifyByECs && u != null)
            {
                var f = cfg.srs.tryGetFunction(e.programVariable);
                if (f != null && u.inScope(f))
                {
                    var gt = getGT(u, f, u.emptyGTT);
                    if (gt != null)
                    {
                        var ne = getGTExpression(gt);
                        //                        if (different(e,ne))
                        //                            Debugger.Break();
                        return ne;
                    }
                }
            }
            return e;
        }
        private Expression simplify(Universe u, FAE fae)
        {
            var f = fae.function;
            var args = fae.arguments;
            var sArgs = new Expression[args.count];
            for (var i = 0; i < sArgs.Length; i++)
                sArgs[i] = simplify(u, args[i]);
            #region propositional
            if (BFunction.isConjunction(f))
            {
                for (var i = 0; i < 2; i++)
                    if (isFalse(sArgs[i]))
                        return falseExpression;
                    else if (isTrue(sArgs[i]))
                        return sArgs[1 - i];
            } else if (BFunction.isDisjunction(f))
            {
                for (var i = 0; i < 2; i++)
                    if (isTrue(sArgs[i]))
                        return trueExpression;
                    else if (isFalse(sArgs[i]))
                        return sArgs[1 - i];
            } else if (BFunction.isImplication(f))
            {
                if (isFalse(sArgs[0]) || isTrue(sArgs[1]))
                    return trueExpression;
                else if (isTrue(sArgs[0]))
                    return sArgs[1];
                else if (isFalse(sArgs[1]))
                    return negate(sArgs[0]);
            } else if (BFunction.isEquivalence(f) || (BFunction.isEquality(f) && BooleanType.isBoolean(args[0].type)))
            {
                if (sArgs[0] == sArgs[1])
                    return trueExpression;
                else if ((isTrue(sArgs[0]) && isFalse(sArgs[1])) || (isFalse(sArgs[0]) && isTrue(sArgs[1])))
                    return falseExpression;
                else for (var i = 0; i < 2; i++)
                        if (isTrue(sArgs[i]))
                            return sArgs[1 - 1];
                        else if (isFalse(sArgs[i]))
                            return negate(sArgs[1 - i]);
            } else if (BFunction.isNegation(fae.function))
            {
                var fae2 = sArgs[0] as FAE;
                if (fae2 != null && BFunction.isNegation(fae2.function))
                    return fae2.arguments[0];
                if (isTrue(sArgs[0]))
                    return falseExpression;
                if (isFalse(sArgs[0]))
                    return trueExpression;
            }
            #endregion
            else
            {
                #region arithmetic
                if ((fae.function.name == "+" || fae.function.name == "-") && sArgs.All(a => a.type == IntegerType.integerType && (a is LiteralExpression)))
                {
                    var vals = (from a in sArgs select ((a as LiteralExpression).value as IntegerValue).value).ToArray();
                    if (fae.function.name == "+")
                        return new BasicLiteralExpression(IntegerValue.make(vals[0] + vals[1]));
                    else if (fae.function.name == "-")
                        return new BasicLiteralExpression(IntegerValue.make(vals[0] - vals[1]));
                } else
                #endregion

                #region atomic formula
                { //Atomic Formula
                    if (u != null && (simplifyByECs || simplifyByUGCs) && args.isGround)
                    {
                        var argGTs = (from a in args select getGT(u, a)).ToArray();
                        //                    var argGTs = (from a in args select getGT(u, a)).ToArray();
                        if (argGTs.All(x => x.gt != null))
                        {
                            var gtt = u.getGTT(from a in argGTs select a.gt);
                            if (BFunction.isEquality(fae.function))
                            {
                                if (simplifyByECs)
                                {
                                    if (argGTs[0].gt == argGTs[1].gt)
                                        return trueExpression;
                                    if (u.hasDisequality(argGTs[0].gt, argGTs[1].gt))
                                        return falseExpression;
                                }
                            } else if (simplifyByUGCs && isInterpreted(fae.function) && args.count == 2 && args.All(a => a.type == IntegerType.integerType))
                            {
                                var rArgGTs = new[] { argGTs[1], argGTs[0] };
                                var lt = cfg.srs.getPredicate(BFunctionTemplate.lt.getInstance()).pp(true);
                                var isEq = argGTs[0] == argGTs[1];
                                var isNE = u.hasDisequality(argGTs[0].gt, argGTs[1].gt);
                                var rgtt = u.getGTT(from a in rArgGTs select a.gt);
                                var isLT = u.hasGTT(gtt) && u.isTrue(lt, gtt);
                                var isGE = u.hasGTT(gtt) && u.isFalse(lt, gtt);
                                var isGT = u.hasGTT(rgtt) && u.isTrue(lt, rgtt);
                                var isLE = u.hasGTT(rgtt) && u.isFalse(lt, rgtt);
                                switch (fae.function.name)
                                {
                                    case "<=":
                                        if (isEq || isLT || isLE)
                                            return trueExpression;
                                        else if (isGT || (isNE && isGE))
                                            return falseExpression;
                                        break;
                                    case ">=":
                                        if (isEq || isGT || isGE)
                                            return trueExpression;
                                        else if (isLT || (isNE && isLE))
                                            return falseExpression;
                                        break;
                                    case ">":
                                        if (isGT || (isGE && isNE))
                                            return trueExpression;
                                        else if (isEq || isLT || isLE)
                                            return falseExpression;
                                        break;
                                    case "<":
                                        if (isLT || (isLE && isNE))
                                            return trueExpression;
                                        else if (isEq || isGT || isGE)
                                            return falseExpression;
                                        break;
                                }
                            }
                            if (simplifyByUGCs)
                            {
                                var p = cfg.srs.tryGetPredicate(fae.function);
                                if (p != null && u.hasGTT(gtt))
                                    if (u.isTrue(p.pp(true), gtt))
                                        return trueExpression;
                                    else if (u.isTrue(p.pp(false), gtt))
                                        return falseExpression;
                            }

                            var nfae = new BasicFAE(
                                fae.function,
                                new ExpressionList(
                                    from a in argGTs
                                    select a.expression));

                            //                            if (different(fae,nfae))
                            //                                Debugger.Break();
                            return nfae;
                        }//if (argGTs.All(x => x.gt != null))
                    }//args.isGround
                }//Atomic Formula
                #endregion atomic formula
            }
            if (isBinaryCommutative(fae.function))
                sArgs = sort(sArgs);
            return new BasicFAE(fae.function, new ExpressionList(sArgs));
        }

        private Expression[] sort(Expression[] eA)
        {
            Debug.Assert(eA.Length == 2);
            if (eA[0].ToString().CompareTo(eA[1].ToString()) > 0)
                return eA;
            else
                return new[] { eA[1], eA[0] };
        }
        private bool isBinaryCommutative(StateSpace.Functions.Function f)
        {
            return
                BFunction.isConjunction(f)
                || BFunction.isDisjunction(f)
                || BFunction.isEquality(f)
                || BFunction.isEquivalence(f)
                || BFunction.isInEquality(f)
                || f.name == "+"
                ;
        }
        /*
        private string normalize(string os)
        {
            var s = os;
            s = s.Replace(@"ZeroMask", @"SecMask");
            s = s.Replace(@"monitorK", @"channelK");
            s = s.Replace(@"predicateK", @"channelK");
            s = s.Replace(@"(* 100 Permission$denominator)", @"Permission$FullFraction");
            s = s.Replace(@"(Fractions 100)", @"Permission$FullFraction");
            s = s.Replace(@"(Fractions 50)", @"(* 50 Permission$denominator)");
            s = s.Replace(@"Mask@3", @"Mask");
            s = s.Replace(@"(- 0 1)", @"-1");
            return s;
        }
        public bool different(Expression oe, Expression ne)
        {
            var os = normalize(polish(oe));
            var ns = normalize(polish(ne));
            var r = os != ns;
            //            if (r)
            //                Debugger.Break();
            return r;
        }
        */
        private Expression getGTExpression(GT gt)
        {
            var rep = gt.rep;
            var f = rep.function;
            if (rep.gtt.Count == 0)
                if (cfg.srs.isNumber(f))
                    return new BasicLiteralExpression(IntegerValue.make(getNumber(f)));

            Function rf;
            while (cfg.renameInverseMap.TryGetValue(f, out rf))
                f = rf;

            var template = new BFunctionTemplate(f.name, "", new StateSpace.Types.Quantification.TypeVariable[0], new BasicFunctionSignature(f.resultType, f.argumentTypes), null);
            var mf = template.getInstance();
            return new BasicFAE(mf, new ExpressionList(from sgt in rep.gtt.gtT select getGTExpression(sgt)));
        }

        private BigInteger getNumber(Function function)
        {
            return BigInteger.Parse(function.name);
        }

        class GTAndExpression
        {
            public GTAndExpression(GT gt, Expression expression)
            {
                this.gt = gt;
                this.expression = expression;
            }
            public readonly GT gt;
            public readonly Expression expression;
        }

        private GTAndExpression getGT(Universe u, Expression e)
        {
            if (BooleanType.isBoolean(e.type))
            {
                var key = e.ToStringN();
                Function f;
                if (cfg.srs.expressionStringToBooleanFunctionMap.TryGetValue(key, out f))
                {
                    var gt = getGT(u, f, u.emptyGTT);
                    if (gt != null)
                        if (isTrue(gt))
                            return new GTAndExpression(gt, trueExpression);
                        else
                            if (isFalse(gt))
                            return new GTAndExpression(gt, falseExpression);
                }
            }

            if (e is LiteralExpression)
                return getGT(u, e as LiteralExpression);
            else if (e is ProgramVariableExpression)
                return getGT(u, e as ProgramVariableExpression);
            else if (e is FAE)
                return getGT(u, e as FAE);
            else if (e is BoundVariableExpression || (e is QuantifiedExpression))
                return new GTAndExpression(null, e);

            throw new NotImplementedException();
        }

        private bool isTrue(GT gt)
        {
            return
                gt.type == BooleanType.booleanType
                && (gt.gfasByFunction.Keys.Any(isTrue));
        }
        private bool isFalse(GT gt)
        {
            return
                gt.type == BooleanType.booleanType
                && (gt.gfasByFunction.Keys.Any(isFalse));
        }

        private bool isTrue(Function f)
        {
            return f.name == "true";
        }
        private bool isFalse(Function f)
        {
            return f.name == "false";
        }

        private GT getGT(Universe u, Function f, GTT gtt)
        {
            if (f == null || gtt == null)
                return null;
            Function rf;
            var n = cfg.universeToNodeMap[u];
            while (n.scope.renameMap.TryGetValue(f, out rf))
                f = rf;
            GFA gfa;
            GT gt = null;
            if (u.gttData[gtt].sgfas.TryGetValue(f, out gfa))
                gt = gfa.gt;

            return gt;
        }
        private GTAndExpression getGT(Universe u, LiteralExpression e)
        {
            //            if (e.ToString().Contains(@"65536"))
            //                Debugger.Break();
            return new GTAndExpression(getGT(u, cfg.srs.getFunction(e.value), u.emptyGTT), e);
        }
        private GTAndExpression getGT(Universe u, ProgramVariableExpression e)
        {
            var gt = getGT(u, cfg.srs.tryGetFunction(e.programVariable), u.emptyGTT);
            var ne = (gt != null)
                ? getGTExpression(gt)
                : e;
            return new GTAndExpression(gt, ne);
        }
        private GT getGT(Universe u, BigInteger i)
        {
            var f = cfg.srs.getFunction(IntegerValue.make(i));
            return getGT(u, f, u.emptyGTT);
        }
        private GTAndExpression getGT(Universe u, FAE fae)
        {
            var of = fae.function;

            var gtT = (from a in fae.arguments select getGT(u, a)).ToArray();
            #region arithmetic
            if ((of.name == "+" || of.name == "-" || of.name == "*") && gtT.All(a => (a.expression is LiteralExpression)))
            {
                //            if (fae.ToString().Contains(@"((65536 * 65536) * 65536) * 65536"))
                //                Debugger.Break();
                var vals = (from a in gtT select ((a.expression as LiteralExpression).value as IntegerValue).value).ToArray();
                var val = (of.name == "+")
                    ? vals[0] + vals[1]
                    : (of.name == "-")
                        ? vals[0] - vals[1]
                        : vals[0] * vals[1];
                var ngt = getGT(u, val);
                var e = new BasicLiteralExpression(IntegerValue.make(val));
                return new GTAndExpression(ngt, e);
            }
            #endregion

            GT gt = null;
            Expression ne = null;
            if (gtT.All(a => a.gt != null))
            {
                if (of.name == "-")
                {
                    var minusOneGT = getGT(u, -1);
                    if (minusOneGT != null)
                    { //replace x-y with x+(-1*y)
                        var mulFF = BFunctionTemplate.mul.getInstance();
                        var mulF = cfg.srs.getFunction(mulFF);
                        var gtt1 = u.getGTT(new[] { minusOneGT, gtT[1].gt });
                        GFA gfa1;
                        if (u.hasGTT(gtt1) && u.tryGetGFA(mulF, gtt1, out gfa1))
                        {
                            var gtt = u.getGTT(new[] { gtT[0].gt, gfa1.gt });
                            GFA gfa;
                            var addFF = BFunctionTemplate.plus.getInstance();
                            var addF = cfg.srs.getFunction(addFF);
                            if (u.hasGTT(gtt) && u.tryGetGFA(addF, gtt, out gfa))
                            {
                                gt = gfa.gt;
                                if (gfa.gt.rep != gfa)
                                    ne = getGTExpression(gfa.gt);
                            }
                        }
                    }
                } else
                {
                    var f = cfg.srs.tryGetFunction(of);
                    {
                        GTT gtt;
                        if (u.termRepository.tryGetGTT(from a in gtT select a.gt, out gtt) && u.hasGTT(gtt))
                        {
                            gt = getGT(u, f, gtt);
                            if (gt != null)
                                ne = getGTExpression(gt);
                        }
                    }
                }
            }
            if (ne == null)
                if (Enumerable.Range(0, fae.arguments.count).All(i => fae.arguments[i] == gtT[i].expression))
                    ne = fae;
                else
                    ne = new BasicFAE(fae.function, new ExpressionList(from a in gtT select a.expression));
            return new GTAndExpression(gt, ne);
        }

        private void addQuantifiedIfRelevant(List<string> result, IFormula f)
        {
            if (hasQuantifiers(f))
                result.Add(polish(f));
        }

        private bool hasQuantifiers(IFormula f)
        {
            return (f is IQuantifiedFormula)
                || f.subFormulae.Any(hasQuantifiers);
        }

        public static bool isEqualityExpression(Expression e)
        {
            var fae = e as FAE;
            return
                fae != null && (
                (StateSpace.Functions.Basic.BFunction.isEquality(fae.function))
                || StateSpace.Functions.Basic.BFunction.isEquivalence(fae.function));
        }
        public static bool isDisequalityExpression(Expression e)
        {
            var fae = e as FAE;
            if (fae != null)
            {
                if (StateSpace.Functions.Basic.BFunction.isInEquality(fae.function))
                    return true;
                if (StateSpace.Functions.Basic.BFunction.isNegation(fae.function))
                    return isEqualityExpression(fae.arguments[0]);
            }
            return false;
        }
        private void addQuantifiedIfRelevant(Universe u, List<string> result, Expression e)
        {
            if (hasQuantifiers(e))// || isEqualityExpression(e) || isDisequalityExpression(e))
                result.Add(polish(e));
        }

        private bool hasQuantifiers(Expression e)
        {
            return
                    (e is QuantifiedExpression)
                    || e.subExpressions.Any(hasQuantifiers);
        }

        private bool isNewGDE(Universe u, GT gt1, GT gt2)
        {
            return
                u.pis.Length == 0
                || !u.pis.All(pi =>
                        u.getGTPGTs(pi, gt1).Any(pgt1 =>
                            u.pus[pi].gtData[pgt1].disequalities.Intersect(u.getGTPGTs(pi, gt2)).Any()
                        )
                   );
        }

        private void dumpPreamble()
        {
            dumpString(
@"(set-option :print-success false)
(set-info :smt-lib-version 2.0)
(set-option :AUTO_CONFIG false)
(set-option :pp.bv_literals false)
(set-option :MODEL.V2 true)
(set-option :smt.PHASE_SELECTION 0)
(set-option :smt.RESTART_STRATEGY 0)
(set-option :smt.RESTART_FACTOR |1.5|)
(set-option :smt.ARITH.RANDOM_INITIAL_VALUE true)
(set-option :smt.CASE_SPLIT 3)
(set-option :smt.DELAY_UNITS true)
(set-option :NNF.SK_HACK true)
(set-option :smt.MBQI false)
(set-option :smt.QI.EAGER_THRESHOLD 100)
(set-option :TYPE_CHECK true)
(set-option :smt.BV.REFLECT true)
(set-option :TIMEOUT 0)
(set-logic  UFNIA)
;(set-option :produce-unsat-cores true)
; done setting options");

        }

        public static bool isInterpreted(StateSpace.Functions.Function f)
        {
            return StateSpace.Functions.Basic.BFunction.isBinaryLogical(f)
                || StateSpace.Functions.Basic.BFunction.isUnaryLogical(f)
                || f.name == "-"
                || f.name == "+"
                || f.name == "*"
                || f.name == "/"
                || f.name == "%"
                || f.name == "<"
                || f.name == "<="
                || f.name == ">"
                || f.name == ">="
                ;
        }
        private string polish(Expression e)
        {
            //            Debug.Assert(!polishI(e).StartsWith(@"(and"));
            var r = polishI(e);
            //            if (r.Contains(@"if-then"))
            //                Debugger.Break();
            return r;
        }
        private string polishI(Expression e)
        {
            if (e is QuantifiedExpression)
                return polish(e as QuantifiedExpression);
            else if (e is FAE)
                return polish(e as FAE);
            else if (e is BoundVariableExpression)
                return polish(e as BoundVariableExpression);
            else if (e is ProgramVariableExpression)
                return polish(e as ProgramVariableExpression);
            else if (e is LiteralExpression)
                return polish(e as LiteralExpression);
            else
                throw new NotImplementedException();
        }
        private string polish(QuantifiedExpression qe)
        {
            var e = qe;
            var qName = e.quantifier.ToString(); // (e.quantifier.isForall) ? "forall" : "exists";
            var s = "(" + qName + "(";
            while (true)
            {
                addUsedType(e.variable.type);
                s += " (|" + e.variable.name + "| " + polish(e.variable.type) + ")";
                if (e.expression is QuantifiedExpression && (e.expression as QuantifiedExpression).quantifier == e.quantifier)
                    e = e.expression as QuantifiedExpression;
                else
                    break;
            }
            s += ")";

            bool hasTriggersOrAttributes = e.triggers.Any() || e.attributes != null;
            if (hasTriggersOrAttributes)
            {
                string attrString = "";
                if (e.attributes != null)
                    attrString += " " + e.attributes.Substring(1, e.attributes.Length - 2);
                string triggerString = "";
                if (e.triggers.Any())
                {
                    triggerString = "";
                    foreach (var trs in e.triggers)
                        if (trs.Any())
                        {
                            triggerString += " :pattern (";
                            foreach (var t in trs)
                                triggerString += " " + polishI(t);
                            triggerString += ")";
                        }
                }
                return s + "(!" + polishI(e.expression) + " " + attrString + triggerString + ")" + ")";
            } else
                return s + polishI(e.expression) + ")";
        }
        private string polish(FAE e)
        {
            var result = polish(e.function);
            if (e.arguments.Any())
            {
                result = "(" + result;
                foreach (var a in e.arguments)
                    result += " " + polishI(a);
                result += ")";
            }
            return result;
        }
        private string polish(StateSpace.Functions.Function f)
        {
            if (f.name == "=" || f.name == "==")
                return "=";
            else if (f.name == "==>")
                return "=>";
            else if (f.name == "<==>")
                return "=";
            else if (f.name == "&&")
                return "and";
            else if (f.name == "||")
                return "or";
            else if (f.name == "!")
                return "not";
            else if (f.isITE)
                return "ite";
            var r = SMTLibDumperFormulae.rectify(Slicer.funcName(f));
            var nf = cfg.srs.tryGetFunction(f);
            if (nf != null)
                addUsedFunction(nf);
            else
            {
                if (f.resultType == BooleanType.booleanType)
                {
                    var p = cfg.srs.getPredicate(f);
                    addUsedPredicate(p);
                } else
                    addUsedFunction(cfg.srs.getFunction(f));
            }

            return r;
        }
        private string polish(BoundVariableExpression e)
        {
            addUsedType(e.type);
            return "|" + e.boundVariable.name + "|";
        }
        private string polish(ProgramVariableExpression e)
        {
            //            if (e.programVariable.name.Contains(@"condition"))
            //                Debugger.Break();
            var f = cfg.srs.tryGetFunction(e.programVariable);
            if (f == null && e.programVariable.type == BooleanType.booleanType)
            {
                var p = cfg.srs.getPredicate(e.programVariable);
                Debug.Assert(p != null);
                if (!p.isInterpreted)
                    addUsedPredicate(p);
            } else
            {
                if (f == null)
                    f = cfg.srs.getFunction(e.programVariable);
                addUsedFunction(f);
            }
            var r = e.programVariable.name.Replace('#', '@');
            if (r.StartsWith(@"@"))
                r = "$" + r;
            return r;
        }
        private string polish(LiteralExpression e)
        {
            if (e.type == IntegerType.integerType)
            {
                var iv = e.value as IntegerValue;
                if (iv.value < 0)
                    return "(- " + (-iv.value).ToString() + ")";
                else
                    return iv.value.ToString();
            } else
                return e.value.ToString();
        }

        private StreamWriter file;

        private string polish(IFormula formula)
        {
            addUsedSymbols(formula);
            var r = SMTLibDumperFormulae.polish(formula);
            //            if (r.Contains(@"-2"))
            //                Debugger.Break();
            return r;
        }
        void addUsedSymbols(IFormula formula)
        {
            if (formula is IAtomicFormula)
            {
                var pa = formula as PredicateApplication;
                if (pa != null)
                {
                    addUsedPredicate(pa.predicate);
                    foreach (var t in pa.args)
                        addUsedSymbols(t);
                } else
                {
                    var eq = formula as EqualityFormula;
                    foreach (var t in eq.args)
                        addUsedSymbols(t);
                }
                //                foreach (var t in formula.)
            } else
            {
                var qf = formula as IQuantifiedFormula;
                if (qf != null)
                    addUsedType(qf.var.type);
                foreach (var sf in formula.subFormulae)
                    addUsedSymbols(sf);
            }
        }

        private void addUsedSymbols(ITerm t)
        {
            var fa = t as FunctionApplicationFormula;
            if (fa != null)
            {
                addUsedFunction(fa.function);
                foreach (var a in fa.args)
                    addUsedSymbols(a);
            }
        }
        private IList<string> polishEquivalenceClasses4(CFG.Node n)
        {
            if (n.isGoal)
                return new string[0];
            var r = new List<string>();
            var u = n.universe;


            var ssA = (from pi in u.pis select new List<string>()).ToArray();
            var css = new List<string>();

            #region basic ECs
            var gfas = (dumpAllGTECs)
                ? (from gt in u.allGTs from gfa in gt.gfas select gfa)
                : getOriginalGFAs(n);
            foreach (var gfa in gfas)
                addPolishEq(css, u, gfa.gt, gfa);
            #endregion

            #region map reads
            if (dumpMREqGCs && !dumpAllGCs)
            {
                var eqGCs = new HashSet<GC>();
                var dumpEqGTs = false;
                if (dumpEqGTs)
                {
                    foreach (var gt in u.allGTs)
                    {
                        var mrGFAs = new List<GFA>(from gfa in gt.gfas where gfa.function.isMapRead select gfa);
                        if (mrGFAs.Any())
                        {
                            if (gt.gfas.Length > 1)
                                foreach (var gfa in gt.gfas)
                                    if (gfa.function.isMapRead)
                                        if (u.isNewEq(gfa, gt.rep))
                                            addPolishEq(css, u, gt.rep, gfa);
                            var gtEqGCs = u.getGTEqGCs(gt);
                            eqGCs.UnionWith(gtEqGCs);
                        }
                    }
                }
                foreach (var gc in u.assumedGCs)
                    if (gc.gls.Any(gl => gl.isEQOrDE && gl.polarity && gl.gtT.Any(gt => gt.gfasByFunction.Keys.Any(f => f.isMapRead))))
                        eqGCs.Add(gc);
                css.AddRange(from gc in eqGCs select polish(gc));
                //                foreach (var gc in eqGCs)
                //                        if (gc.gls.Any(gl=>gl.isEQOrDE && gl.polarity && gl.gtT.Any(gt=>gt.gfasByFunction.Keys.Any(f=>f.isMapRead))))
                //                            css.Add(polish(gc));
            }
            #endregion map reads

            #region dis-equalities
            var DEGTs = (dumpAllGTECs)
                ? u.allGTs
                : u.originalGTs;
            foreach (var gt1 in DEGTs)
                foreach (var gt2 in u.gtData[gt1].disequalities)
                    if (DEGTs.Contains(gt2))
                        if (gt1.index < gt2.index)
                            css.Add(polishDisequality(gt1, gt2));
            #endregion

            #region join
            if (dumpJoin && !n.isGoal && n.predecessors.Count == 2)
            {
                foreach (var gt in nodeRelevantGTs[n])// u.originalGTs)
                {
                    var sgt = polish(gt);
                    var pgtA = (from pi in u.pis
                                select new HashSet<GT>(
                                from pgt in u.getGTPGTs(pi, gt)
                                    //where u.predecessors[pi].isOriginal(pgt)
                                select pgt)).ToArray();
                    var cpgts = FU.intersection(pgtA);
                    if (!cpgts.Contains(gt))
                    {
                        foreach (var cpgt in cpgts)
                            addPolishEq(css, gt, cpgt);
                        foreach (var pi in u.pis)
                        {
                            var pu = u.pus[pi];
                            foreach (var pgt in pgtA[pi].Except(cpgts))
                                addPolishEq(ssA[pi], gt, pgt);
                        }
                    }
                }
            }
            #endregion

            #region output
            Debug.Assert(u.pis.Length != 1 || ssA[0].Count == 0);
            r.AddRange(css);
            foreach (var pi in u.pis)
                Debug.Assert(n.predecessors.ToArray()[pi].universe == u.pus[pi]);
            if (u.pis.Length == 2)
            {
                var jContexts = (from pn in n.predecessors select nodeAtomMap[pn]).ToArray();
                var ps = (from jContext in jContexts select " " + jContext).ToArray();

                foreach (var pi in u.pis)
                    if (ssA[pi].Count > 0)
                    {
                        var ss = ssA[pi];
                        r.Add(string.Format("(=> {0} {1})", ps[pi], makeFlatConjunction(ss)));
                    }
            }
            #endregion
            return r;
        }
        public static string makeFlatConjunction(IEnumerable<string> ss)
        {
            Debug.Assert(ss.Any());
            var c = ss.Count();
            if (c == 1)
                return ss.First();
            return ss.Aggregate("(and", (a, s) => a + " " + s) + ")";
        }

        private ISet<GFA> getOriginalGFAs(CFG.Node n)
        {
            var ts = new HashSet<ITerm>(
                from c in n.clauses
                from l in c.literals
                from t in l.f.subTerms
                select t);
            var gfaMap = new Dictionary<ITerm, GFA>();
            foreach (var t in ts)
                collectOriginalGFAs(n.universe, gfaMap, t);
            return new HashSet<GFA>(gfaMap.Values);
        }

        private void collectOriginalGFAs(Universe u, IDictionary<ITerm, GFA> gfaMap, ITerm t)
        {
            if (t.isVariable || gfaMap.ContainsKey(t))
                return;
            var fae = t.asFunctionApplication;
            foreach (var a in fae.args)
                collectOriginalGFAs(u, gfaMap, a);
            if (fae.args.All(gfaMap.ContainsKey))
                gfaMap[fae] = u.gttData[u.getGTT(from a in fae.args select gfaMap[a].gt)].sgfas[fae.function];
        }

        /*private IEnumerable<string> polishEquivalenceClasses(CFG.Node n)
{
   var r = new List<string>();
   var u = n.universe;
   foreach (var gt in u.allGTs)
       r.AddRange(polishEquivalenceClass2(n, gt));
#region join
   if (dumpJoin && u.predecessors.Length == 2)
   {
       var ju = u as JU;
       var jContexts = (from jn in n.predecessors select nodeAtomMap[jn]).ToArray();
       var ps = (from jContext in jContexts select " " + polish(jContext)).ToArray();

       var ssA = (from j in ju.js select new List<string>()).ToArray();
       foreach (var gt in u.allGTs)
           if (u.isNew(gt) || u.isOriginal(gt) || dumpAllSources)
           {
               var sgt = polish(gt);
               var jgtsA = (from j in ju.js select new HashSet<GT>(ju.getLGTJGTs(j, gt).Except(gt))).ToArray();
               var cjgts = FU.intersection(jgtsA);
               foreach (var cjgt in cjgts)
                   r.Add(String.Format("(= {0} {1})", sgt, polish(cjgt)));
               foreach (var j in ju.js)
                   foreach (var jgt in jgtsA[j].Except(cjgts))
                       ssA[j].Add(String.Format("(= {0} {1})", sgt, polish(jgt)));
           }
       foreach (var j in ju.js)
           if (ssA[j].Count > 0)
           {
               r.Add(String.Format("(=> {0} (and", ps[j]));
               foreach (var seq in ssA[j])
                   r.Add(String.Format("   " + seq));
               r.Add(String.Format("))"));
           }
   }
#endregion
   return r;
}*/
        /*private IEnumerable<string> polishEquivalenceClass2(CFG.Node n, GT gt)
        {
            var result = new List<string>();
            var u = n.universe;
            var sgt = polish(gt);
            if (nodeRelevantGTs[n].Contains(gt))// u.isOriginal(gt)) //u.pis.Length==0 || u.pis.Any(pi=>!u.getGTPGTs(pi,gt).Contains(gt)))
            {
                var srep = polish(gt.rep);
                if (srep != sgt)
                    result.Add(String.Format("(= {0} {1})", sgt, srep));
                //                if (u.isOriginal(gt) || u.isGoal(gt))// || u.isNew(gt))
                foreach (var gfa in gt.gfas)
                    if (gfa != gt.rep)
                        if (isNewGEq(u, gfa, gt.rep))
                            result.Add(String.Format("(= {0} {1})", sgt, polish(gfa)));
            }
            return result;
        }*/
        /*private bool isNewGEq(Universe u, GFA gfa, GFA rep)
        {
            Debug.Assert(gfa.gt == rep.gt);
            if (rep == gfa)
                return false;
            if (u.predecessors.Length == 0)
                return true;
            return u.pis.Any(pi => !getGFAPGTs(u, pi, rep).Intersect(getGFAPGTs(u, pi, gfa)).Any());
        }*/
        /*private ISet<GT> getGFAPGTs(Universe u, int pi, GFA gfa)
        {
            var pu = u.predecessors[pi];
            return new HashSet<GT>(
                from pgtt in u.getGTTPGTTs(pi, gfa.gtt)
                let gttd = pu.gttData[pgtt]
                let pgfa = gttd.sgfas.getOrNull(gfa.function)
                where pgfa != null
                select pgfa.gt);
        }*/
        /*private IEnumerable<string> polishEquivalenceClass(CFG.Node n, GT gt)
        {
            var result = new List<string>();
            var universe = n.universe;
            if (universe.isNew(gt) || universe.isOriginal(gt) || dumpAllGTECs)
            {
                for (var i = 0; i < gt.gfas.Count(); i++)
                {
                    var s1 = polish(gt);
                    var s2 = polish(gt.gfas[i]);
                    if ((s1 != s2) || gt.gfas.Count() == 1)
                        result.Add(String.Format("(= {0} {1})", s1, s2));
                    //                        dumpString(String.Format("   (assert {2} (= {0} {1}){3}) ;{4}", s1, s2, cs1, cs2, "gtdef:" + s1));
                }
            }
            if (universe.isNew(gt) || universe.isOriginal(gt) || dumpAllSources)
                if (dumpJoin && universe.predecessors.Length == 1)
                {
                    //                    var cu = universe as SU;
                    //                    Debug.Assert(n.predecessors.Count == 1);
                    var pn = n.predecessors.First();
                    Debug.Assert(pn.universe == universe.predecessors[0]);
                    var pContext = nodeAtomMap[pn];
                    var s1 = polish(gt);
                    foreach (var pgt in universe.getGTPGTs(0, gt)) //cu.gtSources(gt))
                        if (pgt != gt)
                            result.Add(String.Format("(= {0} {1})", s1, polish(pgt)));
                    //                            dumpString(String.Format("   (assert {3} {0} (= {1} {2}){4})", ps, s1, polish(pgt), cs1, cs2));
                    //                                 dumpString(String.Format("   (assert {3} {0} (= {1} {2}){4})", ps[j], s1, polish(jgt), cs1, cs2));
                }

            return result;
        }*/

        private string polish(Universe u, GFA gfa)
        {
            //            if (isBF(gfa.function))
            //                return polish(simplify(u, cfg.srs.booleanFunctionToExpressionMap[gfa.function]));
            var result = polish(gfa.function);
            if (gfa.gtt.Any())
            {
                result = "(" + result;
                foreach (var a in gfa.gtt.gtT)
                    result += " " + polish(a);
                result += ")";
            }
            return result;
        }
        private string polishDisequality(GT gt1, GT gt2)
        {
            return polish(makeGroundEquality(gt1, gt2, false));
        }
        /*private void dumpDisequality(IL context, GT gt1, GT gt2)
        {
            dumpAtomEC(context, makeGroundEquality(gt1, gt2, false));
        }*/
        private GL makeGroundEquality(GT gt1, GT gt2, bool polarity)
        {
            return new GAF(Equality.get(gt1.type), termRepo.getGTT(new[] { gt1, gt2 }, -1)).gLiteral(polarity);
        }

        private void dumpCheckSat()
        {
            dumpString("\n;Commands");
            dumpString("   (check-sat)");
            dumpString("   ;(get-unsat-core)");
        }
        /*            private void dumpAtom(IAtomEC context, IAtomEC a)
                    {
                        dumpClause(context, new[] { a });
                    }*/
        /*private void dumpAtomEC(IL context, IL a)
        {
            dumpClauseEC(context, new[] { a });
        }*/
        /*private void dumpClauseEC(IEnumerable<IL> atoms)
        {
            dumpClauseEC(trueAtom, atoms);
        }*/
        /*private void dumpClauseEC(IL context, IEnumerable<IL> atoms)
        {
            var s = polishClauseEC(context, atoms);
            if (s != null)
                dumpString(String.Format("   (assert {0})", s));
        }*/
        private string polishClauseEC(IL context, IEnumerable<IL> atoms)
        {
            var aas = new List<IL>();
            foreach (var a in atoms)
                if (a.isTrue)
                    return null;
                else if (!a.isFalse)
                    aas.Add(a);
            if (!aas.Any())
                return null;
            var fvs = FU.union(from aa in aas select aa.freeVariables);
            var vm = new Dictionary<string, string>();
            var result = "";
            var i = 0;
            if (fvs.Count > 0)
            {
                result += "(forall (";
                foreach (var fv in fvs)
                {
                    var name = "v" + i;
                    vm[fv.name] = name;
                    result += "(" + name + " " + polish(fv.type) + ")";
                    i++;
                }
                result += ")";
            }

            var oaas = (context == null || context.isTrue) ? aas : new[] { context.negate }.Union(aas);
            if (oaas.Count() > 1)
                result += "(or";
            foreach (var a in oaas)
            {
                var aa = polish(a, vm);
                result += " " + aa;
            }
            if (oaas.Count() > 1)
                result += ")";

            if (fvs.Count > 0)
                result += ")";
            return result;
        }

        /*private void dumpFormula(IFormula f)
        {
            var s = SMTLibDumper.polish(f);
            dumpString(String.Format("   (assert {0})", s));
        }
        private void dumpClause(Clause c)
        {
            if (c.isTrue)
                return;
            Debug.Assert(!c.isFalse);
            dumpString(String.Format("   (assert {0})", SMTLibDumper.polish(c)));
        }*/
        private string polish(GC gc)
        {
            if (gc.gls.Count == 1)
                return polish(gc.gls[0]);
            return gc.gls.Aggregate("(or", (s, gl) => s + " " + polish(gl)) + ")";
        }
        private string polish(GL ga)
        {
            var result = polish(ga.gaf);
            if (!ga.polarity)
                result = "(not " + result + ")";
            return result;
        }
        private string polish(GAF gaf)
        {
            var result = polish(gaf.predicate);
            if (gaf.gtt.Count() > 0)
            {
                result = "(" + result;
                foreach (var a in gaf.gtt.gtT)
                    result += " " + polish(a);
                result += ")";
            }
            return result;
        }
        private string polish(IL a, Dictionary<string, string> vm)
        {
            var result = polish(a.iaf, vm);
            if (!a.polarity)
                result = "(not " + result + ")";
            return result;
        }
        private string polish(IAF f, Dictionary<string, string> vm)
        {
            var result = polish(f.predicate);
            if (f.itt.Count() > 0)
            {
                result = "(" + result;
                foreach (var a in f.itt)
                    result += " " + polish(a, vm);
                result += ")";
            }
            return result;
        }
        internal string polish(IT t, IDictionary<string, string> vm)
        {
            if (t is FFA)
                return polish(t as FFA, vm);
            else if (t is FVT)
                return polish(t as FVT, vm);
            else
                return polish(t as GT);
        }

        private IDictionary<GT, string> gtMap = new Dictionary<GT, string>();

        /*private void calcGTStrings2()
        {
            var todo = new Queue<CFG.Node>();
            var done = new HashSet<CFG.Node>();
            todo.Enqueue(cfg.rootNode);
            while (todo.Any())
            {
                var n = todo.Dequeue();
                done.Add(n);
                var u = n.universe;
                foreach (var sn in n.successors)
                    if (!sn.predecessors.Except(done).Any())
                        todo.Enqueue(sn);
                var todoGTs = new HashSet<GT>(from gfa in u.gttData[u.emptyGTT].sgfas.Values select gfa.gt);
                var doneGTs = new HashSet<GT>();
                while (todoGTs.Any())
                {
                    var sgtts = new HashSet<GTT>();
                    foreach (var gt in todoGTs)
                    {
                        if (!gtMap.ContainsKey(gt))
                        {
                            Debug.Assert(gt.rep.gts.All(doneGTs.Contains));
                            gtMap[gt] = polish(gt.rep);
                        }
                        sgtts.UnionWith(u.gtData[gt].sgtts);
                    }
                    doneGTs.UnionWith(todoGTs);
                    todoGTs = new HashSet<GT>(
                        from gtt in sgtts
                        where gtt.gtT.All(doneGTs.Contains)
                        from gfa in u.gttData[gtt].sgfas.Values
                        let gt = gfa.gt
                        where !doneGTs.Contains(gt)
                        select gt);
                }
            }

        }*/
        private void calcGTStrings3()
        {
            var todo = new Queue<CFG.Node>();
            var done = new HashSet<CFG.Node>();
            todo.Enqueue(cfg.rootNode);
            while (todo.Any())
            {
                var n = todo.Dequeue();
                done.Add(n);
                var u = n.universe;
                foreach (var sn in n.successors)
                    if (!sn.predecessors.Except(done).Any())
                        todo.Enqueue(sn);
                var originalGFAs = getOriginalGFAs(n);
                var gtOriginalGFAs = new Dictionary<GT, ISet<GFA>>();
                foreach (var gfa in originalGFAs)
                    gtOriginalGFAs.add(gfa.gt, gfa);
                var todoGTs = new HashSet<GT>(from gfa in u.gttData[u.emptyGTT].sgfas.Values select gfa.gt);
                var doneGTs = new HashSet<GT>();
                while (todoGTs.Any())
                {
                    var sgtts = new HashSet<GTT>();
                    foreach (var gt in todoGTs)
                    {
                        if (!gtMap.ContainsKey(gt))
                        {
                            var repGFA = gt.rep;
                            Debug.Assert(repGFA.gtT.All(doneGTs.Contains));
                            if (gtOriginalGFAs.ContainsKey(gt) && !originalGFAs.Contains(gt.rep) && !isInterpretedConstant(repGFA.function))
                            {
                                var pgfas = from gfa in gtOriginalGFAs[gt]
                                            where gfa.height == repGFA.height
                                            where gfa.gtt.gtT.All(doneGTs.Contains)
                                            select gfa;
                                if (pgfas.Any())
                                    repGFA = pgfas.First();
                            }
                            /*                            string repS;
                                                        if (isBF(repGFA.function))
                                                        {
                                                            var e = cfg.srs.booleanFunctionToExpressionMap[repGFA.function];
                                                            repS = polish(simplify(u,e));
                                                        } else*/
                            /*                            var repF = repGFA.function;
                                                        if (isBF(repF) && repF.argumentTypes.Any())
                                                        {

                                                        } else*/
                            {
                                var repS = polish(u, repGFA);

                                gtMap[gt] = repS;
                            }
                        }
                        sgtts.UnionWith(u.gtData[gt].sgtts);
                    }
                    doneGTs.UnionWith(todoGTs);
                    todoGTs = new HashSet<GT>(
                        from gtt in sgtts
                        where gtt.gtT.All(doneGTs.Contains)
                        from gfa in u.gttData[gtt].sgfas.Values
                        let gt = gfa.gt
                        where !doneGTs.Contains(gt)
                        select gt);
                }
            }

        }

        private bool isBF(Function function)
        {
            return function.name.StartsWith(Slicer.booleanFunctionPrefix);
        }

        private void forwardNexts(
            CFG.Node n,
            Queue<CFG.Node> todo,
            ISet<CFG.Node> done)
        {
            if (n == null)
                todo.Enqueue(cfg.rootNode);
            else
                foreach (var sn in n.successors)
                    if (!sn.predecessors.Except(done).Any())
                        todo.Enqueue(sn);
        }
        private void backwardNexts(
            CFG.Node n,
            Queue<CFG.Node> todo,
            ISet<CFG.Node> done)
        {
            if (n == null)
                foreach (var g in cfg.goalNodes)
                    todo.Enqueue(g);
            else
                foreach (var pn in n.predecessors)
                    if (!pn.successors.Except(done).Any())
                        todo.Enqueue(pn);
        }

        private void iterate(Action<CFG.Node, Queue<CFG.Node>, ISet<CFG.Node>> calcNexts, Action<CFG.Node> nodeAct)
        {
            var todo = new Queue<CFG.Node>();
            var done = new HashSet<CFG.Node>();
            calcNexts(null, todo, done);
            while (todo.Any())
            {
                var n = todo.Dequeue();
                done.Add(n);
                nodeAct(n);
                calcNexts(n, todo, done);
            }
        }
        private ISet<string> rootNodeConjuncts = new HashSet<string>();
        private IDictionary<CFG.Node, ISet<string>> nodePreTRConjuncts = new Dictionary<CFG.Node, ISet<string>>();
        private IDictionary<CFG.Node, ISet<string>> nodePostTRConjuncts = new Dictionary<CFG.Node, ISet<string>>();
        //        private IDictionary<CFG.Node, ISet<string>> nodeConjuncts = new Dictionary<CFG.Node, ISet<string>>();
        private void calcNodeConjuncts()
        {
            iterate(forwardNexts, n =>
            {
                if (n == cfg.rootNode)
                {
                    rootNodeConjuncts = new HashSet<string>(allNodeConjuncts(n));
                    nodePostTRConjuncts[n] = new HashSet<string>();
                    nodePreTRConjuncts[n] = new HashSet<string>();
                    //                    nodeConjuncts[n] = new HashSet<string>(allNodeConjuncts(n));
                } else
                {
                    var ts = nodePreTRConjuncts[n] = FU.intersection(from pn in n.predecessors select nodePostTRConjuncts[pn]);
                    var ss = /*nodeConjuncts[n] =*/ new HashSet<string>(allNodeConjuncts(n).Except(ts).Except(rootNodeConjuncts));
                    nodePostTRConjuncts[n] = new HashSet<string>(ts.Union(ss));
                }
            });
        }

        private IEnumerable<string> allNodeConjuncts(CFG.Node n)
        {
            return allNodeConjunctsLazy(n);
        }
        private IEnumerable<string> allNodeConjunctsLazy(CFG.Node n)
        {
            var allSs = new List<string>(nodeConjunctsN(n));
            if (!n.isGoal)
            {
                allSs.AddRange(nodeConjunctsP(n));
                /*                allSs.AddRange(polishEquivalenceClasses4(n));
                                allSs.AddRange(polishOriginalUGCs(n));
                                if (dumpOriginalGCs)
                                    allSs.AddRange(polishGCs(n));*/
            }
            return new SortedSet<string>(allSs);
            /*                from ss in allSs
                            let s = getActual(ss)
                            where s != null
                            select s);*/
        }

        private IEnumerable<string> polishGCs(CFG.Node n)
        {
            if (!dumpAllGCs && !dumpOriginalGCs)
                return new string[0];
            return from gc in n.universe.allGCs
                   where (dumpAllGCs || (dumpOriginalGCs && n.universe.isOriginal(gc)))
                   select polish(gc);
        }
        private IEnumerable<string> polishOriginalUGCs(CFG.Node n)
        {
            return n.isGoal ? new string[0] : from gc in n.universe.originalGCs where gc.gls.Count == 1 select polish(gc);
        }

        private bool isInterpretedConstant(Function function)
        {
            return function.isConstant && function.isInterpreted;
        }

        /*private IDictionary<CFG.Node, ISet<string>> neededConstDefinitions = new Dictionary<CFG.Node, ISet<string>>();
private IDictionary<string, string> stringToConstMap = new Dictionary<string, string>();
private void calcGTStrings4()
{
   var nodeDefinedStrings = new Dictionary<CFG.Node, ISet<string>>();
   var todo = new Queue<CFG.Node>();
   var done = new HashSet<CFG.Node>();
   todo.Enqueue(cfg.rootNode);
   while (todo.Any())
   {
#region node progress
       var n = todo.Dequeue();
       done.Add(n);
       var u = n.universe;
       foreach (var sn in n.successors)
           if (!sn.predecessors.Except(done).Any())
               todo.Enqueue(sn);
#endregion
       nodeDefinedStrings[n] = FU.intersection(from pn in n.predecessors select nodeDefinedStrings[pn]);
       var todoGTs = new HashSet<GT>(from gfa in u.gttData[u.emptyGTT].sgfas.Values select gfa.gt);
       var doneGTs = new HashSet<GT>();
       while (todoGTs.Any())
       {
           var sgtts = new HashSet<GTT>();
           foreach (var gt in todoGTs)
           {
               if (!gtMap.ContainsKey(gt))
               {
                   var gfa = gt.rep;
                   Debug.Assert(gfa.gts.All(doneGTs.Contains));
                   var s = polish(gfa);
                   string cs;
                   if (gfa.gtt.Any())
                   {
                       if (!stringToConstMap.TryGetValue(s, out cs))
                       {
                           var c = cfg.srs.getFreshFunction("$gt", TypeTuple.make(), gfa.function.resultType);
                           cs = polish(c);
                           functions.Add(c);
                           stringToConstMap[s] = cs;
                       }
                       if (nodeDefinedStrings[n].Add(s))
                           neededConstDefinitions.add(n, s);
                   } else
                       cs = s;
                   gtMap[gt] = cs;
               }
               sgtts.UnionWith(u.gtData[gt].sgtts);
           }
           doneGTs.UnionWith(todoGTs);
           todoGTs = new HashSet<GT>(
               from gtt in sgtts
               where gtt.gtT.All(doneGTs.Contains)
               from gfa in u.gttData[gtt].sgfas.Values
               let gt = gfa.gt
               where !doneGTs.Contains(gt)
               select gt);
       }
   }
}*/
        /*private string calcGTString(GT gt)
        {
            string s;
            if (!gtMap.TryGetValue(gt, out s))
            {
                if (gt.height == 1)
                {
                    Debug.Assert(!gt.rep.gtt.Any());
                    var rep = gt.rep.function;
                    s = polish(rep);
                } else
                {
                    s = "$gt" + gt.index.ToString();// gtIndex.ToString();
                    dumpString(String.Format("(declare-fun {0} ( ) {1})", s, polish(gt.type)));
                }
                gtMap[gt] = s;
            }
            return s;

        }*/
        internal void addPolishEq(IList<string> l, GT gt0, GT gt1)
        {
            if (gt0 == gt1)
                return;
            addPolishEq("", polish(gt0), polish(gt1), "", (s) => l.Add(s));
        }
        internal void addPolishEq(IList<string> l, Universe u, GT gt0, GFA gfa1)
        {
            addPolishEq("", polish(gt0), polish(u, gfa1), "", (s) => l.Add(s));
        }
        internal void addPolishEq(IList<string> l, Universe u, GFA gfa0, GFA gfa1)
        {
            addPolishEq("", polish(u, gfa0), polish(u, gfa1), "", (s) => l.Add(s));
        }
        internal void addPolishEq(string pre, string s0, string s1, string post, Action<String> add)
        {
            if (s0.CompareTo(s1) == 0)
                return;
            add(pre + "(= " + s0 + " " + s1 + ")" + post);
        }
        internal string polish(GT gt)
        {
            return gtMap[gt];
        }

        internal string polish(FVT v, IDictionary<string, string> vm)
        {
            return vm[v.variable.name];
        }

        internal string polish(FFA fa, IDictionary<string, string> vm)
        {
            var result = polish(fa.function);
            if (fa.ftt.Count() > 0)
            {
                result = "(" + result;
                foreach (var a in fa.ftt)
                    result += " " + polish(a, vm);
                result += ")";
            }
            return result;
        }

        private string polish(Function function)
        {
            //            if (isBF(function) && function.argumentTypes.Any())
            //                Debugger.Break();
            Function f2;
            while (cfg.renameInverseMap.TryGetValue(function, out f2))
                function = f2;
            //            if (function.name == @"-2")
            //              Debugger.Break();
            addUsedFunction(function);
            return SMTLibDumperFormulae.polish(function);
        }
        private string polish(IPredicate predicate)
        {
            addUsedPredicate(predicate);
            return polishI(predicate);
        }
        private string polishI(IPredicate predicate)
        {
            return SMTLibDumperFormulae.polish(predicate);
        }

        private string polish(IType type)
        {
            return SMTLibDumperFormulae.polish(type);
        }

        public static ISet<string> orderingPredicates = new HashSet<string> { "<", "<=", ">", ">=" };

        private void addUsedFunction(Function f)
        {
            //            if (isBF(f) && f.argumentTypes.Any())
            //                Debugger.Break();
            addUsedType(f.resultType);
            if (f.isInterpreted || orderingPredicates.Contains(f.name))
                return;
            foreach (var t in f.argumentTypes)
                addUsedType(t);
            allUsedFunction.Add(f);
        }
        private void addUsedPredicate(IPredicate p)
        {
            foreach (var t in p.argumentTypes)
                addUsedType(t);
            if (p.isInterpreted || p.isITE)//name.StartsWith(@"if-then-else"))
                return;
            //            if (p.name.Contains(@"anon44@1"))
            //                Debugger.Break();
            if (p is Predicate)
                allUsedPredicates.Add(p as Predicate);
        }
        private void addUsedType(IType t)
        {
            allUsedTypes.Add(t);
            //            if (t is )
            //            foreach (var st in t.)
        }

        /*private void dumpCFGSpineForward()
        {
            foreach (var n in cfg.nodes)
            {
                if (!n.predecessors.Any())
                    continue;
                var an = nodeAtomMap[n];
                dumpClauseEC(an, from pn in n.predecessors select nodeAtomMap[pn]);

                //Branch shortcut join => branch
                if (n.predecessors.Count > 1)
                {
                    var bp = nodeAtomMap[findBranchPoint(n)];
                    dumpAtomEC(an, bp);
                }
            }
            dumpClauseEC(new[] { allAssertionsAtom });
        }*/

        /*private void dumpCFGSpineBackward()
        {
            var todo = new Queue<CFG.Node>();
            var done = new HashSet<CFG.Node>();
            todo.Enqueue(cfg.rootNode);
            while (todo.Any())
            {
                var n = todo.Dequeue();
                var nl = nodeAtomMap[n];
                //                if (n.predecessors.Count == 1 && n.predecessors.First() == cfg.rootNode)
                //                    dumpString(String.Format("(assert {0})", polish(nl)));
                if (n.successors.Any())
                    dumpClauseEC(nl, from sn in n.successors select nodeAtomMap[sn]);
                done.Add(n);
                foreach (var sn in n.successors)
                    if (!sn.predecessors.Except(done).Any())
                        todo.Enqueue(sn);
            }
            //Branch shortcut join => branch //TODO
            dumpClauseEC(new[] { allAssertionsAtom });
        }*/

        private CFG.Node findBranchPoint(CFG.Node osn)
        {
            var m = new Dictionary<CFG.Node, double>();
            var mp = new Dictionary<CFG.Node, double>();
            m[osn] = 1;
            mp[osn] = 1;
            var todo = new Queue<CFG.Node>();
            todo.Enqueue(osn);
            while (todo.Any())
            {
                var n = todo.Dequeue();
                var pns = n.predecessors;
                var r = mp[n];
                mp[n] = 0;
                if (pns.Count() == 1)
                {
                    var pn = pns.First();
                    if (!m.ContainsKey(pn))
                    {
                        m[pn] = 0;
                        Debug.Assert(!mp.ContainsKey(pn));
                        mp[pn] = 0;
                    }
                    m[pn] += r;
                    mp[pn] += r;
                    if (m[pn] == 1)
                        return pn;
                    if (!todo.Contains(pn))
                        todo.Enqueue(pn);
                } else if (pns.Count() > 1)
                {
                    foreach (var pn in pns)
                    {
                        if (!m.ContainsKey(pn))
                        {
                            m[pn] = 0;
                            Debug.Assert(!mp.ContainsKey(pn));
                            mp[pn] = 0;
                        }
                        if (pn != pns.Last())
                            r = r / 2;
                        m[pn] += r;
                        mp[pn] += r;
                        Debug.Assert(m[pn] < 1);
                        if (!todo.Contains(pn))
                            todo.Enqueue(pn);
                    }
                }
            }
            throw new Exception("Internal error in CFG structure");
        }
        private GL makeNullaryAtom(Predicate p)
        {
            Debug.Assert(!p.argumentTypes.Any());
            return new GL(new GAF(p, emptyTuple), true);
        }
        private GL makeNullaryAtom(Literal a)
        {
            Debug.Assert(a.f.isPredicateApplication);
            Debug.Assert(a.f.asPredicateApplication.args.Count() == 0);
            return new GAF(a.f.asPredicateApplication.predicate, emptyTuple).gLiteral(true);
        }
        private void dumpComment(string comment)
        {
            dumpString(String.Format(";{0}", comment));
        }

        private void makeNodeAtomMap()
        {
            foreach (var n in cfg.nodes)
                if (!n.isRefuted && (cfg.rootNode.universe == null || n.universe != null))
                {
                    nodeAtomMap[n] = polish(n.predicate); // makeNullaryAtom(n.predicate);
                    oPredicateToNodeMap[nodeAtomMap[n]] = n;
                    foreach (var p in n.compressedPredicates)
                        oPredicateToNodeMap[polish(p)] = n;
                }
        }
        private GL trueAtom;
        private GTT emptyTuple;
        private TermRepository termRepo;


        private void dumpString(string s)
        {
            file.WriteLine(s);
        }
        ISet<IType> allUsedTypes = new HashSet<IType>();
        ISet<Function> allUsedFunction = new HashSet<Function>();
        ISet<Predicate> allUsedPredicates = new HashSet<Predicate>();
        IDictionary<CFG.Node, string> nodeAtomMap = new Dictionary<CFG.Node, string>();
        IDictionary<string, CFG.Node> oPredicateToNodeMap = new Dictionary<string, CFG.Node>();


    }
}
