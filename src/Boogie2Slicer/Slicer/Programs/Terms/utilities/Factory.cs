using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Boogie;
using Slicer.BoogieHelpers;
using Slicer.Programs;
using System.Diagnostics;
using Slicer.StateSpace;
using Slicer.Programs.Terms.utilities;

namespace Slicer.Programs.Terms
{
    class Factory
    {
        ////////////////////////////////////////////////////////////////////////////////////
        public Factory(Scope scope)
        {
            this.scope = scope;
            boundVariables = new Dictionary<string, Logic.Variable>();
        }
        ////////////////////////////////////////////////////////////////////////////////////
        public Term makeExpression(Expr e)
        {
            return makeExpression(e, false);
        }

        public ReferenceExpression makeReferenceExpression(Expr be)
        {
            Term e = makeExpression(be);
            if (!(e is ReferenceExpression))
                throw new Exception("Internal Error - lhs is not a reference expression");
            return (ReferenceExpression)e;
        }

        ////////////////////////////////////////////////////////////////////////////////////
        private Term makeExpression(Expr e, bool old)
        {
            if (e is LiteralExpr   ) return makeExpression((   LiteralExpr)e, old);
            if (e is IdentifierExpr) return makeExpression((IdentifierExpr)e, old);
            if (e is QuantifierExpr) return makeExpression((QuantifierExpr)e, old);
            if (e is NAryExpr      ) return makeExpression((      NAryExpr)e, old);
            if (e is BvExtractExpr ) return makeExpression(( BvExtractExpr)e, old);
            if (e is BvConcatExpr  ) return makeExpression((  BvConcatExpr)e, old);

            if (e is OldExpr       ) return makeExpression(((OldExpr)e).Expr, true);

            if (e is LambdaExpr    ) throw new Exception("Lambda expressions not yet supported - \"" + e.ToString() + "\"");
            if (e is CodeExpr      ) throw new Exception("Code   expressions not yet supported - \"" + e.ToString() + "\"");

            throw new Exception("Unknown Boogie2 expression type - \"" + e.Type.ToString() + "\"");
        }

        ////////////////////////////////////////////////////////////////////////////////////
        //Constants are 0ary function applications
        private Term makeExpression(LiteralExpr le, bool old)
        {
            return new Boogie.BoogieFunctionApplication(le, new Logic.Boogie.BoogieFunction(new BoogieLiteral(le)), new ExpressionList()); 
        }

        ////////////////////////////////////////////////////////////////////////////////////
        private Term makeExpression(IdentifierExpr ie, bool old)
        {
            if (ie.Decl is Microsoft.Boogie.Constant)
                return new Boogie.BoogieFunctionApplication(ie, new Logic.Boogie.BoogieFunction(new BoogieConstant(ie)), new ExpressionList());

            if (ie.Decl is Microsoft.Boogie.BoundVariable){
                Debug.Assert( !old );
                return new Programs.Terms.Boogie.BoogieBoundVariableTerm(ie, boundVariables[ie.Decl.Name]);
            }

            if (
                   (ie.Decl is Microsoft.Boogie.GlobalVariable)
                || (ie.Decl is Microsoft.Boogie.Formal)
                || (ie.Decl is Microsoft.Boogie.LocalVariable))
                    return new Slicer.Programs.Terms.Boogie.BoogueProgramVariable(ie, scope.findVariable((old ? "'" : "") + ie.Name) ); 
            else
                throw new Exception("Internal error converting Boogie expression - unknown expression type - " + ie.ToString());
        }

        ////////////////////////////////////////////////////////////////////////////////////
        //TODO:Check if we get functions here
        private Term makeExpression(QuantifierExpr qe, bool old)
        {

            Term e = null;

            {
                List<Logic.Variable> quantifiedVariables = new List<Logic.Variable>();
                foreach (Microsoft.Boogie.Variable bv in qe.Dummies)
                    quantifiedVariables.Add( new Logic.Basic.Variable(bv.TypedIdent.Name) );
                foreach (var v in quantifiedVariables)
                    boundVariables.Add(v.name, v);
                e = makeExpression(qe.Body, old);
                foreach (var v in quantifiedVariables)
                    boundVariables.Remove(v.name);
            }


            {
                Logic.Quantifier q = makeQuantifier(qe.Kind);
                for (int i = qe.Dummies.Length - 1; i >= 0;  i--){
                    Microsoft.Boogie.Variable v = qe.Dummies[i];
                    Logic.Sort     ls = new Logic.Boogie.BoogieSort(v.TypedIdent.Type);
                    Logic.Variable lv = new Logic.Boogie.BoogieVariable(v);
                    e = new Boogie.QuantifiedExpression(qe, q, lv , ls, e);
                }
            }
            {
                Logic.TypeQuantifier tq = makeTypeQuantifier(qe.Kind);
                for (int i = qe.TypeParameters.Length - 1; i >= 0;  i--){
                    Microsoft.Boogie.TypeVariable btv = qe.TypeParameters[i];
                    Logic.TypeVariable tv = new Logic.Boogie.TypeVariable( btv);
                    e = new Boogie.QuantifiedTypeExpression(qe, tq, tv, e);
                }
            }            
            return e;
        }

        ////////////////////////////////////////////////////////////////////////////////////
        private Logic.Quantifier makeQuantifier(Microsoft.Boogie.BinderKind k)
        {
            switch (k)
            {
                case Microsoft.Boogie.BinderKind.Exists: return new Logic.Basic.Exists();
                case Microsoft.Boogie.BinderKind.Forall: return new Logic.Basic.Forall();
                default: throw new Exception("Internal Error - unexpected quantifier/binder in boogie:" + k.ToString());
            }
        }
        ////////////////////////////////////////////////////////////////////////////////////
        private Logic.TypeQuantifier makeTypeQuantifier(Microsoft.Boogie.BinderKind k)
        {
            switch (k)
            {
                case Microsoft.Boogie.BinderKind.Exists: return new Logic.Basic.TypeExists();
                case Microsoft.Boogie.BinderKind.Forall: return new Logic.Basic.TypeForall();
                default: throw new Exception("Internal Error - unexpected type quantifier/binder in boogie:" + k.ToString());
            }
        }

        ////////////////////////////////////////////////////////////////////////////////////
        //TODO: Old semantics - go to arguments?
        private Term makeExpression(NAryExpr fae, bool old)
        {
            if (fae.Fun.FunctionName.CompareTo("MapSelect") == 0)
                return makeMapLookupExpression(fae, old);

            ExpressionList arguments = new ExpressionList();
            foreach (Microsoft.Boogie.Expr e in fae.Args)
                arguments.append(makeExpression(e,old));

            return new Boogie.BoogieFunctionApplication(fae, new Logic.Boogie.BoogieFunction(new BoogieNAryFunction(fae)), arguments);
        }

        ////////////////////////////////////////////////////////////////////////////////////
        private Term makeMapLookupExpression(NAryExpr fae, bool old)
        {
            ExpressionList arguments = new ExpressionList();
            ReferenceExpression map = null;
            foreach (Microsoft.Boogie.Expr e in fae.Args)
                if (map == null)
                    map = makeReferenceExpression(e);
                else
                    arguments.append(makeExpression(e, old));
            return new Boogie.BoogieMapLookup(fae, map, arguments);
            
            throw new NotImplementedException();
        }

        ////////////////////////////////////////////////////////////////////////////////////
        private void addMapLookupIndices(ExpressionList indices, NAryExpr fae, bool old)
        {
            bool first = true;
            foreach (Microsoft.Boogie.Expr e in fae.Args)
                if (first)
                    first = false;
                else
                    indices.append(makeExpression(e, old));
        }

        ////////////////////////////////////////////////////////////////////////////////////
        //TODO: Old semantics - go to arguments?
        private Term makeExpression(BvExtractExpr bee, bool old)
        {
            ExpressionList arguments = new ExpressionList();
            arguments.append(makeExpression(bee.Bitvector, old));
            //TODO: maybe no expression?
            arguments.append(new Boogie.BoogieFunctionApplication(bee, new Logic.Boogie.BoogieFunction(new BoogieIntegerConstant(bee.Start)), new ExpressionList()));
            arguments.append(new Boogie.BoogieFunctionApplication(bee, new Logic.Boogie.BoogieFunction(new BoogieIntegerConstant(bee.End)), new ExpressionList()));

            return new Slicer.Programs.Terms.Boogie.BoogieFunctionApplication(bee, new Logic.Boogie.BoogieFunction(new BoogieBitVectorExtractor(bee)), arguments);
        }

        ////////////////////////////////////////////////////////////////////////////////////
        //TODO: Old semantics - go to arguments?
        private Term makeExpression(BvConcatExpr bce, bool old)
        {
            ExpressionList arguments = new ExpressionList();
            arguments.append(makeExpression(bce.E0, old));
            arguments.append(makeExpression(bce.E1, old));

            return new Programs.Terms.Boogie.BoogieFunctionApplication(bce, new Logic.Boogie.BoogieFunction(new BoogieBitVectorConcatenation(bce)), arguments);
        }

        ////////////////////////////////////////////////////////////////////////////////////
        internal ReferenceExpression makeReferenceExpression(AssignLhs assignLhs)
        {
            if (assignLhs is SimpleAssignLhs)
                return makeReferenceExpression((SimpleAssignLhs)assignLhs);
            else if (assignLhs is MapAssignLhs)
                return makeReferenceExpression((MapAssignLhs)assignLhs);
            else
                throw new Exception("Unsupported Boogie LHS type:" + assignLhs.ToString() );
        }

        ////////////////////////////////////////////////////////////////////////////////////
        internal ReferenceExpression makeReferenceExpression(SimpleAssignLhs assignLhs)
        {
            return new Programs.Terms.Basic.ProgramVariable(scope.findVariable(assignLhs.AssignedVariable.Decl.Name));
        }

        ////////////////////////////////////////////////////////////////////////////////////
        internal ReferenceExpression makeReferenceExpression(MapAssignLhs assignLhs)
        {
            ReferenceExpression map = makeReferenceExpression(assignLhs.Map);

            ExpressionList indices = new ExpressionList();
            
//            indices.append(map);
            foreach (Microsoft.Boogie.Expr e in assignLhs.Indexes)
                indices.append(makeExpression(e));

            return new Programs.Terms.Basic.MapLookup(map,indices);
        }
        
        ////////////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////
        Dictionary<string,Logic.Variable> boundVariables;
        Scope scope;

    }
}
