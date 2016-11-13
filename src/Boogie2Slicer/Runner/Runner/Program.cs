using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace Runner
{
    class Entry
    {
        public Entry(string dirName,string bplName, string procName)
        {
            this.dirName = dirName;
            this.bplName = bplName;
            this.procName = procName;
        }
        public readonly string dirName;
        public readonly string bplName;
        public readonly string procName;
    }
    class CollectionRunner
    {
        /*
Actors
	Factorial.act
	
	
		         * */
        public static Entry[] entries = new[] {
            new Entry(@"VCC",@"vcc2_comp.bpl",@"find"),
            new Entry(@"VCC1",@"vcc2_comp.1.bpl",@"find"),
            new Entry(@"VCC2",@"vcc2_RedBlackTree.bpl",@"right_rotate"),
            //            new Entry(@"AVLTree.Chalice",@"AVLTree.bpl",@"AVLTree.init"),
            /*            new Entry(@"B4",@"B4.bpl",@"Map.Remove"),
                        new Entry(@"BFS",@"BFS.bpl",@"BreadthFirstSearch.BFS"),
                        new Entry(@"FactorialActor",@"Actors.bpl",@"Factorial.act"),
                        new Entry(@"AVLTree.Chalice",@"AVLTree.bpl",@"AVLTreeNode.insert"),
                        new Entry(@"AVLTree.Chalice",@"AVLTree.bpl",@"AVLTreeNode.remove"),
                        new Entry(@"AVLTree.Chalice",@"AVLTree.bpl",@"AVLTreeNode.pruneMax"),
                        new Entry(@"Stereotypes",@"Sequence.bpl",@"InsertAtTheMiddleAfter"),
                        new Entry(@"Stereotypes",@"PIP.bpl",@"Node..acquire"),
                        new Entry(@"Stereotypes",@"PIP.bpl",@"Node..updatePriorities"),
                        new Entry(@"Stereotypes",@"PIP.bpl",@"AddToEnd"),
                        new Entry(@"Stereotypes",@"PIP.bpl",@"AddSubTree"),
              */
/*            new Entry(@"TreeBarrier",@"TreeBarrier.bpl",@"Node.barrier"),
            new Entry(@"AVLTreeGhostField",@"AVLTreeGhostField.bpl",@"AVLTree.InsertRecursion"),
            new Entry(@"AVLTree.Dafny",@"AVLTree.bpl",@"AVLTree.InsertRecursion"),
            new Entry(@"AVLTree.Chalice",@"AVLTree.bpl",@"AVLTreeNode.rebalanceLR"),
            new Entry(@"AVLTree.Chalice",@"AVLTree.bpl",@"AVLTreeNode.rebalanceRL"),
            new Entry(@"Valentine",@"cachedBuilds0.bpl",@"Impl$$_module.__default.EvalLemma"),
            new Entry(@"Valentine",@"COST-verif-comp-2011-4-FloydCycleDetect.dfy.bpl",@"Impl$$_module.Node.AnalyzeList")*/
//            new Entry(@"FrozenObjects",@"FrozenObjects.bpl",@"SExpressionSimplifier.Nary.Simplify"),*/
        };
        static string rootDir;
        static void Main(string[] args)
        {
            rootDir = Directory.GetCurrentDirectory();
            foreach (var e in entries)
                new EntryRunner(rootDir,e).run();
        }

        static void log(string fs,params string[] xs)
        {
            var s = String.Format(fs, xs);
            Console.WriteLine(s);
            if (logFile != null)
                logFile.WriteLine(s);
        }

        public static StreamWriter logFile;

        public static string boogieExe = @"d:\work\slicer\trunk\src\Binaries\Boogie.exe";
        public static string slicerBaseParams = @"/slice /noProver";
        public static string boogieProcParam = @"/proc:";

        public static string boogieBaseParams = @"/trace /traceTimes /proverLog:@PROC@.boogie.smt2";

        public static string z3exe = @"d:\provers\z3-4.4.1-x64-win\bin\z3.exe";
        public static string z3BaseArgs = @"-smt2 -st -v:1";
        class EntryRunner
        {
            Entry e;
            string rootDir;
            public EntryRunner(string rootDir, Entry e)
            {
                this.e = e;
                this.rootDir = rootDir;
            }

            public static string baseLogFileName = "slicer.log";
            public static string baseSumLogFileName = "slicer.summary.log";
            void logBoth(string fs,params string[] xs)
            {
                var s = String.Format(fs, xs);
                runLog(s);
                if (CollectionRunner.logFile!=null)
                    CollectionRunner.logFile.WriteLine(s);
            }

            void runLog(string fs,params string[] xs)
            {
                var s = String.Format(fs, xs);
                Console.WriteLine(s);
                if (runLogFile != null)
                    runLogFile.WriteLine(s);
            }
            public void run()
            {
                log("Running {0} - {1} - {2}", e.dirName, e.bplName, e.procName);
                var bplDir = Path.Combine(rootDir, e.dirName);
                if (!Directory.Exists(bplDir))
                {
                    log("Runner.Error: Cannot find bpl directory {0}", bplDir);
                    return;
                }
                var bplFileNameOrig = Path.Combine(bplDir, e.bplName);
                if (!File.Exists(bplFileNameOrig))
                {
                    log("Runner.Error: Cannot find bpl file {0}", bplFileNameOrig);
                    return;
                }
                var boogieSlicerArgs = slicerBaseParams + " " + boogieProcParam + e.procName + " " + e.bplName;
                logBoth("Running slicer: cmdline");
                logBoth("boogie.cmdLine: {0}", boogieExe + " " + boogieSlicerArgs);
                var timeStamp = DateTime.Now.ToString("yyyyMMdd-HHMMss");
                log("Timestamp: {0}", timeStamp);
                var runDirName = @"run-" + e.bplName + "_" + e.procName + "_" + timeStamp;
                var runPath = Path.Combine(bplDir, runDirName);
//                try
                {
                    var runDirInfo = Directory.CreateDirectory(runPath);
                    if (!runDirInfo.Exists)
                    {
                        log("Runner.Error: Error creating directory {0}", runPath);
                        return;
                    }
                    var logFileName = Path.Combine(runPath, baseLogFileName);
                    runLogFile = File.AppendText(logFileName);
                    var sumLogFileName = Path.Combine(runPath, baseSumLogFileName);
                    CollectionRunner.logFile = File.AppendText(sumLogFileName);
                    logBoth("Running {0} - {1} - {2}", e.dirName, e.bplName, e.procName);
                    logBoth("  Boogie: {0}", boogieExe);
                    logBoth("  Boogie params: {0}", slicerBaseParams);
                    logBoth("  Z3: {0}", z3exe);
                    logBoth("  Z3 params: {0}", z3BaseArgs);
                    {
                        var bplFileName = Path.Combine(runPath, e.bplName);
                        File.Copy(bplFileNameOrig, bplFileName,true);

                        runLog("Running Boogie Slicer");
                        runLogFile.Flush();
                        var slicerDump = runExe(runPath, boogieExe, boogieSlicerArgs);
                        var sPrefix = e.procName;  //e.dirName + "-" + e.bplName + "-" + e.procName;
                        parseSlicerDump(sPrefix,slicerDump);
                        runLog("Running Boogie Slicer done");
                        runLogFile.Flush();
                    }
                    {
                        runLog("Running Boogie");
                        var boogieArgs = boogieBaseParams + " " + boogieProcParam + e.procName + " " + e.bplName;
                        runLogFile.Flush();
                        runExe(runPath, boogieExe, boogieArgs);
//                        var sPrefix = e.procName;  //e.dirName + "-" + e.bplName + "-" + e.procName;
//                        parseBoogieDump(sPrefix,boogieDump);
                        runLog("Running Boogie done");
                        runLogFile.Flush();

                    }
                    {
                        var runFiles = Directory.EnumerateFiles(runPath);
                        var runSMTs = new SortedSet<string>(from s in runFiles where s.EndsWith(@".smt2") select s);
                        foreach (var s in runSMTs)
                        {
                            runLog("Running Z3 on {0}",s);
                            var z3Args = z3BaseArgs + " " + s;
                            runLogFile.Flush();
                            var z3dump = runExe(runPath,z3exe,z3Args);
                            parseZ3Dump(z3dump,e, s);
                            runLog("Running Z3 done",s);
                            runLogFile.Flush();
                            CollectionRunner.logFile.Flush();
                        }
                    }
                }/*catch(Exception e)
                {
                    log("Runner.Error: {0}", e.Message);
                }*/
                runLogFile.Close();
                runLogFile = null;
                CollectionRunner.logFile.Close();
                CollectionRunner.logFile = null;
                log("Done running {0} - {1} - {2}", e.dirName, e.bplName, e.procName);
            }

            private void parseSlicerDump(string prefix, IList<string> slicerDump)
            {
                foreach (var s in slicerDump)
                    if (s!=null)
                    {
                        logIfSlicerStageEnd("Extracting CFG",       "start", prefix, s);
                        logIfSlicerStageEnd("Building Universes",   "build", prefix, s);
                        logIfSlicerStageEnd("Saturating CFG Maps",  "maps", prefix, s);
                        logIfSlicerStageEnd("Saturating Equalities","end", prefix, s);
                    }
            }

            private void logIfSlicerStageEnd(string stage, string stageName, string prefix, string s)
            {
                var m = Regex.Match(s, stage + @".*end.*time.*\[.*\]\/\[\s*(\d+)s\]");
                if (m.Success)
                    logBoth("SlicerTime: {0,-60} - {1}", prefix + "." + stageName, m.Groups[1].ToString());

                //                    var m = Regex.Match(s,@"\*\*\*Extracting CFG.*end.*time \[(\d+)s\]\/\[(\d+)s\]");
            }

            private void parseZ3Dump(IList<string> z3dump, Entry e, string smt2FileName)
            {
                var nfn = Path.GetFileNameWithoutExtension(smt2FileName);
                if (z3dump.Any(s => Regex.Match(s, "unsat").Success))
                    foreach (var s in z3dump.ToList())
                    {
                        var m = Regex.Match(s, @"\:total\-time.*(\d+)\.*(\d+)");
                        if (m.Success)
                            logBoth("Z3runtime: {0,-60} - {1,-4}", nfn, m.Groups[1].ToString());
                    } 
                else if (z3dump.Any(s => Regex.Matches(s, "unknown").Count > 0))
                    logBoth("Z3unknown: {0}", smt2FileName);
                else
                    logBoth("Z3unknown2: {0}", smt2FileName);

            }

            public StreamWriter runLogFile;

            private Process makeConsole(string runDir)
            {
                var startInfo = new ProcessStartInfo
                {
                    FileName = "cmd.exe",
                    WorkingDirectory = runDir,
                    RedirectStandardInput = true,
                    RedirectStandardOutput = true,
                    UseShellExecute = false,
                    CreateNoWindow = true
                };

                var process = new Process {StartInfo = startInfo};

                process.Start();
                return process;
            }

            public static int timeOut = 500000;


            private IList<string> runExe(string workDir,string exeFileName, string exeArgs)
            {
//                var ok = true;
                runLog("Executing:");
//                log(" ExecDir: {0}",workDir);
                runLog(" ExecEXE: {0}",exeFileName);
                runLog(" ExecArgs: {0}",exeArgs);
                var startInfo = new ProcessStartInfo
                {
                    WorkingDirectory = workDir,
                    CreateNoWindow = false,
                    UseShellExecute = false,
                    RedirectStandardOutput = true,
                    RedirectStandardError = true,
                    FileName = exeFileName,
                    Arguments = exeArgs
                };

                //                startInfo.WindowStyle = ProcessWindowStyle.Hidden;
                var result = new List<string>();
                var p = new Process();
                try
                {
                    // Start the process with the info we specified.
                    // Call WaitForExit and then the using statement will close.
                    p.StartInfo = startInfo;
                    p.OutputDataReceived += (sender, args) =>
                    {
                        var s = args.Data;
                        runLog("{0}",s);
                        if (s!=null)
                            result.Add(s);
                    };
                    p.ErrorDataReceived +=  (sender, args) =>
                    {
                        var s = args.Data;
                        runLog("E:{0}",s);
                        if (s!=null)
                            result.Add(s);
                    };
                    runLog("Running....");
                    runLogFile.Flush();
                    p.Start();
                    p.BeginOutputReadLine();
                    p.BeginErrorReadLine();
                    {
                        if (!p.WaitForExit(timeOut))
                        {
                            p.Kill();
                            p.WaitForExit();
                            runLog("Process {0} timed out", exeFileName);
//                            ok = false;
                        } else {
                            p.WaitForExit();
                            runLog("Run ended");
                        }
/*                        while (!p.StandardOutput.EndOfStream) {
                            var line = p.StandardOutput.ReadLine();
                            Console.WriteLine("quote \"{0}\"", line);
                            log("bl:", line);
                        }                       */
                    }
                }
                catch(Exception e)
                {
                    runLog("Error executing process {0}", e.Message);
//                    ok = false;
                } finally
                {
                    p.CancelErrorRead();
                    p.CancelOutputRead();
/*                    while (!p.StandardOutput.EndOfStream) {
                        var s = p.StandardOutput.ReadLine();
                        Console.WriteLine(s);
                        result.Add(s);
                    }*/
                    p.Close();
                    p.Dispose();
                }
                return result;
            }
        }
    }
}
