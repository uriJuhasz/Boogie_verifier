using System.Collections.Generic;
using System.Linq;
using Slicer.Analyzers.Tools;
using Slicer.Programs.Expressions;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;
using Slicer.StateSpace.Functions;
using Slicer.StateSpace.Functions.Basic;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Variables;

namespace Slicer.Analyzers
{
    internal class UnusedSymbolRemover : AVisitor
    {
        private readonly Dictionary<string, Dictionary<PredicateStatement, StatementId>> functionOccurences =
            new Dictionary<string, Dictionary<PredicateStatement, StatementId>>();

        public readonly HashSet<string> unusedFunctions;
        public readonly HashSet<string> unusedTypeConstructors;
        public readonly HashSet<string> unusedTypeSynonyms;
        public readonly HashSet<string> unusedVariables;

//        public readonly Dictionary<string, Type> usedTypes;

        private PredicateStatement currentPredicate;
        private StatementId currentStatementId;

        private UnusedSymbolRemover(Procedure p)
            : base(p)
        {
            unusedVariables = new HashSet<string>();
            foreach (var v in p.locals)
                unusedVariables.Add(v.name);
            foreach (var v in p.parentScope.locals)
                unusedVariables.Add(v.name);

            unusedFunctions = new HashSet<string>();
            foreach (var f in p.parentScope.functionTemplates)
                unusedFunctions.Add(f.name);

            unusedTypeSynonyms = new HashSet<string>();
            foreach (var t in p.parentScope.types)
                unusedTypeSynonyms.Add(t.name);
            unusedTypeSynonyms.Remove("Boolean");
            unusedTypeSynonyms.Remove("Integer");

            unusedTypeConstructors = new HashSet<string>();
            foreach (var t in p.parentScope.typeConstructors)
                unusedTypeConstructors.Add(t.name);
        }

        public override Statement visit(Assert s)
        {
            return visitI(s);
        }

        public override Statement visit(Assume s)
        {
            Statement result = visitI(s);
            return result;
        }

        private Statement visitI(PredicateStatement s)
        {
            currentPredicate = s;
            s.expression = s.expression.visit(this);
            currentPredicate = null;
            return s;
        }

        public static void Remove(Procedure p)
        {
            var uvr = new UnusedSymbolRemover(p);

            foreach (var bb in p.cfg.nodes)
                foreach (var si in bb.statements)
                    uvr.visit(si.statementId);
            foreach (var ft in p.parentScope.functionTemplates)
            {
                ft.signature.resultType.visit(uvr);
                foreach (var at in ft.signature.argumentTypes)
                    at.visit(uvr);
            }
            foreach (var v in p.parentScope.locals)
                v.type.visit(uvr);
            foreach (var v in p.locals)
                v.type.visit(uvr);
            foreach (var v in p.inputs)
                v.type.visit(uvr);
            foreach (var v in p.outputs)
                v.type.visit(uvr);

//            foreach (var e in ( from ft in p.parentScope.functionTemplates where ft.fae!=null select ft.fae))
//                e.visitI(uvr);

            var deleted = new HashSet<StatementId>();
            foreach (var f in uvr.functionOccurences)
                if (f.Value.Count == 1 && !ExpressionSymbolCounter.isInterpreted(f.Key) &&
                    !deleted.Contains(f.Value.First().Value))
                {
                    Expression e = f.Value.First().Key.expression;
//                    Console.WriteLine("Function {0} has one occurence: {1}", f.Key, e.ToString());
                    Expression qe = e;
                    while (qe is QuantifiedTypeExpression)
                        qe = (qe as QuantifiedTypeExpression).expression;
                    while (qe is QuantifiedExpression)
                        qe = (qe as QuantifiedExpression).expression;
                    var fae = qe as FAE;
                    if (fae != null)
                    {
                        if (BFunction.isEquality(fae.function) || BFunction.isEquivalence(fae.function) ||
                            BFunction.isImplication(fae.function))
                        {
                            var a0fae = fae.arguments[0] as FAE;
                            while (a0fae != null &&
                                   (BFunction.isMapRead(a0fae.function) || BFunction.isCoerce(a0fae.function) ||
                                    (a0fae.arguments.count == 1 && a0fae.function.name != f.Key)))
                                a0fae = a0fae.arguments[0] as FAE;
                            var a1fae = fae.arguments[1] as FAE;
                            while (a1fae != null &&
                                   (BFunction.isMapRead(a1fae.function) || BFunction.isCoerce(a1fae.function) ||
                                    (a1fae.arguments.count == 1 && a1fae.function.name != f.Key)))
                                a1fae = a1fae.arguments[0] as FAE;
                            if ((a0fae != null && a0fae.function.name == f.Key) ^
                                (a1fae != null && a1fae.function.name == f.Key))
                            {
//                                Console.WriteLine("\tDefinition - can be removed safely");
                                uvr.unusedFunctions.Add(f.Key);
                                deleted.Add(f.Value.First().Value);
                                f.Value.First().Value.delete();
                            }
                        }
                    }
                }
            ///////////////////////////////////////////////////////////
            foreach (var v in uvr.unusedVariables)
                if (p.tryFindVariable(v) != null)
                    p.removeVariable(v);
                else
                    p.parentScope.removeVariable(v);

            foreach (var f in uvr.unusedFunctions)
                    p.removeFunctionTemplate(f);

            foreach (var tc in uvr.unusedTypeConstructors)
                p.removeTypeConstructor(tc);

            foreach (var ts in uvr.unusedTypeSynonyms)
                p.removeTypeSynonym(ts);
            //            return uvr;
        }

        public void visit(StatementId si)
        {
            currentStatementId = si;
            si.statement.visit(this);
            currentStatementId = null;
        }

        public override ProgramVariable visitReadProgramVariable(ProgramVariable v)
        {
            base.visitReadProgramVariable(v);
            unusedVariables.Remove(v.name);
            return v;
        }

        public override ProgramVariable visitWriteProgramVariable(ProgramVariable v)
        {
            base.visitWriteProgramVariable(v);
            unusedVariables.Remove(v.name);
            return v;
        }

        public override Function visitFunction(Function f)
        {
            base.visitFunction(f);
            unusedFunctions.Remove(f.name);

            {
                Dictionary<PredicateStatement, StatementId> fo = null;
                if (!functionOccurences.TryGetValue(f.name, out fo))
                {
                    functionOccurences[f.name] = fo = new Dictionary<PredicateStatement, StatementId>();
                }
                fo[currentPredicate] = currentStatementId;
            }

            return f;
        }

        public override void visit(MapType t)
        {
            base.visit(t);
            if (t.originalType != null)
                t.originalType.visit(this);
//                unusedTypeSynonyms.Remove(t.originalType.typeConstructor.name);
        }

        public override void visit(TypeConstructorInstance t)
        {
            base.visit(t);
            unusedTypeConstructors.Remove(t.typeConstructor.name);
            unusedTypeSynonyms.Remove(t.typeConstructor.name);
        }

        public override void visit(IntegerType t)
        {
            unusedTypeConstructors.Remove("Integer");
        }
    }
}