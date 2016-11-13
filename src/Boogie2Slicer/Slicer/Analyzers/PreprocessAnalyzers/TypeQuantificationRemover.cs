using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.Programs.Expressions;
using Slicer.Programs.Expressions.Basic;
using Slicer.Programs.Expressions.utilities;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;
using Slicer.StateSpace.Functions;
using Slicer.StateSpace.Functions.Basic;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Types.Quantification;
using Slicer.StateSpace.Values;
using Slicer.StateSpace.Variables.Quantification;

namespace Slicer.Analyzers
{
    internal class TypeQuantificationRemover
    {
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        private readonly Procedure procedure;
        private readonly QuantifiedTypeCollector qtc;

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        private readonly Queue<StatementId> tqrQueue = new Queue<StatementId>();

        private StatementId currentSID;
        private int predicateIndex;

        public TypeQuantificationRemover(Procedure p, QuantifiedTypeCollector qtc)
        {
            this.qtc = qtc;
            procedure = p;
        }

        public static void remove(Procedure p, QuantifiedTypeCollector qtc)
        {
            var tqr = new TypeQuantificationRemover(p, qtc);
            tqr.removeTypeQuantification();
        }

        private void removeTypeQuantification()
        {
            foreach (var bb in procedure.blocks)
                removeTypeQuantification(bb);
        }

        private void removeTypeQuantification(BasicBlock bb)
        {
            foreach (var sii in bb.statements)
                tqrQueue.Enqueue(sii.statementId);

            while (tqrQueue.Count > 0)
                removeTypeQuantification(tqrQueue.Dequeue());
        }

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        private void removeTypeQuantification(StatementId si)
        {
            if (!(si.statement is PredicateStatement))
                return;

            var ps = si.statement as PredicateStatement;

            currentSID = si;
            ps.expression = removeTypeQuantification(ps.expression);
            currentSID = null;
        }

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        private Expression removeTypeQuantification(Expression e)
        {
            if (e is QuantifiedTypeExpression)
                return removeTypeQuantification(e as QuantifiedTypeExpression);
            if (e is QuantifiedExpression)
                return removeTypeQuantification(e as QuantifiedExpression);
            if (e is FAE)
                return removeTypeQuantification(e as FAE);
            return e;
        }

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        private Expression removeTypeQuantification(QuantifiedTypeExpression qte)
        {
            Expression e = qte.expression;
            while (e is QuantifiedTypeExpression)
                e = (e as QuantifiedTypeExpression).expression;

#if DEBUG            //            Console.WriteLine("Removing type quantification {0}", qte.ToString());
            {
                var tvs = new HashSet<TypeVariable>();
                Expression qe = qte;
                while (qe is QuantifiedTypeExpression)
                {
                    tvs.Add((qe as QuantifiedTypeExpression).variable);
                    qe = (qe as QuantifiedTypeExpression).expression;
                }

                var qvs = new List<BoundVariable>();
                var ee = e;
                while (ee is QuantifiedExpression)
                {
                    var qqe = ee as QuantifiedExpression;
                    qvs.Add(qqe.variable);
                    ee = qqe.expression;
                }
                var gqvs = (from qv in qvs where !qv.type.freeTypeVariables.Intersect(tvs).Any() select qv).ToArray();
//                if (gqvs.Any())
//                    Debugger.Break();
            }
#endif

            Function connective = (qte.quantifier is TypeForall) ? BFunction.and : BFunction.or;
            bool zeroValue = (qte.quantifier is TypeForall) ? true : false;
            return openQuantifier(e, connective, zeroValue);
        }

        private Expression openQuantifier(Expression e, Function connective, bool zeroValue)
        {
            Expression[] instances = getTypeInstances(e);
            return cascadeConnective(connective, instances, zeroValue);
        }

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        private Expression cascadeConnective(Function connective, Expression[] instances, bool zeroValue)
        {
            if (instances.Count() == 0)
                return new BasicLiteralExpression(BooleanValue.makeBooleanValue(zeroValue));
            Expression result = null;
            foreach (var i in instances)
                if (result == null)
                    result = i;
                else
                    result = new BasicFAE(connective, new ExpressionList(result, i));
            return result;
        }

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        private Expression[] getTypeInstances(Expression e)
        {
            List<List<IType>> types = getTypesToInstantiate(e);
            var instances = new List<Expression>();
            foreach (var tti in types)
                instances.Add(makeInstance(e, tti));
            return instances.ToArray();
        }

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        private Expression makeInstance(Expression e, List<IType> tti)
        {
            Debug.Assert(tti.Count == e.freeTypeVariables.Count);
            TypeVariable[] ftvs = e.freeTypeVariables.ToArray();
            var s = new ExpressionSubstitution();
            for (int i = 0; i < tti.Count; i++)
                s.typeSubstitution.add(ftvs[i], tti[i]);
            return e.substitute(s);
        }

        /*
                ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                private Expression removeTypeQuantification(QuantifiedTypeExpression qte)
                {
                    Expression e = qte.expression;
                    while (e is QuantifiedTypeExpression)
                        e = (e as QuantifiedTypeExpression).expression;

        //            Console.WriteLine("Removing type quantification {0}", qte.ToString());

                    var connective = (qte.quantifier is TypeForall) ? BasicFunction.and : BasicFunction.or;
                    return makeFreshPredicateAndAddDefinition(e,connective);
                }

                ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                private Expression makeFreshPredicateAndAddDefinition(Expression e,Function connective)
                {
                    var fvl = e.freeVariables.ToList();
                    Function P = makeFreshPredicate(fvl);

        //            Console.WriteLine("\t{0} replaces {1}", P.name, e.ToString());
                    var newSID = currentSID.prependStatement(new Assume(makeTQPredicateDefinition(P, e,connective)));
                    tqrQueue.Enqueue(newSID);

                    return new BasicFunctionApplicationExpression(
                        P,
                        new ExpressionList(from bv in fvl select new BasicBoundVariableExpression(bv))
                    );

                }
        
                ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                private Expression makeTQPredicateDefinition(Function P, Expression e, Function connective)
                {
                    var fvl = e.freeVariables.ToList();
                    var ftvl = e.freeTypeVariables.ToList();
                    var types = getTypesToInstantiate(e);
                    var P_TQ = makeFreshTQPredicates(P, ftvl, types);

        //            Console.WriteLine("\tWith {0} free type variables", ftvl.ToString()); //(from t in ftvl select t.ToString()));

                    BoundVariable[] bvs = new BoundVariable[fvl.Count];
                    for (int i = 0; i < bvs.Length; i++)
                        bvs[i] = makeFreshVariable(fvl[i].type);

                    Debug.Assert(P_TQ.Count() > 0);

                    for (var i = 0; i < P_TQ.Count; i++)
                    {
                        var newS = new Assume(makeTQDefinition(P_TQ[i], types[i], ftvl, e));
                        var newSID = currentSID.prependStatement(newS);
                        tqrQueue.Enqueue(newSID);
                    }


                    Expression tc = null;
                    for (int i = 0; i < P_TQ.Count(); i++)
                    {
                        var nc = new BasicFunctionApplicationExpression(P_TQ[i], new ExpressionList(from bv in bvs select new BasicBoundVariableExpression(bv)));
                        if (tc == null)
                            tc = nc;
                        else
                            tc = new BasicFunctionApplicationExpression(connective, new ExpressionList(tc, nc));
                    }


                    return makeSentence(
                        new BasicFunctionApplicationExpression(
                            BasicFunctionTemplate.equivalence.getInstance(),
                            new ExpressionList(
                                new BasicFunctionApplicationExpression(
                                    P,
                                    new ExpressionList(from bv in bvs select new BasicBoundVariableExpression(bv))
                                ),
                                tc
                            )
                        ), procedure
                    );
                }

                ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                private Expression makeTQDefinition(Function function, List<DataType> typeArguments, List<TypeVariable> typeVariables, Expression e)
                {
                    var fvl = e.freeVariables.ToList();
                    ExpressionSubstitution s = new ExpressionSubstitution();
                    Debug.Assert(typeArguments.Count == typeVariables.Count);
                    for (int i = 0; i < typeArguments.Count; i++)
                        s.typeSubstitution.add(typeVariables[i], typeArguments[i]);

                    BoundVariable[] bvs = new BoundVariable[fvl.Count];
                    for (int i = 0; i < bvs.Length; i++)
                    {
                        bvs[i] = makeFreshVariable(fvl[i].type);
                        s.add(fvl[i].name, new BasicBoundVariableExpression(bvs[i]));
                    }

                    return makeSentence(
                        new BasicFunctionApplicationExpression(
                            BasicFunctionTemplate.equivalence.getInstance(),
                            new ExpressionList(
                                new BasicFunctionApplicationExpression(
                                    function,
                                    new ExpressionList(from bv in bvs select new BasicBoundVariableExpression(bv))
                                ),
                                e.substitute(s)
                            )
                        ), procedure
                    );
                }

                ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                public static Expression makeSentence(Expression e,Scope s)
                {
                    var result = e;
                    while (result.freeVariables.Count > 0)
                        result = new BasicQuantifiedExpression(s,
                            BasicForall.get, result.freeVariables.First(), result, new List<Expression>(), "");
                    return result;
                }

                ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                private List<Function> makeFreshTQPredicates(Function P, List<TypeVariable> typeVariables, List<List<DataType>> types)
                {
                    List<Function> result = new List<Function>();
                    foreach (var t in types)
                    {
                        string name = makeInstanceName(P, t);
                        TypeParameterInstantiation i = new TypeParameterInstantiation(typeVariables.ToArray(), t.ToArray());
                        BasicFunctionSignature s = new BasicFunctionSignature(
                            P.resultType.substitute(i),
                            (from at in P.argumentTypes select at.substitute(i)).ToArray()
                        );
                        var p = new BasicFunctionTemplate(name, "", new TypeVariable[0], s, null);
                        procedure.parentScope.addFunctionTemplate(p);
                        result.Add(p.getInstance());
                    }
                    return result;
                }
                */
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        private string makeInstanceName(Function P, List<IType> lt)
        {
            string result = P.name;
            foreach (var t in lt)
                result += "$" + makeTypeString(t);
            Debug.Assert(result.IndexOf(' ') == -1);
            return result;
        }

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        public static string makeTypeString(IType t)
        {
            if (t is TypeConstructorInstance)
            {
                var tci = t as TypeConstructorInstance;
                string result = tci.typeConstructor.name;
                foreach (var a in tci.arguments)
                    result += "_" + makeTypeString(a);
                return result;
            }
            else if (t is MapType)
            {
                var tm = t as MapType;
                if (tm.originalName != null && tm.originalName.IndexOf(' ') == -1)
                    return tm.originalName;
                string result = "Map";
                foreach (var a in tm.domain)
                    result += "_" + makeTypeString(a);
                result += "_" + makeTypeString(tm.range);
                Debug.Assert(result.IndexOf(' ') == -1);
                return result;
            }
            else if (t is AtomicType)
                return t.ToString();
            else if (t is VariableType)
                return t.ToString();
            else if (t is BitVectorType)
                throw new NotImplementedException();
            else
                throw new NotImplementedException(); // return t.ToString();
        }

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////


        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        private BoundVariable makeFreshVariable(IType dataType)
        {
            return procedure.makeFreshBoundVariable(dataType);
        }

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        private Function makeFreshPredicate(List<BoundVariable> list)
        {
            string name = "P$TQ_" + predicateIndex.ToString();
            predicateIndex++;
            var ft =
                new BFunctionTemplate(
                    name,
                    "",
                    new TypeVariable[0],
                    new BasicFunctionSignature(
                        BooleanType.booleanType,
                        (from bv in list select bv.type).ToArray()
                        ),
                    null
                    );
            procedure.parentScope.addFunctionTemplate(
                ft
                );
            return ft.getInstance();
        }

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        private Expression removeTypeQuantification(QuantifiedExpression e)
        {
            Expression ne = removeTypeQuantification(e.expression);
            if (!ReferenceEquals(e.expression, ne))
                return new BasicQuantifiedExpression(procedure, e.quantifier, e.variable, ne, (from trs in e.triggers select trs).ToArray(), e.attributes);
            return e;
        }

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        private Expression removeTypeQuantification(FAE e)
        {
            var na = new Expression[e.arguments.count];
            bool changed = false;
            for (int i = 0; i < e.arguments.count; i++)
            {
                na[i] = removeTypeQuantification(e.arguments[i]);
                if (!ReferenceEquals(na[i], e.arguments[i]))
                    changed = true;
            }
            if (changed)
                return new BasicFAE(e.function, new ExpressionList(na));
            return e;
        }

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        private List<List<IType>> getTypesToInstantiate(Expression e)
        {
            List<TypeVariable> ftvl = e.freeTypeVariables.ToList();

            var gtl = new List<IType>();
            foreach (var t in qtc.types)
                if (t.Value.type.freeTypeVariables.Count == 0)
                    gtl.Add(t.Value.type);

            var indices = new int[ftvl.Count];
            for (int i = 0; i < ftvl.Count; i++)
                indices[i] = 0;

            var result = new List<List<IType>>();
            HashSet<IType> ngts = getNonGroundTypes(e);
            IEnumerable<string> programGroundTypeNames = from p in qtc.types where p.Value.type.isGround select p.Key;
/*            {
                Console.Write("Program Types = {");
                foreach (var t in programGroundTypeNames)
                    Console.Write(t + " ");
                Console.WriteLine("}");
            }
  */
            while (true)
            {
                var l = new List<IType>();
                for (int i = 0; i < indices.Length; i++)
                    l.Add(gtl[indices[i]]);

                {
                    var tpi = new TypeParameterInstantiation(ftvl.ToArray(), l.ToArray());
/*                    {
                        Console.Write("{");
                        foreach (var ngt in ngts)
                            Console.Write(ngt.substitute(tpi).ToStringExpanded() + "|");
                        Console.WriteLine("}");
                    }
                    */
                    foreach (var ngt in ngts)
                    {
                        Debug.Assert(ngt.substitute(tpi).isGround);
                        if (!programGroundTypeNames.Contains(ngt.substitute(tpi).ToStringN()))
                            goto skipAdd;
                    }
//                    Console.WriteLine("Accepted");
                    result.Add(l);
                    skipAdd:
                    ;
                }

                Debug.Assert(indices.Length > 0);
                int j = indices.Length - 1;
                while (true)
                {
                    Debug.Assert(indices[j] < gtl.Count);
                    if (indices[j] == gtl.Count - 1)
                        if (j == 0)
                            goto endLoop;
                        else
                        {
                            indices[j] = 0;
                            j--;
                        }
                    else
                    {
                        indices[j]++;
                        break;
                    }
                }
            }
            endLoop:

            return result;
        }

        private HashSet<IType> getNonGroundTypes(Expression e)
        {
            var result = new HashSet<IType>();
            result.UnionWith(getNonGroundTypes(e.type));

            if (e is QuantifiedTypeExpression)
                result.UnionWith(getNonGroundTypes((e as QuantifiedTypeExpression).expression));
            else if (e is QuantifiedExpression)
                result.UnionWith(getNonGroundTypes((e as QuantifiedExpression).expression));
            else if (e is FAE)
                foreach (var a in (e as FAE).arguments)
                    result.UnionWith(getNonGroundTypes(a));

            return result;
            throw new NotImplementedException();
        }

        private HashSet<IType> getNonGroundTypes(IType t)
        {
            var result = new HashSet<IType>();
            if (t.freeTypeVariables.Count > 0)
                result.Add(t);

            if (t is TypeConstructorInstance)
                foreach (var a in (t as TypeConstructorInstance).arguments)
                    result.UnionWith(getNonGroundTypes(a));
//            else if (t is MapType)
//                foreach (var m in (t as MapType).domain)
//                    result.UnionWith(getNonGroundTypes(m));
            return result;
        }
    }
}