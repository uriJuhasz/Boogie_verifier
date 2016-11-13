using System;
using System.Collections.Generic;
using System.Diagnostics;
using Slicer.Programs.CFG;
using Slicer.Programs.Expressions;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;

namespace Slicer.Analyzers
{
    internal class FlatSingleAssertionSymbolSlicer
    {
        private readonly Assert assertion;
        private readonly BasicBlock bb;
        private readonly Procedure p;
        private Dictionary<string, StatementId> assumptions;
        private Dictionary<string, HashSet<string>> expressionsPerSymbol;
        private Dictionary<string, HashSet<string>> symbolsPerExpression;

        private FlatSingleAssertionSymbolSlicer(Procedure p)
        {
            Debug.Assert(p.cfg.nodes.Count == 1);
            this.p = p;
            CFG<BasicBlock, BasicEdge> cfg = p.cfg;
            bb = cfg.startNode;

            assertion = bb.statements[bb.statements.Count - 2].statement as Assert;
            Debug.Assert(assertion != null);
            makeSymbolLookup();
        }

        public static void slice(Procedure p)
        {
            var s = new FlatSingleAssertionSymbolSlicer(p);
            s.slice();
        }

        private void slice()
        {
            CFG<BasicBlock, BasicEdge> cfg = p.cfg;
            HashSet<string> relevantAssumptions = calculateRelevantAssumptions();

            BasicBlock nn = cfg.addNode("start0");
//            foreach (var k in assumptions.Keys)
//                relevantAssumptions.Add(k);

            var sl = new SortedList<string, string>();
            foreach (var a in relevantAssumptions)
                sl.Add(a, a);
            foreach (var a in sl)
                if (assumptions.ContainsKey(a.Value))
                    nn.appendStatement(new Assume((assumptions[a.Value].statement as Assume).expression));

/*            foreach (var m in assumptions)
                if (relevantAssumptions.Contains(m.Key))
                    nn.appendStatement(new Assume((m.Value.statement as Assume).fae));
            */

            foreach (var a in assumptions)
            {
                if (!relevantAssumptions.Contains(a.Key))
                {
                    string es = (a.Value.statement as Assume).expression.ToString();
                    bool slice = false;
                    foreach (var s in symbolsPerExpression[es])
                        if (!ExpressionSymbolCounter.isInterpreted(s))
                            slice = true;
                    if (!slice)
                        nn.appendStatement(new Assume((assumptions[es].statement as Assume).expression));
                }
            }

            nn.appendStatement(new Assert(assertion.expression, assertion.message));
            nn.setControlStatement(new Block(nn));
            cfg.setStartNode(nn.label);
            cfg.setEndNode(nn.label);
            cfg.removeNode(bb.label);
        }

        ///////////////////////////////////////////////////////////////////////////

        ///////////////////////////////////////////////////////////////////////////
        private HashSet<string> calculateRelevantAssumptions()
        {
            var reachableSymbols = new HashSet<string>();
            var reachableExpressions = new HashSet<string>();

//            reachableSymbols.Add("int");
//            reachableSymbols.Add("Integer");

            var todo = new Queue<string>();
            todo.Enqueue(assertion.expression.ToString());
            while (todo.Count > 0)
            {
                string e = todo.Dequeue();
                HashSet<string> nss = symbolsPerExpression[e];
                foreach (var ns in nss)
                    if (reachableSymbols.Add(ns))
                    {
//                        Console.WriteLine("\t{0}", ns);
                        foreach (var ne in expressionsPerSymbol[ns])
                            if (reachableExpressions.Add(ne))
                                todo.Enqueue(ne);
                    }
            }
            Console.WriteLine("Instruction - {0} ==> {1}", bb.statements.Count, reachableExpressions.Count + 2);
            Console.WriteLine("Symbols     - {0} ==> {1}", expressionsPerSymbol.Count, reachableSymbols.Count);
            return reachableExpressions;
        }

        ///////////////////////////////////////////////////////////////////////////
        private void makeSymbolLookup()
        {
            symbolsPerExpression = new Dictionary<string, HashSet<string>>();
            expressionsPerSymbol = new Dictionary<string, HashSet<string>>();
            assumptions = new Dictionary<string, StatementId>();
            foreach (var s in bb.statements)
                if (s.statement is PredicateStatement)
                {
                    Expression e = (s.statement as PredicateStatement).expression;
                    if (!assumptions.ContainsKey(e.ToString()))
                    {
                        if (s.statement is Assume)
                            assumptions.Add(e.ToString(), s.statementId);
                        symbolsPerExpression.Add(e.ToString(), getSymbols(e));
                        foreach (var sym in symbolsPerExpression[e.ToString()])
                        {
                            HashSet<string> slu;
                            if (!expressionsPerSymbol.TryGetValue(sym, out slu))
                            {
                                slu = new HashSet<string>();
                                expressionsPerSymbol.Add(sym, slu);
                            }
                            slu.Add(e.ToString());
                        }
                    }
                }
        }

        private HashSet<string> getSymbols(Expression e)
        {
            var sc = new ExpressionSymbolCounter();
            e.visit(sc);
            return sc.symbols;
        }
    }
}