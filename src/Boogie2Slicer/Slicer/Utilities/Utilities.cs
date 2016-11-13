using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Slicer.Analyzers.FOLConverter.Clauses;
using Slicer.Analyzers.FOLConverter.Formulae;
using Slicer.Analyzers.FOLConverter;
using Slicer.StateSpace.Types;

namespace Slicer.Utilities
{
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    public interface ITupleNG
    {
        int Count { get; }
    }
    public interface ITuple<T,V> : ITupleNG,IComparable<ITuple<T,V>>, IEnumerable<T>, NormalizedVarStringElement<V>
    {
        T this[int i] { get; }
        int IndexOf(T t);
    }
    public abstract class TupleC<T,V> : ITuple<T,V> where T : NormalizedVarStringElement<V>
    {
        public TupleC(IEnumerable<T> ts)
        {
            this.ts = ts.ToArray();
        }

        #region properties
        public T this[int i] { get { return ts[i]; } }
        #endregion properties

        #region IEnumerable implementation
        public int IndexOf(T t)
        {
            var i = 0;
            while (i < ts.Length)
                if (ts[i].Equals(t))
                    return i;
                else
                    i++;
            return -1;
        }
        public int Count { get { return ts.Length; } }
        public IEnumerator<T> GetEnumerator()
        {
            return ts.AsEnumerable().GetEnumerator();
        }

        System.Collections.IEnumerator System.Collections.IEnumerable.GetEnumerator()
        {
            return GetEnumerator();
        }
        #endregion IEnumerable implementation

        #region mapping
        public override int GetHashCode()
        {
            return ToStringN().GetHashCode();
        }
        public override bool Equals(object obj)
        {
            return obj is TupleC<T,V> && (obj as TupleC<T,V>).ToStringN() == ToStringN();
        }
        public int CompareTo(ITuple<T,V> other)
        {
            return ToStringN().CompareTo(other.ToStringN());
        }
        #endregion mapping

        #region strings
        public override string ToString()
        {
            return "(" + Operator.commaSeparatedList(from t in ts select t.ToString()) + ")";
        }
        public virtual string ToString(IDictionary<V, string> vm)
        {
            return "(" + Operator.commaSeparatedList(from t in ts select t.ToString(vm)) + ")";
        }
        private string stringNCache = null;
        public virtual string ToStringN()
        {
            if (stringNCache == null)
                stringNCache = ToStringNInt();
            return stringNCache;
        }
        private string ToStringNInt()
        {
            return "(" + Operator.commaSeparatedList(from t in ts select t.ToStringN()) + ")";
        }
        public virtual string ToStringN(IDictionary<V, string> vm)
        {
            return "(" + Operator.commaSeparatedList(from t in ts select t.ToStringN(vm)) + ")";
        }
        public virtual string ToStringB()
        {
            return ToString();
        }
        #endregion strings

        #region members
        protected T[] ts;
        #endregion members
    }

    public interface ITermTuple<T> : ITuple<T,LVar>, LogicElement where T : TypedLogicElement
    {
    }
    public abstract class TermTupleC<T> : TupleC<T,LVar>
        where T : TypedLogicElement
    {
        #region construction
        protected TermTupleC(IEnumerable<T> ts)
            : base(ts)
        {
            this.orderedFreeVariables = new List<LVar>();
            foreach (var t in ts)
                foreach (var fv in t.orderedFreeVariables)
                    if (!orderedFreeVariables.Contains(fv))
                        orderedFreeVariables.Add(fv);
            this.dataTypes = TypeTuple.make(from t in ts select t.type);
        }
        #endregion construction

        #region properties
        private ISet<LVar> pFreeVariables = null;
        public ISet<LVar> freeVariables {
            get
            {
                return pFreeVariables ?? (pFreeVariables = FU.union(from t in ts select t.freeVariables));
            }
        }
        private ISet<Function> pFunctions = null;
        public virtual ISet<Function> functions { get { return pFunctions ?? (pFunctions = FU.union(from t in ts select t.functions)); } }
        public virtual IList<LVar> orderedFreeVariables { get; private set; }
//        public virtual int weight { get { return (from t in ts select t.weight).Sum(); } }
        public virtual int height { get { return ts.Any() ? (from t in ts select t.height).Max() : 0; } }
        public virtual ITypeTuple dataTypes { get; private set; }
        #endregion properties

    }
}
