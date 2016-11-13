using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;
using Slicer.StateSpace;

namespace Slicer.Transformations
{
    internal class CFGDotDumper : IDisposable
    {
        ///////////////////////////////////////////////////////
        private readonly String fileName;
        private StreamWriter cfgFile;
        private int tabLevel;

        public CFGDotDumper(string CFGFileName)
        {
            createCFGFile(CFGFileName + ".gv");
            fileName = CFGFileName;
            tabLevel = 0;
//            getFlatCFG = null;
        }

        #region IDisposable Members

        public void Dispose()
        {
            cfgFile.Close();
        }

        #endregion

        ///////////////////////////////////////////////////////
        public void dumpCFG(ProcedureImp p)
        {
            dumpCFGPrefix();

            ////////////////////////////////////
            dumpCFGNodesHTML(p.blocks);
            cfgFile.WriteLine();
            dumpCFGEdges(p.blocks);

            ////////////////////////////////////
            //Finish Dump
            dumpCFGPostfix();
            cfgFile.Close();

            runDOT(fileName);
        }

        ////////////////////////////////////
        private void popTabLevel()
        {
            Debug.Assert(tabLevel > 0);
            tabLevel--;
        }

        ////////////////////////////////////
        private void writeTabs()
        {
            for (int i = tabLevel; i > 0; i--)
                cfgFile.Write("\t");
        }

        ////////////////////////////////////
        private void pushTabLevel()
        {
            tabLevel++;
        }

        ////////////////////////////////////
        public static void runDOT(string fileName)
        {
            var dotEXEName = @"C:\Program Files (x86)\Graphviz2.38\bin\dot.exe";
            var psi = new ProcessStartInfo(dotEXEName)
                          {
//                              Arguments = "-O" /*"-p" + fileName + ".pdf"*/+ " -Tpdf \"" + fileName + ".gv\"",
                              Arguments = "-o\"" + fileName + ".pdf\"" + " -Tpdf \"" + fileName + ".gv\"",
                              RedirectStandardOutput = false,
                              RedirectStandardError = false,
                              UseShellExecute = false
                          };

            var p = Process.Start(psi);
//            p.WaitForExit();
        }

        ////////////////////////////////////
        private void dumpCFGNodesHTML(ICollection<BasicBlock> blocks)
        {
            ////////////////////////////////////
            //Dump nodes
            foreach (var bb in blocks)
                dumpBasicBlockNodes(bb);
            cfgFile.WriteLine();
        }

        ////////////////////////////////////
        private void dumpBasicBlockNodes(BasicBlock bb)
        {
            writeTabs();
            cfgFile.WriteLine("\t\"" + bb.label + "\" [ label=< ");
            writeTabs();
            cfgFile.WriteLine("\t\t<FONT face=\"Arial Unicode MS\">");

            writeTabs();
            cfgFile.WriteLine("\t\t<FONT face=\"Arial Bold\">" + bb.label + "</FONT>  <BR ALIGN=\"CENTER\"/>");
            if (bb.getPreState(0).equalityAnalyzer != null &&
                bb.getPreState(0).equalityAnalyzer.mapIncarnationMap != null)
                cfgFile.WriteLine("\t\t<FONT face=\"Arial Unicode MS\">" +
                                  transformCommandForDisplay(
                                      bb.getPreState(0).equalityAnalyzer.pathCondition.ToString(
                                          bb.getPreState(0).equalityAnalyzer.conditionVariableNames)) +
                                  "</FONT>  <BR ALIGN=\"CENTER\"/>");

            foreach (var si in bb.statements)
                if (!(si.statement is ControlStatement))
                {
//                    dumpState(si.preState);
                    writeTabs();
                    cfgFile.WriteLine("\t\t" + transformCommandForDisplay(si.statement.ToString()) +
                                      " <BR ALIGN=\"LEFT\"/>");
                }
//            cfgFile.WriteLine("\t\t\t{" + transformCommandForDisplay(sie.Current.ToString()) + "} <BR ALIGN=\"LEFT\"/>");

            writeTabs();
            cfgFile.WriteLine("\t\t</FONT>");
            writeTabs();
            cfgFile.WriteLine("\t>];");
        }

        ////////////////////////////////////
        private void dumpState(StateInformation si)
        {
            if (si.initializedVariables == null || si.deadCodeEliminator == null)
                return;

            writeTabs();
            cfgFile.Write("I = {");

            foreach (var v in si.initializedVariables.firstOccurence.Keys)
                if (si.deadCodeEliminator.liveVariables.Contains(v))
                    cfgFile.Write(" " + v);

            cfgFile.WriteLine(" } <BR ALIGN=\"LEFT\"/>");
        }

        ////////////////////////////////////
        private void dumpCFGEdges(ICollection<BasicBlock> blocks)
        {
            foreach (var bb in blocks)
                dumpBasicBlockEdges(bb);
        }

        ////////////////////////////////////
        private void dumpBasicBlockEdges(BasicBlock bb)
        {
            foreach (var e in bb.successors)
                dumpEdge(e);
        }


        ////////////////////////////////////
        private void dumpEdge(BasicEdge e)
        {
            writeTabs();
            cfgFile.Write(
                "\"" + e.source.label + "\" -> \"" + e.target.label + "\" [ label=<");
//            cfgFile.WriteLine("AAA");
            if (e.guard.ToString() != "")
                cfgFile.Write(
                    "<FONT face=\"Arial Unicode MS\">" + transformCommandForDisplay(e.guard.ToString()) + "</FONT>");
            cfgFile.WriteLine(">" + "]; ");
        }

        ////////////////////////////////////
        public static String transformCommandForDisplay(String command)
        {
            var result = new String(' ', 0);
            var current = new String(' ', 0);
            foreach (var c in command)
            {
                if (isSameToken(current, c))
                {
                    current += c;
                }
                else
                {
                    result += convertToken(current);
                    current = new String(c, 1);
                }
            }
            result += convertToken(current);
            return result;
        }

        ////////////////////////////////////
        private static string convertToken(string current)
        {
            Debug.Assert(current != null);

            if (current.Length < 1) return "";

            if (current.Equals("\n"))
                return "";

            if (current.Equals("forall")) return ("&forall;");
            if (current.Equals("exists")) return ("&exist;");
            if (current.Equals("::")) return ("&bull;");

            if (current.Equals("&&")) return ("&and;");
            if (current.Equals("||")) return ("&or;");
            if (current.Equals("!")) return ("&#172;");


            if (current.Equals("==")) return ("=");
            if (current.Equals("!=")) return ("&ne;");
            if (current.Equals("<")) return ("&le;");
            if (current.Equals("<:")) return ("&le;:");
            if (current.Equals("<=")) return ("&le;");
            if (current.Equals(">")) return ("&ge;");
            if (current.Equals(">=")) return ("&ge;");
            if (current.Equals("<>")) return ("&le;&ge;"); //lt/gt don't work with dot

            if (current.Equals("==>")) return ("&rArr;");
            if (current.Equals("<==>")) return ("&hArr;");

            if (isKeyword(current)) return "<FONT face=\"Arial Bold\">" + current + "</FONT>";

//            if (current.Equals("\"")) return " : ";

            if (current.Equals("\n")) return "";
            if (current.Equals("\r")) return "";

            if (current.Equals(";")) return "";

            return current;
        }

        ////////////////////////////////////
        private static bool isSameToken(string current, char c)
        {
            return
                (current.Length == 0)
                || (Char.IsLetter(current.First()) && isIdentifierCharacter(c))
                || (Char.IsDigit(current.First()) && Char.IsDigit(c))
                || (isOperator(current.First()) && isOperator(c))
//                || (current == "\\" && c=='/')
//                || (Char.IsWhiteSpace(current.First()) && (Char.IsWhiteSpace(c)))
                ;
        }

        ////////////////////////////////////
        private static bool isIdentifierCharacter(char c)
        {
            return isAlphanumeric(c) || (c == '_') || (c == '@')|| (c == '%') || (c == '$');
        }

        ////////////////////////////////////
        private static bool isAlphanumeric(char c)
        {
            return Char.IsLetter(c) || Char.IsDigit(c);
        }


        ////////////////////////////////////
        private static bool isKeyword(String s)
        {
            return
                s.Equals("assert")
                || s.Equals("assume")
                || s.Equals("true")
                || s.Equals("false")
                ;
        }

        ////////////////////////////////////
        private static bool isOperator(char c)
        {
            return
                c == '='
                || c == '<'
                || c == '>'
                || c == '|'
                || c == '&'
                || c == '+'
                || c == '-'
                || c == '*'
                || c == '/'
                || c == ':'
                || c == ';'
                || c == '!'
                ;
        }

        ///////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////
        private void dumpCFGPrefix()
        {
            cfgFile.WriteLine("digraph CFG {");
            cfgFile.WriteLine("\tgraph [center=true  ];");
            cfgFile.WriteLine("\tnode [ shape = box, style=rounded, fontsize=5 ];");
            cfgFile.WriteLine("\tedge [ tailport=s, headport=n, fontsize=5 ];");
            cfgFile.WriteLine();
        }

        private void dumpCFGPostfix()
        {
            cfgFile.WriteLine();
            cfgFile.WriteLine("}");
        }

        ///////////////////////////////////////////////////////
        private void createCFGFile(String fileName)
        {
            cfgFile = new StreamWriter(fileName);
        }

        ///////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////

//        private CFG<BasicBlock,BasicEdge> getFlatCFG;
    }
}

/*
	edge [ tailport=si, headport=n ];
	
	Start [];

		If    [];
	Then  [];
	Else  [];
	If_join  [];
	
	Before_loop [];
	Loop_start  [];
	Loop_body   [];
	Loop_end    [ tailport=n ];
	Loop_join   [];
	
	End [];
	
	Start -> If;
	
	If    -> Then;
	Then  -> If_join;
	If    -> Else;
	Else  -> If_join;
	
	If_join -> Before_loop;

	Before_loop  -> Loop_start;
	Loop_start   -> Loop_body;
	Loop_body    -> Loop_end;
	Loop_end     -> Loop_join;
	Loop_end     -> Loop_start;
	Loop_join   -> End;
*/