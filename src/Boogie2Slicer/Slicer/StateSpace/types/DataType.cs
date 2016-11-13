using System.Collections.Generic;
using Slicer.StateSpace.Functions;
using Slicer.StateSpace.Types.Quantification;
using Slicer.StateSpace.Types.Utilities;
using System.Diagnostics.Contracts;
using System.Linq;
using Slicer.Utilities;
using Slicer.Analyzers.FOLConverter.Clauses;
using System.Diagnostics;

namespace Slicer.StateSpace.Types
{
    public interface IType :NormalizedVarStringElement<TypeVariable>
    {
        ISet<TypeVariable> freeTypeVariables { get; }
        bool isGround { get; }

        IType substitute(TypeParameterInstantiation typeArguments);
        void check(TypeFactory.Context context);

        void visit(TypeVisitor visitor);

        [Pure]
        bool isEquivalent(IType other);

        int GetHashCode();
        bool Equals(object o);

        bool isMapType { get; }
    }
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    public interface ITypeTuple : ITuple<IType,TypeVariable>
    {
        bool isEquivalent(ITypeTuple other);
    }

    public class TypeTuple : TupleC<IType,TypeVariable>, ITypeTuple
    {
        #region creation
        private static TypeTuple emptyTypeTuple = new TypeTuple(new IType[0]);
        public static TypeTuple make()
        {
            return emptyTypeTuple;
        }
        public static TypeTuple make(IEnumerable<IType> types)
        {
            return new TypeTuple(types);
        }

        private TypeTuple(IEnumerable<IType> types)
            : base(types)
        {
        }
        #endregion creation

        #region indexing
        public override string ToString()
        {
            return ToString(from t in ts select t.ToStringN());
        }
        private string stringNCache = null;
        public override string ToStringN()
        {
            if (stringNCache == null)
                stringNCache = ToStringNInt();
            return stringNCache;
        }

        private string ToStringNInt()
        {
            return makeStringN(ts);
        }
        public static string makeStringN(IEnumerable<IType> ts) 
        {
            return ToString(from t in ts select t.ToStringN());
        }
        private static string ToString(IEnumerable<string> stringType)
        {
            return "<" + stringType.Aggregate("", (s, t) => s + (s.Any() ? "," : "") + t) + ">";
        }
        #endregion indexing

        public bool isEquivalent(ITypeTuple other)
        {
            Debug.Assert(other.Count() == ts.Length);
            for (var i = 0; i < ts.Length; i++)
                if (!ts[i].isEquivalent(other[i]))
                    return false;
            return true;
        }

    }
}