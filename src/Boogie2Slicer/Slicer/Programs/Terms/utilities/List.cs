using System;
using System.Collections.Generic;
using System.Diagnostics;
using Slicer.StateSpace;

namespace Slicer.Programs.Terms.utilities
{
    public class ExpressionList : AList<ExpressionList,Term>
    {
        ///////////////////////////////////////////////////////////////
        //Empty list
        public ExpressionList()
            : base()
        {
        }

        ///////////////////////////////////////////////////////////////
        public ExpressionList(IEnumerable<Term> expressions)
            : base(expressions)
        {
        }

        ///////////////////////////////////////////////////////////////
        public override ExpressionList make(IEnumerable<Term> other)
        {
            return new ExpressionList(other);
        }

        ///////////////////////////////////////////////////////////////
        public override Term deepCloneE(Term e)
        {
            return e.deepClone();
        }

/*        internal ExpressionList tail()
        {
            throw new NotImplementedException();
        }
        */
        internal void append(ExpressionList other)
        {
            foreach (var e in other)
                append(e);
        }
    }
}
