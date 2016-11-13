using System;
using System.Collections.Generic;
using System.Diagnostics;
using Slicer.Analyzers.Tools;
using Slicer.Programs.Expressions;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;
using Slicer.StateSpace;
using Slicer.StateSpace.Functions;
using Slicer.StateSpace.Functions.Basic;
using Slicer.StateSpace.Types;

namespace Slicer.Analyzers
{
    public class FunctionInliner : AVisitor, Analyzer<FunctionInliner>
    {
        public FunctionInliner(Procedure procedure)
            : base(procedure)
        {
        }

        #region Analyzer<FunctionInliner> Members

        public FunctionInliner extract(StateInformation si)
        {
            if (si.functionInliner == null)
                si.functionInliner = new FunctionInliner(procedure);
            return si.functionInliner;
        }

        public string domainName
        {
            get { return "Function Inliner"; }
        }

        public void initializeStart(StatementId si)
        {
        }

        public void join(ICollection<Tuple<BasicEdge.Guard, FunctionInliner>> predecessors, StatementId si)
        {
        }

        public Statement propagate(FunctionInliner prestate, StatementId si)
        {
            si.statement.visit(this);
            return si.statement;
        }

        #endregion

        public override Statement visit(Assume s)
        {
//            if (s.expression.ToString().Contains(@"read"))
//                Debugger.Break();
            Statement result = base.visit(s);
            Debug.Assert((result as Assume).expression.type == BooleanType.booleanType);

            return result;
        }

        public override Expression visit(FAE f)
        {
            Debug.Assert(procedure != null);
//            if (f.ToString().Contains(@"read($h,read($h,$o,AVLTree.root),alloc)"))
//                Debugger.Break();

            Expression result = base.visit(f);

            var rfae = result as FAE;
            FunctionTemplate template = procedure.findFunctionTemplate(rfae.function.name);
            if (rfae!=null && template != null && template.body != null && template.attributes.Contains(":inline  true"))
            {
                var fti = rfae.function as BasicFunctionTemplateInstance;
                Debug.Assert(fti != null);
                Debug.Assert(fti.template == template);
                var substitution = new ExpressionSubstitution();
                for (int i = 0; i < template.typeParameters.Length; i++)
                    substitution.typeSubstitution.add(template.typeParameters[i], fti.typeArguments[i]);
                for (int i = 0; i < rfae.arguments.count; i++)
                    substitution.add(template.body.arguments[i].name, rfae.arguments[i]);

                result = template.body.expression.substitute(substitution);
//                var r1 = result;
                result = result.visit(this);
//                if (!ReferenceEquals(r1, result) && r1.ToString().Contains(@"$inv"))
//                    Debugger.Break();
            }

            return result;
        }
    }
}