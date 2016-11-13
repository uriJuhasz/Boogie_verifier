using System.Diagnostics;
using Microsoft.Boogie;
using Slicer.StateSpace.Functions.Basic;
using Slicer.StateSpace.Types;

namespace Slicer.StateSpace.Functions.Boogie
{
    internal class BoogieBitVectorConcatenationFunction : BFunction
    {
        private readonly int w0;
        private readonly int w1;
        private BvConcatExpr boogieExpression;

        private BoogieBitVectorConcatenationFunction(BvConcatExpr bce, int w0, int w1)
            : base(
                "++",//bce."++",//FunctionSymbol.ToString(),
                BitVectorType.makeBitVectorType(w0 + w1),
                new IType[2]
                    {
                        BitVectorType.makeBitVectorType(w0),
                        BitVectorType.makeBitVectorType(w1)
                    }
                )
        {
            boogieExpression = bce;
            this.w0 = w0;
            this.w1 = w1;
            typeArguments = TypeTuple.make();
        }

        public override string fullName
        {
            get { return name + "[" + w0 + "," + w1 + "]"; }
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

        public static BoogieBitVectorConcatenationFunction make(BvConcatExpr bce)
        {
            Debug.Assert(bce != null);
            Debug.Assert(bce.E0.Type.IsBv);
            Debug.Assert(bce.E1.Type.IsBv);
            int w0 = (bce.E0.Type as BvType).Bits;
            int w1 = (bce.E1.Type as BvType).Bits;
            return new BoogieBitVectorConcatenationFunction(bce, w0, w1);
        }
    }
}