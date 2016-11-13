using System.Collections.Generic;
using System.Diagnostics;
using Microsoft.Boogie;
using Slicer.StateSpace.Types.Utilities;

namespace Slicer.Programs
{
    internal class Program : ScopeImp, Scope
    {
        public override string getVarUName(Variable v)
        {
#if DEBUG
            if (v.UniqueId == 159185)
                Debugger.Break();
//            if (v.Name.StartsWith(@"call0formal@o@"))
//                Debugger.Break();
#endif
            return boogieVarNameMap[v];
        }
        public void collectVarNames(Implementation implementation)
        {
            var usedVars = getUsedVars(implementation);
        }

        class VColl
        {
            public void addVar(Variable v)
            {
#if DEBUG
//            if (v.UniqueId == 159185)
//                Debugger.Break();
#endif
                usedVars.Add(v);

            }
            public readonly ISet<Variable> usedVars = new HashSet<Variable>();
            public readonly ISet<LiteralExpr> literals = new HashSet<LiteralExpr>();
            public readonly ISet<IAppliable> functions = new HashSet<IAppliable>();
        }

        public readonly IDictionary<Variable, string> boogieVarNameMap = new Dictionary<Variable, string>();
        private readonly ISet<string> boogieUsedVarNames = new HashSet<string>();
        private ISet<Variable> getUsedVars(Implementation implementation)
        {
            var vcoll = new VColl();
            var declaredVars = new HashSet<Variable>(implementation.InParams);
            declaredVars.UnionWith(implementation.OutParams);
            declaredVars.UnionWith(implementation.LocVars);
            foreach (var v in declaredVars)
                if (v.TypedIdent.WhereExpr != null)
                    collectUsedVars(vcoll, v.TypedIdent.WhereExpr);
            foreach (var bb in implementation.Blocks)
                foreach (var s in bb.Cmds)
                    collectUsedVars(vcoll, s);


            foreach (var v in vcoll.usedVars)
            {
                addUsedVar(v);
//                if (usedVarsByName.ContainsKey(v.Name))
//                    Debugger.Break();
            }
            return vcoll.usedVars;
        }

        private IDictionary<string,ISet<Variable>> usedVarsByName = new Dictionary<string, ISet<Variable>>();
        public void addUsedVar(Variable v)
        {
#if DEBUG
            if (v.UniqueId == 159185)
                Debugger.Break();
#endif
            //            if (v.Name.StartsWith(@"call0formal@o@"))
            //                Debugger.Break();
            var s = Analyzers.FOLConverter.FU.getOrEmpty(usedVarsByName, v.Name);
            if (s.Contains(v))
                return;
            var c = s.Count;

            var nn = v.Name;
            if (c>0)
                nn += "_$" + c.ToString();
            Debug.Assert(!boogieUsedVarNames.Contains(nn));
            boogieUsedVarNames.Add(nn);
            boogieVarNameMap[v] = nn;
            Analyzers.FOLConverter.FU.insert(usedVarsByName, v.Name,v);
            if (v is LocalVariable)
                addVariable(new StateSpace.Variables.ProgramVariable(nn, makeType(v.TypedIdent.Type), false, false, false, false));
            else if (v is Formal)
                addVariable(new StateSpace.Variables.ProgramVariable(nn, makeType(v.TypedIdent.Type), (v as Formal).InComing, !(v as Formal).InComing, false, true));
            else if (v is GlobalVariable)
                addVariable(new StateSpace.Variables.ProgramVariable(nn, makeType(v.TypedIdent.Type), false, false, true, false));
//            else if (v is Constant)
//                addVariable(new StateSpace.Variables.ProgramVariable(nn, makeType(v.TypedIdent.Type), false, false, false, true));
//            ekse if (v is )


        }
        private StateSpace.Types.IType makeType(Type type)
        {
            return typeFactory.makeTypeI(type, new TypeFactory.Context());
        }

        private void collectUsedVars(VColl vcoll, Expr e)
        {
            if (e is LiteralExpr) vcoll.literals.Add(e as LiteralExpr);
            else if (e is IdentifierExpr) {
                var ide = e as IdentifierExpr;
                vcoll.addVar(ide.Decl);
            } else if (e is QuantifierExpr) collectUsedVars(vcoll, (e as QuantifierExpr).Body);
            else if (e is NAryExpr) {
                var fae = e as NAryExpr;
                vcoll.functions.Add(fae.Fun);
                foreach (var a in fae.Args)
                    collectUsedVars(vcoll, a);
            } else if (e is BvExtractExpr) collectUsedVars(vcoll, (e as BvExtractExpr).Bitvector);
            else if (e is BvConcatExpr) {
                var bve = e as BvConcatExpr;
                collectUsedVars(vcoll, bve.E0);
                collectUsedVars(vcoll, bve.E1);
            } else if (e is OldExpr) collectUsedVars(vcoll, (e as OldExpr).Expr);
            else throw new System.Exception("Unknown Boogie2 targetE type - \"" + e.Type + "\"");
        }
        private void collectUsedVars(VColl vcoll, Cmd c)
        {
            Debug.Assert(c is PredicateCmd);
            var pc = c as PredicateCmd;
            collectUsedVars(vcoll, pc.Expr);
        }


        internal Program(Microsoft.Boogie.Program boogieProgram)
            : base(null)
        {
            this.boogieProgram = boogieProgram;
        }

        public Microsoft.Boogie.Program boogieProgram { get; private set; }

        public static Program makeProgram(Microsoft.Boogie.Program boogieProgram)
        {
            var pf = new ProgramFactory();
            return pf.makeProgram(boogieProgram);
        }

    }
}