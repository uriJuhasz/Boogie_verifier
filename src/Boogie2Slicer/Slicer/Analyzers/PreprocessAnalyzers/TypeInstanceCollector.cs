using System.Collections.Generic;
using System.Linq;
using Slicer.Programs.Expressions;
using Slicer.Programs.Expressions.utilities;
using Slicer.Programs.Procedures;
using Slicer.Programs.Statements;
using Slicer.StateSpace.Functions;
using Slicer.StateSpace.Functions.Basic;
using Slicer.StateSpace.Types;

namespace Slicer.Analyzers
{
    internal class TypeInstanceCollector
    {
        private readonly Procedure procedure;

        public Dictionary<string, Dictionary<string, GFunctionInstance>> functionInstanceMap =
            new Dictionary<string, Dictionary<string, GFunctionInstance>>();

        public Dictionary<string, GFunctionInstance> functionInstances = new Dictionary<string, GFunctionInstance>();

        public TypeInstanceCollector(Procedure procedure)
        {
            this.procedure = procedure;
        }

        public static TypeInstanceCollector collect(Procedure procedure)
        {
            var result = new TypeInstanceCollector(procedure);
            result.collect();
            return result;
        }

        private void collect()
        {
            foreach (var bb in procedure.blocks)
                foreach (var si in bb.statements)
                    if (si.statement is PredicateStatement)
                        collect((si.statement as PredicateStatement).expression);
        }

        private void collect(Expression e)
        {
            if (e is FAE)
                collect(e as FAE);
            else if (e is QuantifiedExpression)
                collect((e as QuantifiedExpression).expression);
            //BoundVariableExpression | ProgramVariableExpression | LiteralExpression
        }

        private void collect(FAE fae)
        {
            foreach (var a in fae.arguments)
                collect(a);
            if (fae.function is MapWrite)
                collectMapWrite(fae);
            else if (BFunction.isEquality(fae.function) && fae.arguments[0].type is MapType)
                collectMapEquality(fae);
            else
                addInstance(fae.function, fae.arguments);
        }

        private void collectMapEquality(FAE fae)
        {
            //throw new NotImplementedException();
        }

        private void collectMapWrite(FAE fae)
        {
            var mu = fae.function as MapWrite;
            MapRead ml = mu2ml(mu);
            var mlArgs = fae.arguments.Take(fae.arguments.Count() - 1).ToArray();
            addInstance(ml, new ExpressionList(mlArgs));
        }

        public static MapRead mu2ml(MapWrite mu)
        {
            var mlArgTypes = TypeTuple.make(mu.argumentTypes.Take(mu.argumentTypes.Count() - 1));
            return BasicMapRead.mapRead(mu.typeArguments.Skip(1).ToArray(), mlArgTypes, mu.argumentTypes.Last());
        }

        private void addInstance(Function function, ExpressionList expressionList)
        {
            GFunctionInstance fi;
            if (!functionInstances.TryGetValue(function.fullName, out fi))
                functionInstances[function.fullName] = fi = new GFunctionInstance(function);
            fi.addInstance(expressionList);

            Dictionary<string, GFunctionInstance> ft;
            if (!functionInstanceMap.TryGetValue(function.templateName, out ft))
                functionInstanceMap[function.templateName] = ft = new Dictionary<string, GFunctionInstance>();
            ft[makeString(function.typeArguments)] = fi;
        }


        ////////////////////////////////////////////////////////////////////////////////////////////////
        public static string makeString(ITypeTuple ta)
        {
            string result = "";
            if (ta.Count() > 0)
            {
                result += "<";
                for (int i = 0; i < ta.Count(); i++)
                    result += ((i == 0) ? "" : ",") + ta[i].ToStringN();
                result += ">";
            }
            return result;
        }

        #region Nested type: GFunctionInstance

        public class GFunctionInstance
        {
            public readonly Dictionary<string, ExpressionList> argumentInstances =
                new Dictionary<string, ExpressionList>();

            public readonly Function function;

            public readonly Dictionary<string, ExpressionList> groundArgumentInstances =
                new Dictionary<string, ExpressionList>();

            public readonly Dictionary<string, ExpressionList> nonGroundArgumentInstances =
                new Dictionary<string, ExpressionList>();

            public GFunctionInstance(Function function)
            {
                this.function = function;
            }

            public void addInstance(ExpressionList arguments)
            {
                argumentInstances[arguments.ToString()] = arguments;
                if (arguments.isGround)
                    groundArgumentInstances[arguments.ToString()] = arguments;
                else
                    nonGroundArgumentInstances[arguments.ToString()] = arguments;
            }

            public override string ToString()
            {
                return function.fullName;
            }
        }

        #endregion
    }
}