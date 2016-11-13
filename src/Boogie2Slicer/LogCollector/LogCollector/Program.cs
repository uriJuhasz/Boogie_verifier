using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace LogCollector
{
    class FR
    {
        public FR(IEnumerable<string> lines)
        {
            this.lines = lines.ToArray();
        }
        int i = 0;
        public string[] lines;
        public bool end { get { return i >= lines.Length; } }
        public string getLine()
        {
            if (!end)
            {
                i++;
                return lines[i - 1];
            }
            else
                return null;
        }
    }
    class Program
    {
        static FR fr;// StreamReader f;
        class StageRunsTimes
        {
            public int slicerT = -1;
            public int netT = -1;
            public int fwT = -1;
            public int origT = -1;
            public int fwOrigT = -1;
            public int mrsT = -1;
        }

        class StageTimes
        {
            public StageRunsTimes startT = new StageRunsTimes();
            public StageRunsTimes preT = new StageRunsTimes();
            public StageRunsTimes buildT = new StageRunsTimes();
            public StageRunsTimes mapsT = new StageRunsTimes();
            public StageRunsTimes endT = new StageRunsTimes();
        }
        class Times
        {
            public StageTimes slicerTimes = new StageTimes();
            public int boogieT = -1;
        }
        static Times curTimes;// = new Times();
        static void Main(string[] args)
        {
            var rootDir = @"D:\work\Slicer\trunk\test\Collection";
            foreach (var subDir in Directory.EnumerateDirectories(rootDir))
                foreach (var subsubDir in Directory.EnumerateDirectories(subDir))
                {
                    Console.WriteLine("Entering Directory {0}", subsubDir);
                    var logFN = Path.Combine(subsubDir, @"slicer.log");
                    fr = new FR(File.ReadLines(logFN));//  StreamReader(logFN);
                    Console.WriteLine("Opened log file");
                    try
                    {
                        parseHeader();
                        curTimes = new Times();
                        parseSlicerRun();
                        parseBoogieRun();
                        while (!fr.end)
                            parseZ3Runs();
                    } catch (Exception)
                    {
                        Console.WriteLine("EEEE {0} parse failed", subsubDir);
                    }
                    Console.WriteLine("++Boogie {0,3}", curTimes.boogieT);
                    printStatsIf(curTimes.slicerTimes.startT, "start");
                    printStatsIf(curTimes.slicerTimes.preT, "pre");
                    printStatsIf(curTimes.slicerTimes.buildT, "build");
                    printStatsIf(curTimes.slicerTimes.mapsT, "mrs");
                    printStatsIf(curTimes.slicerTimes.endT, "end");
                }


            Console.WriteLine("Summary:");
            foreach (var s in sss)
                Console.WriteLine(s);

        }

        private static void printStatsIf(StageRunsTimes sT, string v)
        {
            Console.WriteLine("Stage:{0} - {1}", v,procName);
            Console.WriteLine("Out   {0,-4} {1,-4} {2,-4} {3,-4} {4,-4}", "net", "orig", "fw", "fwO", "mrs");
            Console.WriteLine("NetT  {0,4} {1,4} {2,4} {3,4} {4,4}", sn(sT, sT.netT), sn(sT, sT.origT), sn(sT, sT.fwT), sn(sT,sT.fwOrigT), sn(sT, sT.mrsT));
            Console.WriteLine("TotT  {0,4} {1,4} {2,4} {3,4} {4,4}", sb(sT, sT.netT), sb(sT, sT.origT), sb(sT, sT.fwT), sb(sT, sT.fwOrigT), sb(sT, sT.mrsT));
            Console.WriteLine("delT  {0,4} {1,4} {2,4} {3,4} {4,4}", sp(sT, sT.netT), sp(sT, sT.origT), sp(sT, sT.fwT), sp(sT, sT.fwOrigT), sp(sT, sT.mrsT));
            Console.WriteLine("delN  {0,4} {1,4} {2,4} {3,4} {4,4}", snp(sT, sT.netT), snp(sT, sT.origT), snp(sT, sT.fwT), snp(sT, sT.fwOrigT), snp(sT, sT.mrsT));

            if (v == @"build")
                sss.Add(String.Format("        & {0,-50} & {1,3} & {2,3} & {3,3} & {4,3}\\%\\\\", procName, curTimes.boogieT, sT.slicerT, sT.netT, sp(sT,sT.netT)));
        }
        static List<string> sss = new List<string>();

        private static string sn(StageRunsTimes sT, int netT)
        {
            if (netT != -1)
                return netT.ToString();
            else
                return "X";
        }
        private static string sb(StageRunsTimes sT, int netT)
        {
            if (netT != -1 && sT.slicerT!=-1)
                return (netT + sT.slicerT).ToString();
            else
                return "X";
        }

        private static string sp(StageRunsTimes sT, int netT)
        {
            if (netT != -1 && sT.slicerT != -1 && curTimes.boogieT>0)
                return ((100*(netT + sT.slicerT)) /curTimes.boogieT).ToString();
            else
                return "X";
        }
        private static string snp(StageRunsTimes sT, int netT)
        {
            if (netT != -1 && sT.slicerT != -1 && curTimes.boogieT > 0)
                return ((100 * (netT)) / curTimes.boogieT).ToString();
            else
                return "X";
        }
        private static void parseBoogieRun()
        {
            Console.WriteLine("   Parsing Boogie run");
            try
            {
                parseTo(@"Running Boogie");
                var m = parseTo(@".*\[(\d+).(\d+).*\].*verified", new[] { @"Running Boogie done", @"Process.*timed out" });
                if (m == null)
                    throw new EndException();
                var t = Int32.Parse(m.Groups[1].ToString());
                Console.WriteLine("   {0,-60}:{1,3}s", "Boogie time", t);
                curTimes.boogieT = t;
                parseTo(@"Running Boogie done");
            }
            catch (EndException e)
            {
                Console.WriteLine("   Error in parsing Boogie", e);
            }
        }

        private static void parseZ3Runs()
        {
//            Console.WriteLine("   Parsing Z3 run");
            try
            {

                var mm = parseTo(@"Running Z3 on(.*)\.smt2", @"Run ended");
                if (mm == null)
                    throw new EndException();
                var m1 = parseTo(@"unsat", new [] {@"Run ended", @"unknown",  @"Process.*timed out" });
                //                var unknown = false;
                var z3fn = mm.Groups[1].ToString();
                StageRunsTimes stage = null;
                var orig = false;
                if (z3fn.EndsWith(@".orig"))
                {
                    z3fn = z3fn.Substring(0, z3fn.Length - 5);
                    orig = true;
                }
                var fw = false;
                if (z3fn.EndsWith(@".fw"))
                {
                    z3fn = z3fn.Substring(0, z3fn.Length - 3);
                    fw = true;
                }
                var mrs = false;
                if (z3fn.EndsWith(@".mrs"))
                {
                    z3fn = z3fn.Substring(0, z3fn.Length - 4);
                    mrs = true;
                }
                var slicerTime = -1;
                var s = "";
                if (z3fn.EndsWith(@".start"))
                {
                    s = "start";
                    slicerTime = curTimes.slicerTimes.preT.slicerT;
                    stage = curTimes.slicerTimes.startT;
                }
                else if (z3fn.EndsWith(@".start.1"))
                {
                    s = "pre";
                    slicerTime = curTimes.slicerTimes.preT.slicerT;
                    stage = curTimes.slicerTimes.preT;
                }
                else if (z3fn.EndsWith(@".build"))
                {
                    slicerTime = curTimes.slicerTimes.buildT.slicerT;
                    s = "build";
                    stage = curTimes.slicerTimes.buildT;
                }
                else if (z3fn.EndsWith(@".round_1_MR"))
                {
                    slicerTime = curTimes.slicerTimes.mapsT.slicerT;
                    s = "maps";
                    stage = curTimes.slicerTimes.mapsT;
                }
                else if (z3fn.EndsWith(@".end"))
                {
                    s = "end";
                    slicerTime = curTimes.slicerTimes.endT.slicerT;
                    stage = curTimes.slicerTimes.endT;
                }
                else if (z3fn.EndsWith(@".boogie"))
                    s = "Boogie";
                else
                    s = z3fn;
                if (mrs)
                    s += ".mrs";
                if (fw)
                    s += ".fw";
                if (orig)
                    s += ".orig";


                if (m1 == null)
                {
                    if (endMatch != null && endMatch.Groups[1].ToString() == @"unknown")
                    {
                        Console.WriteLine("   Z3 unkown {0,-60}:",s);
                        goto z3end;
                    }
                }
                var m2 = parseTo(@".*\:total\-time\s+(\d+)\.(\d+)", @"Run ended");
                if (m2 == null) throw new EndException();
                var z3t = Int32.Parse(m2.Groups[1].ToString());
//                Debug.Assert(stage != null);
                if (stage != null)
                {
                    if (fw && orig)
                        stage.fwOrigT = z3t;
                    else if (mrs)
                        stage.mrsT = z3t;
                    else if (fw)
                        stage.fwT = z3t;
                    else if (orig)
                        stage.origT = z3t;
                    else
                        stage.netT = z3t;
                }
                //                Console.WriteLine("   Z3: {0}", s);
                Console.WriteLine("   Z3 time {0,-60}:{1,3}s", s, z3t);
            }
            catch (EndException e)
            {
                Console.WriteLine("   Error in parsing Z3", e);
            }
        z3end:
            parseTo(@"Running Z3 done");
        }

        static string stageRE = @".*end.*time.*\[.*\]\/\[\s*(\d+)s\]";
        private static void parseSlicerRun()
        {
            try
            {
                parseTo(@"Running Boogie Slicer");
                var n1 = parseStage(@"Extracting CFG",ref curTimes.slicerTimes.preT.slicerT);
                var n2 = parseStage(@"Building Universes",ref curTimes.slicerTimes.buildT.slicerT);
                var n3 = parseStage(@"Saturating CFG Maps",ref curTimes.slicerTimes.mapsT.slicerT);
                var n4 = parseStage(@"Saturating Equalities",ref curTimes.slicerTimes.endT.slicerT);
            } catch (EndException)
            {
                Console.WriteLine("Slicer not done");
            }
            parseTo(@"Running Boogie Slicer done");
        }
        class EndException : Exception { }
        private static int parseStage(string stage, ref int time)
        {
            var m = parseTo(stage + stageRE, @"Run ended");
            if (m == null)
                throw new EndException();
            var t = Int32.Parse(m.Groups[1].ToString());
            Console.WriteLine("   Stage {0,-60} : {1,3}s {2}", stage, t, procName);
            time = t;
            return t;
        }
        private static Match parseTo(string s0)
        {
            return parseTo(s0, new string[0]);
        }
          
        private static Match parseTo(string s0, string end)
        {
            return parseTo(s0, new[] { end });
        }
        static Match endMatch = null;
        private static Match parseTo(string s0,IEnumerable<string> ends)
        {
            while (true)
            {
                if (fr.end)
                    throw new Exception();
                var s = fr.getLine();
                var m = Regex.Match(s, s0);
                if (m.Success)
                    return m;
                foreach (var end in ends)
                {
                    endMatch = Regex.Match(s, @"(" + end + ")");
                    if (endMatch.Success)
                        return null;
                }
            }
        }
        static string procName;
        private static void parseHeader()
        {
            var m = Regex.Match(fr.getLine(), @"Running\s*(.*)\s\-\s(.*)\s-\s(.*)");
            procName = m.Groups[1].ToString() + "." + m.Groups[3].ToString();
            Console.WriteLine("Log for {0} : {1} : {2}", m.Groups[1].ToString(), m.Groups[2].ToString(), m.Groups[3].ToString());
        }
    }
}
