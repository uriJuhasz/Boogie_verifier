type Integer = int;
type Boolean = bool;
type Set T = [T]bool;
type MultiSet T = [T]int;
type HeapType = <alpha>[ref,Field (alpha)]alpha;
type ref;
type Seq m0;
type BoxType;
type ClassName;
type DatatypeType;
type DtCtorId;
type Field m0;
type TickType;
const $$Language$Dafny : bool;
const null : ref;
const unique class.int : ClassName;
const unique class.bool : ClassName;
const unique class.set : ClassName;
const unique class.seq : ClassName;
const unique class.multiset : ClassName;
const $ModuleContextHeight : int;
const $FunctionContextHeight : int;
const $InMethodContext : bool;
const unique alloc : Field (bool);
const unique class.object : ClassName;
const unique class.array : ClassName;
const unique class.AVLTree : ClassName;
const unique AVLTree.root : Field (ref);
const unique AVLTree.Contents : Field (Set (BoxType) );
const unique AVLTree.Repr : Field (Set (BoxType) );
const unique class.Node : ClassName;
const unique Node.value : Field (int);
const unique Node.balance : Field (int);
const unique Node.left : Field (ref);
const unique Node.right : Field (ref);
const unique Node.Contents : Field (Set (BoxType) );
const unique Node.Repr : Field (Set (BoxType) );
const unique class.Math : ClassName;
const unique class._default : ClassName;
const $old_$Heap : HeapType;
const $old_$Tick : TickType;
function Set#Empty <T> () : Set (T) ;
function Set#Singleton <T> (T) : Set (T) ;
function Set#UnionOne <T> (Set (T) ,T) : Set (T) ;
function Set#Union <T> (Set (T) ,Set (T) ) : Set (T) ;
function Set#Intersection <T> (Set (T) ,Set (T) ) : Set (T) ;
function Set#Difference <T> (Set (T) ,Set (T) ) : Set (T) ;
function Set#Subset <T> (Set (T) ,Set (T) ) : bool;
function Set#Equal <T> (Set (T) ,Set (T) ) : bool;
function Set#Disjoint <T> (Set (T) ,Set (T) ) : bool;
function Set#Choose <T> (Set (T) ,TickType) : T;
function Math#min(int,int) : int;
function Math#clip(int) : int;
function $IsGoodMultiSet <T> (MultiSet (T) ) : bool;
function MultiSet#Empty <T> () : MultiSet (T) ;
function MultiSet#Singleton <T> (T) : MultiSet (T) ;
function MultiSet#UnionOne <T> (MultiSet (T) ,T) : MultiSet (T) ;
function MultiSet#Union <T> (MultiSet (T) ,MultiSet (T) ) : MultiSet (T) ;
function MultiSet#Intersection <T> (MultiSet (T) ,MultiSet (T) ) : MultiSet (T) ;
function MultiSet#Difference <T> (MultiSet (T) ,MultiSet (T) ) : MultiSet (T) ;
function MultiSet#Subset <T> (MultiSet (T) ,MultiSet (T) ) : bool;
function MultiSet#Equal <T> (MultiSet (T) ,MultiSet (T) ) : bool;
function MultiSet#Disjoint <T> (MultiSet (T) ,MultiSet (T) ) : bool;
function MultiSet#FromSet <T> (Set (T) ) : MultiSet (T) ;
function MultiSet#FromSeq <T> (Seq (T)) : MultiSet (T) ;
function Seq#Length <T> (Seq (T)) : int;
function Seq#Empty <T> () : Seq (T);
function Seq#Singleton <T> (T) : Seq (T);
function Seq#Build <T> (Seq (T),int,T,int) : Seq (T);
function Seq#Append <T> (Seq (T),Seq (T)) : Seq (T);
function Seq#Index <T> (Seq (T),int) : T;
function Seq#Update <T> (Seq (T),int,T) : Seq (T);
function Seq#Contains <T> (Seq (T),T) : bool;
function Seq#Equal <T> (Seq (T),Seq (T)) : bool;
function Seq#SameUntil <T> (Seq (T),Seq (T),int) : bool;
function Seq#Take <T> (Seq (T),int) : Seq (T);
function Seq#Drop <T> (Seq (T),int) : Seq (T);
function Seq#FromArray(HeapType,ref) : Seq (BoxType);
function $Box <T> (T) : BoxType;
function $Unbox <T> (BoxType) : T;
function $IsCanonicalBoolBox(BoxType) : bool;
function dtype(ref) : ClassName;
function TypeParams(ref,int) : ClassName;
function TypeTuple(ClassName,ClassName) : ClassName;
function TypeTupleCar(ClassName) : ClassName;
function TypeTupleCdr(ClassName) : ClassName;
function DtType(DatatypeType) : ClassName;
function DtTypeParams(DatatypeType,int) : ClassName;
function DatatypeCtorId(DatatypeType) : DtCtorId;
function DtRank(DatatypeType) : int;
function FDim <T> (Field (T)) : int;
function IndexField(int) : Field (BoxType);
function IndexField_Inverse <T> (Field (T)) : int;
function MultiIndexField(Field (BoxType),int) : Field (BoxType);
function MultiIndexField_Inverse0 <T> (Field (T)) : Field (T);
function MultiIndexField_Inverse1 <T> (Field (T)) : int;
function DeclType <T> (Field (T)) : ClassName;
function DtAlloc(DatatypeType,HeapType) : bool;
function GenericAlloc(BoxType,HeapType) : bool;
function array.Length(ref) : int;
function {:inline  true} read <alpha> (H:HeapType,r:ref,f:Field (alpha)) : alpha {H[r,f]}
function {:inline  true} update <alpha> (H_$0:HeapType,r_$0:ref,f_$0:Field (alpha),v:alpha) : HeapType {H_$0[r_$0,f_$0 := v]}
function $IsGoodHeap(HeapType) : bool;
function $HeapSucc(HeapType,HeapType) : bool;
function AVLTree.Valid(HeapType,ref) : bool;
function AVLTree.Valid#canCall(HeapType,ref) : bool;
function Node.Balanced(HeapType,ref) : bool;
function Node.Balanced#limited(HeapType,ref) : bool;
function Node.Balanced#2(HeapType,ref) : bool;
function Node.Balanced#canCall(HeapType,ref) : bool;
function Node.BalanceValid(HeapType,ref) : bool;
function Node.BalanceValid#limited(HeapType,ref) : bool;
function Node.BalanceValid#2(HeapType,ref) : bool;
function Node.BalanceValid#canCall(HeapType,ref) : bool;
function Node.Height(HeapType,ref) : int;
function Node.Height#limited(HeapType,ref) : int;
function Node.Height#2(HeapType,ref) : int;
function Node.Height#canCall(HeapType,ref) : bool;
function Node.Valid(HeapType,ref) : bool;
function Node.Valid#limited(HeapType,ref) : bool;
function Node.Valid#2(HeapType,ref) : bool;
function Node.Valid#canCall(HeapType,ref) : bool;
function Math.max(HeapType,int,int) : int;
function Math.max#limited(HeapType,int,int) : int;
function Math.max#2(HeapType,int,int) : int;
function Math.max#canCall(HeapType,int,int) : bool;
function lambda#0(ref,ref,HeapType,Field (bool)) : <alpha>[ref,Field (alpha)]bool;
function lambda#1(ref,ref,HeapType,Field (bool)) : <alpha>[ref,Field (alpha)]bool;
function lambda#2(Field (Set (BoxType) ),ref,HeapType,Field (bool),ref) : <alpha>[ref,Field (alpha)]bool;
function lambda#3(Field (bool),ref,HeapType) : <alpha>[ref,Field (alpha)]bool;
function lambda#4(Field (bool),ref,HeapType) : <alpha>[ref,Field (alpha)]bool;
function lambda#5(Field (Set (BoxType) ),ref,HeapType,Field (bool),ref) : <alpha>[ref,Field (alpha)]bool;
function lambda#6(Field (Set (BoxType) ),ref,HeapType,Field (bool),ref) : <alpha>[ref,Field (alpha)]bool;
function lambda#7(Field (Set (BoxType) ),ref,HeapType,Field (bool),ref) : <alpha>[ref,Field (alpha)]bool;
function lambda#8(Field (Set (BoxType) ),ref,HeapType,Field (bool),ref) : <alpha>[ref,Field (alpha)]bool;
function lambda#9(ref,ref,HeapType,Field (bool)) : <alpha>[ref,Field (alpha)]bool;
function lambda#10(ref,ref,HeapType,Field (bool)) : <alpha>[ref,Field (alpha)]bool;
function lambda#11(Field (Set (BoxType) ),ref,HeapType,Field (bool),ref) : <alpha>[ref,Field (alpha)]bool;
function lambda#12(Field (Set (BoxType) ),ref,HeapType,Field (bool),ref) : <alpha>[ref,Field (alpha)]bool;
function lambda#13(Field (Set (BoxType) ),ref,HeapType,Field (bool),ref) : <alpha>[ref,Field (alpha)]bool;
function lambda#14(Field (Set (BoxType) ),ref,HeapType,Field (bool),ref) : <alpha>[ref,Field (alpha)]bool;
function lambda#15(Field (ref),ref,HeapType,Field (bool),ref) : <alpha>[ref,Field (alpha)]bool;
function lambda#16(Field (ref),ref,HeapType,Field (bool),ref) : <alpha>[ref,Field (alpha)]bool;
function lambda#17(Field (ref),ref,HeapType,Field (bool),ref) : <alpha>[ref,Field (alpha)]bool;
function lambda#18(Field (ref),ref,HeapType,Field (bool),ref) : <alpha>[ref,Field (alpha)]bool;
function lambda#19(Field (ref),ref,HeapType,Field (bool),ref) : <alpha>[ref,Field (alpha)]bool;
function lambda#20(Field (ref),ref,HeapType,Field (bool),ref) : <alpha>[ref,Field (alpha)]bool;
function lambda#21(Field (ref),ref,HeapType,Field (bool),ref) : <alpha>[ref,Field (alpha)]bool;
function lambda#22(Field (ref),ref,HeapType,Field (bool),ref) : <alpha>[ref,Field (alpha)]bool;
function lambda#23(ref,ref,HeapType,Field (bool)) : <alpha>[ref,Field (alpha)]bool;
function lambda#24(ref,ref,HeapType,Field (bool)) : <alpha>[ref,Field (alpha)]bool;
function lambda#25(Field (bool),ref,HeapType) : <alpha>[ref,Field (alpha)]bool;
var $Heap : HeapType;
var $Tick : TickType;
procedure CheckWellformed$$AVLTree.InsertRecursion (this : ref,t#6 : ref,key#7 : int) returns (r#8 : ref,deltaH#9 : int)
{
	var $_Frame : <beta>[ref,Field (beta)]bool;
	var n#53 : ref;
	var n#54 : ref;
	var n#55 : ref;
	var n#56 : ref;
	var n#57 : ref;
	var n#58 : ref;
	var n#59 : ref;
	var n#60 : ref;
	var $_Frame_$_0 : <beta>[ref,Field (beta)]bool;
	var $Heap_$_0 : HeapType;
	var r#8_$_0 : ref;
	var deltaH#9_$_0 : int;
	var $_$_condition : bool;
	var $_$_condition_$0 : bool;
	var $_$_condition_$1 : bool;
	var $_$_condition_$2 : bool;
	var $_$_condition_$3 : bool;
	var $_$_condition_$4 : bool;
	var $_$_condition_$5 : bool;
	var $_$_condition_$6 : bool;
	var $_$_condition_$7 : bool;
	var $_$_condition_$8 : bool;
	var $_$_condition_$9 : bool;
	var $_$_condition_$10 : bool;
	var $_$_condition_$11 : bool;
	var $_$_condition_$12 : bool;
	var $_$_condition_$13 : bool;
	var $_$_condition_$14 : bool;
	var $_$_condition_$15 : bool;
	var $_$_condition_$16 : bool;
	var $_$_condition_$17 : bool;
	var $_$_condition_$18 : bool;
$start:
	assume $$Language$Dafny;
	assume (forall<T> o : T :: {(Set#Empty() : Set (T) )[o]} ( !(Set#Empty() : Set (T) )[o] ));
	assume (forall<T> r_$1 : T :: {Set#Singleton(r_$1)} ( Set#Singleton(r_$1)[r_$1] ));
	assume (forall<T> r_$2 : T, o_$0 : T :: {Set#Singleton(r_$2)[o_$0]} ( Set#Singleton(r_$2)[o_$0] <==> (r_$2 == o_$0) ));
	assume (forall<T> a : Set (T) , x : T, o_$1 : T :: {Set#UnionOne(a,x)[o_$1]} ( Set#UnionOne(a,x)[o_$1] <==> ((o_$1 == x) || a[o_$1]) ));
	assume (forall<T> a_$0 : Set (T) , x_$0 : T :: {Set#UnionOne(a_$0,x_$0)} ( Set#UnionOne(a_$0,x_$0)[x_$0] ));
	assume (forall<T> a_$1 : Set (T) , x_$1 : T, y : T :: {Set#UnionOne(a_$1,x_$1),a_$1[y]} ( a_$1[y] ==> Set#UnionOne(a_$1,x_$1)[y] ));
	assume (forall<T> a_$2 : Set (T) , b : Set (T) , o_$2 : T :: {Set#Union(a_$2,b)[o_$2]} ( Set#Union(a_$2,b)[o_$2] <==> (a_$2[o_$2] || b[o_$2]) ));
	assume (forall<T> a_$3 : Set (T) , b_$0 : Set (T) , y_$0 : T :: {Set#Union(a_$3,b_$0),a_$3[y_$0]} ( a_$3[y_$0] ==> Set#Union(a_$3,b_$0)[y_$0] ));
	assume (forall<T> a_$4 : Set (T) , b_$1 : Set (T) , y_$1 : T :: {Set#Union(a_$4,b_$1),b_$1[y_$1]} ( b_$1[y_$1] ==> Set#Union(a_$4,b_$1)[y_$1] ));
	assume (forall<T> a_$5 : Set (T) , b_$2 : Set (T)  :: {Set#Union(a_$5,b_$2)} ( Set#Disjoint(a_$5,b_$2) ==> ((Set#Difference(Set#Union(a_$5,b_$2),a_$5) == b_$2) && (Set#Difference(Set#Union(a_$5,b_$2),b_$2) == a_$5)) ));
	assume (forall<T> a_$6 : Set (T) , b_$3 : Set (T) , o_$3 : T :: {Set#Intersection(a_$6,b_$3)[o_$3]} ( Set#Intersection(a_$6,b_$3)[o_$3] <==> (a_$6[o_$3] && b_$3[o_$3]) ));
	assume (forall<T> a_$7 : Set (T) , b_$4 : Set (T)  :: {Set#Union(Set#Union(a_$7,b_$4),b_$4)} ( Set#Union(Set#Union(a_$7,b_$4),b_$4) == Set#Union(a_$7,b_$4) ));
	assume (forall<T> a_$8 : Set (T) , b_$5 : Set (T)  :: {Set#Union(a_$8,Set#Union(a_$8,b_$5))} ( Set#Union(a_$8,Set#Union(a_$8,b_$5)) == Set#Union(a_$8,b_$5) ));
	assume (forall<T> a_$9 : Set (T) , b_$6 : Set (T)  :: {Set#Intersection(Set#Intersection(a_$9,b_$6),b_$6)} ( Set#Intersection(Set#Intersection(a_$9,b_$6),b_$6) == Set#Intersection(a_$9,b_$6) ));
	assume (forall<T> a_$10 : Set (T) , b_$7 : Set (T)  :: {Set#Intersection(a_$10,Set#Intersection(a_$10,b_$7))} ( Set#Intersection(a_$10,Set#Intersection(a_$10,b_$7)) == Set#Intersection(a_$10,b_$7) ));
	assume (forall<T> a_$11 : Set (T) , b_$8 : Set (T) , o_$4 : T :: {Set#Difference(a_$11,b_$8)[o_$4]} ( Set#Difference(a_$11,b_$8)[o_$4] <==> (a_$11[o_$4] && (!b_$8[o_$4])) ));
	assume (forall<T> a_$12 : Set (T) , b_$9 : Set (T) , y_$2 : T :: {Set#Difference(a_$12,b_$9),b_$9[y_$2]} ( b_$9[y_$2] ==> (!Set#Difference(a_$12,b_$9)[y_$2]) ));
	assume (forall<T> a_$13 : Set (T) , b_$10 : Set (T)  :: {Set#Subset(a_$13,b_$10)} ( Set#Subset(a_$13,b_$10) <==> ((forall  o_$5 : T :: {a_$13[o_$5]} {b_$10[o_$5]} ( a_$13[o_$5] ==> b_$10[o_$5] ))) ));
	assume (forall<T> a_$14 : Set (T) , b_$11 : Set (T)  :: {Set#Equal(a_$14,b_$11)} ( Set#Equal(a_$14,b_$11) <==> ((forall  o_$6 : T :: {a_$14[o_$6]} {b_$11[o_$6]} ( a_$14[o_$6] <==> b_$11[o_$6] ))) ));
	assume (forall<T> a_$15 : Set (T) , b_$12 : Set (T)  :: {Set#Equal(a_$15,b_$12)} ( Set#Equal(a_$15,b_$12) ==> (a_$15 == b_$12) ));
	assume (forall<T> a_$16 : Set (T) , b_$13 : Set (T)  :: {Set#Disjoint(a_$16,b_$13)} ( Set#Disjoint(a_$16,b_$13) <==> ((forall  o_$7 : T :: {a_$16[o_$7]} {b_$13[o_$7]} ( (!a_$16[o_$7]) || (!b_$13[o_$7]) ))) ));
	assume (forall<T> a_$17 : Set (T) , tick : TickType :: {Set#Choose(a_$17,tick)} ( (!(a_$17 == (Set#Empty() : Set (T) ))) ==> a_$17[Set#Choose(a_$17,tick)] ));
	assume (forall  a_$18 : Integer, b_$14 : Integer :: {Math#min(a_$18,b_$14)} ( (a_$18 <= b_$14) <==> (Math#min(a_$18,b_$14) == a_$18) ));
	assume (forall  a_$19 : Integer, b_$15 : Integer :: {Math#min(a_$19,b_$15)} ( (b_$15 <= a_$19) <==> (Math#min(a_$19,b_$15) == b_$15) ));
	assume (forall  a_$20 : Integer, b_$16 : Integer :: {Math#min(a_$20,b_$16)} ( (Math#min(a_$20,b_$16) == a_$20) || (Math#min(a_$20,b_$16) == b_$16) ));
	assume (forall  a_$21 : Integer :: {Math#clip(a_$21)} ( (0 <= a_$21) ==> (Math#clip(a_$21) == a_$21) ));
	assume (forall  a_$22 : Integer :: {Math#clip(a_$22)} ( (a_$22 < 0) ==> (Math#clip(a_$22) == 0) ));
	assume (forall<T> ms : MultiSet (T)  :: {$IsGoodMultiSet(ms)} ( $IsGoodMultiSet(ms) <==> ((forall  o_$8 : T :: {ms[o_$8]} ( 0 <= ms[o_$8] ))) ));
	assume (forall<T> o_$9 : T :: {(MultiSet#Empty() : MultiSet (T) )[o_$9]} ( (MultiSet#Empty() : MultiSet (T) )[o_$9] == 0 ));
	assume (forall<T> r_$3 : T :: {MultiSet#Singleton(r_$3)} ( MultiSet#Singleton(r_$3)[r_$3] == 1 ));
	assume (forall<T> r_$4 : T, o_$10 : T :: {MultiSet#Singleton(r_$4)[o_$10]} ( ((MultiSet#Singleton(r_$4)[o_$10] == 1) <==> (r_$4 == o_$10)) && ((MultiSet#Singleton(r_$4)[o_$10] == 0) <==> (!(r_$4 == o_$10))) ));
	assume (forall<T> a_$23 : MultiSet (T) , x_$2 : T, o_$11 : T :: {MultiSet#UnionOne(a_$23,x_$2)[o_$11]} ( (0 < MultiSet#UnionOne(a_$23,x_$2)[o_$11]) <==> ((o_$11 == x_$2) || (0 < a_$23[o_$11])) ));
	assume (forall<T> a_$24 : MultiSet (T) , x_$3 : T :: {MultiSet#UnionOne(a_$24,x_$3)} ( MultiSet#UnionOne(a_$24,x_$3)[x_$3] == (a_$24[x_$3] + 1) ));
	assume (forall<T> a_$25 : MultiSet (T) , x_$4 : T, y_$3 : T :: {MultiSet#UnionOne(a_$25,x_$4),a_$25[y_$3]} ( (0 < a_$25[y_$3]) ==> (0 < MultiSet#UnionOne(a_$25,x_$4)[y_$3]) ));
	assume (forall<T> a_$26 : MultiSet (T) , x_$5 : T, y_$4 : T :: {MultiSet#UnionOne(a_$26,x_$5),a_$26[y_$4]} ( (!(x_$5 == y_$4)) ==> (a_$26[y_$4] == MultiSet#UnionOne(a_$26,x_$5)[y_$4]) ));
	assume (forall<T> a_$27 : MultiSet (T) , b_$17 : MultiSet (T) , o_$12 : T :: {MultiSet#Union(a_$27,b_$17)[o_$12]} ( MultiSet#Union(a_$27,b_$17)[o_$12] == (a_$27[o_$12] + b_$17[o_$12]) ));
	assume (forall<T> a_$28 : MultiSet (T) , b_$18 : MultiSet (T) , y_$5 : T :: {MultiSet#Union(a_$28,b_$18),a_$28[y_$5]} ( (0 < a_$28[y_$5]) ==> (0 < MultiSet#Union(a_$28,b_$18)[y_$5]) ));
	assume (forall<T> a_$29 : MultiSet (T) , b_$19 : MultiSet (T) , y_$6 : T :: {MultiSet#Union(a_$29,b_$19),b_$19[y_$6]} ( (0 < b_$19[y_$6]) ==> (0 < MultiSet#Union(a_$29,b_$19)[y_$6]) ));
	assume (forall<T> a_$30 : MultiSet (T) , b_$20 : MultiSet (T)  :: {MultiSet#Union(a_$30,b_$20)} ( (MultiSet#Difference(MultiSet#Union(a_$30,b_$20),a_$30) == b_$20) && (MultiSet#Difference(MultiSet#Union(a_$30,b_$20),b_$20) == a_$30) ));
	assume (forall<T> a_$31 : MultiSet (T) , b_$21 : MultiSet (T) , o_$13 : T :: {MultiSet#Intersection(a_$31,b_$21)[o_$13]} ( MultiSet#Intersection(a_$31,b_$21)[o_$13] == Math#min(a_$31[o_$13],b_$21[o_$13]) ));
	assume (forall<T> a_$32 : MultiSet (T) , b_$22 : MultiSet (T)  :: {MultiSet#Intersection(MultiSet#Intersection(a_$32,b_$22),b_$22)} ( MultiSet#Intersection(MultiSet#Intersection(a_$32,b_$22),b_$22) == MultiSet#Intersection(a_$32,b_$22) ));
	assume (forall<T> a_$33 : MultiSet (T) , b_$23 : MultiSet (T)  :: {MultiSet#Intersection(a_$33,MultiSet#Intersection(a_$33,b_$23))} ( MultiSet#Intersection(a_$33,MultiSet#Intersection(a_$33,b_$23)) == MultiSet#Intersection(a_$33,b_$23) ));
	assume (forall<T> a_$34 : MultiSet (T) , b_$24 : MultiSet (T) , o_$14 : T :: {MultiSet#Difference(a_$34,b_$24)[o_$14]} ( MultiSet#Difference(a_$34,b_$24)[o_$14] == Math#clip(a_$34[o_$14] - b_$24[o_$14]) ));
	assume (forall<T> a_$35 : MultiSet (T) , b_$25 : MultiSet (T) , y_$7 : T :: {MultiSet#Difference(a_$35,b_$25),b_$25[y_$7],a_$35[y_$7]} ( (a_$35[y_$7] <= b_$25[y_$7]) ==> (MultiSet#Difference(a_$35,b_$25)[y_$7] == 0) ));
	assume (forall<T> a_$36 : MultiSet (T) , b_$26 : MultiSet (T)  :: {MultiSet#Subset(a_$36,b_$26)} ( MultiSet#Subset(a_$36,b_$26) <==> ((forall  o_$15 : T :: {a_$36[o_$15]} {b_$26[o_$15]} ( a_$36[o_$15] <= b_$26[o_$15] ))) ));
	assume (forall<T> a_$37 : MultiSet (T) , b_$27 : MultiSet (T)  :: {MultiSet#Equal(a_$37,b_$27)} ( MultiSet#Equal(a_$37,b_$27) <==> ((forall  o_$16 : T :: {a_$37[o_$16]} {b_$27[o_$16]} ( a_$37[o_$16] == b_$27[o_$16] ))) ));
	assume (forall<T> a_$38 : MultiSet (T) , b_$28 : MultiSet (T)  :: {MultiSet#Equal(a_$38,b_$28)} ( MultiSet#Equal(a_$38,b_$28) ==> (a_$38 == b_$28) ));
	assume (forall<T> a_$39 : MultiSet (T) , b_$29 : MultiSet (T)  :: {MultiSet#Disjoint(a_$39,b_$29)} ( MultiSet#Disjoint(a_$39,b_$29) <==> ((forall  o_$17 : T :: {a_$39[o_$17]} {b_$29[o_$17]} ( (a_$39[o_$17] == 0) || (b_$29[o_$17] == 0) ))) ));
	assume (forall<T> s : Set (T) , a_$40 : T :: {MultiSet#FromSet(s)[a_$40]} ( ((MultiSet#FromSet(s)[a_$40] == 0) <==> (!s[a_$40])) && ((MultiSet#FromSet(s)[a_$40] == 1) <==> s[a_$40]) ));
	assume (forall<T> s_$0 : Seq (T)  :: {Seq#Length(s_$0)} ( 0 <= Seq#Length(s_$0) ));
	assume (forall<T> :: Seq#Length((Seq#Empty() : Seq (T) )) == 0);
	assume (forall<T> s_$1 : Seq (T)  :: {Seq#Length(s_$1)} ( (Seq#Length(s_$1) == 0) ==> (s_$1 == (Seq#Empty() : Seq (T) )) ));
	assume (forall<T> t : T :: {Seq#Length(Seq#Singleton(t))} ( Seq#Length(Seq#Singleton(t)) == 1 ));
	assume (forall<T> s_$2 : Seq (T) , i : Integer, v_$0 : T, len : Integer :: {Seq#Length(Seq#Build(s_$2,i,v_$0,len))} ( (0 <= len) ==> (Seq#Length(Seq#Build(s_$2,i,v_$0,len)) == len) ));
	assume (forall<T> s0 : Seq (T) , s1 : Seq (T)  :: {Seq#Length(Seq#Append(s0,s1))} ( Seq#Length(Seq#Append(s0,s1)) == (Seq#Length(s0) + Seq#Length(s1)) ));
	assume (forall<T> t_$0 : T :: {Seq#Index(Seq#Singleton(t_$0),0)} ( Seq#Index(Seq#Singleton(t_$0),0) == t_$0 ));
	assume (forall<T> s0_$0 : Seq (T) , s1_$0 : Seq (T) , n : Integer :: {Seq#Index(Seq#Append(s0_$0,s1_$0),n)} ( ((n < Seq#Length(s0_$0)) ==> (Seq#Index(Seq#Append(s0_$0,s1_$0),n) == Seq#Index(s0_$0,n))) && ((Seq#Length(s0_$0) <= n) ==> (Seq#Index(Seq#Append(s0_$0,s1_$0),n) == Seq#Index(s1_$0,n - Seq#Length(s0_$0)))) ));
	assume (forall<T> s_$3 : Seq (T) , i_$0 : Integer, v_$1 : T, len_$0 : Integer, n_$0 : Integer :: {Seq#Index(Seq#Build(s_$3,i_$0,v_$1,len_$0),n_$0)} ( ((0 <= n_$0) && (n_$0 < len_$0)) ==> (((i_$0 == n_$0) ==> (Seq#Index(Seq#Build(s_$3,i_$0,v_$1,len_$0),n_$0) == v_$1)) && ((!(i_$0 == n_$0)) ==> (Seq#Index(Seq#Build(s_$3,i_$0,v_$1,len_$0),n_$0) == Seq#Index(s_$3,n_$0)))) ));
	assume (forall<T> s_$4 : Seq (T) , i_$1 : Integer, v_$2 : T :: {Seq#Length(Seq#Update(s_$4,i_$1,v_$2))} ( ((0 <= i_$1) && (i_$1 < Seq#Length(s_$4))) ==> (Seq#Length(Seq#Update(s_$4,i_$1,v_$2)) == Seq#Length(s_$4)) ));
	assume (forall<T> s_$5 : Seq (T) , i_$2 : Integer, v_$3 : T, n_$1 : Integer :: {Seq#Index(Seq#Update(s_$5,i_$2,v_$3),n_$1)} ( ((0 <= n_$1) && (n_$1 < Seq#Length(s_$5))) ==> (((i_$2 == n_$1) ==> (Seq#Index(Seq#Update(s_$5,i_$2,v_$3),n_$1) == v_$3)) && ((!(i_$2 == n_$1)) ==> (Seq#Index(Seq#Update(s_$5,i_$2,v_$3),n_$1) == Seq#Index(s_$5,n_$1)))) ));
	assume (forall<T> s_$6 : Seq (T) , x_$6 : T :: {Seq#Contains(s_$6,x_$6)} ( Seq#Contains(s_$6,x_$6) <==> ((exists  i_$3 : Integer :: {Seq#Index(s_$6,i_$3)} ( ((0 <= i_$3) && (i_$3 < Seq#Length(s_$6))) && (Seq#Index(s_$6,i_$3) == x_$6) ))) ));
	assume (forall  x_$7 : ref :: {Seq#Contains((Seq#Empty() : Seq (ref) ),x_$7)} ( !Seq#Contains((Seq#Empty() : Seq (ref) ),x_$7) ));
	assume (forall<T> s0_$1 : Seq (T) , s1_$1 : Seq (T) , x_$8 : T :: {Seq#Contains(Seq#Append(s0_$1,s1_$1),x_$8)} ( Seq#Contains(Seq#Append(s0_$1,s1_$1),x_$8) <==> (Seq#Contains(s0_$1,x_$8) || Seq#Contains(s1_$1,x_$8)) ));
	assume (forall<T> i_$4 : Integer, v_$4 : T, len_$1 : Integer, x_$9 : T :: {Seq#Contains(Seq#Build((Seq#Empty() : Seq (T) ),i_$4,v_$4,len_$1),x_$9)} ( ((0 <= i_$4) && (i_$4 < len_$1)) ==> (Seq#Contains(Seq#Build((Seq#Empty() : Seq (T) ),i_$4,v_$4,len_$1),x_$9) <==> (x_$9 == v_$4)) ));
	assume (forall<T> s_$7 : Seq (T) , i0 : Integer, v0 : T, len0 : Integer, i1 : Integer, v1 : T, len1 : Integer, x_$10 : T :: {Seq#Contains(Seq#Build(Seq#Build(s_$7,i0,v0,len0),i1,v1,len1),x_$10)} ( ((((0 <= i0) && (i0 < len0)) && (len0 <= i1)) && (i1 < len1)) ==> (Seq#Contains(Seq#Build(Seq#Build(s_$7,i0,v0,len0),i1,v1,len1),x_$10) <==> ((v1 == x_$10) || Seq#Contains(Seq#Build(s_$7,i0,v0,len0),x_$10))) ));
	assume (forall<T> s_$8 : Seq (T) , n_$2 : Integer, x_$11 : T :: {Seq#Contains(Seq#Take(s_$8,n_$2),x_$11)} ( Seq#Contains(Seq#Take(s_$8,n_$2),x_$11) <==> ((exists  i_$5 : Integer :: {Seq#Index(s_$8,i_$5)} ( (((0 <= i_$5) && (i_$5 < n_$2)) && (i_$5 < Seq#Length(s_$8))) && (Seq#Index(s_$8,i_$5) == x_$11) ))) ));
	assume (forall<T> s_$9 : Seq (T) , n_$3 : Integer, x_$12 : T :: {Seq#Contains(Seq#Drop(s_$9,n_$3),x_$12)} ( Seq#Contains(Seq#Drop(s_$9,n_$3),x_$12) <==> ((exists  i_$6 : Integer :: {Seq#Index(s_$9,i_$6)} ( (((0 <= n_$3) && (n_$3 <= i_$6)) && (i_$6 < Seq#Length(s_$9))) && (Seq#Index(s_$9,i_$6) == x_$12) ))) ));
	assume (forall<T> s0_$2 : Seq (T) , s1_$2 : Seq (T)  :: {Seq#Equal(s0_$2,s1_$2)} ( Seq#Equal(s0_$2,s1_$2) <==> ((Seq#Length(s0_$2) == Seq#Length(s1_$2)) && ((forall  j : Integer :: {Seq#Index(s0_$2,j)} {Seq#Index(s1_$2,j)} ( ((0 <= j) && (j < Seq#Length(s0_$2))) ==> (Seq#Index(s0_$2,j) == Seq#Index(s1_$2,j)) )))) ));
	assume (forall<T> a_$41 : Seq (T) , b_$30 : Seq (T)  :: {Seq#Equal(a_$41,b_$30)} ( Seq#Equal(a_$41,b_$30) ==> (a_$41 == b_$30) ));
	assume (forall<T> s0_$3 : Seq (T) , s1_$3 : Seq (T) , n_$4 : Integer :: {Seq#SameUntil(s0_$3,s1_$3,n_$4)} ( Seq#SameUntil(s0_$3,s1_$3,n_$4) <==> ((forall  j_$0 : Integer :: {Seq#Index(s0_$3,j_$0)} {Seq#Index(s1_$3,j_$0)} ( ((0 <= j_$0) && (j_$0 < n_$4)) ==> (Seq#Index(s0_$3,j_$0) == Seq#Index(s1_$3,j_$0)) ))) ));
	assume (forall<T> s_$10 : Seq (T) , n_$5 : Integer :: {Seq#Length(Seq#Take(s_$10,n_$5))} ( (0 <= n_$5) ==> (((n_$5 <= Seq#Length(s_$10)) ==> (Seq#Length(Seq#Take(s_$10,n_$5)) == n_$5)) && ((Seq#Length(s_$10) < n_$5) ==> (Seq#Length(Seq#Take(s_$10,n_$5)) == Seq#Length(s_$10)))) ));
	assume (forall<T> s_$11 : Seq (T) , n_$6 : Integer, j_$1 : Integer :: {Seq#Index(Seq#Take(s_$11,n_$6),j_$1)} {:weight  25}( (((0 <= j_$1) && (j_$1 < n_$6)) && (j_$1 < Seq#Length(s_$11))) ==> (Seq#Index(Seq#Take(s_$11,n_$6),j_$1) == Seq#Index(s_$11,j_$1)) ));
	assume (forall<T> s_$12 : Seq (T) , n_$7 : Integer :: {Seq#Length(Seq#Drop(s_$12,n_$7))} ( (0 <= n_$7) ==> (((n_$7 <= Seq#Length(s_$12)) ==> (Seq#Length(Seq#Drop(s_$12,n_$7)) == (Seq#Length(s_$12) - n_$7))) && ((Seq#Length(s_$12) < n_$7) ==> (Seq#Length(Seq#Drop(s_$12,n_$7)) == 0))) ));
	assume (forall<T> s_$13 : Seq (T) , n_$8 : Integer, j_$2 : Integer :: {Seq#Index(Seq#Drop(s_$13,n_$8),j_$2)} {:weight  25}( (((0 <= n_$8) && (0 <= j_$2)) && (j_$2 < (Seq#Length(s_$13) - n_$8))) ==> (Seq#Index(Seq#Drop(s_$13,n_$8),j_$2) == Seq#Index(s_$13,j_$2 + n_$8)) ));
	assume (forall<T> s_$14 : Seq (T) , t_$1 : Seq (T)  :: {Seq#Append(s_$14,t_$1)} ( (Seq#Take(Seq#Append(s_$14,t_$1),Seq#Length(s_$14)) == s_$14) && (Seq#Drop(Seq#Append(s_$14,t_$1),Seq#Length(s_$14)) == t_$1) ));
	assume (forall  h : HeapType, a_$42 : ref :: {Seq#Length(Seq#FromArray(h,a_$42))} ( Seq#Length(Seq#FromArray(h,a_$42)) == array.Length(a_$42) ));
	assume (forall  h_$0 : HeapType, a_$43 : ref, i_$7 : Integer :: ( ((0 <= i_$7) && (i_$7 < Seq#Length(Seq#FromArray(h_$0,a_$43)))) ==> (Seq#Index(Seq#FromArray(h_$0,a_$43),i_$7) == read(h_$0,a_$43,IndexField(i_$7))) ));
	assume (forall<T> x_$13 : T :: {$Box(x_$13)} ( ($Unbox($Box(x_$13)) : T) == x_$13 ));
	assume (forall  b_$31 : BoxType :: {($Unbox(b_$31) : Integer)} ( $Box(($Unbox(b_$31) : Integer)) == b_$31 ));
	assume (forall  b_$32 : BoxType :: {($Unbox(b_$32) : ref)} ( $Box(($Unbox(b_$32) : ref)) == b_$32 ));
	assume (forall  b_$33 : BoxType :: {($Unbox(b_$33) : [BoxType]Boolean)} ( $Box(($Unbox(b_$33) : [BoxType]Boolean)) == b_$33 ));
	assume (forall  b_$34 : BoxType :: {($Unbox(b_$34) : Seq (BoxType) )} ( $Box(($Unbox(b_$34) : Seq (BoxType) )) == b_$34 ));
	assume (forall  b_$35 : BoxType :: {($Unbox(b_$35) : DatatypeType)} ( $Box(($Unbox(b_$35) : DatatypeType)) == b_$35 ));
	assume $IsCanonicalBoolBox($Box(false)) && $IsCanonicalBoolBox($Box(true));
	assume (forall  b_$36 : BoxType :: {($Unbox(b_$36) : Boolean)} ( $IsCanonicalBoolBox(b_$36) ==> ($Box(($Unbox(b_$36) : Boolean)) == b_$36) ));
	assume (forall  a_$44 : ClassName, b_$37 : ClassName :: {TypeTuple(a_$44,b_$37)} ( (TypeTupleCar(TypeTuple(a_$44,b_$37)) == a_$44) && (TypeTupleCdr(TypeTuple(a_$44,b_$37)) == b_$37) ));
	assume (forall  i_$8 : Integer :: {IndexField(i_$8)} ( FDim(IndexField(i_$8)) == 1 ));
	assume (forall  i_$9 : Integer :: {IndexField(i_$9)} ( IndexField_Inverse(IndexField(i_$9)) == i_$9 ));
	assume (forall  f_$1 : Field (BoxType) , i_$10 : Integer :: {MultiIndexField(f_$1,i_$10)} ( FDim(MultiIndexField(f_$1,i_$10)) == (FDim(f_$1) + 1) ));
	assume (forall  f_$2 : Field (BoxType) , i_$11 : Integer :: {MultiIndexField(f_$2,i_$11)} ( (MultiIndexField_Inverse0(MultiIndexField(f_$2,i_$11)) == f_$2) && (MultiIndexField_Inverse1(MultiIndexField(f_$2,i_$11)) == i_$11) ));
	assume FDim(alloc) == 0;
	assume (forall  h_$1 : HeapType, k : HeapType, d : DatatypeType :: {$HeapSucc(h_$1,k),DtAlloc(d,h_$1)} {$HeapSucc(h_$1,k),DtAlloc(d,k)} ( $HeapSucc(h_$1,k) ==> (DtAlloc(d,h_$1) ==> DtAlloc(d,k)) ));
	assume (forall  h_$2 : HeapType, k_$0 : HeapType, d_$0 : BoxType :: {$HeapSucc(h_$2,k_$0),GenericAlloc(d_$0,h_$2)} {$HeapSucc(h_$2,k_$0),GenericAlloc(d_$0,k_$0)} ( $HeapSucc(h_$2,k_$0) ==> (GenericAlloc(d_$0,h_$2) ==> GenericAlloc(d_$0,k_$0)) ));
	assume (forall  b_$38 : BoxType, h_$3 : HeapType :: {GenericAlloc(b_$38,h_$3),h_$3[($Unbox(b_$38) : ref),alloc]} ( GenericAlloc(b_$38,h_$3) ==> ((($Unbox(b_$38) : ref) == null) || h_$3[($Unbox(b_$38) : ref),alloc]) ));
	assume (forall  b_$39 : BoxType, h_$4 : HeapType, i_$12 : Integer :: {GenericAlloc(b_$39,h_$4),Seq#Index(($Unbox(b_$39) : Seq (BoxType) ),i_$12)} ( ((GenericAlloc(b_$39,h_$4) && (0 <= i_$12)) && (i_$12 < Seq#Length(($Unbox(b_$39) : Seq (BoxType) )))) ==> GenericAlloc(Seq#Index(($Unbox(b_$39) : Seq (BoxType) ),i_$12),h_$4) ));
	assume (forall  b_$40 : BoxType, h_$5 : HeapType, t_$2 : BoxType :: {GenericAlloc(b_$40,h_$5),($Unbox(b_$40) : [BoxType]Boolean)[t_$2]} ( (GenericAlloc(b_$40,h_$5) && ($Unbox(b_$40) : [BoxType]Boolean)[t_$2]) ==> GenericAlloc(t_$2,h_$5) ));
	assume (forall  b_$41 : BoxType, h_$6 : HeapType :: {GenericAlloc(b_$41,h_$6),DtType(($Unbox(b_$41) : DatatypeType))} ( GenericAlloc(b_$41,h_$6) ==> DtAlloc(($Unbox(b_$41) : DatatypeType),h_$6) ));
	assume (forall  b_$42 : Boolean, h_$7 : HeapType :: ( $IsGoodHeap(h_$7) ==> GenericAlloc($Box(b_$42),h_$7) ));
	assume (forall  x_$14 : Integer, h_$8 : HeapType :: ( $IsGoodHeap(h_$8) ==> GenericAlloc($Box(x_$14),h_$8) ));
	assume (forall  r_$5 : ref, h_$9 : HeapType :: {GenericAlloc($Box(r_$5),h_$9)} ( ($IsGoodHeap(h_$9) && ((r_$5 == null) || h_$9[r_$5,alloc])) ==> GenericAlloc($Box(r_$5),h_$9) ));
	assume (forall  o_$18 : ref :: ( 0 <= array.Length(o_$18) ));
	assume (forall<alpha> f : Field (alpha) , r : ref, H : HeapType :: ( read(H,r,f) == H[r,f] ));
	assume (forall<alpha> v : alpha, f_$0 : Field (alpha) , r_$0 : ref, H_$0 : HeapType :: ( update(H_$0,r_$0,f_$0,v) == H_$0[r_$0,f_$0 := v] ));
	assume (forall<alpha> h_$10 : HeapType, r_$6 : ref, f_$3 : Field (alpha) , x_$15 : alpha :: {update(h_$10,r_$6,f_$3,x_$15)} ( $IsGoodHeap(update(h_$10,r_$6,f_$3,x_$15)) ==> $HeapSucc(h_$10,update(h_$10,r_$6,f_$3,x_$15)) ));
	assume (forall  h_$11 : HeapType, k_$1 : HeapType :: {$HeapSucc(h_$11,k_$1)} ( $HeapSucc(h_$11,k_$1) ==> ((forall  o_$19 : ref :: {read(k_$1,o_$19,alloc)} ( read(h_$11,o_$19,alloc) ==> read(k_$1,o_$19,alloc) ))) ));
	assume (FDim(AVLTree.root) == 0) && (DeclType(AVLTree.root) == class.AVLTree);
	assume (forall  $h : HeapType, $o : ref :: {read($h,$o,AVLTree.root)} ( (($IsGoodHeap($h) && (!($o == null))) && read($h,$o,alloc)) ==> ((read($h,$o,AVLTree.root) == null) || (read($h,read($h,$o,AVLTree.root),alloc) && (dtype(read($h,$o,AVLTree.root)) == class.Node))) ));
	assume (FDim(AVLTree.Contents) == 0) && (DeclType(AVLTree.Contents) == class.AVLTree);
	assume (FDim(AVLTree.Repr) == 0) && (DeclType(AVLTree.Repr) == class.AVLTree);
	assume (forall  $h_$0 : HeapType, $o_$0 : ref :: {read($h_$0,$o_$0,AVLTree.Repr)} ( (($IsGoodHeap($h_$0) && (!($o_$0 == null))) && read($h_$0,$o_$0,alloc)) ==> ((forall  $t#1 : BoxType :: {read($h_$0,$o_$0,AVLTree.Repr)[$t#1]} ( read($h_$0,$o_$0,AVLTree.Repr)[$t#1] ==> ((($Unbox($t#1) : ref) == null) || (read($h_$0,($Unbox($t#1) : ref),alloc) && (dtype(($Unbox($t#1) : ref)) == class.Node))) ))) ));
	assume (FDim(Node.Repr) == 0) && (DeclType(Node.Repr) == class.Node);
	assume (FDim(Node.Contents) == 0) && (DeclType(Node.Contents) == class.Node);
	assume ((0 < $ModuleContextHeight) || ((0 == $ModuleContextHeight) && ((7 <= $FunctionContextHeight) || $InMethodContext))) ==> ((forall  $Heap_$0 : HeapType, this_$0 : ref :: {AVLTree.Valid($Heap_$0,this_$0)} ( (AVLTree.Valid#canCall($Heap_$0,this_$0) || (((((((!(0 == $ModuleContextHeight)) || (!(7 == $FunctionContextHeight))) || $InMethodContext) && $IsGoodHeap($Heap_$0)) && (!(this_$0 == null))) && read($Heap_$0,this_$0,alloc)) && (dtype(this_$0) == class.AVLTree))) ==> ((((((((!(read($Heap_$0,this_$0,AVLTree.root) == null)) ==> true) && (((!(read($Heap_$0,this_$0,AVLTree.root) == null)) && read($Heap_$0,this_$0,AVLTree.Repr)[$Box(read($Heap_$0,this_$0,AVLTree.root))]) ==> true)) && ((((!(read($Heap_$0,this_$0,AVLTree.root) == null)) && read($Heap_$0,this_$0,AVLTree.Repr)[$Box(read($Heap_$0,this_$0,AVLTree.root))]) && Set#Equal(read($Heap_$0,this_$0,AVLTree.Repr),read($Heap_$0,read($Heap_$0,this_$0,AVLTree.root),Node.Repr))) ==> true)) && (((((!(read($Heap_$0,this_$0,AVLTree.root) == null)) && read($Heap_$0,this_$0,AVLTree.Repr)[$Box(read($Heap_$0,this_$0,AVLTree.root))]) && Set#Equal(read($Heap_$0,this_$0,AVLTree.Repr),read($Heap_$0,read($Heap_$0,this_$0,AVLTree.root),Node.Repr))) && Set#Equal(read($Heap_$0,this_$0,AVLTree.Contents),read($Heap_$0,read($Heap_$0,this_$0,AVLTree.root),Node.Contents))) ==> Node.Valid#canCall($Heap_$0,read($Heap_$0,this_$0,AVLTree.root)))) && ((((((!(read($Heap_$0,this_$0,AVLTree.root) == null)) && read($Heap_$0,this_$0,AVLTree.Repr)[$Box(read($Heap_$0,this_$0,AVLTree.root))]) && Set#Equal(read($Heap_$0,this_$0,AVLTree.Repr),read($Heap_$0,read($Heap_$0,this_$0,AVLTree.root),Node.Repr))) && Set#Equal(read($Heap_$0,this_$0,AVLTree.Contents),read($Heap_$0,read($Heap_$0,this_$0,AVLTree.root),Node.Contents))) && Node.Valid($Heap_$0,read($Heap_$0,this_$0,AVLTree.root))) ==> Node.BalanceValid#canCall($Heap_$0,read($Heap_$0,this_$0,AVLTree.root)))) && (((((((!(read($Heap_$0,this_$0,AVLTree.root) == null)) && read($Heap_$0,this_$0,AVLTree.Repr)[$Box(read($Heap_$0,this_$0,AVLTree.root))]) && Set#Equal(read($Heap_$0,this_$0,AVLTree.Repr),read($Heap_$0,read($Heap_$0,this_$0,AVLTree.root),Node.Repr))) && Set#Equal(read($Heap_$0,this_$0,AVLTree.Contents),read($Heap_$0,read($Heap_$0,this_$0,AVLTree.root),Node.Contents))) && Node.Valid($Heap_$0,read($Heap_$0,this_$0,AVLTree.root))) && Node.BalanceValid($Heap_$0,read($Heap_$0,this_$0,AVLTree.root))) ==> Node.Balanced#canCall($Heap_$0,read($Heap_$0,this_$0,AVLTree.root)))) && (AVLTree.Valid($Heap_$0,this_$0) <==> (((((((!(read($Heap_$0,this_$0,AVLTree.root) == null)) && read($Heap_$0,this_$0,AVLTree.Repr)[$Box(read($Heap_$0,this_$0,AVLTree.root))]) && Set#Equal(read($Heap_$0,this_$0,AVLTree.Repr),read($Heap_$0,read($Heap_$0,this_$0,AVLTree.root),Node.Repr))) && Set#Equal(read($Heap_$0,this_$0,AVLTree.Contents),read($Heap_$0,read($Heap_$0,this_$0,AVLTree.root),Node.Contents))) && Node.Valid($Heap_$0,read($Heap_$0,this_$0,AVLTree.root))) && Node.BalanceValid($Heap_$0,read($Heap_$0,this_$0,AVLTree.root))) && Node.Balanced($Heap_$0,read($Heap_$0,this_$0,AVLTree.root))))) )));
	assume (forall  $h0 : HeapType, $h1 : HeapType, this_$1 : ref :: {$HeapSucc($h0,$h1),AVLTree.Valid($h1,this_$1)} ( ((((((($IsGoodHeap($h0) && $IsGoodHeap($h1)) && (!(this_$1 == null))) && read($h0,this_$1,alloc)) && (dtype(this_$1) == class.AVLTree)) && read($h1,this_$1,alloc)) && (dtype(this_$1) == class.AVLTree)) && $HeapSucc($h0,$h1)) ==> (((forall<alpha> $o_$1 : ref, $f : Field (alpha)  :: ( ((((!($o_$1 == null)) && read($h0,$o_$1,alloc)) && read($h1,$o_$1,alloc)) && (($o_$1 == this_$1) || read($h0,this_$1,AVLTree.Repr)[$Box($o_$1)])) ==> (read($h0,$o_$1,$f) == read($h1,$o_$1,$f)) ))) ==> (AVLTree.Valid($h0,this_$1) <==> AVLTree.Valid($h1,this_$1))) ));
	assume (FDim(Node.left) == 0) && (DeclType(Node.left) == class.Node);
	assume (FDim(Node.right) == 0) && (DeclType(Node.right) == class.Node);
	assume (FDim(Node.value) == 0) && (DeclType(Node.value) == class.Node);
	assume (FDim(Node.balance) == 0) && (DeclType(Node.balance) == class.Node);
	assume (forall  $h_$1 : HeapType, $o_$2 : ref :: {read($h_$1,$o_$2,Node.left)} ( (($IsGoodHeap($h_$1) && (!($o_$2 == null))) && read($h_$1,$o_$2,alloc)) ==> ((read($h_$1,$o_$2,Node.left) == null) || (read($h_$1,read($h_$1,$o_$2,Node.left),alloc) && (dtype(read($h_$1,$o_$2,Node.left)) == class.Node))) ));
	assume (forall  $h_$2 : HeapType, $o_$3 : ref :: {read($h_$2,$o_$3,Node.right)} ( (($IsGoodHeap($h_$2) && (!($o_$3 == null))) && read($h_$2,$o_$3,alloc)) ==> ((read($h_$2,$o_$3,Node.right) == null) || (read($h_$2,read($h_$2,$o_$3,Node.right),alloc) && (dtype(read($h_$2,$o_$3,Node.right)) == class.Node))) ));
	assume (forall  $h_$3 : HeapType, $o_$4 : ref :: {read($h_$3,$o_$4,Node.Repr)} ( (($IsGoodHeap($h_$3) && (!($o_$4 == null))) && read($h_$3,$o_$4,alloc)) ==> ((forall  $t#1_$0 : BoxType :: {read($h_$3,$o_$4,Node.Repr)[$t#1_$0]} ( read($h_$3,$o_$4,Node.Repr)[$t#1_$0] ==> ((($Unbox($t#1_$0) : ref) == null) || (read($h_$3,($Unbox($t#1_$0) : ref),alloc) && (dtype(($Unbox($t#1_$0) : ref)) == class.Node))) ))) ));
	assume (forall  $Heap_$1 : HeapType, n#12 : ref :: {Node.Balanced#2($Heap_$1,n#12)} ( Node.Balanced#2($Heap_$1,n#12) <==> Node.Balanced($Heap_$1,n#12) ));
	assume (forall  $Heap_$2 : HeapType, n#12_$0 : ref :: {Node.Balanced($Heap_$2,n#12_$0)} ( Node.Balanced($Heap_$2,n#12_$0) <==> Node.Balanced#limited($Heap_$2,n#12_$0) ));
	assume ((0 < $ModuleContextHeight) || ((0 == $ModuleContextHeight) && ((6 <= $FunctionContextHeight) || $InMethodContext))) ==> ((forall  $Heap_$3 : HeapType, n#12_$1 : ref :: {Node.Balanced($Heap_$3,n#12_$1)} ( (Node.Balanced#canCall($Heap_$3,n#12_$1) || (((((((!(0 == $ModuleContextHeight)) || (!(6 == $FunctionContextHeight))) || $InMethodContext) && $IsGoodHeap($Heap_$3)) && ((n#12_$1 == null) || (read($Heap_$3,n#12_$1,alloc) && (dtype(n#12_$1) == class.Node)))) && Node.Valid($Heap_$3,n#12_$1)) && Node.BalanceValid($Heap_$3,n#12_$1))) ==> (((!(n#12_$1 == null)) ==> (((((read($Heap_$3,n#12_$1,Node.balance) == (0 - 1)) || (read($Heap_$3,n#12_$1,Node.balance) == 0)) || (read($Heap_$3,n#12_$1,Node.balance) == 1)) ==> Node.Balanced#canCall($Heap_$3,read($Heap_$3,n#12_$1,Node.right))) && (((((read($Heap_$3,n#12_$1,Node.balance) == (0 - 1)) || (read($Heap_$3,n#12_$1,Node.balance) == 0)) || (read($Heap_$3,n#12_$1,Node.balance) == 1)) && Node.Balanced($Heap_$3,read($Heap_$3,n#12_$1,Node.right))) ==> Node.Balanced#canCall($Heap_$3,read($Heap_$3,n#12_$1,Node.left))))) && (Node.Balanced($Heap_$3,n#12_$1) <==> ((!(n#12_$1 == null)) ==> (((((read($Heap_$3,n#12_$1,Node.balance) == (0 - 1)) || (read($Heap_$3,n#12_$1,Node.balance) == 0)) || (read($Heap_$3,n#12_$1,Node.balance) == 1)) && Node.Balanced#limited($Heap_$3,read($Heap_$3,n#12_$1,Node.right))) && Node.Balanced#limited($Heap_$3,read($Heap_$3,n#12_$1,Node.left)))))) )));
	assume ((0 < $ModuleContextHeight) || ((0 == $ModuleContextHeight) && ((6 <= $FunctionContextHeight) || $InMethodContext))) ==> ((forall  $Heap_$4 : HeapType, n#12_$2 : ref :: {Node.Balanced#2($Heap_$4,n#12_$2)} ( (Node.Balanced#canCall($Heap_$4,n#12_$2) || (((((((!(0 == $ModuleContextHeight)) || (!(6 == $FunctionContextHeight))) || $InMethodContext) && $IsGoodHeap($Heap_$4)) && ((n#12_$2 == null) || (read($Heap_$4,n#12_$2,alloc) && (dtype(n#12_$2) == class.Node)))) && Node.Valid($Heap_$4,n#12_$2)) && Node.BalanceValid($Heap_$4,n#12_$2))) ==> (Node.Balanced#2($Heap_$4,n#12_$2) <==> ((!(n#12_$2 == null)) ==> (((((read($Heap_$4,n#12_$2,Node.balance) == (0 - 1)) || (read($Heap_$4,n#12_$2,Node.balance) == 0)) || (read($Heap_$4,n#12_$2,Node.balance) == 1)) && Node.Balanced($Heap_$4,read($Heap_$4,n#12_$2,Node.right))) && Node.Balanced($Heap_$4,read($Heap_$4,n#12_$2,Node.left))))) )));
	assume (forall  $h0_$0 : HeapType, $h1_$0 : HeapType, n#12_$3 : ref :: {$HeapSucc($h0_$0,$h1_$0),Node.Balanced($h1_$0,n#12_$3)} ( (((($IsGoodHeap($h0_$0) && $IsGoodHeap($h1_$0)) && ((n#12_$3 == null) || (read($h0_$0,n#12_$3,alloc) && (dtype(n#12_$3) == class.Node)))) && ((n#12_$3 == null) || (read($h1_$0,n#12_$3,alloc) && (dtype(n#12_$3) == class.Node)))) && $HeapSucc($h0_$0,$h1_$0)) ==> (((forall<alpha> $o_$5 : ref, $f_$0 : Field (alpha)  :: ( ((((!($o_$5 == null)) && read($h0_$0,$o_$5,alloc)) && read($h1_$0,$o_$5,alloc)) && (($o_$5 == n#12_$3) || ((!(n#12_$3 == null)) && read($h0_$0,n#12_$3,Node.Repr)[$Box($o_$5)]))) ==> (read($h0_$0,$o_$5,$f_$0) == read($h1_$0,$o_$5,$f_$0)) ))) ==> (Node.Balanced($h0_$0,n#12_$3) <==> Node.Balanced($h1_$0,n#12_$3))) ));
	assume (forall  $h0_$1 : HeapType, $h1_$1 : HeapType, n#12_$4 : ref :: {$HeapSucc($h0_$1,$h1_$1),Node.Balanced#limited($h1_$1,n#12_$4)} ( (((($IsGoodHeap($h0_$1) && $IsGoodHeap($h1_$1)) && ((n#12_$4 == null) || (read($h0_$1,n#12_$4,alloc) && (dtype(n#12_$4) == class.Node)))) && ((n#12_$4 == null) || (read($h1_$1,n#12_$4,alloc) && (dtype(n#12_$4) == class.Node)))) && $HeapSucc($h0_$1,$h1_$1)) ==> (((forall<alpha> $o_$6 : ref, $f_$1 : Field (alpha)  :: ( ((((!($o_$6 == null)) && read($h0_$1,$o_$6,alloc)) && read($h1_$1,$o_$6,alloc)) && (($o_$6 == n#12_$4) || ((!(n#12_$4 == null)) && read($h0_$1,n#12_$4,Node.Repr)[$Box($o_$6)]))) ==> (read($h0_$1,$o_$6,$f_$1) == read($h1_$1,$o_$6,$f_$1)) ))) ==> (Node.Balanced#limited($h0_$1,n#12_$4) <==> Node.Balanced#limited($h1_$1,n#12_$4))) ));
	assume (forall  $Heap_$5 : HeapType, n#13 : ref :: {Node.BalanceValid#2($Heap_$5,n#13)} ( Node.BalanceValid#2($Heap_$5,n#13) <==> Node.BalanceValid($Heap_$5,n#13) ));
	assume (forall  $Heap_$6 : HeapType, n#13_$0 : ref :: {Node.BalanceValid($Heap_$6,n#13_$0)} ( Node.BalanceValid($Heap_$6,n#13_$0) <==> Node.BalanceValid#limited($Heap_$6,n#13_$0) ));
	assume ((0 < $ModuleContextHeight) || ((0 == $ModuleContextHeight) && ((5 <= $FunctionContextHeight) || $InMethodContext))) ==> ((forall  $Heap_$7 : HeapType, n#13_$1 : ref :: {Node.BalanceValid($Heap_$7,n#13_$1)} ( (Node.BalanceValid#canCall($Heap_$7,n#13_$1) || ((((((!(0 == $ModuleContextHeight)) || (!(5 == $FunctionContextHeight))) || $InMethodContext) && $IsGoodHeap($Heap_$7)) && ((n#13_$1 == null) || (read($Heap_$7,n#13_$1,alloc) && (dtype(n#13_$1) == class.Node)))) && Node.Valid($Heap_$7,n#13_$1))) ==> (((!(n#13_$1 == null)) ==> (((Node.Height#canCall($Heap_$7,read($Heap_$7,n#13_$1,Node.right)) && Node.Height#canCall($Heap_$7,read($Heap_$7,n#13_$1,Node.left))) && ((read($Heap_$7,n#13_$1,Node.balance) == (Node.Height($Heap_$7,read($Heap_$7,n#13_$1,Node.right)) - Node.Height($Heap_$7,read($Heap_$7,n#13_$1,Node.left)))) ==> ((!(read($Heap_$7,n#13_$1,Node.left) == null)) ==> Node.BalanceValid#canCall($Heap_$7,read($Heap_$7,n#13_$1,Node.left))))) && (((read($Heap_$7,n#13_$1,Node.balance) == (Node.Height($Heap_$7,read($Heap_$7,n#13_$1,Node.right)) - Node.Height($Heap_$7,read($Heap_$7,n#13_$1,Node.left)))) && ((!(read($Heap_$7,n#13_$1,Node.left) == null)) ==> Node.BalanceValid($Heap_$7,read($Heap_$7,n#13_$1,Node.left)))) ==> ((!(read($Heap_$7,n#13_$1,Node.right) == null)) ==> Node.BalanceValid#canCall($Heap_$7,read($Heap_$7,n#13_$1,Node.right)))))) && (Node.BalanceValid($Heap_$7,n#13_$1) <==> ((!(n#13_$1 == null)) ==> (((read($Heap_$7,n#13_$1,Node.balance) == (Node.Height($Heap_$7,read($Heap_$7,n#13_$1,Node.right)) - Node.Height($Heap_$7,read($Heap_$7,n#13_$1,Node.left)))) && ((!(read($Heap_$7,n#13_$1,Node.left) == null)) ==> Node.BalanceValid#limited($Heap_$7,read($Heap_$7,n#13_$1,Node.left)))) && ((!(read($Heap_$7,n#13_$1,Node.right) == null)) ==> Node.BalanceValid#limited($Heap_$7,read($Heap_$7,n#13_$1,Node.right))))))) )));
	assume ((0 < $ModuleContextHeight) || ((0 == $ModuleContextHeight) && ((5 <= $FunctionContextHeight) || $InMethodContext))) ==> ((forall  $Heap_$8 : HeapType, n#13_$2 : ref :: {Node.BalanceValid#2($Heap_$8,n#13_$2)} ( (Node.BalanceValid#canCall($Heap_$8,n#13_$2) || ((((((!(0 == $ModuleContextHeight)) || (!(5 == $FunctionContextHeight))) || $InMethodContext) && $IsGoodHeap($Heap_$8)) && ((n#13_$2 == null) || (read($Heap_$8,n#13_$2,alloc) && (dtype(n#13_$2) == class.Node)))) && Node.Valid($Heap_$8,n#13_$2))) ==> (Node.BalanceValid#2($Heap_$8,n#13_$2) <==> ((!(n#13_$2 == null)) ==> (((read($Heap_$8,n#13_$2,Node.balance) == (Node.Height($Heap_$8,read($Heap_$8,n#13_$2,Node.right)) - Node.Height($Heap_$8,read($Heap_$8,n#13_$2,Node.left)))) && ((!(read($Heap_$8,n#13_$2,Node.left) == null)) ==> Node.BalanceValid($Heap_$8,read($Heap_$8,n#13_$2,Node.left)))) && ((!(read($Heap_$8,n#13_$2,Node.right) == null)) ==> Node.BalanceValid($Heap_$8,read($Heap_$8,n#13_$2,Node.right)))))) )));
	assume (forall  $h0_$2 : HeapType, $h1_$2 : HeapType, n#13_$3 : ref :: {$HeapSucc($h0_$2,$h1_$2),Node.BalanceValid($h1_$2,n#13_$3)} ( (((($IsGoodHeap($h0_$2) && $IsGoodHeap($h1_$2)) && ((n#13_$3 == null) || (read($h0_$2,n#13_$3,alloc) && (dtype(n#13_$3) == class.Node)))) && ((n#13_$3 == null) || (read($h1_$2,n#13_$3,alloc) && (dtype(n#13_$3) == class.Node)))) && $HeapSucc($h0_$2,$h1_$2)) ==> (((forall<alpha> $o_$7 : ref, $f_$2 : Field (alpha)  :: ( ((((!($o_$7 == null)) && read($h0_$2,$o_$7,alloc)) && read($h1_$2,$o_$7,alloc)) && (($o_$7 == n#13_$3) || ((!(n#13_$3 == null)) && read($h0_$2,n#13_$3,Node.Repr)[$Box($o_$7)]))) ==> (read($h0_$2,$o_$7,$f_$2) == read($h1_$2,$o_$7,$f_$2)) ))) ==> (Node.BalanceValid($h0_$2,n#13_$3) <==> Node.BalanceValid($h1_$2,n#13_$3))) ));
	assume (forall  $h0_$3 : HeapType, $h1_$3 : HeapType, n#13_$4 : ref :: {$HeapSucc($h0_$3,$h1_$3),Node.BalanceValid#limited($h1_$3,n#13_$4)} ( (((($IsGoodHeap($h0_$3) && $IsGoodHeap($h1_$3)) && ((n#13_$4 == null) || (read($h0_$3,n#13_$4,alloc) && (dtype(n#13_$4) == class.Node)))) && ((n#13_$4 == null) || (read($h1_$3,n#13_$4,alloc) && (dtype(n#13_$4) == class.Node)))) && $HeapSucc($h0_$3,$h1_$3)) ==> (((forall<alpha> $o_$8 : ref, $f_$3 : Field (alpha)  :: ( ((((!($o_$8 == null)) && read($h0_$3,$o_$8,alloc)) && read($h1_$3,$o_$8,alloc)) && (($o_$8 == n#13_$4) || ((!(n#13_$4 == null)) && read($h0_$3,n#13_$4,Node.Repr)[$Box($o_$8)]))) ==> (read($h0_$3,$o_$8,$f_$3) == read($h1_$3,$o_$8,$f_$3)) ))) ==> (Node.BalanceValid#limited($h0_$3,n#13_$4) <==> Node.BalanceValid#limited($h1_$3,n#13_$4))) ));
	assume (forall  $Heap_$9 : HeapType, n#14 : ref :: {Node.Height#2($Heap_$9,n#14)} ( Node.Height#2($Heap_$9,n#14) == Node.Height($Heap_$9,n#14) ));
	assume (forall  $Heap_$10 : HeapType, n#14_$0 : ref :: {Node.Height($Heap_$10,n#14_$0)} ( Node.Height($Heap_$10,n#14_$0) == Node.Height#limited($Heap_$10,n#14_$0) ));
	assume ((0 < $ModuleContextHeight) || ((0 == $ModuleContextHeight) && ((4 <= $FunctionContextHeight) || $InMethodContext))) ==> ((forall  $Heap_$11 : HeapType, n#14_$1 : ref :: {Node.Height($Heap_$11,n#14_$1)} ( (Node.Height#canCall($Heap_$11,n#14_$1) || ((((((!(0 == $ModuleContextHeight)) || (!(4 == $FunctionContextHeight))) || $InMethodContext) && $IsGoodHeap($Heap_$11)) && ((n#14_$1 == null) || (read($Heap_$11,n#14_$1,alloc) && (dtype(n#14_$1) == class.Node)))) && Node.Valid($Heap_$11,n#14_$1))) ==> (((((n#14_$1 == null) ==> true) && ((!(n#14_$1 == null)) ==> ((Node.Height#canCall($Heap_$11,read($Heap_$11,n#14_$1,Node.left)) && Node.Height#canCall($Heap_$11,read($Heap_$11,n#14_$1,Node.right))) && Math.max#canCall($Heap_$11,Node.Height($Heap_$11,read($Heap_$11,n#14_$1,Node.left)),Node.Height($Heap_$11,read($Heap_$11,n#14_$1,Node.right)))))) && (Node.Height($Heap_$11,n#14_$1) == (if (n#14_$1 == null) then 0 else (Math.max($Heap_$11,Node.Height#limited($Heap_$11,read($Heap_$11,n#14_$1,Node.left)),Node.Height#limited($Heap_$11,read($Heap_$11,n#14_$1,Node.right))) + 1)))) && (0 <= Node.Height($Heap_$11,n#14_$1))) )));
	assume ((0 < $ModuleContextHeight) || ((0 == $ModuleContextHeight) && ((4 <= $FunctionContextHeight) || $InMethodContext))) ==> ((forall  $Heap_$12 : HeapType, n#14_$2 : ref :: {Node.Height#2($Heap_$12,n#14_$2)} ( (Node.Height#canCall($Heap_$12,n#14_$2) || ((((((!(0 == $ModuleContextHeight)) || (!(4 == $FunctionContextHeight))) || $InMethodContext) && $IsGoodHeap($Heap_$12)) && ((n#14_$2 == null) || (read($Heap_$12,n#14_$2,alloc) && (dtype(n#14_$2) == class.Node)))) && Node.Valid($Heap_$12,n#14_$2))) ==> (Node.Height#2($Heap_$12,n#14_$2) == (if (n#14_$2 == null) then 0 else (Math.max($Heap_$12,Node.Height($Heap_$12,read($Heap_$12,n#14_$2,Node.left)),Node.Height($Heap_$12,read($Heap_$12,n#14_$2,Node.right))) + 1))) )));
	assume (forall  $h0_$4 : HeapType, $h1_$4 : HeapType, n#14_$3 : ref :: {$HeapSucc($h0_$4,$h1_$4),Node.Height($h1_$4,n#14_$3)} ( (((($IsGoodHeap($h0_$4) && $IsGoodHeap($h1_$4)) && ((n#14_$3 == null) || (read($h0_$4,n#14_$3,alloc) && (dtype(n#14_$3) == class.Node)))) && ((n#14_$3 == null) || (read($h1_$4,n#14_$3,alloc) && (dtype(n#14_$3) == class.Node)))) && $HeapSucc($h0_$4,$h1_$4)) ==> (((forall<alpha> $o_$9 : ref, $f_$4 : Field (alpha)  :: ( (((((!($o_$9 == null)) && read($h0_$4,$o_$9,alloc)) && read($h1_$4,$o_$9,alloc)) && (!(n#14_$3 == null))) && read($h0_$4,n#14_$3,Node.Repr)[$Box($o_$9)]) ==> (read($h0_$4,$o_$9,$f_$4) == read($h1_$4,$o_$9,$f_$4)) ))) ==> (Node.Height($h0_$4,n#14_$3) == Node.Height($h1_$4,n#14_$3))) ));
	assume (forall  $h0_$5 : HeapType, $h1_$5 : HeapType, n#14_$4 : ref :: {$HeapSucc($h0_$5,$h1_$5),Node.Height#limited($h1_$5,n#14_$4)} ( (((($IsGoodHeap($h0_$5) && $IsGoodHeap($h1_$5)) && ((n#14_$4 == null) || (read($h0_$5,n#14_$4,alloc) && (dtype(n#14_$4) == class.Node)))) && ((n#14_$4 == null) || (read($h1_$5,n#14_$4,alloc) && (dtype(n#14_$4) == class.Node)))) && $HeapSucc($h0_$5,$h1_$5)) ==> (((forall<alpha> $o_$10 : ref, $f_$5 : Field (alpha)  :: ( (((((!($o_$10 == null)) && read($h0_$5,$o_$10,alloc)) && read($h1_$5,$o_$10,alloc)) && (!(n#14_$4 == null))) && read($h0_$5,n#14_$4,Node.Repr)[$Box($o_$10)]) ==> (read($h0_$5,$o_$10,$f_$5) == read($h1_$5,$o_$10,$f_$5)) ))) ==> (Node.Height#limited($h0_$5,n#14_$4) == Node.Height#limited($h1_$5,n#14_$4))) ));
	assume (forall  $Heap_$13 : HeapType, n#15 : ref :: {Node.Valid#2($Heap_$13,n#15)} ( Node.Valid#2($Heap_$13,n#15) <==> Node.Valid($Heap_$13,n#15) ));
	assume (forall  $Heap_$14 : HeapType, n#15_$0 : ref :: {Node.Valid($Heap_$14,n#15_$0)} ( Node.Valid($Heap_$14,n#15_$0) <==> Node.Valid#limited($Heap_$14,n#15_$0) ));
	assume ((0 < $ModuleContextHeight) || ((0 == $ModuleContextHeight) && ((2 <= $FunctionContextHeight) || $InMethodContext))) ==> ((forall  $Heap_$15 : HeapType, n#15_$1 : ref :: {Node.Valid($Heap_$15,n#15_$1)} ( (Node.Valid#canCall($Heap_$15,n#15_$1) || (((((!(0 == $ModuleContextHeight)) || (!(2 == $FunctionContextHeight))) || $InMethodContext) && $IsGoodHeap($Heap_$15)) && ((n#15_$1 == null) || (read($Heap_$15,n#15_$1,alloc) && (dtype(n#15_$1) == class.Node))))) ==> (((!(n#15_$1 == null)) ==> (((((((((read($Heap_$15,n#15_$1,Node.Repr)[$Box(n#15_$1)] ==> true) && ((read($Heap_$15,n#15_$1,Node.Repr)[$Box(n#15_$1)] && (!read($Heap_$15,n#15_$1,Node.Repr)[$Box(null)])) ==> ((!(read($Heap_$15,n#15_$1,Node.left) == null)) ==> ((read($Heap_$15,n#15_$1,Node.Repr)[$Box(read($Heap_$15,n#15_$1,Node.left))] ==> true) && ((read($Heap_$15,n#15_$1,Node.Repr)[$Box(read($Heap_$15,n#15_$1,Node.left))] && (!read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr)[$Box(n#15_$1)])) ==> true))))) && (((read($Heap_$15,n#15_$1,Node.Repr)[$Box(n#15_$1)] && (!read($Heap_$15,n#15_$1,Node.Repr)[$Box(null)])) && ((!(read($Heap_$15,n#15_$1,Node.left) == null)) ==> ((read($Heap_$15,n#15_$1,Node.Repr)[$Box(read($Heap_$15,n#15_$1,Node.left))] && (!read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr)[$Box(n#15_$1)])) && Set#Subset(read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr),read($Heap_$15,n#15_$1,Node.Repr))))) ==> ((!(read($Heap_$15,n#15_$1,Node.right) == null)) ==> ((read($Heap_$15,n#15_$1,Node.Repr)[$Box(read($Heap_$15,n#15_$1,Node.right))] ==> true) && ((read($Heap_$15,n#15_$1,Node.Repr)[$Box(read($Heap_$15,n#15_$1,Node.right))] && (!read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Repr)[$Box(n#15_$1)])) ==> true))))) && ((((read($Heap_$15,n#15_$1,Node.Repr)[$Box(n#15_$1)] && (!read($Heap_$15,n#15_$1,Node.Repr)[$Box(null)])) && ((!(read($Heap_$15,n#15_$1,Node.left) == null)) ==> ((read($Heap_$15,n#15_$1,Node.Repr)[$Box(read($Heap_$15,n#15_$1,Node.left))] && (!read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr)[$Box(n#15_$1)])) && Set#Subset(read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr),read($Heap_$15,n#15_$1,Node.Repr))))) && ((!(read($Heap_$15,n#15_$1,Node.right) == null)) ==> ((read($Heap_$15,n#15_$1,Node.Repr)[$Box(read($Heap_$15,n#15_$1,Node.right))] && (!read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Repr)[$Box(n#15_$1)])) && Set#Subset(read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Repr),read($Heap_$15,n#15_$1,Node.Repr))))) ==> (Node.Valid#canCall($Heap_$15,read($Heap_$15,n#15_$1,Node.left)) && (Node.Valid($Heap_$15,read($Heap_$15,n#15_$1,Node.left)) ==> Node.Valid#canCall($Heap_$15,read($Heap_$15,n#15_$1,Node.right)))))) && ((((((read($Heap_$15,n#15_$1,Node.Repr)[$Box(n#15_$1)] && (!read($Heap_$15,n#15_$1,Node.Repr)[$Box(null)])) && ((!(read($Heap_$15,n#15_$1,Node.left) == null)) ==> ((read($Heap_$15,n#15_$1,Node.Repr)[$Box(read($Heap_$15,n#15_$1,Node.left))] && (!read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr)[$Box(n#15_$1)])) && Set#Subset(read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr),read($Heap_$15,n#15_$1,Node.Repr))))) && ((!(read($Heap_$15,n#15_$1,Node.right) == null)) ==> ((read($Heap_$15,n#15_$1,Node.Repr)[$Box(read($Heap_$15,n#15_$1,Node.right))] && (!read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Repr)[$Box(n#15_$1)])) && Set#Subset(read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Repr),read($Heap_$15,n#15_$1,Node.Repr))))) && Node.Valid($Heap_$15,read($Heap_$15,n#15_$1,Node.left))) && Node.Valid($Heap_$15,read($Heap_$15,n#15_$1,Node.right))) ==> (((!(read($Heap_$15,n#15_$1,Node.right) == null)) ==> true) && (((!(read($Heap_$15,n#15_$1,Node.right) == null)) && (!(read($Heap_$15,n#15_$1,Node.left) == null))) ==> true)))) && (((((((read($Heap_$15,n#15_$1,Node.Repr)[$Box(n#15_$1)] && (!read($Heap_$15,n#15_$1,Node.Repr)[$Box(null)])) && ((!(read($Heap_$15,n#15_$1,Node.left) == null)) ==> ((read($Heap_$15,n#15_$1,Node.Repr)[$Box(read($Heap_$15,n#15_$1,Node.left))] && (!read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr)[$Box(n#15_$1)])) && Set#Subset(read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr),read($Heap_$15,n#15_$1,Node.Repr))))) && ((!(read($Heap_$15,n#15_$1,Node.right) == null)) ==> ((read($Heap_$15,n#15_$1,Node.Repr)[$Box(read($Heap_$15,n#15_$1,Node.right))] && (!read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Repr)[$Box(n#15_$1)])) && Set#Subset(read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Repr),read($Heap_$15,n#15_$1,Node.Repr))))) && Node.Valid($Heap_$15,read($Heap_$15,n#15_$1,Node.left))) && Node.Valid($Heap_$15,read($Heap_$15,n#15_$1,Node.right))) && (((!(read($Heap_$15,n#15_$1,Node.right) == null)) && (!(read($Heap_$15,n#15_$1,Node.left) == null))) ==> Set#Disjoint(read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr),read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Repr)))) ==> (((((!(read($Heap_$15,n#15_$1,Node.left) == null)) ==> true) && ((read($Heap_$15,n#15_$1,Node.left) == null) ==> true)) && ((!(read($Heap_$15,n#15_$1,Node.right) == null)) ==> true)) && ((read($Heap_$15,n#15_$1,Node.right) == null) ==> true)))) && ((((((((read($Heap_$15,n#15_$1,Node.Repr)[$Box(n#15_$1)] && (!read($Heap_$15,n#15_$1,Node.Repr)[$Box(null)])) && ((!(read($Heap_$15,n#15_$1,Node.left) == null)) ==> ((read($Heap_$15,n#15_$1,Node.Repr)[$Box(read($Heap_$15,n#15_$1,Node.left))] && (!read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr)[$Box(n#15_$1)])) && Set#Subset(read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr),read($Heap_$15,n#15_$1,Node.Repr))))) && ((!(read($Heap_$15,n#15_$1,Node.right) == null)) ==> ((read($Heap_$15,n#15_$1,Node.Repr)[$Box(read($Heap_$15,n#15_$1,Node.right))] && (!read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Repr)[$Box(n#15_$1)])) && Set#Subset(read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Repr),read($Heap_$15,n#15_$1,Node.Repr))))) && Node.Valid($Heap_$15,read($Heap_$15,n#15_$1,Node.left))) && Node.Valid($Heap_$15,read($Heap_$15,n#15_$1,Node.right))) && (((!(read($Heap_$15,n#15_$1,Node.right) == null)) && (!(read($Heap_$15,n#15_$1,Node.left) == null))) ==> Set#Disjoint(read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr),read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Repr)))) && Set#Equal(read($Heap_$15,n#15_$1,Node.Repr),Set#Union(Set#Union(Set#UnionOne((Set#Empty() : Set (BoxType) ),$Box(n#15_$1)),if (!(read($Heap_$15,n#15_$1,Node.left) == null)) then read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr) else (Set#Empty() : Set (BoxType) )),if (!(read($Heap_$15,n#15_$1,Node.right) == null)) then read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Repr) else (Set#Empty() : Set (BoxType) )))) ==> (((((!(read($Heap_$15,n#15_$1,Node.left) == null)) ==> true) && ((read($Heap_$15,n#15_$1,Node.left) == null) ==> true)) && ((!(read($Heap_$15,n#15_$1,Node.right) == null)) ==> true)) && ((read($Heap_$15,n#15_$1,Node.right) == null) ==> true)))) && (((((((((read($Heap_$15,n#15_$1,Node.Repr)[$Box(n#15_$1)] && (!read($Heap_$15,n#15_$1,Node.Repr)[$Box(null)])) && ((!(read($Heap_$15,n#15_$1,Node.left) == null)) ==> ((read($Heap_$15,n#15_$1,Node.Repr)[$Box(read($Heap_$15,n#15_$1,Node.left))] && (!read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr)[$Box(n#15_$1)])) && Set#Subset(read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr),read($Heap_$15,n#15_$1,Node.Repr))))) && ((!(read($Heap_$15,n#15_$1,Node.right) == null)) ==> ((read($Heap_$15,n#15_$1,Node.Repr)[$Box(read($Heap_$15,n#15_$1,Node.right))] && (!read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Repr)[$Box(n#15_$1)])) && Set#Subset(read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Repr),read($Heap_$15,n#15_$1,Node.Repr))))) && Node.Valid($Heap_$15,read($Heap_$15,n#15_$1,Node.left))) && Node.Valid($Heap_$15,read($Heap_$15,n#15_$1,Node.right))) && (((!(read($Heap_$15,n#15_$1,Node.right) == null)) && (!(read($Heap_$15,n#15_$1,Node.left) == null))) ==> Set#Disjoint(read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr),read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Repr)))) && Set#Equal(read($Heap_$15,n#15_$1,Node.Repr),Set#Union(Set#Union(Set#UnionOne((Set#Empty() : Set (BoxType) ),$Box(n#15_$1)),if (!(read($Heap_$15,n#15_$1,Node.left) == null)) then read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr) else (Set#Empty() : Set (BoxType) )),if (!(read($Heap_$15,n#15_$1,Node.right) == null)) then read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Repr) else (Set#Empty() : Set (BoxType) )))) && Set#Equal(read($Heap_$15,n#15_$1,Node.Contents),Set#Union(Set#Union(Set#UnionOne((Set#Empty() : Set (BoxType) ),$Box(read($Heap_$15,n#15_$1,Node.value))),if (!(read($Heap_$15,n#15_$1,Node.left) == null)) then read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Contents) else (Set#Empty() : Set (BoxType) )),if (!(read($Heap_$15,n#15_$1,Node.right) == null)) then read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Contents) else (Set#Empty() : Set (BoxType) )))) ==> ((!(read($Heap_$15,n#15_$1,Node.left) == null)) ==> ((forall  i#16 : Integer :: ( true ==> (read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Contents)[$Box(i#16)] ==> true) )))))) && ((((((((((read($Heap_$15,n#15_$1,Node.Repr)[$Box(n#15_$1)] && (!read($Heap_$15,n#15_$1,Node.Repr)[$Box(null)])) && ((!(read($Heap_$15,n#15_$1,Node.left) == null)) ==> ((read($Heap_$15,n#15_$1,Node.Repr)[$Box(read($Heap_$15,n#15_$1,Node.left))] && (!read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr)[$Box(n#15_$1)])) && Set#Subset(read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr),read($Heap_$15,n#15_$1,Node.Repr))))) && ((!(read($Heap_$15,n#15_$1,Node.right) == null)) ==> ((read($Heap_$15,n#15_$1,Node.Repr)[$Box(read($Heap_$15,n#15_$1,Node.right))] && (!read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Repr)[$Box(n#15_$1)])) && Set#Subset(read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Repr),read($Heap_$15,n#15_$1,Node.Repr))))) && Node.Valid($Heap_$15,read($Heap_$15,n#15_$1,Node.left))) && Node.Valid($Heap_$15,read($Heap_$15,n#15_$1,Node.right))) && (((!(read($Heap_$15,n#15_$1,Node.right) == null)) && (!(read($Heap_$15,n#15_$1,Node.left) == null))) ==> Set#Disjoint(read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr),read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Repr)))) && Set#Equal(read($Heap_$15,n#15_$1,Node.Repr),Set#Union(Set#Union(Set#UnionOne((Set#Empty() : Set (BoxType) ),$Box(n#15_$1)),if (!(read($Heap_$15,n#15_$1,Node.left) == null)) then read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr) else (Set#Empty() : Set (BoxType) )),if (!(read($Heap_$15,n#15_$1,Node.right) == null)) then read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Repr) else (Set#Empty() : Set (BoxType) )))) && Set#Equal(read($Heap_$15,n#15_$1,Node.Contents),Set#Union(Set#Union(Set#UnionOne((Set#Empty() : Set (BoxType) ),$Box(read($Heap_$15,n#15_$1,Node.value))),if (!(read($Heap_$15,n#15_$1,Node.left) == null)) then read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Contents) else (Set#Empty() : Set (BoxType) )),if (!(read($Heap_$15,n#15_$1,Node.right) == null)) then read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Contents) else (Set#Empty() : Set (BoxType) )))) && ((!(read($Heap_$15,n#15_$1,Node.left) == null)) ==> ((forall  i#16_$0 : Integer :: ( true ==> (read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Contents)[$Box(i#16_$0)] ==> (i#16_$0 < read($Heap_$15,n#15_$1,Node.value))) ))))) ==> ((!(read($Heap_$15,n#15_$1,Node.right) == null)) ==> ((forall  i#17 : Integer :: ( true ==> (read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Contents)[$Box(i#17)] ==> true) ))))))) && (Node.Valid($Heap_$15,n#15_$1) <==> ((!(n#15_$1 == null)) ==> ((((((((((read($Heap_$15,n#15_$1,Node.Repr)[$Box(n#15_$1)] && (!read($Heap_$15,n#15_$1,Node.Repr)[$Box(null)])) && ((!(read($Heap_$15,n#15_$1,Node.left) == null)) ==> ((read($Heap_$15,n#15_$1,Node.Repr)[$Box(read($Heap_$15,n#15_$1,Node.left))] && (!read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr)[$Box(n#15_$1)])) && Set#Subset(read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr),read($Heap_$15,n#15_$1,Node.Repr))))) && ((!(read($Heap_$15,n#15_$1,Node.right) == null)) ==> ((read($Heap_$15,n#15_$1,Node.Repr)[$Box(read($Heap_$15,n#15_$1,Node.right))] && (!read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Repr)[$Box(n#15_$1)])) && Set#Subset(read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Repr),read($Heap_$15,n#15_$1,Node.Repr))))) && Node.Valid#limited($Heap_$15,read($Heap_$15,n#15_$1,Node.left))) && Node.Valid#limited($Heap_$15,read($Heap_$15,n#15_$1,Node.right))) && (((!(read($Heap_$15,n#15_$1,Node.right) == null)) && (!(read($Heap_$15,n#15_$1,Node.left) == null))) ==> Set#Disjoint(read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr),read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Repr)))) && Set#Equal(read($Heap_$15,n#15_$1,Node.Repr),Set#Union(Set#Union(Set#UnionOne((Set#Empty() : Set (BoxType) ),$Box(n#15_$1)),if (!(read($Heap_$15,n#15_$1,Node.left) == null)) then read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Repr) else (Set#Empty() : Set (BoxType) )),if (!(read($Heap_$15,n#15_$1,Node.right) == null)) then read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Repr) else (Set#Empty() : Set (BoxType) )))) && Set#Equal(read($Heap_$15,n#15_$1,Node.Contents),Set#Union(Set#Union(Set#UnionOne((Set#Empty() : Set (BoxType) ),$Box(read($Heap_$15,n#15_$1,Node.value))),if (!(read($Heap_$15,n#15_$1,Node.left) == null)) then read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Contents) else (Set#Empty() : Set (BoxType) )),if (!(read($Heap_$15,n#15_$1,Node.right) == null)) then read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Contents) else (Set#Empty() : Set (BoxType) )))) && ((!(read($Heap_$15,n#15_$1,Node.left) == null)) ==> ((forall  i#16_$1 : Integer :: ( true ==> (read($Heap_$15,read($Heap_$15,n#15_$1,Node.left),Node.Contents)[$Box(i#16_$1)] ==> (i#16_$1 < read($Heap_$15,n#15_$1,Node.value))) ))))) && ((!(read($Heap_$15,n#15_$1,Node.right) == null)) ==> ((forall  i#17_$0 : Integer :: ( true ==> (read($Heap_$15,read($Heap_$15,n#15_$1,Node.right),Node.Contents)[$Box(i#17_$0)] ==> (read($Heap_$15,n#15_$1,Node.value) < i#17_$0)) )))))))) )));
	assume ((0 < $ModuleContextHeight) || ((0 == $ModuleContextHeight) && ((2 <= $FunctionContextHeight) || $InMethodContext))) ==> ((forall  $Heap_$16 : HeapType, n#15_$2 : ref :: {Node.Valid#2($Heap_$16,n#15_$2)} ( (Node.Valid#canCall($Heap_$16,n#15_$2) || (((((!(0 == $ModuleContextHeight)) || (!(2 == $FunctionContextHeight))) || $InMethodContext) && $IsGoodHeap($Heap_$16)) && ((n#15_$2 == null) || (read($Heap_$16,n#15_$2,alloc) && (dtype(n#15_$2) == class.Node))))) ==> (Node.Valid#2($Heap_$16,n#15_$2) <==> ((!(n#15_$2 == null)) ==> ((((((((((read($Heap_$16,n#15_$2,Node.Repr)[$Box(n#15_$2)] && (!read($Heap_$16,n#15_$2,Node.Repr)[$Box(null)])) && ((!(read($Heap_$16,n#15_$2,Node.left) == null)) ==> ((read($Heap_$16,n#15_$2,Node.Repr)[$Box(read($Heap_$16,n#15_$2,Node.left))] && (!read($Heap_$16,read($Heap_$16,n#15_$2,Node.left),Node.Repr)[$Box(n#15_$2)])) && Set#Subset(read($Heap_$16,read($Heap_$16,n#15_$2,Node.left),Node.Repr),read($Heap_$16,n#15_$2,Node.Repr))))) && ((!(read($Heap_$16,n#15_$2,Node.right) == null)) ==> ((read($Heap_$16,n#15_$2,Node.Repr)[$Box(read($Heap_$16,n#15_$2,Node.right))] && (!read($Heap_$16,read($Heap_$16,n#15_$2,Node.right),Node.Repr)[$Box(n#15_$2)])) && Set#Subset(read($Heap_$16,read($Heap_$16,n#15_$2,Node.right),Node.Repr),read($Heap_$16,n#15_$2,Node.Repr))))) && Node.Valid($Heap_$16,read($Heap_$16,n#15_$2,Node.left))) && Node.Valid($Heap_$16,read($Heap_$16,n#15_$2,Node.right))) && (((!(read($Heap_$16,n#15_$2,Node.right) == null)) && (!(read($Heap_$16,n#15_$2,Node.left) == null))) ==> Set#Disjoint(read($Heap_$16,read($Heap_$16,n#15_$2,Node.left),Node.Repr),read($Heap_$16,read($Heap_$16,n#15_$2,Node.right),Node.Repr)))) && Set#Equal(read($Heap_$16,n#15_$2,Node.Repr),Set#Union(Set#Union(Set#UnionOne((Set#Empty() : Set (BoxType) ),$Box(n#15_$2)),if (!(read($Heap_$16,n#15_$2,Node.left) == null)) then read($Heap_$16,read($Heap_$16,n#15_$2,Node.left),Node.Repr) else (Set#Empty() : Set (BoxType) )),if (!(read($Heap_$16,n#15_$2,Node.right) == null)) then read($Heap_$16,read($Heap_$16,n#15_$2,Node.right),Node.Repr) else (Set#Empty() : Set (BoxType) )))) && Set#Equal(read($Heap_$16,n#15_$2,Node.Contents),Set#Union(Set#Union(Set#UnionOne((Set#Empty() : Set (BoxType) ),$Box(read($Heap_$16,n#15_$2,Node.value))),if (!(read($Heap_$16,n#15_$2,Node.left) == null)) then read($Heap_$16,read($Heap_$16,n#15_$2,Node.left),Node.Contents) else (Set#Empty() : Set (BoxType) )),if (!(read($Heap_$16,n#15_$2,Node.right) == null)) then read($Heap_$16,read($Heap_$16,n#15_$2,Node.right),Node.Contents) else (Set#Empty() : Set (BoxType) )))) && ((!(read($Heap_$16,n#15_$2,Node.left) == null)) ==> ((forall  i#16_$2 : Integer :: ( true ==> (read($Heap_$16,read($Heap_$16,n#15_$2,Node.left),Node.Contents)[$Box(i#16_$2)] ==> (i#16_$2 < read($Heap_$16,n#15_$2,Node.value))) ))))) && ((!(read($Heap_$16,n#15_$2,Node.right) == null)) ==> ((forall  i#17_$1 : Integer :: ( true ==> (read($Heap_$16,read($Heap_$16,n#15_$2,Node.right),Node.Contents)[$Box(i#17_$1)] ==> (read($Heap_$16,n#15_$2,Node.value) < i#17_$1)) ))))))) )));
	assume (forall  $h0_$6 : HeapType, $h1_$6 : HeapType, n#15_$3 : ref :: {$HeapSucc($h0_$6,$h1_$6),Node.Valid($h1_$6,n#15_$3)} ( (((($IsGoodHeap($h0_$6) && $IsGoodHeap($h1_$6)) && ((n#15_$3 == null) || (read($h0_$6,n#15_$3,alloc) && (dtype(n#15_$3) == class.Node)))) && ((n#15_$3 == null) || (read($h1_$6,n#15_$3,alloc) && (dtype(n#15_$3) == class.Node)))) && $HeapSucc($h0_$6,$h1_$6)) ==> (((forall<alpha> $o_$11 : ref, $f_$6 : Field (alpha)  :: ( ((((!($o_$11 == null)) && read($h0_$6,$o_$11,alloc)) && read($h1_$6,$o_$11,alloc)) && (($o_$11 == n#15_$3) || ((!(n#15_$3 == null)) && read($h0_$6,n#15_$3,Node.Repr)[$Box($o_$11)]))) ==> (read($h0_$6,$o_$11,$f_$6) == read($h1_$6,$o_$11,$f_$6)) ))) ==> (Node.Valid($h0_$6,n#15_$3) <==> Node.Valid($h1_$6,n#15_$3))) ));
	assume (forall  $h0_$7 : HeapType, $h1_$7 : HeapType, n#15_$4 : ref :: {$HeapSucc($h0_$7,$h1_$7),Node.Valid#limited($h1_$7,n#15_$4)} ( (((($IsGoodHeap($h0_$7) && $IsGoodHeap($h1_$7)) && ((n#15_$4 == null) || (read($h0_$7,n#15_$4,alloc) && (dtype(n#15_$4) == class.Node)))) && ((n#15_$4 == null) || (read($h1_$7,n#15_$4,alloc) && (dtype(n#15_$4) == class.Node)))) && $HeapSucc($h0_$7,$h1_$7)) ==> (((forall<alpha> $o_$12 : ref, $f_$7 : Field (alpha)  :: ( ((((!($o_$12 == null)) && read($h0_$7,$o_$12,alloc)) && read($h1_$7,$o_$12,alloc)) && (($o_$12 == n#15_$4) || ((!(n#15_$4 == null)) && read($h0_$7,n#15_$4,Node.Repr)[$Box($o_$12)]))) ==> (read($h0_$7,$o_$12,$f_$7) == read($h1_$7,$o_$12,$f_$7)) ))) ==> (Node.Valid#limited($h0_$7,n#15_$4) <==> Node.Valid#limited($h1_$7,n#15_$4))) ));
	assume (forall  $Heap_$17 : HeapType, a#44 : Integer, b#45 : Integer :: {Math.max#2($Heap_$17,a#44,b#45)} ( Math.max#2($Heap_$17,a#44,b#45) == Math.max($Heap_$17,a#44,b#45) ));
	assume (forall  $Heap_$18 : HeapType, a#44_$0 : Integer, b#45_$0 : Integer :: {Math.max($Heap_$18,a#44_$0,b#45_$0)} ( Math.max($Heap_$18,a#44_$0,b#45_$0) == Math.max#limited($Heap_$18,a#44_$0,b#45_$0) ));
	assume ((0 < $ModuleContextHeight) || ((0 == $ModuleContextHeight) && ((3 <= $FunctionContextHeight) || $InMethodContext))) ==> ((forall  $Heap_$19 : HeapType, a#44_$1 : Integer, b#45_$1 : Integer :: {Math.max($Heap_$19,a#44_$1,b#45_$1)} ( (Math.max#canCall($Heap_$19,a#44_$1,b#45_$1) || ((((((!(0 == $ModuleContextHeight)) || (!(3 == $FunctionContextHeight))) || $InMethodContext) && $IsGoodHeap($Heap_$19)) && (0 <= a#44_$1)) && (0 <= b#45_$1))) ==> ((((((((a#44_$1 < b#45_$1) ==> true) && ((a#44_$1 >= b#45_$1) ==> true)) && (Math.max($Heap_$19,a#44_$1,b#45_$1) == (if (a#44_$1 < b#45_$1) then b#45_$1 else a#44_$1))) && ((a#44_$1 == b#45_$1) ==> ((Math.max#limited($Heap_$19,a#44_$1,b#45_$1) == a#44_$1) && (a#44_$1 == b#45_$1)))) && (a#44_$1 <= Math.max#limited($Heap_$19,a#44_$1,b#45_$1))) && (b#45_$1 <= Math.max#limited($Heap_$19,a#44_$1,b#45_$1))) && (0 <= Math.max($Heap_$19,a#44_$1,b#45_$1))) )));
	assume ((0 < $ModuleContextHeight) || ((0 == $ModuleContextHeight) && ((3 <= $FunctionContextHeight) || $InMethodContext))) ==> ((forall  $Heap_$20 : HeapType, a#44_$2 : Integer, b#45_$2 : Integer :: {Math.max#2($Heap_$20,a#44_$2,b#45_$2)} ( (Math.max#canCall($Heap_$20,a#44_$2,b#45_$2) || ((((((!(0 == $ModuleContextHeight)) || (!(3 == $FunctionContextHeight))) || $InMethodContext) && $IsGoodHeap($Heap_$20)) && (0 <= a#44_$2)) && (0 <= b#45_$2))) ==> (Math.max#2($Heap_$20,a#44_$2,b#45_$2) == (if (a#44_$2 < b#45_$2) then b#45_$2 else a#44_$2)) )));
	assume (forall  $h0_$8 : HeapType, $h1_$8 : HeapType, a#44_$3 : Integer, b#45_$3 : Integer :: {$HeapSucc($h0_$8,$h1_$8),Math.max($h1_$8,a#44_$3,b#45_$3)} ( (((((($IsGoodHeap($h0_$8) && $IsGoodHeap($h1_$8)) && (0 <= a#44_$3)) && (0 <= a#44_$3)) && (0 <= b#45_$3)) && (0 <= b#45_$3)) && $HeapSucc($h0_$8,$h1_$8)) ==> (((forall<alpha> $o_$13 : ref, $f_$8 : Field (alpha)  :: ( false ==> (read($h0_$8,$o_$13,$f_$8) == read($h1_$8,$o_$13,$f_$8)) ))) ==> (Math.max($h0_$8,a#44_$3,b#45_$3) == Math.max($h1_$8,a#44_$3,b#45_$3))) ));
	assume (forall  $h0_$9 : HeapType, $h1_$9 : HeapType, a#44_$4 : Integer, b#45_$4 : Integer :: {$HeapSucc($h0_$9,$h1_$9),Math.max#limited($h1_$9,a#44_$4,b#45_$4)} ( (((((($IsGoodHeap($h0_$9) && $IsGoodHeap($h1_$9)) && (0 <= a#44_$4)) && (0 <= a#44_$4)) && (0 <= b#45_$4)) && (0 <= b#45_$4)) && $HeapSucc($h0_$9,$h1_$9)) ==> (((forall<alpha> $o_$14 : ref, $f_$9 : Field (alpha)  :: ( false ==> (read($h0_$9,$o_$14,$f_$9) == read($h1_$9,$o_$14,$f_$9)) ))) ==> (Math.max#limited($h0_$9,a#44_$4,b#45_$4) == Math.max#limited($h1_$9,a#44_$4,b#45_$4))) ));
	assume (forall<alpha> $o_$15 : ref, $f_$10 : Field (alpha) , this_$2 : ref, null_$0 : ref, $Heap_$21 : HeapType, alloc_$0 : Field (Boolean)  :: {lambda#0(this_$2,null_$0,$Heap_$21,alloc_$0)[$o_$15,$f_$10]} ( lambda#0(this_$2,null_$0,$Heap_$21,alloc_$0)[$o_$15,$f_$10] <==> (((!($o_$15 == null_$0)) && read($Heap_$21,$o_$15,alloc_$0)) ==> ($o_$15 == this_$2)) ));
	assume (forall<alpha> $o_$16 : ref, $f_$11 : Field (alpha) , this_$3 : ref, null_$1 : ref, $Heap_$22 : HeapType, alloc_$1 : Field (Boolean)  :: {lambda#1(this_$3,null_$1,$Heap_$22,alloc_$1)[$o_$16,$f_$11]} ( lambda#1(this_$3,null_$1,$Heap_$22,alloc_$1)[$o_$16,$f_$11] <==> (((!($o_$16 == null_$1)) && read($Heap_$22,$o_$16,alloc_$1)) ==> ($o_$16 == this_$3)) ));
	assume (forall<alpha> $o_$17 : ref, $f_$12 : Field (alpha) , AVLTree.Repr_$0 : Field (Set (BoxType) ) , null_$2 : ref, $Heap_$23 : HeapType, alloc_$2 : Field (Boolean) , this_$4 : ref :: {lambda#2(AVLTree.Repr_$0,null_$2,$Heap_$23,alloc_$2,this_$4)[$o_$17,$f_$12]} ( lambda#2(AVLTree.Repr_$0,null_$2,$Heap_$23,alloc_$2,this_$4)[$o_$17,$f_$12] <==> (((!($o_$17 == null_$2)) && read($Heap_$23,$o_$17,alloc_$2)) ==> (($o_$17 == this_$4) || read($Heap_$23,this_$4,AVLTree.Repr_$0)[$Box($o_$17)])) ));
	assume (forall<alpha> $o_$18 : ref, $f_$13 : Field (alpha) , alloc_$3 : Field (Boolean) , null_$3 : ref, $Heap_$24 : HeapType :: {lambda#3(alloc_$3,null_$3,$Heap_$24)[$o_$18,$f_$13]} ( lambda#3(alloc_$3,null_$3,$Heap_$24)[$o_$18,$f_$13] <==> (((!($o_$18 == null_$3)) && read($Heap_$24,$o_$18,alloc_$3)) ==> false) ));
	assume (forall<alpha> $o_$19 : ref, $f_$14 : Field (alpha) , alloc_$4 : Field (Boolean) , null_$4 : ref, $Heap_$25 : HeapType :: {lambda#4(alloc_$4,null_$4,$Heap_$25)[$o_$19,$f_$14]} ( lambda#4(alloc_$4,null_$4,$Heap_$25)[$o_$19,$f_$14] <==> (((!($o_$19 == null_$4)) && read($Heap_$25,$o_$19,alloc_$4)) ==> false) ));
	assume (forall<alpha> $o_$20 : ref, $f_$15 : Field (alpha) , AVLTree.Repr_$1 : Field (Set (BoxType) ) , null_$5 : ref, $Heap_$26 : HeapType, alloc_$5 : Field (Boolean) , this_$5 : ref :: {lambda#5(AVLTree.Repr_$1,null_$5,$Heap_$26,alloc_$5,this_$5)[$o_$20,$f_$15]} ( lambda#5(AVLTree.Repr_$1,null_$5,$Heap_$26,alloc_$5,this_$5)[$o_$20,$f_$15] <==> (((!($o_$20 == null_$5)) && read($Heap_$26,$o_$20,alloc_$5)) ==> (($o_$20 == this_$5) || read($Heap_$26,this_$5,AVLTree.Repr_$1)[$Box($o_$20)])) ));
	assume (forall<alpha> $o_$21 : ref, $f_$16 : Field (alpha) , AVLTree.Repr_$2 : Field (Set (BoxType) ) , null_$6 : ref, $Heap_$27 : HeapType, alloc_$6 : Field (Boolean) , this_$6 : ref :: {lambda#6(AVLTree.Repr_$2,null_$6,$Heap_$27,alloc_$6,this_$6)[$o_$21,$f_$16]} ( lambda#6(AVLTree.Repr_$2,null_$6,$Heap_$27,alloc_$6,this_$6)[$o_$21,$f_$16] <==> (((!($o_$21 == null_$6)) && read($Heap_$27,$o_$21,alloc_$6)) ==> (($o_$21 == this_$6) || read($Heap_$27,this_$6,AVLTree.Repr_$2)[$Box($o_$21)])) ));
	assume (forall<alpha> $o_$22 : ref, $f_$17 : Field (alpha) , Node.Repr_$0 : Field (Set (BoxType) ) , null_$7 : ref, $Heap_$28 : HeapType, alloc_$7 : Field (Boolean) , t#6_$0 : ref :: {lambda#7(Node.Repr_$0,null_$7,$Heap_$28,alloc_$7,t#6_$0)[$o_$22,$f_$17]} ( lambda#7(Node.Repr_$0,null_$7,$Heap_$28,alloc_$7,t#6_$0)[$o_$22,$f_$17] <==> (((!($o_$22 == null_$7)) && read($Heap_$28,$o_$22,alloc_$7)) ==> ((!(t#6_$0 == null_$7)) && read($Heap_$28,t#6_$0,Node.Repr_$0)[$Box($o_$22)])) ));
	assume (forall<alpha> $o_$23 : ref, $f_$18 : Field (alpha) , Node.Repr_$1 : Field (Set (BoxType) ) , null_$8 : ref, $Heap_$29 : HeapType, alloc_$8 : Field (Boolean) , t#6_$1 : ref :: {lambda#8(Node.Repr_$1,null_$8,$Heap_$29,alloc_$8,t#6_$1)[$o_$23,$f_$18]} ( lambda#8(Node.Repr_$1,null_$8,$Heap_$29,alloc_$8,t#6_$1)[$o_$23,$f_$18] <==> (((!($o_$23 == null_$8)) && read($Heap_$29,$o_$23,alloc_$8)) ==> ((!(t#6_$1 == null_$8)) && read($Heap_$29,t#6_$1,Node.Repr_$1)[$Box($o_$23)])) ));
	assume (forall<alpha> $o_$24 : ref, $f_$19 : Field (alpha) , this_$7 : ref, null_$9 : ref, $Heap_$30 : HeapType, alloc_$9 : Field (Boolean)  :: {lambda#9(this_$7,null_$9,$Heap_$30,alloc_$9)[$o_$24,$f_$19]} ( lambda#9(this_$7,null_$9,$Heap_$30,alloc_$9)[$o_$24,$f_$19] <==> (((!($o_$24 == null_$9)) && read($Heap_$30,$o_$24,alloc_$9)) ==> ($o_$24 == this_$7)) ));
	assume (forall<alpha> $o_$25 : ref, $f_$20 : Field (alpha) , this_$8 : ref, null_$10 : ref, $Heap_$31 : HeapType, alloc_$10 : Field (Boolean)  :: {lambda#10(this_$8,null_$10,$Heap_$31,alloc_$10)[$o_$25,$f_$20]} ( lambda#10(this_$8,null_$10,$Heap_$31,alloc_$10)[$o_$25,$f_$20] <==> (((!($o_$25 == null_$10)) && read($Heap_$31,$o_$25,alloc_$10)) ==> ($o_$25 == this_$8)) ));
	assume (forall<alpha> $o_$26 : ref, $f_$21 : Field (alpha) , Node.Repr_$2 : Field (Set (BoxType) ) , null_$11 : ref, $Heap_$32 : HeapType, alloc_$11 : Field (Boolean) , n#12_$5 : ref :: {lambda#11(Node.Repr_$2,null_$11,$Heap_$32,alloc_$11,n#12_$5)[$o_$26,$f_$21]} ( lambda#11(Node.Repr_$2,null_$11,$Heap_$32,alloc_$11,n#12_$5)[$o_$26,$f_$21] <==> (((!($o_$26 == null_$11)) && read($Heap_$32,$o_$26,alloc_$11)) ==> (($o_$26 == n#12_$5) || ((!(n#12_$5 == null_$11)) && read($Heap_$32,n#12_$5,Node.Repr_$2)[$Box($o_$26)]))) ));
	assume (forall<alpha> $o_$27 : ref, $f_$22 : Field (alpha) , Node.Repr_$3 : Field (Set (BoxType) ) , null_$12 : ref, $Heap_$33 : HeapType, alloc_$12 : Field (Boolean) , n#13_$5 : ref :: {lambda#12(Node.Repr_$3,null_$12,$Heap_$33,alloc_$12,n#13_$5)[$o_$27,$f_$22]} ( lambda#12(Node.Repr_$3,null_$12,$Heap_$33,alloc_$12,n#13_$5)[$o_$27,$f_$22] <==> (((!($o_$27 == null_$12)) && read($Heap_$33,$o_$27,alloc_$12)) ==> (($o_$27 == n#13_$5) || ((!(n#13_$5 == null_$12)) && read($Heap_$33,n#13_$5,Node.Repr_$3)[$Box($o_$27)]))) ));
	assume (forall<alpha> $o_$28 : ref, $f_$23 : Field (alpha) , Node.Repr_$4 : Field (Set (BoxType) ) , null_$13 : ref, $Heap_$34 : HeapType, alloc_$13 : Field (Boolean) , n#14_$5 : ref :: {lambda#13(Node.Repr_$4,null_$13,$Heap_$34,alloc_$13,n#14_$5)[$o_$28,$f_$23]} ( lambda#13(Node.Repr_$4,null_$13,$Heap_$34,alloc_$13,n#14_$5)[$o_$28,$f_$23] <==> (((!($o_$28 == null_$13)) && read($Heap_$34,$o_$28,alloc_$13)) ==> ((!(n#14_$5 == null_$13)) && read($Heap_$34,n#14_$5,Node.Repr_$4)[$Box($o_$28)])) ));
	assume (forall<alpha> $o_$29 : ref, $f_$24 : Field (alpha) , Node.Repr_$5 : Field (Set (BoxType) ) , null_$14 : ref, $Heap_$35 : HeapType, alloc_$14 : Field (Boolean) , n#15_$5 : ref :: {lambda#14(Node.Repr_$5,null_$14,$Heap_$35,alloc_$14,n#15_$5)[$o_$29,$f_$24]} ( lambda#14(Node.Repr_$5,null_$14,$Heap_$35,alloc_$14,n#15_$5)[$o_$29,$f_$24] <==> (((!($o_$29 == null_$14)) && read($Heap_$35,$o_$29,alloc_$14)) ==> (($o_$29 == n#15_$5) || ((!(n#15_$5 == null_$14)) && read($Heap_$35,n#15_$5,Node.Repr_$5)[$Box($o_$29)]))) ));
	assume (forall<alpha> $o_$30 : ref, $f_$25 : Field (alpha) , Node.left_$0 : Field (ref) , null_$15 : ref, $Heap_$36 : HeapType, alloc_$15 : Field (Boolean) , n#18 : ref :: {lambda#15(Node.left_$0,null_$15,$Heap_$36,alloc_$15,n#18)[$o_$30,$f_$25]} ( lambda#15(Node.left_$0,null_$15,$Heap_$36,alloc_$15,n#18)[$o_$30,$f_$25] <==> (((!($o_$30 == null_$15)) && read($Heap_$36,$o_$30,alloc_$15)) ==> (($o_$30 == n#18) || ((!(n#18 == null_$15)) && ($o_$30 == read($Heap_$36,n#18,Node.left_$0))))) ));
	assume (forall<alpha> $o_$31 : ref, $f_$26 : Field (alpha) , Node.left_$1 : Field (ref) , null_$16 : ref, $Heap_$37 : HeapType, alloc_$16 : Field (Boolean) , n#18_$0 : ref :: {lambda#16(Node.left_$1,null_$16,$Heap_$37,alloc_$16,n#18_$0)[$o_$31,$f_$26]} ( lambda#16(Node.left_$1,null_$16,$Heap_$37,alloc_$16,n#18_$0)[$o_$31,$f_$26] <==> (((!($o_$31 == null_$16)) && read($Heap_$37,$o_$31,alloc_$16)) ==> (($o_$31 == n#18_$0) || ((!(n#18_$0 == null_$16)) && ($o_$31 == read($Heap_$37,n#18_$0,Node.left_$1))))) ));
	assume (forall<alpha> $o_$32 : ref, $f_$27 : Field (alpha) , Node.right_$0 : Field (ref) , null_$17 : ref, $Heap_$38 : HeapType, alloc_$17 : Field (Boolean) , n#23 : ref :: {lambda#17(Node.right_$0,null_$17,$Heap_$38,alloc_$17,n#23)[$o_$32,$f_$27]} ( lambda#17(Node.right_$0,null_$17,$Heap_$38,alloc_$17,n#23)[$o_$32,$f_$27] <==> (((!($o_$32 == null_$17)) && read($Heap_$38,$o_$32,alloc_$17)) ==> (($o_$32 == n#23) || ((!(n#23 == null_$17)) && ($o_$32 == read($Heap_$38,n#23,Node.right_$0))))) ));
	assume (forall<alpha> $o_$33 : ref, $f_$28 : Field (alpha) , Node.right_$1 : Field (ref) , null_$18 : ref, $Heap_$39 : HeapType, alloc_$18 : Field (Boolean) , n#23_$0 : ref :: {lambda#18(Node.right_$1,null_$18,$Heap_$39,alloc_$18,n#23_$0)[$o_$33,$f_$28]} ( lambda#18(Node.right_$1,null_$18,$Heap_$39,alloc_$18,n#23_$0)[$o_$33,$f_$28] <==> (((!($o_$33 == null_$18)) && read($Heap_$39,$o_$33,alloc_$18)) ==> (($o_$33 == n#23_$0) || ((!(n#23_$0 == null_$18)) && ($o_$33 == read($Heap_$39,n#23_$0,Node.right_$1))))) ));
	assume (forall<alpha> $o_$34 : ref, $f_$29 : Field (alpha) , Node.left_$2 : Field (ref) , null_$19 : ref, $Heap_$40 : HeapType, alloc_$19 : Field (Boolean) , n#28 : ref :: {lambda#19(Node.left_$2,null_$19,$Heap_$40,alloc_$19,n#28)[$o_$34,$f_$29]} ( lambda#19(Node.left_$2,null_$19,$Heap_$40,alloc_$19,n#28)[$o_$34,$f_$29] <==> (((!($o_$34 == null_$19)) && read($Heap_$40,$o_$34,alloc_$19)) ==> (($o_$34 == n#28) || ((!(n#28 == null_$19)) && ($o_$34 == read($Heap_$40,n#28,Node.left_$2))))) ));
	assume (forall<alpha> $o_$35 : ref, $f_$30 : Field (alpha) , Node.left_$3 : Field (ref) , null_$20 : ref, $Heap_$41 : HeapType, alloc_$20 : Field (Boolean) , n#28_$0 : ref :: {lambda#20(Node.left_$3,null_$20,$Heap_$41,alloc_$20,n#28_$0)[$o_$35,$f_$30]} ( lambda#20(Node.left_$3,null_$20,$Heap_$41,alloc_$20,n#28_$0)[$o_$35,$f_$30] <==> (((!($o_$35 == null_$20)) && read($Heap_$41,$o_$35,alloc_$20)) ==> (($o_$35 == n#28_$0) || ((!(n#28_$0 == null_$20)) && ($o_$35 == read($Heap_$41,n#28_$0,Node.left_$3))))) ));
	assume (forall<alpha> $o_$36 : ref, $f_$31 : Field (alpha) , Node.right_$2 : Field (ref) , null_$21 : ref, $Heap_$42 : HeapType, alloc_$21 : Field (Boolean) , n#33 : ref :: {lambda#21(Node.right_$2,null_$21,$Heap_$42,alloc_$21,n#33)[$o_$36,$f_$31]} ( lambda#21(Node.right_$2,null_$21,$Heap_$42,alloc_$21,n#33)[$o_$36,$f_$31] <==> (((!($o_$36 == null_$21)) && read($Heap_$42,$o_$36,alloc_$21)) ==> (($o_$36 == n#33) || ((!(n#33 == null_$21)) && ($o_$36 == read($Heap_$42,n#33,Node.right_$2))))) ));
	assume (forall<alpha> $o_$37 : ref, $f_$32 : Field (alpha) , Node.right_$3 : Field (ref) , null_$22 : ref, $Heap_$43 : HeapType, alloc_$22 : Field (Boolean) , n#33_$0 : ref :: {lambda#22(Node.right_$3,null_$22,$Heap_$43,alloc_$22,n#33_$0)[$o_$37,$f_$32]} ( lambda#22(Node.right_$3,null_$22,$Heap_$43,alloc_$22,n#33_$0)[$o_$37,$f_$32] <==> (((!($o_$37 == null_$22)) && read($Heap_$43,$o_$37,alloc_$22)) ==> (($o_$37 == n#33_$0) || ((!(n#33_$0 == null_$22)) && ($o_$37 == read($Heap_$43,n#33_$0,Node.right_$3))))) ));
	assume (forall<alpha> $o_$38 : ref, $f_$33 : Field (alpha) , x#40 : ref, null_$23 : ref, $Heap_$44 : HeapType, alloc_$23 : Field (Boolean)  :: {lambda#23(x#40,null_$23,$Heap_$44,alloc_$23)[$o_$38,$f_$33]} ( lambda#23(x#40,null_$23,$Heap_$44,alloc_$23)[$o_$38,$f_$33] <==> (((!($o_$38 == null_$23)) && read($Heap_$44,$o_$38,alloc_$23)) ==> ($o_$38 == x#40)) ));
	assume (forall<alpha> $o_$39 : ref, $f_$34 : Field (alpha) , x#40_$0 : ref, null_$24 : ref, $Heap_$45 : HeapType, alloc_$24 : Field (Boolean)  :: {lambda#24(x#40_$0,null_$24,$Heap_$45,alloc_$24)[$o_$39,$f_$34]} ( lambda#24(x#40_$0,null_$24,$Heap_$45,alloc_$24)[$o_$39,$f_$34] <==> (((!($o_$39 == null_$24)) && read($Heap_$45,$o_$39,alloc_$24)) ==> ($o_$39 == x#40_$0)) ));
	assume (forall<alpha> $o_$40 : ref, $f_$35 : Field (alpha) , alloc_$25 : Field (Boolean) , null_$25 : ref, $Heap_$46 : HeapType :: {lambda#25(alloc_$25,null_$25,$Heap_$46)[$o_$40,$f_$35]} ( lambda#25(alloc_$25,null_$25,$Heap_$46)[$o_$40,$f_$35] <==> (((!($o_$40 == null_$25)) && read($Heap_$46,$o_$40,alloc_$25)) ==> false) ));
	goto PreconditionGeneratedEntry;
$exit:
	assume false;
PreconditionGeneratedEntry:
	assume $IsGoodHeap($Heap);
	assume ((!(this == null)) && read($Heap,this,alloc)) && (dtype(this) == class.AVLTree);
	assume (t#6 == null) || (read($Heap,t#6,alloc) && (dtype(t#6) == class.Node));
	assume (r#8 == null) || (read($Heap,r#8,alloc) && (dtype(r#8) == class.Node));
	assume (0 == $ModuleContextHeight) && $InMethodContext;
	goto anon0;
anon0:
	assume $_Frame_$_0 == lambda#7(Node.Repr,null,$Heap,alloc,t#6);
	assume Node.Valid#canCall($Heap,t#6);
	if ($_$_condition) { goto anon30_Then; } else { goto anon30_Else; }
anon30_Then:
	assume Node.Valid($Heap,t#6);
	assert  Node.Valid($Heap,t#6);
	assume Node.BalanceValid#canCall($Heap,t#6);
	if ($_$_condition_$0) { goto anon31_Then; } else { goto anon31_Else; }
anon30_Else:
	assume !Node.Valid($Heap,t#6);
	if ($_$_condition_$1) { goto anon31_Then; } else { goto anon31_Else; }
anon31_Then:
	assume Node.Valid($Heap,t#6) && Node.BalanceValid($Heap,t#6);
	assert  Node.Valid($Heap,t#6) && Node.BalanceValid($Heap,t#6);
	assume Node.Balanced#canCall($Heap,t#6);
	goto anon4;
anon31_Else:
	assume !(Node.Valid($Heap,t#6) && Node.BalanceValid($Heap,t#6));
	goto anon4;
anon4:
	assume (Node.Valid($Heap,t#6) && Node.BalanceValid($Heap,t#6)) && Node.Balanced($Heap,t#6);
	if ($_$_condition_$2) { goto anon32_Then; } else { goto anon32_Else; }
anon32_Then:
	assume !(t#6 == null);
	assert  !(t#6 == null);
	goto anon7;
anon32_Else:
	assume t#6 == null;
	goto anon7;
anon7:
	assume $IsGoodHeap($Heap_$_0);
	assume (forall<alpha> $o_$41 : ref, $f_$36 : Field (alpha)  :: {read($Heap_$_0,$o_$41,$f_$36)} ( ((!($o_$41 == null)) && read($Heap,$o_$41,alloc)) ==> ((read($Heap_$_0,$o_$41,$f_$36) == read($Heap,$o_$41,$f_$36)) || ((!(t#6 == null)) && read($Heap,t#6,Node.Repr)[$Box($o_$41)])) ));
	assume $HeapSucc($Heap,$Heap_$_0);
	assume (r#8_$_0 == null) || (read($Heap_$_0,r#8_$_0,alloc) && (dtype(r#8_$_0) == class.Node));
	if ($_$_condition_$3) { goto anon33_Then; } else { goto anon33_Else; }
anon33_Then:
	assume !(r#8_$_0 == null);
	if ($_$_condition_$4) { goto anon34_Then; } else { goto anon34_Else; }
anon33_Else:
	assume r#8_$_0 == null;
	goto anon12;
anon34_Then:
	assume !(t#6 == null);
	assert  !(t#6 == null);
	if ($_$_condition_$5) { goto anon35_Then; } else { goto anon35_Else; }
anon34_Else:
	assume t#6 == null;
	if ($_$_condition_$6) { goto anon35_Then; } else { goto anon35_Else; }
anon12:
	assume (!(r#8_$_0 == null)) && ((((!(t#6 == null)) && read($Heap,t#6,Node.Repr)[$Box(r#8_$_0)]) || (r#8_$_0 == null)) || (!read($Heap,r#8_$_0,alloc)));
	if ($_$_condition_$7) { goto anon36_Then; } else { goto anon36_Else; }
anon35_Then:
	assume !((!(t#6 == null)) && read($Heap,t#6,Node.Repr)[$Box(r#8_$_0)]);
	goto anon12;
anon35_Else:
	assume (!(t#6 == null)) && read($Heap,t#6,Node.Repr)[$Box(r#8_$_0)];
	goto anon12;
anon36_Then:
	assume !(t#6 == null);
	assert  !(r#8_$_0 == null);
	assert  !(t#6 == null);
	if ($_$_condition_$8) { goto anon37_Then; } else { goto anon37_Else; }
anon36_Else:
	assume t#6 == null;
	goto anon15;
anon37_Then:
	assume (forall  $o_$42 : ref :: ( (((!($o_$42 == null)) && read($Heap_$_0,r#8_$_0,Node.Repr)[$Box($o_$42)]) && (!read($Heap,t#6,Node.Repr)[$Box($o_$42)])) ==> (!read($Heap,$o_$42,alloc)) ));
	assert  !(r#8_$_0 == null);
	assert  !(t#6 == null);
	goto anon15;
anon37_Else:
	assume !((forall  $o_$43 : ref :: ( (((!($o_$43 == null)) && read($Heap_$_0,r#8_$_0,Node.Repr)[$Box($o_$43)]) && (!read($Heap,t#6,Node.Repr)[$Box($o_$43)])) ==> (!read($Heap,$o_$43,alloc)) )));
	goto anon15;
anon15:
	assume (!(t#6 == null)) ==> (((forall  $o_$44 : ref :: ( (((!($o_$44 == null)) && read($Heap_$_0,r#8_$_0,Node.Repr)[$Box($o_$44)]) && (!read($Heap,t#6,Node.Repr)[$Box($o_$44)])) ==> (!read($Heap,$o_$44,alloc)) ))) && Set#Equal(read($Heap_$_0,r#8_$_0,Node.Contents),Set#Union(read($Heap,t#6,Node.Contents),Set#UnionOne((Set#Empty() : Set (BoxType) ),$Box(key#7)))));
	if ($_$_condition_$9) { goto anon38_Then; } else { goto anon38_Else; }
anon38_Then:
	assume t#6 == null;
	assert  !(r#8_$_0 == null);
	if ($_$_condition_$10) { goto anon39_Then; } else { goto anon39_Else; }
anon38_Else:
	assume !(t#6 == null);
	goto anon18;
anon39_Then:
	assume (forall  $o_$45 : ref :: ( ((!($o_$45 == null)) && read($Heap_$_0,r#8_$_0,Node.Repr)[$Box($o_$45)]) ==> (!read($Heap,$o_$45,alloc)) ));
	assert  !(r#8_$_0 == null);
	goto anon18;
anon39_Else:
	assume !((forall  $o_$46 : ref :: ( ((!($o_$46 == null)) && read($Heap_$_0,r#8_$_0,Node.Repr)[$Box($o_$46)]) ==> (!read($Heap,$o_$46,alloc)) )));
	goto anon18;
anon18:
	assume (t#6 == null) ==> (((forall  $o_$47 : ref :: ( ((!($o_$47 == null)) && read($Heap_$_0,r#8_$_0,Node.Repr)[$Box($o_$47)]) ==> (!read($Heap,$o_$47,alloc)) ))) && Set#Equal(read($Heap_$_0,r#8_$_0,Node.Contents),Set#UnionOne((Set#Empty() : Set (BoxType) ),$Box(key#7))));
	assume Node.Valid#canCall($Heap_$_0,r#8_$_0);
	if ($_$_condition_$11) { goto anon40_Then; } else { goto anon40_Else; }
anon40_Then:
	assume Node.Valid($Heap_$_0,r#8_$_0);
	assert  Node.Valid($Heap_$_0,r#8_$_0);
	assume Node.BalanceValid#canCall($Heap_$_0,r#8_$_0);
	if ($_$_condition_$12) { goto anon41_Then; } else { goto anon41_Else; }
anon40_Else:
	assume !Node.Valid($Heap_$_0,r#8_$_0);
	if ($_$_condition_$13) { goto anon41_Then; } else { goto anon41_Else; }
anon41_Then:
	assume Node.Valid($Heap_$_0,r#8_$_0) && Node.BalanceValid($Heap_$_0,r#8_$_0);
	assert  Node.Valid($Heap_$_0,r#8_$_0) && Node.BalanceValid($Heap_$_0,r#8_$_0);
	assume Node.Balanced#canCall($Heap_$_0,r#8_$_0);
	goto anon22;
anon41_Else:
	assume !(Node.Valid($Heap_$_0,r#8_$_0) && Node.BalanceValid($Heap_$_0,r#8_$_0));
	goto anon22;
anon22:
	assume (Node.Valid($Heap_$_0,r#8_$_0) && Node.BalanceValid($Heap_$_0,r#8_$_0)) && Node.Balanced($Heap_$_0,r#8_$_0);
	assert  Node.Valid($Heap_$_0,r#8_$_0);
	assume Node.Height#canCall($Heap_$_0,r#8_$_0);
	assert  (t#6 == null) || (read($Heap,t#6,alloc) && (dtype(t#6) == class.Node));
	assert  Node.Valid($Heap,t#6);
	assume Node.Height#canCall($Heap,t#6);
	if ($_$_condition_$14) { goto anon42_Then; } else { goto anon42_Else; }
anon42_Then:
	assume (Node.Height($Heap_$_0,r#8_$_0) - Node.Height($Heap,t#6)) == deltaH#9_$_0;
	if ($_$_condition_$15) { goto anon43_Then; } else { goto anon43_Else; }
anon42_Else:
	assume !((Node.Height($Heap_$_0,r#8_$_0) - Node.Height($Heap,t#6)) == deltaH#9_$_0);
	goto anon25;
anon43_Then:
	assume !(deltaH#9_$_0 == 0);
	goto anon25;
anon43_Else:
	assume deltaH#9_$_0 == 0;
	goto anon25;
anon25:
	assume ((Node.Height($Heap_$_0,r#8_$_0) - Node.Height($Heap,t#6)) == deltaH#9_$_0) && ((deltaH#9_$_0 == 0) || (deltaH#9_$_0 == 1));
	if ($_$_condition_$16) { goto anon44_Then; } else { goto anon44_Else; }
anon44_Then:
	assume !(t#6 == null);
	if ($_$_condition_$17) { goto anon45_Then; } else { goto anon45_Else; }
anon44_Else:
	assume t#6 == null;
	if ($_$_condition_$18) { goto anon45_Then; } else { goto anon45_Else; }
anon45_Then:
	assume (!(t#6 == null)) && (deltaH#9_$_0 == 1);
	assert  !(r#8_$_0 == null);
	goto anon29;
anon45_Else:
	assume !((!(t#6 == null)) && (deltaH#9_$_0 == 1));
	goto anon29;
anon29:
	assume ((!(t#6 == null)) && (deltaH#9_$_0 == 1)) ==> (!(read($Heap_$_0,r#8_$_0,Node.balance) == 0));
	goto $exit;
}
