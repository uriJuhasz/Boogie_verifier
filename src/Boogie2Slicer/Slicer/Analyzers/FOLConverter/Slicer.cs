#region

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Numerics;

#endregion

namespace Slicer
{
    using Programs.Expressions;
    using Programs.Expressions.Basic;
    using Programs.Procedures;
    using Programs.Statements;
    using StateSpace.Functions;
    using StateSpace.Functions.Basic;
    using StateSpace.Types;
    using StateSpace.Values;
    using StateSpace.Variables;
    using StateSpace.Variables.Quantification;

    namespace Analyzers.FOLConverter
    {
        using Backends;
        using Clauses;
        using Contexts;
        using ControlFlowGraph;
        using Formulae;
        using Formulae2Clauses;
        using Function = Formulae.Function;
        using Predicate = Formulae.Predicate;
        using Variable = Formulae.Variable;
        using CanonicalForms;
        using GC = CanonicalForms.GC;
        using CanonicalForms.TermRepositoryNS;
        using Programs.Expressions.utilities;

        public class Slicer : ISRS
        {
            public static TextWriterTraceListener logListener = null;
            public static FileStream logFile = null;

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            public static readonly bool dumpFOL0 = true;
            public static readonly bool dumpCNF0 = true;
            public static readonly bool dumpCNFPre = false;
            public static readonly bool dumpSMTStart = true;
            public static readonly bool dumpSMTStart1 = true;
            public static readonly bool dumpSMTBuild = true;
            public static readonly bool dumpSMTRoundMR = false;
            public static readonly bool dumpSMTRound = false;
            public static readonly bool dumpSMToOrig = true;
            public static readonly bool dumpSMToFW = true;
            public static readonly bool dumpSMToFWOrig = false;
            public static readonly bool dumpSMToFWMRs = true;
            public static readonly bool dumpSMToFWFull = false;
            public static readonly bool dumpSMTEnd = false;
            //        private static readonly bool dumpPDF = false;
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //        private static int predicateIndex;
            private readonly List<IFormula> assertions = new List<IFormula>();
            private readonly List<IFormula> assumptions = new List<IFormula>();

            private readonly Dictionary<string, int> functionIndices = new Dictionary<string, int>();
            private readonly ISet<Predicate> goalPathConditions = new HashSet<Predicate>();
            private readonly Dictionary<string, Predicate> pathConditionMap = new Dictionary<string, Predicate>();
            private readonly ISet<Predicate> pathConditions = new HashSet<Predicate>();
            private readonly HashSet<string> stringMapWriteAxiomCache = new HashSet<string>();
            private readonly Dictionary<string, int> variableIndices = new Dictionary<string, int>();


            internal HashSet<Clause> goals = new HashSet<Clause>();

            public const int cLogLevel =
#if DEBUG
                2;
#else
                1;
#endif
            public const int dLogLevel = 99;
            public static void log(int level, string s, params object[] ps)
            {
                if (level >= cLogLevel)
                    return;
                var ss = string.Format(s, ps);
                if (level < cLogLevel)
                    Console.WriteLine(ss);
                if (level < dLogLevel)
                    Debug.WriteLine(ss);
            }
            public Slicer(Procedure p)
            {
#if DEBUG
                if (logListener == null)
                {
                    var fileNameBase = p.fileName;
                    var fileNameExt = ".slicer.log";
                    var fileName = fileNameBase + fileNameExt;
                    var i = 0;
                    while (File.Exists(fileName))
                    {
                        fileName = fileNameBase + "." + i.ToString() + fileNameExt;
                        i++;
                    }
                    logFile = File.Create(fileName);
                    logListener = new TextWriterTraceListener(logFile);
                    Debug.Listeners.Add(logListener);
                    Debug.AutoFlush = true;
                    Trace.AutoFlush = true;
                }
#endif
                procedure = p;
                currentClauseSet = new ClauseSet();
                predicateMap = new Dictionary<string, Predicate>();
                lVarMap = new Dictionary<string, LVar>();
                functionMap = new Dictionary<string, Function>();
                predicateMap[TruePredicate.get.name] = TruePredicate.get;
                trueFunction = addFunction("true", TypeTuple.make(), BooleanType.booleanType, true);
                falseFunction = addFunction("false", TypeTuple.make(), BooleanType.booleanType, true);
            }

            #region ISRS Members
            //            private readonly Function pTrueFunction;
            //            private readonly Function pFalseFunction;
            public Function trueFunction { get; private set; }
            public Function falseFunction { get; private set; }

            public ClauseSet currentClauseSet { get; private set; }

            public IDictionary<string, Dictionary<string, ITypeTuple>> mapReads { get; private set; }
            public Procedure procedure { get; private set; }

            public IDictionary<string, Predicate> predicateMap { get; private set; }
            public IDictionary<string, LVar> lVarMap { get; private set; }
            public IDictionary<string, Function> functionMap { get; private set; }
            public readonly IDictionary<StateSpace.Functions.Function, IOperator> ssFunctionMap = new Dictionary<StateSpace.Functions.Function, IOperator>();
            public readonly IDictionary<ProgramVariable, IOperator> ssProgramVariableMap = new Dictionary<StateSpace.Variables.ProgramVariable, IOperator>();

            private readonly IDictionary<string, int> predicateIndexMap = new Dictionary<string, int>();

            public Predicate getFreshPredicate(string baseName, ITypeTuple argTypes)
            {
                var name = baseName;
                int predicateIndex;
                if (!predicateIndexMap.TryGetValue(baseName, out predicateIndex))
                    predicateIndexMap[baseName] = predicateIndex = 1;
                while (predicateMap.ContainsKey(name) || functionMap.ContainsKey(name))
                {
                    name = baseName + "@" + predicateIndex;
                    predicateIndex++;
                }
                predicateIndexMap[baseName] = predicateIndex;
                return addPredicate(name, argTypes, false);
            }

            public Function getFreshFunction(string baseName, ITypeTuple argTypes, IType resultType)
            {
                int index;
                if (!functionIndices.TryGetValue(baseName, out index))
                    functionIndices[baseName] = index = 1;
                var name = baseName;
                while (predicateMap.ContainsKey(name) || functionMap.ContainsKey(name))
                {
                    name = baseName + "_" + index;
                    index++;
                }
                functionIndices[baseName] = index;
                return addFunction(name, argTypes, resultType, false);
            }

            public LVar getFreshVariable(LVar variable)
            {
                return getFreshVariable(variable.baseName, variable.type);
            }

            public LVar getFreshVariable(string baseName, IType type)
            {
                int index;
                if (!variableIndices.TryGetValue(baseName, out index))
                    variableIndices[baseName] = index = 1;

                var name = baseName;
                while (lVarMap.ContainsKey(name))
                {
                    name = baseName + "_" + index;
                    index++;
                }
                variableIndices[baseName] = index;
                var result = new LVar(name, type, baseName);
                lVarMap[name] = result;
                return result;
            }

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            public Function getFunction(ProgramVariable programVariable)
            {
                var name = normalizeName(programVariable.name);
                return addFunction(name, TypeTuple.make(), programVariable.type, false);
            }
            public Function tryGetFunction(ProgramVariable programVariable)
            {
                var name = normalizeName(programVariable.name);
                Function f;
                if (functionMap.TryGetValue(name, out f))
                    return f;
                return null;
            }

            private IDictionary<BigInteger, Function> numberMap = new Dictionary<BigInteger, Function>();
            private IDictionary<Function, BigInteger> numberInverseMap = new Dictionary<Function, BigInteger>();
            private ISet<Function> iteFunctions = new HashSet<Function>();
            public Function getFunction(BigInteger i)
            {
                return getFunction(IntegerValue.make(i));
            }
            public Function getFunction(Value value)
            {
                var result = addFunction(value.ToString(), TypeTuple.make(), value.type, true);
                if (value is IntegerValue)
                {
                    var i = value as IntegerValue;
                    numberMap[i.value] = result;
                    numberInverseMap[result] = i.value;
                }
                return result;
            }

            public Predicate getPredicate(BooleanValue value)
            {
                var name = normalizeName(value.value.ToString());
                return addPredicate(name, TypeTuple.make(), true);
            }


            public IEnumerable<LVar> getFreshVariables(IEnumerable<LVar> fvs)
            {
                return from fv in fvs select getFreshVariable(fv);
            }

            public Clause refreshVariables(Clause c)
            {
                if (!c.freeVariables.Any())
                    return c;
                var fvs = c.freeVariables.ToList();
                var nfvs = (from fv in fvs select new Variable(getFreshVariable(fv))).ToList<ITerm>();
                var s = new Substitution(fvs, nfvs);
                return c.substitute(s);
            }

            #endregion

            public static ISet<string> interpretedPredicateNames = new HashSet<string> { "<", "true", "false", "<=", "==", "=", ">", ">=" };
            public static bool isInterpretedPredicateName(string name)
            {
                return interpretedPredicateNames.Contains(name);
            }
            public static bool isInterpreted(Predicate predicate)
            {
                return isInterpretedPredicateName(predicate.name);
            }
            public bool isLessThan(IPredicate predicate)
            {
                return
                    predicate.name == "<"
                    ;
            }

            public static bool isInterpreted(Function function)
            {
                return isInterpretedFunctionName(function.name);
            }

            public static void slice(Procedure p)
            {
                resetIndices();
                var srs = new Slicer(p);
                srs.slice();
                resetIndices();
            }

            private static void resetIndices()
            {
#if DEBUG
                GT.resetIndex();
                GTT.resetIndex();
                GAF.resetIndex();
                CL.resetIndex();
                GL.resetIndex();
                GC.resetIndex();

                FVT.resetIndex();
                FTT.resetIndex();
                FFA.resetIndex();
                FAF.resetIndex();
                FC.resetIndex();
                CFG.Node.clean();
                Function.clearIndex();
#endif
                Universe.clean();
                SU.clean();
                JU.clean();

            }

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            public HistoryRecorder hr;
            private void slice()
            {
                log(2, "***Knobs: {0}", Universe.knobString);
                Console.WriteLine();

                if (procedure.blocks.All(bb => bb.statements.All(s => !s.isAssertion)))
                {
                    log(0, "***No assertions - exiting");
                    return;
                }

                hr = new HistoryRecorder();

                var analysisSW = new Stopwatch();
                analysisSW.Start();

                preprocessClauses(this, hr);
                if (!assertions.Any())
                {
                    Slicer.log(0, "***No goals - exiting");
                    return;
                }

                var cfg = extractCFG(this, hr, pathConditions, goalPathConditions, new HashSet<Clause>(currentClauseSet.clauses), goals);

                var initialNodes = cfg.nodes.Count;
                var initialGoals = cfg.goalNodes.Count;

                Universe.currentRound = 0;
                buildCFG(cfg);
                dumpIf(cfg, "build", dumpSMTBuild);
                Universe.currentRound++;

                #region main loop
                //                var sats = 0;
                while (cfg.goalNodes.Count > 0 && Universe.currentRound < Universe.numSaturationRounds)
                {
                    //                    equalitiesAndClean(cfg);
                    if (cfg.goalNodes.Count == 0)
                        break;
                    if (Universe.satMRsKnob)
                    {
                        saturateCFGMaps(cfg);
                        dumpIf(cfg, "round_" + Universe.currentRound.ToString() + "_MR", dumpSMTRoundMR);
                    }
                    if (cfg.goalNodes.Count == 0)
                        break;
                    //                    equalitiesAndClean(cfg);
                    if (cfg.goalNodes.Count == 0)
                        break;
                    {
                        saturateCFG(cfg);
                        dumpIf(cfg, "round_" + Universe.currentRound.ToString() + (Universe.isSPPass ? "_SP" : "_IN"), dumpSMTRound);
                    }
                    if (cfg.goalNodes.Count == 0)
                        break;
                    Universe.currentRound++;
                }
                #endregion main loop

                #region final cleanup
                if (cfg.goalNodes.Count > 0 && cfg.rootNode.universe != null)
                {
                    saturateEqualities(cfg, true);
                    //                    cleanUpCFG(cfg);
                }
                #endregion
                analysisSW.Stop();

                #region dump map data
                //                dumpMapData(cfg);
                #endregion

                #region stats
                var finalNodes = cfg.nodes.Count;
                var finalGoals = cfg.goalNodes.Count;

                Slicer.log(0, "***Analysis done - time: [{0,6}s] - proven {1} goals", analysisSW.ElapsedMilliseconds / 1000, initialGoals - finalGoals);
                Slicer.log(0, "Still {0}/{1} goals and {2}/{3} nodes", finalGoals, initialGoals, finalNodes, initialNodes);
                Slicer.log(2, "***Knobs: {0}", Universe.knobString);
#if DEBUG
                dumpAll(cfg);
#endif
                Console.WriteLine();
                #endregion

                #region dump
                //                dumpPost1(cfg);
                dumpIf(cfg, "end", dumpSMTEnd);
                #endregion
                //                Debugger.Break();
            }

            private static void equalitiesAndClean(CFG cfg)
            {
                var i = Universe.numMergeRounds;
                while (cfg.goalNodes.Count > 0 && i > 0)
                {
                    i--;
                    saturateEqualities(cfg, false);
                    if (cfg.goalNodes.Count == 0)
                        break;
                    cleanUpCFG(cfg);
                    cutCrap(cfg);
                    saturateEqualities(cfg, true);
                    if (cfg.goalNodes.Count == 0)
                        break;
                    cleanUpCFG(cfg);
                    cutCrap(cfg);
                }
            }

            private static void dumpAll(CFG cfg)
            {
                var dumpAllInLog = false;
                if (dumpAllInLog && cfg.goalNodes.Any())
                {
                    Debug.WriteLine("EX1: Start");
                    var tr = cfg.termRepository;
                    foreach (var n in cfg.nodes)
                        if (n.isValid)
                        {
                            Debug.WriteLine("EX1:{2} {0,3} at {1}", n.universe.index, n.ToString(), n.isGoal ? "Goal" : "Node");
                            var u = n.universe;
                            foreach (var gt in u.allGTs)
                            {
                                var minGFAi = tr.getGTMinGFAi(gt);
                                Debug.WriteLine("EX1:{0}.GT:{1}: orig:{2} new:{3}", n.universe.index, gt.gfas[minGFAi].ToStringB(), u.isOriginal(gt) ? "T" : "F", u.isNew(gt) ? "T" : "F");
                                for (var i = 0; i < gt.gfas.Length; i++)
                                    if (i != minGFAi)
                                        Debug.WriteLine("EX1:{0}.GTE: {1} = {2}", n.universe.index, gt.gfas[i].ToStringB(), gt.gfas[minGFAi].ToStringB());
                                foreach (var gt2 in u.getGTDisequalities(gt))
                                    if (tr.compare(gt, gt2) == -1)
                                    {
                                        var m2 = tr.getGTMinGFAi(gt2);
                                        Debug.WriteLine("EX1:{0}.GDE: {1} != {2}", n.universe.index, gt.gfas[minGFAi].ToStringB(), gt2.gfas[m2].ToStringB());
                                    }
                            }
                            foreach (var gc in u.assumedGCs)
                            {
                                Debug.WriteLine("EX1:{0}.GC:{1} orig:{2}", n.universe.index, gc.ToStringB(), u.isOriginal(gc) ? "T" : "F");
                            }
                            foreach (var fc in u.assumedFCs)
                            {
                                Debug.WriteLine("EX1:{0}.FC:{1} orig:{2}", n.universe.index, fc.ToStringB(), u.isOriginal(fc) ? "T" : "F", u.isImported(fc) ? "I" : "-", fc.ToStringB());
                            }
                        }
                }
            }

            private void dumpIf(CFG cfg, string stage, bool cond)
            {
                if (cfg.goalNodes.Any() && cond)
                {
                    main.SemanticSlicer.totalSW.Stop();
                    log(3, "Dumping " + stage + " smtlib");
                    cfg.SMTDumpEC(stage, expressionByPathCondition, formulaeByPathCondition);
                    if (dumpSMToOrig) cfg.SMTDumpEC(stage + ".orig", expressionByPathCondition, formulaeByPathCondition, SMTLibDumperEC.soOrig);
                    if (dumpSMToFW) cfg.SMTDumpEC(stage + ".fw", expressionByPathCondition, formulaeByPathCondition, SMTLibDumperEC.soFw);
                    if (dumpSMToFWOrig) cfg.SMTDumpEC(stage + ".fw.orig", expressionByPathCondition, formulaeByPathCondition, SMTLibDumperEC.soFwOrig);
                    if (dumpSMToFWMRs) cfg.SMTDumpEC(stage + ".mrs", expressionByPathCondition, formulaeByPathCondition, SMTLibDumperEC.soFwMRs);
                    if (dumpSMToFWFull) cfg.SMTDumpEC(stage + ".full", expressionByPathCondition, formulaeByPathCondition, SMTLibDumperEC.soFwFull);
                    main.SemanticSlicer.totalSW.Start();
                }
            }

            private void dumpMapData(CFG cfg)
            {
                tr = cfg.termRepository;
#if DEBUG
                hdWrite("Start");
                var todo = new Queue<CFG.Node>();
                todo.Enqueue(cfg.rootNode);
                var done = new HashSet<CFG.Node>();
                while (todo.Any())
                {
                #region progress
                    var n = todo.Dequeue();
                    done.Add(n);
                    foreach (var sn in n.successors)
                        if (!sn.predecessors.Except(done).Any())
                            todo.Enqueue(sn);
                #endregion

                    var u = n.universe;
                    if (n.isRefuted)
                        continue;
                    hdWrite("[{0}] {1}", n.isGoal ? "G" : "N", n.predicate.name);
                    hdWrite("preds[{0}] = {1}", n.predicate.name, n.predecessors.Aggregate("", (s, pn) => s + (s == "" ? "" : ",") + pn.predicate.name));
                    hdWrite("succs[{0}] = {1}", n.predicate.name, n.successors.Aggregate("", (s, sn) => s + (s == "" ? "" : ",") + sn.predicate.name));
                    hdWrite("u[{0}] {1}", n.isGoal ? "G" : "N", n.universe);
                    hdWrite("upreds[{0}] = {1}", u.index, n.predecessors.Aggregate("", (s, pn) => s + (s == "" ? "" : ",") + pn.universe.index));
                    hdWrite("usuccs[{0}] = {1}", u.index, n.successors.Aggregate("", (s, sn) => s + (s == "" ? "" : ",") + sn.universe.index));

                #region node initial map
                    var ims = nodeInitialMaps[n] = new HashSet<GT>();
/*                    if (!u.predecessors.Any())
                        nodeInitialMaps[n].UnionWith(
                            from gt in u.allGTs
                            where gt.type.isMapType
                            select gt);
                    else*/
                    ims.UnionWith(
                        from gt in u.allGTs
                        where gt.type.isMapType
                        where u.pis.All(pi => nodeInitialMaps[cfg.universeToNodeMap[u.pus[pi]]].Intersect(u.getGTPGTs(pi, gt)).Any())
                        select gt);
                    while (true){
                        var delta =
                            from gt in u.allGTs
                            where gt.type.isMapType
                            where !ims.Contains(gt)
                            where gt.gfas.Any(gfa => gfa.function.isMapRead && ims.Contains(gfa.gtT[0]))
                            select gt;
                        if (!delta.Any())
                            break;
                        ims.UnionWith(delta);
                    };
                #endregion

                    /*                        hdWrite("   MRInitialMaps[{0}]", u.index);
                                            foreach (var gt in nodeInitialMaps[n])
                                                hdWrite("      {0}", gt.ToStringB());
                                                */
                    var unresolvedMRGTs = new List<GT>(from gt in u.allGTs where isUnresolvedMR(n, gt) select gt);
                    var gtRewriteSets = new Dictionary<GT, ISet<HHSet<GT>>>();
                    foreach (var gt in unresolvedMRGTs)
                    {
                        var eqGCs = u.getGTEqGCs(gt);
                        var rgcs =
                            from gc in eqGCs
                            let gli = cfg.termRepository.gcMaximalGL(gc)
                            let gl = gc.gls[gli]
                            where (isEqGL(gl, gt))
                            let ogt = getOGT(gl, gt)
                            //                                let c = cfg.termRepository.compare(gt, ogt)
                            //                                where (c == 1 && !unresolvedMRGTs.Contains(ogt)) || (c == -1 && unresolvedMRGTs.Contains(ogt))
                            select gc;
                        gtRewriteSets[gt] = getRWSs(rgcs, gt);
                    }
                    foreach (var kv in gtRewriteSets)
                    {
                        var gt = kv.Key;
                        var rwss = kv.Value;
                        Debug.Assert(rwss.All(s => s.Any()));
//                        if (!rwss.Any(s => s.All(gt0 => isMRGTResolved(n,gt0))))//minGFA(gt0).function.isMapRead)))
//                            Debugger.Break();
                    }
                    if (u.pus.Any())
                    {
                        var yetUnresolved = new HashSet<GT>(
                            from gt in unresolvedMRGTs
                            where !gtRewriteSets[gt].Any(s => s.IsSubsetOf(unresolvedMRGTs))
                            select gt
                            );
                        var updated = true;
                        while (updated)
                        {
                            updated = false;
                            foreach (var gt in yetUnresolved.ToList())
                                if (gtRewriteSets[gt].Any(s => !s.Intersect(yetUnresolved).Any()))
                                {
                                    yetUnresolved.Remove(gt);
                                    updated = true;
                                }
                        }

                        /*                            var yur2 = new List<GT>(
                                                        from gt in yetUnresolved
                                                        where u.pis.Any(pi=>!u.getGTPGTs())
                                                        */

                        foreach (var gt in yetUnresolved)
                        {
                            //                                var minGFAi = cfg.termRepository.getGTMinGFAi(gt);
                            //                                var minGFA = gt.gfas[minGFAi];
                            //                                var gt2 = (minGFA.function.isMapRead) ? minGFA.gtT[0] : null;
                            /*                                if (gt.gfas.Any(gfa=>gfa.function.isMapRead 
                                                                && nodeInitialMaps[n].Contains(gfa.gtT[0])))
                                                                hdWrite("   MRDeadEndI:{1} {0}", gt, u.isInstSat(gt) ? "S" : "N");
                                                            else*/
                            if (gt.gfas.Any(gfa => gfa.function.isMapRead
                             && gfa.gtT[0].gfas.Any(gfa2 => gfa2.function.isMapRead || gfa2.function.isMapWrite)))
                                hdWrite("   MRDeadEndR:{1} {0}", gt, u.isInstSat(gt) ? "S" : "N");
                            else
                                hdWrite("   MRDeadEnd:{1} {0}", gt, u.isInstSat(gt) ? "S" : "N");

                        }
                        foreach (var gt in u.allGTs.Except(yetUnresolved))
                        {
                            var mrGFAs = from gfa in gt.gfas where gfa.function.isMapRead select gfa;
                        }

                    }
                    foreach (var gt in u.allGTs)
                    {
                        {
                            var mrGFAs = new List<GFA>(from gfa in gt.gfas where gfa.function.isMapRead select gfa);
                            if (gt.gfas.Length > 1 && mrGFAs.Any())
                            {
                                foreach (var gfa in gt.gfas)
                                    if (u.isNewEq(gfa, gt.rep))
                                        hdWrite("   MREq: {0} = {1}", gt.rep.ToStringB(), gfa.ToStringB());
                                var gtEqGCs = u.getGTEqGCs(gt);
                                foreach (var gc in gtEqGCs)
                                {
                                    foreach (var gl in gc.gls)
                                        if (gl.isEQOrDE && gl.polarity && gl.gtT.Contains(gt))
                                        {
                                            var ogt = gl.gtT[gl.gtT[0] == gt ? 1 : 0];
                                            hdWrite("   MREqGC: {0}={1} <= ({2})", gt, ogt,
                                                gc.gls.Aggregate("",
                                                    (s, l) => s +
                                                        ((l == gl) ? "" : ((s == "" ? "" : (@" /\ ")) + l.ToStringB()))));
                                        }
                                }

                                if (
                                    u.pus.Any()
                                    && u.pis.Any(pi => !u.getGTPGTs(pi, gt).Any())
                                    && gt.gfas.Length == mrGFAs.Count
                                    )
                                {
                                    var pec = new HashSet<GT>(
                                        from gc in gtEqGCs
                                        from gl in gc.gls
                                        where gl.isEQOrDE && gl.polarity && gl.gtt.Contains(gt)
                                        let peq = gl.gtT[gl.gtT[0] == gt ? 1 : 0]
                                        select peq
                                        );
                                    pec.Add(gt);
                                    //little DPLL
                                    {
                                        /*var relevantGCs = new List<GC>(
                                            from gc in gtEqGCs
                                            let gli = cfg.termRepository.gcMaximalGL(gc)
                                            let gl = gc.gls[gli]
                                            where (gl.isEQOrDE && gl.polarity && gl.gtT.Contains(gt))
                                            let gti = (gl.gtT[0] == gt) ? 0 : 1
                                            let ogt = gl.gtT[1 - gti]
//                                                where cfg.termRepository.compare(gt, ogt) == -1
                                            select gc);

/*                                            var gafs = new HashSet<GAF>(
                                            from gc in relevantGCs
                                            let gli = cfg.termRepository.gcMaximalGL(gc)
                                            from gl in gc.gls.Except(gc.gls[gli])
                                            select gl.gaf);*/

                                    }
                                    //                                        var rewriteSets = gtRewriteSets[gt];
                                    if (unresolvedMRGTs.Contains(gt))// u.pis.Any(pi => !pec.Any(gt2=>u.getGTPGTs(pi, gt2).Any()))
                                                                     //                                            && pec.All(gt2=>gt2.gfas.All(gfa=>gfa.function.isMapRead && !nodeInitialMaps[n].Contains(gfa.gtT[0])))
                                                                     //                                            )
                                                                     //                                        else
                                        hdWrite("   MRDeadEndU:{1} {0}", gt, u.isInstSat(gt) ? "S" : "N");
                                }


                                /*                                    hdWrite("   MRGT:{0}", gt.ToStringB());
                                                                    foreach (var gfa in gt.gfas)
                                                                        if (gfa != gt.rep)
                                                                            hdWrite("      {0}", gfa.ToStringB());*/
                            }
                        }
                        {
                            var mapGFAs = from gfa in gt.gfas where gfa.function.resultType.isMapType select gfa;
                            if (gt.gfas.Length > 1 && mapGFAs.Any())
                            {
                                if (!nodeInitialMaps[n].Contains(gt)
                                    && !gt.gfas.Any(gfa => gfa.function.isMapWrite || gfa.function.isMapRead)
                                    && u.pis.Any(pi => !u.getGTPGTs(pi, gt).Any()))
                                    hdWrite("   MapDeadEnd: {0}", gt);
                                foreach (var gfa in gt.gfas)
                                    if (u.isNewEq(gfa, gt.rep))
                                        hdWrite("   MapEq: {0} = {1}", gt.rep.ToStringB(), gfa.ToStringB());
                                /*                                    hdWrite("   MapGT:{0}", gt.ToStringB());
                                                                    foreach (var gfa in gt.gfas)
                                                                        if (gfa != gt.rep)
                                                                            hdWrite("      {0}", gfa.ToStringB());*/
                            }
                        }
                    }
                }
                hdWrite("End");

#endif
            }

            private bool isMRGTResolved(CFG.Node n, GT gt)
            {
                var gfa = minGFA(gt);
                return !gfa.function.isMapRead || nodeInitialMaps[n].Contains(gfa.gtT[0]);
            }
            TermRepository tr;
            private GFA minGFA(GT gt)
            {
                return gt.gfas[tr.getGTMinGFAi(gt)];
            }

            class HHSet<T> : SortedSet<T> where T : NormalizedStringElement
            {
                private string stringN;
                public HHSet(IEnumerable<T> vs)
                    : base(vs)
                {
                    stringN = this.Aggregate("[", (s, x) => s + "|" + x.ToStringN()) + "]";
                }
                public override bool Equals(object obj)
                {
                    var o = obj as HHSet<T>;
                    return o != null && o.stringN == stringN;
                }
                public override int GetHashCode()
                {
                    return stringN.GetHashCode();
                }

            }

            private ISet<HHSet<GT>> getRWSs(IEnumerable<GC> gcs, GT gt)
            {
                var hsets = new HashSet<HHSet<GL>>(from gc in gcs select new HHSet<GL>(gc.gls));
                return getRWSs(hsets, gt);
            }

            private bool isEqGL(GL gl, GT gt)
            {
                return gl.isEQOrDE && gl.polarity && gl.gtT.Contains(gt);
            }
            private GT getOGT(GL gl, GT gt)
            {
                return gl.gtT[gt == gl.gtT[0] ? 1 : 0];
            }
            private ISet<HHSet<GT>> getRWSs(ISet<HHSet<GL>> ogcs, GT gt)
            {
                var gcs = new HashSet<HHSet<GL>>(ogcs);
                var gafMap = new SortedDictionary<GAF, IDictionary<bool, ISet<HHSet<GL>>>>();
                foreach (var ogc in ogcs)
                    indexGAFMap(gt, gafMap, ogc);

                var conflicts = new HashSet<HHSet<GL>>();
                while (gafMap.Any())
                {
                    foreach (var gc in gcs.ToList())
                        if (gc.All(gl => isEqGL(gl, gt)))
                        {
                            conflicts.Add(gc);
                            gcs.Remove(gc);
                        }
                    if (!gcs.Any())
                        break;
                    pureElimination(gafMap, gcs, gt);
                    if (!gcs.Any())
                        break;
                    var dgaf = gafMap.Keys.First();
                    Debug.Assert(gafMap[dgaf][true].Any() && gafMap[dgaf][false].Any());
                    var gcps = gafMap[dgaf][true].ToList();
                    var gcns = gafMap[dgaf][false].ToList();
                    foreach (var gc in gcps.Union(gcns))
                        foreach (var gl in gc)
                            if (!isEqGL(gl, gt))
                                gafMap.remove(gl.gaf, gl.polarity, gc);
                    foreach (var gcp in gcps)
                        foreach (var gcn in gcns)
                        {
                            var gcpt = gcp.Except(dgaf.gLiteral(true));
                            var gcnt = gcn.Except(dgaf.gLiteral(false));
                            if (!gcpt.Any(l => gcnt.Contains(l.gNegate)))
                            {
                                var ngc = new HHSet<GL>(gcpt.Union(gcnt));
                                if (ngc.All(gl => isEqGL(gl, gt)))
                                    conflicts.Add(ngc);
                                else
                                    indexGAFMap(gt, gafMap, ngc);
                            }
                        }
                }
                return new HashSet<HHSet<GT>>(from c in conflicts select new HHSet<GT>(from gl in c select getOGT(gl, gt)));
            }

            private void indexGAFMap(GT gt, SortedDictionary<GAF, IDictionary<bool, ISet<HHSet<GL>>>> gafMap, HHSet<GL> ogc)
            {
                foreach (var gl in ogc)
                    if (!isEqGL(gl, gt))
                        gafMap.insert(gl.gaf, gl.polarity, ogc);
            }

            private void pureElimination(SortedDictionary<GAF, IDictionary<bool, ISet<HHSet<GL>>>> gafMap, ISet<HHSet<GL>> gcs, GT gt)
            {
                var todo = new HashSet<GAF>(from kv in gafMap where kv.Value.Keys.Count < 2 select kv.Key);
                while (todo.Any())
                {
                    var next = new HashSet<GAF>();
                    foreach (var gaf in todo)
                        if (gafMap.ContainsKey(gaf))
                        {
                            Debug.Assert(gafMap[gaf].Keys.Count < 2);
                            foreach (var kv in gafMap[gaf].ToList())
                                foreach (var ogc in kv.Value.ToList())
                                {
                                    gcs.Remove(ogc);
                                    foreach (var gl in ogc)
                                        if (gafMap.ContainsKey(gl.gaf))
                                            if (!isEqGL(gl, gt))
                                            {
                                                gafMap.remove(gl.gaf, gl.polarity, ogc);
                                                if (!gafMap.ContainsKey(gl.gaf) || gafMap[gl.gaf].Keys.Count < 2)
                                                    next.Add(gl.gaf);
                                            }
                                }
                        }
                    todo = next;
                }
            }


            IDictionary<CFG.Node, ISet<GT>> nodeInitialMaps = new Dictionary<CFG.Node, ISet<GT>>();
            private bool isUnresolvedMR(CFG.Node n, GT gt)
            {
                //                var minGFAi = cfg.termRepository.getGTMinGFAi(gt);
                var gfa = minGFA(gt);
                return gfa.function.isMapRead && !nodeInitialMaps[n].Contains(gfa.gtT[0]);
                //                    minGFA(gt).fun gt.gfas.All(gfa => gfa.function.isMapRead && !nodeInitialMaps[n].Contains(gfa.gtT[0]));
            }

            const string hdPrefix = "HD:";
            public static void hdWrite(string s, params object[] args)
            {
                Debug.WriteLine(hdPrefix + String.Format(s, args));
            }
            sealed class ExtractCFGRound : Round
            {
                public ExtractCFGRound(HistoryRecorder hr, Slicer slicer, ISet<Predicate> pathConditions, ISet<Predicate> goalPathConditions, ISet<Clause> clauses, ISet<Clause> goals)
                    : base(hr, "Extracting CFG", "EC")
                {
                    this.slicer = slicer;
                    this.pathConditions = pathConditions;
                    this.goalPathConditions = goalPathConditions;
                    this.clauses = clauses;
                    this.goals = goals;
                }
                public readonly Slicer slicer;
                public CFG cfg;

                protected override void pre()
                {
                    preNodes = pathConditions.Count;
                    preGoals = goalPathConditions.Count;
                    preClauses = slicer.currentClauseSet.numClauses;
                    preAtoms = slicer.currentClauseSet.numAtoms;
                    base.pre();
                }
                protected override void post()
                {
                    postNodes = cfg.nodes.Count;
                    postGoals = cfg.goalNodes.Count;
                    cfg.getClauseAndAtomCounts(out postClauses, out postAtoms);
                    base.post();
                }
                protected override void doWork()
                {
                    cfg = CFG.preprocess(hr, slicer, pathConditions, goalPathConditions, clauses, goals);
                }
                ISet<Predicate> pathConditions;
                ISet<Predicate> goalPathConditions;
                ISet<Clause> clauses;
                ISet<Clause> goals;
            }
            private CFG extractCFG(Slicer slicer, HistoryRecorder hr, ISet<Predicate> pathConditions, ISet<Predicate> goalPathConditions, HashSet<Clause> clauses, HashSet<Clause> goals)
            {
                var r = new ExtractCFGRound(hr, slicer, pathConditions, goalPathConditions, clauses, goals);
                r.run();
                return r.cfg;
            }

            private static void preprocessClauses(Slicer slicer, HistoryRecorder hr)
            {
                var r = new PPClausesRound(slicer, hr);
                r.run();
            }
            public sealed class PPClausesRound : Round
            {
                public PPClausesRound(Slicer slicer, HistoryRecorder hr)
                    : base(hr, "Preprocessing clauses", "PC")
                {
                    this.slicer = slicer;
                }
                public readonly Slicer slicer;

                protected override void doWork()
                {
                    slicer.doClausePreprocessNet();
                }
                private int countAtoms(Expression e)
                {
                    return 1 + (from se in e.subExpressions select countAtoms(se)).Sum();
                }
                protected override void pre()
                {
                    var numBBs = slicer.procedure.blocks.Count;
                    var numAssertions = slicer.procedure.blocks.Sum(bb => bb.statements.Sum(s => (s.statement is Assert) ? 1 : 0));
                    var numStatements = slicer.procedure.blocks.Sum(bb => bb.statements.Sum(s => 1));
                    preNodes = numBBs + 2 * numAssertions;
                    preGoals = numAssertions;
                    preClauses = numAssertions + numStatements;
                    //fcuk
                    preAtoms = slicer.procedure.blocks.Sum(bb => bb.statements.Sum(s => (s.statement is PredicateStatement) ? countAtoms((s.statement as PredicateStatement).expression) : 0));
                    //                    Slicer.log(0,"***Processing clauses: goals/nodes {0}/{1} - assertions/statements {2}/{3}", preGoals, preNodes, numAssertions, numStatements);
                    base.pre();
                }
                protected override void post()
                {
                    postGoals = preGoals;
                    postNodes = preNodes;
                    postClauses = slicer.currentClauseSet.numClauses;
                    postAtoms = slicer.currentClauseSet.numAtoms;
                    base.post();
                }
            }//class PPClausesRound
            public void doClausePreprocessNet()
            {
                //preprocess
                FOLConvert();
                if (assertions.Count == 0)
                    return;
                //                dumpFOLIf("FOL.0", dumpFOL0);

                CNFConvert();
                dumpCNFIf("CNF.0", dumpCNF0);
                addMathAxioms();

                //                if (dumpCNFPre)
                //                    dump(null, "pre");

                //                dumpCNFIf("CNF.1", dumpCNF1);
                optimizeClauseSet();
                //                dumpCNFIf("CNF.2", dumpCNF2);
            }

            private void dumpCNFIf(string v, bool dumpCNF0)
            {
                return; // throw new NotImplementedException();
            }

            private void dumpFOLIf(string v, bool dumpFOL0)
            {
                throw new NotImplementedException();
            }

            public abstract class Round
            {
                public Round(HistoryRecorder hr, string str, string name)
                {
                    this.str = str;
                    this.name = name;
                    this.hr = hr;
                }
                public readonly string str;
                public readonly string name;
                public readonly Stopwatch sw = new Stopwatch();
                public readonly HistoryRecorder hr;
                public int postGoals;
                public int preGoals;
                public int preNodes;
                public int postNodes;
                public int preClauses = -1;
                public int preAtoms = -1;
                public int postClauses = -1;
                public int postAtoms = -1;

                protected abstract void doWork();

                private static string clauseString(int ncs, int nas)
                {
                    return ncs == -1 ? "" : String.Format("  c/a {0,5}/{1,6}", ncs, nas);
                }
                protected virtual void pre()
                {
                    log(0, "");
                    var clauseS = clauseString(preClauses, preAtoms);
                    log(0, "***{0,-30}[{1}] start  - g/n {2,3}/{3,4}{4}", str, Universe.currentRound, preGoals, preNodes, clauseS);
                }
                protected virtual void post()
                {
                    var clauseS = clauseString(postClauses, postAtoms);
                    log(0, "***{0,-30}[{1}] end    - g/n {2,3}/{3,4}{4} - proved {5,3} - time [{6,6}s]/[{7,6}s]",
                        str, Universe.currentRound, postGoals, postNodes, clauseS, preGoals - postGoals, sw.ElapsedMilliseconds / 1000, main.SemanticSlicer.totalSW.ElapsedMilliseconds / 1000);
                    hr.recordGoalHistory(sw.ElapsedMilliseconds, postGoals, name);
                    hr.printHistoryString();
                    if (postGoals == 0)
                        log(0, "!!!!!!!!!!!!!!!!!!!!!!!!!Refuted!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
                }
                protected virtual bool skip { get { return false; } }
                public void run()
                {
                    if (!skip)
                    {
                        sw.Reset();
                        sw.Start();
                        pre();
                        sw.Start();
                        doWork();
                        sw.Stop();
                        post();
                    }
                }
            }//class Round
            public abstract class CFGRound : Round
            {
                protected override bool skip
                {
                    get
                    {
                        return cfg.goalNodes.Count == 0;
                    }
                }
                public CFGRound(CFG cfg, string str, string name)
                    : base(cfg.hr, str, name)
                {
                    this.cfg = cfg;
                }
                public readonly CFG cfg;

                protected override void pre()
                {
                    preNodes = cfg.nodes.Count;
                    preGoals = cfg.goalNodes.Count;
                    cfg.getClauseAndAtomCounts(out preClauses, out preAtoms);
                    base.pre();
                }
                protected override void post()
                {
                    postGoals = cfg.goalNodes.Count;
                    postNodes = cfg.nodes.Count;
                    cfg.getClauseAndAtomCounts(out postClauses, out postAtoms);
                    base.post();
                    var compressible = (
                        from n in cfg.nodes
                        where n.isValid && n.predecessors.Count == 1
                        let p = n.predecessors.First()
                        where p.successors.Count == 1
                        where p.predecessors.Count == 1
                        select p
                            ).ToList();

                    log(2, "     Could compress {0} nodes", compressible.Count);
                    if (cfg.rootNode.universe != null)
                    {
                        Slicer.log(0, "    MS:{0}", cfg.rootNode.universe.statString);
                        Slicer.log(0,cfg.gttString);
                    }
                }
            }//class CFGRound
            class BURound : CFGRound
            {
                public BURound(CFG cfg)
                    : base(cfg, "Building Universes", "BU")
                {
                }
                protected override void doWork()
                {
                    cfg.buildUniverses();
                }
            }
            private static void buildCFG(CFG cfg)
            {
                var r = new BURound(cfg);
                r.run();
            }

            class SatRound : CFGRound
            {
                public SatRound(CFG cfg)
                    : base(cfg, "Saturating CFG[" + (Universe.isSPPass ? "SP" : "In") + "]", "SU")
                {
                }
                protected override void doWork()
                {
                    cfg.saturateUniversesForward();
                    if (Universe.satBackKnob)
                    {
                        Slicer.log(0, "  And back....");
                        cfg.saturateUniversesBackward();
                    }
                }
            }
            class SatMRRound : CFGRound
            {
                public SatMRRound(CFG cfg)
                    : base(cfg, "Saturating CFG Maps", "MR")
                {
                }
                protected override void doWork()
                {
                    cfg.SaturateMRs();
                }
            }
            private static void saturateCFG(CFG cfg)
            {
                var r = new SatRound(cfg);
                r.run();
            }
            private static void saturateCFGMaps(CFG cfg)
            {
                var r = new SatMRRound(cfg);
                r.run();
            }
            class SatEqRound : CFGRound
            {
                public SatEqRound(CFG cfg, bool merge)
                    : base(cfg, "Saturating Equalities", "SE")
                {
                    this.merge = merge;
                }
                private readonly bool merge;
                private int preGTTs;
                private int preGTs;

                protected override void pre()
                {
                    if (!cfg.rootNode.isValid)
                        return;

                    preGTTs = cfg.rootNode.universe.termRepository.gtts.Count;
                    preGTs = cfg.rootNode.universe.termRepository.gts.Count;
                    base.pre();
                    Slicer.log(2, "      gts:{0}   gtts:{1}", preGTs, preGTTs);
                }
                protected override void post()
                {
                    base.post();
                    if (cfg.rootNode.isValid)
                    {
                        var postGTTs = cfg.rootNode.universe.termRepository.gtts.Count;
                        var postGTs = cfg.rootNode.universe.termRepository.gts.Count;
                        log(2, "      gts: {0} + {1} = {2}   gtts: {3} + {4} = {5}", preGTs, postGTs - preGTs, postGTs, preGTTs, postGTTs - preGTTs, postGTTs);
                    }
                }
                protected override void doWork()
                {
                    cfg.syncAll(new CFG.VisitorProgress(), merge);
                }
            }
            private static void saturateEqualities(CFG cfg, bool merge)
            {
                var r = new SatEqRound(cfg, merge);
                r.run();
#if LOG12
#endif
            }
            class CutTheCrapRound : CFGRound
            {
                public CutTheCrapRound(CFG cfg)
                    : base(cfg, "Removing propagation deadends", "RD")
                {
                }
                private int preGTTs;
                private int preGTs;

                protected override void pre()
                {
                    if (!cfg.rootNode.isValid)
                        return;

                    preGTTs = cfg.nodes.Sum(n => n.isValid ? n.universe.indexedGTTs.Count : 0);
                    preGTs = cfg.nodes.Sum(n => n.isValid ? n.universe.indexedGTs.Count : 0);
                    base.pre();
                    log(2, "      igts:{0}   igtts:{1}", preGTs, preGTTs);
                }
                protected override void post()
                {
                    base.post();
                    if (cfg.rootNode.isValid)
                    {
                        var postGTTs = cfg.nodes.Sum(n => n.isValid ? n.universe.indexedGTTs.Count : 0);
                        var postGTs = cfg.nodes.Sum(n => n.isValid ? n.universe.indexedGTs.Count : 0);
                        log(2, "      igts: {0} + {1} = {2}   igtts: {3} + {4} = {5}", preGTs, postGTs - preGTs, postGTs, preGTTs, postGTTs - preGTTs, postGTTs);
                    }
                }
                protected override void doWork()
                {
                    cfg.cutCrap();
                }
            }
            private static void cutCrap(CFG cfg)
            {
                var r = new CutTheCrapRound(cfg);
                r.run();
            }
            class CURound : CFGRound
            {
                public CURound(CFG cfg)
                    : base(cfg, "Cleaning up CFG", "CU")
                {
                }

                private int preGTTs;
                private int preGTs;

                protected override void pre()
                {
                    if (!cfg.rootNode.isValid)
                        return;
                    preGTTs = cfg.rootNode.universe.termRepository.gtts.Count;
                    preGTs = cfg.rootNode.universe.termRepository.gts.Count;
                    base.pre();
                }
                protected override void post()
                {
                    base.post();
                    if (!cfg.rootNode.isValid)
                        return;
                    var postGTTs = cfg.rootNode.universe.termRepository.gtts.Count;
                    var postGTs = cfg.rootNode.universe.termRepository.gts.Count;
                    log(2, "  ***Cleanedup gts:{0} gtts:{1}", postGTs - preGTs, postGTTs - preGTTs);
                }
                protected override void doWork()
                {
                    cfg.markSweepBackwards();
                }
            }
            private static void cleanUpCFG(CFG cfg)
            {
                var r = new CURound(cfg);
                r.run();
            }


            private static bool hasQuantifiers(Expression e)
            {
                if (e is QuantifiedExpression)
                    return true;
                else
                    return e.subExpressions.Any(hasQuantifiers);
            }
            private static bool hasTriggersOrAttributes(Expression e)
            {
                var result = e.subExpressions.Any(hasTriggersOrAttributes);
                if (e is QuantifiedExpression)
                {
                    var qe = e as QuantifiedExpression;
                    result |= qe.attributes != null && qe.attributes.Any();
                    result |= qe.triggers.Any();
                }
                return result;
            }
            private void dump(CFG cfg, string suffix)
            {
                log(3, "Dumping cnf {0}", suffix);
                dumpFormulae();
                dumpClauses(suffix);
            }

            //            IList<Clause> mapAxiomClauses = new List<Clause>();
            public const string assertionSuffix = "_assertion";
            private void CNFConvert()
            {
                Slicer.log(0, "   CNF Conversion");
                var cnfConverter = new CNFConverter(this);

                Slicer.log(0, "   CNF Conversion - expressions: {0}+{1}", assumptions.Count, assertions.Count);
                var cc = 0;
                foreach (var aa in assumptions)
                {
                    //                    Slicer.log(0,"     Converting Assumption {0,4}/{1,4} [clauses:{2,5},atoms:{3,6}]",cc,assumptions.Count, currentClauseSet.numClauses, currentClauseSet.numAtoms);
                    cc++;
                    var implication = aa as Implication;
                    Literal bpca = null;
                    var a = aa;
                    if (implication != null)
                    {
                        var pa1 = implication.f1 as PredicateApplication;
                        if (pa1 != null)
                        {
                            var p = pa1.predicate;
                            if (pathConditions.Contains(p))
                            {
                                bpca = new Literal(new PredicateApplication(p, new TermTuple(new ITerm[0])), false);
                                a = implication.f2;
                            }
                        }
                    }
                    //                var bpc = implication.f1 as PredicateApplication;
                    //                Debug.Assert(bpc != null);

                    Debug.Assert(a.ffreeVariables.All(fv => !BooleanType.isBoolean(fv.type)));
                    var sa = simplify(a);
                    Debug.Assert(sa.ffreeVariables.All(fv => !BooleanType.isBoolean(fv.type)));
                    var nnfa = nnf(sa);
                    Debug.Assert(nnfa.ffreeVariables.All(fv => !BooleanType.isBoolean(fv.type)));
                    var skolemizeda = skolemize(nnfa);
                    Debug.Assert(skolemizeda.ffreeVariables.All(fv => !BooleanType.isBoolean(fv.type)));
                    CNF2State cnfs;
                    //                ClauseSet ncs;
                    try
                    {
                        cnfs = cnfConverter.cnf2i(skolemizeda);//.get(this);
                    }
                    catch (Exception e)
                    {
                        Console.WriteLine("Failed to convert {0} because of {1}", skolemizeda, e.Message);
                        throw;
                    }
                    foreach (var rc in cnfs.clauses.Union(cnfs.definitions))
                    {
                        var rrc = rc;
                        if (ClauseSet.checkUniqueFVs)
                            if (rrc.freeVariables.Any(currentClauseSet.freeVariables.Contains))
                                rrc = refreshVariables(rc);
                        var c = new Clause(bpca == null ? rrc.literals : new[] { bpca }.Union(rrc.literals));
                        addClause(c, false);
                    }
                }
                addClause(new Clause(new PredicateApplication(predicateMap["$start"], new ITerm[0]), true), false);

                //                 Slicer.log(0,"     Done converting assumptions - [clauses:{0,5},atoms:{1,6}]", currentClauseSet.numClauses, currentClauseSet.numAtoms);

                if (assertions.Count == 0)
                    log(0, "Warning - no assertions");
                else
                {
                    var pas = new List<PredicateApplication>();
                    cc = 0;
                    foreach (var aa in assertions)
                    {
                        //                        Slicer.log(0,"     Converting Assertion {0,4}/{1,4} [clauses:{2,5},atoms:{3,6}]",cc,assumptions.Count,currentClauseSet.numClauses, currentClauseSet.numAtoms);
                        cc++;
                        var implication = aa as Implication;
                        if (implication == null)
                            continue; //simplified C => true ==> !C
                        Debug.Assert(implication != null);
                        var bpc = implication.f1 as PredicateApplication;
                        var a = implication.f2;
                        Debug.Assert(bpc != null);
                        var blockName = bpc.predicate.name;

                        var p = getFreshPredicate(blockName + assertionSuffix, TypeTuple.make());
                        var obpca = new Literal(new PredicateApplication(bpc.predicate, new TermTuple(new ITerm[0])), true);
                        var bpca = new Literal(new PredicateApplication(p, new TermTuple(new ITerm[0])), false);
                        pathConditions.Add(p);
                        goalPathConditions.Add(p);
                        expressionByPathCondition.add(bpca.f.asPredicateApplication, assertionExpressionByPathCondition[obpca.f.asPredicateApplication]);

                        var pa = new PredicateApplication(p, new ITerm[0]);
                        pas.Add(pa);
                        Debug.Assert(a.ffreeVariables.All(fv => !BooleanType.isBoolean(fv.type)));
                        //                    var f = new Or(new Not(pa), new Not(a)); //p->!a
                        var na = new Not(a); //!a
                        var sk = skolemize(nnf(simplify(na)));
                        var convertedFormula = cnfConverter.cnf2i(sk);
                        var skeletonC = new Clause(new[] { bpca, obpca }); //!p_assertion \/ p
                        addClause(skeletonC, true);
                        foreach (var rc in convertedFormula.clauses.Union(convertedFormula.definitions))
                        {
                            var rrc = rc;
                            if (ClauseSet.checkUniqueFVs)
                                if (rrc.freeVariables.Any(currentClauseSet.freeVariables.Contains))
                                    rrc = refreshVariables(rc);
                            var c = new Clause(new[] { bpca }.Union(rrc.literals));
                            addClause(c, false);
                        }
                        Debug.Assert(!currentClauseSet.isFalse);

                    }

                    var aocs = new Clause(pas, new PredicateApplication[0], new EqualityFormula[0], new EqualityFormula[0]);
                    addClause(aocs, true);
                    Slicer.log(0, "   **Done - clauses:{0,5},atoms:{1,6}", currentClauseSet.numClauses, currentClauseSet.numAtoms);
                }
            }

            private void addMathAxioms()
            {
                #region boolean axioms
                var trueFunction = getFunction(BooleanValue.makeBooleanValue(true));
                var falseFunction = getFunction(BooleanValue.makeBooleanValue(false));
                {//x=true \/ x=false
                    var xv = getFreshVariable("x", BooleanType.booleanType);
                    var xvt = new Variable(xv);
                    var tt = new FunctionApplicationFormula(trueFunction, new ITerm[0]);
                    var ft = new FunctionApplicationFormula(falseFunction, new ITerm[0]);
                    var xeqt = new Literal(new EqualityFormula(xvt, tt), true);
                    var xeqf = new Literal(new EqualityFormula(xvt, ft), true);
                    addClause(new Clause(new[] { xeqt, xeqf }), false);
                }

                {//false!=true
                    var tt = new FunctionApplicationFormula(trueFunction, new ITerm[0]);
                    var ft = new FunctionApplicationFormula(falseFunction, new ITerm[0]);
                    var fneqt = new Literal(new EqualityFormula(tt, ft), false);
                    addClause(new Clause(fneqt), false);
                }
                #endregion boolean axioms

                //integer axioms
                var numbers = collectNumbers();
                var lt = ltPredicate = getPredicate(BFunctionTemplate.lt.getInstance());
                var plus = getFunction(BFunctionTemplate.plus.getInstance());
                var minus = getFunction(BFunctionTemplate.minus.getInstance());
                var mul = getFunction(BFunctionTemplate.mul.getInstance());
                var zf = getFunction(IntegerValue.make(0));

                //math axioms
                {//x+0==0
                    var xv = getFreshVariable("x", IntegerType.integerType);
                    var zt = new FunctionApplicationFormula(zf, new ITerm[0]);
                    var xvt = new Variable(xv);
                    var zpx = new FunctionApplicationFormula(plus, new ITerm[] { zt, xvt });
                    addClause(new Clause(new EqualityFormula(xvt, zpx), true), false);
                }
                {//0+x==0
                    var xv = getFreshVariable("x", IntegerType.integerType);
                    var zt = new FunctionApplicationFormula(zf, new ITerm[0]);
                    var xvt = new Variable(xv);
                    var zpx = new FunctionApplicationFormula(plus, new ITerm[] { xvt, zt });
                    addClause(new Clause(new EqualityFormula(xvt, zpx), true), false);
                }
                /*                {//x-0==0
                                    var xv = getFreshVariable("x", IntegerType.integerType);
                                    var zt = new FunctionApplication(zf, new ITerm[0]);
                                    var xvt = new Variable(xv);
                                    var xmz = new FunctionApplication(minus, new ITerm[] { xvt, zt });
                                    addClause(new Clause(new EqualityFormula(xvt, xmz), true), false);
                                }
                                {//x-x==0
                                    var xv = getFreshVariable("x", IntegerType.integerType);
                                    var zt = new FunctionApplication(zf, new ITerm[0]);
                                    var xvt = new Variable(xv);
                                    var xmx = new FunctionApplication(minus, new ITerm[] { xvt, xvt });
                                    addClause(new Clause(new EqualityFormula(zt, xmx), true), false);
                                }
                                {//x*z+y*z=(x+y)*z
                                    var xv = getFreshVariable("x", IntegerType.integerType);
                                    var yv = getFreshVariable("y", IntegerType.integerType);
                                    var zv = getFreshVariable("z", IntegerType.integerType);
                                    var xvt = new Variable(xv);
                                    var yvt = new Variable(yv);
                                    var zvt = new Variable(zv);
                                    var xtz = new FunctionApplication(mul, new[] { xvt, zvt });
                                    var ytz = new FunctionApplication(mul, new[] { yvt, zvt });
                                    var xtzpytz = new FunctionApplication(plus, new[] { xtz, ytz });
                                    var xpy = new FunctionApplication(plus, new[] { xvt, yvt });
                                    var xpytz = new FunctionApplication(mul, new ITerm[] { xpy, zvt });
                                    addClause(new Clause(new EqualityFormula(xtzpytz, xpytz), true), false);
                                }
                                */
                {//!0<x \/ !0<y \/ 0<x*y
                    var xv = getFreshVariable("x", IntegerType.integerType);
                    var yv = getFreshVariable("y", IntegerType.integerType);
                    var zt = new FunctionApplicationFormula(zf, new ITerm[0]);
                    var xvt = new Variable(xv);
                    var yvt = new Variable(yv);
                    var nxgtz = new Literal(new PredicateApplication(lt, new ITerm[] { zt, xvt }), false);
                    var nygtz = new Literal(new PredicateApplication(lt, new ITerm[] { zt, yvt }), false);
                    var xty = new FunctionApplicationFormula(mul, new[] { xvt, yvt });
                    var xtygtz = new Literal(new PredicateApplication(lt, new ITerm[] { zt, xty }), true);
                    addClause(new Clause(new[] { nxgtz, nygtz, xtygtz }), false);
                }

                {//!x<y \/ !y<x
                    var xv = getFreshVariable("x", IntegerType.integerType);
                    var yv = getFreshVariable("y", IntegerType.integerType);
                    var xvt = new Variable(xv);
                    var yvt = new Variable(yv);
                    var nxlty = new Literal(new PredicateApplication(lt, new ITerm[] { xvt, yvt }), false);
                    var nyltx = new Literal(new PredicateApplication(lt, new ITerm[] { yvt, xvt }), false);
                    addClause(new Clause(new[] { nxlty, nyltx }), false);
                }

                {//!x<y \/ !x=y
                    var xv = getFreshVariable("x", IntegerType.integerType);
                    var yv = getFreshVariable("y", IntegerType.integerType);
                    var xvt = new Variable(xv);
                    var yvt = new Variable(yv);
                    var nxlty = new Literal(new PredicateApplication(lt, new ITerm[] { xvt, yvt }), false);
                    var nyeqx = new Literal(new EqualityFormula(xvt, yvt), false);
                    addClause(new Clause(new[] { nxlty, nyeqx }), false);
                }

                {//z=0 \/ x=y \/ !x*z=y*z
                    var xv = getFreshVariable("x", IntegerType.integerType);
                    var yv = getFreshVariable("y", IntegerType.integerType);
                    var zv = getFreshVariable("z", IntegerType.integerType);
                    var zt = new FunctionApplicationFormula(zf, new ITerm[0]);
                    var xvt = new Variable(xv);
                    var yvt = new Variable(yv);
                    var zvt = new Variable(zv);
                    var zeq0 = new Literal(new EqualityFormula(zvt, zt), true);
                    var xeqy = new Literal(new EqualityFormula(xvt, yvt), true);
                    var xtz = new FunctionApplicationFormula(mul, new[] { xvt, zvt });
                    var ytz = new FunctionApplicationFormula(mul, new[] { yvt, zvt });
                    var nxzeqyz = new Literal(new EqualityFormula(xtz, ytz), false);
                    addClause(new Clause(new[] { zeq0, xeqy, nxzeqyz }), false);
                }

                {//z=0 \/ !x<y \/ x*z<y*z
                    var xv = getFreshVariable("x", IntegerType.integerType);
                    var yv = getFreshVariable("y", IntegerType.integerType);
                    var zv = getFreshVariable("z", IntegerType.integerType);
                    var zt = new FunctionApplicationFormula(zf, new ITerm[0]);
                    var xvt = new Variable(xv);
                    var yvt = new Variable(yv);
                    var zvt = new Variable(zv);
                    var zeq0 = new Literal(new EqualityFormula(zvt, zt), true);
                    var nxlty = new Literal(new PredicateApplication(lt, new ITerm[] { xvt, yvt }), false);
                    var xtz = new FunctionApplicationFormula(mul, new[] { xvt, zvt });
                    var ytz = new FunctionApplicationFormula(mul, new[] { yvt, zvt });
                    var xzltyz = new Literal(new PredicateApplication(lt, new ITerm[] { xtz, ytz }), true);
                    addClause(new Clause(new[] { zeq0, nxlty, xzltyz }), false);
                }
                /*            {//!x<x
                                var xv = getFreshVariable("x", IntegerType.integerType);
                                var xvt = new Variable(xv);
                                var nxltx = new Atom(new PredicateApplication(lt, new ITerm[] { xvt, xvt }), false);
                                addClause(new Clause(new[] { nxltx }), false);
                            }
                */
                /*
                foreach (var nt1 in numbers)
                    foreach (var nt2 in numbers)
                        if (nt1 != nt2)
                        {//c1<c2 && c1!=c2
                            //                        var zt = new FunctionApplication(getFunction(IntegerValue.make(0)), new ITerm[0]);
                            var n1 = numberInverseMap[nt1.function];
                            var n2 = numberInverseMap[nt2.function];
                            Debug.Assert(n1 != n2);
                            var tuple = (n2 > n1) ? new[] { nt1, nt2 } : new[] { nt2, nt1 };
                            addClause(new Clause(new PredicateApplication(lt, tuple), true), false);
                            var xney = new Literal(new EqualityFormula(nt1, nt2), false);
                            addClause(new Clause(xney), false);
                        }
                        */
            }

            private IEnumerable<FunctionApplicationFormula> collectNumbers()
            {
                return (from c in numberMap.Values select new FunctionApplicationFormula(c, new ITerm[0])).ToList();
            }

            private void FOLConvert()
            {
                Console.WriteLine("   FOL conversion");
                convertExpressionsToFormulae();
                #region log
#if DEBUG
#if LOG
            Console.WriteLine("\tAssumptions    : {0}", assumptions.Count);
            Console.WriteLine("\tAssertions     : {0}", assertions.Count);
            Console.WriteLine("\tFunctions      : {0}", functionMap.Count);
            Console.WriteLine("\tPredicates     : {0}", predicateMap.Count);
            Console.WriteLine("\tQuantifications: {0}", variableMap.Count);
#endif
#endif
                #endregion log
            }

            private void dumpStatistics()
            {
                var atoms = 0;
                var maxAtoms = 0;
                foreach (var a in currentClauseSet.clauses)
                {
                    atoms += a.literals.Count;
                    if (a.literals.Count > maxAtoms)
                        maxAtoms = a.literals.Count;
                }

                Debug.Assert(atoms == currentClauseSet.numAtoms);

                Console.WriteLine("\tPredicates: {0}", predicateMap.Count);
                Console.WriteLine("\tFunctions : {0}", functionMap.Count);
                Console.WriteLine("\tVariables : {0}", lVarMap.Count);
                Console.WriteLine("\tGoals     : {0}", goals.Count);
                Console.WriteLine("\tClauses   : {0}", currentClauseSet.size);
                Console.WriteLine("\tAtoms     : {0}", atoms);
                Console.WriteLine();
                Console.WriteLine("\tAvg Atoms/clause : {0:F2}", atoms / (double)currentClauseSet.Count);
                Console.WriteLine("\tMax Atoms/clause : {0}", maxAtoms);
                if (currentClauseSet.isFalse)
                    Console.WriteLine("Warning: Proven!");
            }


            public void addClause(Clause c, bool isGoal)
            {
                currentClauseSet.add(c);
                if (isGoal)
                    goals.Add(c);
            }

            /////////////////////////////////////////////////////////////////////////////////
            private void removeClause(Clause c)
            {
                currentClauseSet.remove(c);
                if (goals.Contains(c))
                    goals.Remove(c);
            }

            public void addClauses(ClauseSet cs, bool isGoal)
            {
                foreach (var c in cs.clauses)
                    addClause(c, isGoal);
            }

            private void dumpClauses(string baseName)
            {
                var fileName =
                    FileUtilities.trimFileName(procedure.fileName + "." + procedure.name + "." + baseName + ".cnf");
                var handle = File.Create(fileName);
                var file = new StreamWriter(handle);

                foreach (var c in currentClauseSet.clauses)
                {
                    if (goals.Contains(c))
                        file.Write("goal ");
                    file.WriteLine("{0}", c.ToStringB());
                }
                file.Close();
            }


            /////////////////////////////////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////////////////////////////////
            private void dumpFormulae()
            {
                var fileName = FileUtilities.trimFileName(procedure.fileName + "." + procedure.name + ".formulae");
                var handle = File.Create(fileName);
                var file = new StreamWriter(handle);

                foreach (var a in assumptions) //dump
                    file.WriteLine("assume " + a);
                foreach (var a in assertions) //dump
                    file.WriteLine("assert " + a);
                file.Close();
            }

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            private PredicateInstances collectPIS(bool nonAxioms)
            {
                var pis = new PredicateInstances(); // Dictionary<string, PI> pis = new Dictionary<string, PI>();
                foreach (var p in predicateMap.Values)
                    pis.pis[p.name] = new PredicateInstance(p);

                foreach (var c in currentClauseSet.clauses)
                    if (nonAxioms || !c.literals.Any(l => l.f.isPredicateApplication && pathConditions.Contains(l.f.asPredicateApplication.predicate)))
                    {
                        //                        if (c.ToString().Contains(@"anon16_Then@1_assertion"))
                        //                            Debugger.Break();
                        pis.add(c);
                    }

                return pis;
            }


            public static bool isDecimal(string s)
            {
                if (s.Length == 0)
                    return false;
                var c0 = s.First();
                if (!isdigit(c0))
                    if (c0 != '-' || s.Length == 1)
                        return false;
                if (!s.Skip(1).All(isdigit))
                    return false;
                return true;
            }

            internal static bool isdigit(char c)
            {
                return "0123456789".Contains(c);
            }

            /////////////////////////////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////////////////////////////

            /////////////////////////////////////////////////////////////////////////////////
            private void eliminateByCriterion(IPredicateEliminationCriterion criterion)
            {
                var result = 0;
                var pis = collectPIS(false);
                var todoS = new HashSet<PredicateInstance>();
                var todo = new Queue<PredicateInstance>();
                foreach (var pi in pis.pis.Values)
                {
                    todo.Enqueue(pi);
                    todoS.Add(pi);
                }

                while (todo.Count > 0)
                {
                    var pi = todo.Dequeue();
                    todoS.Remove(pi);

                    if (criterion.preCheck(pi))
                    {
                        var pn = pi.pnPAInstances.Union(pi.pgPAInstances).ToArray();
                        var nn = pi.nnPAInstances.Union(pi.ngPAInstances).ToArray();

                        var cs = new ClauseSet();
                        var csGoals = new HashSet<Clause>();
                        foreach (var i in pn)
                            foreach (var j in nn)
                            {
                                var c = unify(i, j);
                                cs.add(c);
                                if (goals.Contains(i.clause) || goals.Contains(j.clause))
                                    csGoals.Add(c);
                            }

                        if (criterion.postCheck(pi, cs, csGoals) && cs.clauses.All(x => (from a in x.literals where a.f.isPredicateApplication && goalPathConditions.Contains(a.f.asPredicateApplication.predicate) select a).Count() <= 1))
                        {
                            var pnnn = pn.Union(nn).ToArray();
                            foreach (var p in pnnn)
                            {
                                pis.remove(p.clause);
                                removeClause(p.clause);
                                result++;
                            }
                            foreach (var c in cs.clauses)
                            {
                                addClause(c, csGoals.Contains(c));
                                pis.add(c);
                                foreach (var p in c.predicates(true).Union(c.predicates(false)))
                                {
                                    var ppi = pis.pis[p.predicate.name];
                                    if (todoS.Add(ppi))
                                        todo.Enqueue(ppi);
                                }
                            }
                        }
                    }
                }
            }

            /////////////////////////////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////////////////////////////
            private void pushInequalities()
            {
                var cs = new List<Clause>(currentClauseSet.clauses);
                foreach (var c in cs)
                    pushInequalities(c);
            }

            private void pushInequalities(Clause c)
            {
                if (!c.equalities(false).Any())
                    return;

                var vneqs =
                    (from e in c.equalities(false) where e.t1 is Variable && e.t2 is Variable select e).ToList();
                if (vneqs.Count == 0)
                    return;
                var nvneqs =
                    (from e in c.equalities(false) where !(e.t1 is Variable && e.t2 is Variable) select e).ToList();
                var others =
                    c.predicates(true).Union<IAtomicFormula>(c.predicates(false)).Union(c.equalities(true)).Union(nvneqs);
                if (!others.Any())
                {
                    addClause(new Clause(false), goals.Contains(c));
                    removeClause(c);
                    return;
                }

                var uf = new Dictionary<string, SortedSet<Variable>>(); //equivalence classes
                foreach (var neq in vneqs)
                {
                    var t1v = neq.t1 as Variable;
                    var t2v = neq.t2 as Variable;

                    SortedSet<Variable> e1;
                    SortedSet<Variable> e2;

                    Debug.Assert(t1v != null, "t1v != null");
                    uf.TryGetValue(t1v.variable.name, out e1);
                    Debug.Assert(t2v != null, "t2v != null");
                    uf.TryGetValue(t2v.variable.name, out e2);

                    if (ReferenceEquals(e1, null) && ReferenceEquals(e2, null))
                    {
                        var nm = new SortedSet<Variable> { t1v, t2v };
                        uf[t1v.variable.name] = nm;
                        uf[t2v.variable.name] = nm;
                    }
                    else if (ReferenceEquals(e2, null))
                    {
                        e1.Add(t2v);
                        uf[t2v.variable.name] = e1;
                    }
                    else if (ReferenceEquals(e1, null))
                    {
                        e2.Add(t1v);
                        uf[t1v.variable.name] = e2;
                    }
                    else
                    {
                        e1.UnionWith(e2);
                        foreach (var v in e2)
                            uf[v.variable.name] = e1;
                    }
                }
                //map each equivalnce class to representative
                var m = new Dictionary<LVar, ITerm>();
                foreach (var ec in uf.Values)
                    foreach (var v in ec)
                        m[v.variable] = ec.First();

                var s = new Substitution(m);
                var ppas2 = new HashSet<PredicateApplication>(from pa in c.predicates(true) select pa.substitutePA(s));
                var npas2 = new HashSet<PredicateApplication>(from pa in c.predicates(false) select pa.substitutePA(s));
                var peqs2 = new HashSet<EqualityFormula>(from eq in c.equalities(true) select eq.substituteEq(s));
                var neqs2 = new HashSet<EqualityFormula>(from eq in nvneqs select eq.substituteEq(s));
                var nc = new Clause(ppas2, npas2, peqs2, neqs2);
                var snc = refreshVariables(nc); // nc.substitute(new Substitution(nc.freeVariables.ToList(), refreshgetFreshVariables(nc.freeVariables.ToList())));
                addClause(snc, goals.Contains(c));
                removeClause(c);
            }
            private void unitPropagation()
            {
                var units = new HashSet<Clause>(from c in currentClauseSet.clauses where c.literals.Count==1 select c);
/*                foreach (var c in currentClauseSet.clauses.ToList())
                    if (c.literals.Count == 1)
                    {
                        var l = c.literals[0];
                        if (l.f.isPredicateApplication && l.f.asPredicateApplication.args.Count == 0)
                        {
                            var p = l.f.asPredicateApplication.predicate;
                            currentClauseSet.remove(c);
                            if (!l.polarity && goalPathConditions.Contains(p))
                                goalPathConditions.Remove(p);
                        }
                        units.Add(c.literals[0]);
                    }*/
                do
                {
                    var atomMap = new Dictionary<IAtomicFormula, bool>();
                    foreach (var c in units)
                    {
                        var l = c.literals[0];
/*#if DEBUG
                        if (l.ToString().Contains(@""))
                            Debugger.Break();
#endif*/
                        Debug.Assert(!atomMap.ContainsKey(l.f));
                        if (atomMap.ContainsKey(l.f) && atomMap[l.f]!=l.polarity)
                        {
                            Console.WriteLine("Clause set inconsistent - program proven");
                            currentClauseSet.add(new Clause(false));
                            return;
                        }
                        atomMap[l.f] = l.polarity;
                        if (!l.polarity && l.f.isPredicateApplication)
                        {
                            var p = l.f.asPredicateApplication.predicate;
                            if (p.argumentTypes.Count == 0)
                            {
                                currentClauseSet.remove(c);
                                goalPathConditions.Remove(p);
                            }
                        }
                    }
                    units = new HashSet<Clause>();
                    var todo = new Queue<Clause>();
                    foreach (var c in currentClauseSet.clauses)
                        todo.Enqueue(c);
                    while (todo.Any())
                    {
                        var c = todo.Dequeue();
                        if (!currentClauseSet.hasClause(c))
                            continue;
                        var nls = new List<Literal>();
                        foreach (var ll in c.literals)
                        {
                            bool p;
                            if (!atomMap.TryGetValue(ll.f, out p))
                                nls.Add(ll);
                            else
                                if (p == ll.polarity)
                                {
                                    if (c.literals.Count > 1)
                                    {
                                        currentClauseSet.remove(c);
                                        goals.Remove(c);
                                    }

                                    goto loop0end;
                                }

                        }
                        if (nls.Count < c.literals.Count)
                        {
                            currentClauseSet.remove(c);
                            var nc = new Clause(nls);
                            currentClauseSet.add(nc);
                            if (nc.literals.Count == 1)
                                units.Add(nc);
                            if (goals.Contains(c))
                                goals.Add(nc);
                            goals.Remove(c);
                        }
                        loop0end:;
                    }
                }
                while (units.Any());
            }
            private void eliminateUnusedSymbols()
            {
                var cs = new HashSet<Clause>(goals);
                var fs = new HashSet<Function>(functionMap.Values);
                var vs = new HashSet<LVar>(lVarMap.Values);
                var ps = new HashSet<Predicate>(predicateMap.Values);

                foreach (var c in currentClauseSet.clauses)
                {
                    foreach (var v in c.freeVariables)
                        vs.Remove(v);
                    foreach (var f in c.functions)
                        fs.Remove(f);
                    foreach (var pa in c.predicates(true).Union(c.predicates(false)))
                        ps.Remove(pa.predicate);
                    cs.Remove(c);
                }
                foreach (var c in cs)
                    goals.Remove(c);
                foreach (var f in fs)
                {
                    StateSpace.Functions.Function ssFunction;
                    if (ssFunctionInverseMap.TryGetValue(f, out ssFunction))
                    {
                        ssFunctionMap.Remove(ssFunction);
                        ssFunctionInverseMap.Remove(f);
                    }
                    if (!f.isInterpreted)
                        functionMap.Remove(f.name);
                }
                foreach (var p in ps)
                    if (p.name != TruePredicate.get.name)
                        predicateMap.Remove(p.name);
                foreach (var v in vs)
                    lVarMap.Remove(v.name);
            }

            /////////////////////////////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////////////////////////////

            /////////////////////////////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////////////////////////////
            private void stage(string name, Stage stage)
            {
                Console.Write("   {0}\n", name);
                var sw = new Stopwatch();
                sw.Start();
                stage();
                sw.Stop();
                //            Console.WriteLine(" - {0}ms",sw.ElapsedMilliseconds);
            }
            /////////////////////////////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////////////////////////////
            private void optimizeClauseSet()
            {
                //            stage("Interpreting BooleanDomain", ()=>{ currentClauseSet.visit(new BooleanInterpreter(this, currentClauseSet), goals); });
                //            stage("Pushing inequalities",       pushInequalities);
                stage("Eliminating unit clauses", eliminateUnitClauses);
                stage("Eliminating by criterion", () => eliminateByCriterion(new Critter()));
                stage("Eliminating fully defined functions", eliminateDefinedFunctions);

                stage("Factoring inequality clauses", factorInequalityClauses);

                stage("Eliminating top-positive-only functions", eliminateTopPositiveEqOnlyFunctions);
                stage("Eliminating unusable clauses", eliminateUnusableClauses);
                //            stage("Pushing inequalities", pushInequalities);
                stage("Eliminating unsused symbols", eliminateUnusedSymbols);

                stage("Unit Propagation", unitPropagation);
            }

            /////////////////////////////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////////////////////////////
            private void factorInequalityClauses()
            {
                var toRemove = new HashSet<Clause>();
                var toAdd = new HashSet<Clause>();
                foreach (var c0 in currentClauseSet.clauses)
                {
                    var c = c0;
                    var add = false;
                restart:;
                    {
                        foreach (var a in c.literals)
                            if (a.f.isEquality && !a.polarity)
                            {
                                var t = a.f.asEquality.args;
                                for (var i = 0; i < 2; i++)
                                    if (t[i].isVariable && !t[1 - i].freeVariables.Contains(t[i].asVariable.variable))
                                    {
                                        c = new Clause(from a2 in c.literals where a2 != a select a2.substitute(new Substitution(t[0].asVariable.variable, t[1])));
                                        //                                    toRemove.Add(c0);
                                        add = true;
                                        goto restart;
                                    }
                            }

                    }
                    if (add)
                    {
                        toRemove.Add(c0);
                        toAdd.Add(c);
                    }
                }
                foreach (var c in toRemove)
                    currentClauseSet.remove(c);
                foreach (var c in toAdd)
                    currentClauseSet.add(c);


            }


            private void eliminateUnusableClauses()
            {
                var map = new Dictionary<Function, ISet<Clause>>();
                foreach (var c in currentClauseSet.clauses)
                    foreach (var f in c.constants)
                        if (!isInterpreted(f))
                            map.insert(f, c);
                foreach (var kv in map)
                    if (kv.Value.Count < 2)
                        if (kv.Value.First().literals.Any(a => a.polarity && a.f.isEquality && a.f.asEquality.args.Any(arg => arg.isConstant && arg.asFunctionApplication.function == kv.Key)))
                        {
                            currentClauseSet.remove(kv.Value.First());
                        }

            }
            private void eliminateTopPositiveEqOnlyFunctions()
            {
                var allFunctions = new HashSet<Function>(
                    from c in currentClauseSet.clauses
                    from f in c.functions
                    select f);
                foreach (var c in currentClauseSet.clauses)
                    foreach (var l in c.literals)
                        if (l.f.isEquality && l.polarity)
                        {
                            var eq = l.f.asEquality;
                            foreach (var t in eq.args)
                                if (t.isFunctionApplication)
                                    foreach (var a in t.asFunctionApplication.args)
                                        allFunctions.ExceptWith(a.functions);
                        }
                        else
                            allFunctions.ExceptWith(l.functions);

                IDictionary<Function, ISet<Function>> funcECs = new Dictionary<Function, ISet<Function>>();
                foreach (var f in allFunctions)
                    funcECs[f] = new HashSet<Function> { f };

                foreach (var c in currentClauseSet.clauses)
                    foreach (var l in c.literals)
                        if (l.f.isEquality && l.polarity)
                        {
                            var eq = l.f.asEquality;
                            for (var i = 0; i < 2; i++)
                            {
                                var t = eq.args[i];
                                if (t.isFunctionApplication)
                                {
                                    var fae = t.asFunctionApplication;
                                    var f = fae.function;
                                    var ot = eq.args[1 - i];
                                    if (funcECs.ContainsKey(f))
                                        if (ot.isVariable)
                                            funcECs.removeUnion(f);
                                        else
                                        {
                                            var ofae = ot.asFunctionApplication;
                                            var of = ofae.function;
                                            if (funcECs.ContainsKey(of))
                                                funcECs.insertUnion(f, of);
                                            else
                                                funcECs.removeUnion(f);
                                        }
                                }
                            }
                        }

                var toRemove = (from c in currentClauseSet.clauses where c.functions.Intersect(funcECs.Keys).Any() select c).ToList();
                foreach (var c in toRemove)
                    currentClauseSet.remove(c);

            }
            /////////////////////////////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////////////////////////////
            private class AFD
            {
                public AFD(FunctionApplicationFormula f, ITerm t)
                {
                    this.faF = f;
                    this.t = t;
                    Debug.Assert(!t.isVariable || f.args.Contains(t));
                    index = (t.isVariable)
                        ? f.args.IndexOf(t)
                        : -1;
                }
                public readonly FunctionApplicationFormula faF;
                public readonly ITerm t;
                public readonly int index;
            }
            private void eliminateDefinedFunctions()
            {
                var functionDefinitions = new Dictionary<Function, AFD>();

                //Collect relevant function definitions
                foreach (var c in currentClauseSet.clauses)
                {
                    if (c.literals.Count == 1 && c.literals.First().f.spredicate is Equality && c.literals.First().polarity)
                    {
                        var eq = c.literals.First().f as EqualityFormula;
                        var fd1 = tryGetFunctionDefinition(eq.t1, eq.t2);
                        var fd2 = tryGetFunctionDefinition(eq.t2, eq.t1);
                        Debug.Assert(fd1 == null || fd2 == null);
                        var fd = fd1 ?? fd2;
                        if (fd == null)
                            continue;
                        var function = fd.faF.function;
                        if (functionDefinitions.ContainsKey(function))
                            functionDefinitions[function] = chooseFunctionDefinition(fd, functionDefinitions[function]);
                        else
                            functionDefinitions[function] = fd;
                    }
                }
                //            foreach (var fd in functionDefinitions)
                //                Console.WriteLine("Applying {0} => {1}", fd.Value.Item1.ToString(), fd.Value.Item2.ToString());

                var nc = new List<Clause>(currentClauseSet.clauses);
                foreach (var c in nc)
                {
                    var intersection = c.functions.Intersect(functionDefinitions.Keys);
                    if (intersection.Any())
                    {
                        var cc = c;
                        foreach (var f in intersection)
                            cc = applyFunctionDefinition(cc, functionDefinitions[f]);
                        if (!ReferenceEquals(c, cc))
                        {
                            removeClause(c);
                            addClause(cc, goals.Contains(c));
                        }
                    }
                }
            }

            private AFD chooseFunctionDefinition(AFD fd1, AFD fd2)
            {
                if (fd1.t.isVariable && fd2.t.isVariable)
                {
                    if (!fd1.t.Equals(fd2.t))
                        Slicer.log(2, "Contradicting definitions for function {0}: {1} vs {2}", fd1.faF.ToStringB(), fd1.t.ToStringB(), fd2.t.ToStringB());
                    return fd1;
                }
                else if (!fd1.t.freeVariables.Any() && fd2.t.isVariable)
                    return fd1;
                else if (!fd2.t.freeVariables.Any() && fd1.t.isVariable)
                    return fd2;
                else if (fd1.t.height <= fd2.t.height)
                    return fd1;
                else
                    return fd2;
            }

            private Clause applyFunctionDefinition(Clause cc, AFD fd)
            {
                var n = cc.literals.Count;
                var nls = new Literal[n];
                var v = false;
                for (var i = 0; i < n; i++)
                {
                    var l = cc.literals[i];
                    var nl = nls[i] = applyFunctionDefinition(l, fd);
                    if (!ReferenceEquals(l, nl))
                        v = true;
                }
                if (v)
                    return new Clause(from a in cc.literals select applyFunctionDefinition(a, fd));
                else
                    return cc;
            }

            private bool applyFunctionDefinition(IEnumerable<ITerm> ts, IList<ITerm> nts, AFD fd)
            {
                var v = false;
                foreach (var t in ts)
                {
                    var nt = applyFunctionDefinition(t, fd);
                    nts.Add(nt);
                    if (!ReferenceEquals(t, nt))
                        v = true;
                }
                return v;
            }
            private Literal applyFunctionDefinition(Literal a, AFD fd)
            {
                var nts = new List<ITerm>();
                if (applyFunctionDefinition(a.f.subTerms, nts, fd))
                    return makeAtom(a, nts);
                else
                    return a;
            }

            private Literal makeAtom(Literal a, IEnumerable<ITerm> args)
            {
                return new Literal(makeAtomicFormula(a.f, args.ToList()), a.polarity);
            }
            private IAtomicFormula makeAtomicFormula(IAtomicFormula f, IList<ITerm> args)
            {
                if (f is PredicateApplication)
                    return new PredicateApplication(f.spredicate as Predicate, args);
                else
                    return new EqualityFormula(args[0], args[1]);
            }

            private ITerm applyFunctionDefinition(ITerm t, AFD fd)
            {
                if (t.isVariable)
                    return t;
                var fa = t.asFunctionApplication;
                var nts = new List<ITerm>();
                var v = applyFunctionDefinition(fa.args, nts, fd);
                if (fa.function.Equals(fd.faF.function))
                {
                    var nfa = (fd.t.isVariable)
                        ? nts[fd.index] //variable
                        : fd.t; //ground iTerm
                    if (nfa.isVariable)
                        return nfa;
                    return nfa;
                    //                    var sfd = applyFunctionDefinition(fa, fd);
                    /*                    if (nfa.isVariable)
                                            return nfa;
                                        fa = sfd.asFunctionApplication;
                                        v = true;*/
                }
                if (v)
                    return new FunctionApplicationFormula(fa.function, nts);
                else
                    return t;
            }

            private ITerm applyFunctionDefinition(FunctionApplicationFormula fa, Tuple<FunctionApplicationFormula, ITerm> fd)
            {
                Debug.Assert(fa.function.Equals(fd.Item1.function));

                if (fd.Item2.isVariable)
                {
                    return fa.args[fd.Item1.args.IndexOf(fd.Item2)]; //variable
                }
                else
                    return fd.Item2; //ground iTerm
            }

            private AFD tryGetFunctionDefinition(ITerm t1, ITerm t2)
            {
                if (!t1.isFunctionApplication)
                    return null;
                var fa = t1.asFunctionApplication;
                if (!fa.freeVariables.Any())
                    return null;
                if (fa.args.Any(a => !a.isVariable))
                    return null;
                if (fa.freeVariables.Count != fa.args.Count())
                    return null;
                if (t2.isVariable || t2.freeVariables.Count == 0)
                    return new AFD(t1.asFunctionApplication, t2);
                return null;
            }
            public static int termTO(ITerm t1, ITerm t2)
            {
                var l1 = new Dictionary<LVar, int>();
                var l2 = new Dictionary<LVar, int>();
                return termTO(t1, l1, t2, l2);
            }

            private static int termTO(ITerm t1, IDictionary<LVar, int> l1, ITerm t2, IDictionary<LVar, int> l2)
            {
                var t1v = t1 as Variable;
                var t1fa = t1.asFunctionApplication;
                var t2v = t2 as Variable;
                var t2fa = t2.asFunctionApplication;

                int t1vi = 0, t2vi = 0;
                if (t1v != null)
                    if (!l1.TryGetValue(t1v.variable, out t1vi))
                        l1[t1v.variable] = t1vi = l1.Count;
                if (t2v != null)
                    if (!l2.TryGetValue(t2v.variable, out t2vi))
                        l2[t2v.variable] = t2vi = l2.Count;

                if (t1v != null && t2v != null)
                    return t1vi.CompareTo(t2vi);
                if (t1v != null)
                    return -1;
                if (t2v != null)
                    return 1;

                Debug.Assert(t1fa != null);
                Debug.Assert(t2fa != null);
                var fc = t1fa.function.name.CompareTo(t2fa.function.name);
                if (fc != 0)
                    return fc;
                for (var i = 0; i < t1fa.args.Count(); i++)
                {
                    var ac = termTO(t1fa.args[i], t2fa.args[i]);
                    if (ac != 0)
                        return ac;
                }
                return 0;
            }

            /////////////////////////////////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////////////////////////////////

            /////////////////////////////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////////////////////////////


            /////////////////////////////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////////////////////////////
            private static bool isUsableSingeleton(Clause c)
            {
                if (c.literals.Count != 1)
                    return false;
                var a = c.literals.First();
                if (Critter.isGoal(a.f.spredicate))
                    return false;
                return a.f.isPredicateApplication && a.f.asPredicateApplication.args.All(v => v is Variable);
            }

            private void eliminateUnitClauses()
            {
                var pis = collectPIS(true);

                var todo = new Queue<Clause>();

                foreach (var c in currentClauseSet.clauses)
                    if (isUsableSingeleton(c))
                    {
                        //                    Debug.Assert(c.atoms.Count == 1);
                        //                    Debug.Assert(c.atoms.First().f is PredicateApplication);
                        todo.Enqueue(c);
                    }
                var wereThere = new HashSet<Clause>();
                var todoSet = new HashSet<Clause>(todo);
                while (todo.Count > 0)
                {
                    var c = todo.Dequeue();
                    wereThere.Add(c);
                    //                Console.WriteLine("Eliminating {0}", c.ToStringN());

                    var a = c.literals.First();
                    var pa = a.f as PredicateApplication;
                    Debug.Assert(pa != null);
                    var pi = pis.pis[pa.predicate.name];
                    var ops = (a.polarity) ? pi.nPAInstances : pi.pPAInstances;
                    var toAdd = new List<Clause>();
                    var cgoals = new HashSet<Clause>();
                    foreach (var o in ops)
                    {
                        var nc = unify(new PAInstance(c, 0), o);
                        //                    Debug.Assert(!wereThere.Contains(nc));
                        Debug.Assert(!nc.isFalse);
                        if (nc.literals.Count == 1)
                        {
                            //                        Console.WriteLine("Generated unit clause {0} from {1} and {2}",nc,c,o);
                        }
                        toAdd.Add(nc);
                        if (goals.Contains(c) || goals.Contains(o.clause))
                            cgoals.Add(toAdd.Last());
                    }

                    foreach (var cc in ops)
                    {
                        removeClause(cc.clause);
                        pis.remove(cc.clause);
                    }
                    foreach (var cc in toAdd)
                    {
                        addClause(cc, cgoals.Contains(cc));
                        if (isUsableSingeleton(cc) && !todoSet.Contains(cc))
                        {
                            //                        Console.WriteLine("\tAdding {0}", cc.ToStringN());
                            todo.Enqueue(cc);
                            todoSet.Add(cc);
                        }
                        pis.add(cc);
                    }
                    removeClause(c);
                    pis.remove(c);
                }
            }

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            private static string makeFullLabel(StatementId si)
            {
                return si.basicBlock.label + "_" + si.index;
            }

            private Clause unify(PAInstance i1, PAInstance i2)
            {
                Debug.Assert(i1.pa.predicate == i2.pa.predicate);
                var c1 = i1.clause;
                var c2 = i2.clause;

                var pa1 = c1.literals[i1.position].f as PredicateApplication;
                var pa2 = c2.literals[i2.position].f as PredicateApplication;

                var neqs = new List<EqualityFormula>();
                new SortedDictionary<string, ITerm>();

                var tm = new SortedDictionary<LVar, ITerm>();

                Debug.Assert(pa1 != null);
                Debug.Assert(pa2 != null);
                for (var i = 0; i < pa1.args.Count(); i++)
                {
                    unify(tm, neqs, pa1.args[i], pa2.args[i]);
                }

                foreach (var v in c1.freeVariables.Union(c2.freeVariables))
                    if (!tm.ContainsKey(v))
                        tm.Add(v, new Variable(getFreshVariable(v)));

                var ofv = c1.freeVariables.Union(c2.freeVariables);
                int ccc;
                do
                {
                    ccc = 0;
                    foreach (var kv in tm.ToArray())
                    {
                        var k = kv.Key;
                        var t = kv.Value; // tm[k];
                        if (t.freeVariables.Intersect(ofv).Any())
                        {
                            ccc++;
                            var tts = new Substitution(tm);
                            tm[k] = t.substitute(tts);
                        }
                    }
                } while (ccc > 0);

                var ts = new Substitution(tm);

                //            var result = neqs.substitute(ts);
                var atoms = new List<Literal>();
                foreach (var neq in neqs)
                    atoms.Add(new Literal(neq.substituteA(ts), false));
                for (var i = 0; i < c1.literals.Count; i++)
                    if (i != i1.position)
                        atoms.Add(c1.literals[i].substitute(ts));
                for (var i = 0; i < c2.literals.Count; i++)
                    if (i != i2.position)
                        atoms.Add(c2.literals[i].substitute(ts));

                var result = new Clause(atoms);
                foreach (var a in result.literals)
                    Debug.Assert(!a.f.ffreeVariables.Intersect(ofv).Any());
                Debug.Assert(!result.freeVariables.Intersect(i1.clause.freeVariables).Any());
                Debug.Assert(!result.freeVariables.Intersect(i2.clause.freeVariables).Any());
                /*
                            Console.WriteLine("unify()");
                            Console.WriteLine("\t{0}",i1.clause.ToStringN());
                            Console.WriteLine("\t{0}",i2.clause.ToStringN());
                            Console.WriteLine("==>");
                            Console.WriteLine("\t{0}", result.ToStringN());
                            */
                return result;
            }

            public static void swap<T>(ref T t1, ref T t2)
            {
                var t = t1;
                t1 = t2;
                t2 = t;
            }

            private static void unify(IDictionary<LVar, ITerm> tm, ICollection<EqualityFormula> neqs, ITerm t1, ITerm t2)
            {
                var s = new Substitution(tm);
                t1 = t1.substitute(s);
                t2 = t2.substitute(s);
                if (!(t1 is Variable))
                    swap(ref t1, ref t2);

                if (t1.isVariable)
                {
                    var t1v = t1.asVariable;
                    if (t2.isVariable)
                    {
                        var t2v = t2.asVariable;
                        //x,y
                        if (t1v.variable != t2v.variable)
                            tm[t1v.variable] = t2v;
                    }
                    else
                    {
                        //x,f(z)
                        var t2f = t2.asFunctionApplication;
                        if (t2f.freeVariables.Contains(t1v.variable))
                            neqs.Add(new EqualityFormula(t1v, t2f));
                        else
                            tm[t1v.variable] = t2f;
                    }
                }
                else
                {
                    var t1f = t1.asFunctionApplication;
                    var t2f = t2.asFunctionApplication;

                    //f(t) == g(s)
                    if (t1f.function == t2f.function)
                    {
                        for (var i = 0; i < t1f.args.Count(); i++)
                            unify(tm, neqs, t1f.args[i], t2f.args[i]);
                    }
                    else
                        neqs.Add(new EqualityFormula(t1f, t2f));
                }
            }

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            private void convertExpressionsToFormulae()
            {
                collectUniqueConstants();

                collectMapReads();

                collectPathConditions();

#if DEBUG
                var bbb = procedure.blocks.First();
                var lss = (from bb in procedure.blocks
                         from si in bb.statements
                         let ss = si.statement as Assume
                         where ss != null
                         where ss.ToString().Contains(@"$inv")
                         select ss).ToArray();
#endif
                foreach (var bb in procedure.blocks)
                    foreach (var si in (from s in bb.statements select s.statementId))
                        collect(si);
            }

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            private void collectUniqueConstants()
            {
                //                var typeUniqueMap = new Dictionary<string, ISet<FunctionApplicationFormula>>();
                var typeUniqueMap = new Dictionary<string, ISet<Constant>>();
                foreach (var c in procedure.locals.Union(procedure.parentScope.locals))
                    if (c is Constant)
                    {
                        var cc = c as Constant;
                        if (cc.isUnique)
                            typeUniqueMap.insert(cc.type.ToStringN(), cc);
                        //new FunctionApplicationFormula(getFunction(c), new ITerm[0]));
                        {
                            /*                            HashSet<FunctionApplicationFormula> e;
                                                        if (!typeUniqueMap.TryGetValue(cc.type.ToStringN(), out e))
                                                            typeUniqueMap[ = e = new HashSet<FunctionApplicationFormula>();
                                                        e.Add();*/
                        }
                    }


                foreach (var cs in typeUniqueMap.Values)
                {
                    var fafMap = new Dictionary<Constant, ITerm>();
                    var expMap = new Dictionary<Constant, Expression>();
                    var a = cs.ToArray();
                    foreach (var c in a)
                    {
                        fafMap[c] = new FunctionApplicationFormula(getFunction(c), new ITerm[0]);
                        expMap[c] = new BasicProgramVariableExpression(c);
                    }
                    for (var i = 0; i < a.Length; i++)
                    {
                        var e1 = fafMap[a[i]];
                        for (var j = i + 1; j < a.Length; j++)
                        {
                            var e2 = fafMap[a[j]];
                            var ef = new Not(new EqualityFormula(e1, e2));
                            addAssumption(null, ef, true); //Unique constant disequality TODO:only where both constants are in scope
                            var exp = new BasicFAE(BFunction.not,
                                new ExpressionList(
                                    new BasicFAE(BFunction.eq(e1.type),
                                        new ExpressionList(expMap[a[i]], expMap[a[j]])
                                    ))
                                );
                            var pc = new PredicateApplication(predicateMap["true"], new ITerm[0]); // new PredicateApplication(blockPathConditions[procedure.cfg.startNode], new TermTuple());
                            expressionByPathCondition.add(pc, exp);
                        }
                    }
                }
            }

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            private void collectMapReads()
            {
                mapReads = new Dictionary<string, Dictionary<string, ITypeTuple>>();
                var visitor = new MapReadCollector(this);

                foreach (var bb in procedure.blocks)
                    foreach (var si in (from s in bb.statements select s.statementId.statement))
                        if (si is Programs.Statements.PredicateStatement)
                            (si as Programs.Statements.PredicateStatement).expression.visit(visitor);
            }

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            public IDictionary<PredicateApplication, ISet<Expression>> expressionByPathCondition = new Dictionary<PredicateApplication, ISet<Expression>>();
            public IDictionary<PredicateApplication, ISet<Expression>> assertionExpressionByPathCondition = new Dictionary<PredicateApplication, ISet<Expression>>();
            private void collectPathConditions()
            {
                var todo = new Queue<BasicBlock>();

                var blockPathConditions = new Dictionary<string, IFormula>();

                var numUnfinishedPredecessors = new Dictionary<string, int>();
                foreach (var bb in procedure.cfg.nodes)
                {
                    numUnfinishedPredecessors[bb.label] = bb.predecessors.Count;
                    if (numUnfinishedPredecessors[bb.label] == 0)
                        todo.Enqueue(bb);
                }

                while (todo.Count > 0)
                {
                    var bb = todo.Dequeue();
                    //                Console.WriteLine("Collecting path condition for {0}", bb.label);

                    Debug.Assert(numUnfinishedPredecessors[bb.label] == 0);
                    IFormula blockPathCondition = new False();
                    if (procedure.cfg.startNode.label == bb.label)
                        blockPathCondition = new True();
                    else
                    {
                        foreach (var p in bb.predecessors)
                        {
                            var predCondition =
                                (p.source.statements.Count == 1)
                                    ? blockPathConditions[p.source.label]
                                    : new PredicateApplication(pathConditionMap[makeFullLabel(p.source.statements[p.source.statements.Count - 1].statementId)], new TermTuple());
                            var guard = getFormula(p.guard.expression);
                            var pbpc = (guard is True) ? predCondition : new And(predCondition, predCondition);
                            if (blockPathCondition is False)
                                blockPathCondition = pbpc;
                            else
                                blockPathCondition = new Or(blockPathCondition, pbpc);
                        }
                    }

                    var prevCondition = blockPathCondition;
                    var currentCondition = new PredicateApplication(getFreshPredicate(bb.label, TypeTuple.make()), new TermTuple());

                    expressionByPathCondition.add(currentCondition);
                    blockPathConditions[bb.label] = currentCondition;
                    pathConditions.Add(currentCondition.predicate);
                    addAssumption(currentCondition.predicate, prevCondition, false);

                    for (var i = 0; i < bb.statements.Count /*- 1*/; i++) //skip branch statement
                    {
                        var si = bb.statements[i].statementId;
                        pathConditionMap[makeFullLabel(si)] = currentCondition.predicate;
                        pathConditions.Add(currentCondition.predicate);

                        if (si.statement is Assert)
                        {
                            prevCondition = currentCondition;
                            currentCondition = new PredicateApplication(getFreshPredicate(bb.label, TypeTuple.make()), new TermTuple());
                            expressionByPathCondition.add(currentCondition);
                            pathConditions.Add(currentCondition.predicate);
                            addAssumption(currentCondition.predicate, prevCondition, false);

                            //assume assertion in next block
                            var expression = (si.statement as Assert).expression;
                            Debug.Assert(cfCurrentContext == null);
                            cfCurrentContext = (prevCondition as PredicateApplication).predicate;
                            var ef = getFormula(expression);
                            cfCurrentContext = null;
                            addAssumption(currentCondition.predicate, ef, false);
                            expressionByPathCondition[currentCondition].Add(expression);
                        }
                    }
                    foreach (var s in bb.successors)
                    {
                        numUnfinishedPredecessors[s.target.label] -= 1;
                        Debug.Assert(numUnfinishedPredecessors[s.target.label] >= 0);
                        if (numUnfinishedPredecessors[s.target.label] == 0)
                            todo.Enqueue(s.target);
                    }
                }
            }

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            private Predicate cfCurrentContext = null;
            private void collect(StatementId si)
            {
                var p = si.statement as Programs.Statements.PredicateStatement;
                if (p != null)
                {
                    //                Console.WriteLine("Converting {0}", p.expression.ToString());
                    var pc = pathConditionMap[makeFullLabel(si)];
                    var expression = p.expression;
                    var pcf = new PredicateApplication(pc, new TermTuple());
                    cfCurrentContext = pc;
                    var ef = getFormula(expression);
                    cfCurrentContext = null;
                    var f = new Implication(pcf, ef);
                    Debug.Assert(f.ffreeVariables.All(fv => !BooleanType.isBoolean(fv.type)));
                    if (p is Assert)
                    {
                        addAssertion(f);
                        assertionExpressionByPathCondition.add(pcf, expression);
                    }
                    else
                    {
                        addAssumption(pc, ef, false);
                        expressionByPathCondition.add(pcf, expression);
                    }

                }
            }

            public void addAssertion(IFormula f)
            {
                var s = simplify(f);
                if (!(s is True))
                    assertions.Add(s);
                //            else
                //                Console.WriteLine("Dropping tautology assertion {0}", f.ToString());
            }

            public void addAssumption(Predicate context, IFormula f, bool keep)
            {
                var s = simplify(f);
                if (!(s is True))
                {
                    var cp = (context == null) ? TruePredicate.get : context;
                    if (keep)
                        formulaeByPathCondition.insert(cp, s);//.Add(ps);
                    var ps = context == null ? s : new Implication(new PredicateApplication(context, new ITerm[0]), s);
                    assumptions.Add(ps);
                }
                //            else
                //                Console.WriteLine("Dropping tautology assumption {0}", f.ToString());
            }

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            private static IFormula simplify(IFormula f)
            {
                var result = f.visit(new SimplifyVisitor());
                return result;
            }

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //NNF
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            private static IFormula nnf(IFormula f)
            {
                return f.visit(new NNFVisitor());
            }

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //Miniscoping
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //Skolemizations
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            private IFormula skolemize(IFormula f)
            {
                var result = f.visit(new SkolemizationVisitor(this));
                return result;
            }

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            private IFormula getFormula(Expression e)
            {
                Debug.Assert(BooleanType.isBoolean(e.type));
                if (e is FAE)
                {
                    var fae = e as FAE;

                    if (BFunction.isMapWrite(fae.function))
                        addMapWriteAxiom(fae.function as MapWrite);
                    else if (fae.function.isITE)
                        addITEAxiom(fae.function);
                    else if (BFunction.isConjunction(fae.function))
                        return new And(getFormula(fae.arguments[0]), getFormula(fae.arguments[1]));
                    else if (BFunction.isDisjunction(fae.function))
                        return new Or(getFormula(fae.arguments[0]), getFormula(fae.arguments[1]));
                    else if (BFunction.isImplication(fae.function))
                        return new Implication(getFormula(fae.arguments[0]), getFormula(fae.arguments[1]));
                    else if (BFunction.isEquivalence(fae.function))
                        return new EquivalenceFormula(getFormula(fae.arguments[0]), getFormula(fae.arguments[1]));
                    else if (BFunction.isNegation(fae.function))
                        return new Not(getFormula(fae.arguments[0]));

                    else if (BFunction.isEquality(fae.function))
                        return new EqualityFormula(getTerm(fae.arguments[0]), getTerm(fae.arguments[1]));
                    else
                        switch (fae.function.name)
                        {
                            case "<=":
                                return
                                    new Not(new PredicateApplication(getPredicate(BFunctionTemplate.lt.getInstance()),
                                                                     new[]
                                                                     {
                                                                         getTerm(fae.arguments[1]),
                                                                         getTerm(fae.arguments[0])
                                                                     }));
                            case ">=":
                                return
                                    new Not(new PredicateApplication(getPredicate(BFunctionTemplate.lt.getInstance()),
                                                                     new[]
                                                                     {
                                                                         getTerm(fae.arguments[0]),
                                                                         getTerm(fae.arguments[1])
                                                                     }));
                            case ">":
                                return new PredicateApplication(getPredicate(BFunctionTemplate.lt.getInstance()),
                                                                new[] { getTerm(fae.arguments[1]), getTerm(fae.arguments[0]) });
                            case "<":
                                return new PredicateApplication(getPredicate(BFunctionTemplate.lt.getInstance()),
                                                                new[] { getTerm(fae.arguments[0]), getTerm(fae.arguments[1]) });
                        }
                    {
                        return new PredicateApplication(getPredicate(fae.function),
                                                        (from a in fae.arguments select getTerm(a)).ToArray());
                    }
                }
                else if (e is QuantifiedExpression)
                {
                    var qe = e as QuantifiedExpression;
                    if (BooleanType.isBoolean(qe.variable.type))
                    {
                        var et =
                            getFormula(
                                qe.expression.substitute(new ExpressionSubstitution(qe.variable,
                                                                                    new BasicLiteralExpression(
                                                                                        BooleanValue.makeBooleanValue(true)))));
                        var ef =
                            getFormula(
                                qe.expression.substitute(new ExpressionSubstitution(qe.variable,
                                                                                    new BasicLiteralExpression(
                                                                                        BooleanValue.makeBooleanValue(false)))));
                        if (qe.quantifier.isForall)
                            return new And(et, ef);
                        else
                            return new Or(et, ef);
                    }
                    else
                    {
                        var trs = (from ts in qe.triggers select (from t in ts select getTerm(t)).ToArray()).ToArray();
                        if (qe.quantifier.isForall)
                            return new UniversalFormula(getVariable(qe.variable), getFormula(qe.expression), new[] { qe.attributes }, trs);
                        else
                            return new ExistentialFormula(getVariable(qe.variable), getFormula(qe.expression), new[] { qe.attributes }, trs);
                    }
                }
                else if (e is ProgramVariableExpression)
                {
                    return new PredicateApplication(getPredicate((e as ProgramVariableExpression).programVariable),
                                                    new ITerm[0]);
                }
                else if (e is LiteralExpression)
                {
                    if (((e as LiteralExpression).value as BooleanValue).value)
                        return new True();
                    else
                        return new False();
                }
                else if (e is BoundVariableExpression)
                {
                    throw new Exception("Internal error: Boolean quantification");
                }
                else if (e is QuantifiedTypeExpression)
                    throw new Exception("Internal error: Type quantification");
                else
                    throw new Exception("Internal error: Unknown expression type : " + e.ToString());
            }

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            private ITerm getTerm(Expression e)
            {
                if (BooleanType.isBoolean(e.type) && !(e is LiteralExpression))
                    return getBooleanTerm(e);
                //                Console.WriteLine("Warning - ignoring unbooleanized {0}", e.ToString());
                //TODO: Ignoring  booleanization
                if (e is FAE)
                {
                    //TODO:Ignoring equality
                    var fae = e as FAE;
                    if (BFunction.isEquality(fae.function))
                        Console.WriteLine("Warning - ignoring equality iTerm {0}", e.ToString());
                    else if (BFunction.isMapWrite(fae.function))
                        addMapWriteAxiom(fae.function as MapWrite);
                    else if (fae.function.isITE)
                        addITEAxiom(fae.function);
                    return getFunctionApplication(fae);
                }
                if (e is QuantifiedExpression)
                    throw new Exception("Internal error: Quantification iTerm");
                if (e is ProgramVariableExpression)
                {
                    return new FunctionApplicationFormula(getFunction((e as ProgramVariableExpression).programVariable),
                                                   new ITerm[0]);
                }
                if (e is LiteralExpression)
                {
                    return new FunctionApplicationFormula(getFunction((e as LiteralExpression).value), new ITerm[0]);
                }
                if (e is BoundVariableExpression)
                {
                    return new Variable(getVariable((e as BoundVariableExpression).boundVariable));
                }
                if (e is QuantifiedTypeExpression)
                    throw new Exception("Internal error: Type quantification iTerm");
                throw new Exception("Internal error: Unknown iTerm type : " + e.ToString());
            }

            private ITerm getFunctionApplication(FAE fae)
            {
                var function = getFunction(fae.function);
                if (fae.arguments.count == 2 && isInteger(fae.function.resultType) && fae.arguments.All(isInteger))
                {
                    var a0 = fae.arguments[0] as LiteralExpression;
                    var a1 = fae.arguments[1] as LiteralExpression;
                    if (a0 != null && a1 != null)
                    {
                        var v0 = (a0.value as IntegerValue).value;
                        var v1 = (a1.value as IntegerValue).value;
                        Function f = null;
                        if (function.nameN == "+")
                            f = getFunction(v0 + v1);
                        else if (function.nameN == "-")
                            f = getFunction(v0 - v1);
                        else if (function.nameN == "*")
                            f = getFunction(v0 * v1);
                        else
                            goto skip;
                        return new FunctionApplicationFormula(f, new ITerm[0]);
                    skip:;
                    }
                    else if (isIntegerMinus(function))
                    {
                        var x = getTerm(fae.arguments[0]);
                        var m1 = new FunctionApplicationFormula(getFunction(-1), new ITerm[0]);
                        var y = new FunctionApplicationFormula(integerTimes, new[] { m1, getTerm(fae.arguments[1]) });
                        return new FunctionApplicationFormula(integerPlus, new ITerm[] { x, y });
                    }

                }
                var args = (from a in fae.arguments select getTerm(a)).ToArray();
                return new FunctionApplicationFormula(function, args);
            }
            public Function integerTimes { get { return getFunction(BFunctionTemplate.mul.getInstance()); } }
            public Function integerPlus { get { return getFunction(BFunctionTemplate.plus.getInstance()); } }
            public Function integerMinus { get { return getFunction(BFunctionTemplate.minus.getInstance()); } }
            private bool isInteger(Expression e)
            {
                return isInteger(e.type);
            }
            private bool isInteger(IType t)
            {
                return t == IntegerType.integerType;
            }

            private bool isIntegerMinus(Function f)
            {
                return f == integerMinus;
            }



            public IDictionary<Predicate, IList<IFormula>> formulaeByPathCondition = new Dictionary<Predicate, IList<IFormula>>();
            private ISet<string> stringITEAxiomCache = new HashSet<string>();
            private void addITEAxiom(StateSpace.Functions.Function of)
            {
                Debug.Assert(of.isITE);
                var tT = new FunctionApplicationFormula(trueFunction, new ITerm[0]);
                var fT = new FunctionApplicationFormula(falseFunction, new ITerm[0]);
                if (BooleanType.isBoolean(of.resultType))
                {
                    var p = getPredicate(of);
                    var name = "Boolean";
                    if (stringITEAxiomCache.Contains(name))
                        return;
                    stringITEAxiomCache.Add(name);
                    addAssumption(null, new PredicateApplication(p, new[] { tT, tT, tT }), false);
                    addAssumption(null, new PredicateApplication(p, new[] { tT, tT, fT }), false);
                    addAssumption(null, new Not(new PredicateApplication(p, new[] { tT, fT, tT })), false);
                    addAssumption(null, new Not(new PredicateApplication(p, new[] { tT, fT, fT })), false);
                    addAssumption(null, new PredicateApplication(p, new[] { fT, tT, tT }), false);
                    addAssumption(null, new Not(new PredicateApplication(p, new[] { fT, tT, fT })), false);
                    addAssumption(null, new PredicateApplication(p, new[] { fT, fT, tT }), false);
                    addAssumption(null, new Not(new PredicateApplication(p, new[] { fT, fT, fT })), false);
                }
                else
                {
                    var f = getFunction(of);
                    var name = SMTLibDumperFormulae.polish(f.resultType);
                    if (stringITEAxiomCache.Contains(name))
                        return;
                    stringITEAxiomCache.Add(name);
                    var x = new Variable(getFreshVariable("x", f.resultType));
                    var y = new Variable(getFreshVariable("y", f.resultType));
                    var ft = new FunctionApplicationFormula(f, new ITerm[] { tT, x, y });
                    var ff = new FunctionApplicationFormula(f, new ITerm[] { fT, x, y });
                    var a = sentence(new EqualityFormula(ft, x), new string[0], new[] { new ITerm[0] });
                    addAssumption(null, sentence(new EqualityFormula(ft, x), new string[0], new IEnumerable<ITerm>[0]), false);
                    addAssumption(null, sentence(new EqualityFormula(ff, y), new string[0], new IEnumerable<ITerm>[0]), false);
                }
            }
            private void addMapWriteAxiom(MapWrite muf)
            {
                var mw = getFunction(muf);
                var name = SMTLibDumperFormulae.polish(mw);
                if (stringMapWriteAxiomCache.Contains(name))
                    return;

                stringMapWriteAxiomCache.Add(name);
                var ml = getFunction(muf.relevantMapRead);
                //            Console.WriteLine("\tAdding map update axiom for {0}", muf.fullName);

                {
                    var i = (from t in muf.mapIndexTypes select new Variable(getFreshVariable("i", t))).ToArray();
                    var m = new Variable(getFreshVariable("m", muf.mapType));
                    var v = new Variable(getFreshVariable("v", muf.sourceType));
                    var miv = new ITerm[] { m }.Concat(i).Concat(new ITerm[] { v }).ToArray();
                    var mwT = new FunctionApplicationFormula(mw, miv);
                    var mwTi = new ITerm[] { mwT }.Concat(i).ToArray();
                    var mrmwiTi = new FunctionApplicationFormula(ml, mwTi);
                    //m[i:=v][i]==v
                    var a = sentence(new EqualityFormula(mrmwiTi, v), new[] { ":weight 0", ":qid map_1_" + SMTLibDumperFormulae.polish(muf.mapType) }, new[] { new ITerm[] { mrmwiTi } });
                    addAssumption(null, a, true);
                }
                //            Console.WriteLine("\t\t-------------------------------------------------------------------");
                {
                    var i = (from t in muf.mapIndexTypes select new Variable(getFreshVariable("i", t))).ToArray();
                    var j = (from t in muf.mapIndexTypes select new Variable(getFreshVariable("j", t))).ToArray();
                    var m = new Variable(getFreshVariable("m", muf.mapType));
                    var mT = new ITerm[] { m };
                    var v = new Variable(getFreshVariable("v", muf.sourceType));
                    var vT = new ITerm[] { v };
                    var mivT = mT.Concat(i).Concat(vT).ToArray();
                    var mwiv = new FunctionApplicationFormula(mw, mivT);
                    var mwivT = new ITerm[] { mwiv };
                    var mwivjT = mwivT.Concat(j).ToArray();
                    var mrmwivj = new FunctionApplicationFormula(ml, mwivjT);
                    var mjT = mT.Concat(j).ToArray();
                    var mrmj = new FunctionApplicationFormula(ml, mjT);
                    var mrmj_eq_mrmwivj = new EqualityFormula(mrmwivj, mrmj);
                    IFormula neqs = null;
                    {
                        for (var x = 0; x < i.Length; x++)
                        {
                            var neq = new Not(new EqualityFormula(i[x], j[x]));
                            if (ReferenceEquals(neqs, null))
                                neqs = neq;
                            else
                                neqs = new Or(neqs, neq);
                        }
                    }
                    //i!=j => m[i:=v][j]==m[j]
                    var a = sentence(new Implication(neqs, mrmj_eq_mrmwivj), new[] { ":weight 0", ":qid map_2_" + SMTLibDumperFormulae.polish(muf.mapType) }, new[] { new ITerm[] { mrmwivj } });
                    //                Console.WriteLine("\t\tAdding !i assumption {0}", a.ToString());
                    addAssumption(null, a, true);
                }
                var map_4_axiom = false;
                if (map_4_axiom)
                {
                    var i = (from t in muf.mapIndexTypes select new Variable(getFreshVariable("i", t))).ToArray();
                    var m = new Variable(getFreshVariable("m", muf.mapType));
                    var v1 = new Variable(getFreshVariable("v1", muf.sourceType));
                    var v2 = new Variable(getFreshVariable("v2", muf.sourceType));
                    var miv1 = new ITerm[] { m }.Concat(i).Concat(new ITerm[] { v1 }).ToArray();
                    var mwT1 = new FunctionApplicationFormula(mw, miv1);
                    var miv12 = new ITerm[] { mwT1 }.Concat(i).Concat(new ITerm[] { v2 }).ToArray();
                    var mwT12 = new FunctionApplicationFormula(mw, miv12);
                    var miv2 = new ITerm[] { m }.Concat(i).Concat(new ITerm[] { v2 }).ToArray();
                    var mwT2 = new FunctionApplicationFormula(mw, miv2);
                    //m[i:=v1][i:=v2]==m[i:=v2]
                    var a = sentence(new EqualityFormula(mwT12, mwT2), new[] { ":weight 0", ":qid map_4_" + SMTLibDumperFormulae.polish(muf.mapType) }, new List<ITerm[]>());
                    addAssumption(null, a, true);
                }
                //            Console.WriteLine("\t\t-------------------------------------------------------------------"); 
                var mudts = TypeTuple.make(muf.mapTypeArguments);
                var dtss = getInstanceTypes(muf.mapType);
                //            Console.WriteLine("\tmudts {0}", mudts.ToString());
                //            if (dtss.Count() > 1)
                {
                    foreach (var dts in dtss)
                    {
                        //                    Console.WriteLine("\tdts {0}", dts.ToString());
                        if (!dts.Equals(mudts))
                        {
                            var mltf = muf.mapRead(dts);
                            var mlt = getFunction(mltf);
                            var i =
                                (from t in muf.mapIndexTypes select new Variable(getFreshVariable("i", t))).ToArray();
                            var j =
                                (from t in mltf.mapIndexTypes select new Variable(getFreshVariable("j", t))).ToArray();
                            var m = new Variable(getFreshVariable("m", muf.mapType));
                            var mT = new ITerm[] { m };
                            var v = new Variable(getFreshVariable("v", muf.sourceType));
                            var vT = new ITerm[] { v };
                            var mivT = mT.Concat(i).Concat(vT).ToArray();
                            var mwiv = new FunctionApplicationFormula(mw, mivT);
                            var mwivT = new ITerm[] { mwiv };
                            var mwivjT = mwivT.Concat(j).ToArray();
                            var mrmwivj = new FunctionApplicationFormula(mlt, mwivjT);
                            var mrmwivjT = new ITerm[] { mrmwivj };
                            var mjT = mT.Concat(j).ToArray();
                            var mrmj = new FunctionApplicationFormula(mlt, mjT);
                            var mrmj_eq_mrmwivj = new EqualityFormula(mrmwivj, mrmj);
                            //m[i:=v][j]==m[j] //type(i)!=type(j)
                            var a = sentence(mrmj_eq_mrmwivj, new[] { ":weight 0", ":qid map_3_" + SMTLibDumperFormulae.polish(muf.mapType) + "_" + SMTLibDumperFormulae.polish(dts) + "_" + SMTLibDumperFormulae.polish(mudts) }, new[] { new ITerm[] { mrmwivj } });
                            //                        Console.WriteLine("\t\tAdding assumption {0}", a.ToString());
                            addAssumption(null, a, true);
                        }
                    }
                }
            }

            private IEnumerable<ITypeTuple> getInstanceTypes(MapType mapType)
            {
                if (mapReads.ContainsKey(mapType.ToStringN()))
                    return mapReads[mapType.ToStringN()].Values.ToArray();
                else return new ITypeTuple[0];
            }

            private static IFormula sentence(IFormula f, IEnumerable<string> attributes, IEnumerable<IEnumerable<ITerm>> triggers)
            {
                while (f.ffreeVariables.Count > 0)
                {
                    var atts = f.ffreeVariables.Count == 1 ? attributes : new string[0];
                    var trigs = f.ffreeVariables.Count == 1 ? triggers : new List<List<ITerm>>();
                    f = new UniversalFormula(f.ffreeVariables.First(), f, atts, trigs);
                }
                return f;
            }

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#if DEBUG
            IDictionary<string, Expression> booleanExpressionMap = new Dictionary<string, Expression>();
#endif
            IDictionary<string, Function> esToBFMap = new Dictionary<string, Function>();
            IDictionary<Function, Expression> bfToEMap = new Dictionary<Function, Expression>();
            public IDictionary<string, Function> expressionStringToBooleanFunctionMap { get { return esToBFMap; } }
            public IDictionary<Function, Expression> booleanFunctionToExpressionMap { get { return bfToEMap; } }

            private ITerm getBooleanTerm(Expression e)
            {
                Debug.Assert(BooleanType.isBoolean(e.type));
                if (e is LiteralExpression)
                    return ((e as LiteralExpression).value as BooleanValue).value
                               ? new FunctionApplicationFormula(getFunction(BooleanValue.makeBooleanValue(true)), new ITerm[0])
                               : new FunctionApplicationFormula(getFunction(BooleanValue.makeBooleanValue(false)), new ITerm[0]);

                Function f;
                var key = e.ToStringN();
                if (!esToBFMap.TryGetValue(key, out f))
                {
#if DEBUG
                    Debug.Assert(!booleanExpressionMap.ContainsKey(key));
                    booleanExpressionMap[key] = e;
#endif

                    var fvt = TypeTuple.make(from fv in e.freeVariables select fv.type);
                    f = getFreshFunction(booleanFunctionPrefix, fvt, BooleanType.booleanType);
                    esToBFMap[key] = f;
                    bfToEMap[f] = e;
                }

                //Add definition to CURRENT scope
                var s = makeSentenceEquality(f, e);
                Debug.Assert(cfCurrentContext != null);
                addAssumption(cfCurrentContext, s, !f.argumentTypes.Any()); // true);

                var result = new FunctionApplicationFormula(f, (from fv in e.freeVariables select new Variable(getVariable(fv))).ToArray());
                return result;
            }

            private IFormula makeSentenceEquality(Function f, Expression e)
            {
                var fvs = e.freeVariables.ToArray();
                Debug.Assert(f.argumentTypes.Count() == fvs.Length);
                for (var i = 0; i < f.argumentTypes.Count(); i++)
                    Debug.Assert(f.argumentTypes[i].isEquivalent(fvs[i].type));

                var bvs = (from fv in fvs select procedure.makeFreshBoundVariable(fv.type)).ToArray();
                var s = new ExpressionSubstitution(fvs,
                                                   (from bv in bvs select new BasicBoundVariableExpression(bv)).ToArray());
                var lvs = (from bv in bvs select getVariable(bv)).ToArray();
                var vs = (from lv in lvs select new Variable(lv)).ToArray();

                IFormula r =
                    new EquivalenceFormula(
                        getFormula(e.substitute(s)),
                        new EqualityFormula(
                            new FunctionApplicationFormula(f, vs),
                            new FunctionApplicationFormula(getFunction(BooleanValue.makeBooleanValue(true)), new ITerm[0])
                            )
                        );

                foreach (var lv in lvs)
                    r = new Formulae.UniversalFormula(lv, r, new string[0], new List<List<ITerm>>());

                return r;
            }

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            private static string normalizeName(string p)
            {
                if (p == "%")
                    p = "mod";
                if (p == "/")
                    p = "div";
                return p.Replace('#', '@').Replace("<:", "@SubType");
            }

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            internal static string funcName(StateSpace.Functions.Function f)
            {
                string result;
                if (f is MapRead)
                {
                    var ml = f as MapRead;
                    result = ml.templateName + "$";
                    foreach (var t in ml.typeArguments)
                        result += SMTLibDumperFormulae.polish(t) + "$";
                }
                else if (f is MapWrite)
                {
                    var ml = f as MapWrite;
                    result = ml.templateName + "$";
                    foreach (var t in ml.typeArguments)
                        result += SMTLibDumperFormulae.polish(t) + "$";
                }
                else if (f is FunctionTemplateInstance)
                {
                    var fti = f as FunctionTemplateInstance;
                    result = fti.templateName;
                    if (fti.typeArguments.Any())
                    {
                        result += "$";
                        foreach (var t in fti.typeArguments)
                            result += SMTLibDumperFormulae.polish(t) + "$";
                    }
                }
                else throw new Exception();

                return normalizeName(result);
            }

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            private IDictionary<Function, StateSpace.Functions.Function> ssFunctionInverseMap = new Dictionary<Function, StateSpace.Functions.Function>();
            public Function getFunction(StateSpace.Functions.Function function)
            {
                var result = addFunction(funcName(function), function.argumentTypes, function.resultType, isInterpretedFunctionName(function.name));
                ssFunctionMap[function] = result;
                ssFunctionInverseMap[result] = function;
                return result;
            }
            public Function tryGetFunction(StateSpace.Functions.Function function)
            {
                Function f;
                if (functionMap.TryGetValue(funcName(function), out f))
                    return f;
                return null;
            }
            public Function getMapRead(Function function)
            {
                return getFunction((ssFunctionInverseMap[function] as MapWrite).relevantMapRead);
            }

            public bool isNumber(Function f)
            {
                return numberInverseMap.ContainsKey(f);
            }
            public bool isBooleanLiteral(Function f)
            {
                return f == trueFunction || f == falseFunction;
            }
            //            Predicate ltPredicate;
            public Predicate ltPredicate
            { get; private set; }
            public BigInteger getNumber(Function f)
            {
                return numberInverseMap[f];
            }

            public bool isMapWrite(Function f)
            {
                return (ssFunctionInverseMap.ContainsKey(f) && ssFunctionInverseMap[f] is MapWrite);
            }

            public bool isMapRead(Function f)
            {
                return (ssFunctionInverseMap.ContainsKey(f) && ssFunctionInverseMap[f] is MapRead);
            }
            public const string pathConditionPrefix = Transformations.StructuredProgramToCFG.pathConditionPrefix;
            public const string booleanFunctionPrefix = @"$@bf";

            public bool isPathCondition(IPredicate p)
            {//TODO properly
                return p.nameN.StartsWith(pathConditionPrefix);
            }

            public bool isLaterPathCondition(IPredicate p1, IPredicate p2)
            {//TODO properly
                return p1.nameN.CompareTo(p2.nameN) > 0;
            }
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            public static bool isInterpretedFunctionName(string name)
            {
                return
                    name == "+" ||
                    name == "-" ||
                    name == "*" ||
                    name == "div" ||
                    name == "mod" ||
                    name == "true" ||
                    name == "false" ||
                    name.StartsWith(BFunctionTemplate.iteName) ||
                    isDecimal(name)
                    ;
            }
            private Function addFunction(string name, ITypeTuple argumentTypes, IType resultType, bool isInterpreted)
            {
                Debug.Assert(isInterpretedFunctionName(name) == isInterpreted);
                Function f;
                if (functionMap.TryGetValue(name, out f))
                {
                    Debug.Assert(f.argumentTypes.Count() == argumentTypes.Count());
                    for (var i = 0; i < argumentTypes.Count(); i++)
                        Debug.Assert(f.argumentTypes[i].isEquivalent(argumentTypes[i]));
                    Debug.Assert(f.resultType.isEquivalent(resultType));
                }
                else
                {
                    functionMap[name] = f =
                        (isInterpreted) ?
                          new InterpretedFunction(name, argumentTypes, resultType)
                            :
                          (Function)new UFunction(name, argumentTypes, resultType);
                }
                return f;
            }

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            private readonly IDictionary<BoundVariable,LVar> bvToLVarMap = new Dictionary<BoundVariable,LVar>();
            private LVar getVariable(BoundVariable boundVariable)
            {
                LVar v;
                var name = normalizeName(boundVariable.name);
                if (bvToLVarMap.TryGetValue(boundVariable, out v))
                    Debug.Assert(boundVariable.type.isEquivalent(v.type)); // return v;
                else
                {
                    v = getFreshVariable(name,boundVariable.type);
                    bvToLVarMap[boundVariable] = v;
                }
                return v;

/*                if (lVarMap.TryGetValue(name, out v))
                {
                    Debug.Assert(v.type.isEquivalent(boundVariable.type));
                }
                else
                    lVarMap[name] = v = new LVar(name, boundVariable.type, name);
                return v;*/
            }

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            public Predicate getPredicate(ProgramVariable programVariable)
            {
                Debug.Assert(BooleanType.isBoolean(programVariable.type));
                var name = normalizeName(programVariable.name);
                var result = addPredicate(name, TypeTuple.make(), false);
                ssProgramVariableMap[programVariable] = result;
                return result;
            }
            public Predicate tryGetPredicate(ProgramVariable programVariable)
            {
                Debug.Assert(BooleanType.isBoolean(programVariable.type));
                var name = normalizeName(programVariable.name);
                Predicate p;
                if (predicateMap.TryGetValue(name, out p))
                    return p;
                else
                    return null;
            }

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            public Predicate getPredicate(StateSpace.Functions.Function function)
            {
                Debug.Assert(BooleanType.isBoolean(function.resultType));
                var name = funcName(function);
                var result = addPredicate(name, function.argumentTypes, isInterpretedPredicateName(name));
                ssFunctionMap[function] = result;
                return result;
            }
            public Predicate tryGetPredicate(StateSpace.Functions.Function function)
            {
                Debug.Assert(BooleanType.isBoolean(function.resultType));
                var name = funcName(function);
                Predicate p;
                if (predicateMap.TryGetValue(name, out p))
                    return p;
                return null;
            }

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            private Predicate addPredicate(string name, ITypeTuple argumentTypes, bool isInterpreted)
            {
                Debug.Assert(isInterpretedPredicateName(name) == isInterpreted);
                //                Debug.Assert(!name.Contains(BasicFunctionTemplate.lt.name) || name == BasicFunctionTemplate.lt.name);
                Predicate p;
                if (predicateMap.TryGetValue(name, out p))
                {
                    Debug.Assert(p.argumentTypes.Count() == argumentTypes.Count());
                    for (var i = 0; i < argumentTypes.Count(); i++)
                        Debug.Assert(p.argumentTypes[i].isEquivalent(argumentTypes[i]));
                }
                else
                {
                    predicateMap[name] = p = (isInterpreted) ?
                        ((name == BFunctionTemplate.lt.name) ? (Predicate)LTPredicate.get : new InterpretedPredicate(name, argumentTypes)) :
                        (Predicate)new UPredicate(name, argumentTypes);
                }
                return p;
            }

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            public static string makeBoolSuffix(bool[] balls)
            {
                var result = "";
                foreach (var b in balls)
                    if (b)
                        result += "_" + "T";
                    else
                        result += "_" + "F";
                return result;
            }

            internal static bool isFullInterpreted(Clause g)
            {
                return g.literals.All(isFullInterpreted);
            }

            internal static bool isFullInterpreted(Literal a)
            {
                return isInterpreted(a.f.spredicate) && a.f.subTerms.All(isInterpreted);
            }

            private static bool isInterpreted(ITerm t)
            {
                return
                    t.isFunctionApplication &&
                    isInterpreted(t.asFunctionApplication.function) &&
                    t.asFunctionApplication.args.All(isInterpreted);
            }

            private static bool isInterpreted(IPredicate p)
            {
                return p is EqualityFormula || isInterpreted(p as Predicate);
            }

            #region Nested type: Stage

            delegate void Stage();

            #endregion
        }
    }
}