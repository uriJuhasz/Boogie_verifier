// Dafny program TreeBarrier-NoRoot.dfy compiled into C#

using System.Numerics;
using System.Collections.Generic;

namespace Dafny
{
  public class Set<T>
  {
    Dictionary<T, bool> dict;
    public Set() { }
    Set(Dictionary<T, bool> d) {
      dict = d;
    }
    public static Set<T> Empty {
      get {
        return new Set<T>(new Dictionary<T, bool>(0));
      }
    }
    public static Set<T> FromElements(params T[] values) {
      Dictionary<T, bool> d = new Dictionary<T, bool>(values.Length);
      foreach (T t in values)
        d[t] = true;
      return new Set<T>(d);
    }
    public static Set<T> FromCollection(ICollection<T> values) {
      Dictionary<T, bool> d = new Dictionary<T, bool>();
      foreach (T t in values)
        d[t] = true;
      return new Set<T>(d);
    }
    
    public IEnumerable<T> Elements {
      get {
        return dict.Keys;
      }
    }
    public bool Equals(Set<T> other) {
      return dict.Count == other.dict.Count && IsSubsetOf(other);
    }
    public override bool Equals(object other) {
      return other is Set<T> && Equals((Set<T>)other);
    }
    public override int GetHashCode() {
      return dict.GetHashCode();
    }
    public bool IsProperSubsetOf(Set<T> other) {
      return dict.Count < other.dict.Count && IsSubsetOf(other);
    }
    public bool IsSubsetOf(Set<T> other) {
      if (other.dict.Count < dict.Count)
        return false;
      foreach (T t in dict.Keys) {
        if (!other.dict.ContainsKey(t))
          return false;
      }
      return true;
    }
    public bool IsSupersetOf(Set<T> other) {
      return other.IsSubsetOf(this);
    }
    public bool IsProperSupersetOf(Set<T> other) {
      return other.IsProperSubsetOf(this);
    }
    public bool IsDisjointFrom(Set<T> other) {
      Dictionary<T, bool> a, b;
      if (dict.Count < other.dict.Count) {
        a = dict; b = other.dict;
      } else {
        a = other.dict; b = dict;
      }
      foreach (T t in a.Keys) {
        if (b.ContainsKey(t))
          return false;
      }
      return true;
    }
    public bool Contains(T t) {
      return dict.ContainsKey(t);
    }
    public Set<T> Union(Set<T> other) {
      if (dict.Count == 0)
        return other;
      else if (other.dict.Count == 0)
        return this;
      Dictionary<T, bool> a, b;
      if (dict.Count < other.dict.Count) {
        a = dict; b = other.dict;
      } else {
        a = other.dict; b = dict;
      }
      Dictionary<T, bool> r = new Dictionary<T, bool>();
      foreach (T t in b.Keys)
        r[t] = true;
      foreach (T t in a.Keys)
        r[t] = true;
      return new Set<T>(r);
    }
    public Set<T> Intersect(Set<T> other) {
      if (dict.Count == 0)
        return this;
      else if (other.dict.Count == 0)
        return other;
      Dictionary<T, bool> a, b;
      if (dict.Count < other.dict.Count) {
        a = dict; b = other.dict;
      } else {
        a = other.dict; b = dict;
      }
      var r = new Dictionary<T, bool>();
      foreach (T t in a.Keys) {
        if (b.ContainsKey(t))
          r.Add(t, true);
      }
      return new Set<T>(r);
    }
    public Set<T> Difference(Set<T> other) {
      if (dict.Count == 0)
        return this;
      else if (other.dict.Count == 0)
        return this;
      var r = new Dictionary<T, bool>();
      foreach (T t in dict.Keys) {
        if (!other.dict.ContainsKey(t))
          r.Add(t, true);
      }
      return new Set<T>(r);
    }
    public T Choose() {
      foreach (T t in dict.Keys) {
        // return the first one
        return t;
      }
      return default(T);
    }
  }
  public class MultiSet<T>
  {
    Dictionary<T, int> dict;
    public MultiSet() { }
    MultiSet(Dictionary<T, int> d) {
      dict = d;
    }
    public static MultiSet<T> Empty {
      get {
        return new MultiSet<T>(new Dictionary<T, int>(0));
      }
    }
    public static MultiSet<T> FromElements(params T[] values) {
      Dictionary<T, int> d = new Dictionary<T, int>(values.Length);
      foreach (T t in values) {
        var i = 0;
        if (!d.TryGetValue(t, out i)) {
          i = 0;
        }
        d[t] = i + 1;
      }
      return new MultiSet<T>(d);
    }
    public static MultiSet<T> FromCollection(ICollection<T> values) {
      Dictionary<T, int> d = new Dictionary<T, int>();
      foreach (T t in values) {
        var i = 0;
        if (!d.TryGetValue(t, out i)) {
          i = 0;
        }
        d[t] = i + 1;
      }
      return new MultiSet<T>(d);
    }
    public static MultiSet<T> FromSeq(Sequence<T> values) {
      Dictionary<T, int> d = new Dictionary<T, int>();
      foreach (T t in values.Elements) {
        var i = 0;
        if (!d.TryGetValue(t, out i)) {
          i = 0;
        }
        d[t] = i + 1;
      }
      return new MultiSet<T>(d);
    }
    public static MultiSet<T> FromSet(Set<T> values) {
      Dictionary<T, int> d = new Dictionary<T, int>();
      foreach (T t in values.Elements) {
        d[t] = 1;
      }
      return new MultiSet<T>(d);
    }

    public bool Equals(MultiSet<T> other) {
      return other.IsSubsetOf(this) && this.IsSubsetOf(other);
    }
    public override bool Equals(object other) {
      return other is MultiSet<T> && Equals((MultiSet<T>)other);
    }
    public override int GetHashCode() {
      return dict.GetHashCode();
    }
    public bool IsProperSubsetOf(MultiSet<T> other) {
      return !Equals(other) && IsSubsetOf(other);
    }
    public bool IsSubsetOf(MultiSet<T> other) {
      foreach (T t in dict.Keys) {
        if (!other.dict.ContainsKey(t) || other.dict[t] < dict[t])
          return false;
      }
      return true;
    }
    public bool IsSupersetOf(MultiSet<T> other) {
      return other.IsSubsetOf(this);
    }
    public bool IsProperSupersetOf(MultiSet<T> other) {
      return other.IsProperSubsetOf(this);
    }
    public bool IsDisjointFrom(MultiSet<T> other) {
      foreach (T t in dict.Keys) {
        if (other.dict.ContainsKey(t))
          return false;
      }
      foreach (T t in other.dict.Keys) {
        if (dict.ContainsKey(t))
          return false;
      }
      return true;
    }
    public bool Contains(T t) {
      return dict.ContainsKey(t);
    }
    public MultiSet<T> Union(MultiSet<T> other) {
      if (dict.Count == 0)
        return other;
      else if (other.dict.Count == 0)
        return this;
      var r = new Dictionary<T, int>();
      foreach (T t in dict.Keys) {
        var i = 0;
        if (!r.TryGetValue(t, out i)) {
          i = 0;
        }
        r[t] = i + dict[t];
      }
      foreach (T t in other.dict.Keys) {
        var i = 0;
        if (!r.TryGetValue(t, out i)) {
          i = 0;
        }
        r[t] = i + other.dict[t];
      }
      return new MultiSet<T>(r);
    }
    public MultiSet<T> Intersect(MultiSet<T> other) {
      if (dict.Count == 0)
        return this;
      else if (other.dict.Count == 0)
        return other;
      var r = new Dictionary<T, int>();
      foreach (T t in dict.Keys) {
        if (other.dict.ContainsKey(t)) {
          r.Add(t, other.dict[t] < dict[t] ? other.dict[t] : dict[t]);
        }
      }
      return new MultiSet<T>(r);
    }
    public MultiSet<T> Difference(MultiSet<T> other) { // \result == this - other
      if (dict.Count == 0)
        return this;
      else if (other.dict.Count == 0)
        return this;
      var r = new Dictionary<T, int>();
      foreach (T t in dict.Keys) {
        if (!other.dict.ContainsKey(t)) {
          r.Add(t, dict[t]);
        } else if (other.dict[t] < dict[t]) {
          r.Add(t, dict[t] - other.dict[t]);
        }
      }
      return new MultiSet<T>(r);
    }
  }
  public class Sequence<T>
  {
    T[] elmts;
    public Sequence() { }
    public Sequence(T[] ee) {
      elmts = ee;
    }
    public static Sequence<T> Empty {
      get {
        return new Sequence<T>(new T[0]);
      }
    }
    public static Sequence<T> FromElements(params T[] values) {
      return new Sequence<T>(values);
    }
    public BigInteger Length {
      get { return new BigInteger(elmts.Length); }
    }
    public T[] Elements {
      get {
        return elmts;
      }
    }
    public T Select(BigInteger index) {
      return elmts[(int)index];
    }
    public Sequence<T> Update(BigInteger index, T t) {
      T[] a = (T[])elmts.Clone();
      a[(int)index] = t;
      return new Sequence<T>(a);
    }
    public bool Equals(Sequence<T> other) {
      int n = elmts.Length;
      return n == other.elmts.Length && EqualUntil(other, n);
    }
    public override bool Equals(object other) {
      return other is Sequence<T> && Equals((Sequence<T>)other);
    }
    public override int GetHashCode() {
      return elmts.GetHashCode();
    }
    bool EqualUntil(Sequence<T> other, int n) {
      for (int i = 0; i < n; i++) {
        if (!elmts[i].Equals(other.elmts[i]))
          return false;
      }
      return true;
    }
    public bool IsProperPrefixOf(Sequence<T> other) {
      int n = elmts.Length;
      return n < other.elmts.Length && EqualUntil(other, n);
    }
    public bool IsPrefixOf(Sequence<T> other) {
      int n = elmts.Length;
      return n <= other.elmts.Length && EqualUntil(other, n);
    }
    public Sequence<T> Concat(Sequence<T> other) {
      if (elmts.Length == 0)
        return other;
      else if (other.elmts.Length == 0)
        return this;
      T[] a = new T[elmts.Length + other.elmts.Length];
      System.Array.Copy(elmts, 0, a, 0, elmts.Length);
      System.Array.Copy(other.elmts, 0, a, elmts.Length, other.elmts.Length);
      return new Sequence<T>(a);
    }
    public bool Contains(T t) {
      int n = elmts.Length;
      for (int i = 0; i < n; i++) {
        if (t.Equals(elmts[i]))
          return true;
      }
      return false;
    }
    public Sequence<T> Take(BigInteger n) {
      int m = (int)n;
      if (elmts.Length == m)
        return this;
      T[] a = new T[m];
      System.Array.Copy(elmts, a, m);
      return new Sequence<T>(a);
    }
    public Sequence<T> Drop(BigInteger n) {
      if (n.IsZero)
        return this;
      int m = (int)n;
      T[] a = new T[elmts.Length - m];
      System.Array.Copy(elmts, m, a, 0, elmts.Length - m);
      return new Sequence<T>(a);
    }
  }
  public struct Pair<A, B>
  {
    public readonly A Car;
    public readonly B Cdr;
    public Pair(A a, B b) {
      this.Car = a;
      this.Cdr = b;
    }
  }
  public partial class Helpers {
    // Computing forall/exists quantifiers
    public static bool QuantBool(bool frall, System.Predicate<bool> pred) {
      if (frall) {
        return pred(false) && pred(true);
      } else {
        return pred(false) || pred(true);
      }
    }
    public static bool QuantInt(BigInteger lo, BigInteger hi, bool frall, System.Predicate<BigInteger> pred) {
      for (BigInteger i = lo; i < hi; i++) {
        if (pred(i) != frall) { return !frall; }
      }
      return frall;
    }
    public static bool QuantSet<U>(Dafny.Set<U> set, bool frall, System.Predicate<U> pred) {
      foreach (var u in set.Elements) {
        if (pred(u) != frall) { return !frall; }
      }
      return frall;
    }
    public static bool QuantSeq<U>(Dafny.Sequence<U> seq, bool frall, System.Predicate<U> pred) {
      foreach (var u in seq.Elements) {
        if (pred(u) != frall) { return !frall; }
      }
      return frall;
    }
    // Enumerating other collections
    public delegate Dafny.Set<T> ComprehensionDelegate<T>();
    public static IEnumerable<bool> AllBooleans {
      get {
        yield return false;
        yield return true;
      }
    }
    // pre: b != 0
    // post: result == a/b, as defined by Euclidean Division (http://en.wikipedia.org/wiki/Modulo_operation)
    public static BigInteger EuclideanDivision(BigInteger a, BigInteger b) {
      if (0 <= a.Sign) {
        if (0 <= b.Sign) {
          // +a +b: a/b
          return BigInteger.Divide(a, b);
        } else {
          // +a -b: -(a/(-b))
          return BigInteger.Negate(BigInteger.Divide(a, BigInteger.Negate(b)));
        }
      } else {
        if (0 <= b.Sign) {
          // -a +b: -((-a-1)/b) - 1
          return BigInteger.Negate(BigInteger.Divide(BigInteger.Negate(a) - 1, b)) - 1;
        } else {
          // -a -b: ((-a-1)/(-b)) + 1
          return BigInteger.Divide(BigInteger.Negate(a) - 1, BigInteger.Negate(b)) + 1;
        }
      }
    }
    // pre: b != 0
    // post: result == a%b, as defined by Euclidean Division (http://en.wikipedia.org/wiki/Modulo_operation)
    public static BigInteger EuclideanModulus(BigInteger a, BigInteger b) {
      var bp = BigInteger.Abs(b);
      if (0 <= a.Sign) {
        // +a: a % b'
        return BigInteger.Remainder(a, bp);
      } else {
        // c = ((-a) % b')
        // -a: b' - c if c > 0
        // -a: 0 if c == 0
        var c = BigInteger.Remainder(BigInteger.Negate(a), bp);
        return c.IsZero ? c : BigInteger.Subtract(bp, c);
      }
    }
    public static Sequence<T> SeqFromArray<T>(T[] array) {
      return new Sequence<T>(array);
    }
  }
}
namespace Dafny {
  public partial class Helpers {
      public static T[] InitNewArray1<T>(BigInteger size0) {
        int s0 = (int)size0;
        T[] a = new T[s0];
        BigInteger[] b = a as BigInteger[];
        if (b != null) {
          BigInteger z = new BigInteger(0);
          for (int i0 = 0; i0 < s0; i0++)
            b[i0] = z;
        }
        return a;
      }
  }
}

public class @Node {
  public @Node @left = null;
  public @Node @right = null;
  public @Node @parent = null;
  public Dafny.Set<@Node> @anc = Dafny.Set<@Node>.Empty;
  public Dafny.Set<@Node> @desc = Dafny.Set<@Node>.Empty;
  public bool @sense = false;
  public BigInteger @pc = new BigInteger(0);
  public void @barrier(BigInteger @N)
  {
    BigInteger @z = new BigInteger(0);
    @z = @N;
    (this).@pc = new BigInteger(1);
    if (((this).@left) != (null))
    {
      while ((!(((this).@left).@sense)) && ((new BigInteger(0)) < (@z)))
      {
        @z = (@z) - (new BigInteger(1));
      }
    }
    if (((this).@right) != (null))
    {
      while ((!(((this).@right).@sense)) && ((new BigInteger(0)) < (@z)))
      {
        @z = (@z) - (new BigInteger(1));
      }
    }
    (this).@pc = new BigInteger(2);
    if (((this).@parent) != (null))
    {
      (this).@sense = true;
    }
    (this).@pc = new BigInteger(3);
    while (((this).@sense) && ((new BigInteger(0)) < (@z)))
    {
      @z = (@z) - (new BigInteger(1));
    }
    (this).@pc = new BigInteger(4);
    if (((this).@left) != (null))
    {
      ((this).@left).@sense = false;
    }
    (this).@pc = new BigInteger(5);
    if (((this).@right) != (null))
    {
      ((this).@right).@sense = false;
    }
    (this).@pc = new BigInteger(6);
  }
}

public class @_default {
}
