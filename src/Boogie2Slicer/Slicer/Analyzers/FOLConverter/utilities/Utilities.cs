#region

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
#endregion

namespace Slicer.Analyzers.FOLConverter
{
    using Clauses;
    using Formulae;
    public static class FU
    {
        public static bool notDisjoint<T>(this ISet<T> s1,ISet<T> s2)
        {
            if (s1.Count > s2.Count)
                return notDisjointInt(s2, s1);
            else
                return notDisjointInt(s1, s2);
        }
        public static bool notDisjointInt<T>(this ISet<T> s1,ISet<T> s2)
        {
            return s1.Any(s2.Contains);
        }
        public static void swap<T>(ref T a, ref T b)
        {
            var t = a;
            a = b;
            b = t;
        }
        public static IEnumerable<T[]> makeOptions<T>(ISet<T>[] list)
        {
            var all1 = true;
            foreach (var s in list)
            {
                var sc = s.Count;
                if (sc == 0)
                    return new T[0][]; //IEnumerable<T>[0];
                else if (sc != 1)
                    all1 = false;
            }
            if (all1)
            {
                var a = new T[list.Length];
                var i = 0;
                foreach (var s in list)
                {
                    a[i] = s.First();
                    i++;
                }
                return new[] { a }; //IEnumerable<T>[1] { a };
            }

            var sa = (from s in list select s.ToArray()).ToArray();
            var c = sa.Length;
            var ca = new int[c];
            var result = new List<T[]>();
            //            int i = c-1;
            while (true)
            {
                var a = new T[c];
                for (var j = 0; j < c; j++)
                    a[j] = sa[j][ca[j]];
                result.Add(a);

                var i = c - 1;
                while (i >= 0)
                {
                    if (ca[i] < sa[i].Length - 1)
                    {
                        ca[i]++;
                        for (var j = i + 1; j < c; j++)
                            ca[j] = 0;
                        break;
                    }
                    i--;
                }
                if (i == -1)
                    break;
            }
            return result;
        }

        public static void add<S,T>(this IDictionary<S,ISet<T>> m,S s)
        {
            m.getOrAdd(s,()=>new HashSet<T>());
        }
        public static void add<S,T>(this IDictionary<S,ISet<T>> m,S s,T t)
        {
            m.getOrAdd(s,()=>new HashSet<T>()).Add(t);
        }
        public static void add<S,T>(this IDictionary<S,ISet<T>> m,S s,IEnumerable<T> ts)
        {
            m.getOrAdd(s,()=>new HashSet<T>()).UnionWith(ts);
        }
        public static void addIfNotNull<T>(this IList<T> l,T t) where T : class
        {
            if (t != null)
                l.Add(t);
        }
        public static bool isDisjoint<T>(this ISet<T> s, IEnumerable<T> os)
        {
            return !s.Intersect(os).Any();
        }

        public static int max(int x1,int x2)
        {
            if (x1 < x2)
                return x2;
            else
                return x1;
        }
        public static IEnumerable<T> Except<T>(this IEnumerable<T> ts, T t)
        {
            return (from t2 in ts where !EqualityComparer<T>.Default.Equals(t, t2) select t2);
        }
        #region map util
        public static void unionWith<S, T>(this IDictionary<S, ISet<T>> map, IDictionary<S, ISet<T>> map2)
        {
            foreach (var kv in map2)
                map.insert(kv.Key,kv.Value);
        }
        
        public static ISet<T> tryGet<S, T>(this IDictionary<S, ISet<T>> map, S key)
        {
            ISet<T> s;
            if (!map.TryGetValue(key, out s))
                s = new HashSet<T>();
            return s;
        }
        public static T getOrNull<S,T>(this IDictionary<S, T> map, S key) where T : class
        {
            T t;
            if (map.TryGetValue(key, out t))
                return t;
            else
                return null;
        }
        public static IEnumerable<T> getKeys<S, T, U>(this IDictionary<S, IDictionary<T, U>> map, S key)
        {
            IDictionary<T, U> e;
            if (!map.TryGetValue(key, out e))
                return new T[0];
            return e.Keys;
        }
        public static IEnumerable<U> getValues<S, T, U>(this IDictionary<S, IDictionary<T, U>> map, S key)
        {
            IDictionary<T,U> e;
            if (!map.TryGetValue(key, out e))
                return new U[0];
            return e.Values;
        }
        public static bool tryGet<S, T,U>(this IDictionary<S, IDictionary<T,U>> map, S key1, T key2,out U value)
        {
            IDictionary<T,U> e;
            if (map.TryGetValue(key1, out e) && e.TryGetValue(key2,out value))
                return true;
            value = default(U);
            return false;
        }
        public static bool containsKey<S, T,U>(this IDictionary<S, IDictionary<T,U>> map, S key, T key2)
        {
            IDictionary<T,U> s;
            return map.TryGetValue(key, out s) && s.ContainsKey(key2);
        }
        public static bool contains<S, T>(this IDictionary<S, ISet<T>> map, S key, T value)
        {
            ISet<T> s;
            return map.TryGetValue(key, out s) && s.Contains(value);
        }
        public static ISet<T> getOrEmpty<S, T>(this IDictionary<S, ISet<T>> map, S key)
        {
            ISet<T> s;
            if (!map.TryGetValue(key, out s))
                s = new HashSet<T>();
            return s;
        }
        public static IList<T> getOrEmpty<S, T>(this IDictionary<S, IList<T>> map, S key)
        {
            IList<T> s;
            if (!map.TryGetValue(key, out s))
                s = new T[0];
            return s;
        }
        public static IDictionary<T,U> getOrEmpty<S,T,U>(this IDictionary<S, IDictionary<T,U>> map, S key)
        {
            IDictionary<T,U> e;
            if (!map.TryGetValue(key, out e))
                e = new Dictionary<T, U>();
            return e;
        }
        public static IEnumerable<T> get<S, T>(this IDictionary<S, T> map, S key)
        {
            T t;
            if (!map.TryGetValue(key, out t))
                return new T[0];
            return new[]{t};
        }
        public static ISet<S> getAdd<T, S>(this IDictionary<T, ISet<S>> map, T key)
        {
            ISet<S> e; 
            if (!map.TryGetValue(key, out e))
                e = map[key] = new HashSet<S>();
            return e;
        }
        public static IDictionary<S,U> getAdd<T, S,U>(this IDictionary<T, IDictionary<S,U>> map, T key)
        {
            IDictionary<S, U> e;
            if (!map.TryGetValue(key, out e))
                e = map[key] = new Dictionary<S,U>();
            return e;
        }
        public static T getOrAdd<S, T>(this IDictionary<S,T> map, S key,Func<T> make)
        {
            T r;
            if (!map.TryGetValue(key, out r))
                r = map[key] = make();
            return r;
        }
        public static T getOrAdd<S, T>(this IDictionary<S, T> map, S key) where T:new()
        {
            T r;
            if (!map.TryGetValue(key, out r))
                r = map[key] = new T();
            return r;
        }
        public static ISet<T> getOrAdd<S, T>(this IDictionary<S, ISet<T>> map, S key)
        {
            ISet<T> r;
            if (!map.TryGetValue(key, out r))
                r = map[key] = new HashSet<T>();
            return r;
        }
        public enum InsertRemove
        {
            Insert,
            Remove
        }
        public static bool insertOrRemove<T>(this ISet<T> s, T t,InsertRemove ir)
        {
            if (ir==InsertRemove.Insert)
                return s.Add(t);
            else
                return s.Remove(t);
        }
        public static bool insertOrRemoveE<S,T>(this IDictionary<S,ISet<T>> m, S s, T t,InsertRemove ir)
        {
            if (ir == InsertRemove.Insert)
                return m.insert(s, t); // getOrAdd(s).Add(t);// ApplyOr(s, (x) => x.Add(t), false);
            else
                return m.remove(s, t);
        }
        public static R getApplyOr<K,V,R>(this IDictionary<K,V> m, K key,Func<V,R> act,R def)
        {
            V v;
            if (m.TryGetValue(key, out v))
                return act(v);
            else
                return def;
        }
        public static void getApply<K,V>(this IDictionary<K,V> m, K key,Action<V> act)
        {
            V v;
            if (m.TryGetValue(key, out v))
                act(v);
        }
        public static S getOrSame<S>(this IDictionary<S, S> map, S key)
        {
            S r;
            if (map.TryGetValue(key, out r))
                return r;
            else
                return key;
        }
        public static bool addIfNew<S, T>(this IDictionary<S, T> map, S key, Func<T> make)
        {
            if (map.ContainsKey(key))
                return false;
            map[key] = make();
            return true;
        }
        public static bool addIfNew<S, T>(this IDictionary<S, T> map, S key) where T : new()
        {
            if (map.ContainsKey(key))
                return false;
            map[key] = new T();
            return true;
        }
        public static bool add<T>(this IDictionary<T, int> map, T key, int value)
        {
            int ov;
            if (map.TryGetValue(key, out ov))
            {
                map[key] = ov + value;
                return false;
            }
            else
            {
                map[key] = value;
                return true;
            }
        }
        public static void insertNonEmpty<S, T>(this IDictionary<S, ISet<T>> map, S key, IEnumerable<T> values)
        {
            if (!values.Any())
                return;
            map.insert(key, values);
        }
        public static bool insert<S, T>(this IDictionary<S, ISet<T>> map, S key, T value)
        {
            return map.getOrAdd(key).Add(value);
        }
        public static void insert<S, T>(this IDictionary<S, ISet<T>> map, IEnumerable<S> keys, T value)
        {
            foreach (var key in keys)
                map.insert(key, value);
        }
        public static void insert<S, T>(this IDictionary<S, IList<T>> map, S key, T value)
        {
            IList<T> e;
            if (!map.TryGetValue(key, out e))
                e = map[key] = new List<T>();
            e.Add(value);
        }
        public static bool remove<S, T>(this IDictionary<S, ISet<T>> map, S key, T value)
        {
            ISet<T> e;
            if (!map.TryGetValue(key, out e))
                return false;

            var r = e.Remove(value);
            if (e.Count == 0)
                map.Remove(key);
            return r;
        }
        public static void remove<S, T>(this IDictionary<S, ISet<T>> map, S key, IEnumerable<T> values)
        {
            ISet<T> e;
            if (!map.TryGetValue(key, out e))
                return;

            e.ExceptWith(values);
            if (e.Count == 0)
                map.Remove(key);
        }
        public static bool remove<S, T, U>(this IDictionary<S, IDictionary<T, U>> map, S key1, T key2)
        {
            IDictionary<T,U> e;
            if (!map.TryGetValue(key1, out e))
                return false;

            var r = e.Remove(key2);
            if (e.Count == 0)
                map.Remove(key1);
            return r;
        }
        public static bool insert<S, T>(this IDictionary<S, ISet<T>> map, S key)
        {
            ISet<T> e;
            if (!map.TryGetValue(key, out e))
                e = map[key] = new HashSet<T>();
            else
                return false;
            return true;
        }
        public static bool insert<S, T>(this IDictionary<S, T> map, S key) where T:new()
        {
            T e;
            if (!map.TryGetValue(key, out e))
                e = map[key] = new T();
            else
                return false;
            return true;
        }
        public static bool insert<S, T>(this IDictionary<S, ISet<T>> map, S key, IEnumerable<T> values)
        {
            ISet<T> e;
            if (!map.TryGetValue(key, out e))
                e = map[key] = new HashSet<T>();
            var preCount = e.Count;
            e.UnionWith(values);
            return e.Count > preCount;
        }
        public static void insert<S, T, U>(this IDictionary<S, IDictionary<T, ISet<U>>> map, S key, T key2)
        {
            IDictionary<T, ISet<U>> e;
            if (!map.TryGetValue(key, out e))
                e = map[key] = new Dictionary<T, ISet<U>>();
            if (!e.ContainsKey(key2))
                e[key2] = new HashSet<U>();
        }
        public static void insert<S, T, U>(this IDictionary<S, IDictionary<T, U>> map, S key, T value, U value2)
        {
            IDictionary<T, U> e;
            if (!map.TryGetValue(key, out e))
                e = map[key] = new Dictionary<T, U>();
            e[value] = value2;
        }
        public static void insert<S, T, U>(this IDictionary<S, IDictionary<T, IList<U>>> map, S key, T value, U value2)
        {
            IDictionary<T, IList<U>> e;
            if (!map.TryGetValue(key, out e))
                e = map[key] = new Dictionary<T, IList<U>>();
            IList<U> e2;
            if (!e.TryGetValue(value, out e2))
                e2 = e[value] = new List<U>();
            e2.Add(value2);
        }
        public static void insert<S, T, U>(this IDictionary<S, IDictionary<T, ISet<U>>> map, S key, T key2, U value)
        {
            IDictionary<T, ISet<U>> e1;
            if (!map.TryGetValue(key, out e1))
                map[key] = e1 = new Dictionary<T, ISet<U>>();
            ISet<U> e2;
            if (!e1.TryGetValue(key2, out e2))
                e1[key2] = e2 = new HashSet<U>();
//            else
//                Debug.Assert(!e2.Contains(value));
            e2.Add(value);
        }
        public static bool remove<S, T, U>(this IDictionary<S, IDictionary<T, ISet<U>>> map, S key, T key2, U value)
        {
            IDictionary<T, ISet<U>> e1;
            if (!map.TryGetValue(key, out e1))
                return false;
            ISet<U> e2;
            if (!e1.TryGetValue(key2, out e2))
                return false;
            var r = e2.Remove(value);
            if (!e2.Any())
                e1.Remove(key2);
            if (!e1.Any())
                map.Remove(key);
            return r;
        }

        public static void insertESE<S, T, U>(this IDictionary<S, IDictionary<T, ISet<U>>> m, S s, IEnumerable<T> ts, U u)
        {
            IDictionary<T, ISet<U>> e1;
            if (!m.TryGetValue(s, out e1))
                m[s] = e1 = new Dictionary<T, ISet<U>>();
            foreach (var t in ts)
                e1.insert(t, u);
        }
        public static void insert3<S, T, U>(this IDictionary<S, IDictionary<T, ISet<U>>> m, S s, T t, U u)
        {
            IDictionary<T, ISet<U>> e1;
            if (!m.TryGetValue(s, out e1))
                m[s] = e1 = new Dictionary<T, ISet<U>>();
            insert(e1, t, u);
        }
        public static bool insert2<T>(this IDictionary<T, ISet<T>> m, T t1, T t2)
        {
            ISet<T> e1;
            ISet<T> e2;
            if (m.TryGetValue(t1, out e1))
                if (e1.Contains(t2))
                    return false;
                else
                {
                    if (m.TryGetValue(t2, out e2))
                        e1.UnionWith(e2);
                    else
                        e1.Add(t2);
                    m[t2] = e1;
                }
            else if (m.TryGetValue(t2, out e2))
            {
                e2.Add(t1);
                m[t1] = e2;
            }
            else
            {
                e1 = new HashSet<T> { t1, t2 };
                m[t1] = e1;
                m[t2] = e1;
            }
            return true;
        }

        public static bool insertUnion<T>(this IDictionary<T,ISet<T>> m, T i, T o)
        {
            #region consistency
#if DEBUG
            Debug.Assert(!m.ContainsKey(i) || !m.ContainsKey(o) || (m[i].Contains(o) == m[o].Contains(i)));
            Debug.Assert(!m.ContainsKey(i) || !m[i].Contains(o) || m[o].Contains(i));
            Debug.Assert(!m.ContainsKey(o) || !m[o].Contains(i) || m[i].Contains(o));
            Debug.Assert(!m.ContainsKey(i) || !m[i].Contains(o) || ReferenceEquals(m[i],m[o]));
            Debug.Assert(!m.ContainsKey(o) || !m[o].Contains(i) || ReferenceEquals(m[i],m[o]));
#if INVARIANTS
            foreach (var kv in m)
                foreach (var ok in kv.Value)
                    Debug.Assert(ReferenceEquals(m[ok], m[kv.Key]));
#endif
#endif
            #endregion consistency
            var r = false;
            if (insert(m, i, o))
            {
                m[i].Add(i);
                if (!m.ContainsKey(o))
                {
                    m[o] = m[i];
                }
                else
                {
                    Debug.Assert(!ReferenceEquals(m[i], m[o]));
                    Debug.Assert(m[o].Contains(o));
                    var s = m[i];
                    s.UnionWith(m[o]);
                    foreach (var ogti2 in m[o])
                        m[ogti2] = s;
                }
                r = true;
                #region consistency
#if DEBUG
                Debug.Assert(ReferenceEquals(m[i], m[o]));
                Debug.Assert(!m.ContainsKey(i) || !m.ContainsKey(o) || (m[i].Contains(o) == m[o].Contains(i)));
                Debug.Assert(!m.ContainsKey(i) || !m[i].Contains(o) || m[o].Contains(i));
                Debug.Assert(!m.ContainsKey(o) || !m[o].Contains(i) || m[i].Contains(o));
                Debug.Assert(!m.ContainsKey(i) || !m[i].Contains(o) || ReferenceEquals(m[i], m[o]));
                Debug.Assert(!m.ContainsKey(o) || !m[o].Contains(i) || ReferenceEquals(m[i], m[o]));
#if INVARIANTS
                foreach (var kv in m)
                    foreach (var ok in kv.Value)
                        Debug.Assert(ReferenceEquals(m[ok], m[kv.Key]));
#endif
#endif
                #endregion consistency
            }
            #region consistency
#if DEBUG
#if INVARIANTS
            foreach (var kv in m)
                foreach (var ok in kv.Value)
                    Debug.Assert(ReferenceEquals(m[ok], m[kv.Key]));
#endif 
            Debug.Assert(ReferenceEquals(m[i], m[o]));
            Debug.Assert(!m.ContainsKey(i) || !m.ContainsKey(o) || (m[i].Contains(o) == m[o].Contains(i)));
            Debug.Assert(!m.ContainsKey(i) || !m[i].Contains(o) || m[o].Contains(i));
            Debug.Assert(!m.ContainsKey(o) || !m[o].Contains(i) || m[i].Contains(o));
            Debug.Assert(!m.ContainsKey(i) || !m[i].Contains(o) || ReferenceEquals(m[i], m[o]));
            Debug.Assert(!m.ContainsKey(o) || !m[o].Contains(i) || ReferenceEquals(m[i], m[o]));
#endif
            #endregion consistency
            return r;
        }
        public static bool removeUnion<T>(this IDictionary<T,ISet<T>> m, T t)
        {
            var e = m.getOrNull(t);
            if (e == null)
                return false;
            foreach (var s in e)
                m.Remove(s);
            return true;
        }
        #endregion map util

        //////////////////////////////////////////////////////////////////////////////////////////
        public static int max(IEnumerable<int> n)
        {
            Debug.Assert(n.Count() > 0);
            var r = n.First();
            foreach (var nn in n)
                if (nn > r)
                    r = nn;
            return r;
        }
        public static int max(IEnumerable<int> n,int d)
        {
            if (n.Count() == 0)
                return d;
            else
                return max(n);
        }
        //////////////////////////////////////////////////////////////////////////////////////////
        public static ISet<T> union<T>(IEnumerable<IEnumerable<T>> sets)
        {
            var result = new HashSet<T>();
            foreach (var s in sets)
                result.UnionWith(s);
            return result;
        }

        //////////////////////////////////////////////////////////////////////////////////////////
        public static ISet<T> intersection<T>(IEnumerable<IEnumerable<T>> sets)
        {
            var d = new Dictionary<T, int>();
            foreach (var s in sets)
                foreach (var e in s)
                {
                    if (!d.ContainsKey(e))
                        d[e] = 0;
                    d[e]++;
                }
            return new HashSet<T>(from kv in d where kv.Value == sets.Count() select kv.Key);
        }


        //////////////////////////////////////////////////////////////////////////////////////////
        public static T min<T>(IEnumerable<T> ts, Comparer<T> comp)
        {
            return min(ts, comp.Compare);
        }
        public static T min<T>(IEnumerable<T> ts, Func<T, T, int> comp)
        {
            Debug.Assert(ts.Count() > 0);
            return min(ts, comp, default(T));
        }

        public static T min<T>(IEnumerable<T> ts,Func<T,T,int> comp,T def)
        {
            T r;
            if (ts.Count() == 0)
                r = def;
            else
            {
                r=ts.First();
                foreach (var t in ts)
                    if (comp(t,r)<0)
                        r=t;
            }
            return r;
        }
        //////////////////////////////////////////////////////////////////////////////////////////
        public static Clause tryUnify(Literal a,Clause c, int i)
        {
            Debug.Assert(i >= 0 && i < c.literals.Count);

            var ca = c.literals[i];
            var s = new Substitution();
            if (tryUnify(a,ca, s))
                return new Clause(from aa in c.literals where aa!=c.literals[i] select aa.substitute(s));
            return null;
        }

        //////////////////////////////////////////////////////////////////////////////////////////
        public static bool tryUnify(Literal a1, Literal a2, Substitution s)
        {
            if (a1.polarity == a2.polarity)
                return false;

            var a1pa = a1.f as PredicateApplication;
            var a2pa = a2.f as PredicateApplication;
            var a1eq = a1.f as EqualityFormula;
            var a2eq = a2.f as EqualityFormula;

            Debug.Assert(a1pa != null ^ a1eq != null);
            Debug.Assert(a2pa != null ^ a2eq != null);

            if (a1pa != null && a2pa != null)
                return tryUnify(a1pa, a2pa, s);
            else if (a1eq != null && a2eq != null && a1eq.t1.type.isEquivalent(a2eq.t1.type))
                return tryUnify(a1eq, a2eq, s);
            else return false;
        }

        //////////////////////////////////////////////////////////////////////////////////////////
        private static bool tryUnify(EqualityFormula eq1, EqualityFormula eq2, Substitution s)
        {
            Debug.Assert(eq1.t1.type.isEquivalent(eq2.t1.type));
            //record substitution as has to check both ways
            s.push();
            if (tryUnify(eq1.t1, eq2.t1, s) && tryUnify(eq1.t2, eq2.t2, s))
                return true;
            s.pop();
            return tryUnify(eq1.t1, eq2.t2, s) && tryUnify(eq1.t2, eq2.t1, s);
        }

        //////////////////////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////////////////////
        private static bool tryUnify(PredicateApplication pa1, PredicateApplication pa2, Substitution s)
        {
            if (pa1.predicate != pa2.predicate)
                return false;
            Debug.Assert(pa1.args.Count() == pa2.args.Count());
            for (var i = 0; i < pa1.args.Count(); i++)
                if (!tryUnify(pa1.args[i], pa2.args[i], s))
                    return false;
            return true;
        }

        //////////////////////////////////////////////////////////////////////////////////
        public static bool tryUnify(ITerm ot1, ITerm ot2, Substitution s)
        {
            Debug.Assert(ot1.type.isEquivalent(ot2.type));
            var olv1 = ot1 as Variable;
            var olv2 = ot2 as Variable;
            var t1 = (olv1!=null && s.hasMap(olv1.variable)) ? s.map(olv1.variable) : ot1;
            var t2 = (olv2!=null && s.hasMap(olv2.variable)) ? s.map(olv2.variable) : ot2;

            var fa1 = t1 as FunctionApplicationFormula;
            var fa2 = t2 as FunctionApplicationFormula;
            var lv1 = t1 as Variable;
            var lv2 = t2 as Variable;

            if (fa1!=null && fa2!=null)
                return tryUnify(fa1, fa2, s);

            if (lv1!=null && lv2!=null)
                return tryUnify(lv1, lv2, s);

            if (fa1 != null && lv2 != null)
                return tryUnify(lv2, fa1, s);

            if (lv1!=null && fa2!=null)
                return tryUnify(lv1, fa2, s);

            throw new Exception();
        }

        //////////////////////////////////////////////////////////////////////////////////
        public static bool tryUnify(FunctionApplicationFormula fa1, FunctionApplicationFormula fa2, Substitution s)
        {
            Debug.Assert(fa1.type.isEquivalent(fa2.type));
            if (fa1.function != fa2.function)
                return false;
            
            var i = 0;
            while (i < fa1.subTerms.Count())
                if (tryUnify(fa1.subTerms[i], fa2.subTerms[i], s))
                    i++;
                else
                    return false;
            return true;
        }

        //////////////////////////////////////////////////////////////////////////////////
        public static bool tryUnify(Variable lv1, Variable lv2, Substitution s)
        {
            Debug.Assert(lv1.type.isEquivalent(lv2.type));
            Debug.Assert(!s.hasMap(lv1.variable));
            Debug.Assert(!s.hasMap(lv2.variable));

            if (lv1.Equals(lv2))
                return true;

            s.composeWith(new Substitution(lv1.variable, lv2));
            return true;
        }
        //////////////////////////////////////////////////////////////////////////////////
        public static bool tryUnify(Variable lv1, FunctionApplicationFormula fa2, Substitution s)
        {
            Debug.Assert(lv1.type.isEquivalent(fa2.type));
            Debug.Assert(!s.hasMap(lv1.variable));
            if (fa2.freeVariables.Contains(lv1.variable)) //occurrence check
                return false;
            s.composeWith(new Substitution(lv1.variable, fa2));
            return true;
        }
    }
}
