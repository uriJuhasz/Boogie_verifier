using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Analyzers.Tools;
using Slicer.Programs.Expressions;
using Slicer.Programs.Expressions.Basic;
using Slicer.Programs.Expressions.utilities;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;
using Slicer.StateSpace.Functions;
using Slicer.StateSpace.Functions.Basic;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Types.Quantification;
using Slicer.StateSpace.Variables;
using Slicer.StateSpace.Variables.Quantification;
using Slicer.StateSpace.Variables.Quantification.Basic;

namespace Slicer.Analyzers
{
    internal class MapWriteRemover : AVisitor
    {
        private readonly TypeInstanceCollector tic;
        private readonly Queue<StatementId> todo = new Queue<StatementId>();
        private readonly Dictionary<string, Expression> versionMap = new Dictionary<string, Expression>();

        public MapWriteRemover(Procedure procedure, TypeInstanceCollector tic)
            : base(procedure)
        {
            this.tic = tic;
        }

        public static void remove(Procedure procedure, TypeInstanceCollector tic)
        {
            new MapWriteRemover(procedure, tic).remove();
        }

        private void remove()
        {
            foreach (var bb in procedure.blocks)
                foreach (var si in bb.statements)
                    todo.Enqueue(si.statementId);

            while (todo.Count > 0)
                todo.Dequeue().statement.visit(this);
        }

        public override Expression visit(FAE fae)
        {
            if (!(fae.function is MapWrite))
                return base.visit(fae);

            Expression um = makeMapWriteMap(fae);
            return um;
        }

        private Expression makeMapWriteMap(FAE fae)
        {
            Debug.Assert(fae.function is MapWrite);
            Debug.Assert(fae.arguments[0].type is MapType);
            var mu = fae.function as MapWrite;
            Expression result;
            if (!versionMap.TryGetValue(fae.ToString(), out result))
            {
                var ot = fae.arguments[0].type as MapType;
                Debug.Assert(ot != null);
                var s = new TypeParameterInstantiation(ot.typeParameters, mu.typeArguments.Skip(1).ToArray());
//                var ots = new MapType(new TypeVariable[0], (from m in ot.domain select m.substitute(s)).ToArray(), ot.range.substitute(s));
                Expression m = fae.arguments[0];
                Expression[] i = fae.arguments.Take(fae.arguments.count - 1).Skip(1).ToArray();

                if (fae.freeVariables.Count > 0)
                {
//m(fv)[i(fv):=x(fv)] ==> v(fv)  (assume v(fv)[i]==x, assume forall fv : forall j : j!=i(fv) ==> v(fv)[j] == m(fv)[j]
                    var fvt = TypeTuple.make(from fv in fae.freeVariables select fv.type);
                    string fn = getFreshMUName("mu");
                    var ft = new BFunctionTemplate(fn, "", new TypeVariable[0], new BasicFunctionSignature(ot, fvt),
                                                       null);
                    Function f = ft.getInstance();
                    IEnumerable<BasicBoundVariableExpression> fve = from fv in fae.freeVariables
                                                                    select new BasicBoundVariableExpression(fv);
                    result = new BasicFAE(f, new ExpressionList(fve));
                }
                else
                {
                    //m[i:=x] ==> v  (assume v[i]==x, assume forall j : j!=i ==> v[j] == m[j]
                    string nvn = getFreshMUName("mu");
                    var nv = new ProgramVariable(nvn, ot, false, false, false, false);
                    procedure.addVariable(nv);
                    result = new BasicProgramVariableExpression(nv);
                }
                Expression[] j =
                    (from e in i select new BasicBoundVariableExpression(makeBoundVariable(e.type))).ToArray();
                //forall j : j!=i ==> v[j]==m[j]
                addConditionalMapEqualityAxiom(i, result, m, mu.typeArguments);
                //v[i]==x;
                Expression x = fae.arguments.Last();
                addEqualityAxiom(ml(result, i, mu.typeArguments.Skip(1).ToArray(), x.type), fae.arguments.Last());
            }
            return result;
        }

        private string getFreshMUName(string p)
        {
            int index = 0;
            while (true)
            {
                string result = p + "_" + index.ToString();
                index++;
                if (procedure.tryFindVariable(result) != null)
                    continue;
                if (procedure.findFunctionTemplate(result) != null)
                    continue;
                return result;
            }
        }

        private void addConditionalMapEqualityAxiom(Expression[] i, Expression mu, Expression m,
                                                    ITypeTuple typeArguments)
        {
            Debug.Assert(mu.type.ToStringN() == m.type.ToStringN());
            string mlIndex = TypeInstanceCollector.makeString(typeArguments);
            Debug.Assert(tic.functionInstanceMap["MapRead"].ContainsKey(mlIndex));
            Debug.Assert(m.type is MapType);
            var mt = m.type as MapType;

            TypeInstanceCollector.GFunctionInstance[] tpis = (from tpi in tic.functionInstanceMap["MapRead"].Values
                                                              where
                                                                  tpi.function.typeArguments.First().ToStringN() ==
                                                                  mt.ToStringN()
                                                              select tpi).ToArray();
            Debug.Assert(
                (from tpi in tpis select TypeInstanceCollector.makeString(tpi.function.typeArguments)).Contains(
                    TypeInstanceCollector.makeString(typeArguments)));
            foreach (var tpi in tpis)
            {
                var ta = tpi.function.typeArguments;
                Debug.Assert(ta.Count() == mt.typeParameters.Count() + 1);
                Debug.Assert(ta.First().ToStringN() == mt.ToStringN());
                var mta = ta.Skip(1).ToArray();
                var ts = new TypeParameterInstantiation(mt.typeParameters, mta);
                var at = (from a in mt.domain select a.substitute(ts)).ToArray();
                var rt = mt.range.substitute(ts);
                var bvs = (from a in at select procedure.makeFreshBoundVariable(a)).ToArray();
                var bves =
                    (from bv in bvs select new BasicBoundVariableExpression(bv)).ToArray();

                if (TypeInstanceCollector.makeString(ta) == TypeInstanceCollector.makeString(typeArguments))
                    addAxiom(
                        sentence(implication(inEquality(bves, i), equality(ml(m, bves, mta, rt), ml(mu, bves, mta, rt)))));
                else
                    addAxiom(sentence(equality(ml(m, bves, mta, rt), ml(mu, bves, mta, rt))));
            }
        }

        private Expression inEquality(IEnumerable<Expression> i, IEnumerable<Expression> j)
        {
            Expression result = null;
            Debug.Assert(i.Count() == j.Count());
            Debug.Assert(i.Count() > 0);
            IEnumerator<Expression> ie = i.GetEnumerator();
            IEnumerator<Expression> je = j.GetEnumerator();
            while (ie.MoveNext() && je.MoveNext())
            {
                if (result == null)
                    result = not(equality(ie.Current, je.Current));
                else
                    result = or(result, not(equality(ie.Current, je.Current)));
            }
            return result;
        }

        private Expression not(Expression e)
        {
            return new BasicFAE(BFunction.not, new ExpressionList(e));
        }

        private Expression or(Expression e1, Expression e2)
        {
            return new BasicFAE(BFunction.or, new ExpressionList(e1, e2));
        }

        private Expression implication(Expression e1, Expression e2)
        {
            return new BasicFAE(BFunction.implication, new ExpressionList(e1, e2));
        }

        private BoundVariable makeBoundVariable(IType dataType)
        {
            return procedure.makeFreshBoundVariable(dataType);
        }

        private void addEqualityAxiom(Expression e1, Expression e2)
        {
            addAxiom(sentence(equality(e1, e2)));
        }

        private void addAxiom(Expression e)
        {
            StatementId s = procedure.cfg.startNode.insertStatementAt(0, new Assume(e));
            todo.Enqueue(s);
        }

        private Expression sentence(Expression expression)
        {
            Expression e = expression;
            while (e.freeVariables.Count > 0)
                e = new BasicQuantifiedExpression(procedure, BasicForall.get, e.freeVariables.Last(), e,
                                                  new[] { new Expression[0] }, "");
            return e;
        }

        private Expression equality(Expression e1, Expression e2)
        {
            return new BasicFAE(BFunction.eq(e1.type), new ExpressionList(e1, e2));
        }

/*        private Expression ml(Expression m, IEnumerable<Expression> args)
        {
            var mt = m.type as MapType;
            return ml(m, args, new DataType[0], mt.range);
        }*/

        private Expression ml(Expression m, IEnumerable<Expression> args, IType[] typeArgs, IType resultType)
        {
            Debug.Assert(m.type is MapType);
            var mt = m.type as MapType;
            Debug.Assert(args.Count() == mt.domain.Count());
            Debug.Assert(typeArgs.Count() == mt.typeParameters.Count());
            Expression[] mlArgs = new Expression[1] {m}.Concat(args).ToArray();
            return new BasicFAE(
                BasicMapRead.mapRead(typeArgs, (from a in mlArgs select a.type).ToArray(), resultType),
                new ExpressionList(mlArgs)
                );
        }
    }
}