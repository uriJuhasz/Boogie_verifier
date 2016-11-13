using System;
using System.Diagnostics;
using System.IO;
using System.Linq;
using Slicer.Programs;
using Slicer.Programs.CFG;
using Slicer.Programs.Expressions;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;
using Slicer.StateSpace.Functions;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Variables;

namespace Slicer.Transformations
{
    internal class BoogieDumper
    {
        //////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////
        private readonly StreamWriter file;
        private readonly Procedure p;
//        private HashSet<string> unusedVariables;

        //////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////
        public BoogieDumper(Procedure p, StreamWriter f)
        {
            this.p = p;
            file = f;
        }

        //////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////
        public void dump()
        {
/*            var usr = UnusedSymbolRemover.collect(p);
            unusedVariables = usr.unusedVariables;
            unusedFunctions = usr.unusedFunctions;
            unused*/
            dumpTypes();
            dumpConstants(p.parentScope);
            dumpFunctions();
            dumpVariables();
            dumpProcedure(p);
        }

        //////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////
        private void dumpProcedure(Procedure p)
        {
            dumpProcedurePrologue(p);
            dumpProcedureBody(p.cfg);
            dumpProcedureEpilogue(p);
        }

        //////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////
        private void dumpProcedureBody(CFG<BasicBlock, BasicEdge> cfg)
        {
            file.WriteLine("{");
            foreach (var lv in p.locals)
//                if (!unusedVariables.Contains(lv.name)) 
                file.WriteLine("\tvar " + removeAtSigns(lv.name) + " : " + toBoogie(lv.type) + ";");
            foreach (var bb in cfg.nodes)
                dumpBasicBlock(bb);
            file.WriteLine("}");
        }

        //////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////
        private void dumpBasicBlock(BasicBlock bb)
        {
            var l = bb.label;
            file.WriteLine(rectify(l) + ":");
            foreach (var s in bb.getStatements())
                dumpStatement(bb, s);
        }

        //////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////
        private void dumpStatement(BasicBlock bb, Statement s)
        {
            if (s is Block)
                file.WriteLine("\tassume false;");
            else if (s is UnconditionalBranch)
                file.WriteLine("\tgoto {0};", rectify((s as UnconditionalBranch).successor.target.label));
            else if (s is ConditionalBranch)
            {
                var cb = s as ConditionalBranch;
                file.WriteLine("\tif ({0}) {{ goto {1}; }} else {{ goto {2}; }}",
                               removeAtSigns(cb.trueBranch.guard.ToString()), rectify(cb.trueBranch.target.label),
                               rectify(cb.falseBranch.target.label));
            }
            else if (s is Assert)
            {
                var a = s as Assert;
                string m;
                if (a.message != "")
                {
                    m = "{ :msg \"" + a.message + "\" }";
                }
                else
                    m = "";
                file.WriteLine("\tassert {0} {1};", m, toString((s as Assert).expression));
            }
            else if (s is Assume)
                file.WriteLine("\tassume {0};", toString((s as Assume).expression));
            else
                throw new Exception("Internal error - unexpected statement in Boogie dump \"" + s.ToString() + "\"");
        }

        private string rectify(string s)
        {
            var r = s;
            if (s.StartsWith("#"))
                r = "$" + s;
            return r;
        }

        //////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////
        private string toString(Expression e)
        {
            return removeAtSigns(e.ToString());
        }

        //////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////
        private void dumpProcedurePrologue(Procedure p)
        {
            file.Write("procedure " + p.name);
            if (p.typeParameters.Count > 0)
            {
//Type parameters
                file.Write("<");
                int i = 0;
                foreach (var tp in p.typeParameters)
                {
                    file.Write((i == 0 ? "" : ",") + tp.name);
                    i++;
                }
                file.Write(">");
            }

            {
                //Parameters
                file.Write(" (");
                int i = 0;
                foreach (var ip in p.inputs)
                {
                    file.Write((i == 0 ? "" : ",") + ip.name + " : " + toBoogie(ip.type));
                    i++;
                }
                file.Write(")");
            }

            if (p.outputs.Count > 0)
            {
                //Out parameters
                file.Write(" returns (");
                int i = 0;
                foreach (var op in p.outputs)
                {
                    file.Write((i == 0 ? "" : ",") + op.name + " : " + toBoogie(op.type));
                    i++;
                }
                file.Write(")");
            }

            file.WriteLine();

//            if (p.
        }


        //////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////
        private void dumpProcedureEpilogue(Procedure p)
        {
        }

        //////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////
        private void dumpVariables()
        {
            foreach (var v in p.parentScope.locals)
                if (!v.isConstant /*&& !unusedVariables.Contains(v.name)*/)
                    dumpVariable(v);
        }

        //////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////
        private void dumpVariable(ProgramVariable v)
        {
            string name = removeAtSigns(v.name);
            Debug.Assert(!name.Contains('@'));
            file.WriteLine("var " + name + " : " + toBoogie(v.type) + ";");
        }

        //////////////////////////////////////////////////////////////////////////
        private static string removeAtSigns(string s)
        {
            string result = "";
            foreach (var c in s)
                result += (c == '@') ? "_$_" : new string(c, 1);
            return result;
        }

        //////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////
        private void dumpFunctions()
        {
            foreach (var f in p.parentScope.functionTemplates)
                dumpFunctionTemplate(f);
        }

        //////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////
        private void dumpFunctionTemplate(FunctionTemplate f)
        {
            string dump = "function ";
            if (f.attributes != null)
                dump += f.attributes + " ";

            dump += removeAtSigns(f.name);

            if (f.typeParameters.Length > 0)
            {
                dump += " <";
                for (int i = 0; i < f.typeParameters.Length; i++)
                    dump += (i == 0 ? "" : ",") + f.typeParameters[i].name;
                dump += "> ";
            }

            {
                dump += "(";
                if (f.body != null)
                    foreach (var a in f.body.arguments)
                        dump +=
                            (dump.Last() == '(' ? "" : ",") + a.name + ":" + toBoogie(a.type);
                else
                    foreach (var at in f.signature.argumentTypes)
                        dump += (dump.Last() == '(' ? "" : ",") + toBoogie(at);
                dump += ")";
            }

            {
                dump += " : " + toBoogie(f.signature.resultType) + "";
            }

            if (f.body != null)
                dump += " {" + toBoogie(f.body.expression) + "}";
            else
                dump += ";";
            file.WriteLine(dump);
        }

        //////////////////////////////////////////////////////////////////////////
        private string toBoogie(Expression expression)
        {
//            if (targetE is 
//            if (targetE is AtomicExpression)
            return expression.ToString();
//            if (
//            throw new NotImplementedException();
        }

        //////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////
        /*
         * TODO:
         *      Unique Constant
         *      Constant order
         *              
        */
        //////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////
        private void dumpConstants(Scope s)
        {
            foreach (var v in s.locals)
                if (v.isConstant /*&& !unusedVariables.Contains(v.name)*/)
                    dumpConstant(v);
        }

        //////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////
        private void dumpConstant(ProgramVariable v)
        {
            file.WriteLine("const {2}{0} : {1};", v.name, toBoogie(v.type),
                           ((v is Constant && (v as Constant).isUnique) ? "unique " : ""));
        }

        //////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////
        private void dumpTypes()
        {
            foreach (var ts in p.parentScope.types)
                dumpTypeSynonym(ts);
            foreach (var tc in p.parentScope.typeConstructors)
                dumpTypeConstructor(tc);
        }

        //////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////
        private void dumpTypeConstructor(TypeConstructor tc)
        {
            file.WriteLine("type {0};", toBoogie(tc));
        }

        //////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////
        private void dumpTypeSynonym(TypeSynonym ts)
        {
            string rep = ts.name;
            foreach (var tp in ts.typeParameters)
                rep += " " + tp.name;
            rep += " = " + toBoogie(ts.type);
            file.WriteLine("type {0};", rep);
        }

        //////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////
        private static string toBoogie(IType t)
        {
            if (t is IntegerType)
                return "int";
            if (t is BooleanType)
                return "bool";
            if (t is BitVectorType)
                return "bv" + (t as BitVectorType).width.ToString();
            if (t is MapType)
                return toBoogie(t as MapType);
            if (t is TypeConstructorInstance)
                return toBoogie(t as TypeConstructorInstance);
            if (t is VariableType)
                return toBoogie(t as VariableType);
            throw new Exception();
        }

        //////////////////////////////////////////////////////////////////////////
        private static string toBoogie(MapType mt)
        {
            string result = mt.originalName;
            if (result == null)
            {
                result = "";
                if (mt.typeParameters.Count() > 0)
                {
                    result += "<";
                    for (int i = 0; i < mt.typeParameters.Count(); i++)
                        result += (i == 0 ? "" : ",") + mt.typeParameters[i].name;
                    result += ">";
                }

                result += "[";
                for (int i = 0; i < mt.domain.Count(); i++)
                    result += (i == 0 ? "" : ",") + toBoogie(mt.domain[i]);
                result += "]";
                result += toBoogie(mt.range);
            }
            return result;
        }

        //////////////////////////////////////////////////////////////////////////
        private static string toBoogie(TypeConstructorInstance tci)
        {
            string result = tci.typeConstructor.name;
            foreach (var a in tci.arguments)
                result += " " + "(" + toBoogie(a) + ")";
            return result;
        }

        //////////////////////////////////////////////////////////////////////////
        private static string toBoogie(VariableType vt)
        {
            return vt.typeVariable.name;
        }

        //////////////////////////////////////////////////////////////////////////
        private static string toBoogie(TypeConstructor typeConstructor)
        {
            string result = typeConstructor.name;
            for (int i = 0; i < typeConstructor.arity; i++)
                result += " m" + i.ToString();
            return result;
        }


        //////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////
        private static void dump(Procedure p, string fileName)
        {
            var file = new StreamWriter(fileName);
            var dumper = new BoogieDumper(p, file);

            dumper.dump();
            file.Close();
            file.Dispose();
        }
    }
}