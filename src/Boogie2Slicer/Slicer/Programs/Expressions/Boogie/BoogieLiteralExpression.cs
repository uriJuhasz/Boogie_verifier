using System;
using System.Numerics;
using Microsoft.Boogie;
using Slicer.Programs.Expressions.Basic;
using Slicer.StateSpace.Values;

namespace Slicer.Programs.Expressions.Boogie
{
    public class BoogieLiteralExpression : BasicLiteralExpression
    {
        private BoogieLiteralExpression(LiteralExpr boogieLiteral, Value value)
            : base(value)
        {
            this.boogieLiteral = boogieLiteral;
        }

        //////////////////////////////////////////////
        public LiteralExpr boogieLiteral { get; private set; }

        public static BoogieLiteralExpression make(LiteralExpr boogieLiteral)
        {
            Value value = null;
            if (boogieLiteral.isBigNum)
                value = IntegerValue.make(new BigInteger(boogieLiteral.asBigNum.ToByteArray()));
            else if (boogieLiteral.IsTrue)
                value = BooleanValue.makeBooleanValue(true);
            else if (boogieLiteral.IsFalse)
                value = BooleanValue.makeBooleanValue(false);
            else
                throw new NotImplementedException();
            //TODO:BitVector literals
            return new BoogieLiteralExpression(boogieLiteral, value);
        }
    }
}