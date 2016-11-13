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
const $ModuleContextHeight : int;
const $FunctionContextHeight : int;
const $InMethodContext : bool;
const unique alloc : Field (bool);
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
function MultiSet#Singleton <T> (T) : MultiSet (T) ;
function MultiSet#UnionOne <T> (MultiSet (T) ,T) : MultiSet (T) ;
function MultiSet#Union <T> (MultiSet (T) ,MultiSet (T) ) : MultiSet (T) ;
function MultiSet#Intersection <T> (MultiSet (T) ,MultiSet (T) ) : MultiSet (T) ;
function MultiSet#Difference <T> (MultiSet (T) ,MultiSet (T) ) : MultiSet (T) ;
function MultiSet#Equal <T> (MultiSet (T) ,MultiSet (T) ) : bool;
function MultiSet#FromSet <T> (Set (T) ) : MultiSet (T) ;
function Seq#Length <T> (Seq (T)) : int;
function Seq#Empty <T> () : Seq (T);
function Seq#Singleton <T> (T) : Seq (T);
function Seq#Build <T> (Seq (T),int,T,int) : Seq (T);
function Seq#Append <T> (Seq (T),Seq (T)) : Seq (T);
function Seq#Index <T> (Seq (T),int) : T;
function Seq#Update <T> (Seq (T),int,T) : Seq (T);
function Seq#Contains <T> (Seq (T),T) : bool;
function Seq#Equal <T> (Seq (T),Seq (T)) : bool;
function Seq#Take <T> (Seq (T),int) : Seq (T);
function Seq#Drop <T> (Seq (T),int) : Seq (T);
function Seq#FromArray(HeapType,ref) : Seq (BoxType);
function $Box <T> (T) : BoxType;
function $Unbox <T> (BoxType) : T;
function $IsCanonicalBoolBox(BoxType) : bool;
function dtype(ref) : ClassName;
function TypeTuple(ClassName,ClassName) : ClassName;
function TypeTupleCar(ClassName) : ClassName;
function TypeTupleCdr(ClassName) : ClassName;
function DtType(DatatypeType) : ClassName;
function FDim <T> (Field (T)) : int;
function IndexField(int) : Field (BoxType);
function MultiIndexField(Field (BoxType),int) : Field (BoxType);
function MultiIndexField_Inverse0 <T> (Field (T)) : Field (T);
function MultiIndexField_Inverse1 <T> (Field (T)) : int;
function DeclType <T> (Field (T)) : ClassName;
function DtAlloc(DatatypeType,HeapType) : bool;
function GenericAlloc(BoxType,HeapType) : bool;
function array.Length(ref) : int;
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
function lambda#7(Field (Set (BoxType) ),ref,HeapType,Field (bool),ref) : <alpha>[ref,Field (alpha)]bool;
var $Heap : HeapType;
procedure CheckWellformed$$AVLTree.InsertRecursion (this : ref,t#6 : ref,key#7 : int) returns (r#8 : ref,deltaH#9 : int)
{
	var $_Frame_$_0 : <beta>[ref,Field (beta)]bool;
	var $Heap_$_0 : HeapType;
	var r#8_$_0 : ref;
	var deltaH#9_$_0 : int;
	var $_$_condition : bool;
	var $_$_condition_$0 : bool;
	var $_$_condition_$2 : bool;
	var $_$_condition_$3 : bool;
	var $_$_condition_$4 : bool;
	var $_$_condition_$5 : bool;
	var $_$_condition_$7 : bool;
	var $_$_condition_$8 : bool;
	var $_$_condition_$9 : bool;
	var $_$_condition_$10 : bool;
	var $_$_condition_$11 : bool;
	var $_$_condition_$12 : bool;
	var $_$_condition_$14 : bool;
	var $_$_condition_$15 : bool;
	var $_$_condition_$16 : bool;
	var $_$_condition_$17 : bool;
$start:
	assume $$Language$Dafny;
	assume (forall  o_$20 : BoxType :: {(Set#Empty() : Set (BoxType) )[o_$20]} ( !(Set#Empty() : Set (BoxType) )[o_$20] ));
	assume (forall  r_$1_$0 : BoxType :: {Set#Singleton(r_$1_$0)} ( Set#Singleton(r_$1_$0)[r_$1_$0] ));
	assume (forall  r_$2_$0 : BoxType, o_$0_$0 : BoxType :: {Set#Singleton(r_$2_$0)[o_$0_$0]} ( Set#Singleton(r_$2_$0)[o_$0_$0] <==> (r_$2_$0 == o_$0_$0) ));
	assume (forall  a_$45 : Set (BoxType) , x_$16 : BoxType, o_$1_$0 : BoxType :: {Set#UnionOne(a_$45,x_$16)[o_$1_$0]} ( Set#UnionOne(a_$45,x_$16)[o_$1_$0] <==> ((o_$1_$0 == x_$16) || a_$45[o_$1_$0]) ));
	assume (forall  a_$0_$0 : Set (BoxType) , x_$0_$0 : BoxType :: {Set#UnionOne(a_$0_$0,x_$0_$0)} ( Set#UnionOne(a_$0_$0,x_$0_$0)[x_$0_$0] ));
	assume (forall  a_$1_$0 : Set (BoxType) , x_$1_$0 : BoxType, y_$8 : BoxType :: {Set#UnionOne(a_$1_$0,x_$1_$0),a_$1_$0[y_$8]} ( a_$1_$0[y_$8] ==> Set#UnionOne(a_$1_$0,x_$1_$0)[y_$8] ));
	assume (forall  a_$2_$0 : Set (BoxType) , b_$43 : Set (BoxType) , o_$2_$0 : BoxType :: {Set#Union(a_$2_$0,b_$43)[o_$2_$0]} ( Set#Union(a_$2_$0,b_$43)[o_$2_$0] <==> (a_$2_$0[o_$2_$0] || b_$43[o_$2_$0]) ));
	assume (forall  a_$3_$0 : Set (BoxType) , b_$0_$0 : Set (BoxType) , y_$0_$0 : BoxType :: {Set#Union(a_$3_$0,b_$0_$0),a_$3_$0[y_$0_$0]} ( a_$3_$0[y_$0_$0] ==> Set#Union(a_$3_$0,b_$0_$0)[y_$0_$0] ));
	assume (forall  a_$4_$0 : Set (BoxType) , b_$1_$0 : Set (BoxType) , y_$1_$0 : BoxType :: {Set#Union(a_$4_$0,b_$1_$0),b_$1_$0[y_$1_$0]} ( b_$1_$0[y_$1_$0] ==> Set#Union(a_$4_$0,b_$1_$0)[y_$1_$0] ));
	assume (forall  a_$5_$0 : Set (BoxType) , b_$2_$0 : Set (BoxType)  :: {Set#Union(a_$5_$0,b_$2_$0)} ( Set#Disjoint(a_$5_$0,b_$2_$0) ==> ((Set#Difference(Set#Union(a_$5_$0,b_$2_$0),a_$5_$0) == b_$2_$0) && (Set#Difference(Set#Union(a_$5_$0,b_$2_$0),b_$2_$0) == a_$5_$0)) ));
	assume (forall  a_$6_$0 : Set (BoxType) , b_$3_$0 : Set (BoxType) , o_$3_$0 : BoxType :: {Set#Intersection(a_$6_$0,b_$3_$0)[o_$3_$0]} ( Set#Intersection(a_$6_$0,b_$3_$0)[o_$3_$0] <==> (a_$6_$0[o_$3_$0] && b_$3_$0[o_$3_$0]) ));
	assume (forall  a_$7_$0 : Set (BoxType) , b_$4_$0 : Set (BoxType)  :: {Set#Union(Set#Union(a_$7_$0,b_$4_$0),b_$4_$0)} ( Set#Union(Set#Union(a_$7_$0,b_$4_$0),b_$4_$0) == Set#Union(a_$7_$0,b_$4_$0) ));
	assume (forall  a_$8_$0 : Set (BoxType) , b_$5_$0 : Set (BoxType)  :: {Set#Union(a_$8_$0,Set#Union(a_$8_$0,b_$5_$0))} ( Set#Union(a_$8_$0,Set#Union(a_$8_$0,b_$5_$0)) == Set#Union(a_$8_$0,b_$5_$0) ));
	assume (forall  a_$9_$0 : Set (BoxType) , b_$6_$0 : Set (BoxType)  :: {Set#Intersection(Set#Intersection(a_$9_$0,b_$6_$0),b_$6_$0)} ( Set#Intersection(Set#Intersection(a_$9_$0,b_$6_$0),b_$6_$0) == Set#Intersection(a_$9_$0,b_$6_$0) ));
	assume (forall  a_$10_$0 : Set (BoxType) , b_$7_$0 : Set (BoxType)  :: {Set#Intersection(a_$10_$0,Set#Intersection(a_$10_$0,b_$7_$0))} ( Set#Intersection(a_$10_$0,Set#Intersection(a_$10_$0,b_$7_$0)) == Set#Intersection(a_$10_$0,b_$7_$0) ));
	assume (forall  a_$11_$0 : Set (BoxType) , b_$8_$0 : Set (BoxType) , o_$4_$0 : BoxType :: {Set#Difference(a_$11_$0,b_$8_$0)[o_$4_$0]} ( Set#Difference(a_$11_$0,b_$8_$0)[o_$4_$0] <==> (a_$11_$0[o_$4_$0] && (!b_$8_$0[o_$4_$0])) ));
	assume (forall  a_$12_$0 : Set (BoxType) , b_$9_$0 : Set (BoxType) , y_$2_$0 : BoxType :: {Set#Difference(a_$12_$0,b_$9_$0),b_$9_$0[y_$2_$0]} ( b_$9_$0[y_$2_$0] ==> (!Set#Difference(a_$12_$0,b_$9_$0)[y_$2_$0]) ));
	assume (forall  a_$13_$0 : Set (BoxType) , b_$10_$0 : Set (BoxType)  :: {Set#Subset(a_$13_$0,b_$10_$0)} ( Set#Subset(a_$13_$0,b_$10_$0) <==> ((forall  o_$5_$1 : BoxType :: {a_$13_$0[o_$5_$1]} {b_$10_$0[o_$5_$1]} ( a_$13_$0[o_$5_$1] ==> b_$10_$0[o_$5_$1] ))) ));
	assume (forall  a_$14_$0 : Set (BoxType) , b_$11_$0 : Set (BoxType)  :: {Set#Equal(a_$14_$0,b_$11_$0)} ( Set#Equal(a_$14_$0,b_$11_$0) <==> ((forall  o_$6_$1 : BoxType :: {a_$14_$0[o_$6_$1]} {b_$11_$0[o_$6_$1]} ( a_$14_$0[o_$6_$1] <==> b_$11_$0[o_$6_$1] ))) ));
	assume (forall  a_$15_$0 : Set (BoxType) , b_$12_$0 : Set (BoxType)  :: {Set#Equal(a_$15_$0,b_$12_$0)} ( Set#Equal(a_$15_$0,b_$12_$0) ==> (a_$15_$0 == b_$12_$0) ));
	assume (forall  a_$16_$0 : Set (BoxType) , b_$13_$0 : Set (BoxType)  :: {Set#Disjoint(a_$16_$0,b_$13_$0)} ( Set#Disjoint(a_$16_$0,b_$13_$0) <==> ((forall  o_$7_$1 : BoxType :: {a_$16_$0[o_$7_$1]} {b_$13_$0[o_$7_$1]} ( (!a_$16_$0[o_$7_$1]) || (!b_$13_$0[o_$7_$1]) ))) ));
	assume (forall  a_$17_$0 : Set (BoxType) , tick_$0 : TickType :: {Set#Choose(a_$17_$0,tick_$0)} ( (!(a_$17_$0 == (Set#Empty() : Set (BoxType) ))) ==> a_$17_$0[Set#Choose(a_$17_$0,tick_$0)] ));
	assume (forall  a_$18 : Integer, b_$14 : Integer :: {Math#min(a_$18,b_$14)} ( (a_$18 <= b_$14) <==> (Math#min(a_$18,b_$14) == a_$18) ));
	assume (forall  a_$19 : Integer, b_$15 : Integer :: {Math#min(a_$19,b_$15)} ( (b_$15 <= a_$19) <==> (Math#min(a_$19,b_$15) == b_$15) ));
	assume (forall  a_$20 : Integer, b_$16 : Integer :: {Math#min(a_$20,b_$16)} ( (Math#min(a_$20,b_$16) == a_$20) || (Math#min(a_$20,b_$16) == b_$16) ));
	assume (forall  a_$21 : Integer :: {Math#clip(a_$21)} ( (0 <= a_$21) ==> (Math#clip(a_$21) == a_$21) ));
	assume (forall  a_$22 : Integer :: {Math#clip(a_$22)} ( (a_$22 < 0) ==> (Math#clip(a_$22) == 0) ));
	assume true;
	assume true;
	assume true;
	assume true;
	assume true;
	assume true;
	assume true;
	assume true;
	assume true;
	assume true;
	assume true;
	assume true;
	assume true;
	assume true;
	assume true;
	assume true;
	assume true;
	assume true;
	assume ((forall  s_$0_$0 : Seq (ref)  :: {Seq#Length(s_$0_$0)} ( 0 <= Seq#Length(s_$0_$0) ))) && ((forall  s_$0_$1 : Seq (BoxType)  :: {Seq#Length(s_$0_$1)} ( 0 <= Seq#Length(s_$0_$1) )));
	assume (Seq#Length((Seq#Empty() : Seq (ref) )) == 0) && (Seq#Length((Seq#Empty() : Seq (BoxType) )) == 0);
	assume ((forall  s_$1_$0 : Seq (ref)  :: {Seq#Length(s_$1_$0)} ( (Seq#Length(s_$1_$0) == 0) ==> (s_$1_$0 == (Seq#Empty() : Seq (ref) )) ))) && ((forall  s_$1_$1 : Seq (BoxType)  :: {Seq#Length(s_$1_$1)} ( (Seq#Length(s_$1_$1) == 0) ==> (s_$1_$1 == (Seq#Empty() : Seq (BoxType) )) )));
	assume ((forall  t_$3 : ref :: {Seq#Length(Seq#Singleton(t_$3))} ( Seq#Length(Seq#Singleton(t_$3)) == 1 ))) && ((forall  t_$4 : BoxType :: {Seq#Length(Seq#Singleton(t_$4))} ( Seq#Length(Seq#Singleton(t_$4)) == 1 )));
	assume ((forall  s_$2_$0 : Seq (ref) , i_$13 : Integer, v_$0_$0 : ref, len_$2 : Integer :: {Seq#Length(Seq#Build(s_$2_$0,i_$13,v_$0_$0,len_$2))} ( (0 <= len_$2) ==> (Seq#Length(Seq#Build(s_$2_$0,i_$13,v_$0_$0,len_$2)) == len_$2) ))) && ((forall  s_$2_$1 : Seq (BoxType) , i_$14 : Integer, v_$0_$1 : BoxType, len_$3 : Integer :: {Seq#Length(Seq#Build(s_$2_$1,i_$14,v_$0_$1,len_$3))} ( (0 <= len_$3) ==> (Seq#Length(Seq#Build(s_$2_$1,i_$14,v_$0_$1,len_$3)) == len_$3) )));
	assume ((forall  s0_$4 : Seq (ref) , s1_$4 : Seq (ref)  :: {Seq#Length(Seq#Append(s0_$4,s1_$4))} ( Seq#Length(Seq#Append(s0_$4,s1_$4)) == (Seq#Length(s0_$4) + Seq#Length(s1_$4)) ))) && ((forall  s0_$5 : Seq (BoxType) , s1_$5 : Seq (BoxType)  :: {Seq#Length(Seq#Append(s0_$5,s1_$5))} ( Seq#Length(Seq#Append(s0_$5,s1_$5)) == (Seq#Length(s0_$5) + Seq#Length(s1_$5)) )));
	assume ((forall  t_$0_$0 : ref :: {Seq#Index(Seq#Singleton(t_$0_$0),0)} ( Seq#Index(Seq#Singleton(t_$0_$0),0) == t_$0_$0 ))) && ((forall  t_$0_$1 : BoxType :: {Seq#Index(Seq#Singleton(t_$0_$1),0)} ( Seq#Index(Seq#Singleton(t_$0_$1),0) == t_$0_$1 )));
	assume ((forall  s0_$0_$0 : Seq (ref) , s1_$0_$0 : Seq (ref) , n_$9 : Integer :: {Seq#Index(Seq#Append(s0_$0_$0,s1_$0_$0),n_$9)} ( ((n_$9 < Seq#Length(s0_$0_$0)) ==> (Seq#Index(Seq#Append(s0_$0_$0,s1_$0_$0),n_$9) == Seq#Index(s0_$0_$0,n_$9))) && ((Seq#Length(s0_$0_$0) <= n_$9) ==> (Seq#Index(Seq#Append(s0_$0_$0,s1_$0_$0),n_$9) == Seq#Index(s1_$0_$0,n_$9 - Seq#Length(s0_$0_$0)))) ))) && ((forall  s0_$0_$1 : Seq (BoxType) , s1_$0_$1 : Seq (BoxType) , n_$10 : Integer :: {Seq#Index(Seq#Append(s0_$0_$1,s1_$0_$1),n_$10)} ( ((n_$10 < Seq#Length(s0_$0_$1)) ==> (Seq#Index(Seq#Append(s0_$0_$1,s1_$0_$1),n_$10) == Seq#Index(s0_$0_$1,n_$10))) && ((Seq#Length(s0_$0_$1) <= n_$10) ==> (Seq#Index(Seq#Append(s0_$0_$1,s1_$0_$1),n_$10) == Seq#Index(s1_$0_$1,n_$10 - Seq#Length(s0_$0_$1)))) )));
	assume ((forall  s_$3_$0 : Seq (ref) , i_$0_$0 : Integer, v_$1_$0 : ref, len_$0_$0 : Integer, n_$0_$0 : Integer :: {Seq#Index(Seq#Build(s_$3_$0,i_$0_$0,v_$1_$0,len_$0_$0),n_$0_$0)} ( ((0 <= n_$0_$0) && (n_$0_$0 < len_$0_$0)) ==> (((i_$0_$0 == n_$0_$0) ==> (Seq#Index(Seq#Build(s_$3_$0,i_$0_$0,v_$1_$0,len_$0_$0),n_$0_$0) == v_$1_$0)) && ((!(i_$0_$0 == n_$0_$0)) ==> (Seq#Index(Seq#Build(s_$3_$0,i_$0_$0,v_$1_$0,len_$0_$0),n_$0_$0) == Seq#Index(s_$3_$0,n_$0_$0)))) ))) && ((forall  s_$3_$1 : Seq (BoxType) , i_$0_$1 : Integer, v_$1_$1 : BoxType, len_$0_$1 : Integer, n_$0_$1 : Integer :: {Seq#Index(Seq#Build(s_$3_$1,i_$0_$1,v_$1_$1,len_$0_$1),n_$0_$1)} ( ((0 <= n_$0_$1) && (n_$0_$1 < len_$0_$1)) ==> (((i_$0_$1 == n_$0_$1) ==> (Seq#Index(Seq#Build(s_$3_$1,i_$0_$1,v_$1_$1,len_$0_$1),n_$0_$1) == v_$1_$1)) && ((!(i_$0_$1 == n_$0_$1)) ==> (Seq#Index(Seq#Build(s_$3_$1,i_$0_$1,v_$1_$1,len_$0_$1),n_$0_$1) == Seq#Index(s_$3_$1,n_$0_$1)))) )));
	assume ((forall  s_$4_$0 : Seq (ref) , i_$1_$0 : Integer, v_$2_$0 : ref :: {Seq#Length(Seq#Update(s_$4_$0,i_$1_$0,v_$2_$0))} ( ((0 <= i_$1_$0) && (i_$1_$0 < Seq#Length(s_$4_$0))) ==> (Seq#Length(Seq#Update(s_$4_$0,i_$1_$0,v_$2_$0)) == Seq#Length(s_$4_$0)) ))) && ((forall  s_$4_$1 : Seq (BoxType) , i_$1_$1 : Integer, v_$2_$1 : BoxType :: {Seq#Length(Seq#Update(s_$4_$1,i_$1_$1,v_$2_$1))} ( ((0 <= i_$1_$1) && (i_$1_$1 < Seq#Length(s_$4_$1))) ==> (Seq#Length(Seq#Update(s_$4_$1,i_$1_$1,v_$2_$1)) == Seq#Length(s_$4_$1)) )));
	assume ((forall  s_$5_$0 : Seq (ref) , i_$2_$0 : Integer, v_$3_$0 : ref, n_$1_$0 : Integer :: {Seq#Index(Seq#Update(s_$5_$0,i_$2_$0,v_$3_$0),n_$1_$0)} ( ((0 <= n_$1_$0) && (n_$1_$0 < Seq#Length(s_$5_$0))) ==> (((i_$2_$0 == n_$1_$0) ==> (Seq#Index(Seq#Update(s_$5_$0,i_$2_$0,v_$3_$0),n_$1_$0) == v_$3_$0)) && ((!(i_$2_$0 == n_$1_$0)) ==> (Seq#Index(Seq#Update(s_$5_$0,i_$2_$0,v_$3_$0),n_$1_$0) == Seq#Index(s_$5_$0,n_$1_$0)))) ))) && ((forall  s_$5_$1 : Seq (BoxType) , i_$2_$1 : Integer, v_$3_$1 : BoxType, n_$1_$1 : Integer :: {Seq#Index(Seq#Update(s_$5_$1,i_$2_$1,v_$3_$1),n_$1_$1)} ( ((0 <= n_$1_$1) && (n_$1_$1 < Seq#Length(s_$5_$1))) ==> (((i_$2_$1 == n_$1_$1) ==> (Seq#Index(Seq#Update(s_$5_$1,i_$2_$1,v_$3_$1),n_$1_$1) == v_$3_$1)) && ((!(i_$2_$1 == n_$1_$1)) ==> (Seq#Index(Seq#Update(s_$5_$1,i_$2_$1,v_$3_$1),n_$1_$1) == Seq#Index(s_$5_$1,n_$1_$1)))) )));
	assume ((forall  s_$6_$0 : Seq (ref) , x_$6_$0 : ref :: {Seq#Contains(s_$6_$0,x_$6_$0)} ( Seq#Contains(s_$6_$0,x_$6_$0) <==> ((exists  i_$3_$1 : Integer :: {Seq#Index(s_$6_$0,i_$3_$1)} ( ((0 <= i_$3_$1) && (i_$3_$1 < Seq#Length(s_$6_$0))) && (Seq#Index(s_$6_$0,i_$3_$1) == x_$6_$0) ))) ))) && ((forall  s_$6_$1 : Seq (BoxType) , x_$6_$1 : BoxType :: {Seq#Contains(s_$6_$1,x_$6_$1)} ( Seq#Contains(s_$6_$1,x_$6_$1) <==> ((exists  i_$3_$3 : Integer :: {Seq#Index(s_$6_$1,i_$3_$3)} ( ((0 <= i_$3_$3) && (i_$3_$3 < Seq#Length(s_$6_$1))) && (Seq#Index(s_$6_$1,i_$3_$3) == x_$6_$1) ))) )));
	assume (forall  x_$7 : ref :: {Seq#Contains((Seq#Empty() : Seq (ref) ),x_$7)} ( !Seq#Contains((Seq#Empty() : Seq (ref) ),x_$7) ));
	assume ((forall  s0_$1_$0 : Seq (ref) , s1_$1_$0 : Seq (ref) , x_$8_$0 : ref :: {Seq#Contains(Seq#Append(s0_$1_$0,s1_$1_$0),x_$8_$0)} ( Seq#Contains(Seq#Append(s0_$1_$0,s1_$1_$0),x_$8_$0) <==> (Seq#Contains(s0_$1_$0,x_$8_$0) || Seq#Contains(s1_$1_$0,x_$8_$0)) ))) && ((forall  s0_$1_$1 : Seq (BoxType) , s1_$1_$1 : Seq (BoxType) , x_$8_$1 : BoxType :: {Seq#Contains(Seq#Append(s0_$1_$1,s1_$1_$1),x_$8_$1)} ( Seq#Contains(Seq#Append(s0_$1_$1,s1_$1_$1),x_$8_$1) <==> (Seq#Contains(s0_$1_$1,x_$8_$1) || Seq#Contains(s1_$1_$1,x_$8_$1)) )));
	assume ((forall  i_$4_$0 : Integer, v_$4_$0 : ref, len_$1_$0 : Integer, x_$9_$0 : ref :: {Seq#Contains(Seq#Build((Seq#Empty() : Seq (ref) ),i_$4_$0,v_$4_$0,len_$1_$0),x_$9_$0)} ( ((0 <= i_$4_$0) && (i_$4_$0 < len_$1_$0)) ==> (Seq#Contains(Seq#Build((Seq#Empty() : Seq (ref) ),i_$4_$0,v_$4_$0,len_$1_$0),x_$9_$0) <==> (x_$9_$0 == v_$4_$0)) ))) && ((forall  i_$4_$1 : Integer, v_$4_$1 : BoxType, len_$1_$1 : Integer, x_$9_$1 : BoxType :: {Seq#Contains(Seq#Build((Seq#Empty() : Seq (BoxType) ),i_$4_$1,v_$4_$1,len_$1_$1),x_$9_$1)} ( ((0 <= i_$4_$1) && (i_$4_$1 < len_$1_$1)) ==> (Seq#Contains(Seq#Build((Seq#Empty() : Seq (BoxType) ),i_$4_$1,v_$4_$1,len_$1_$1),x_$9_$1) <==> (x_$9_$1 == v_$4_$1)) )));
	assume ((forall  s_$7_$0 : Seq (ref) , i0_$0 : Integer, v0_$0 : ref, len0_$0 : Integer, i1_$0 : Integer, v1_$0 : ref, len1_$0 : Integer, x_$10_$0 : ref :: {Seq#Contains(Seq#Build(Seq#Build(s_$7_$0,i0_$0,v0_$0,len0_$0),i1_$0,v1_$0,len1_$0),x_$10_$0)} ( ((((0 <= i0_$0) && (i0_$0 < len0_$0)) && (len0_$0 <= i1_$0)) && (i1_$0 < len1_$0)) ==> (Seq#Contains(Seq#Build(Seq#Build(s_$7_$0,i0_$0,v0_$0,len0_$0),i1_$0,v1_$0,len1_$0),x_$10_$0) <==> ((v1_$0 == x_$10_$0) || Seq#Contains(Seq#Build(s_$7_$0,i0_$0,v0_$0,len0_$0),x_$10_$0))) ))) && ((forall  s_$7_$1 : Seq (BoxType) , i0_$1 : Integer, v0_$1 : BoxType, len0_$1 : Integer, i1_$1 : Integer, v1_$1 : BoxType, len1_$1 : Integer, x_$10_$1 : BoxType :: {Seq#Contains(Seq#Build(Seq#Build(s_$7_$1,i0_$1,v0_$1,len0_$1),i1_$1,v1_$1,len1_$1),x_$10_$1)} ( ((((0 <= i0_$1) && (i0_$1 < len0_$1)) && (len0_$1 <= i1_$1)) && (i1_$1 < len1_$1)) ==> (Seq#Contains(Seq#Build(Seq#Build(s_$7_$1,i0_$1,v0_$1,len0_$1),i1_$1,v1_$1,len1_$1),x_$10_$1) <==> ((v1_$1 == x_$10_$1) || Seq#Contains(Seq#Build(s_$7_$1,i0_$1,v0_$1,len0_$1),x_$10_$1))) )));
	assume ((forall  s_$8_$0 : Seq (ref) , n_$2_$0 : Integer, x_$11_$0 : ref :: {Seq#Contains(Seq#Take(s_$8_$0,n_$2_$0),x_$11_$0)} ( Seq#Contains(Seq#Take(s_$8_$0,n_$2_$0),x_$11_$0) <==> ((exists  i_$5_$1 : Integer :: {Seq#Index(s_$8_$0,i_$5_$1)} ( (((0 <= i_$5_$1) && (i_$5_$1 < n_$2_$0)) && (i_$5_$1 < Seq#Length(s_$8_$0))) && (Seq#Index(s_$8_$0,i_$5_$1) == x_$11_$0) ))) ))) && ((forall  s_$8_$1 : Seq (BoxType) , n_$2_$1 : Integer, x_$11_$1 : BoxType :: {Seq#Contains(Seq#Take(s_$8_$1,n_$2_$1),x_$11_$1)} ( Seq#Contains(Seq#Take(s_$8_$1,n_$2_$1),x_$11_$1) <==> ((exists  i_$5_$3 : Integer :: {Seq#Index(s_$8_$1,i_$5_$3)} ( (((0 <= i_$5_$3) && (i_$5_$3 < n_$2_$1)) && (i_$5_$3 < Seq#Length(s_$8_$1))) && (Seq#Index(s_$8_$1,i_$5_$3) == x_$11_$1) ))) )));
	assume ((forall  s_$9_$0 : Seq (ref) , n_$3_$0 : Integer, x_$12_$0 : ref :: {Seq#Contains(Seq#Drop(s_$9_$0,n_$3_$0),x_$12_$0)} ( Seq#Contains(Seq#Drop(s_$9_$0,n_$3_$0),x_$12_$0) <==> ((exists  i_$6_$1 : Integer :: {Seq#Index(s_$9_$0,i_$6_$1)} ( (((0 <= n_$3_$0) && (n_$3_$0 <= i_$6_$1)) && (i_$6_$1 < Seq#Length(s_$9_$0))) && (Seq#Index(s_$9_$0,i_$6_$1) == x_$12_$0) ))) ))) && ((forall  s_$9_$1 : Seq (BoxType) , n_$3_$1 : Integer, x_$12_$1 : BoxType :: {Seq#Contains(Seq#Drop(s_$9_$1,n_$3_$1),x_$12_$1)} ( Seq#Contains(Seq#Drop(s_$9_$1,n_$3_$1),x_$12_$1) <==> ((exists  i_$6_$3 : Integer :: {Seq#Index(s_$9_$1,i_$6_$3)} ( (((0 <= n_$3_$1) && (n_$3_$1 <= i_$6_$3)) && (i_$6_$3 < Seq#Length(s_$9_$1))) && (Seq#Index(s_$9_$1,i_$6_$3) == x_$12_$1) ))) )));
	assume ((forall  s0_$2_$0 : Seq (ref) , s1_$2_$0 : Seq (ref)  :: {Seq#Equal(s0_$2_$0,s1_$2_$0)} ( Seq#Equal(s0_$2_$0,s1_$2_$0) <==> ((Seq#Length(s0_$2_$0) == Seq#Length(s1_$2_$0)) && ((forall  j_$4 : Integer :: {Seq#Index(s0_$2_$0,j_$4)} {Seq#Index(s1_$2_$0,j_$4)} ( ((0 <= j_$4) && (j_$4 < Seq#Length(s0_$2_$0))) ==> (Seq#Index(s0_$2_$0,j_$4) == Seq#Index(s1_$2_$0,j_$4)) )))) ))) && ((forall  s0_$2_$1 : Seq (BoxType) , s1_$2_$1 : Seq (BoxType)  :: {Seq#Equal(s0_$2_$1,s1_$2_$1)} ( Seq#Equal(s0_$2_$1,s1_$2_$1) <==> ((Seq#Length(s0_$2_$1) == Seq#Length(s1_$2_$1)) && ((forall  j_$6 : Integer :: {Seq#Index(s0_$2_$1,j_$6)} {Seq#Index(s1_$2_$1,j_$6)} ( ((0 <= j_$6) && (j_$6 < Seq#Length(s0_$2_$1))) ==> (Seq#Index(s0_$2_$1,j_$6) == Seq#Index(s1_$2_$1,j_$6)) )))) )));
	assume ((forall  a_$41_$0 : Seq (ref) , b_$30_$0 : Seq (ref)  :: {Seq#Equal(a_$41_$0,b_$30_$0)} ( Seq#Equal(a_$41_$0,b_$30_$0) ==> (a_$41_$0 == b_$30_$0) ))) && ((forall  a_$41_$1 : Seq (BoxType) , b_$30_$1 : Seq (BoxType)  :: {Seq#Equal(a_$41_$1,b_$30_$1)} ( Seq#Equal(a_$41_$1,b_$30_$1) ==> (a_$41_$1 == b_$30_$1) )));
	assume ((forall  s_$10_$0 : Seq (ref) , n_$5_$0 : Integer :: {Seq#Length(Seq#Take(s_$10_$0,n_$5_$0))} ( (0 <= n_$5_$0) ==> (((n_$5_$0 <= Seq#Length(s_$10_$0)) ==> (Seq#Length(Seq#Take(s_$10_$0,n_$5_$0)) == n_$5_$0)) && ((Seq#Length(s_$10_$0) < n_$5_$0) ==> (Seq#Length(Seq#Take(s_$10_$0,n_$5_$0)) == Seq#Length(s_$10_$0)))) ))) && ((forall  s_$10_$1 : Seq (BoxType) , n_$5_$1 : Integer :: {Seq#Length(Seq#Take(s_$10_$1,n_$5_$1))} ( (0 <= n_$5_$1) ==> (((n_$5_$1 <= Seq#Length(s_$10_$1)) ==> (Seq#Length(Seq#Take(s_$10_$1,n_$5_$1)) == n_$5_$1)) && ((Seq#Length(s_$10_$1) < n_$5_$1) ==> (Seq#Length(Seq#Take(s_$10_$1,n_$5_$1)) == Seq#Length(s_$10_$1)))) )));
	assume ((forall  s_$11_$0 : Seq (ref) , n_$6_$0 : Integer, j_$1_$0 : Integer :: {Seq#Index(Seq#Take(s_$11_$0,n_$6_$0),j_$1_$0)} {:weight  25}( (((0 <= j_$1_$0) && (j_$1_$0 < n_$6_$0)) && (j_$1_$0 < Seq#Length(s_$11_$0))) ==> (Seq#Index(Seq#Take(s_$11_$0,n_$6_$0),j_$1_$0) == Seq#Index(s_$11_$0,j_$1_$0)) ))) && ((forall  s_$11_$1 : Seq (BoxType) , n_$6_$1 : Integer, j_$1_$1 : Integer :: {Seq#Index(Seq#Take(s_$11_$1,n_$6_$1),j_$1_$1)} {:weight  25}( (((0 <= j_$1_$1) && (j_$1_$1 < n_$6_$1)) && (j_$1_$1 < Seq#Length(s_$11_$1))) ==> (Seq#Index(Seq#Take(s_$11_$1,n_$6_$1),j_$1_$1) == Seq#Index(s_$11_$1,j_$1_$1)) )));
	assume ((forall  s_$12_$0 : Seq (ref) , n_$7_$0 : Integer :: {Seq#Length(Seq#Drop(s_$12_$0,n_$7_$0))} ( (0 <= n_$7_$0) ==> (((n_$7_$0 <= Seq#Length(s_$12_$0)) ==> (Seq#Length(Seq#Drop(s_$12_$0,n_$7_$0)) == (Seq#Length(s_$12_$0) - n_$7_$0))) && ((Seq#Length(s_$12_$0) < n_$7_$0) ==> (Seq#Length(Seq#Drop(s_$12_$0,n_$7_$0)) == 0))) ))) && ((forall  s_$12_$1 : Seq (BoxType) , n_$7_$1 : Integer :: {Seq#Length(Seq#Drop(s_$12_$1,n_$7_$1))} ( (0 <= n_$7_$1) ==> (((n_$7_$1 <= Seq#Length(s_$12_$1)) ==> (Seq#Length(Seq#Drop(s_$12_$1,n_$7_$1)) == (Seq#Length(s_$12_$1) - n_$7_$1))) && ((Seq#Length(s_$12_$1) < n_$7_$1) ==> (Seq#Length(Seq#Drop(s_$12_$1,n_$7_$1)) == 0))) )));
	assume ((forall  s_$13_$0 : Seq (ref) , n_$8_$0 : Integer, j_$2_$0 : Integer :: {Seq#Index(Seq#Drop(s_$13_$0,n_$8_$0),j_$2_$0)} {:weight  25}( (((0 <= n_$8_$0) && (0 <= j_$2_$0)) && (j_$2_$0 < (Seq#Length(s_$13_$0) - n_$8_$0))) ==> (Seq#Index(Seq#Drop(s_$13_$0,n_$8_$0),j_$2_$0) == Seq#Index(s_$13_$0,j_$2_$0 + n_$8_$0)) ))) && ((forall  s_$13_$1 : Seq (BoxType) , n_$8_$1 : Integer, j_$2_$1 : Integer :: {Seq#Index(Seq#Drop(s_$13_$1,n_$8_$1),j_$2_$1)} {:weight  25}( (((0 <= n_$8_$1) && (0 <= j_$2_$1)) && (j_$2_$1 < (Seq#Length(s_$13_$1) - n_$8_$1))) ==> (Seq#Index(Seq#Drop(s_$13_$1,n_$8_$1),j_$2_$1) == Seq#Index(s_$13_$1,j_$2_$1 + n_$8_$1)) )));
	assume ((forall  s_$14_$0 : Seq (ref) , t_$1_$0 : Seq (ref)  :: {Seq#Append(s_$14_$0,t_$1_$0)} ( (Seq#Take(Seq#Append(s_$14_$0,t_$1_$0),Seq#Length(s_$14_$0)) == s_$14_$0) && (Seq#Drop(Seq#Append(s_$14_$0,t_$1_$0),Seq#Length(s_$14_$0)) == t_$1_$0) ))) && ((forall  s_$14_$1 : Seq (BoxType) , t_$1_$1 : Seq (BoxType)  :: {Seq#Append(s_$14_$1,t_$1_$1)} ( (Seq#Take(Seq#Append(s_$14_$1,t_$1_$1),Seq#Length(s_$14_$1)) == s_$14_$1) && (Seq#Drop(Seq#Append(s_$14_$1,t_$1_$1),Seq#Length(s_$14_$1)) == t_$1_$1) )));
	assume (forall  h : HeapType, a_$42 : ref :: {Seq#Length(Seq#FromArray(h,a_$42))} ( Seq#Length(Seq#FromArray(h,a_$42)) == array.Length(a_$42) ));
	assume (forall  h_$0 : HeapType, a_$43 : ref, i_$7 : Integer :: ( ((0 <= i_$7) && (i_$7 < Seq#Length(Seq#FromArray(h_$0,a_$43)))) ==> (Seq#Index(Seq#FromArray(h_$0,a_$43),i_$7) == h_$0[a_$43,IndexField(i_$7)]) ));
	assume (((((((((((((((((forall  x_$13_$0 : Boolean :: {$Box(x_$13_$0)} ( ($Unbox($Box(x_$13_$0)) : Boolean) == x_$13_$0 ))) && ((forall  x_$13_$1 : TickType :: {$Box(x_$13_$1)} ( ($Unbox($Box(x_$13_$1)) : TickType) == x_$13_$1 )))) && ((forall  x_$13_$2 : Integer :: {$Box(x_$13_$2)} ( ($Unbox($Box(x_$13_$2)) : Integer) == x_$13_$2 )))) && ((forall  x_$13_$3 : Seq (ref)  :: {$Box(x_$13_$3)} ( ($Unbox($Box(x_$13_$3)) : Seq (ref) ) == x_$13_$3 )))) && ((forall  x_$13_$4 : ref :: {$Box(x_$13_$4)} ( ($Unbox($Box(x_$13_$4)) : ref) == x_$13_$4 )))) && ((forall  x_$13_$5 : Seq (BoxType)  :: {$Box(x_$13_$5)} ( ($Unbox($Box(x_$13_$5)) : Seq (BoxType) ) == x_$13_$5 )))) && ((forall  x_$13_$6 : HeapType :: {$Box(x_$13_$6)} ( ($Unbox($Box(x_$13_$6)) : HeapType) == x_$13_$6 )))) && ((forall  x_$13_$7 : BoxType :: {$Box(x_$13_$7)} ( ($Unbox($Box(x_$13_$7)) : BoxType) == x_$13_$7 )))) && ((forall  x_$13_$8 : Field (BoxType)  :: {$Box(x_$13_$8)} ( ($Unbox($Box(x_$13_$8)) : Field (BoxType) ) == x_$13_$8 )))) && ((forall  x_$13_$9 : Set (BoxType)  :: {$Box(x_$13_$9)} ( ($Unbox($Box(x_$13_$9)) : Set (BoxType) ) == x_$13_$9 )))) && ((forall  x_$13_$10 : DatatypeType :: {$Box(x_$13_$10)} ( ($Unbox($Box(x_$13_$10)) : DatatypeType) == x_$13_$10 )))) && ((forall  x_$13_$11 : ClassName :: {$Box(x_$13_$11)} ( ($Unbox($Box(x_$13_$11)) : ClassName) == x_$13_$11 )))) && ((forall  x_$13_$12 : Field (Boolean)  :: {$Box(x_$13_$12)} ( ($Unbox($Box(x_$13_$12)) : Field (Boolean) ) == x_$13_$12 )))) && ((forall  x_$13_$13 : Field (ref)  :: {$Box(x_$13_$13)} ( ($Unbox($Box(x_$13_$13)) : Field (ref) ) == x_$13_$13 )))) && ((forall  x_$13_$14 : Field (Set (BoxType) )  :: {$Box(x_$13_$14)} ( ($Unbox($Box(x_$13_$14)) : Field (Set (BoxType) ) ) == x_$13_$14 )))) && ((forall  x_$13_$15 : Field (Integer)  :: {$Box(x_$13_$15)} ( ($Unbox($Box(x_$13_$15)) : Field (Integer) ) == x_$13_$15 )))) && ((forall  x_$13_$16 : <v0>[ref,Field (v0) ]Boolean :: {$Box(x_$13_$16)} ( ($Unbox($Box(x_$13_$16)) : <v0>[ref,Field (v0) ]Boolean) == x_$13_$16 )));
	assume (forall  b_$31 : BoxType :: {($Unbox(b_$31) : Integer)} ( $Box(($Unbox(b_$31) : Integer)) == b_$31 ));
	assume (forall  b_$32 : BoxType :: {($Unbox(b_$32) : ref)} ( $Box(($Unbox(b_$32) : ref)) == b_$32 ));
	assume (forall  b_$33 : BoxType :: {($Unbox(b_$33) : [BoxType]Boolean)} ( $Box(($Unbox(b_$33) : [BoxType]Boolean)) == b_$33 ));
	assume (forall  b_$34 : BoxType :: {($Unbox(b_$34) : Seq (BoxType) )} ( $Box(($Unbox(b_$34) : Seq (BoxType) )) == b_$34 ));
	assume (forall  b_$35 : BoxType :: {($Unbox(b_$35) : DatatypeType)} ( $Box(($Unbox(b_$35) : DatatypeType)) == b_$35 ));
	assume $IsCanonicalBoolBox($Box(false)) && $IsCanonicalBoolBox($Box(true));
	assume (forall  b_$36 : BoxType :: {($Unbox(b_$36) : Boolean)} ( $IsCanonicalBoolBox(b_$36) ==> ($Box(($Unbox(b_$36) : Boolean)) == b_$36) ));
	assume (forall  a_$44 : ClassName, b_$37 : ClassName :: {TypeTuple(a_$44,b_$37)} ( (TypeTupleCar(TypeTuple(a_$44,b_$37)) == a_$44) && (TypeTupleCdr(TypeTuple(a_$44,b_$37)) == b_$37) ));
	assume (forall  i_$8 : Integer :: {IndexField(i_$8)} ( FDim(IndexField(i_$8)) == 1 ));
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
	assume (((((forall  f_$4 : Field (Boolean) , r_$7 : ref, H_$1 : HeapType :: ( H_$1[r_$7,f_$4] == H_$1[r_$7,f_$4] ))) && ((forall  f_$5 : Field (Integer) , r_$8 : ref, H_$2 : HeapType :: ( H_$2[r_$8,f_$5] == H_$2[r_$8,f_$5] )))) && ((forall  f_$6 : Field (ref) , r_$9 : ref, H_$3 : HeapType :: ( H_$3[r_$9,f_$6] == H_$3[r_$9,f_$6] )))) && ((forall  f_$7 : Field (BoxType) , r_$10 : ref, H_$4 : HeapType :: ( H_$4[r_$10,f_$7] == H_$4[r_$10,f_$7] )))) && ((forall  f_$8 : Field (Set (BoxType) ) , r_$11 : ref, H_$5 : HeapType :: ( H_$5[r_$11,f_$8] == H_$5[r_$11,f_$8] )));
	assume (((((forall  v_$5 : Boolean, f_$0_$0 : Field (Boolean) , r_$0_$0 : ref, H_$0_$0 : HeapType :: ( H_$0_$0[r_$0_$0,f_$0_$0 := v_$5] == H_$0_$0[r_$0_$0,f_$0_$0 := v_$5] ))) && ((forall  v_$6 : Integer, f_$0_$1 : Field (Integer) , r_$0_$1 : ref, H_$0_$1 : HeapType :: ( H_$0_$1[r_$0_$1,f_$0_$1 := v_$6] == H_$0_$1[r_$0_$1,f_$0_$1 := v_$6] )))) && ((forall  v_$7 : ref, f_$0_$2 : Field (ref) , r_$0_$2 : ref, H_$0_$2 : HeapType :: ( H_$0_$2[r_$0_$2,f_$0_$2 := v_$7] == H_$0_$2[r_$0_$2,f_$0_$2 := v_$7] )))) && ((forall  v_$8 : BoxType, f_$0_$3 : Field (BoxType) , r_$0_$3 : ref, H_$0_$3 : HeapType :: ( H_$0_$3[r_$0_$3,f_$0_$3 := v_$8] == H_$0_$3[r_$0_$3,f_$0_$3 := v_$8] )))) && ((forall  v_$9 : Set (BoxType) , f_$0_$4 : Field (Set (BoxType) ) , r_$0_$4 : ref, H_$0_$4 : HeapType :: ( H_$0_$4[r_$0_$4,f_$0_$4 := v_$9] == H_$0_$4[r_$0_$4,f_$0_$4 := v_$9] )));
	assume (((((forall  h_$10_$0 : HeapType, r_$6_$0 : ref, f_$3_$0 : Field (Boolean) , x_$15_$0 : Boolean :: {h_$10_$0[r_$6_$0,f_$3_$0 := x_$15_$0]} ( $IsGoodHeap(h_$10_$0[r_$6_$0,f_$3_$0 := x_$15_$0]) ==> $HeapSucc(h_$10_$0,h_$10_$0[r_$6_$0,f_$3_$0 := x_$15_$0]) ))) && ((forall  h_$10_$1 : HeapType, r_$6_$1 : ref, f_$3_$1 : Field (Integer) , x_$15_$1 : Integer :: {h_$10_$1[r_$6_$1,f_$3_$1 := x_$15_$1]} ( $IsGoodHeap(h_$10_$1[r_$6_$1,f_$3_$1 := x_$15_$1]) ==> $HeapSucc(h_$10_$1,h_$10_$1[r_$6_$1,f_$3_$1 := x_$15_$1]) )))) && ((forall  h_$10_$2 : HeapType, r_$6_$2 : ref, f_$3_$2 : Field (ref) , x_$15_$2 : ref :: {h_$10_$2[r_$6_$2,f_$3_$2 := x_$15_$2]} ( $IsGoodHeap(h_$10_$2[r_$6_$2,f_$3_$2 := x_$15_$2]) ==> $HeapSucc(h_$10_$2,h_$10_$2[r_$6_$2,f_$3_$2 := x_$15_$2]) )))) && ((forall  h_$10_$3 : HeapType, r_$6_$3 : ref, f_$3_$3 : Field (BoxType) , x_$15_$3 : BoxType :: {h_$10_$3[r_$6_$3,f_$3_$3 := x_$15_$3]} ( $IsGoodHeap(h_$10_$3[r_$6_$3,f_$3_$3 := x_$15_$3]) ==> $HeapSucc(h_$10_$3,h_$10_$3[r_$6_$3,f_$3_$3 := x_$15_$3]) )))) && ((forall  h_$10_$4 : HeapType, r_$6_$4 : ref, f_$3_$4 : Field (Set (BoxType) ) , x_$15_$4 : Set (BoxType)  :: {h_$10_$4[r_$6_$4,f_$3_$4 := x_$15_$4]} ( $IsGoodHeap(h_$10_$4[r_$6_$4,f_$3_$4 := x_$15_$4]) ==> $HeapSucc(h_$10_$4,h_$10_$4[r_$6_$4,f_$3_$4 := x_$15_$4]) )));
	assume (forall  h_$11 : HeapType, k_$1 : HeapType :: {$HeapSucc(h_$11,k_$1)} ( $HeapSucc(h_$11,k_$1) ==> ((forall  o_$19 : ref :: {k_$1[o_$19,alloc]} ( h_$11[o_$19,alloc] ==> k_$1[o_$19,alloc] ))) ));
	assume (FDim(AVLTree.root) == 0) && (DeclType(AVLTree.root) == class.AVLTree);
	assume (forall  $h : HeapType, $o : ref :: {$h[$o,AVLTree.root]} ( (($IsGoodHeap($h) && (!($o == null))) && $h[$o,alloc]) ==> (($h[$o,AVLTree.root] == null) || ($h[$h[$o,AVLTree.root],alloc] && (dtype($h[$o,AVLTree.root]) == class.Node))) ));
	assume (FDim(AVLTree.Contents) == 0) && (DeclType(AVLTree.Contents) == class.AVLTree);
	assume (FDim(AVLTree.Repr) == 0) && (DeclType(AVLTree.Repr) == class.AVLTree);
	assume (forall  $h_$0 : HeapType, $o_$0 : ref :: {$h_$0[$o_$0,AVLTree.Repr]} ( (($IsGoodHeap($h_$0) && (!($o_$0 == null))) && $h_$0[$o_$0,alloc]) ==> ((forall  $t#1 : BoxType :: {$h_$0[$o_$0,AVLTree.Repr][$t#1]} ( $h_$0[$o_$0,AVLTree.Repr][$t#1] ==> ((($Unbox($t#1) : ref) == null) || ($h_$0[($Unbox($t#1) : ref),alloc] && (dtype(($Unbox($t#1) : ref)) == class.Node))) ))) ));
	assume (FDim(Node.Repr) == 0) && (DeclType(Node.Repr) == class.Node);
	assume (FDim(Node.Contents) == 0) && (DeclType(Node.Contents) == class.Node);
	assume ((0 < $ModuleContextHeight) || ((0 == $ModuleContextHeight) && ((7 <= $FunctionContextHeight) || $InMethodContext))) ==> ((forall  $Heap_$0 : HeapType, this_$0 : ref :: {AVLTree.Valid($Heap_$0,this_$0)} ( (AVLTree.Valid#canCall($Heap_$0,this_$0) || (((((((!(0 == $ModuleContextHeight)) || (!(7 == $FunctionContextHeight))) || $InMethodContext) && $IsGoodHeap($Heap_$0)) && (!(this_$0 == null))) && $Heap_$0[this_$0,alloc]) && (dtype(this_$0) == class.AVLTree))) ==> ((((((((!($Heap_$0[this_$0,AVLTree.root] == null)) ==> true) && (((!($Heap_$0[this_$0,AVLTree.root] == null)) && $Heap_$0[this_$0,AVLTree.Repr][$Box($Heap_$0[this_$0,AVLTree.root])]) ==> true)) && ((((!($Heap_$0[this_$0,AVLTree.root] == null)) && $Heap_$0[this_$0,AVLTree.Repr][$Box($Heap_$0[this_$0,AVLTree.root])]) && Set#Equal($Heap_$0[this_$0,AVLTree.Repr],$Heap_$0[$Heap_$0[this_$0,AVLTree.root],Node.Repr])) ==> true)) && (((((!($Heap_$0[this_$0,AVLTree.root] == null)) && $Heap_$0[this_$0,AVLTree.Repr][$Box($Heap_$0[this_$0,AVLTree.root])]) && Set#Equal($Heap_$0[this_$0,AVLTree.Repr],$Heap_$0[$Heap_$0[this_$0,AVLTree.root],Node.Repr])) && Set#Equal($Heap_$0[this_$0,AVLTree.Contents],$Heap_$0[$Heap_$0[this_$0,AVLTree.root],Node.Contents])) ==> Node.Valid#canCall($Heap_$0,$Heap_$0[this_$0,AVLTree.root]))) && ((((((!($Heap_$0[this_$0,AVLTree.root] == null)) && $Heap_$0[this_$0,AVLTree.Repr][$Box($Heap_$0[this_$0,AVLTree.root])]) && Set#Equal($Heap_$0[this_$0,AVLTree.Repr],$Heap_$0[$Heap_$0[this_$0,AVLTree.root],Node.Repr])) && Set#Equal($Heap_$0[this_$0,AVLTree.Contents],$Heap_$0[$Heap_$0[this_$0,AVLTree.root],Node.Contents])) && Node.Valid($Heap_$0,$Heap_$0[this_$0,AVLTree.root])) ==> Node.BalanceValid#canCall($Heap_$0,$Heap_$0[this_$0,AVLTree.root]))) && (((((((!($Heap_$0[this_$0,AVLTree.root] == null)) && $Heap_$0[this_$0,AVLTree.Repr][$Box($Heap_$0[this_$0,AVLTree.root])]) && Set#Equal($Heap_$0[this_$0,AVLTree.Repr],$Heap_$0[$Heap_$0[this_$0,AVLTree.root],Node.Repr])) && Set#Equal($Heap_$0[this_$0,AVLTree.Contents],$Heap_$0[$Heap_$0[this_$0,AVLTree.root],Node.Contents])) && Node.Valid($Heap_$0,$Heap_$0[this_$0,AVLTree.root])) && Node.BalanceValid($Heap_$0,$Heap_$0[this_$0,AVLTree.root])) ==> Node.Balanced#canCall($Heap_$0,$Heap_$0[this_$0,AVLTree.root]))) && (AVLTree.Valid($Heap_$0,this_$0) <==> (((((((!($Heap_$0[this_$0,AVLTree.root] == null)) && $Heap_$0[this_$0,AVLTree.Repr][$Box($Heap_$0[this_$0,AVLTree.root])]) && Set#Equal($Heap_$0[this_$0,AVLTree.Repr],$Heap_$0[$Heap_$0[this_$0,AVLTree.root],Node.Repr])) && Set#Equal($Heap_$0[this_$0,AVLTree.Contents],$Heap_$0[$Heap_$0[this_$0,AVLTree.root],Node.Contents])) && Node.Valid($Heap_$0,$Heap_$0[this_$0,AVLTree.root])) && Node.BalanceValid($Heap_$0,$Heap_$0[this_$0,AVLTree.root])) && Node.Balanced($Heap_$0,$Heap_$0[this_$0,AVLTree.root])))) )));
	assume (forall  $h0 : HeapType, $h1 : HeapType, this_$1 : ref :: {$HeapSucc($h0,$h1),AVLTree.Valid($h1,this_$1)} ( ((((((($IsGoodHeap($h0) && $IsGoodHeap($h1)) && (!(this_$1 == null))) && $h0[this_$1,alloc]) && (dtype(this_$1) == class.AVLTree)) && $h1[this_$1,alloc]) && (dtype(this_$1) == class.AVLTree)) && $HeapSucc($h0,$h1)) ==> (((((((forall  $o_$1_$0 : ref, $f_$37 : Field (Boolean)  :: ( ((((!($o_$1_$0 == null)) && $h0[$o_$1_$0,alloc]) && $h1[$o_$1_$0,alloc]) && (($o_$1_$0 == this_$1) || $h0[this_$1,AVLTree.Repr][$Box($o_$1_$0)])) ==> ($h0[$o_$1_$0,$f_$37] == $h1[$o_$1_$0,$f_$37]) ))) && ((forall  $o_$1_$1 : ref, $f_$38 : Field (Integer)  :: ( ((((!($o_$1_$1 == null)) && $h0[$o_$1_$1,alloc]) && $h1[$o_$1_$1,alloc]) && (($o_$1_$1 == this_$1) || $h0[this_$1,AVLTree.Repr][$Box($o_$1_$1)])) ==> ($h0[$o_$1_$1,$f_$38] == $h1[$o_$1_$1,$f_$38]) )))) && ((forall  $o_$1_$2 : ref, $f_$39 : Field (ref)  :: ( ((((!($o_$1_$2 == null)) && $h0[$o_$1_$2,alloc]) && $h1[$o_$1_$2,alloc]) && (($o_$1_$2 == this_$1) || $h0[this_$1,AVLTree.Repr][$Box($o_$1_$2)])) ==> ($h0[$o_$1_$2,$f_$39] == $h1[$o_$1_$2,$f_$39]) )))) && ((forall  $o_$1_$3 : ref, $f_$40 : Field (BoxType)  :: ( ((((!($o_$1_$3 == null)) && $h0[$o_$1_$3,alloc]) && $h1[$o_$1_$3,alloc]) && (($o_$1_$3 == this_$1) || $h0[this_$1,AVLTree.Repr][$Box($o_$1_$3)])) ==> ($h0[$o_$1_$3,$f_$40] == $h1[$o_$1_$3,$f_$40]) )))) && ((forall  $o_$1_$4 : ref, $f_$41 : Field (Set (BoxType) )  :: ( ((((!($o_$1_$4 == null)) && $h0[$o_$1_$4,alloc]) && $h1[$o_$1_$4,alloc]) && (($o_$1_$4 == this_$1) || $h0[this_$1,AVLTree.Repr][$Box($o_$1_$4)])) ==> ($h0[$o_$1_$4,$f_$41] == $h1[$o_$1_$4,$f_$41]) )))) ==> (AVLTree.Valid($h0,this_$1) <==> AVLTree.Valid($h1,this_$1))) ));
	assume (FDim(Node.left) == 0) && (DeclType(Node.left) == class.Node);
	assume (FDim(Node.right) == 0) && (DeclType(Node.right) == class.Node);
	assume (FDim(Node.value) == 0) && (DeclType(Node.value) == class.Node);
	assume (FDim(Node.balance) == 0) && (DeclType(Node.balance) == class.Node);
	assume (forall  $h_$1 : HeapType, $o_$2 : ref :: {$h_$1[$o_$2,Node.left]} ( (($IsGoodHeap($h_$1) && (!($o_$2 == null))) && $h_$1[$o_$2,alloc]) ==> (($h_$1[$o_$2,Node.left] == null) || ($h_$1[$h_$1[$o_$2,Node.left],alloc] && (dtype($h_$1[$o_$2,Node.left]) == class.Node))) ));
	assume (forall  $h_$2 : HeapType, $o_$3 : ref :: {$h_$2[$o_$3,Node.right]} ( (($IsGoodHeap($h_$2) && (!($o_$3 == null))) && $h_$2[$o_$3,alloc]) ==> (($h_$2[$o_$3,Node.right] == null) || ($h_$2[$h_$2[$o_$3,Node.right],alloc] && (dtype($h_$2[$o_$3,Node.right]) == class.Node))) ));
	assume (forall  $h_$3 : HeapType, $o_$4 : ref :: {$h_$3[$o_$4,Node.Repr]} ( (($IsGoodHeap($h_$3) && (!($o_$4 == null))) && $h_$3[$o_$4,alloc]) ==> ((forall  $t#1_$0 : BoxType :: {$h_$3[$o_$4,Node.Repr][$t#1_$0]} ( $h_$3[$o_$4,Node.Repr][$t#1_$0] ==> ((($Unbox($t#1_$0) : ref) == null) || ($h_$3[($Unbox($t#1_$0) : ref),alloc] && (dtype(($Unbox($t#1_$0) : ref)) == class.Node))) ))) ));
	assume (forall  $Heap_$1 : HeapType, n#12 : ref :: {Node.Balanced#2($Heap_$1,n#12)} ( Node.Balanced#2($Heap_$1,n#12) <==> Node.Balanced($Heap_$1,n#12) ));
	assume (forall  $Heap_$2 : HeapType, n#12_$0 : ref :: {Node.Balanced($Heap_$2,n#12_$0)} ( Node.Balanced($Heap_$2,n#12_$0) <==> Node.Balanced#limited($Heap_$2,n#12_$0) ));
	assume ((0 < $ModuleContextHeight) || ((0 == $ModuleContextHeight) && ((6 <= $FunctionContextHeight) || $InMethodContext))) ==> ((forall  $Heap_$3 : HeapType, n#12_$1 : ref :: {Node.Balanced($Heap_$3,n#12_$1)} ( (Node.Balanced#canCall($Heap_$3,n#12_$1) || (((((((!(0 == $ModuleContextHeight)) || (!(6 == $FunctionContextHeight))) || $InMethodContext) && $IsGoodHeap($Heap_$3)) && ((n#12_$1 == null) || ($Heap_$3[n#12_$1,alloc] && (dtype(n#12_$1) == class.Node)))) && Node.Valid($Heap_$3,n#12_$1)) && Node.BalanceValid($Heap_$3,n#12_$1))) ==> (((!(n#12_$1 == null)) ==> ((((($Heap_$3[n#12_$1,Node.balance] == (0 - 1)) || ($Heap_$3[n#12_$1,Node.balance] == 0)) || ($Heap_$3[n#12_$1,Node.balance] == 1)) ==> Node.Balanced#canCall($Heap_$3,$Heap_$3[n#12_$1,Node.right])) && ((((($Heap_$3[n#12_$1,Node.balance] == (0 - 1)) || ($Heap_$3[n#12_$1,Node.balance] == 0)) || ($Heap_$3[n#12_$1,Node.balance] == 1)) && Node.Balanced($Heap_$3,$Heap_$3[n#12_$1,Node.right])) ==> Node.Balanced#canCall($Heap_$3,$Heap_$3[n#12_$1,Node.left])))) && (Node.Balanced($Heap_$3,n#12_$1) <==> ((!(n#12_$1 == null)) ==> ((((($Heap_$3[n#12_$1,Node.balance] == (0 - 1)) || ($Heap_$3[n#12_$1,Node.balance] == 0)) || ($Heap_$3[n#12_$1,Node.balance] == 1)) && Node.Balanced#limited($Heap_$3,$Heap_$3[n#12_$1,Node.right])) && Node.Balanced#limited($Heap_$3,$Heap_$3[n#12_$1,Node.left]))))) )));
	assume ((0 < $ModuleContextHeight) || ((0 == $ModuleContextHeight) && ((6 <= $FunctionContextHeight) || $InMethodContext))) ==> ((forall  $Heap_$4 : HeapType, n#12_$2 : ref :: {Node.Balanced#2($Heap_$4,n#12_$2)} ( (Node.Balanced#canCall($Heap_$4,n#12_$2) || (((((((!(0 == $ModuleContextHeight)) || (!(6 == $FunctionContextHeight))) || $InMethodContext) && $IsGoodHeap($Heap_$4)) && ((n#12_$2 == null) || ($Heap_$4[n#12_$2,alloc] && (dtype(n#12_$2) == class.Node)))) && Node.Valid($Heap_$4,n#12_$2)) && Node.BalanceValid($Heap_$4,n#12_$2))) ==> (Node.Balanced#2($Heap_$4,n#12_$2) <==> ((!(n#12_$2 == null)) ==> ((((($Heap_$4[n#12_$2,Node.balance] == (0 - 1)) || ($Heap_$4[n#12_$2,Node.balance] == 0)) || ($Heap_$4[n#12_$2,Node.balance] == 1)) && Node.Balanced($Heap_$4,$Heap_$4[n#12_$2,Node.right])) && Node.Balanced($Heap_$4,$Heap_$4[n#12_$2,Node.left])))) )));
	assume (forall  $h0_$0 : HeapType, $h1_$0 : HeapType, n#12_$3 : ref :: {$HeapSucc($h0_$0,$h1_$0),Node.Balanced($h1_$0,n#12_$3)} ( (((($IsGoodHeap($h0_$0) && $IsGoodHeap($h1_$0)) && ((n#12_$3 == null) || ($h0_$0[n#12_$3,alloc] && (dtype(n#12_$3) == class.Node)))) && ((n#12_$3 == null) || ($h1_$0[n#12_$3,alloc] && (dtype(n#12_$3) == class.Node)))) && $HeapSucc($h0_$0,$h1_$0)) ==> (((((((forall  $o_$5_$0 : ref, $f_$0_$0 : Field (Boolean)  :: ( ((((!($o_$5_$0 == null)) && $h0_$0[$o_$5_$0,alloc]) && $h1_$0[$o_$5_$0,alloc]) && (($o_$5_$0 == n#12_$3) || ((!(n#12_$3 == null)) && $h0_$0[n#12_$3,Node.Repr][$Box($o_$5_$0)]))) ==> ($h0_$0[$o_$5_$0,$f_$0_$0] == $h1_$0[$o_$5_$0,$f_$0_$0]) ))) && ((forall  $o_$5_$1 : ref, $f_$0_$1 : Field (Integer)  :: ( ((((!($o_$5_$1 == null)) && $h0_$0[$o_$5_$1,alloc]) && $h1_$0[$o_$5_$1,alloc]) && (($o_$5_$1 == n#12_$3) || ((!(n#12_$3 == null)) && $h0_$0[n#12_$3,Node.Repr][$Box($o_$5_$1)]))) ==> ($h0_$0[$o_$5_$1,$f_$0_$1] == $h1_$0[$o_$5_$1,$f_$0_$1]) )))) && ((forall  $o_$5_$2 : ref, $f_$0_$2 : Field (ref)  :: ( ((((!($o_$5_$2 == null)) && $h0_$0[$o_$5_$2,alloc]) && $h1_$0[$o_$5_$2,alloc]) && (($o_$5_$2 == n#12_$3) || ((!(n#12_$3 == null)) && $h0_$0[n#12_$3,Node.Repr][$Box($o_$5_$2)]))) ==> ($h0_$0[$o_$5_$2,$f_$0_$2] == $h1_$0[$o_$5_$2,$f_$0_$2]) )))) && ((forall  $o_$5_$3 : ref, $f_$0_$3 : Field (BoxType)  :: ( ((((!($o_$5_$3 == null)) && $h0_$0[$o_$5_$3,alloc]) && $h1_$0[$o_$5_$3,alloc]) && (($o_$5_$3 == n#12_$3) || ((!(n#12_$3 == null)) && $h0_$0[n#12_$3,Node.Repr][$Box($o_$5_$3)]))) ==> ($h0_$0[$o_$5_$3,$f_$0_$3] == $h1_$0[$o_$5_$3,$f_$0_$3]) )))) && ((forall  $o_$5_$4 : ref, $f_$0_$4 : Field (Set (BoxType) )  :: ( ((((!($o_$5_$4 == null)) && $h0_$0[$o_$5_$4,alloc]) && $h1_$0[$o_$5_$4,alloc]) && (($o_$5_$4 == n#12_$3) || ((!(n#12_$3 == null)) && $h0_$0[n#12_$3,Node.Repr][$Box($o_$5_$4)]))) ==> ($h0_$0[$o_$5_$4,$f_$0_$4] == $h1_$0[$o_$5_$4,$f_$0_$4]) )))) ==> (Node.Balanced($h0_$0,n#12_$3) <==> Node.Balanced($h1_$0,n#12_$3))) ));
	assume (forall  $h0_$1 : HeapType, $h1_$1 : HeapType, n#12_$4 : ref :: {$HeapSucc($h0_$1,$h1_$1),Node.Balanced#limited($h1_$1,n#12_$4)} ( (((($IsGoodHeap($h0_$1) && $IsGoodHeap($h1_$1)) && ((n#12_$4 == null) || ($h0_$1[n#12_$4,alloc] && (dtype(n#12_$4) == class.Node)))) && ((n#12_$4 == null) || ($h1_$1[n#12_$4,alloc] && (dtype(n#12_$4) == class.Node)))) && $HeapSucc($h0_$1,$h1_$1)) ==> (((((((forall  $o_$6_$0 : ref, $f_$1_$0 : Field (Boolean)  :: ( ((((!($o_$6_$0 == null)) && $h0_$1[$o_$6_$0,alloc]) && $h1_$1[$o_$6_$0,alloc]) && (($o_$6_$0 == n#12_$4) || ((!(n#12_$4 == null)) && $h0_$1[n#12_$4,Node.Repr][$Box($o_$6_$0)]))) ==> ($h0_$1[$o_$6_$0,$f_$1_$0] == $h1_$1[$o_$6_$0,$f_$1_$0]) ))) && ((forall  $o_$6_$1 : ref, $f_$1_$1 : Field (Integer)  :: ( ((((!($o_$6_$1 == null)) && $h0_$1[$o_$6_$1,alloc]) && $h1_$1[$o_$6_$1,alloc]) && (($o_$6_$1 == n#12_$4) || ((!(n#12_$4 == null)) && $h0_$1[n#12_$4,Node.Repr][$Box($o_$6_$1)]))) ==> ($h0_$1[$o_$6_$1,$f_$1_$1] == $h1_$1[$o_$6_$1,$f_$1_$1]) )))) && ((forall  $o_$6_$2 : ref, $f_$1_$2 : Field (ref)  :: ( ((((!($o_$6_$2 == null)) && $h0_$1[$o_$6_$2,alloc]) && $h1_$1[$o_$6_$2,alloc]) && (($o_$6_$2 == n#12_$4) || ((!(n#12_$4 == null)) && $h0_$1[n#12_$4,Node.Repr][$Box($o_$6_$2)]))) ==> ($h0_$1[$o_$6_$2,$f_$1_$2] == $h1_$1[$o_$6_$2,$f_$1_$2]) )))) && ((forall  $o_$6_$3 : ref, $f_$1_$3 : Field (BoxType)  :: ( ((((!($o_$6_$3 == null)) && $h0_$1[$o_$6_$3,alloc]) && $h1_$1[$o_$6_$3,alloc]) && (($o_$6_$3 == n#12_$4) || ((!(n#12_$4 == null)) && $h0_$1[n#12_$4,Node.Repr][$Box($o_$6_$3)]))) ==> ($h0_$1[$o_$6_$3,$f_$1_$3] == $h1_$1[$o_$6_$3,$f_$1_$3]) )))) && ((forall  $o_$6_$4 : ref, $f_$1_$4 : Field (Set (BoxType) )  :: ( ((((!($o_$6_$4 == null)) && $h0_$1[$o_$6_$4,alloc]) && $h1_$1[$o_$6_$4,alloc]) && (($o_$6_$4 == n#12_$4) || ((!(n#12_$4 == null)) && $h0_$1[n#12_$4,Node.Repr][$Box($o_$6_$4)]))) ==> ($h0_$1[$o_$6_$4,$f_$1_$4] == $h1_$1[$o_$6_$4,$f_$1_$4]) )))) ==> (Node.Balanced#limited($h0_$1,n#12_$4) <==> Node.Balanced#limited($h1_$1,n#12_$4))) ));
	assume (forall  $Heap_$5 : HeapType, n#13 : ref :: {Node.BalanceValid#2($Heap_$5,n#13)} ( Node.BalanceValid#2($Heap_$5,n#13) <==> Node.BalanceValid($Heap_$5,n#13) ));
	assume (forall  $Heap_$6 : HeapType, n#13_$0 : ref :: {Node.BalanceValid($Heap_$6,n#13_$0)} ( Node.BalanceValid($Heap_$6,n#13_$0) <==> Node.BalanceValid#limited($Heap_$6,n#13_$0) ));
	assume ((0 < $ModuleContextHeight) || ((0 == $ModuleContextHeight) && ((5 <= $FunctionContextHeight) || $InMethodContext))) ==> ((forall  $Heap_$7 : HeapType, n#13_$1 : ref :: {Node.BalanceValid($Heap_$7,n#13_$1)} ( (Node.BalanceValid#canCall($Heap_$7,n#13_$1) || ((((((!(0 == $ModuleContextHeight)) || (!(5 == $FunctionContextHeight))) || $InMethodContext) && $IsGoodHeap($Heap_$7)) && ((n#13_$1 == null) || ($Heap_$7[n#13_$1,alloc] && (dtype(n#13_$1) == class.Node)))) && Node.Valid($Heap_$7,n#13_$1))) ==> (((!(n#13_$1 == null)) ==> (((Node.Height#canCall($Heap_$7,$Heap_$7[n#13_$1,Node.right]) && Node.Height#canCall($Heap_$7,$Heap_$7[n#13_$1,Node.left])) && (($Heap_$7[n#13_$1,Node.balance] == (Node.Height($Heap_$7,$Heap_$7[n#13_$1,Node.right]) - Node.Height($Heap_$7,$Heap_$7[n#13_$1,Node.left]))) ==> ((!($Heap_$7[n#13_$1,Node.left] == null)) ==> Node.BalanceValid#canCall($Heap_$7,$Heap_$7[n#13_$1,Node.left])))) && ((($Heap_$7[n#13_$1,Node.balance] == (Node.Height($Heap_$7,$Heap_$7[n#13_$1,Node.right]) - Node.Height($Heap_$7,$Heap_$7[n#13_$1,Node.left]))) && ((!($Heap_$7[n#13_$1,Node.left] == null)) ==> Node.BalanceValid($Heap_$7,$Heap_$7[n#13_$1,Node.left]))) ==> ((!($Heap_$7[n#13_$1,Node.right] == null)) ==> Node.BalanceValid#canCall($Heap_$7,$Heap_$7[n#13_$1,Node.right]))))) && (Node.BalanceValid($Heap_$7,n#13_$1) <==> ((!(n#13_$1 == null)) ==> ((($Heap_$7[n#13_$1,Node.balance] == (Node.Height($Heap_$7,$Heap_$7[n#13_$1,Node.right]) - Node.Height($Heap_$7,$Heap_$7[n#13_$1,Node.left]))) && ((!($Heap_$7[n#13_$1,Node.left] == null)) ==> Node.BalanceValid#limited($Heap_$7,$Heap_$7[n#13_$1,Node.left]))) && ((!($Heap_$7[n#13_$1,Node.right] == null)) ==> Node.BalanceValid#limited($Heap_$7,$Heap_$7[n#13_$1,Node.right])))))) )));
	assume ((0 < $ModuleContextHeight) || ((0 == $ModuleContextHeight) && ((5 <= $FunctionContextHeight) || $InMethodContext))) ==> ((forall  $Heap_$8 : HeapType, n#13_$2 : ref :: {Node.BalanceValid#2($Heap_$8,n#13_$2)} ( (Node.BalanceValid#canCall($Heap_$8,n#13_$2) || ((((((!(0 == $ModuleContextHeight)) || (!(5 == $FunctionContextHeight))) || $InMethodContext) && $IsGoodHeap($Heap_$8)) && ((n#13_$2 == null) || ($Heap_$8[n#13_$2,alloc] && (dtype(n#13_$2) == class.Node)))) && Node.Valid($Heap_$8,n#13_$2))) ==> (Node.BalanceValid#2($Heap_$8,n#13_$2) <==> ((!(n#13_$2 == null)) ==> ((($Heap_$8[n#13_$2,Node.balance] == (Node.Height($Heap_$8,$Heap_$8[n#13_$2,Node.right]) - Node.Height($Heap_$8,$Heap_$8[n#13_$2,Node.left]))) && ((!($Heap_$8[n#13_$2,Node.left] == null)) ==> Node.BalanceValid($Heap_$8,$Heap_$8[n#13_$2,Node.left]))) && ((!($Heap_$8[n#13_$2,Node.right] == null)) ==> Node.BalanceValid($Heap_$8,$Heap_$8[n#13_$2,Node.right]))))) )));
	assume (forall  $h0_$2 : HeapType, $h1_$2 : HeapType, n#13_$3 : ref :: {$HeapSucc($h0_$2,$h1_$2),Node.BalanceValid($h1_$2,n#13_$3)} ( (((($IsGoodHeap($h0_$2) && $IsGoodHeap($h1_$2)) && ((n#13_$3 == null) || ($h0_$2[n#13_$3,alloc] && (dtype(n#13_$3) == class.Node)))) && ((n#13_$3 == null) || ($h1_$2[n#13_$3,alloc] && (dtype(n#13_$3) == class.Node)))) && $HeapSucc($h0_$2,$h1_$2)) ==> (((((((forall  $o_$7_$0 : ref, $f_$2_$0 : Field (Boolean)  :: ( ((((!($o_$7_$0 == null)) && $h0_$2[$o_$7_$0,alloc]) && $h1_$2[$o_$7_$0,alloc]) && (($o_$7_$0 == n#13_$3) || ((!(n#13_$3 == null)) && $h0_$2[n#13_$3,Node.Repr][$Box($o_$7_$0)]))) ==> ($h0_$2[$o_$7_$0,$f_$2_$0] == $h1_$2[$o_$7_$0,$f_$2_$0]) ))) && ((forall  $o_$7_$1 : ref, $f_$2_$1 : Field (Integer)  :: ( ((((!($o_$7_$1 == null)) && $h0_$2[$o_$7_$1,alloc]) && $h1_$2[$o_$7_$1,alloc]) && (($o_$7_$1 == n#13_$3) || ((!(n#13_$3 == null)) && $h0_$2[n#13_$3,Node.Repr][$Box($o_$7_$1)]))) ==> ($h0_$2[$o_$7_$1,$f_$2_$1] == $h1_$2[$o_$7_$1,$f_$2_$1]) )))) && ((forall  $o_$7_$2 : ref, $f_$2_$2 : Field (ref)  :: ( ((((!($o_$7_$2 == null)) && $h0_$2[$o_$7_$2,alloc]) && $h1_$2[$o_$7_$2,alloc]) && (($o_$7_$2 == n#13_$3) || ((!(n#13_$3 == null)) && $h0_$2[n#13_$3,Node.Repr][$Box($o_$7_$2)]))) ==> ($h0_$2[$o_$7_$2,$f_$2_$2] == $h1_$2[$o_$7_$2,$f_$2_$2]) )))) && ((forall  $o_$7_$3 : ref, $f_$2_$3 : Field (BoxType)  :: ( ((((!($o_$7_$3 == null)) && $h0_$2[$o_$7_$3,alloc]) && $h1_$2[$o_$7_$3,alloc]) && (($o_$7_$3 == n#13_$3) || ((!(n#13_$3 == null)) && $h0_$2[n#13_$3,Node.Repr][$Box($o_$7_$3)]))) ==> ($h0_$2[$o_$7_$3,$f_$2_$3] == $h1_$2[$o_$7_$3,$f_$2_$3]) )))) && ((forall  $o_$7_$4 : ref, $f_$2_$4 : Field (Set (BoxType) )  :: ( ((((!($o_$7_$4 == null)) && $h0_$2[$o_$7_$4,alloc]) && $h1_$2[$o_$7_$4,alloc]) && (($o_$7_$4 == n#13_$3) || ((!(n#13_$3 == null)) && $h0_$2[n#13_$3,Node.Repr][$Box($o_$7_$4)]))) ==> ($h0_$2[$o_$7_$4,$f_$2_$4] == $h1_$2[$o_$7_$4,$f_$2_$4]) )))) ==> (Node.BalanceValid($h0_$2,n#13_$3) <==> Node.BalanceValid($h1_$2,n#13_$3))) ));
	assume (forall  $h0_$3 : HeapType, $h1_$3 : HeapType, n#13_$4 : ref :: {$HeapSucc($h0_$3,$h1_$3),Node.BalanceValid#limited($h1_$3,n#13_$4)} ( (((($IsGoodHeap($h0_$3) && $IsGoodHeap($h1_$3)) && ((n#13_$4 == null) || ($h0_$3[n#13_$4,alloc] && (dtype(n#13_$4) == class.Node)))) && ((n#13_$4 == null) || ($h1_$3[n#13_$4,alloc] && (dtype(n#13_$4) == class.Node)))) && $HeapSucc($h0_$3,$h1_$3)) ==> (((((((forall  $o_$8_$0 : ref, $f_$3_$0 : Field (Boolean)  :: ( ((((!($o_$8_$0 == null)) && $h0_$3[$o_$8_$0,alloc]) && $h1_$3[$o_$8_$0,alloc]) && (($o_$8_$0 == n#13_$4) || ((!(n#13_$4 == null)) && $h0_$3[n#13_$4,Node.Repr][$Box($o_$8_$0)]))) ==> ($h0_$3[$o_$8_$0,$f_$3_$0] == $h1_$3[$o_$8_$0,$f_$3_$0]) ))) && ((forall  $o_$8_$1 : ref, $f_$3_$1 : Field (Integer)  :: ( ((((!($o_$8_$1 == null)) && $h0_$3[$o_$8_$1,alloc]) && $h1_$3[$o_$8_$1,alloc]) && (($o_$8_$1 == n#13_$4) || ((!(n#13_$4 == null)) && $h0_$3[n#13_$4,Node.Repr][$Box($o_$8_$1)]))) ==> ($h0_$3[$o_$8_$1,$f_$3_$1] == $h1_$3[$o_$8_$1,$f_$3_$1]) )))) && ((forall  $o_$8_$2 : ref, $f_$3_$2 : Field (ref)  :: ( ((((!($o_$8_$2 == null)) && $h0_$3[$o_$8_$2,alloc]) && $h1_$3[$o_$8_$2,alloc]) && (($o_$8_$2 == n#13_$4) || ((!(n#13_$4 == null)) && $h0_$3[n#13_$4,Node.Repr][$Box($o_$8_$2)]))) ==> ($h0_$3[$o_$8_$2,$f_$3_$2] == $h1_$3[$o_$8_$2,$f_$3_$2]) )))) && ((forall  $o_$8_$3 : ref, $f_$3_$3 : Field (BoxType)  :: ( ((((!($o_$8_$3 == null)) && $h0_$3[$o_$8_$3,alloc]) && $h1_$3[$o_$8_$3,alloc]) && (($o_$8_$3 == n#13_$4) || ((!(n#13_$4 == null)) && $h0_$3[n#13_$4,Node.Repr][$Box($o_$8_$3)]))) ==> ($h0_$3[$o_$8_$3,$f_$3_$3] == $h1_$3[$o_$8_$3,$f_$3_$3]) )))) && ((forall  $o_$8_$4 : ref, $f_$3_$4 : Field (Set (BoxType) )  :: ( ((((!($o_$8_$4 == null)) && $h0_$3[$o_$8_$4,alloc]) && $h1_$3[$o_$8_$4,alloc]) && (($o_$8_$4 == n#13_$4) || ((!(n#13_$4 == null)) && $h0_$3[n#13_$4,Node.Repr][$Box($o_$8_$4)]))) ==> ($h0_$3[$o_$8_$4,$f_$3_$4] == $h1_$3[$o_$8_$4,$f_$3_$4]) )))) ==> (Node.BalanceValid#limited($h0_$3,n#13_$4) <==> Node.BalanceValid#limited($h1_$3,n#13_$4))) ));
	assume (forall  $Heap_$9 : HeapType, n#14 : ref :: {Node.Height#2($Heap_$9,n#14)} ( Node.Height#2($Heap_$9,n#14) == Node.Height($Heap_$9,n#14) ));
	assume (forall  $Heap_$10 : HeapType, n#14_$0 : ref :: {Node.Height($Heap_$10,n#14_$0)} ( Node.Height($Heap_$10,n#14_$0) == Node.Height#limited($Heap_$10,n#14_$0) ));
	assume ((0 < $ModuleContextHeight) || ((0 == $ModuleContextHeight) && ((4 <= $FunctionContextHeight) || $InMethodContext))) ==> ((forall  $Heap_$11 : HeapType, n#14_$1 : ref :: {Node.Height($Heap_$11,n#14_$1)} ( (Node.Height#canCall($Heap_$11,n#14_$1) || ((((((!(0 == $ModuleContextHeight)) || (!(4 == $FunctionContextHeight))) || $InMethodContext) && $IsGoodHeap($Heap_$11)) && ((n#14_$1 == null) || ($Heap_$11[n#14_$1,alloc] && (dtype(n#14_$1) == class.Node)))) && Node.Valid($Heap_$11,n#14_$1))) ==> (((((n#14_$1 == null) ==> true) && ((!(n#14_$1 == null)) ==> ((Node.Height#canCall($Heap_$11,$Heap_$11[n#14_$1,Node.left]) && Node.Height#canCall($Heap_$11,$Heap_$11[n#14_$1,Node.right])) && Math.max#canCall($Heap_$11,Node.Height($Heap_$11,$Heap_$11[n#14_$1,Node.left]),Node.Height($Heap_$11,$Heap_$11[n#14_$1,Node.right]))))) && (Node.Height($Heap_$11,n#14_$1) == (if (n#14_$1 == null) then 0 else (Math.max($Heap_$11,Node.Height#limited($Heap_$11,$Heap_$11[n#14_$1,Node.left]),Node.Height#limited($Heap_$11,$Heap_$11[n#14_$1,Node.right])) + 1)))) && (0 <= Node.Height($Heap_$11,n#14_$1))) )));
	assume ((0 < $ModuleContextHeight) || ((0 == $ModuleContextHeight) && ((4 <= $FunctionContextHeight) || $InMethodContext))) ==> ((forall  $Heap_$12 : HeapType, n#14_$2 : ref :: {Node.Height#2($Heap_$12,n#14_$2)} ( (Node.Height#canCall($Heap_$12,n#14_$2) || ((((((!(0 == $ModuleContextHeight)) || (!(4 == $FunctionContextHeight))) || $InMethodContext) && $IsGoodHeap($Heap_$12)) && ((n#14_$2 == null) || ($Heap_$12[n#14_$2,alloc] && (dtype(n#14_$2) == class.Node)))) && Node.Valid($Heap_$12,n#14_$2))) ==> (Node.Height#2($Heap_$12,n#14_$2) == (if (n#14_$2 == null) then 0 else (Math.max($Heap_$12,Node.Height($Heap_$12,$Heap_$12[n#14_$2,Node.left]),Node.Height($Heap_$12,$Heap_$12[n#14_$2,Node.right])) + 1))) )));
	assume (forall  $h0_$4 : HeapType, $h1_$4 : HeapType, n#14_$3 : ref :: {$HeapSucc($h0_$4,$h1_$4),Node.Height($h1_$4,n#14_$3)} ( (((($IsGoodHeap($h0_$4) && $IsGoodHeap($h1_$4)) && ((n#14_$3 == null) || ($h0_$4[n#14_$3,alloc] && (dtype(n#14_$3) == class.Node)))) && ((n#14_$3 == null) || ($h1_$4[n#14_$3,alloc] && (dtype(n#14_$3) == class.Node)))) && $HeapSucc($h0_$4,$h1_$4)) ==> (((((((forall  $o_$9_$0 : ref, $f_$4_$0 : Field (Boolean)  :: ( (((((!($o_$9_$0 == null)) && $h0_$4[$o_$9_$0,alloc]) && $h1_$4[$o_$9_$0,alloc]) && (!(n#14_$3 == null))) && $h0_$4[n#14_$3,Node.Repr][$Box($o_$9_$0)]) ==> ($h0_$4[$o_$9_$0,$f_$4_$0] == $h1_$4[$o_$9_$0,$f_$4_$0]) ))) && ((forall  $o_$9_$1 : ref, $f_$4_$1 : Field (Integer)  :: ( (((((!($o_$9_$1 == null)) && $h0_$4[$o_$9_$1,alloc]) && $h1_$4[$o_$9_$1,alloc]) && (!(n#14_$3 == null))) && $h0_$4[n#14_$3,Node.Repr][$Box($o_$9_$1)]) ==> ($h0_$4[$o_$9_$1,$f_$4_$1] == $h1_$4[$o_$9_$1,$f_$4_$1]) )))) && ((forall  $o_$9_$2 : ref, $f_$4_$2 : Field (ref)  :: ( (((((!($o_$9_$2 == null)) && $h0_$4[$o_$9_$2,alloc]) && $h1_$4[$o_$9_$2,alloc]) && (!(n#14_$3 == null))) && $h0_$4[n#14_$3,Node.Repr][$Box($o_$9_$2)]) ==> ($h0_$4[$o_$9_$2,$f_$4_$2] == $h1_$4[$o_$9_$2,$f_$4_$2]) )))) && ((forall  $o_$9_$3 : ref, $f_$4_$3 : Field (BoxType)  :: ( (((((!($o_$9_$3 == null)) && $h0_$4[$o_$9_$3,alloc]) && $h1_$4[$o_$9_$3,alloc]) && (!(n#14_$3 == null))) && $h0_$4[n#14_$3,Node.Repr][$Box($o_$9_$3)]) ==> ($h0_$4[$o_$9_$3,$f_$4_$3] == $h1_$4[$o_$9_$3,$f_$4_$3]) )))) && ((forall  $o_$9_$4 : ref, $f_$4_$4 : Field (Set (BoxType) )  :: ( (((((!($o_$9_$4 == null)) && $h0_$4[$o_$9_$4,alloc]) && $h1_$4[$o_$9_$4,alloc]) && (!(n#14_$3 == null))) && $h0_$4[n#14_$3,Node.Repr][$Box($o_$9_$4)]) ==> ($h0_$4[$o_$9_$4,$f_$4_$4] == $h1_$4[$o_$9_$4,$f_$4_$4]) )))) ==> (Node.Height($h0_$4,n#14_$3) == Node.Height($h1_$4,n#14_$3))) ));
	assume (forall  $h0_$5 : HeapType, $h1_$5 : HeapType, n#14_$4 : ref :: {$HeapSucc($h0_$5,$h1_$5),Node.Height#limited($h1_$5,n#14_$4)} ( (((($IsGoodHeap($h0_$5) && $IsGoodHeap($h1_$5)) && ((n#14_$4 == null) || ($h0_$5[n#14_$4,alloc] && (dtype(n#14_$4) == class.Node)))) && ((n#14_$4 == null) || ($h1_$5[n#14_$4,alloc] && (dtype(n#14_$4) == class.Node)))) && $HeapSucc($h0_$5,$h1_$5)) ==> (((((((forall  $o_$10_$0 : ref, $f_$5_$0 : Field (Boolean)  :: ( (((((!($o_$10_$0 == null)) && $h0_$5[$o_$10_$0,alloc]) && $h1_$5[$o_$10_$0,alloc]) && (!(n#14_$4 == null))) && $h0_$5[n#14_$4,Node.Repr][$Box($o_$10_$0)]) ==> ($h0_$5[$o_$10_$0,$f_$5_$0] == $h1_$5[$o_$10_$0,$f_$5_$0]) ))) && ((forall  $o_$10_$1 : ref, $f_$5_$1 : Field (Integer)  :: ( (((((!($o_$10_$1 == null)) && $h0_$5[$o_$10_$1,alloc]) && $h1_$5[$o_$10_$1,alloc]) && (!(n#14_$4 == null))) && $h0_$5[n#14_$4,Node.Repr][$Box($o_$10_$1)]) ==> ($h0_$5[$o_$10_$1,$f_$5_$1] == $h1_$5[$o_$10_$1,$f_$5_$1]) )))) && ((forall  $o_$10_$2 : ref, $f_$5_$2 : Field (ref)  :: ( (((((!($o_$10_$2 == null)) && $h0_$5[$o_$10_$2,alloc]) && $h1_$5[$o_$10_$2,alloc]) && (!(n#14_$4 == null))) && $h0_$5[n#14_$4,Node.Repr][$Box($o_$10_$2)]) ==> ($h0_$5[$o_$10_$2,$f_$5_$2] == $h1_$5[$o_$10_$2,$f_$5_$2]) )))) && ((forall  $o_$10_$3 : ref, $f_$5_$3 : Field (BoxType)  :: ( (((((!($o_$10_$3 == null)) && $h0_$5[$o_$10_$3,alloc]) && $h1_$5[$o_$10_$3,alloc]) && (!(n#14_$4 == null))) && $h0_$5[n#14_$4,Node.Repr][$Box($o_$10_$3)]) ==> ($h0_$5[$o_$10_$3,$f_$5_$3] == $h1_$5[$o_$10_$3,$f_$5_$3]) )))) && ((forall  $o_$10_$4 : ref, $f_$5_$4 : Field (Set (BoxType) )  :: ( (((((!($o_$10_$4 == null)) && $h0_$5[$o_$10_$4,alloc]) && $h1_$5[$o_$10_$4,alloc]) && (!(n#14_$4 == null))) && $h0_$5[n#14_$4,Node.Repr][$Box($o_$10_$4)]) ==> ($h0_$5[$o_$10_$4,$f_$5_$4] == $h1_$5[$o_$10_$4,$f_$5_$4]) )))) ==> (Node.Height#limited($h0_$5,n#14_$4) == Node.Height#limited($h1_$5,n#14_$4))) ));
	assume (forall  $Heap_$13 : HeapType, n#15 : ref :: {Node.Valid#2($Heap_$13,n#15)} ( Node.Valid#2($Heap_$13,n#15) <==> Node.Valid($Heap_$13,n#15) ));
	assume (forall  $Heap_$14 : HeapType, n#15_$0 : ref :: {Node.Valid($Heap_$14,n#15_$0)} ( Node.Valid($Heap_$14,n#15_$0) <==> Node.Valid#limited($Heap_$14,n#15_$0) ));
	assume ((0 < $ModuleContextHeight) || ((0 == $ModuleContextHeight) && ((2 <= $FunctionContextHeight) || $InMethodContext))) ==> ((forall  $Heap_$15 : HeapType, n#15_$1 : ref :: {Node.Valid($Heap_$15,n#15_$1)} ( (Node.Valid#canCall($Heap_$15,n#15_$1) || (((((!(0 == $ModuleContextHeight)) || (!(2 == $FunctionContextHeight))) || $InMethodContext) && $IsGoodHeap($Heap_$15)) && ((n#15_$1 == null) || ($Heap_$15[n#15_$1,alloc] && (dtype(n#15_$1) == class.Node))))) ==> (((!(n#15_$1 == null)) ==> ((((((((($Heap_$15[n#15_$1,Node.Repr][$Box(n#15_$1)] ==> true) && (($Heap_$15[n#15_$1,Node.Repr][$Box(n#15_$1)] && (!$Heap_$15[n#15_$1,Node.Repr][$Box(null)])) ==> ((!($Heap_$15[n#15_$1,Node.left] == null)) ==> (($Heap_$15[n#15_$1,Node.Repr][$Box($Heap_$15[n#15_$1,Node.left])] ==> true) && (($Heap_$15[n#15_$1,Node.Repr][$Box($Heap_$15[n#15_$1,Node.left])] && (!$Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr][$Box(n#15_$1)])) ==> true))))) && ((($Heap_$15[n#15_$1,Node.Repr][$Box(n#15_$1)] && (!$Heap_$15[n#15_$1,Node.Repr][$Box(null)])) && ((!($Heap_$15[n#15_$1,Node.left] == null)) ==> (($Heap_$15[n#15_$1,Node.Repr][$Box($Heap_$15[n#15_$1,Node.left])] && (!$Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr][$Box(n#15_$1)])) && Set#Subset($Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr],$Heap_$15[n#15_$1,Node.Repr])))) ==> ((!($Heap_$15[n#15_$1,Node.right] == null)) ==> (($Heap_$15[n#15_$1,Node.Repr][$Box($Heap_$15[n#15_$1,Node.right])] ==> true) && (($Heap_$15[n#15_$1,Node.Repr][$Box($Heap_$15[n#15_$1,Node.right])] && (!$Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Repr][$Box(n#15_$1)])) ==> true))))) && (((($Heap_$15[n#15_$1,Node.Repr][$Box(n#15_$1)] && (!$Heap_$15[n#15_$1,Node.Repr][$Box(null)])) && ((!($Heap_$15[n#15_$1,Node.left] == null)) ==> (($Heap_$15[n#15_$1,Node.Repr][$Box($Heap_$15[n#15_$1,Node.left])] && (!$Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr][$Box(n#15_$1)])) && Set#Subset($Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr],$Heap_$15[n#15_$1,Node.Repr])))) && ((!($Heap_$15[n#15_$1,Node.right] == null)) ==> (($Heap_$15[n#15_$1,Node.Repr][$Box($Heap_$15[n#15_$1,Node.right])] && (!$Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Repr][$Box(n#15_$1)])) && Set#Subset($Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Repr],$Heap_$15[n#15_$1,Node.Repr])))) ==> (Node.Valid#canCall($Heap_$15,$Heap_$15[n#15_$1,Node.left]) && (Node.Valid($Heap_$15,$Heap_$15[n#15_$1,Node.left]) ==> Node.Valid#canCall($Heap_$15,$Heap_$15[n#15_$1,Node.right]))))) && (((((($Heap_$15[n#15_$1,Node.Repr][$Box(n#15_$1)] && (!$Heap_$15[n#15_$1,Node.Repr][$Box(null)])) && ((!($Heap_$15[n#15_$1,Node.left] == null)) ==> (($Heap_$15[n#15_$1,Node.Repr][$Box($Heap_$15[n#15_$1,Node.left])] && (!$Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr][$Box(n#15_$1)])) && Set#Subset($Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr],$Heap_$15[n#15_$1,Node.Repr])))) && ((!($Heap_$15[n#15_$1,Node.right] == null)) ==> (($Heap_$15[n#15_$1,Node.Repr][$Box($Heap_$15[n#15_$1,Node.right])] && (!$Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Repr][$Box(n#15_$1)])) && Set#Subset($Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Repr],$Heap_$15[n#15_$1,Node.Repr])))) && Node.Valid($Heap_$15,$Heap_$15[n#15_$1,Node.left])) && Node.Valid($Heap_$15,$Heap_$15[n#15_$1,Node.right])) ==> (((!($Heap_$15[n#15_$1,Node.right] == null)) ==> true) && (((!($Heap_$15[n#15_$1,Node.right] == null)) && (!($Heap_$15[n#15_$1,Node.left] == null))) ==> true)))) && ((((((($Heap_$15[n#15_$1,Node.Repr][$Box(n#15_$1)] && (!$Heap_$15[n#15_$1,Node.Repr][$Box(null)])) && ((!($Heap_$15[n#15_$1,Node.left] == null)) ==> (($Heap_$15[n#15_$1,Node.Repr][$Box($Heap_$15[n#15_$1,Node.left])] && (!$Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr][$Box(n#15_$1)])) && Set#Subset($Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr],$Heap_$15[n#15_$1,Node.Repr])))) && ((!($Heap_$15[n#15_$1,Node.right] == null)) ==> (($Heap_$15[n#15_$1,Node.Repr][$Box($Heap_$15[n#15_$1,Node.right])] && (!$Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Repr][$Box(n#15_$1)])) && Set#Subset($Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Repr],$Heap_$15[n#15_$1,Node.Repr])))) && Node.Valid($Heap_$15,$Heap_$15[n#15_$1,Node.left])) && Node.Valid($Heap_$15,$Heap_$15[n#15_$1,Node.right])) && (((!($Heap_$15[n#15_$1,Node.right] == null)) && (!($Heap_$15[n#15_$1,Node.left] == null))) ==> Set#Disjoint($Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr],$Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Repr]))) ==> (((((!($Heap_$15[n#15_$1,Node.left] == null)) ==> true) && (($Heap_$15[n#15_$1,Node.left] == null) ==> true)) && ((!($Heap_$15[n#15_$1,Node.right] == null)) ==> true)) && (($Heap_$15[n#15_$1,Node.right] == null) ==> true)))) && (((((((($Heap_$15[n#15_$1,Node.Repr][$Box(n#15_$1)] && (!$Heap_$15[n#15_$1,Node.Repr][$Box(null)])) && ((!($Heap_$15[n#15_$1,Node.left] == null)) ==> (($Heap_$15[n#15_$1,Node.Repr][$Box($Heap_$15[n#15_$1,Node.left])] && (!$Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr][$Box(n#15_$1)])) && Set#Subset($Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr],$Heap_$15[n#15_$1,Node.Repr])))) && ((!($Heap_$15[n#15_$1,Node.right] == null)) ==> (($Heap_$15[n#15_$1,Node.Repr][$Box($Heap_$15[n#15_$1,Node.right])] && (!$Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Repr][$Box(n#15_$1)])) && Set#Subset($Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Repr],$Heap_$15[n#15_$1,Node.Repr])))) && Node.Valid($Heap_$15,$Heap_$15[n#15_$1,Node.left])) && Node.Valid($Heap_$15,$Heap_$15[n#15_$1,Node.right])) && (((!($Heap_$15[n#15_$1,Node.right] == null)) && (!($Heap_$15[n#15_$1,Node.left] == null))) ==> Set#Disjoint($Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr],$Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Repr]))) && Set#Equal($Heap_$15[n#15_$1,Node.Repr],Set#Union(Set#Union(Set#UnionOne((Set#Empty() : Set (BoxType) ),$Box(n#15_$1)),if (!($Heap_$15[n#15_$1,Node.left] == null)) then $Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr] else (Set#Empty() : Set (BoxType) )),if (!($Heap_$15[n#15_$1,Node.right] == null)) then $Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Repr] else (Set#Empty() : Set (BoxType) )))) ==> (((((!($Heap_$15[n#15_$1,Node.left] == null)) ==> true) && (($Heap_$15[n#15_$1,Node.left] == null) ==> true)) && ((!($Heap_$15[n#15_$1,Node.right] == null)) ==> true)) && (($Heap_$15[n#15_$1,Node.right] == null) ==> true)))) && ((((((((($Heap_$15[n#15_$1,Node.Repr][$Box(n#15_$1)] && (!$Heap_$15[n#15_$1,Node.Repr][$Box(null)])) && ((!($Heap_$15[n#15_$1,Node.left] == null)) ==> (($Heap_$15[n#15_$1,Node.Repr][$Box($Heap_$15[n#15_$1,Node.left])] && (!$Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr][$Box(n#15_$1)])) && Set#Subset($Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr],$Heap_$15[n#15_$1,Node.Repr])))) && ((!($Heap_$15[n#15_$1,Node.right] == null)) ==> (($Heap_$15[n#15_$1,Node.Repr][$Box($Heap_$15[n#15_$1,Node.right])] && (!$Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Repr][$Box(n#15_$1)])) && Set#Subset($Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Repr],$Heap_$15[n#15_$1,Node.Repr])))) && Node.Valid($Heap_$15,$Heap_$15[n#15_$1,Node.left])) && Node.Valid($Heap_$15,$Heap_$15[n#15_$1,Node.right])) && (((!($Heap_$15[n#15_$1,Node.right] == null)) && (!($Heap_$15[n#15_$1,Node.left] == null))) ==> Set#Disjoint($Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr],$Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Repr]))) && Set#Equal($Heap_$15[n#15_$1,Node.Repr],Set#Union(Set#Union(Set#UnionOne((Set#Empty() : Set (BoxType) ),$Box(n#15_$1)),if (!($Heap_$15[n#15_$1,Node.left] == null)) then $Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr] else (Set#Empty() : Set (BoxType) )),if (!($Heap_$15[n#15_$1,Node.right] == null)) then $Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Repr] else (Set#Empty() : Set (BoxType) )))) && Set#Equal($Heap_$15[n#15_$1,Node.Contents],Set#Union(Set#Union(Set#UnionOne((Set#Empty() : Set (BoxType) ),$Box($Heap_$15[n#15_$1,Node.value])),if (!($Heap_$15[n#15_$1,Node.left] == null)) then $Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Contents] else (Set#Empty() : Set (BoxType) )),if (!($Heap_$15[n#15_$1,Node.right] == null)) then $Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Contents] else (Set#Empty() : Set (BoxType) )))) ==> ((!($Heap_$15[n#15_$1,Node.left] == null)) ==> ((forall  i#16 : Integer :: ( true ==> ($Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Contents][$Box(i#16)] ==> true) )))))) && (((((((((($Heap_$15[n#15_$1,Node.Repr][$Box(n#15_$1)] && (!$Heap_$15[n#15_$1,Node.Repr][$Box(null)])) && ((!($Heap_$15[n#15_$1,Node.left] == null)) ==> (($Heap_$15[n#15_$1,Node.Repr][$Box($Heap_$15[n#15_$1,Node.left])] && (!$Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr][$Box(n#15_$1)])) && Set#Subset($Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr],$Heap_$15[n#15_$1,Node.Repr])))) && ((!($Heap_$15[n#15_$1,Node.right] == null)) ==> (($Heap_$15[n#15_$1,Node.Repr][$Box($Heap_$15[n#15_$1,Node.right])] && (!$Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Repr][$Box(n#15_$1)])) && Set#Subset($Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Repr],$Heap_$15[n#15_$1,Node.Repr])))) && Node.Valid($Heap_$15,$Heap_$15[n#15_$1,Node.left])) && Node.Valid($Heap_$15,$Heap_$15[n#15_$1,Node.right])) && (((!($Heap_$15[n#15_$1,Node.right] == null)) && (!($Heap_$15[n#15_$1,Node.left] == null))) ==> Set#Disjoint($Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr],$Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Repr]))) && Set#Equal($Heap_$15[n#15_$1,Node.Repr],Set#Union(Set#Union(Set#UnionOne((Set#Empty() : Set (BoxType) ),$Box(n#15_$1)),if (!($Heap_$15[n#15_$1,Node.left] == null)) then $Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr] else (Set#Empty() : Set (BoxType) )),if (!($Heap_$15[n#15_$1,Node.right] == null)) then $Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Repr] else (Set#Empty() : Set (BoxType) )))) && Set#Equal($Heap_$15[n#15_$1,Node.Contents],Set#Union(Set#Union(Set#UnionOne((Set#Empty() : Set (BoxType) ),$Box($Heap_$15[n#15_$1,Node.value])),if (!($Heap_$15[n#15_$1,Node.left] == null)) then $Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Contents] else (Set#Empty() : Set (BoxType) )),if (!($Heap_$15[n#15_$1,Node.right] == null)) then $Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Contents] else (Set#Empty() : Set (BoxType) )))) && ((!($Heap_$15[n#15_$1,Node.left] == null)) ==> ((forall  i#16_$0 : Integer :: ( true ==> ($Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Contents][$Box(i#16_$0)] ==> (i#16_$0 < $Heap_$15[n#15_$1,Node.value])) ))))) ==> ((!($Heap_$15[n#15_$1,Node.right] == null)) ==> ((forall  i#17 : Integer :: ( true ==> ($Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Contents][$Box(i#17)] ==> true) ))))))) && (Node.Valid($Heap_$15,n#15_$1) <==> ((!(n#15_$1 == null)) ==> (((((((((($Heap_$15[n#15_$1,Node.Repr][$Box(n#15_$1)] && (!$Heap_$15[n#15_$1,Node.Repr][$Box(null)])) && ((!($Heap_$15[n#15_$1,Node.left] == null)) ==> (($Heap_$15[n#15_$1,Node.Repr][$Box($Heap_$15[n#15_$1,Node.left])] && (!$Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr][$Box(n#15_$1)])) && Set#Subset($Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr],$Heap_$15[n#15_$1,Node.Repr])))) && ((!($Heap_$15[n#15_$1,Node.right] == null)) ==> (($Heap_$15[n#15_$1,Node.Repr][$Box($Heap_$15[n#15_$1,Node.right])] && (!$Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Repr][$Box(n#15_$1)])) && Set#Subset($Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Repr],$Heap_$15[n#15_$1,Node.Repr])))) && Node.Valid#limited($Heap_$15,$Heap_$15[n#15_$1,Node.left])) && Node.Valid#limited($Heap_$15,$Heap_$15[n#15_$1,Node.right])) && (((!($Heap_$15[n#15_$1,Node.right] == null)) && (!($Heap_$15[n#15_$1,Node.left] == null))) ==> Set#Disjoint($Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr],$Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Repr]))) && Set#Equal($Heap_$15[n#15_$1,Node.Repr],Set#Union(Set#Union(Set#UnionOne((Set#Empty() : Set (BoxType) ),$Box(n#15_$1)),if (!($Heap_$15[n#15_$1,Node.left] == null)) then $Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Repr] else (Set#Empty() : Set (BoxType) )),if (!($Heap_$15[n#15_$1,Node.right] == null)) then $Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Repr] else (Set#Empty() : Set (BoxType) )))) && Set#Equal($Heap_$15[n#15_$1,Node.Contents],Set#Union(Set#Union(Set#UnionOne((Set#Empty() : Set (BoxType) ),$Box($Heap_$15[n#15_$1,Node.value])),if (!($Heap_$15[n#15_$1,Node.left] == null)) then $Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Contents] else (Set#Empty() : Set (BoxType) )),if (!($Heap_$15[n#15_$1,Node.right] == null)) then $Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Contents] else (Set#Empty() : Set (BoxType) )))) && ((!($Heap_$15[n#15_$1,Node.left] == null)) ==> ((forall  i#16_$1 : Integer :: ( true ==> ($Heap_$15[$Heap_$15[n#15_$1,Node.left],Node.Contents][$Box(i#16_$1)] ==> (i#16_$1 < $Heap_$15[n#15_$1,Node.value])) ))))) && ((!($Heap_$15[n#15_$1,Node.right] == null)) ==> ((forall  i#17_$0 : Integer :: ( true ==> ($Heap_$15[$Heap_$15[n#15_$1,Node.right],Node.Contents][$Box(i#17_$0)] ==> ($Heap_$15[n#15_$1,Node.value] < i#17_$0)) )))))))) )));
	assume ((0 < $ModuleContextHeight) || ((0 == $ModuleContextHeight) && ((2 <= $FunctionContextHeight) || $InMethodContext))) ==> ((forall  $Heap_$16 : HeapType, n#15_$2 : ref :: {Node.Valid#2($Heap_$16,n#15_$2)} ( (Node.Valid#canCall($Heap_$16,n#15_$2) || (((((!(0 == $ModuleContextHeight)) || (!(2 == $FunctionContextHeight))) || $InMethodContext) && $IsGoodHeap($Heap_$16)) && ((n#15_$2 == null) || ($Heap_$16[n#15_$2,alloc] && (dtype(n#15_$2) == class.Node))))) ==> (Node.Valid#2($Heap_$16,n#15_$2) <==> ((!(n#15_$2 == null)) ==> (((((((((($Heap_$16[n#15_$2,Node.Repr][$Box(n#15_$2)] && (!$Heap_$16[n#15_$2,Node.Repr][$Box(null)])) && ((!($Heap_$16[n#15_$2,Node.left] == null)) ==> (($Heap_$16[n#15_$2,Node.Repr][$Box($Heap_$16[n#15_$2,Node.left])] && (!$Heap_$16[$Heap_$16[n#15_$2,Node.left],Node.Repr][$Box(n#15_$2)])) && Set#Subset($Heap_$16[$Heap_$16[n#15_$2,Node.left],Node.Repr],$Heap_$16[n#15_$2,Node.Repr])))) && ((!($Heap_$16[n#15_$2,Node.right] == null)) ==> (($Heap_$16[n#15_$2,Node.Repr][$Box($Heap_$16[n#15_$2,Node.right])] && (!$Heap_$16[$Heap_$16[n#15_$2,Node.right],Node.Repr][$Box(n#15_$2)])) && Set#Subset($Heap_$16[$Heap_$16[n#15_$2,Node.right],Node.Repr],$Heap_$16[n#15_$2,Node.Repr])))) && Node.Valid($Heap_$16,$Heap_$16[n#15_$2,Node.left])) && Node.Valid($Heap_$16,$Heap_$16[n#15_$2,Node.right])) && (((!($Heap_$16[n#15_$2,Node.right] == null)) && (!($Heap_$16[n#15_$2,Node.left] == null))) ==> Set#Disjoint($Heap_$16[$Heap_$16[n#15_$2,Node.left],Node.Repr],$Heap_$16[$Heap_$16[n#15_$2,Node.right],Node.Repr]))) && Set#Equal($Heap_$16[n#15_$2,Node.Repr],Set#Union(Set#Union(Set#UnionOne((Set#Empty() : Set (BoxType) ),$Box(n#15_$2)),if (!($Heap_$16[n#15_$2,Node.left] == null)) then $Heap_$16[$Heap_$16[n#15_$2,Node.left],Node.Repr] else (Set#Empty() : Set (BoxType) )),if (!($Heap_$16[n#15_$2,Node.right] == null)) then $Heap_$16[$Heap_$16[n#15_$2,Node.right],Node.Repr] else (Set#Empty() : Set (BoxType) )))) && Set#Equal($Heap_$16[n#15_$2,Node.Contents],Set#Union(Set#Union(Set#UnionOne((Set#Empty() : Set (BoxType) ),$Box($Heap_$16[n#15_$2,Node.value])),if (!($Heap_$16[n#15_$2,Node.left] == null)) then $Heap_$16[$Heap_$16[n#15_$2,Node.left],Node.Contents] else (Set#Empty() : Set (BoxType) )),if (!($Heap_$16[n#15_$2,Node.right] == null)) then $Heap_$16[$Heap_$16[n#15_$2,Node.right],Node.Contents] else (Set#Empty() : Set (BoxType) )))) && ((!($Heap_$16[n#15_$2,Node.left] == null)) ==> ((forall  i#16_$2 : Integer :: ( true ==> ($Heap_$16[$Heap_$16[n#15_$2,Node.left],Node.Contents][$Box(i#16_$2)] ==> (i#16_$2 < $Heap_$16[n#15_$2,Node.value])) ))))) && ((!($Heap_$16[n#15_$2,Node.right] == null)) ==> ((forall  i#17_$1 : Integer :: ( true ==> ($Heap_$16[$Heap_$16[n#15_$2,Node.right],Node.Contents][$Box(i#17_$1)] ==> ($Heap_$16[n#15_$2,Node.value] < i#17_$1)) ))))))) )));
	assume (forall  $h0_$6 : HeapType, $h1_$6 : HeapType, n#15_$3 : ref :: {$HeapSucc($h0_$6,$h1_$6),Node.Valid($h1_$6,n#15_$3)} ( (((($IsGoodHeap($h0_$6) && $IsGoodHeap($h1_$6)) && ((n#15_$3 == null) || ($h0_$6[n#15_$3,alloc] && (dtype(n#15_$3) == class.Node)))) && ((n#15_$3 == null) || ($h1_$6[n#15_$3,alloc] && (dtype(n#15_$3) == class.Node)))) && $HeapSucc($h0_$6,$h1_$6)) ==> (((((((forall  $o_$11_$0 : ref, $f_$6_$0 : Field (Boolean)  :: ( ((((!($o_$11_$0 == null)) && $h0_$6[$o_$11_$0,alloc]) && $h1_$6[$o_$11_$0,alloc]) && (($o_$11_$0 == n#15_$3) || ((!(n#15_$3 == null)) && $h0_$6[n#15_$3,Node.Repr][$Box($o_$11_$0)]))) ==> ($h0_$6[$o_$11_$0,$f_$6_$0] == $h1_$6[$o_$11_$0,$f_$6_$0]) ))) && ((forall  $o_$11_$1 : ref, $f_$6_$1 : Field (Integer)  :: ( ((((!($o_$11_$1 == null)) && $h0_$6[$o_$11_$1,alloc]) && $h1_$6[$o_$11_$1,alloc]) && (($o_$11_$1 == n#15_$3) || ((!(n#15_$3 == null)) && $h0_$6[n#15_$3,Node.Repr][$Box($o_$11_$1)]))) ==> ($h0_$6[$o_$11_$1,$f_$6_$1] == $h1_$6[$o_$11_$1,$f_$6_$1]) )))) && ((forall  $o_$11_$2 : ref, $f_$6_$2 : Field (ref)  :: ( ((((!($o_$11_$2 == null)) && $h0_$6[$o_$11_$2,alloc]) && $h1_$6[$o_$11_$2,alloc]) && (($o_$11_$2 == n#15_$3) || ((!(n#15_$3 == null)) && $h0_$6[n#15_$3,Node.Repr][$Box($o_$11_$2)]))) ==> ($h0_$6[$o_$11_$2,$f_$6_$2] == $h1_$6[$o_$11_$2,$f_$6_$2]) )))) && ((forall  $o_$11_$3 : ref, $f_$6_$3 : Field (BoxType)  :: ( ((((!($o_$11_$3 == null)) && $h0_$6[$o_$11_$3,alloc]) && $h1_$6[$o_$11_$3,alloc]) && (($o_$11_$3 == n#15_$3) || ((!(n#15_$3 == null)) && $h0_$6[n#15_$3,Node.Repr][$Box($o_$11_$3)]))) ==> ($h0_$6[$o_$11_$3,$f_$6_$3] == $h1_$6[$o_$11_$3,$f_$6_$3]) )))) && ((forall  $o_$11_$4 : ref, $f_$6_$4 : Field (Set (BoxType) )  :: ( ((((!($o_$11_$4 == null)) && $h0_$6[$o_$11_$4,alloc]) && $h1_$6[$o_$11_$4,alloc]) && (($o_$11_$4 == n#15_$3) || ((!(n#15_$3 == null)) && $h0_$6[n#15_$3,Node.Repr][$Box($o_$11_$4)]))) ==> ($h0_$6[$o_$11_$4,$f_$6_$4] == $h1_$6[$o_$11_$4,$f_$6_$4]) )))) ==> (Node.Valid($h0_$6,n#15_$3) <==> Node.Valid($h1_$6,n#15_$3))) ));
	assume (forall  $h0_$7 : HeapType, $h1_$7 : HeapType, n#15_$4 : ref :: {$HeapSucc($h0_$7,$h1_$7),Node.Valid#limited($h1_$7,n#15_$4)} ( (((($IsGoodHeap($h0_$7) && $IsGoodHeap($h1_$7)) && ((n#15_$4 == null) || ($h0_$7[n#15_$4,alloc] && (dtype(n#15_$4) == class.Node)))) && ((n#15_$4 == null) || ($h1_$7[n#15_$4,alloc] && (dtype(n#15_$4) == class.Node)))) && $HeapSucc($h0_$7,$h1_$7)) ==> (((((((forall  $o_$12_$0 : ref, $f_$7_$0 : Field (Boolean)  :: ( ((((!($o_$12_$0 == null)) && $h0_$7[$o_$12_$0,alloc]) && $h1_$7[$o_$12_$0,alloc]) && (($o_$12_$0 == n#15_$4) || ((!(n#15_$4 == null)) && $h0_$7[n#15_$4,Node.Repr][$Box($o_$12_$0)]))) ==> ($h0_$7[$o_$12_$0,$f_$7_$0] == $h1_$7[$o_$12_$0,$f_$7_$0]) ))) && ((forall  $o_$12_$1 : ref, $f_$7_$1 : Field (Integer)  :: ( ((((!($o_$12_$1 == null)) && $h0_$7[$o_$12_$1,alloc]) && $h1_$7[$o_$12_$1,alloc]) && (($o_$12_$1 == n#15_$4) || ((!(n#15_$4 == null)) && $h0_$7[n#15_$4,Node.Repr][$Box($o_$12_$1)]))) ==> ($h0_$7[$o_$12_$1,$f_$7_$1] == $h1_$7[$o_$12_$1,$f_$7_$1]) )))) && ((forall  $o_$12_$2 : ref, $f_$7_$2 : Field (ref)  :: ( ((((!($o_$12_$2 == null)) && $h0_$7[$o_$12_$2,alloc]) && $h1_$7[$o_$12_$2,alloc]) && (($o_$12_$2 == n#15_$4) || ((!(n#15_$4 == null)) && $h0_$7[n#15_$4,Node.Repr][$Box($o_$12_$2)]))) ==> ($h0_$7[$o_$12_$2,$f_$7_$2] == $h1_$7[$o_$12_$2,$f_$7_$2]) )))) && ((forall  $o_$12_$3 : ref, $f_$7_$3 : Field (BoxType)  :: ( ((((!($o_$12_$3 == null)) && $h0_$7[$o_$12_$3,alloc]) && $h1_$7[$o_$12_$3,alloc]) && (($o_$12_$3 == n#15_$4) || ((!(n#15_$4 == null)) && $h0_$7[n#15_$4,Node.Repr][$Box($o_$12_$3)]))) ==> ($h0_$7[$o_$12_$3,$f_$7_$3] == $h1_$7[$o_$12_$3,$f_$7_$3]) )))) && ((forall  $o_$12_$4 : ref, $f_$7_$4 : Field (Set (BoxType) )  :: ( ((((!($o_$12_$4 == null)) && $h0_$7[$o_$12_$4,alloc]) && $h1_$7[$o_$12_$4,alloc]) && (($o_$12_$4 == n#15_$4) || ((!(n#15_$4 == null)) && $h0_$7[n#15_$4,Node.Repr][$Box($o_$12_$4)]))) ==> ($h0_$7[$o_$12_$4,$f_$7_$4] == $h1_$7[$o_$12_$4,$f_$7_$4]) )))) ==> (Node.Valid#limited($h0_$7,n#15_$4) <==> Node.Valid#limited($h1_$7,n#15_$4))) ));
	assume (forall  $Heap_$17 : HeapType, a#44 : Integer, b#45 : Integer :: {Math.max#2($Heap_$17,a#44,b#45)} ( Math.max#2($Heap_$17,a#44,b#45) == Math.max($Heap_$17,a#44,b#45) ));
	assume (forall  $Heap_$18 : HeapType, a#44_$0 : Integer, b#45_$0 : Integer :: {Math.max($Heap_$18,a#44_$0,b#45_$0)} ( Math.max($Heap_$18,a#44_$0,b#45_$0) == Math.max#limited($Heap_$18,a#44_$0,b#45_$0) ));
	assume ((0 < $ModuleContextHeight) || ((0 == $ModuleContextHeight) && ((3 <= $FunctionContextHeight) || $InMethodContext))) ==> ((forall  $Heap_$19 : HeapType, a#44_$1 : Integer, b#45_$1 : Integer :: {Math.max($Heap_$19,a#44_$1,b#45_$1)} ( (Math.max#canCall($Heap_$19,a#44_$1,b#45_$1) || ((((((!(0 == $ModuleContextHeight)) || (!(3 == $FunctionContextHeight))) || $InMethodContext) && $IsGoodHeap($Heap_$19)) && (0 <= a#44_$1)) && (0 <= b#45_$1))) ==> ((((((((a#44_$1 < b#45_$1) ==> true) && ((a#44_$1 >= b#45_$1) ==> true)) && (Math.max($Heap_$19,a#44_$1,b#45_$1) == (if (a#44_$1 < b#45_$1) then b#45_$1 else a#44_$1))) && ((a#44_$1 == b#45_$1) ==> ((Math.max#limited($Heap_$19,a#44_$1,b#45_$1) == a#44_$1) && (a#44_$1 == b#45_$1)))) && (a#44_$1 <= Math.max#limited($Heap_$19,a#44_$1,b#45_$1))) && (b#45_$1 <= Math.max#limited($Heap_$19,a#44_$1,b#45_$1))) && (0 <= Math.max($Heap_$19,a#44_$1,b#45_$1))) )));
	assume ((0 < $ModuleContextHeight) || ((0 == $ModuleContextHeight) && ((3 <= $FunctionContextHeight) || $InMethodContext))) ==> ((forall  $Heap_$20 : HeapType, a#44_$2 : Integer, b#45_$2 : Integer :: {Math.max#2($Heap_$20,a#44_$2,b#45_$2)} ( (Math.max#canCall($Heap_$20,a#44_$2,b#45_$2) || ((((((!(0 == $ModuleContextHeight)) || (!(3 == $FunctionContextHeight))) || $InMethodContext) && $IsGoodHeap($Heap_$20)) && (0 <= a#44_$2)) && (0 <= b#45_$2))) ==> (Math.max#2($Heap_$20,a#44_$2,b#45_$2) == (if (a#44_$2 < b#45_$2) then b#45_$2 else a#44_$2)) )));
	assume (forall  $h0_$8 : HeapType, $h1_$8 : HeapType, a#44_$3 : Integer, b#45_$3 : Integer :: {$HeapSucc($h0_$8,$h1_$8),Math.max($h1_$8,a#44_$3,b#45_$3)} ( (((((($IsGoodHeap($h0_$8) && $IsGoodHeap($h1_$8)) && (0 <= a#44_$3)) && (0 <= a#44_$3)) && (0 <= b#45_$3)) && (0 <= b#45_$3)) && $HeapSucc($h0_$8,$h1_$8)) ==> (((((((forall  $o_$13_$0 : ref, $f_$8_$0 : Field (Boolean)  :: ( false ==> ($h0_$8[$o_$13_$0,$f_$8_$0] == $h1_$8[$o_$13_$0,$f_$8_$0]) ))) && ((forall  $o_$13_$1 : ref, $f_$8_$1 : Field (Integer)  :: ( false ==> ($h0_$8[$o_$13_$1,$f_$8_$1] == $h1_$8[$o_$13_$1,$f_$8_$1]) )))) && ((forall  $o_$13_$2 : ref, $f_$8_$2 : Field (ref)  :: ( false ==> ($h0_$8[$o_$13_$2,$f_$8_$2] == $h1_$8[$o_$13_$2,$f_$8_$2]) )))) && ((forall  $o_$13_$3 : ref, $f_$8_$3 : Field (BoxType)  :: ( false ==> ($h0_$8[$o_$13_$3,$f_$8_$3] == $h1_$8[$o_$13_$3,$f_$8_$3]) )))) && ((forall  $o_$13_$4 : ref, $f_$8_$4 : Field (Set (BoxType) )  :: ( false ==> ($h0_$8[$o_$13_$4,$f_$8_$4] == $h1_$8[$o_$13_$4,$f_$8_$4]) )))) ==> (Math.max($h0_$8,a#44_$3,b#45_$3) == Math.max($h1_$8,a#44_$3,b#45_$3))) ));
	assume (forall  $h0_$9 : HeapType, $h1_$9 : HeapType, a#44_$4 : Integer, b#45_$4 : Integer :: {$HeapSucc($h0_$9,$h1_$9),Math.max#limited($h1_$9,a#44_$4,b#45_$4)} ( (((((($IsGoodHeap($h0_$9) && $IsGoodHeap($h1_$9)) && (0 <= a#44_$4)) && (0 <= a#44_$4)) && (0 <= b#45_$4)) && (0 <= b#45_$4)) && $HeapSucc($h0_$9,$h1_$9)) ==> (((((((forall  $o_$14_$0 : ref, $f_$9_$0 : Field (Boolean)  :: ( false ==> ($h0_$9[$o_$14_$0,$f_$9_$0] == $h1_$9[$o_$14_$0,$f_$9_$0]) ))) && ((forall  $o_$14_$1 : ref, $f_$9_$1 : Field (Integer)  :: ( false ==> ($h0_$9[$o_$14_$1,$f_$9_$1] == $h1_$9[$o_$14_$1,$f_$9_$1]) )))) && ((forall  $o_$14_$2 : ref, $f_$9_$2 : Field (ref)  :: ( false ==> ($h0_$9[$o_$14_$2,$f_$9_$2] == $h1_$9[$o_$14_$2,$f_$9_$2]) )))) && ((forall  $o_$14_$3 : ref, $f_$9_$3 : Field (BoxType)  :: ( false ==> ($h0_$9[$o_$14_$3,$f_$9_$3] == $h1_$9[$o_$14_$3,$f_$9_$3]) )))) && ((forall  $o_$14_$4 : ref, $f_$9_$4 : Field (Set (BoxType) )  :: ( false ==> ($h0_$9[$o_$14_$4,$f_$9_$4] == $h1_$9[$o_$14_$4,$f_$9_$4]) )))) ==> (Math.max#limited($h0_$9,a#44_$4,b#45_$4) == Math.max#limited($h1_$9,a#44_$4,b#45_$4))) ));
	assume (((((forall  $o_$22_$0 : ref, $f_$17_$0 : Field (Boolean) , Node.Repr_$0_$0 : Field (Set (BoxType) ) , null_$7_$0 : ref, $Heap_$28_$0 : HeapType, alloc_$7_$0 : Field (Boolean) , t#6_$0_$0 : ref :: {lambda#7(Node.Repr_$0_$0,null_$7_$0,$Heap_$28_$0,alloc_$7_$0,t#6_$0_$0)[$o_$22_$0,$f_$17_$0]} ( lambda#7(Node.Repr_$0_$0,null_$7_$0,$Heap_$28_$0,alloc_$7_$0,t#6_$0_$0)[$o_$22_$0,$f_$17_$0] <==> (((!($o_$22_$0 == null_$7_$0)) && $Heap_$28_$0[$o_$22_$0,alloc_$7_$0]) ==> ((!(t#6_$0_$0 == null_$7_$0)) && $Heap_$28_$0[t#6_$0_$0,Node.Repr_$0_$0][$Box($o_$22_$0)])) ))) && ((forall  $o_$22_$1 : ref, $f_$17_$1 : Field (Integer) , Node.Repr_$0_$1 : Field (Set (BoxType) ) , null_$7_$1 : ref, $Heap_$28_$1 : HeapType, alloc_$7_$1 : Field (Boolean) , t#6_$0_$1 : ref :: {lambda#7(Node.Repr_$0_$1,null_$7_$1,$Heap_$28_$1,alloc_$7_$1,t#6_$0_$1)[$o_$22_$1,$f_$17_$1]} ( lambda#7(Node.Repr_$0_$1,null_$7_$1,$Heap_$28_$1,alloc_$7_$1,t#6_$0_$1)[$o_$22_$1,$f_$17_$1] <==> (((!($o_$22_$1 == null_$7_$1)) && $Heap_$28_$1[$o_$22_$1,alloc_$7_$1]) ==> ((!(t#6_$0_$1 == null_$7_$1)) && $Heap_$28_$1[t#6_$0_$1,Node.Repr_$0_$1][$Box($o_$22_$1)])) )))) && ((forall  $o_$22_$2 : ref, $f_$17_$2 : Field (ref) , Node.Repr_$0_$2 : Field (Set (BoxType) ) , null_$7_$2 : ref, $Heap_$28_$2 : HeapType, alloc_$7_$2 : Field (Boolean) , t#6_$0_$2 : ref :: {lambda#7(Node.Repr_$0_$2,null_$7_$2,$Heap_$28_$2,alloc_$7_$2,t#6_$0_$2)[$o_$22_$2,$f_$17_$2]} ( lambda#7(Node.Repr_$0_$2,null_$7_$2,$Heap_$28_$2,alloc_$7_$2,t#6_$0_$2)[$o_$22_$2,$f_$17_$2] <==> (((!($o_$22_$2 == null_$7_$2)) && $Heap_$28_$2[$o_$22_$2,alloc_$7_$2]) ==> ((!(t#6_$0_$2 == null_$7_$2)) && $Heap_$28_$2[t#6_$0_$2,Node.Repr_$0_$2][$Box($o_$22_$2)])) )))) && ((forall  $o_$22_$3 : ref, $f_$17_$3 : Field (BoxType) , Node.Repr_$0_$3 : Field (Set (BoxType) ) , null_$7_$3 : ref, $Heap_$28_$3 : HeapType, alloc_$7_$3 : Field (Boolean) , t#6_$0_$3 : ref :: {lambda#7(Node.Repr_$0_$3,null_$7_$3,$Heap_$28_$3,alloc_$7_$3,t#6_$0_$3)[$o_$22_$3,$f_$17_$3]} ( lambda#7(Node.Repr_$0_$3,null_$7_$3,$Heap_$28_$3,alloc_$7_$3,t#6_$0_$3)[$o_$22_$3,$f_$17_$3] <==> (((!($o_$22_$3 == null_$7_$3)) && $Heap_$28_$3[$o_$22_$3,alloc_$7_$3]) ==> ((!(t#6_$0_$3 == null_$7_$3)) && $Heap_$28_$3[t#6_$0_$3,Node.Repr_$0_$3][$Box($o_$22_$3)])) )))) && ((forall  $o_$22_$4 : ref, $f_$17_$4 : Field (Set (BoxType) ) , Node.Repr_$0_$4 : Field (Set (BoxType) ) , null_$7_$4 : ref, $Heap_$28_$4 : HeapType, alloc_$7_$4 : Field (Boolean) , t#6_$0_$4 : ref :: {lambda#7(Node.Repr_$0_$4,null_$7_$4,$Heap_$28_$4,alloc_$7_$4,t#6_$0_$4)[$o_$22_$4,$f_$17_$4]} ( lambda#7(Node.Repr_$0_$4,null_$7_$4,$Heap_$28_$4,alloc_$7_$4,t#6_$0_$4)[$o_$22_$4,$f_$17_$4] <==> (((!($o_$22_$4 == null_$7_$4)) && $Heap_$28_$4[$o_$22_$4,alloc_$7_$4]) ==> ((!(t#6_$0_$4 == null_$7_$4)) && $Heap_$28_$4[t#6_$0_$4,Node.Repr_$0_$4][$Box($o_$22_$4)])) )));
	goto PreconditionGeneratedEntry;
$exit:
	assume false;
PreconditionGeneratedEntry:
	assume $IsGoodHeap($Heap);
	assume ((!(this == null)) && $Heap[this,alloc]) && (dtype(this) == class.AVLTree);
	assume (t#6 == null) || ($Heap[t#6,alloc] && (dtype(t#6) == class.Node));
	assume (r#8 == null) || ($Heap[r#8,alloc] && (dtype(r#8) == class.Node));
	assume (0 == $ModuleContextHeight) && $InMethodContext;
	goto anon0;
anon0:
	assume $_Frame_$_0 == lambda#7(Node.Repr,null,$Heap,alloc,t#6);
	assume Node.Valid#canCall($Heap,t#6);
	if ($_$_condition) { goto anon30_Then; } else { goto anon30_Else; }
anon30_Then:
	assume $_$_condition;
	assume $_$_condition <==> Node.Valid($Heap,t#6);
	assume Node.Valid($Heap,t#6);
	assert  Node.Valid($Heap,t#6);
	assume Node.BalanceValid#canCall($Heap,t#6);
	goto $branchMerge_0;
anon30_Else:
	assume !$_$_condition;
	assume $_$_condition <==> Node.Valid($Heap,t#6);
	assume !Node.Valid($Heap,t#6);
	goto $branchMerge_0;
anon31_Then:
	assume $_$_condition_$0;
	assume $_$_condition_$0 <==> (Node.Valid($Heap,t#6) && Node.BalanceValid($Heap,t#6));
	assume Node.Valid($Heap,t#6) && Node.BalanceValid($Heap,t#6);
	assert  Node.Valid($Heap,t#6) && Node.BalanceValid($Heap,t#6);
	assume Node.Balanced#canCall($Heap,t#6);
	goto anon4;
anon31_Else:
	assume !$_$_condition_$0;
	assume $_$_condition_$0 <==> (Node.Valid($Heap,t#6) && Node.BalanceValid($Heap,t#6));
	assume !(Node.Valid($Heap,t#6) && Node.BalanceValid($Heap,t#6));
	goto anon4;
anon4:
	assume (Node.Valid($Heap,t#6) && Node.BalanceValid($Heap,t#6)) && Node.Balanced($Heap,t#6);
	if ($_$_condition_$2) { goto anon32_Then; } else { goto anon32_Else; }
anon32_Then:
	assume $_$_condition_$2;
	assume $_$_condition_$2 <==> (!(t#6 == null));
	assume !(t#6 == null);
	assert  !(t#6 == null);
	goto anon7;
anon32_Else:
	assume !$_$_condition_$2;
	assume $_$_condition_$2 <==> (!(t#6 == null));
	assume t#6 == null;
	goto anon7;
anon7:
	assume $IsGoodHeap($Heap_$_0);
	assume (((((forall  $o_$41_$0 : ref, $f_$36_$0 : Field (Boolean)  :: {$Heap_$_0[$o_$41_$0,$f_$36_$0]} ( ((!($o_$41_$0 == null)) && $Heap[$o_$41_$0,alloc]) ==> (($Heap_$_0[$o_$41_$0,$f_$36_$0] == $Heap[$o_$41_$0,$f_$36_$0]) || ((!(t#6 == null)) && $Heap[t#6,Node.Repr][$Box($o_$41_$0)])) ))) && ((forall  $o_$41_$1 : ref, $f_$36_$1 : Field (Integer)  :: {$Heap_$_0[$o_$41_$1,$f_$36_$1]} ( ((!($o_$41_$1 == null)) && $Heap[$o_$41_$1,alloc]) ==> (($Heap_$_0[$o_$41_$1,$f_$36_$1] == $Heap[$o_$41_$1,$f_$36_$1]) || ((!(t#6 == null)) && $Heap[t#6,Node.Repr][$Box($o_$41_$1)])) )))) && ((forall  $o_$41_$2 : ref, $f_$36_$2 : Field (ref)  :: {$Heap_$_0[$o_$41_$2,$f_$36_$2]} ( ((!($o_$41_$2 == null)) && $Heap[$o_$41_$2,alloc]) ==> (($Heap_$_0[$o_$41_$2,$f_$36_$2] == $Heap[$o_$41_$2,$f_$36_$2]) || ((!(t#6 == null)) && $Heap[t#6,Node.Repr][$Box($o_$41_$2)])) )))) && ((forall  $o_$41_$3 : ref, $f_$36_$3 : Field (BoxType)  :: {$Heap_$_0[$o_$41_$3,$f_$36_$3]} ( ((!($o_$41_$3 == null)) && $Heap[$o_$41_$3,alloc]) ==> (($Heap_$_0[$o_$41_$3,$f_$36_$3] == $Heap[$o_$41_$3,$f_$36_$3]) || ((!(t#6 == null)) && $Heap[t#6,Node.Repr][$Box($o_$41_$3)])) )))) && ((forall  $o_$41_$4 : ref, $f_$36_$4 : Field (Set (BoxType) )  :: {$Heap_$_0[$o_$41_$4,$f_$36_$4]} ( ((!($o_$41_$4 == null)) && $Heap[$o_$41_$4,alloc]) ==> (($Heap_$_0[$o_$41_$4,$f_$36_$4] == $Heap[$o_$41_$4,$f_$36_$4]) || ((!(t#6 == null)) && $Heap[t#6,Node.Repr][$Box($o_$41_$4)])) )));
	assume $HeapSucc($Heap,$Heap_$_0);
	assume (r#8_$_0 == null) || ($Heap_$_0[r#8_$_0,alloc] && (dtype(r#8_$_0) == class.Node));
	if ($_$_condition_$3) { goto anon33_Then; } else { goto anon33_Else; }
anon33_Then:
	assume $_$_condition_$3;
	assume $_$_condition_$3 <==> (!(r#8_$_0 == null));
	assume !(r#8_$_0 == null);
	if ($_$_condition_$4) { goto anon34_Then; } else { goto anon34_Else; }
anon33_Else:
	assume !$_$_condition_$3;
	assume $_$_condition_$3 <==> (!(r#8_$_0 == null));
	assume r#8_$_0 == null;
	goto anon12;
anon34_Then:
	assume $_$_condition_$4;
	assume $_$_condition_$4 <==> (!(t#6 == null));
	assume !(t#6 == null);
	assert  !(t#6 == null);
	goto $branchMerge_1;
anon34_Else:
	assume !$_$_condition_$4;
	assume $_$_condition_$4 <==> (!(t#6 == null));
	assume t#6 == null;
	goto $branchMerge_1;
anon12:
	assume (!(r#8_$_0 == null)) && ((((!(t#6 == null)) && $Heap[t#6,Node.Repr][$Box(r#8_$_0)]) || (r#8_$_0 == null)) || (!$Heap[r#8_$_0,alloc]));
	if ($_$_condition_$7) { goto anon36_Then; } else { goto anon36_Else; }
anon35_Then:
	assume $_$_condition_$5;
	assume $_$_condition_$5 <==> (!((!(t#6 == null)) && $Heap[t#6,Node.Repr][$Box(r#8_$_0)]));
	assume !((!(t#6 == null)) && $Heap[t#6,Node.Repr][$Box(r#8_$_0)]);
	goto anon12;
anon35_Else:
	assume !$_$_condition_$5;
	assume $_$_condition_$5 <==> (!((!(t#6 == null)) && $Heap[t#6,Node.Repr][$Box(r#8_$_0)]));
	assume (!(t#6 == null)) && $Heap[t#6,Node.Repr][$Box(r#8_$_0)];
	goto anon12;
anon36_Then:
	assume $_$_condition_$7;
	assume $_$_condition_$7 <==> (!(t#6 == null));
	assume !(t#6 == null);
	assert  !(r#8_$_0 == null);
	assert  !(t#6 == null);
	if ($_$_condition_$8) { goto anon37_Then; } else { goto anon37_Else; }
anon36_Else:
	assume !$_$_condition_$7;
	assume $_$_condition_$7 <==> (!(t#6 == null));
	assume t#6 == null;
	goto anon15;
anon37_Then:
	assume $_$_condition_$8;
	assume (forall  $o_$42 : ref :: ( (((!($o_$42 == null)) && $Heap_$_0[r#8_$_0,Node.Repr][$Box($o_$42)]) && (!$Heap[t#6,Node.Repr][$Box($o_$42)])) ==> (!$Heap[$o_$42,alloc]) ));
	assert  !(r#8_$_0 == null);
	assert  !(t#6 == null);
	goto anon15;
anon37_Else:
	assume !$_$_condition_$8;
	assume !((forall  $o_$43 : ref :: ( (((!($o_$43 == null)) && $Heap_$_0[r#8_$_0,Node.Repr][$Box($o_$43)]) && (!$Heap[t#6,Node.Repr][$Box($o_$43)])) ==> (!$Heap[$o_$43,alloc]) )));
	goto anon15;
anon15:
	assume (!(t#6 == null)) ==> (((forall  $o_$44 : ref :: ( (((!($o_$44 == null)) && $Heap_$_0[r#8_$_0,Node.Repr][$Box($o_$44)]) && (!$Heap[t#6,Node.Repr][$Box($o_$44)])) ==> (!$Heap[$o_$44,alloc]) ))) && Set#Equal($Heap_$_0[r#8_$_0,Node.Contents],Set#Union($Heap[t#6,Node.Contents],Set#UnionOne((Set#Empty() : Set (BoxType) ),$Box(key#7)))));
	if ($_$_condition_$9) { goto anon38_Then; } else { goto anon38_Else; }
anon38_Then:
	assume $_$_condition_$9;
	assume $_$_condition_$9 <==> (t#6 == null);
	assume t#6 == null;
	assert  !(r#8_$_0 == null);
	if ($_$_condition_$10) { goto anon39_Then; } else { goto anon39_Else; }
anon38_Else:
	assume !$_$_condition_$9;
	assume $_$_condition_$9 <==> (t#6 == null);
	assume !(t#6 == null);
	goto anon18;
anon39_Then:
	assume $_$_condition_$10;
	assume (forall  $o_$45 : ref :: ( ((!($o_$45 == null)) && $Heap_$_0[r#8_$_0,Node.Repr][$Box($o_$45)]) ==> (!$Heap[$o_$45,alloc]) ));
	assert  !(r#8_$_0 == null);
	goto anon18;
anon39_Else:
	assume !$_$_condition_$10;
	assume !((forall  $o_$46 : ref :: ( ((!($o_$46 == null)) && $Heap_$_0[r#8_$_0,Node.Repr][$Box($o_$46)]) ==> (!$Heap[$o_$46,alloc]) )));
	goto anon18;
anon18:
	assume (t#6 == null) ==> (((forall  $o_$47 : ref :: ( ((!($o_$47 == null)) && $Heap_$_0[r#8_$_0,Node.Repr][$Box($o_$47)]) ==> (!$Heap[$o_$47,alloc]) ))) && Set#Equal($Heap_$_0[r#8_$_0,Node.Contents],Set#UnionOne((Set#Empty() : Set (BoxType) ),$Box(key#7))));
	assume Node.Valid#canCall($Heap_$_0,r#8_$_0);
	if ($_$_condition_$11) { goto anon40_Then; } else { goto anon40_Else; }
anon40_Then:
	assume $_$_condition_$11;
	assume $_$_condition_$11 <==> Node.Valid($Heap_$_0,r#8_$_0);
	assume Node.Valid($Heap_$_0,r#8_$_0);
	assert  Node.Valid($Heap_$_0,r#8_$_0);
	assume Node.BalanceValid#canCall($Heap_$_0,r#8_$_0);
	goto $branchMerge_2;
anon40_Else:
	assume !$_$_condition_$11;
	assume $_$_condition_$11 <==> Node.Valid($Heap_$_0,r#8_$_0);
	assume !Node.Valid($Heap_$_0,r#8_$_0);
	goto $branchMerge_2;
anon41_Then:
	assume $_$_condition_$12;
	assume $_$_condition_$12 <==> (Node.Valid($Heap_$_0,r#8_$_0) && Node.BalanceValid($Heap_$_0,r#8_$_0));
	assume Node.Valid($Heap_$_0,r#8_$_0) && Node.BalanceValid($Heap_$_0,r#8_$_0);
	assert  Node.Valid($Heap_$_0,r#8_$_0) && Node.BalanceValid($Heap_$_0,r#8_$_0);
	assume Node.Balanced#canCall($Heap_$_0,r#8_$_0);
	goto anon22;
anon41_Else:
	assume !$_$_condition_$12;
	assume $_$_condition_$12 <==> (Node.Valid($Heap_$_0,r#8_$_0) && Node.BalanceValid($Heap_$_0,r#8_$_0));
	assume !(Node.Valid($Heap_$_0,r#8_$_0) && Node.BalanceValid($Heap_$_0,r#8_$_0));
	goto anon22;
anon22:
	assume (Node.Valid($Heap_$_0,r#8_$_0) && Node.BalanceValid($Heap_$_0,r#8_$_0)) && Node.Balanced($Heap_$_0,r#8_$_0);
	assert  Node.Valid($Heap_$_0,r#8_$_0);
	assume Node.Height#canCall($Heap_$_0,r#8_$_0);
	assert  (t#6 == null) || ($Heap[t#6,alloc] && (dtype(t#6) == class.Node));
	assert  Node.Valid($Heap,t#6);
	assume Node.Height#canCall($Heap,t#6);
	if ($_$_condition_$14) { goto anon42_Then; } else { goto anon42_Else; }
anon42_Then:
	assume $_$_condition_$14;
	assume $_$_condition_$14 <==> ((Node.Height($Heap_$_0,r#8_$_0) - Node.Height($Heap,t#6)) == deltaH#9_$_0);
	assume (Node.Height($Heap_$_0,r#8_$_0) - Node.Height($Heap,t#6)) == deltaH#9_$_0;
	if ($_$_condition_$15) { goto anon43_Then; } else { goto anon43_Else; }
anon42_Else:
	assume !$_$_condition_$14;
	assume $_$_condition_$14 <==> ((Node.Height($Heap_$_0,r#8_$_0) - Node.Height($Heap,t#6)) == deltaH#9_$_0);
	assume !((Node.Height($Heap_$_0,r#8_$_0) - Node.Height($Heap,t#6)) == deltaH#9_$_0);
	goto anon25;
anon43_Then:
	assume $_$_condition_$15;
	assume $_$_condition_$15 <==> (!(deltaH#9_$_0 == 0));
	assume !(deltaH#9_$_0 == 0);
	goto anon25;
anon43_Else:
	assume !$_$_condition_$15;
	assume $_$_condition_$15 <==> (!(deltaH#9_$_0 == 0));
	assume deltaH#9_$_0 == 0;
	goto anon25;
anon25:
	assume ((Node.Height($Heap_$_0,r#8_$_0) - Node.Height($Heap,t#6)) == deltaH#9_$_0) && ((deltaH#9_$_0 == 0) || (deltaH#9_$_0 == 1));
	if ($_$_condition_$16) { goto anon44_Then; } else { goto anon44_Else; }
anon44_Then:
	assume $_$_condition_$16;
	assume $_$_condition_$16 <==> (!(t#6 == null));
	assume !(t#6 == null);
	goto $branchMerge_3;
anon44_Else:
	assume !$_$_condition_$16;
	assume $_$_condition_$16 <==> (!(t#6 == null));
	assume t#6 == null;
	goto $branchMerge_3;
anon45_Then:
	assume $_$_condition_$17;
	assume $_$_condition_$17 <==> ((!(t#6 == null)) && (deltaH#9_$_0 == 1));
	assume (!(t#6 == null)) && (deltaH#9_$_0 == 1);
	assert  !(r#8_$_0 == null);
	goto anon29;
anon45_Else:
	assume !$_$_condition_$17;
	assume $_$_condition_$17 <==> ((!(t#6 == null)) && (deltaH#9_$_0 == 1));
	assume !((!(t#6 == null)) && (deltaH#9_$_0 == 1));
	goto anon29;
anon29:
	assume ((!(t#6 == null)) && (deltaH#9_$_0 == 1)) ==> (!($Heap_$_0[r#8_$_0,Node.balance] == 0));
	goto $exit;
$branchMerge_0:
	if ($_$_condition_$0) { goto anon31_Then; } else { goto anon31_Else; }
$branchMerge_1:
	if ($_$_condition_$5) { goto anon35_Then; } else { goto anon35_Else; }
$branchMerge_2:
	if ($_$_condition_$12) { goto anon41_Then; } else { goto anon41_Else; }
$branchMerge_3:
	if ($_$_condition_$17) { goto anon45_Then; } else { goto anon45_Else; }
}
