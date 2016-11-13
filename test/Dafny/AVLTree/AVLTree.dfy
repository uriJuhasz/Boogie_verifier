
class AVLTree
{
   var root: Node;
   ghost var Contents: set<int>;
   ghost var Repr: set<Node>;
   method Init(v: int)
      modifies this;
      ensures Valid();
   {
      root := new Node;
      root.Init(v);
      this.Contents := root.Contents;
      this.Repr := root.Repr;
   }
   function Valid(): bool
      reads this, Repr;
   {
      root != null &&
      root in Repr &&
      Repr == root.Repr &&
      Contents == root.Contents &&
      Node.Valid(root) && Node.BalanceValid(root) && Node.Balanced(root)
   }
   method Find(key: int) returns (b: bool)
      requires Valid();
      ensures key in Contents <==> b;
   {
      var t := root;
      while (true)
         decreases t.Repr;
         invariant t != null && Node.Valid(t);
         invariant key !in Contents - t.Contents;
         invariant t.Contents <= root.Contents;
      {
         if (t.value == key)
         {
            assert t.value in t.Contents;
            b := true;
            return;
         }
         else if (t.value < key)
         {
            t := t.right;
         }
         else 
         {
            t := t.left;
         }
         if (t == null)
         {
            b := false;
            return;
         }
      }
   }
   method Insert(key: int)
      requires Valid();
      modifies this, Repr;
      ensures Contents == old(Contents) + {key};
      ensures Valid();
   {
      var dummy;
      root, dummy := InsertRecursion(root, key);
      Contents := root.Contents;
      Repr := root.Repr;
   }
   method InsertRecursion(t: Node, key: int) returns (r: Node, deltaH: int)
      requires Node.Valid(t) && Node.BalanceValid(t) && Node.Balanced(t);
      
      modifies t.Repr;
      decreases if t != null then t.Repr else {};

      ensures r != null && ((t != null && r in old(t.Repr)) || fresh(r));
      ensures t != null ==> fresh(r.Repr - old(t.Repr)) && r.Contents == old(t.Contents) + {key};
      ensures t == null ==> fresh(r.Repr) && r.Contents == {key};
      ensures Node.Valid(r) && Node.BalanceValid(r) && Node.Balanced(r);
      ensures Node.Height(r) - old(Node.Height(t)) == deltaH && (deltaH == 0 || deltaH == 1);
      ensures t != null && deltaH == 1 ==> r.balance != 0;
   {
      if (t == null)
      {
         r := new Node.Init(key);
         deltaH := 1;
         return;
      }
      else
      {
         r := t;
         var d;
         if (key < t.value)
         {
            assert Node.Valid(t.left);
            t.left, d := InsertRecursion(t.left, key);
            t.Repr := {t} + t.left.Repr + if t.right != null then t.right.Repr else {};
            t.Contents := t.Contents + {key};
			assert Node.Valid(t);
            if (d == 0)  //nothing more to do.
            {
			   assert Node.Height(t.left) == old(Node.Height(t.left));
			   return r, 0;
            }
			//assert Node.Height(t.left) == old(Node.Height(t.left)) + 1;
            deltaH := if t.balance == 0 then 1 else 0; // height increases if balanced before, and insertion goes to that side
            t.balance := t.balance - 1;
            assert Node.BalanceValid(t);
		    if (t.balance == -2) // inserted into an already heavy side.
            {
               assert Node.Balanced(t.left);
               if (t.left.balance == 1)
               {
                  t.left := Node.WeakLeftRotation(t.left);
               }
               r := Node.StrongRightRotation(t);
               return;
            }
			else
			{
               assert Node.Balanced(t);
               return;
			}
         }
         else if (t.value < key)
         {
            assert Node.Valid(t.right);
            t.right, d := InsertRecursion(t.right, key);
            t.Repr := {t} + t.right.Repr + if t.left != null then t.left.Repr else {};
            t.Contents := t.Contents + {key};
            assert Node.Valid(t);
            if (d == 0)  //nothing more to do.
            {
               deltaH := 0;
               return;
            }
            // we know that the height has increased.
            deltaH := if t.balance == 0 then 1 else 0; // height increases if balanced before, and insertion goes to that side
            t.balance := t.balance + d;
            assert Node.BalanceValid(t);
        
            if (t.balance == 2) // inserted into an already heavy side.
            {
               assert Node.Balanced(t.right);
               if (t.right.balance == -1)
               {
                  t.right := Node.WeakRightRotation(t.right);
               }
               r := Node.StrongLeftRotation(t);
               return;
            }
            assert Node.Balanced(t);
            return;
         }
         else
         {
            assert key == t.value;
            deltaH := 0;
            return;
         }
      }
   }
}


class Node
{
   var value: int;
   var balance: int;
   var left: Node, right: Node;
   ghost var Contents: set<int>;
   ghost var Repr: set<Node>;

   method Init(v: int)
      modifies this;
      ensures Valid(this) && BalanceValid(this) && Balanced(this);
      ensures left == null && right == null;
      ensures Contents == {v};
   {
      Repr := {this};
      Contents := {v};
      left := null;
      right := null;
      value := v;
      balance := 0;
   }
   static function Balanced(n: Node): bool
      reads n, n.Repr;
      requires Valid(n) && BalanceValid(n);
      decreases if n != null then n.Repr else {};
   {
      n != null ==> n.balance in {-1, 0, 1} && Balanced(n.right) && Balanced(n.left)
   }
   static function BalanceValid(n: Node): bool
      decreases if n != null then n.Repr else {};
      reads n, n.Repr;
      requires Valid(n);
   {
      n != null ==>
      (
         n.balance == Height(n.right) - Height(n.left) &&
         (n.left != null ==> BalanceValid(n.left)) &&
         (n.right != null ==> BalanceValid(n.right))
      )
   }
   static function Height(n: Node): nat
      decreases if n != null then n.Repr else {};
      reads n.Repr;
      requires Valid(n);
   {
      if n == null then 0 else (Math.max(Height(n.left), Height(n.right)) + 1)
   }
   static function Valid(n: Node): bool
      decreases if n != null then n.Repr else {};
      reads n, n.Repr;
   {
      n != null ==> 
      (
         (n in n.Repr) && (null !in n.Repr) &&
         (n.left != null ==> n.left in n.Repr && n !in n.left.Repr && n.left.Repr <= n.Repr) &&
         (n.right != null ==> n.right in n.Repr && n !in n.right.Repr && n.right.Repr <= n.Repr) &&
         (Valid(n.left) && Valid(n.right)) &&
         (n.right != null && n.left != null ==> n.left.Repr !! n.right.Repr) &&
         (n.Repr == {n} +
                      (if n.left != null then n.left.Repr else {}) +
                      (if n.right != null then n.right.Repr else {})) &&
         (n.Contents == {n.value} +
                      (if n.left != null then n.left.Contents else {}) +
                      (if n.right != null then n.right.Contents else {})) &&
         (n.left != null ==> forall i :: i in n.left.Contents ==> i < n.value) &&
         (n.right != null ==> forall i :: i in n.right.Contents ==> n.value < i)
      )
   }
   static method WeakRightRotation(n: Node) returns (r: Node)
      requires n != null && n.left != null;
      requires Valid(n) && BalanceValid(n) && Balanced(n);
      requires n.balance == -1; // must be slightly left heavy

      modifies n, n.left;
      
      ensures r == old(n.left) && r.Contents == old(n.Contents) && r.Repr == old(n.Repr);

      ensures Valid(r) && BalanceValid(r);
      ensures Balanced(r.left) && Balanced(r.right); // balanced except for r.
      
      ensures Height(r) == old(Height(n)); // height doesn't change.
      ensures r.balance == 1 || r.balance == 2;
   {
      r := n.left;
      assert n.Contents == r.Contents + {n.value} + (if n.right != null then n.right.Contents else {});
      var a, b, c := r.left, r.right, n.right;
      AssembleSingle(b, c, n, if r.balance == -1 then 1 else 0);
      AssembleSingle(a, n, r, if r.balance == 1 then 2 else 1);
   }
   
   static method WeakLeftRotation(n: Node) returns (r: Node)
      requires n != null && n.right != null;
      requires Valid(n) && BalanceValid(n) && Balanced(n);
      requires n.balance == 1; // must be slightly right heavy

      modifies n, n.right;
      
      ensures r == old(n.right) && r.Contents == old(n.Contents) && r.Repr == old(n.Repr);

      ensures Valid(r) && BalanceValid(r);
      ensures Balanced(r.left) && Balanced(r.right); // balanced except for r.
      
      ensures Height(r) == old(Height(n)); // height doesn't change.
      ensures r.balance == -1 || r.balance == -2;
   {
      r := n.right;
      assert n.Contents == r.Contents + {n.value} + (if n.left != null then n.left.Contents else {});
      var a, b, c := n.left, r.left, r.right;
      AssembleSingle(a, b, n, if r.balance == 1 then -1 else 0);
      AssembleSingle(n, c, r, if r.balance == -1 then -2 else -1);
   }
   static method StrongRightRotation(n: Node) returns (r: Node)
      requires n != null && n.left != null;
      requires Valid(n) && BalanceValid(n);
      requires n.balance == -2; // must be strongly left heavy
      requires n.left.balance == -1 || n.left.balance == -2; // left child must be left heavy as well.
      requires BalanceValid(n.left) && Balanced(n.left.right) && Balanced(n.left.left) && Balanced(n.right);

      modifies n, n.left;

      ensures r == old(n.left) && r.Contents == old(n.Contents) && r.Repr == old(n.Repr);

      ensures Valid(r) && BalanceValid(r) && Balanced(r);
      ensures Height(r) + 1 == old(Height(n)); // height decreases by one.
      ensures r.balance == 0; // now totally balanced.
   {
      r := n.left;
      assert n.Contents == r.Contents + {n.value} + (if n.right != null then n.right.Contents else {});
      var a, b, c := r.left, r.right, n.right;
      AssembleSingle(b, c, n, if r.balance == -2 then 1 else 0);
      AssembleSingle(a, n, r, 0);
   }
   static method StrongLeftRotation(n: Node) returns (r: Node)
      requires n != null && n.right != null;
      requires Valid(n) && BalanceValid(n);
      requires n.balance == 2; // must be strongly right heavy
      requires n.right.balance == 1 || n.right.balance == 2; // right child must be right heavy as well.
      requires BalanceValid(n.right) && Balanced(n.right.right) && Balanced(n.right.left) && Balanced(n.left);

      modifies n, n.right;

      ensures r == old(n.right) && r.Contents == old(n.Contents) && r.Repr == old(n.Repr);

      ensures Valid(r) && BalanceValid(r) && Balanced(r);
      ensures Height(r) + 1 == old(Height(n)); // height decreases by one.
      ensures r.balance == 0; // now totally balanced.
   {
      r := n.right;
      assert n.Contents == r.Contents + {n.value} + (if n.left != null then n.left.Contents else {});
      var a, b, c := n.left, r.left, r.right;
      AssembleSingle(a, b, n, if r.balance == 2 then -1 else 0);
      AssembleSingle(n, c, r, 0);
   }
   static method AssembleSingle(a: Node, b: Node, x: Node, d: int)
      requires x != null;
      requires Valid(a) && Valid(b);
      requires BalanceValid(a) && BalanceValid(b);
      requires Balanced(a) && Balanced(b);
      
      requires a != null && b != null ==> a.Repr !! b.Repr;
      
      requires a != null ==> forall i :: i in a.Contents ==> i < x.value;
      requires b != null ==> forall i :: i in b.Contents ==> x.value < i;
      
      requires a != null ==> x !in a.Repr;
      requires b != null ==> x !in b.Repr;
      
      requires d == Height(b) - Height(a);

      modifies x;

      ensures Valid(x) && BalanceValid(x);
      ensures x.balance == d;
      ensures x.value == old(x.value) && x.left == a && x.right == b;
      ensures x.Repr == {x} + (if a != null then a.Repr else {}) + (if b != null then b.Repr else {});
      ensures x.Contents == {x.value} + (if a != null then a.Contents else {}) + (if b != null then b.Contents else {});
      
   {
      x.left := a;
      x.right := b;
      x.Contents := {x.value} + (if x.left != null then x.left.Contents else {})
                              + (if x.right != null then x.right.Contents else {});
      x.Repr := {x} + (if x.left != null then x.left.Repr else {})
                    + (if x.right != null then x.right.Repr else {});
      x.balance := d;
   }
}

class Math
{
   static function max(a: nat, b: nat): nat
      ensures a == b ==> max(a, b) == a == b;
      ensures a <= max(a, b) && b <= max(a, b);
   {
      if a < b then b else a
   }
}