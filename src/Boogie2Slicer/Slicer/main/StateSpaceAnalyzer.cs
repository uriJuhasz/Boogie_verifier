using System;
using System.Diagnostics;
using Microsoft.Boogie;
using Slicer.Programs.Expressions.utilities;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;
using Slicer.Transformations;
using Assert = Slicer.Programs.Statements.Boogie.Assert;
using Assume = Slicer.Programs.Statements.Boogie.Assume;

namespace Slicer.main
{
    internal class StateSpaceAnalyzer
    {
//        private static Program programCache = null;
//        private static Microsoft.Boogie.Program programCacheBoogie = null;

        ///////////////////////////////////////////////////////
        private readonly Program boogieProgram;
        public Programs.Program program;

        public StateSpaceAnalyzer(Program boogieProgram)
        {
            Debug.Assert(boogieProgram != null);
//            if (ReferenceEquals(boogieProgram,programCacheBoogie))
//                program = programCache;
//            else{
            program = Programs.Program.makeProgram(boogieProgram);
//                programCache = program;
//                programCacheBoogie = boogieProgram;
//            }
            this.boogieProgram = boogieProgram;
        }

        ///////////////////////////////////////////////////////
        public ProcedureImp getProcedure(Implementation implementation)
        {
            var p = new ProcedureImp(implementation.Name, program, implementation);
            p.setCFG(StructuredProgramToCFG.makeCFGFromDAG(implementation, boogieProgram, p));
            return p;
        }

        ///////////////////////////////////////////////////////
        private PredicateStatement makeStatement(ExpressionFactory factory, Cmd c, String label)
        {
            if (c is AssumeCmd) return new Assume((AssumeCmd) c, factory.makeExpression(((AssumeCmd) c).Expr));
            if (c is AssertCmd)
            {
                var a = c as AssertCmd;
                string m = a.ErrorMessage != null ? a.ErrorMessage : "";
                return new Assert(a, factory.makeExpression(a.Expr), m);
            }
            throw new Exception("makeStatement: unknown boogie command type");
        }

        ///////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////
    }
}