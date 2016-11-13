//////////////////////////////
type Integer = int;
type Boolean = bool;

//////////////////////////////
type FieldId T;
type Location;

type Heap = <T>[Location, FieldId T]T;
var heap : Heap;

//////////////////////////
const null : Location;
axiom ( forall<T> f : FieldId T, x : T, h : Heap :: (h[null,f] != x));
 
//////////////////////////
const Node.value : FieldId Integer;
const Node.next  : FieldId Location;

function Node(h : Heap,n : Location) 
	returns ( Boolean ) {
		(exists v : Integer, next : Location :: 
			(
				(h[n,Node.value] == v) 
					&& 
				(h[n,Node.next] == next )
			)
		) 
	}

axiom (  
		forall h : Heap, n : Location :: (
			Node(h,n) 
				==> 
			(
				(h[n,Node.next] == null) 
					|| 
				Node(h,h[n,Node.next])
			)
		)
	);

//////////////////////////
//////////////////////////
procedure BubbleSort( head : Location ) returns ( p : Location, result : int )
modifies heap;

requires head != null;
requires Node(heap,head);

ensures  (result>=7);
ensures  (p == null || Node(heap,p));
{
	var n,n2 : Location;
	
	n := head;
	
	result := 7;
	p := null;

	while (n!=null && heap[n,Node.value]>5)
		invariant (Node(heap,n) || (n==null));
		invariant (p==null || Node(heap,p) );
		invariant (result >= 7);
	{
		n := heap[n,Node.next];
		n2 := n;
		while (n2!=null && heap[n2,Node.value]<5)
			invariant (Node(heap,n2) || (n2==null));
			invariant (result>=7);
		{
			n2 := heap[n2,Node.next];
			if (heap[n2,Node.value]>result){
				result := heap[n2,Node.value];
			}
		}
		p := n2;
	}
}
