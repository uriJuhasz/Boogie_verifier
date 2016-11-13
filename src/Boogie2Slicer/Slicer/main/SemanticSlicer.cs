using System;
using System.Diagnostics;
using System.IO;
using System.Linq;
using Slicer.Analyzers;
using Slicer.Analyzers.Tools;
using Slicer.Transformations;
using Procedure = Slicer.Programs.Procedures.Procedure;
using System.Collections.Generic;
using Slicer.Programs.Expressions;
using Slicer.StateSpace.Functions;
using Slicer.Programs.Statements;
using Slicer.Programs.Expressions.utilities;
using Slicer.Programs.Procedures;

/////////////////////////////////////////////
//Semantic slicer for Boogie programs

namespace Slicer.main
{
    ////////////////////////////////////////////////////////
    /// Main Slicer class
    public class SemanticSlicer
    {
        ///////////////////////////////////////////////////////
        private readonly Microsoft.Boogie.Program boogieProgram;
        private readonly Microsoft.Boogie.Implementation implementation;

        public SemanticSlicer(Microsoft.Boogie.Implementation implementation, Microsoft.Boogie.Program boogieProgram)
        {
            Debug.Assert(implementation != null);
            Debug.Assert(boogieProgram != null);

            this.implementation = implementation;
            this.boogieProgram = boogieProgram;
        }

        ///////////////////////////////////////////////////////
        public static Dictionary<string, IList<Expression>> expDir0 = null;
        public static Dictionary<string, IList<Expression>> expDir6 = null;
        public static Stopwatch totalSW;
        public void slice()
        {
            Analyzers.FOLConverter.Slicer.log(0, "Slicer starting - function \"" + implementation.Name + "\"");
            totalSW = new Stopwatch();
            totalSW.Start();
#if DEBUG
#else
//            try
            {
#endif
            var ppSW = new Stopwatch();
            ppSW.Start();
            Analyzers.FOLConverter.Slicer.log(0, "Preprocessing:");
            #region flags
            bool dump0bpl = true;
            bool dump1bpl = false;
            bool dump2bpl = false;
            bool dump3bpl = false;
            bool dump4bpl = false;
            bool dump5bpl = false;
            bool dump6bpl = true;
            bool dump7bpl = false;

            bool dump0pdf = true;
            bool dump4pdf = true;
            bool dump7pdf = false;
            #endregion

            var procedure = new StateSpaceAnalyzer(boogieProgram).getProcedure(implementation);
#if DEBUG
            recordExps(procedure,ref expDir0);
#endif

            string baseFileName = getBaseFileName(procedure);

            dumpBPLIf(procedure, baseFileName, "0", dump0bpl);
            dumpPDFIf(procedure, baseFileName, "0", dump0pdf);
            inlineFunctions(procedure);

            dumpBPLIf(procedure, baseFileName, "1", dump1bpl);
            determinizeBranches(procedure);
            dumpBPLIf(procedure, baseFileName, "2", dump2bpl);
            consolidateBranchConditionAssignments(procedure);

            dumpBPLIf(procedure, baseFileName, "3", dump3bpl);
            bool cse = commonSubexpressionElimination(procedure);

            dumpBPLIf(procedure, baseFileName, "4", dump4bpl);
            dumpPDFIf(procedure, baseFileName, "4", dump4pdf);

            removeUnusedSymbols(procedure);
            dumpBPLIf(procedure, baseFileName, "5", dump5bpl);

            removeTypeQuantification(procedure);

//#if DEBUG
            recordExps(procedure,ref expDir6);
//#endif

            ppSW.Stop();
            Analyzers.FOLConverter.Slicer.log(0, " - {0,6}s", ppSW.ElapsedMilliseconds / 1000);

            dumpBPLIf(procedure, baseFileName, "6", dump6bpl);

            FOLAnalyzer(procedure);

            totalSW.Stop();
            Analyzers.FOLConverter.Slicer.log(0, "Total time - {0}: {1,6}s", procedure.name, totalSW.ElapsedMilliseconds / 1000);

            dumpBPLIf(procedure, baseFileName, "7", dump7bpl);
            dumpPDFIf(procedure, baseFileName, "7", dump7pdf);
#if DEBUG
#else
            }/*catch(Exception e)
            {
                Analyzers.FOLConverter.Slicer.log(0, "XXXXX Slicer aborted due to an error - " + e.Message);
            }*/
#endif
            Analyzers.FOLConverter.Slicer.log(0, "Slicer Ended - function \"" + implementation.Name + "\"");
        }

        private static void recordExps(ProcedureImp procedure,ref Dictionary<string, IList<Expression>> dir)
        {
            dir = new Dictionary<string, IList<Expression>>();
            foreach (var bb in procedure.blocks)
            {
                var n = bb.statements.Count;
                var nn = n - 1;
                if (bb.successors.Count == 0)
                    while (nn >= 0)
                    {
                        var s = bb.statements[nn].statement as Assert;
                        if (s != null)
                            break;
                        nn--;
                    }
                var nnn = nn;
                while (nnn>=0)
                {
                    var s = bb.statements[nnn].statement as Assume;
                    if (s != null && isFalse(s.expression))
                    {
                        nnn--;
                        while (nnn > 0)
                        {
                            var ss = bb.statements[nnn].statement as Assert;
                            if (ss != null)
                            {
                                nnn++;
                                break;
                            }
                            nnn--;
                        }
                        nn = nnn;
                    }
                    nnn--;
                }                    

                n = nn;

                dir[bb.label] = new List<Expression>();
                for (var i = 0; i < n; i++)
                {
                    var si = bb.statements[i];
                    if (si.statement is PredicateStatement)
                        dir[bb.label].Add((si.statement as PredicateStatement).expression);
                }
            }
        }

        private static bool isFalse(Expression expression)
        {
            return expression.ToString() == @"!true" || expression.ToString() == @"false";
        }

        private static void FOLAnalyzer(ProcedureImp procedure)
        {
            var analysisSW = new Stopwatch();
            analysisSW.Start();
            Console.WriteLine("FOLing around:");
            Analyzers.FOLConverter.Slicer.slice(procedure);
            analysisSW.Stop();
            Console.WriteLine("FOL - {0,6}s", analysisSW.ElapsedMilliseconds / 1000);
        }

        private string getBaseFileName(ProcedureImp procedure)
        {
            string fileName = Microsoft.Boogie.CommandLineOptions.Clo.Files.First();
            if (fileName.EndsWith(@".bpl"))
                fileName = fileName.Substring(0, fileName.Length - 4);
            int originalStatementCount = procedure.numStatements;

            string baseFileName = calculateBaseFileName(fileName);
            return baseFileName;
        }

        private string calculateBaseFileName(string fileName)
        {
            string baseFileName = fileName + "." + implementation.Name;

            {
                const int MAX_PATH = 260;
                const int extra = 30;
                if (implementation.Name.Length + fileName.Length + extra >= MAX_PATH)
                {
                    baseFileName = fileName + "." +
                                   implementation.Name.Substring(0, MAX_PATH - (extra + fileName.Length));
                }
            }

            return baseFileName;
        }

        private void inlineFunctions(Procedure procedure)
        {
            var fi = new ForwardEvaluator<FunctionInliner>(procedure, new FunctionInliner(procedure));
            fi.analyze();
//            checki(procedure);
        }

        private static void determinizeBranches(Procedure procedure)
        {
            BranchDeterminizer.analyze(procedure);
        }

        private static void consolidateBranchConditionAssignments(Procedure procedure)
        {
            BranchConditionAssignmentConsolidator.consolidate(procedure);
        }

        private static bool commonSubexpressionElimination(Procedure procedure)
        {
            bool cse = false;

            if (cse)
            {
                var ser = new BackwardEvaluator<SubexpressionCounter>(procedure, new SubexpressionCounter(procedure));
                ser.analyze();
                SubexpressionEliminator.appendSubexpressions(procedure);
                procedure.cfg.validate();
            }

            return cse;
        }

        private static void removeUnusedSymbols(Procedure procedure)
        {
            UnusedSymbolRemover.Remove(procedure);
        }

        private static void removeTypeQuantification(Procedure procedure)
        {
            var qtc = new QuantifiedTypeCollector(procedure);
            foreach (var bb in procedure.blocks)
                foreach (var si in bb.statements)
                    qtc.collect(si.statementId);
            TypeQuantificationRemover.remove(procedure, qtc);
        }

        private static void dumpPDFIf(Procedure procedure, string baseFileName, string s, bool b)
        {
            if (b)
            {
                Analyzers.FOLConverter.Slicer.log(3,"Dumping " + s + " PDF file");
                string preCFGFileName = baseFileName + "." + s;
                procedure.dump(preCFGFileName);
            }
        }

        private void checki(Procedure procedure)
        {
            foreach (var bb in procedure.blocks)
                foreach (var s in bb.statements)
                    checki(s.statement);
        }

        private void checki(Statement statement)
        {
            var p = statement as PredicateStatement;
            if (p != null)
                checki(p.expression);
        }

        private void checki(Expression e)
        {
            if (e is FAE)
            {
                var fae = e as FAE;
                foreach (var a in fae.arguments)
                    checki(a);
                Debug.Assert(!fae.function.name.StartsWith(@"read"));
            } else if (e is QuantifiedTypeExpression)
                checki((e as QuantifiedTypeExpression).expression);
            else if (e is QuantifiedExpression)
                checki((e as QuantifiedExpression).expression);
        }

        private static void dumpBPLIf(Procedure procedure, string baseFileName, string s, bool b)
        {
            if (b)
            {
                Analyzers.FOLConverter.Slicer.log(3,"Dumping Boogie " + s + " file");
                string BoogieFileName = baseFileName + "." + s + ".slicer.bpl";
                var boogieFile = new StreamWriter(BoogieFileName);
                var bd = new BoogieDumper(procedure, boogieFile);
                bd.dump();
                boogieFile.Close();
            }
        }

        class FunctionCounter : Programs.Expressions.utilities.ExpressionVisitor
        {
            public readonly ISet<Function> functions = new HashSet<Function>();
            public FunctionCounter()
            {
            }
            public Expression visit(LiteralExpression e)
            {
                return e;
            }

            public Expression visit(QuantifiedExpression e)
            {
                return e;
            }

            public Expression visit(QuantifiedTypeExpression e)
            {
                return e;
            }

            public Expression visit(FAE e)
            {
                functions.Add(e.function);
                return e;
            }

            public Expression visit(ProgramVariableExpression e)
            {
                return e;
            }

            public Expression visit(BoundVariableExpression e)
            {
                return e;
            }
        }

        private static void visitRec(Expression e, ExpressionVisitor v)
        {
            e.visit(v);
            foreach (var se in e.subExpressions)
                visitRec(se, v);
        }
        private static void removeSingleOccurrenceSymbols(Procedure procedure)
        {
            //remove axioms with single occurrence functions
            var fMap = new Dictionary<string, int>();
            var fSTMap = new Dictionary<string, IList<Statement>>();
            foreach (var bb in procedure.blocks)
                foreach (var st in bb.getStatements())
                    if (st is PredicateStatement)
                    {
                        var exp = (st as PredicateStatement).expression;
                        var fc = new FunctionCounter();
                        visitRec(exp, fc);
                        foreach (var f in fc.functions)
                        {
                            if (!fMap.ContainsKey(f.name))
                                fMap[f.name] = 0;
                            fMap[f.name]++;
                            IList<Statement> e;
                            if (!fSTMap.TryGetValue(f.name, out e))
                                e = fSTMap[f.name] = new List<Statement>();
                            e.Add(st);
                        }
                    }
            Console.WriteLine("");
            foreach (var kv in fMap)
                if (!isInterpreted(kv.Key))
                    if (kv.Value == 1)
                    {
                        Console.WriteLine("Single occurrence : {0}", kv.Key);
                    }
            foreach (var kv in fSTMap)
                if (!isInterpreted(kv.Key))
                    if (kv.Value.Count == 1)
                {
                    Console.WriteLine("Single occurrence : {0,10} at {1}", kv.Key, kv.Value.First());
                }
//            Debugger.Break();
        }

        private static bool isInterpreted(string name)
        {
            return
                    name == "==" ||
                    name == "!=" ||

                    name == "<" ||
                    name == ">" ||
                    name == ">=" ||
                    name == "<=" ||

                    name == "+" ||
                    name == "-" ||
                    name == "*" ||
                    name == "div" ||
                    name == "mod" ||
                    name == "true" ||
                    name == "false" ||
                    isDecimal(name);
        }
        internal static bool isDecimal(string name)
        {
            return name.Length > 0 && ((name[0] == '-' && name.Length>1) || isdigit(name[0])) && name.Skip(1).All(isdigit);
        }
        internal static bool isdigit(char c)
        {
            return "0123456789".Contains(c);
        }
    }
}