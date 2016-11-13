#region

using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Slicer.Analyzers.FOLConverter.Clauses;
using Slicer.Analyzers.FOLConverter.Formulae;
using Slicer.StateSpace.Types;

#endregion

namespace Slicer.Analyzers.FOLConverter.Backends
{
    internal class SMTLibDumperFormulae
    {
        public static string smtExtension = ".smt2";
        internal void dumpSMTLib(ISRS srs,string baseName)
        {
            var fileName =
                FileUtilities.trimFileName(srs.procedure.fileName + "." + srs.procedure.name + "." +
                                           baseName + smtExtension);
            var handle = File.Create(fileName);
            var file = new StreamWriter(handle);

            dumpSorts(file,getDataTypes(srs));

            dumpPredicates(file, srs.predicateMap.Values);

            dumpFunctions(file, from f in srs.functionMap.Values where !srs.predicateMap.ContainsKey(f.name) select f);

            dumpClauses(file,srs.currentClauseSet.clauses);

            file.WriteLine("\n;Commands");
            file.WriteLine("(check-sat)");
            file.Close();
        }

        #region declarations
        public static void dumpSorts(StreamWriter file, IEnumerable<IType> dataTypes)
        {
            file.WriteLine(";Sorts");
            var map = new SortedSet<string>();
            foreach (var t in dataTypes)
                if (!isInterpreted(t))
                    map.Add(polish(t));
            foreach (var s in map)
                file.WriteLine("(declare-sort {0} 0)", s);
        }
        public static void dumpFunctions(StreamWriter file, IEnumerable<Function> functions)
        {
            file.WriteLine("\n;Functions");
            var map = new SortedDictionary<string, Function>();

            foreach (var f in functions)
                if (!Slicer.isInterpreted(f))
                    map[polish(f)] = f;
            foreach (var kv in map)
            {
                var f = kv.Value;
                file.Write("(declare-fun {0} (", polish(f));
                foreach (var t in f.argumentTypes)
                    file.Write(" " + polish(t));
                file.WriteLine(" ) {0})", polish(f.resultType));
            }
        }
        public static void dumpPredicates(StreamWriter file, IEnumerable<Predicate> predicates)
        {
            file.WriteLine("\n;Predicates");
            var map = new SortedDictionary<string, Predicate>();

            foreach (var p in predicates)
                if (!Slicer.isInterpreted(p))
                    map[polish(p)] = p;
            foreach (var kv in map)
            {
                var p = kv.Value;
                file.Write("(declare-fun {0} (", polish(p));
                foreach (var t in p.argumentTypes)
                    file.Write(" " + polish(t));
                file.WriteLine(" ) Bool)");
            }
        }
        public static void dumpClauses(StreamWriter file, IEnumerable<Clause> clauses)
        {
            file.WriteLine("\n;Clauses");
            foreach (var c in clauses)
            {
                var cc = polish(c);
                file.WriteLine("(assert {0})", cc);
            }
        }
        #endregion declarations

        #region polish
        public static string rectify(string s)
        {
            var ns = "";
            foreach (var c in s)
                if (c == '#')
                    ns += "@hash@";
                else
                    ns += c;

            if (ns.StartsWith("@") )
                return ns = "$" + ns;
            else
                if (ns.StartsWith("-") && ns.Length>1 && ns.Skip(1).All(Char.IsDigit))
                    return "(- " + ns.Substring(1) + ")";
            else
                return ns;
        }
        internal static string polish(Function f)
        {
            if (f.isITE)
                return @"ite";
            return rectify(f.name);
        }
        internal static string polish(IPredicate p)
        {
            if (p.isITE)
                return @"ite";
            return rectify(p.name);
/*            var s = p.name;
            if (s.StartsWith("@"))
                s = "$" + s;
            return s;*/
        }
        internal static string polish(ITypeTuple dts)
        {
            return dts.Aggregate("", (s, dt) => s + "_" + polish(dt));
        }
        internal static string polish(IType dt)
        {
            string result;
            if (dt is BooleanType)
                result = "Bool";
            else if (dt is IntegerType)
                result = "Int";
            else if (dt is BitVectorType)
            {
                var bvt = dt as BitVectorType;
                result = "BitVector_" + bvt.width;
            }
            else if (dt is MapType)
            {
                var mt = dt as MapType;
                //                Debug.Assert(mt.typeParameters.Length == 0);
//                mt.substituteMap
                result = @"$@Map@@";
                var ttv = mt.canonicalParameterArray();
                var sub = mt.getCanonicalSubstitution();
                if (ttv.Any())
                {
                    foreach (var v in ttv)//mt.typeParameters)
                        result += v.typeVariable.name + @"@";
                    result += @"@";
                }
                foreach (var a in mt.domain)
                    result += polish(a.substitute(sub)) + "@";
                result += "To@" + polish(mt.range.substitute(sub)) + "@@";
            }
            else if (dt is TypeConstructorInstance)
            {
                var tci = dt as TypeConstructorInstance;
                var cname = tci.typeConstructor.name;
                result = rectify(cname);
                if (tci.arguments.Count() > 0)
                {
                    result += "$";
                    foreach (var a in tci.arguments)
                        result += polish(a) + "$";
                }
            }
            else if (dt is VariableType)
                result = (dt as VariableType).typeVariable.name;
            else throw new Exception();
            return result.Replace('#', '@');
        }
        internal static string polish(Clause c)
        {
            var vm = new Dictionary<string, string>();
            var result = "";
            var i = 0;
            if (c.freeVariables.Count > 0)
            {
                result += "(forall (";
                foreach (var fv in c.freeVariables)
                {
                    var name = "v" + i;
                    vm[fv.name] = name;
                    result += "(" + name + " " + polish(fv.type) + ")";
                    i++;
                }
                result += ")";
            }

            if (c.literals.Count > 1)
                result += "(or";
            foreach (var a in c.literals)
            {
                var aa = polish(a, vm);
                result += " " + aa;
            }
            if (c.literals.Count > 1)
                result += ")";

            if (c.freeVariables.Count > 0)
                result += ")";

            return result;
        }
        internal static string polish(Literal a, IDictionary<string, string> vm)
        {
            var result = polish(a.f, vm);
            if (!a.polarity)
                result = "(not " + result + ")";
            return result;
        }
        internal static string polish(IAtomicFormula f, IDictionary<string, string> vm)
        {
            if (f is EqualityFormula)
                return polish(f as EqualityFormula, vm);
            return polish(f as PredicateApplication, vm);
        }
        internal static string polish(PredicateApplication f, IDictionary<string, string> vm)
        {
            var result = polish(f.predicate);
            if (f.args.Count() > 0)
            {
                result = "(" + result;
                foreach (var a in f.args)
                    result += " " + polish(a, vm);
                result += ")";
            }
            return result;
        }
        internal static string polish(EqualityFormula f, IDictionary<string, string> vm)
        {
            return "(= " + polish(f.t1, vm) + " " + polish(f.t2, vm) + ")";
        }
        internal static string polish(ITerm a, IDictionary<string, string> vm)
        {
            if (a.isFunctionApplication)
                return polish(a.asFunctionApplication, vm);
            return polish(a.asVariable, vm);
        }
        internal static string polish(FunctionApplicationFormula fa, IDictionary<string, string> vm)
        {
            var result = polish(fa.function);
            if (fa.args.Count() > 0)
            {
                result = "(" + result;
                foreach (var a in fa.args)
                    result += " " + polish(a, vm);
                result += ")";
            }
            return result;
        }
        internal static string polish(Variable v, IDictionary<string, string> vm)
        {
            string s;
            if (!vm.TryGetValue(v.variable.name,out s))
                s=v.variable.name;
            return s;
        }
        #endregion polish

        #region utilities
        private IEnumerable<IType> getDataTypes(ISRS srs)
        {
            var result = new Dictionary<string, IType>();
            foreach (var v in srs.lVarMap.Values)
                result[polish(v.type)] = v.type;
            foreach (var f in srs.functionMap.Values)
            {
                foreach (var a in f.argumentTypes)
                    result[polish(a)] = a;
                result[polish(f.resultType)] = f.resultType;
            }
            foreach (var p in srs.predicateMap.Values)
                foreach (var a in p.argumentTypes)
                    result[polish(a)] = a;
            return new HashSet<IType>(result.Values);
        }

        internal static bool isInterpreted(IType dt)
        {
            return
                polish(dt) == "Bool" || polish(dt) == "Int";
        }
        #endregion utilities

        internal static string polish(IFormula f)
        {
            if (f is IBinaryConnective)
                return polish(f as IBinaryConnective);
            else if (f is Not)
                return polish(f as Not);
            else if (f is IQuantifiedFormula)
                return polish(f as IQuantifiedFormula);
            else if (f is ILiteralFormula)
                return polish(f as ILiteralFormula);
            else if (f is IAtomicFormula)
                return polish(f as IAtomicFormula,new Dictionary<string,string>());
            throw new NotImplementedException();
        }
        internal static string polish(IBinaryConnective f)
        {
            var os = getConnectiveString(f);
            return "(" + os + " " + polish(f.f1) + " " + polish(f.f2) + ")";
        }
        internal static string polish(Not f)
        {
            return "(not " + polish(f.f) + ")";
        }

        internal static string polish(ILiteralFormula f)
        {
            if (f is True)
                return "true";
            else if (f is False)
                return "false";
            throw new Exception();
        }

        internal static string polish(IQuantifiedFormula f)
        {
            var vars = new List<LVar>();
            var ff = f;
            IFormula tf;
            while (true)
            {
                vars.Add(ff.var);
                tf = ff.f;
                if (!(tf is IQuantifiedFormula))
                    break;
                ff = tf as IQuantifiedFormula;
                if ((ff.isUniversal && !(f.isUniversal)) || (ff.isExistential && !(f.isExistential)))
                    break;
            }
            var qs = (f.isUniversal) ? "forall" : "exists";
            var vs = "(" + vars.Aggregate("", (s,v) => s + "(|" + v.name + "| " + polish(v.type) + ")") + ")";
            var pre = "(" + qs + " " + vs;
            var post = ")";
            if (f.attributes.Any() || f.triggers.Any())
            {
                pre += "(!";
                post += ")";
                foreach (var a in f.attributes)
                    post = a + " " + post;
                if (f.triggers.Any())
                {
                    var ps = "";
                    foreach (var ts in f.triggers)
                        if (ts.Any())
                        {
                            ps +=":pattern (";
                            foreach (var t in ts)
                                ps += " " + /*"(" +*/ polish(t, new Dictionary<string, string>()) /*+ ")"*/;
                            ps += ")";
                        }
                    post = ps + " " + post;
                }
            }
            return pre + polish(tf) + post;
        }

        private static object getConnectiveString(IBinaryConnective ff)
        {
            if (ff is And)
                return "and";
            else if (ff is Or)
                return "or";
            else if (ff is EquivalenceFormula)
                return "=";
            else if (ff is Implication)
                return "=>";
            throw new Exception();
        }
    }
}