using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using Microsoft.Boogie;
using Slicer.Programs.CFG;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Types.Utilities;
using Slicer.StateSpace.Variables;
using Slicer.Transformations;
using Type = Microsoft.Boogie.Type;
using TypeVariable = Slicer.StateSpace.Types.Quantification.TypeVariable;
using Variable = Microsoft.Boogie.Variable;

namespace Slicer.Programs.Procedures
{
    internal class ProcedureImp : ScopeImp, Procedure
    {
        public override string getVarUName(Variable v)
        {
            Debug.Assert(v.Name == v.TypedIdent.Name);
            return program.getVarUName(v);
        }
        public readonly Program program;
        public ProcedureImp(
            string name,
            Program parentScope,
            Implementation implementation)
            : base(parentScope)
        {
            this.program = parentScope;
            Debug.Assert(name != null);

            this.name = name;
            parentScope.collectVarNames(implementation);
#if DEBUG
#endif
            foreach (Variable v in implementation.InParams)
            {
                program.addUsedVar(v);
                addVariable(new ProgramVariable(getVarUName(v), makeType(v.TypedIdent.Type), true, false, false, true));
            }
            foreach (Variable v in implementation.OutParams)
            {
                program.addUsedVar(v);
                addVariable(new ProgramVariable(getVarUName(v), makeType(v.TypedIdent.Type), false, true, false, false));
            }
            foreach (Variable v in implementation.LocVars)
            {
                program.addUsedVar(v);
                addVariable(new ProgramVariable(getVarUName(v), makeType(v.TypedIdent.Type), false, false, false, false));
            }

            cfg = null;

            //Scope - initialized
            typeParameters = new List<TypeVariable>();
        }


        #region Procedure Members

        public int numStatements
        {
            get
            {
                int result = 0;
                foreach (var bb in cfg.nodes)
                    foreach (var s in bb.statements)
                        result++;
                return result;
            }
        }

        ///////////////////////////////////////////////////////////////////////

        ///////////////////////////////////////////////////////////////////////
        public ICollection<BasicBlock> blocks
        {
            get { return cfg.nodes; }
        }

        ///////////////////////////////////////////////////////////////////////
        public bool hasLabel(string s)
        {
            Debug.Assert(s != null);
            return cfg.hasLabel(s);
        }

        ///////////////////////////////////////////////////////////////////////
        public void print(TextWriter t)
        {
            t.Write(name + "( ");
            foreach (var v in inputs)
                t.Write(v.name + " ");
            t.Write(") : ( ");
            foreach (var v in outputs)
                t.Write(v.name + " ");
            t.WriteLine(")");

            foreach (var bb in cfg.nodes)
            {
                Console.WriteLine(bb.label + ":");
                foreach (var s in bb.getStatements())
                    Console.WriteLine("\t" + s.ToString());
                Console.WriteLine("\t" + bb.getControlStatement());
                Console.WriteLine();
            }
        }

        ///////////////////////////////////////////////////////////////////////
        public void dump(string fileName)
        {
            var dumper = new CFGDotDumper(fileName);
//            dumper.dumpHierarchicCFG(this);
            dumper.dumpCFG(this);
            dumper.Dispose();
        }


        ///////////////////////////////////////////////////////////////////////
        public string fileName
        {
            get
            {
                string s = CommandLineOptions.Clo.Files[0];
                return s.Substring(0, s.Length - 4);
            }
        }


        ///////////////////////////////////////////////////////////////////////
        public string name { get; private set; }

        public CFG<BasicBlock, BasicEdge> cfg { get; private set; }

        ///////////////////////////////////////////////////////////////////////
        public ICollection<TypeVariable> typeParameters { get; private set; }

        #endregion

        private IType makeType(Type type)
        {
            return typeFactory.makeTypeI(type, new TypeFactory.Context());
        }

        public void setCFG(CFG<BasicBlock, BasicEdge> cfg)
        {
            Debug.Assert(cfg != null);
            Debug.Assert(this.cfg == null);

            this.cfg = cfg;
        }
    }
}