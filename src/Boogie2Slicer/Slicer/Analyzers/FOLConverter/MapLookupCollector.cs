#region

using System.Collections.Generic;
using Slicer.Programs.Expressions;
using Slicer.Programs.Expressions.utilities;
using Slicer.StateSpace.Functions;
using Slicer.StateSpace.Types;

#endregion

namespace Slicer.Analyzers.FOLConverter
{
    internal class MapReadCollector : ExpressionVisitor
    {
        private readonly ISRS srs;

        public MapReadCollector(ISRS srs)
        {
            this.srs = srs;
        }

        #region ExpressionVisitor Members

        public Expression visit(BoundVariableExpression e)
        {
            return e;
        }

        public Expression visit(ProgramVariableExpression e)
        {
            return e;
        }

        public Expression visit(LiteralExpression e)
        {
            return e;
        }

        public Expression visit(FAE e)
        {
            var ml = e.function as MapRead;
            if (ml != null)
            {
                Dictionary<string, ITypeTuple> entry;
                if (!srs.mapReads.TryGetValue(ml.mapType.ToStringN(), out entry))
                    srs.mapReads[ml.mapType.ToStringN()] = entry = new Dictionary<string, ITypeTuple>();
                var dts = TypeTuple.make(ml.mapTypeArguments);
                entry[dts.ToString()] = dts;
            }

            foreach (var a in e.arguments)
                a.visit(this);
            return e;
        }

        public Expression visit(QuantifiedExpression e)
        {
            e.expression.visit(this);
            return e;
        }

        public Expression visit(QuantifiedTypeExpression e)
        {
            e.expression.visit(this);
            return e;
        }

        #endregion
    }
}