using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Slicer.StateSpace.Variables;

namespace Slicer.Programs.Conditions
{
    public class PropositionalFormula
    {
        private List<Conjunction> myDisjuncts;

        private PropositionalFormula() //false - internal
        {
            myDisjuncts = new List<Conjunction>();
        }

        public PropositionalFormula(bool cond)
            : this()
        {
            if (cond)
                myDisjuncts.Add(new Conjunction());
        }

        private PropositionalFormula(Conjunction c)
            : this()
        {
            myDisjuncts.Add(new Conjunction(c));
        }

        public PropositionalFormula(int v, bool pos)
            : this()
        {
            myDisjuncts.Add(new Conjunction(v, pos));
        }

        public PropositionalFormula(PropositionalFormula other)
            : this()
        {
            foreach (var d in other.myDisjuncts)
                myDisjuncts.Add(new Conjunction(d));
        }

        private PropositionalFormula(IEnumerable<Conjunction> disjuncts)
        {
            myDisjuncts = new List<Conjunction>(disjuncts);
        }

        ////////////////////////////////////////////////////////////
        public bool isTrue
        {
            get { return myDisjuncts.Count == 1 && myDisjuncts.First().isTrue; }
        }

        public bool isFalse
        {
            get { return myDisjuncts.Count == 0; }
        }

        public IEnumerable<Conjunction> disjuncts
        {
            get { return myDisjuncts; }
        }

        public static PropositionalFormula or(IEnumerable<PropositionalFormula> others)
        {
            Debug.Assert(others != null);
//            Debug.Assert(predecessors.Count > 0);
            var result = new PropositionalFormula(false);
            foreach (var o in others)
                result.orWith(o);

/*            if (predecessors.Count()==1)
            {
                var of = predecessors.First();
                var nof = !of;
                var nr = !result;
                Debug.Assert((result & nof).isFalse);
                Debug.Assert((nr     &  of).isFalse);
                Debug.Assert((result | nof).isTrue);
                Debug.Assert((nr     | of ).isTrue);
            }
 * */
            return result;
        }

        ////////////////////////////////////////////////////////////
        public void orWith(PropositionalFormula other)
        {
            if (ReferenceEquals(this, other))
                return;
//            Console.Write("{0} || {1}", this.ToString(), other.ToString());
            bool b = isFalse || other.isFalse;
            foreach (var c in other.myDisjuncts)
                checkAddDisjunct(new Conjunction(c));
            Debug.Assert(b || !isFalse);
//            Console.WriteLine(" = {0}", this.ToString());
        }

        ////////////////////////////////////////////////////////////
        public void andWith(PropositionalFormula other)
        {
            List<Conjunction> oldDisjuncts = myDisjuncts;
            myDisjuncts = new List<Conjunction>();
            foreach (var cx in oldDisjuncts)
                foreach (var cy in other.myDisjuncts)
                {
                    Conjunction a = cx & cy;
                    if (a != null)
                        checkAddDisjunct(a);
                }
        }

        ////////////////////////////////////////////////////////////
        public static PropositionalFormula operator |(PropositionalFormula x, PropositionalFormula y)
        {
            var result = new PropositionalFormula(x);
            result.orWith(y);
            return result;
        }

        ////////////////////////////////////////////////////////////
        public static PropositionalFormula operator &(PropositionalFormula x, PropositionalFormula y)
        {
            var result = new PropositionalFormula(x);
            result.andWith(y);
            return result;
        }

        ////////////////////////////////////////////////////////////
        public static PropositionalFormula operator !(PropositionalFormula x)
        {
//            Console.WriteLine("!{0}", x.ToString());
            PropositionalFormula result;
            if (x.isTrue)
                result = new PropositionalFormula(false);
            else if (x.isFalse)
                result = new PropositionalFormula(true);
            else
            {
                result = new PropositionalFormula(false);

                var indices = new int[x.myDisjuncts.Count];
                for (int i = 0; i < indices.Length; i++)
                    indices[i] = 0;

                do
                {
                    {
                        var pos = new HashSet<int>();
                        var neg = new HashSet<int>();
                        for (int i = 0; i < indices.Length; i++)
                        {
                            Tuple<bool, int> t = x.disjuncts.ElementAt(i).conjuncts.ElementAt(indices[i]);
                            if (t.Item1)
                                neg.Add(t.Item2);
                            else
                                pos.Add(t.Item2);
                        }
                        if (pos.Intersect(neg).Count() == 0)
                        {
                            var disjunct = new Conjunction(pos, neg);
//                            Console.WriteLine("\t{0}", disjunct.ToString());
                            result.checkAddDisjunct(disjunct);
                            if (result.isTrue)
                                return result;
                        }
                    }

                    int j = indices.Length - 1;
                    do
                    {
                        indices[j]++;
                        if (indices[j] < x.disjuncts.ElementAt(j).conjuncts.Count())
                            break;
                        if (j == 0)
                            break;
                        indices[j] = 0;
                        j--;
                    } while (true);
                    if (j == 0 && indices[j] == x.disjuncts.ElementAt(j).conjuncts.Count())
                        break;
                } while (true);
                //            Console.WriteLine("{0} ==> {1}", x.ToString(), result.ToString());
            }
/*            {
                var m = (x & result);
                var b = (x | result);
                Debug.Assert(m.isFalse);
                Debug.Assert(b.isTrue);
            }*/
            return result;
        }

        ////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////
        //or the minimized list myDisjuncts with newDisjunct and minimize it
        private void checkAddDisjunct(Conjunction newDisjunct)
        {
//            Console.WriteLine("\t\tcheckAddDisjunct({0},{1})", this.ToString(), newDisjunct.ToString());
            Debug.Assert(newDisjunct != null);
//            if (newDisjunct == null)
//            { //false
//                return;
//            }
            if (newDisjunct.isTrue)
            {
                myDisjuncts.Clear();
                myDisjuncts.Add(new Conjunction());
                return;
            }

            var todo = new HashSet<int>();
            var toDelete = new SortedSet<int>();

            myDisjuncts.Add(newDisjunct);
            todo.Add(myDisjuncts.Count - 1);

            while (todo.Count > 0)
            {
                int termIndex = todo.First();
//                Console.WriteLine("\t\t\tchecking {0}", myDisjuncts[termIndex]);
                todo.Remove(termIndex);
                for (int i = 0; i < myDisjuncts.Count; i++)
                {
                    if (i != termIndex && !toDelete.Contains(i))
                    {
//                        Console.WriteLine("\tchecking {0} {1}", myDisjuncts[termIndex], myDisjuncts[i]);
                        bool modified1 = false, modified2 = false;
                        bool delete1 = false, delete2 = false;
                        Conjunction toAdd = null;
                        bool it = crossSimplify(myDisjuncts[termIndex], myDisjuncts[i], out toAdd, out modified1,
                                                out modified2, out delete1, out delete2);
/*                        Console.WriteLine("\t\t {0} {1}", 
                            (delete1)? "X" : (modified1) ? myDisjuncts[termIndex].ToString() : "=",
                            (delete2)? "X" : (modified2) ? myDisjuncts[i        ].ToString() : "="
                        );*/
                        if (it)
                        {
                            myDisjuncts = new List<Conjunction>();
                            myDisjuncts.Add(new Conjunction());
                            return;
                        }
                        if (modified1)
                            todo.Add(termIndex);
                        else if (delete1)
                        {
                            toDelete.Add(termIndex);
                            todo.Remove(termIndex);
                            break;
                        }
                        if (modified2)
                            todo.Add(i);
                        else if (delete2)
                        {
                            toDelete.Add(i);
                            todo.Remove(i);
                        }

                        if (toAdd != null)
                        {
                            myDisjuncts.Add(toAdd);
                            todo.Add(myDisjuncts.Count - 1);
                        }
                    }
                }
            }


            if (toDelete.Count > 0)
            {
                var nd = new List<Conjunction>();
                for (int i = 0; i < myDisjuncts.Count; i++)
                    if (!toDelete.Contains(i))
                        nd.Add(myDisjuncts[i]);
                myDisjuncts = nd;
            }

            /*
            bool first = true;
            for (var n = myDisjuncts.First; n != null; )
                if (n.Value.isImpliedBy(newDisjunct))
                    return;
                else if (n.Value.tryOr(newDisjunct))
                {
                    if (n.Value.isTrue)
                    {
                        myDisjuncts.Clear();
                        myDisjuncts.AddLast(new Conjunction());
                        return;
                    }
                    if (first)
                    {
                        first = false;
                        n = n.Next;
                    }
                    else
                    {
                        var t = n;
                        n = n.Next;
                        myDisjuncts.Remove(t);
                    }
                }
                else
                    n = n.Next;
            if (first)
            {
                myDisjuncts.AddLast(newDisjunct);
            }

            if (myDisjuncts.Count>0){
                foreach (var d1 in myDisjuncts)
                    foreach (var d2 in myDisjuncts)
                        checkMinimized(d1, d2);
 * 
            }*/
        }

        private static bool crossSimplify(Conjunction a, Conjunction b, out Conjunction toAdd, out bool modified1,
                                          out bool modified2, out bool delete1, out bool delete2)
        {
            var common = new List<Tuple<bool, int>>();
            var inverse = new List<Tuple<bool, int>>();
            var onlyA = new List<Tuple<bool, int>>();
            var onlyB = new List<Tuple<bool, int>>();

            int ai = 0, bi = 0;
            bool av = ai < a.conjuncts.Count();
            bool bv = bi < b.conjuncts.Count();
            while (av || bv)
            {
                if (!bv)
                {
                    onlyA.Add(a.conjuncts[ai]);
                    ai++;
                }
                else if (!av)
                {
                    onlyB.Add(b.conjuncts[bi]);
                    bi++;
                }
                else
                {
                    int al = a.conjuncts[ai].Item2;
                    int bl = b.conjuncts[bi].Item2;
                    if (al == bl)
                    {
                        if (a.conjuncts[ai].Item1 == b.conjuncts[bi].Item1)
                            common.Add(a.conjuncts[ai]);
                        else
                            inverse.Add(a.conjuncts[ai]);
                        ai++;
                        bi++;
                    }
                    else if (al < bl)
                    {
                        onlyA.Add(a.conjuncts[ai]);
                        ai++;
                    }
                    else //bl<al
                    {
                        onlyB.Add(b.conjuncts[bi]);
                        bi++;
                    }
                }
                av = ai < a.conjuncts.Count();
                bv = bi < b.conjuncts.Count();
            }


//            Console.WriteLine("\t\tCS( c={0}, i={1}, oa={2}, ob={3})", common.Count, inverse.Count, onlyA.Count, onlyB.Count);

            if (inverse.Count == 0)
            {
                modified1 = false;
                modified2 = false;
                toAdd = null;

                if (onlyB.Count == 0)
                {
                    //m & c | m ==> m
                    delete1 = true;
                    delete2 = false;
                }
                else if (onlyA.Count == 0)
                {
//m | m & d ==> m
                    delete1 = false;
                    delete2 = true;
                }
                else
                {
//m & c || m & d
                    delete1 = false;
                    delete2 = false;
                }
                return false;
            }
            else
            {
                if (onlyA.Count == 0 && onlyB.Count == 0)
                {
                    if (common.Count == 0)
                    {
                        //b | !b ==> T
                        delete1 = false;
                        delete2 = false;
                        modified1 = false;
                        modified2 = false;
                        toAdd = null;
                        return true;
                    }
                    else
                    {
                        //m & b | m & !b ==> m
                        delete1 = false;
                        delete2 = true;
                        modified1 = true;
                        modified2 = false;
                        a.remove(from t in inverse select t.Item2);
                        toAdd = null;
                        return false;
                    }
                }
                else if (onlyB.Count == 0)
                {
//m & b & c | m & !b ==> m & c | m & !b
                    delete1 = false;
                    delete2 = false;
                    modified1 = true;
                    modified2 = false;
                    a.remove(from t in inverse select t.Item2);
                    toAdd = null;
                    return false;
                }
                else if (onlyA.Count == 0)
                {
//m & b | m & !b & d ==> m & b | m & d
                    delete1 = false;
                    delete2 = false;
                    modified1 = false;
                    modified2 = true;
                    b.remove(from t in inverse select t.Item2);
                    toAdd = null;
                    return false;
                }
                else
                {
//m & b & c | m & !b & d ==> m & b &c | m & !b & d | m & c & d
                    delete1 = false;
                    delete2 = false;
                    modified1 = false;
                    modified2 = false;
                    {
                        var pos = new List<int>();
                        var neg = new List<int>();
                        foreach (var l in common)
                            if (l.Item1) pos.Add(l.Item2);
                            else neg.Add(l.Item2);
                        foreach (var l in onlyA)
                            if (l.Item1) pos.Add(l.Item2);
                            else neg.Add(l.Item2);
                        foreach (var l in onlyB)
                            if (l.Item1) pos.Add(l.Item2);
                            else neg.Add(l.Item2);
                        toAdd = new Conjunction(pos, neg);
                    }
                    return false;
                }
            }
        }

        ////////////////////////////////////////////////////////////
        public string ToString(IDictionary<int, ProgramVariable> conditionVariableNames)
        {
            if (myDisjuncts.Count == 0)
                return "F";
            if (myDisjuncts.Count == 1 && myDisjuncts.First().isTrue)
                return "T";
            string result = "(";

            bool b = true;
            foreach (var d in myDisjuncts)
            {
                result += ((b) ? "" : " || ") + d.ToString(conditionVariableNames);
                b = false;
            }
            result += ")";
            return result;
        }

        ////////////////////////////////////////////////////////////
        public override string ToString()
        {
            if (myDisjuncts.Count == 0)
                return "F";
            if (myDisjuncts.Count == 1 && myDisjuncts.First().isTrue)
                return "T";
            string result = "(";

            bool b = true;
            foreach (var d in myDisjuncts)
            {
                result += ((b) ? "" : " || ") + d;
                b = false;
            }
            result += ")";
            return result;
        }

        ////////////////////////////////////////////////////////////

        ////////////////////////////////////////////////////////////
        public int size()
        {
            int result = 0;
            foreach (var d in disjuncts)
                result += d.conjuncts.Count();
            return result;
        }

        #region Nested type: Conjunction

        public class Conjunction
        {
            private SortedSet<int> negative;
            private SortedSet<int> positive;

            public Conjunction() //default is true
            {
                positive = new SortedSet<int>();
                negative = new SortedSet<int>();
            }

            public Conjunction(Conjunction other)
            {
                positive = new SortedSet<int>(other.positive);
                negative = new SortedSet<int>(other.negative);
            }

            public Conjunction(int v, bool pos)
                : this()
            {
                if (pos)
                    positive.Add(v);
                else
                    negative.Add(v);
            }

            internal Conjunction(IEnumerable<int> positive, IEnumerable<int> negative)
            {
                Debug.Assert(positive != null);
                Debug.Assert(negative != null);
                Debug.Assert(positive.Intersect(negative).Count() == 0);
                this.positive = new SortedSet<int>(positive);
                this.negative = new SortedSet<int>(negative);
            }

            public bool isTrue
            {
                get { return positive.Count == 0 && negative.Count == 0; }
            }

            public List<Tuple<bool, int>> conjuncts
            {
                get
                {
                    var result = new List<Tuple<bool, int>>();
                    SortedSet<int>.Enumerator pi = positive.GetEnumerator();
                    SortedSet<int>.Enumerator ni = negative.GetEnumerator();
                    bool pv = pi.MoveNext();
                    bool nv = ni.MoveNext();

                    while (pv || nv)
                    {
                        Debug.Assert(!pv || !nv || pi.Current != ni.Current);
                        if (pv && (!nv || pi.Current < ni.Current))
                        {
                            result.Add(new Tuple<bool, int>(true, pi.Current));
                            pv = pi.MoveNext();
                        }
                        else
                        {
                            Debug.Assert(nv && (!pv || ni.Current < pi.Current));
                            result.Add(new Tuple<bool, int>(false, ni.Current));
                            nv = ni.MoveNext();
                        }
                    }

                    return result;
                }
            }

            public static Conjunction operator &(Conjunction x, Conjunction y)
            {
                if (x.positive.Overlaps(y.negative) || x.negative.Overlaps(y.positive))
                    return null;

                var pos = new HashSet<int>(x.positive);
                pos.UnionWith(y.positive);
                var neg = new HashSet<int>(x.negative);
                neg.UnionWith(y.negative);
                return new Conjunction(pos, neg);
            }

            internal bool tryOr(Conjunction other)
            {
                Debug.Assert(!isImpliedBy(other));
//                Debug.Assert(!other.isFalse);
                var newPos = new SortedSet<int>();
                var newNeg = new SortedSet<int>();

                SortedSet<int>.Enumerator xpe = positive.GetEnumerator();
                SortedSet<int>.Enumerator xne = negative.GetEnumerator();
                SortedSet<int>.Enumerator ype = other.positive.GetEnumerator();
                SortedSet<int>.Enumerator yne = other.negative.GetEnumerator();

                bool xpv = xpe.MoveNext();
                bool xnv = xne.MoveNext();
                bool ypv = ype.MoveNext();
                bool ynv = yne.MoveNext();

                while (xpv || xnv)
                {
                    Debug.Assert(!(xpv && xnv && xne.Current == xpe.Current));
                    Debug.Assert(!(ypv && ynv && yne.Current == ype.Current));
                    if (xpv && (!xnv || xne.Current > xpe.Current))
                    {
                        if (ypv && xpe.Current == ype.Current)
                        {
                            ypv = ype.MoveNext();
                            newPos.Add(xpe.Current);
                        }
                        else if (ynv && xpe.Current == yne.Current)
                            ynv = yne.MoveNext();
                        xpv = xpe.MoveNext();
                    }
                    else
                    {
                        Debug.Assert(xnv && (!xpv || xpe.Current > xne.Current));
                        if (ynv && xne.Current == yne.Current)
                        {
                            ynv = yne.MoveNext();
                            newNeg.Add(xne.Current);
                        }
                        else if (ypv && xne.Current == ype.Current)
                            ypv = ype.MoveNext();
                        xnv = xne.MoveNext();
                    }
                }

                if (ypv || ynv)
                {
                    return false;
                }

                positive = newPos;
                negative = newNeg;

                return true;
            }

            internal bool isImpliedBy(Conjunction other)
            {
                return
//                       !isFalse
                    positive.IsSubsetOf(other.positive)
                    && negative.IsSubsetOf(other.negative)
                    ;
            }

            public override string ToString()
            {
                if (positive.Count == 0 && negative.Count == 0)
                    return "T";
                string result = "(";
                bool b = true;
                foreach (var c in positive)
                {
                    result += ((b) ? "" : @"&&") + c;
                    b = false;
                }
                foreach (var c in negative)
                {
                    result += ((b) ? "" : @"&&") + "!" + c;
                    b = false;
                }
                result += ")";
                return result;
            }

            public string ToString(IDictionary<int, ProgramVariable> conditionVariableNames)
            {
                if (positive.Count == 0 && negative.Count == 0)
                    return "T";
                string result = (positive.Count + negative.Count > 1) ? "(" : "";
                bool b = true;
                foreach (var c in positive)
                {
                    result += ((b) ? "" : @" && ") + conditionVariableNames[c];
                    b = false;
                }
                foreach (var c in negative)
                {
                    result += ((b) ? "" : @" && ") + "!" + conditionVariableNames[c];
                    b = false;
                }
                result += (positive.Count + negative.Count > 1) ? ")" : "";
                return result;
            }

            internal void remove(IEnumerable<int> l)
            {
                foreach (var i in l)
                {
                    positive.Remove(i);
                    negative.Remove(i);
                }
            }
        }

        #endregion

        ////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////
    }
}