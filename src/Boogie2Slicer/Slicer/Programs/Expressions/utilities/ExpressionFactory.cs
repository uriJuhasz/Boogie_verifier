using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Numerics;
using Microsoft.Boogie;
using Slicer.Programs.Expressions.Basic;
using Slicer.Programs.Expressions.Boogie;
using Slicer.StateSpace.Functions;
using Slicer.StateSpace.Functions.Basic;
using Slicer.StateSpace.Functions.Boogie;
using Slicer.StateSpace.Types;
using Slicer.StateSpace.Types.Quantification;
using Slicer.StateSpace.Types.Quantification.Basic;
using Slicer.StateSpace.Types.Utilities;
using Slicer.StateSpace.Values;
using Slicer.StateSpace.Variables;
using Slicer.StateSpace.Variables.Quantification;
using Slicer.StateSpace.Variables.Quantification.Basic;
using BoundVariable = Microsoft.Boogie.BoundVariable;
using Constant = Microsoft.Boogie.Constant;
using Function = Slicer.StateSpace.Functions.Function;
using Type = Microsoft.Boogie.Type;
using TypeVariable = Slicer.StateSpace.Types.Quantification.TypeVariable;
using Variable = Microsoft.Boogie.Variable;

namespace Slicer.Programs.Expressions.utilities
{
    public class ExpressionFactory
    {
        ////////////////////////////////////////////////////////////////////////////////////
        private static int depth;
        private readonly Scope scope;
        private TypeFactory.Context context;

        public ExpressionFactory(Scope scope)
        {
            this.scope = scope;
//            boundVariables     = new Dictionary<string, BoundVariable>();
            context = new TypeFactory.Context();
        }

        ////////////////////////////////////////////////////////////////////////////////////
        public Expression makeExpression(Expr e)
        {
            return makeExpression(e, new TypeFactory.Context(), false);
        }

        ////////////////////////////////////////////////////////////////////////////////////
        public Expression makeExpression(Expr e, TypeFactory.Context context, bool old)
        {
            this.context = context;
            return makeExpression(e, false);
        }

        ////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////
/*
        ////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////
        class EI
        {
            internal void add(Expression e, bool old)
            {
                if (old)
                    pe.Add(e);
                else
                    ne.Add(e);
            }

            internal bool tryGet(bool old, TypeFactory.Context context, out Expression result )
            {
                var d = old ? pe : ne;
                return d.TryGetValue(makeContextString(context, this.
                foreach (var e in l)
                    if (matchesContext(e, context))
                        return e;
                return null;
            }

            private bool matchesContext(Expression e, TypeFactory.Context context)
            {
                foreach (var v in e.freeVariables)
                    if (!ReferenceEquals(v, context.lookupVariable(v.name)))
                        return false;
                foreach (var tv in e.freeTypeVariables)
                    if (!ReferenceEquals(tv, context.lookupTypeVariable(tv.name)))
                        return false;
                return true;
            }

            Dictionary<string, Expression> pe = new Dictionary<string, Expression>();
            Dictionary<string,Expression> ne = new Dictionary<string,Expression>();
 

        }
        Dictionary<string, EI> expressionCache = new Dictionary<string, EI>();
        */

        private Expression makeExpression(Expr e, bool old)
        {
            string eck = e + " : " + ((e.Type != null) ? e.Type.ToString() : e.ShallowType.ToString());
            /*            {
                            var sb = new StringBuilder();
                            var ttw = new Microsoft.Boogie.TokenTextWriter(new StringWriter(sb));
                            e.Emit(ttw);
                            sb.Append(" : ");
                            if (e.Type!=null)
                                e.Type.Emit(ttw);
                            else
                                e.ShallowType.Emit(ttw);
                            eck = sb.ToString();
             * */
            /*
            EI ei;
            if (expressionCache.TryGetValue(eck, out ei))
            {
                Expression result;
                if (ei.tryGet(old, context, out result))
                    return result;
            }else
                    expressionCache[eck] = ei = new EI();
            */

            depth++;
            Expression result = null;

            if (e is LiteralExpr) result = makeExpression((LiteralExpr) e, old);
            else if (e is IdentifierExpr) result = makeExpression((IdentifierExpr) e, old);
            else if (e is QuantifierExpr) result = makeExpression((QuantifierExpr) e, old);
            else if (e is NAryExpr) result = makeExpression((NAryExpr) e, old);
            else if (e is BvExtractExpr) result = makeExpression((BvExtractExpr) e, old);
            else if (e is BvConcatExpr) result = makeExpression((BvConcatExpr) e, old);
            else if (e is OldExpr) result = makeExpression(((OldExpr) e).Expr, true);

            else throw new Exception("Unknown Boogie2 targetE type - \"" + e.Type + "\"");

            Debug.Assert(result != null);
            foreach (var fv in result.freeVariables)
                Debug.Assert(context.lookupVariableByOwnName(fv.name) == fv);
            foreach (var ftv in result.freeTypeVariables)
                Debug.Assert(ReferenceEquals(context.lookupTypeVariable(ftv.name), ftv));

            depth--;

//            expressionCache[eck].add(result, old);
            return result;
        }

        internal Expression makeSentence(Expression e)
        {
            var r = e;
            while (r.freeVariables.Any())
                r = new BasicQuantifiedExpression(scope, BasicForall.get, r.freeVariables.First(), r, new List<Expression[]>(), null);
            while (r.freeTypeVariables.Any())
                r = new BasicQuantifiedTypeExpression(BasicTypeForall.get,r.freeTypeVariables.First(),r,new Expression[0],null);
            return r;
        }

        ////////////////////////////////////////////////////////////////////////////////////
        private Expression makeExpression(LiteralExpr le, bool old)
        {
            return BoogieLiteralExpression.make(le);
        }

        ////////////////////////////////////////////////////////////////////////////////////
        private Expression makeExpression(IdentifierExpr ie, bool old)
        {
            if (ie.Decl is Constant)
                return new BoogieProgramVariableExpression(ie, scope.findVariable(scope.getVarUName(ie.Decl)));

            if (ie.Decl is BoundVariable)
            {
                return new BoogieBoundVariableExpression(ie, context.lookupVariable(ie.Decl.Name));
            }

            if (ie.Decl is GlobalVariable)
                return new BoogieProgramVariableExpression(ie,
                                                           old
                                                               ? scope.findOldVersion(scope.getVarUName(ie.Decl))
                                                               : scope.findVariable(scope.getVarUName(ie.Decl)));

            if (ie.Decl is Formal || ie.Decl is LocalVariable)
            {
                //TODO:m Boogie SSA transformation bug?
                string name = ie.Decl.Name;
                var bv = context.lookupVariable(name);
                //                StateSpace.Variables.Quantification.BoundVariable bv = null;
#if DEBUG
                if (ie.UniqueId == 159186)
                    Debugger.Break();
#endif
                if (bv==null)
                    bv = context.lookupVariable(scope.getVarUName(ie.Decl));
                if (bv == null)
                {
                    name = scope.getVarUName(ie.Decl);
                    if (scope.tryFindVariable(name) == null)
                    {
                        name = name + "@0";
                        if (scope.tryFindVariable(name) == null)
                        {
                            scope.getVarUName(ie.Decl);
                            if (scope.tryFindVariable(name) == null)
                                name = name + "@0";
                        }
                    }
                    ProgramVariable pv = scope.findVariable(name);
                    Debug.Assert(pv != null);
                    return new BoogieProgramVariableExpression(ie, pv);
                }
                else
                {
                    return new BoogieBoundVariableExpression(ie, bv);
                }
            }

            throw new Exception("Internal error converting Boogie targetE - unknown targetE type - " + ie);
        }

        ////////////////////////////////////////////////////////////////////////////////////
        public static string getAttributes(QKeyValue attributes)
        {
            string result = null;
            if (attributes != null)
            {
                result = "{:" + attributes.Key + " ";
                foreach (var p in attributes.Params)
                {
                    if (p is string)
                        result += " " + "\"" + (string) p + "\"";
                    else
                        result += " " + (p);
                }
                result += "}";
            }

            return result;
        }

        ////////////////////////////////////////////////////////////////////////////////////
        private Expression makeExpression(QuantifierExpr qe, bool old)
        {
            Expression e = null;

            var quantifiedVariables = new List<StateSpace.Variables.Quantification.BoundVariable>();
            var typeVariables = new List<TypeVariable>();

            TypeFactory.pushTypeVariables(ref context, qe.TypeParameters);

            foreach (Microsoft.Boogie.TypeVariable btp in qe.TypeParameters)
                typeVariables.Add(context.lookupTypeVariable(btp.Name));

            string attributes = getAttributes(qe.Attributes);

            {
                foreach (Variable bv in qe.Dummies)
                    quantifiedVariables.Add(scope.makeFreshBoundVariable(bv.TypedIdent.Name,
                                                                         makeType(bv.TypedIdent.Type)));

                for (int i = 0; i < qe.Dummies.Count; i++)
                    context.add(qe.Dummies[i].Name, quantifiedVariables[i]);

                e = makeExpression(qe.Body, old);

                {
//                    if (qe.ToString().Contains(@"{ a[o] } { b[o] }"))
//                        Debugger.Break();
                    Quantifier q = makeQuantifier(qe.Kind);
                    for (int i = qe.Dummies.Count - 1; i >= 0; i--)
                    {
//                        Microsoft.Boogie.Variable v = qe.Dummies[j];
//                        var ls = makeType(v.TypedIdent.Type);
//                        var lv = new BoogieBoundVariable(v,ls);
                        StateSpace.Variables.Quantification.BoundVariable lv = quantifiedVariables[i];
                        Debug.Assert(lv.name.Contains(qe.Dummies[i].TypedIdent.Name));
                        var triggers = new List<List<Expression>>();
//                        var triggers0 = 
                        string attrs = null;
                        if (i == qe.Dummies.Count - 1)
                        {
                            if (qe.Triggers != null)
                            {
                                var btrigs = qe.Triggers;
                                while (btrigs!=null)
                                {
                                    var ts = new List<Expression>();
                                    foreach (var t in btrigs.Tr)
                                    {
                                        ts.Add(makeExpression(t, false));
                                    }
                                    triggers.Add(ts);
                                    btrigs = btrigs.Next;
                                }
                            }
                            attrs = attributes;
                        }
                        e = new BoogieQuantifiedExpression(scope, qe, q, lv, e, triggers, attrs);
                    }

//                    foreach (var v in quantifiedVariables)
//                        boundVariables.Remove(v.name);
                }
            }
            context.pop();

            {
                TypeQuantifier tq = makeTypeQuantifier(qe.Kind);
                for (int i = qe.TypeParameters.Count - 1; i >= 0; i--)
                {
//                    Microsoft.Boogie.TypeVariable btv = qe.TypeParameters[j];
//                    TypeVariable tv = new BoogieTypeVariable( btv);
                    var triggers = new List<Expression>();
                    string attrs = null;
                    if (i == qe.TypeParameters.Count - 1 && qe.Triggers != null && qe.Dummies.Count== 0)
                    {
                        foreach (Expr t in qe.Triggers.Tr)
                        {
                            triggers.Add(makeExpression(t, false));
                        }
                        attrs = attributes;
                    }

                    e = new BoogieQuantifiedTypeExpression(qe, tq, typeVariables[i], e, triggers, attributes);
                }
            }
            return e;
        }

        ////////////////////////////////////////////////////////////////////////////////////
        private IType makeType(Type type)
        {
            Debug.Assert(type != null);
            return scope.typeFactory.makeTypeI(type, context); //new TypeFactory.Context());
        }

        ////////////////////////////////////////////////////////////////////////////////////
        private Quantifier makeQuantifier(BinderKind k)
        {
            switch (k)
            {
                case BinderKind.Exists:
                    return BasicExists.get;
                case BinderKind.Forall:
                    return BasicForall.get;
                default:
                    throw new Exception("Internal Error - unexpected quantifier/binder in boogie:" + k.ToString());
            }
        }

        ////////////////////////////////////////////////////////////////////////////////////
        private TypeQuantifier makeTypeQuantifier(BinderKind k)
        {
            switch (k)
            {
                case BinderKind.Exists:
                    return BasicTypeExists.get;
                case BinderKind.Forall:
                    return BasicTypeForall.get;
                default:
                    throw new Exception("Internal Error - unexpected type quantifier/binder in boogie:" + k.ToString());
            }
        }

        ////////////////////////////////////////////////////////////////////////////////////
        private Expression makeExpression(NAryExpr fae, bool old)
        {
            if (fae.Fun is TypeCoercion)
                return makeExpression(fae.Args[0], old);
            var arguments = new ExpressionList((from Expr e in fae.Args select makeExpression(e, old)).ToArray());
            Function function;

            if (fae.Fun is MapSelect)
            {
                var typeArguments = new IType[fae.TypeParameters.FormalTypeParams.Count];
                for (int i = 0; i < fae.TypeParameters.FormalTypeParams.Count; i++)
                    typeArguments[i] = makeType(fae.TypeParameters[fae.TypeParameters.FormalTypeParams[i]]);
                var argumentTypes = TypeTuple.make(from a in arguments select a.type);
                function = BasicMapRead.mapRead(
                    typeArguments,
                    argumentTypes,
                    makeType(fae.Type)
                    );
            }
            else if (fae.Fun is MapStore)
            {
                var typeArguments = new IType[fae.TypeParameters.FormalTypeParams.Count];
                for (int i = 0; i < fae.TypeParameters.FormalTypeParams.Count; i++)
                    typeArguments[i] = makeType(fae.TypeParameters[fae.TypeParameters.FormalTypeParams[i]]);
                function = BasicMapWrite.makeMapWrite(typeArguments, (from a in arguments select a.type).ToArray(),
                                                        makeType(fae.ShallowType));
            }
            else if (fae.Fun.FunctionName == "==" || fae.Fun.FunctionName == "!=")
            {
                if (arguments[0].type.isEquivalent(arguments[1].type))
                    function = BFunction.eq(arguments[0].type);
                else
                {
                    Debug.Assert(!arguments[0].type.isGround || !arguments[1].type.isGround);
                    function = BFunction.eq(arguments[0].type, arguments[1].type);
                }
                if (fae.Fun.FunctionName == "!=")
                {
                    arguments = new ExpressionList(
                        new BasicFAE(
                            function,
                            arguments
                            )
                        );
                    function = scope.getFunction("!", TypeTuple.make());
                }
            }
            else if (fae.Fun.FunctionName == "<:")
                function = scope.getFunction(fae.Fun.FunctionName, TypeTuple.make(new[]{arguments[0].type}));
            else if (fae.Fun.FunctionName == BFunctionTemplate.iteName)
                function = scope.getFunction(fae.Fun.FunctionName, TypeTuple.make(new[]{arguments[1].type}));
            else if (fae.Fun.FunctionName==@"-" && fae.Fun.ArgumentCount==1)
            {
                arguments = new ExpressionList(new[] {new BasicLiteralExpression(IntegerValue.make(0)),arguments[0] });
                function = scope.getFunction(@"-", TypeTuple.make());
            }else
            {
                var typeArguments = TypeTuple.make((fae.TypeParameters == null)
                                                ? new IType[0]
                                                : (from ftp in fae.TypeParameters.FormalTypeParams
                                                   select scope.typeFactory.makeTypeI(fae.TypeParameters[ftp], context)));
                function = scope.getFunction(fae.Fun.FunctionName, typeArguments);
            }
            var result = new BoogieFunctionApplicationExpression(fae, function, arguments);
            Debug.Assert(result.type.ToStringN() ==
                         makeType(fae.Type == null ? fae.ShallowType : fae.Type).ToStringN());
            Debug.Assert(result != null);
            foreach (var fv in result.freeVariables)
                Debug.Assert(context.lookupVariableByOwnName(fv.name) == fv);
            foreach (var ftv in result.freeTypeVariables)
                Debug.Assert(ReferenceEquals(context.lookupTypeVariable(ftv.name), ftv));

            return result;
        }

        ////////////////////////////////////////////////////////////////////////////////////
        private Expression makeExpression(BvExtractExpr bee, bool old)
        {
            var arguments = new ExpressionList(new Expression[3]
                                                   {
                                                       makeExpression(bee.Bitvector, old),
                                                       new BasicLiteralExpression(
                                                           IntegerValue.make(new BigInteger(bee.Start))),
                                                       new BasicLiteralExpression(
                                                           IntegerValue.make(new BigInteger(bee.End)))
                                                   });

            return new BoogieFunctionApplicationExpression(bee, BoogieBitVectorExtractorFunction.make(bee), arguments);
        }

        ////////////////////////////////////////////////////////////////////////////////////
        //TODO: Old semantics - go to arguments?
        private Expression makeExpression(BvConcatExpr bce, bool old)
        {
            var arguments = new ExpressionList(makeExpression(bce.E0, old), makeExpression(bce.E1, old));

            return new BoogieFunctionApplicationExpression(bce, BoogieBitVectorConcatenationFunction.make(bce),
                                                           arguments);
        }

        ////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////
//        Dictionary<string, BoundVariable> boundVariables;
//        Dictionary<string, TypeVariable > boundTypeVariables;
    }
}