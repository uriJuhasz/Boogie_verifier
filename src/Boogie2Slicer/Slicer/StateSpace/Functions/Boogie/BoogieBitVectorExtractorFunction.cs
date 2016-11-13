using System.Diagnostics;
using Microsoft.Boogie;
using Slicer.StateSpace.Functions.Basic;
using Slicer.StateSpace.Types;

namespace Slicer.StateSpace.Functions.Boogie
{
    internal class BoogieBitVectorExtractorFunction : BFunction
    {
        public readonly BvExtractExpr boogieExpression;
        private readonly int from;
        private readonly int to;
        private readonly int w;

        private BoogieBitVectorExtractorFunction(BvExtractExpr bee, int w, int from, int to)
            : base(
                "BV[]",//bee.FunctionSymbol.ToString(),
                BitVectorType.makeBitVectorType(to - from),
                new IType[1]
                    {
                        BitVectorType.makeBitVectorType(w)
                    }
                )
        {
            boogieExpression = bee;
            this.w = w;
            this.from = from;
            this.to = to;
            typeArguments = TypeTuple.make();
        }

        public override string fullName
        {
            get { return name + "[" + w + "," + from + "," + to + "]"; }
        }

        public override string templateName
        {
            get { return name; }
        }

        public override ITypeTuple typeArguments
        {
            get; protected set;
        }

        public override Function substitute(TypeParameterInstantiation s)
        {
            return this;
        }

        public static BoogieBitVectorExtractorFunction make(BvExtractExpr bee)
        {
            Debug.Assert(bee != null);
            Debug.Assert(bee.Bitvector.Type.IsBv);
            int w = (bee.Bitvector.Type as BvType).Bits;
            Debug.Assert(w >= 0);
            Debug.Assert(bee.End <= w);
            Debug.Assert(bee.Start >= w);

            return new BoogieBitVectorExtractorFunction(bee, w, bee.Start, bee.End);
        }
    }
}