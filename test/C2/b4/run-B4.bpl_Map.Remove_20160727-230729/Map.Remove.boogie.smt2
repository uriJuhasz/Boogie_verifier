(set-option :print-success false)
(set-info :smt-lib-version 2.0)
(set-option :AUTO_CONFIG false)
(set-option :pp.bv_literals false)
(set-option :MODEL.V2 true)
(set-option :smt.PHASE_SELECTION 0)
(set-option :smt.RESTART_STRATEGY 0)
(set-option :smt.RESTART_FACTOR |1.5|)
(set-option :smt.ARITH.RANDOM_INITIAL_VALUE true)
(set-option :smt.CASE_SPLIT 3)
(set-option :smt.DELAY_UNITS true)
(set-option :NNF.SK_HACK true)
(set-option :smt.MBQI false)
(set-option :smt.QI.EAGER_THRESHOLD 100)
(set-option :TYPE_CHECK true)
(set-option :smt.BV.REFLECT true)
(set-option :TIMEOUT 0)
; done setting options


(set-info :category "industrial")
(declare-sort |T@U| 0)
(declare-sort |T@T| 0)
(declare-fun real_pow (Real Real) Real)
(declare-fun UOrdering2 (|T@U| |T@U|) Bool)
(declare-fun UOrdering3 (|T@T| |T@U| |T@U|) Bool)
(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun Ctor (T@T) Int)
(declare-fun intType () T@T)
(declare-fun realType () T@T)
(declare-fun boolType () T@T)
(declare-fun int_2_U (Int) T@U)
(declare-fun U_2_int (T@U) Int)
(declare-fun type (T@U) T@T)
(declare-fun real_2_U (Real) T@U)
(declare-fun U_2_real (T@U) Real)
(declare-fun bool_2_U (Bool) T@U)
(declare-fun U_2_bool (T@U) Bool)
(declare-fun ClassNameType () T@T)
(declare-fun class.int () T@U)
(declare-fun class.bool () T@U)
(declare-fun class.set () T@U)
(declare-fun class.seq () T@U)
(declare-fun FieldType (T@T) T@T)
(declare-fun FieldTypeInv0 (T@T) T@T)
(declare-fun alloc () T@U)
(declare-fun class.object () T@U)
(declare-fun class.array () T@U)
(declare-fun class.Map () T@U)
(declare-fun SeqType (T@T) T@T)
(declare-fun SeqTypeInv0 (T@T) T@T)
(declare-fun BoxTypeType () T@T)
(declare-fun Map.Keys () T@U)
(declare-fun Map.Values () T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Select (T@U T@U) T@U)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun Map.Repr () T@U)
(declare-fun refType () T@T)
(declare-fun Map.head () T@U)
(declare-fun Map.nodes () T@U)
(declare-fun class.Node () T@U)
(declare-fun Node.key () T@U)
(declare-fun Node.val () T@U)
(declare-fun Node.next () T@U)
(declare-fun class._default () T@U)
(declare-fun $$Language$Dafny () Bool)
(declare-fun |Set#Empty| (T@T) T@U)
(declare-fun |Set#Singleton| (T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun TickTypeType () T@T)
(declare-fun |Set#Choose| (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| (T@T) T@U)
(declare-fun |Seq#Singleton| (T@U) T@U)
(declare-fun |Seq#Build| (T@U Int T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Update| (T@U Int T@U) T@U)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#SameUntil| (T@U T@U Int) Bool)
(declare-fun $Box (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun $IsCanonicalBoolBox (T@U) Bool)
(declare-fun TypeTuple (T@U T@U) T@U)
(declare-fun TypeTupleCar (T@U) T@U)
(declare-fun TypeTupleCdr (T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun FDim (T@U) Int)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun MultiIndexField (T@U Int) T@U)
(declare-fun MultiIndexField_Inverse0 (T@U) T@U)
(declare-fun MultiIndexField_Inverse1 (T@U) Int)
(declare-fun MapType1Type (T@T) T@T)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1Select (T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@U T@U T@U T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun DtAlloc (T@U T@U) Bool)
(declare-fun GenericAlloc (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun DtType (T@U) T@U)
(declare-fun TType () T@T)
(declare-fun type@@0 (T@U) T@U)
(declare-fun h@@5 () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun h@@7 () T@U)
(declare-fun array.Length (T@U) Int)
(declare-fun DeclType (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $ModuleContextHeight () Int)
(declare-fun $FunctionContextHeight () Int)
(declare-fun $InMethodContext () Bool)
(declare-fun Map.Valid (T@U T@U) Bool)
(declare-fun |Map.Valid#canCall| (T@U T@U) Bool)
(declare-fun MapType2Type (T@T T@T) T@T)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2TypeInv1 (T@T) T@T)
(declare-fun MapType2Select (T@U T@U T@U) T@U)
(declare-fun MapType2Store (T@U T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U T@U) T@U)
(declare-fun |lambda#3| (T@U T@U T@U) T@U)
(declare-fun |lambda#4| (T@U T@U T@U) T@U)
(declare-fun |lambda#5| (T@U T@U T@U T@U T@U) T@U)
(declare-fun |lambda#6| (T@U T@U T@U T@U T@U) T@U)
(declare-fun |lambda#7| (T@U T@U T@U T@U T@U) T@U)
(declare-fun |lambda#8| (T@U T@U T@U T@U T@U) T@U)
(declare-fun |lambda#9| (T@U T@U T@U) T@U)
(declare-fun |lambda#10| (T@U T@U T@U) T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun this@@8 () T@U)
(declare-fun $Heap@@11 () T@U)
(declare-fun |key#16| () T@U)
(declare-fun |call4formal@p#24@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |call6formal@prev#26@0| () T@U)
(declare-fun $_Frame@0 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |$rhs#6@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |$rhs#7@0| () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |$rhs#3@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |$rhs#4@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |$rhs#5@0| () T@U)
(declare-fun |call4formal@p#24| () T@U)
(declare-fun |call6formal@prev#26| () T@U)
(declare-fun |p#20| () T@U)
(declare-fun |prev#22| () T@U)
(declare-fun |$rhs#0| () T@U)
(declare-fun |$rhs#2| () T@U)
(declare-fun %lbl%+44566 () Bool)
(declare-fun %lbl%@48730 () Bool)
(declare-fun %lbl%@48757 () Bool)
(declare-fun %lbl%@48791 () Bool)
(declare-fun %lbl%@48829 () Bool)
(declare-fun %lbl%@48867 () Bool)
(declare-fun %lbl%@49112 () Bool)
(declare-fun %lbl%@49156 () Bool)
(declare-fun $o@@19 () T@U)
(declare-fun %lbl%@49208 () Bool)
(declare-fun |k#17| () T@U)
(declare-fun %lbl%@49242 () Bool)
(declare-fun |k#18| () T@U)
(declare-fun %lbl%@49284 () Bool)
(declare-fun %lbl%@49315 () Bool)
(declare-fun %lbl%@49346 () Bool)
(declare-fun %lbl%@49383 () Bool)
(declare-fun %lbl%@49409 () Bool)
(declare-fun %lbl%+16006 () Bool)
(declare-fun %lbl%@48670 () Bool)
(declare-fun %lbl%@48677 () Bool)
(declare-fun %lbl%@48683 () Bool)
(declare-fun %lbl%+16004 () Bool)
(declare-fun %lbl%@48610 () Bool)
(declare-fun %lbl%@48617 () Bool)
(declare-fun %lbl%+16002 () Bool)
(declare-fun %lbl%@48132 () Bool)
(declare-fun %lbl%@48139 () Bool)
(declare-fun |call5formal@n#25@0| () Int)
(declare-fun %lbl%@48158 () Bool)
(declare-fun %lbl%@48238 () Bool)
(declare-fun %lbl%@48245 () Bool)
(declare-fun %lbl%@48264 () Bool)
(declare-fun %lbl%@48342 () Bool)
(declare-fun %lbl%@48361 () Bool)
(declare-fun %lbl%@48390 () Bool)
(declare-fun %lbl%@48416 () Bool)
(declare-fun %lbl%@48435 () Bool)
(declare-fun %lbl%@48464 () Bool)
(declare-fun %lbl%@48492 () Bool)
(declare-fun %lbl%@48499 () Bool)
(declare-fun %lbl%@48518 () Bool)
(declare-fun %lbl%+16008 () Bool)
(declare-fun %lbl%+15995 () Bool)
(declare-fun %lbl%@47359 () Bool)
(declare-fun $o@@20 () T@U)
(declare-fun $f@@11 () T@U)
(declare-fun %lbl%@47380 () Bool)
(declare-fun %lbl%@47406 () Bool)
(declare-fun %lbl%@47440 () Bool)
(declare-fun %lbl%@47478 () Bool)
(declare-fun %lbl%@47516 () Bool)
(declare-fun %lbl%@47765 () Bool)
(declare-fun %lbl%+44604 () Bool)
(assert  (and (and (and (and (and (and (and (and (and (and (and (= (Ctor intType) 0) (= (Ctor realType) 1)) (= (Ctor boolType) 2)) (forall ((arg0 Int) ) (! (= (U_2_int (int_2_U arg0)) arg0)
 :qid |typeInv:U_2_int|
 :pattern ( (int_2_U arg0))
))) (forall ((x T@U) ) (!  (=> (= (type x) intType) (= (int_2_U (U_2_int x)) x))
 :qid |cast:U_2_int|
 :pattern ( (U_2_int x))
))) (forall ((arg0@@0 Int) ) (! (= (type (int_2_U arg0@@0)) intType)
 :qid |funType:int_2_U|
 :pattern ( (int_2_U arg0@@0))
))) (forall ((arg0@@1 Real) ) (! (= (U_2_real (real_2_U arg0@@1)) arg0@@1)
 :qid |typeInv:U_2_real|
 :pattern ( (real_2_U arg0@@1))
))) (forall ((x@@0 T@U) ) (!  (=> (= (type x@@0) realType) (= (real_2_U (U_2_real x@@0)) x@@0))
 :qid |cast:U_2_real|
 :pattern ( (U_2_real x@@0))
))) (forall ((arg0@@2 Real) ) (! (= (type (real_2_U arg0@@2)) realType)
 :qid |funType:real_2_U|
 :pattern ( (real_2_U arg0@@2))
))) (forall ((arg0@@3 Bool) ) (! (= (U_2_bool (bool_2_U arg0@@3)) arg0@@3)
 :qid |typeInv:U_2_bool|
 :pattern ( (bool_2_U arg0@@3))
))) (forall ((x@@1 T@U) ) (!  (=> (= (type x@@1) boolType) (= (bool_2_U (U_2_bool x@@1)) x@@1))
 :qid |cast:U_2_bool|
 :pattern ( (U_2_bool x@@1))
))) (forall ((arg0@@4 Bool) ) (! (= (type (bool_2_U arg0@@4)) boolType)
 :qid |funType:bool_2_U|
 :pattern ( (bool_2_U arg0@@4))
))))
(assert (forall ((x@@2 T@U) ) (! (UOrdering2 x@@2 x@@2)
 :qid |bg:subtype-refl|
 :no-pattern (U_2_int x@@2)
 :no-pattern (U_2_bool x@@2)
)))
(assert (forall ((x@@3 T@U) (y T@U) (z T@U) ) (! (let ((alpha (type x@@3)))
 (=> (and (and (= (type y) alpha) (= (type z) alpha)) (and (UOrdering2 x@@3 y) (UOrdering2 y z))) (UOrdering2 x@@3 z)))
 :qid |bg:subtype-trans|
 :pattern ( (UOrdering2 x@@3 y) (UOrdering2 y z))
)))
(assert (forall ((x@@4 T@U) (y@@0 T@U) ) (! (let ((alpha@@0 (type x@@4)))
 (=> (= (type y@@0) alpha@@0) (=> (and (UOrdering2 x@@4 y@@0) (UOrdering2 y@@0 x@@4)) (= x@@4 y@@0))))
 :qid |bg:subtype-antisymm|
 :pattern ( (UOrdering2 x@@4 y@@0) (UOrdering2 y@@0 x@@4))
)))
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (Ctor ClassNameType) 3) (= (type class.int) ClassNameType)) (= (type class.bool) ClassNameType)) (= (type class.set) ClassNameType)) (= (type class.seq) ClassNameType)) (forall ((arg0@@5 T@T) ) (! (= (Ctor (FieldType arg0@@5)) 4)
 :qid |ctor:FieldType|
))) (forall ((arg0@@6 T@T) ) (! (= (FieldTypeInv0 (FieldType arg0@@6)) arg0@@6)
 :qid |typeInv:FieldTypeInv0|
 :pattern ( (FieldType arg0@@6))
))) (= (type alloc) (FieldType boolType))) (= (type class.object) ClassNameType)) (= (type class.array) ClassNameType)) (= (type class.Map) ClassNameType)) (forall ((arg0@@7 T@T) ) (! (= (Ctor (SeqType arg0@@7)) 5)
 :qid |ctor:SeqType|
))) (forall ((arg0@@8 T@T) ) (! (= (SeqTypeInv0 (SeqType arg0@@8)) arg0@@8)
 :qid |typeInv:SeqTypeInv0|
 :pattern ( (SeqType arg0@@8))
))) (= (Ctor BoxTypeType) 6)) (= (type Map.Keys) (FieldType (SeqType BoxTypeType)))) (= (type Map.Values) (FieldType (SeqType BoxTypeType)))) (forall ((arg0@@9 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@9 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@10 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@10 arg1@@0)) arg0@@10)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@10 arg1@@0))
))) (forall ((arg0@@11 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@11 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@11 arg1@@1))
))) (forall ((arg0@@12 T@U) (arg1@@2 T@U) ) (! (let ((aVar1 (MapType0TypeInv1 (type arg0@@12))))
(= (type (MapType0Select arg0@@12 arg1@@2)) aVar1))
 :qid |funType:MapType0Select|
 :pattern ( (MapType0Select arg0@@12 arg1@@2))
))) (forall ((arg0@@13 T@U) (arg1@@3 T@U) (arg2 T@U) ) (! (let ((aVar1@@0 (type arg2)))
(let ((aVar0 (type arg1@@3)))
(= (type (MapType0Store arg0@@13 arg1@@3 arg2)) (MapType0Type aVar0 aVar1@@0))))
 :qid |funType:MapType0Store|
 :pattern ( (MapType0Store arg0@@13 arg1@@3 arg2))
))) (forall ((m T@U) (x0 T@U) (val T@U) ) (! (let ((aVar1@@1 (MapType0TypeInv1 (type m))))
 (=> (= (type val) aVar1@@1) (= (MapType0Select (MapType0Store m x0 val) x0) val)))
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (and (forall ((val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select (MapType0Store m@@0 x0@@0 val@@0) y0) (MapType0Select m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (y0@@0 T@U) ) (!  (or true (= (MapType0Select (MapType0Store m@@1 x0@@1 val@@1) y0@@0) (MapType0Select m@@1 y0@@0)))
 :qid |mapAx2:MapType0Select|
 :weight 0
)))) (= (type Map.Repr) (FieldType (MapType0Type BoxTypeType boolType)))) (= (Ctor refType) 8)) (= (type Map.head) (FieldType refType))) (= (type Map.nodes) (FieldType (SeqType BoxTypeType)))) (= (type class.Node) ClassNameType)) (= (type Node.key) (FieldType BoxTypeType))) (= (type Node.val) (FieldType BoxTypeType))) (= (type Node.next) (FieldType refType))) (= (type class._default) ClassNameType)))
(assert (distinct class.int class.bool class.set class.seq alloc class.object class.array class.Map Map.Keys Map.Values Map.Repr Map.head Map.nodes class.Node Node.key Node.val Node.next class._default)
)
(assert $$Language$Dafny)
(assert (forall ((T T@T) ) (! (= (type (|Set#Empty| T)) (MapType0Type T boolType))
 :qid |funType:Set#Empty|
 :pattern ( (|Set#Empty| T))
)))
(assert (forall ((o T@U) ) (! (let ((T@@0 (type o)))
 (not (U_2_bool (MapType0Select (|Set#Empty| T@@0) o))))
 :qid |B4bpl.16:18|
 :skolemid |0|
 :pattern ( (let ((T@@0 (type o)))
(MapType0Select (|Set#Empty| T@@0) o)))
)))
(assert (forall ((arg0@@14 T@U) ) (! (let ((T@@1 (type arg0@@14)))
(= (type (|Set#Singleton| arg0@@14)) (MapType0Type T@@1 boolType)))
 :qid |funType:Set#Singleton|
 :pattern ( (|Set#Singleton| arg0@@14))
)))
(assert (forall ((r T@U) ) (! (U_2_bool (MapType0Select (|Set#Singleton| r) r))
 :qid |B4bpl.20:18|
 :skolemid |1|
 :pattern ( (|Set#Singleton| r))
)))
(assert (forall ((r@@0 T@U) (o@@0 T@U) ) (! (let ((T@@2 (type r@@0)))
 (=> (= (type o@@0) T@@2) (and (=> (U_2_bool (MapType0Select (|Set#Singleton| r@@0) o@@0)) (= r@@0 o@@0)) (=> (= r@@0 o@@0) (U_2_bool (MapType0Select (|Set#Singleton| r@@0) o@@0))))))
 :qid |B4bpl.22:18|
 :skolemid |2|
 :pattern ( (MapType0Select (|Set#Singleton| r@@0) o@@0))
)))
(assert (forall ((arg0@@15 T@U) (arg1@@4 T@U) ) (! (let ((T@@3 (type arg1@@4)))
(= (type (|Set#UnionOne| arg0@@15 arg1@@4)) (MapType0Type T@@3 boolType)))
 :qid |funType:Set#UnionOne|
 :pattern ( (|Set#UnionOne| arg0@@15 arg1@@4))
)))
(assert (forall ((a T@U) (x@@5 T@U) (o@@1 T@U) ) (! (let ((T@@4 (type x@@5)))
 (=> (and (= (type a) (MapType0Type T@@4 boolType)) (= (type o@@1) T@@4)) (and (=> (U_2_bool (MapType0Select (|Set#UnionOne| a x@@5) o@@1)) (or (= o@@1 x@@5) (U_2_bool (MapType0Select a o@@1)))) (=> (or (= o@@1 x@@5) (U_2_bool (MapType0Select a o@@1))) (U_2_bool (MapType0Select (|Set#UnionOne| a x@@5) o@@1))))))
 :qid |B4bpl.26:18|
 :skolemid |3|
 :pattern ( (MapType0Select (|Set#UnionOne| a x@@5) o@@1))
)))
(assert (forall ((a@@0 T@U) (x@@6 T@U) ) (! (let ((T@@5 (type x@@6)))
 (=> (= (type a@@0) (MapType0Type T@@5 boolType)) (U_2_bool (MapType0Select (|Set#UnionOne| a@@0 x@@6) x@@6))))
 :qid |B4bpl.28:18|
 :skolemid |4|
 :pattern ( (|Set#UnionOne| a@@0 x@@6))
)))
(assert (forall ((a@@1 T@U) (x@@7 T@U) (y@@1 T@U) ) (! (let ((T@@6 (type x@@7)))
 (=> (and (and (= (type a@@1) (MapType0Type T@@6 boolType)) (= (type y@@1) T@@6)) (U_2_bool (MapType0Select a@@1 y@@1))) (U_2_bool (MapType0Select (|Set#UnionOne| a@@1 x@@7) y@@1))))
 :qid |B4bpl.30:18|
 :skolemid |5|
 :pattern ( (|Set#UnionOne| a@@1 x@@7) (MapType0Select a@@1 y@@1))
)))
(assert (forall ((arg0@@16 T@U) (arg1@@5 T@U) ) (! (let ((T@@7 (MapType0TypeInv0 (type arg0@@16))))
(= (type (|Set#Union| arg0@@16 arg1@@5)) (MapType0Type T@@7 boolType)))
 :qid |funType:Set#Union|
 :pattern ( (|Set#Union| arg0@@16 arg1@@5))
)))
(assert (forall ((a@@2 T@U) (b T@U) (o@@2 T@U) ) (! (let ((T@@8 (type o@@2)))
 (=> (and (= (type a@@2) (MapType0Type T@@8 boolType)) (= (type b) (MapType0Type T@@8 boolType))) (and (=> (U_2_bool (MapType0Select (|Set#Union| a@@2 b) o@@2)) (or (U_2_bool (MapType0Select a@@2 o@@2)) (U_2_bool (MapType0Select b o@@2)))) (=> (or (U_2_bool (MapType0Select a@@2 o@@2)) (U_2_bool (MapType0Select b o@@2))) (U_2_bool (MapType0Select (|Set#Union| a@@2 b) o@@2))))))
 :qid |B4bpl.34:18|
 :skolemid |6|
 :pattern ( (MapType0Select (|Set#Union| a@@2 b) o@@2))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (y@@2 T@U) ) (! (let ((T@@9 (type y@@2)))
 (=> (and (and (= (type a@@3) (MapType0Type T@@9 boolType)) (= (type b@@0) (MapType0Type T@@9 boolType))) (U_2_bool (MapType0Select a@@3 y@@2))) (U_2_bool (MapType0Select (|Set#Union| a@@3 b@@0) y@@2))))
 :qid |B4bpl.36:18|
 :skolemid |7|
 :pattern ( (|Set#Union| a@@3 b@@0) (MapType0Select a@@3 y@@2))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@3 T@U) ) (! (let ((T@@10 (type y@@3)))
 (=> (and (and (= (type a@@4) (MapType0Type T@@10 boolType)) (= (type b@@1) (MapType0Type T@@10 boolType))) (U_2_bool (MapType0Select b@@1 y@@3))) (U_2_bool (MapType0Select (|Set#Union| a@@4 b@@1) y@@3))))
 :qid |B4bpl.38:18|
 :skolemid |8|
 :pattern ( (|Set#Union| a@@4 b@@1) (MapType0Select b@@1 y@@3))
)))
(assert (forall ((arg0@@17 T@U) (arg1@@6 T@U) ) (! (let ((T@@11 (MapType0TypeInv0 (type arg0@@17))))
(= (type (|Set#Difference| arg0@@17 arg1@@6)) (MapType0Type T@@11 boolType)))
 :qid |funType:Set#Difference|
 :pattern ( (|Set#Difference| arg0@@17 arg1@@6))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (let ((T@@12 (MapType0TypeInv0 (type a@@5))))
 (=> (and (and (= (type a@@5) (MapType0Type T@@12 boolType)) (= (type b@@2) (MapType0Type T@@12 boolType))) (|Set#Disjoint| a@@5 b@@2)) (and (= (|Set#Difference| (|Set#Union| a@@5 b@@2) a@@5) b@@2) (= (|Set#Difference| (|Set#Union| a@@5 b@@2) b@@2) a@@5))))
 :qid |B4bpl.40:18|
 :skolemid |9|
 :pattern ( (|Set#Union| a@@5 b@@2))
)))
(assert (forall ((arg0@@18 T@U) (arg1@@7 T@U) ) (! (let ((T@@13 (MapType0TypeInv0 (type arg0@@18))))
(= (type (|Set#Intersection| arg0@@18 arg1@@7)) (MapType0Type T@@13 boolType)))
 :qid |funType:Set#Intersection|
 :pattern ( (|Set#Intersection| arg0@@18 arg1@@7))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (o@@3 T@U) ) (! (let ((T@@14 (type o@@3)))
 (=> (and (= (type a@@6) (MapType0Type T@@14 boolType)) (= (type b@@3) (MapType0Type T@@14 boolType))) (and (=> (U_2_bool (MapType0Select (|Set#Intersection| a@@6 b@@3) o@@3)) (and (U_2_bool (MapType0Select a@@6 o@@3)) (U_2_bool (MapType0Select b@@3 o@@3)))) (=> (and (U_2_bool (MapType0Select a@@6 o@@3)) (U_2_bool (MapType0Select b@@3 o@@3))) (U_2_bool (MapType0Select (|Set#Intersection| a@@6 b@@3) o@@3))))))
 :qid |B4bpl.44:18|
 :skolemid |10|
 :pattern ( (MapType0Select (|Set#Intersection| a@@6 b@@3) o@@3))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (let ((T@@15 (MapType0TypeInv0 (type a@@7))))
 (=> (and (= (type a@@7) (MapType0Type T@@15 boolType)) (= (type b@@4) (MapType0Type T@@15 boolType))) (= (|Set#Union| (|Set#Union| a@@7 b@@4) b@@4) (|Set#Union| a@@7 b@@4))))
 :qid |B4bpl.46:18|
 :skolemid |11|
 :pattern ( (|Set#Union| (|Set#Union| a@@7 b@@4) b@@4))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (let ((T@@16 (MapType0TypeInv0 (type a@@8))))
 (=> (and (= (type a@@8) (MapType0Type T@@16 boolType)) (= (type b@@5) (MapType0Type T@@16 boolType))) (= (|Set#Union| a@@8 (|Set#Union| a@@8 b@@5)) (|Set#Union| a@@8 b@@5))))
 :qid |B4bpl.48:18|
 :skolemid |12|
 :pattern ( (|Set#Union| a@@8 (|Set#Union| a@@8 b@@5)))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (let ((T@@17 (MapType0TypeInv0 (type a@@9))))
 (=> (and (= (type a@@9) (MapType0Type T@@17 boolType)) (= (type b@@6) (MapType0Type T@@17 boolType))) (= (|Set#Intersection| (|Set#Intersection| a@@9 b@@6) b@@6) (|Set#Intersection| a@@9 b@@6))))
 :qid |B4bpl.50:18|
 :skolemid |13|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@9 b@@6) b@@6))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (! (let ((T@@18 (MapType0TypeInv0 (type a@@10))))
 (=> (and (= (type a@@10) (MapType0Type T@@18 boolType)) (= (type b@@7) (MapType0Type T@@18 boolType))) (= (|Set#Intersection| a@@10 (|Set#Intersection| a@@10 b@@7)) (|Set#Intersection| a@@10 b@@7))))
 :qid |B4bpl.52:18|
 :skolemid |14|
 :pattern ( (|Set#Intersection| a@@10 (|Set#Intersection| a@@10 b@@7)))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) (o@@4 T@U) ) (! (let ((T@@19 (type o@@4)))
 (=> (and (= (type a@@11) (MapType0Type T@@19 boolType)) (= (type b@@8) (MapType0Type T@@19 boolType))) (and (=> (U_2_bool (MapType0Select (|Set#Difference| a@@11 b@@8) o@@4)) (and (U_2_bool (MapType0Select a@@11 o@@4)) (not (U_2_bool (MapType0Select b@@8 o@@4))))) (=> (and (U_2_bool (MapType0Select a@@11 o@@4)) (not (U_2_bool (MapType0Select b@@8 o@@4)))) (U_2_bool (MapType0Select (|Set#Difference| a@@11 b@@8) o@@4))))))
 :qid |B4bpl.56:18|
 :skolemid |15|
 :pattern ( (MapType0Select (|Set#Difference| a@@11 b@@8) o@@4))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) (y@@4 T@U) ) (! (let ((T@@20 (type y@@4)))
 (=> (and (and (= (type a@@12) (MapType0Type T@@20 boolType)) (= (type b@@9) (MapType0Type T@@20 boolType))) (U_2_bool (MapType0Select b@@9 y@@4))) (not (U_2_bool (MapType0Select (|Set#Difference| a@@12 b@@9) y@@4)))))
 :qid |B4bpl.58:18|
 :skolemid |16|
 :pattern ( (|Set#Difference| a@@12 b@@9) (MapType0Select b@@9 y@@4))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (let ((T@@21 (MapType0TypeInv0 (type a@@13))))
 (=> (and (= (type a@@13) (MapType0Type T@@21 boolType)) (= (type b@@10) (MapType0Type T@@21 boolType))) (and (=> (|Set#Subset| a@@13 b@@10) (forall ((o@@5 T@U) ) (!  (=> (and (= (type o@@5) T@@21) (U_2_bool (MapType0Select a@@13 o@@5))) (U_2_bool (MapType0Select b@@10 o@@5)))
 :qid |B4bpl.62:91|
 :skolemid |17|
 :pattern ( (MapType0Select a@@13 o@@5))
 :pattern ( (MapType0Select b@@10 o@@5))
))) (=> (forall ((o@@6 T@U) ) (!  (=> (and (= (type o@@6) T@@21) (U_2_bool (MapType0Select a@@13 o@@6))) (U_2_bool (MapType0Select b@@10 o@@6)))
 :qid |B4bpl.62:91|
 :skolemid |17|
 :pattern ( (MapType0Select a@@13 o@@6))
 :pattern ( (MapType0Select b@@10 o@@6))
)) (|Set#Subset| a@@13 b@@10)))))
 :qid |B4bpl.62:18|
 :skolemid |18|
 :pattern ( (|Set#Subset| a@@13 b@@10))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (! (let ((T@@22 (MapType0TypeInv0 (type a@@14))))
 (=> (and (= (type a@@14) (MapType0Type T@@22 boolType)) (= (type b@@11) (MapType0Type T@@22 boolType))) (and (=> (|Set#Equal| a@@14 b@@11) (forall ((o@@7 T@U) ) (!  (=> (= (type o@@7) T@@22) (and (=> (U_2_bool (MapType0Select a@@14 o@@7)) (U_2_bool (MapType0Select b@@11 o@@7))) (=> (U_2_bool (MapType0Select b@@11 o@@7)) (U_2_bool (MapType0Select a@@14 o@@7)))))
 :qid |B4bpl.66:89|
 :skolemid |19|
 :pattern ( (MapType0Select a@@14 o@@7))
 :pattern ( (MapType0Select b@@11 o@@7))
))) (=> (forall ((o@@8 T@U) ) (!  (=> (= (type o@@8) T@@22) (and (=> (U_2_bool (MapType0Select a@@14 o@@8)) (U_2_bool (MapType0Select b@@11 o@@8))) (=> (U_2_bool (MapType0Select b@@11 o@@8)) (U_2_bool (MapType0Select a@@14 o@@8)))))
 :qid |B4bpl.66:89|
 :skolemid |19|
 :pattern ( (MapType0Select a@@14 o@@8))
 :pattern ( (MapType0Select b@@11 o@@8))
)) (|Set#Equal| a@@14 b@@11)))))
 :qid |B4bpl.66:18|
 :skolemid |20|
 :pattern ( (|Set#Equal| a@@14 b@@11))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (! (let ((T@@23 (MapType0TypeInv0 (type a@@15))))
 (=> (and (and (= (type a@@15) (MapType0Type T@@23 boolType)) (= (type b@@12) (MapType0Type T@@23 boolType))) (|Set#Equal| a@@15 b@@12)) (= a@@15 b@@12)))
 :qid |B4bpl.68:18|
 :skolemid |21|
 :pattern ( (|Set#Equal| a@@15 b@@12))
)))
(assert (forall ((a@@16 T@U) (b@@13 T@U) ) (! (let ((T@@24 (MapType0TypeInv0 (type a@@16))))
 (=> (and (= (type a@@16) (MapType0Type T@@24 boolType)) (= (type b@@13) (MapType0Type T@@24 boolType))) (and (=> (|Set#Disjoint| a@@16 b@@13) (forall ((o@@9 T@U) ) (!  (=> (= (type o@@9) T@@24) (or (not (U_2_bool (MapType0Select a@@16 o@@9))) (not (U_2_bool (MapType0Select b@@13 o@@9)))))
 :qid |B4bpl.72:95|
 :skolemid |22|
 :pattern ( (MapType0Select a@@16 o@@9))
 :pattern ( (MapType0Select b@@13 o@@9))
))) (=> (forall ((o@@10 T@U) ) (!  (=> (= (type o@@10) T@@24) (or (not (U_2_bool (MapType0Select a@@16 o@@10))) (not (U_2_bool (MapType0Select b@@13 o@@10)))))
 :qid |B4bpl.72:95|
 :skolemid |22|
 :pattern ( (MapType0Select a@@16 o@@10))
 :pattern ( (MapType0Select b@@13 o@@10))
)) (|Set#Disjoint| a@@16 b@@13)))))
 :qid |B4bpl.72:18|
 :skolemid |23|
 :pattern ( (|Set#Disjoint| a@@16 b@@13))
)))
(assert  (and (= (Ctor TickTypeType) 9) (forall ((arg0@@19 T@U) (arg1@@8 T@U) ) (! (let ((T@@25 (MapType0TypeInv0 (type arg0@@19))))
(= (type (|Set#Choose| arg0@@19 arg1@@8)) T@@25))
 :qid |funType:Set#Choose|
 :pattern ( (|Set#Choose| arg0@@19 arg1@@8))
))))
(assert (forall ((a@@17 T@U) (tick T@U) ) (! (let ((T@@26 (MapType0TypeInv0 (type a@@17))))
 (=> (and (and (= (type a@@17) (MapType0Type T@@26 boolType)) (= (type tick) TickTypeType)) (not (= a@@17 (|Set#Empty| T@@26)))) (U_2_bool (MapType0Select a@@17 (|Set#Choose| a@@17 tick)))))
 :qid |B4bpl.76:18|
 :skolemid |24|
 :pattern ( (|Set#Choose| a@@17 tick))
)))
(assert (forall ((s T@U) ) (! (let ((T@@27 (SeqTypeInv0 (type s))))
 (=> (= (type s) (SeqType T@@27)) (<= 0 (|Seq#Length| s))))
 :qid |B4bpl.82:18|
 :skolemid |25|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((T@@28 T@T) ) (! (= (type (|Seq#Empty| T@@28)) (SeqType T@@28))
 :qid |funType:Seq#Empty|
 :pattern ( (|Seq#Empty| T@@28))
)))
(assert (forall ((T@@29 T@T) ) (! (= (|Seq#Length| (|Seq#Empty| T@@29)) 0)
 :skolemid |26|
)))
(assert (forall ((s@@0 T@U) ) (! (let ((T@@30 (SeqTypeInv0 (type s@@0))))
 (=> (and (= (type s@@0) (SeqType T@@30)) (= (|Seq#Length| s@@0) 0)) (= s@@0 (|Seq#Empty| T@@30))))
 :qid |B4bpl.88:18|
 :skolemid |27|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((arg0@@20 T@U) ) (! (let ((T@@31 (type arg0@@20)))
(= (type (|Seq#Singleton| arg0@@20)) (SeqType T@@31)))
 :qid |funType:Seq#Singleton|
 :pattern ( (|Seq#Singleton| arg0@@20))
)))
(assert (forall ((t T@U) ) (! (= (|Seq#Length| (|Seq#Singleton| t)) 1)
 :qid |B4bpl.92:18|
 :skolemid |28|
 :pattern ( (|Seq#Length| (|Seq#Singleton| t)))
)))
(assert (forall ((arg0@@21 T@U) (arg1@@9 Int) (arg2@@0 T@U) (arg3 Int) ) (! (let ((T@@32 (type arg2@@0)))
(= (type (|Seq#Build| arg0@@21 arg1@@9 arg2@@0 arg3)) (SeqType T@@32)))
 :qid |funType:Seq#Build|
 :pattern ( (|Seq#Build| arg0@@21 arg1@@9 arg2@@0 arg3))
)))
(assert (forall ((s@@1 T@U) (i Int) (v T@U) (len Int) ) (! (let ((T@@33 (type v)))
 (=> (and (= (type s@@1) (SeqType T@@33)) (<= 0 len)) (= (|Seq#Length| (|Seq#Build| s@@1 i v len)) len)))
 :qid |B4bpl.96:18|
 :skolemid |29|
 :pattern ( (|Seq#Length| (|Seq#Build| s@@1 i v len)))
)))
(assert (forall ((arg0@@22 T@U) (arg1@@10 T@U) ) (! (let ((T@@34 (SeqTypeInv0 (type arg0@@22))))
(= (type (|Seq#Append| arg0@@22 arg1@@10)) (SeqType T@@34)))
 :qid |funType:Seq#Append|
 :pattern ( (|Seq#Append| arg0@@22 arg1@@10))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (let ((T@@35 (SeqTypeInv0 (type s0))))
 (=> (and (= (type s0) (SeqType T@@35)) (= (type s1) (SeqType T@@35))) (= (|Seq#Length| (|Seq#Append| s0 s1)) (+ (|Seq#Length| s0) (|Seq#Length| s1)))))
 :qid |B4bpl.100:18|
 :skolemid |30|
 :pattern ( (|Seq#Length| (|Seq#Append| s0 s1)))
)))
(assert (forall ((arg0@@23 T@U) (arg1@@11 Int) ) (! (let ((T@@36 (SeqTypeInv0 (type arg0@@23))))
(= (type (|Seq#Index| arg0@@23 arg1@@11)) T@@36))
 :qid |funType:Seq#Index|
 :pattern ( (|Seq#Index| arg0@@23 arg1@@11))
)))
(assert (forall ((t@@0 T@U) ) (! (= (|Seq#Index| (|Seq#Singleton| t@@0) 0) t@@0)
 :qid |B4bpl.104:18|
 :skolemid |31|
 :pattern ( (|Seq#Index| (|Seq#Singleton| t@@0) 0))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) (n Int) ) (! (let ((T@@37 (SeqTypeInv0 (type s0@@0))))
 (=> (and (= (type s0@@0) (SeqType T@@37)) (= (type s1@@0) (SeqType T@@37))) (and (=> (< n (|Seq#Length| s0@@0)) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n) (|Seq#Index| s0@@0 n))) (=> (<= (|Seq#Length| s0@@0) n) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n) (|Seq#Index| s1@@0 (- n (|Seq#Length| s0@@0))))))))
 :qid |B4bpl.106:18|
 :skolemid |32|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n))
)))
(assert (forall ((s@@2 T@U) (i@@0 Int) (v@@0 T@U) (len@@0 Int) (n@@0 Int) ) (! (let ((T@@38 (type v@@0)))
 (=> (= (type s@@2) (SeqType T@@38)) (=> (and (<= 0 n@@0) (< n@@0 len@@0)) (and (=> (= i@@0 n@@0) (= (|Seq#Index| (|Seq#Build| s@@2 i@@0 v@@0 len@@0) n@@0) v@@0)) (=> (not (= i@@0 n@@0)) (= (|Seq#Index| (|Seq#Build| s@@2 i@@0 v@@0 len@@0) n@@0) (|Seq#Index| s@@2 n@@0)))))))
 :qid |B4bpl.108:18|
 :skolemid |33|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@2 i@@0 v@@0 len@@0) n@@0))
)))
(assert (forall ((arg0@@24 T@U) (arg1@@12 Int) (arg2@@1 T@U) ) (! (let ((T@@39 (type arg2@@1)))
(= (type (|Seq#Update| arg0@@24 arg1@@12 arg2@@1)) (SeqType T@@39)))
 :qid |funType:Seq#Update|
 :pattern ( (|Seq#Update| arg0@@24 arg1@@12 arg2@@1))
)))
(assert (forall ((s@@3 T@U) (i@@1 Int) (v@@1 T@U) ) (! (let ((T@@40 (type v@@1)))
 (=> (= (type s@@3) (SeqType T@@40)) (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@3))) (= (|Seq#Length| (|Seq#Update| s@@3 i@@1 v@@1)) (|Seq#Length| s@@3)))))
 :qid |B4bpl.112:18|
 :skolemid |34|
 :pattern ( (|Seq#Length| (|Seq#Update| s@@3 i@@1 v@@1)))
)))
(assert (forall ((s@@4 T@U) (i@@2 Int) (v@@2 T@U) (n@@1 Int) ) (! (let ((T@@41 (type v@@2)))
 (=> (= (type s@@4) (SeqType T@@41)) (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length| s@@4))) (and (=> (= i@@2 n@@1) (= (|Seq#Index| (|Seq#Update| s@@4 i@@2 v@@2) n@@1) v@@2)) (=> (not (= i@@2 n@@1)) (= (|Seq#Index| (|Seq#Update| s@@4 i@@2 v@@2) n@@1) (|Seq#Index| s@@4 n@@1)))))))
 :qid |B4bpl.114:18|
 :skolemid |35|
 :pattern ( (|Seq#Index| (|Seq#Update| s@@4 i@@2 v@@2) n@@1))
)))
(assert (forall ((s@@5 T@U) (x@@8 T@U) ) (! (let ((T@@42 (type x@@8)))
 (=> (= (type s@@5) (SeqType T@@42)) (and (=> (|Seq#Contains| s@@5 x@@8) (exists ((i@@3 Int) ) (!  (and (and (<= 0 i@@3) (< i@@3 (|Seq#Length| s@@5))) (= (|Seq#Index| s@@5 i@@3) x@@8))
 :qid |B4bpl.118:91|
 :skolemid |36|
 :pattern ( (|Seq#Index| s@@5 i@@3))
))) (=> (exists ((i@@4 Int) ) (!  (and (and (<= 0 i@@4) (< i@@4 (|Seq#Length| s@@5))) (= (|Seq#Index| s@@5 i@@4) x@@8))
 :qid |B4bpl.118:91|
 :skolemid |36|
 :pattern ( (|Seq#Index| s@@5 i@@4))
)) (|Seq#Contains| s@@5 x@@8)))))
 :qid |B4bpl.118:18|
 :skolemid |37|
 :pattern ( (|Seq#Contains| s@@5 x@@8))
)))
(assert (forall ((x@@9 T@U) ) (!  (=> (= (type x@@9) refType) (not (|Seq#Contains| (|Seq#Empty| refType) x@@9)))
 :qid |B4bpl.120:15|
 :skolemid |38|
 :pattern ( (|Seq#Contains| (|Seq#Empty| refType) x@@9))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (x@@10 T@U) ) (! (let ((T@@43 (type x@@10)))
 (=> (and (= (type s0@@1) (SeqType T@@43)) (= (type s1@@1) (SeqType T@@43))) (and (=> (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@10) (or (|Seq#Contains| s0@@1 x@@10) (|Seq#Contains| s1@@1 x@@10))) (=> (or (|Seq#Contains| s0@@1 x@@10) (|Seq#Contains| s1@@1 x@@10)) (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@10)))))
 :qid |B4bpl.122:18|
 :skolemid |39|
 :pattern ( (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@10))
)))
(assert (forall ((s@@6 T@U) (i@@5 Int) (v@@3 T@U) (len@@1 Int) (x@@11 T@U) ) (! (let ((T@@44 (type v@@3)))
 (=> (and (= (type s@@6) (SeqType T@@44)) (= (type x@@11) T@@44)) (and (=> (|Seq#Contains| (|Seq#Build| s@@6 i@@5 v@@3 len@@1) x@@11) (or (and (and (<= 0 i@@5) (< i@@5 len@@1)) (= x@@11 v@@3)) (exists ((j Int) ) (!  (and (and (and (and (<= 0 j) (< j (|Seq#Length| s@@6))) (< j len@@1)) (not (= j i@@5))) (= (|Seq#Index| s@@6 j) x@@11))
 :qid |B4bpl.124:192|
 :skolemid |40|
 :pattern ( (|Seq#Index| s@@6 j))
)))) (=> (or (and (and (<= 0 i@@5) (< i@@5 len@@1)) (= x@@11 v@@3)) (exists ((j@@0 Int) ) (!  (and (and (and (and (<= 0 j@@0) (< j@@0 (|Seq#Length| s@@6))) (< j@@0 len@@1)) (not (= j@@0 i@@5))) (= (|Seq#Index| s@@6 j@@0) x@@11))
 :qid |B4bpl.124:192|
 :skolemid |40|
 :pattern ( (|Seq#Index| s@@6 j@@0))
))) (|Seq#Contains| (|Seq#Build| s@@6 i@@5 v@@3 len@@1) x@@11)))))
 :qid |B4bpl.124:18|
 :skolemid |41|
 :pattern ( (|Seq#Contains| (|Seq#Build| s@@6 i@@5 v@@3 len@@1) x@@11))
)))
(assert (forall ((arg0@@25 T@U) (arg1@@13 Int) ) (! (let ((T@@45 (SeqTypeInv0 (type arg0@@25))))
(= (type (|Seq#Take| arg0@@25 arg1@@13)) (SeqType T@@45)))
 :qid |funType:Seq#Take|
 :pattern ( (|Seq#Take| arg0@@25 arg1@@13))
)))
(assert (forall ((s@@7 T@U) (n@@2 Int) (x@@12 T@U) ) (! (let ((T@@46 (type x@@12)))
 (=> (= (type s@@7) (SeqType T@@46)) (and (=> (|Seq#Contains| (|Seq#Take| s@@7 n@@2) x@@12) (exists ((i@@6 Int) ) (!  (and (and (and (<= 0 i@@6) (< i@@6 n@@2)) (< i@@6 (|Seq#Length| s@@7))) (= (|Seq#Index| s@@7 i@@6) x@@12))
 :qid |B4bpl.126:125|
 :skolemid |42|
 :pattern ( (|Seq#Index| s@@7 i@@6))
))) (=> (exists ((i@@7 Int) ) (!  (and (and (and (<= 0 i@@7) (< i@@7 n@@2)) (< i@@7 (|Seq#Length| s@@7))) (= (|Seq#Index| s@@7 i@@7) x@@12))
 :qid |B4bpl.126:125|
 :skolemid |42|
 :pattern ( (|Seq#Index| s@@7 i@@7))
)) (|Seq#Contains| (|Seq#Take| s@@7 n@@2) x@@12)))))
 :qid |B4bpl.126:18|
 :skolemid |43|
 :pattern ( (|Seq#Contains| (|Seq#Take| s@@7 n@@2) x@@12))
)))
(assert (forall ((arg0@@26 T@U) (arg1@@14 Int) ) (! (let ((T@@47 (SeqTypeInv0 (type arg0@@26))))
(= (type (|Seq#Drop| arg0@@26 arg1@@14)) (SeqType T@@47)))
 :qid |funType:Seq#Drop|
 :pattern ( (|Seq#Drop| arg0@@26 arg1@@14))
)))
(assert (forall ((s@@8 T@U) (n@@3 Int) (x@@13 T@U) ) (! (let ((T@@48 (type x@@13)))
 (=> (= (type s@@8) (SeqType T@@48)) (and (=> (|Seq#Contains| (|Seq#Drop| s@@8 n@@3) x@@13) (exists ((i@@8 Int) ) (!  (and (and (and (<= 0 n@@3) (<= n@@3 i@@8)) (< i@@8 (|Seq#Length| s@@8))) (= (|Seq#Index| s@@8 i@@8) x@@13))
 :qid |B4bpl.128:125|
 :skolemid |44|
 :pattern ( (|Seq#Index| s@@8 i@@8))
))) (=> (exists ((i@@9 Int) ) (!  (and (and (and (<= 0 n@@3) (<= n@@3 i@@9)) (< i@@9 (|Seq#Length| s@@8))) (= (|Seq#Index| s@@8 i@@9) x@@13))
 :qid |B4bpl.128:125|
 :skolemid |44|
 :pattern ( (|Seq#Index| s@@8 i@@9))
)) (|Seq#Contains| (|Seq#Drop| s@@8 n@@3) x@@13)))))
 :qid |B4bpl.128:18|
 :skolemid |45|
 :pattern ( (|Seq#Contains| (|Seq#Drop| s@@8 n@@3) x@@13))
)))
(assert (forall ((s0@@2 T@U) (s1@@2 T@U) ) (! (let ((T@@49 (SeqTypeInv0 (type s0@@2))))
 (=> (and (= (type s0@@2) (SeqType T@@49)) (= (type s1@@2) (SeqType T@@49))) (and (=> (|Seq#Equal| s0@@2 s1@@2) (and (= (|Seq#Length| s0@@2) (|Seq#Length| s1@@2)) (forall ((j@@1 Int) ) (!  (=> (and (<= 0 j@@1) (< j@@1 (|Seq#Length| s0@@2))) (= (|Seq#Index| s0@@2 j@@1) (|Seq#Index| s1@@2 j@@1)))
 :qid |B4bpl.132:131|
 :skolemid |46|
 :pattern ( (|Seq#Index| s0@@2 j@@1))
 :pattern ( (|Seq#Index| s1@@2 j@@1))
)))) (=> (and (= (|Seq#Length| s0@@2) (|Seq#Length| s1@@2)) (forall ((j@@2 Int) ) (!  (=> (and (<= 0 j@@2) (< j@@2 (|Seq#Length| s0@@2))) (= (|Seq#Index| s0@@2 j@@2) (|Seq#Index| s1@@2 j@@2)))
 :qid |B4bpl.132:131|
 :skolemid |46|
 :pattern ( (|Seq#Index| s0@@2 j@@2))
 :pattern ( (|Seq#Index| s1@@2 j@@2))
))) (|Seq#Equal| s0@@2 s1@@2)))))
 :qid |B4bpl.132:18|
 :skolemid |47|
 :pattern ( (|Seq#Equal| s0@@2 s1@@2))
)))
(assert (forall ((a@@18 T@U) (b@@14 T@U) ) (! (let ((T@@50 (SeqTypeInv0 (type a@@18))))
 (=> (and (and (= (type a@@18) (SeqType T@@50)) (= (type b@@14) (SeqType T@@50))) (|Seq#Equal| a@@18 b@@14)) (= a@@18 b@@14)))
 :qid |B4bpl.134:18|
 :skolemid |48|
 :pattern ( (|Seq#Equal| a@@18 b@@14))
)))
(assert (forall ((s0@@3 T@U) (s1@@3 T@U) (n@@4 Int) ) (! (let ((T@@51 (SeqTypeInv0 (type s0@@3))))
 (=> (and (= (type s0@@3) (SeqType T@@51)) (= (type s1@@3) (SeqType T@@51))) (and (=> (|Seq#SameUntil| s0@@3 s1@@3 n@@4) (forall ((j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 n@@4)) (= (|Seq#Index| s0@@3 j@@3) (|Seq#Index| s1@@3 j@@3)))
 :qid |B4bpl.138:117|
 :skolemid |49|
 :pattern ( (|Seq#Index| s0@@3 j@@3))
 :pattern ( (|Seq#Index| s1@@3 j@@3))
))) (=> (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 n@@4)) (= (|Seq#Index| s0@@3 j@@4) (|Seq#Index| s1@@3 j@@4)))
 :qid |B4bpl.138:117|
 :skolemid |49|
 :pattern ( (|Seq#Index| s0@@3 j@@4))
 :pattern ( (|Seq#Index| s1@@3 j@@4))
)) (|Seq#SameUntil| s0@@3 s1@@3 n@@4)))))
 :qid |B4bpl.138:18|
 :skolemid |50|
 :pattern ( (|Seq#SameUntil| s0@@3 s1@@3 n@@4))
)))
(assert (forall ((s@@9 T@U) (n@@5 Int) ) (! (let ((T@@52 (SeqTypeInv0 (type s@@9))))
 (=> (and (= (type s@@9) (SeqType T@@52)) (<= 0 n@@5)) (and (=> (<= n@@5 (|Seq#Length| s@@9)) (= (|Seq#Length| (|Seq#Take| s@@9 n@@5)) n@@5)) (=> (< (|Seq#Length| s@@9) n@@5) (= (|Seq#Length| (|Seq#Take| s@@9 n@@5)) (|Seq#Length| s@@9))))))
 :qid |B4bpl.142:18|
 :skolemid |51|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@9 n@@5)))
)))
(assert (forall ((s@@10 T@U) (n@@6 Int) (j@@5 Int) ) (! (let ((T@@53 (SeqTypeInv0 (type s@@10))))
 (=> (= (type s@@10) (SeqType T@@53)) (=> (and (and (<= 0 j@@5) (< j@@5 n@@6)) (< j@@5 (|Seq#Length| s@@10))) (= (|Seq#Index| (|Seq#Take| s@@10 n@@6) j@@5) (|Seq#Index| s@@10 j@@5)))))
 :qid |B4bpl.144:18|
 :weight 25
 :skolemid |52|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@10 n@@6) j@@5))
)))
(assert (forall ((s@@11 T@U) (n@@7 Int) ) (! (let ((T@@54 (SeqTypeInv0 (type s@@11))))
 (=> (and (= (type s@@11) (SeqType T@@54)) (<= 0 n@@7)) (and (=> (<= n@@7 (|Seq#Length| s@@11)) (= (|Seq#Length| (|Seq#Drop| s@@11 n@@7)) (- (|Seq#Length| s@@11) n@@7))) (=> (< (|Seq#Length| s@@11) n@@7) (= (|Seq#Length| (|Seq#Drop| s@@11 n@@7)) 0)))))
 :qid |B4bpl.148:18|
 :skolemid |53|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@11 n@@7)))
)))
(assert (forall ((s@@12 T@U) (n@@8 Int) (j@@6 Int) ) (! (let ((T@@55 (SeqTypeInv0 (type s@@12))))
 (=> (= (type s@@12) (SeqType T@@55)) (=> (and (and (<= 0 n@@8) (<= 0 j@@6)) (< j@@6 (- (|Seq#Length| s@@12) n@@8))) (= (|Seq#Index| (|Seq#Drop| s@@12 n@@8) j@@6) (|Seq#Index| s@@12 (+ j@@6 n@@8))))))
 :qid |B4bpl.150:18|
 :weight 25
 :skolemid |54|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@12 n@@8) j@@6))
)))
(assert (forall ((s@@13 T@U) (t@@1 T@U) ) (! (let ((T@@56 (SeqTypeInv0 (type s@@13))))
 (=> (and (= (type s@@13) (SeqType T@@56)) (= (type t@@1) (SeqType T@@56))) (and (= (|Seq#Take| (|Seq#Append| s@@13 t@@1) (|Seq#Length| s@@13)) s@@13) (= (|Seq#Drop| (|Seq#Append| s@@13 t@@1) (|Seq#Length| s@@13)) t@@1))))
 :qid |B4bpl.152:18|
 :skolemid |55|
 :pattern ( (|Seq#Append| s@@13 t@@1))
)))
(assert  (and (forall ((arg0@@27 T@U) ) (! (= (type ($Box arg0@@27)) BoxTypeType)
 :qid |funType:$Box|
 :pattern ( ($Box arg0@@27))
)) (forall ((T@@57 T@T) (arg0@@28 T@U) ) (! (= (type ($Unbox T@@57 arg0@@28)) T@@57)
 :qid |funType:$Unbox|
 :pattern ( ($Unbox T@@57 arg0@@28))
))))
(assert (forall ((x@@14 T@U) ) (! (let ((T@@58 (type x@@14)))
(= ($Unbox T@@58 ($Box x@@14)) x@@14))
 :qid |B4bpl.160:18|
 :skolemid |56|
 :pattern ( ($Box x@@14))
)))
(assert (forall ((b@@15 T@U) ) (!  (=> (= (type b@@15) BoxTypeType) (= ($Box ($Unbox intType b@@15)) b@@15))
 :qid |B4bpl.162:15|
 :skolemid |57|
 :pattern ( ($Unbox intType b@@15))
)))
(assert (forall ((b@@16 T@U) ) (!  (=> (= (type b@@16) BoxTypeType) (= ($Box ($Unbox refType b@@16)) b@@16))
 :qid |B4bpl.164:15|
 :skolemid |58|
 :pattern ( ($Unbox refType b@@16))
)))
(assert (forall ((b@@17 T@U) ) (!  (=> (= (type b@@17) BoxTypeType) (= ($Box ($Unbox (MapType0Type BoxTypeType boolType) b@@17)) b@@17))
 :qid |B4bpl.166:15|
 :skolemid |59|
 :pattern ( ($Unbox (MapType0Type BoxTypeType boolType) b@@17))
)))
(assert (forall ((b@@18 T@U) ) (!  (=> (= (type b@@18) BoxTypeType) (= ($Box ($Unbox (SeqType BoxTypeType) b@@18)) b@@18))
 :qid |B4bpl.168:15|
 :skolemid |60|
 :pattern ( ($Unbox (SeqType BoxTypeType) b@@18))
)))
(assert (= (Ctor DatatypeTypeType) 10))
(assert (forall ((b@@19 T@U) ) (!  (=> (= (type b@@19) BoxTypeType) (= ($Box ($Unbox DatatypeTypeType b@@19)) b@@19))
 :qid |B4bpl.170:15|
 :skolemid |61|
 :pattern ( ($Unbox DatatypeTypeType b@@19))
)))
(assert ($IsCanonicalBoolBox ($Box (bool_2_U false))))
(assert ($IsCanonicalBoolBox ($Box (bool_2_U true))))
(assert (forall ((b@@20 T@U) ) (!  (=> (and (= (type b@@20) BoxTypeType) ($IsCanonicalBoolBox b@@20)) (= ($Box ($Unbox boolType b@@20)) b@@20))
 :qid |B4bpl.176:15|
 :skolemid |62|
 :pattern ( ($Unbox boolType b@@20))
)))
(assert  (and (and (forall ((arg0@@29 T@U) (arg1@@15 T@U) ) (! (= (type (TypeTuple arg0@@29 arg1@@15)) ClassNameType)
 :qid |funType:TypeTuple|
 :pattern ( (TypeTuple arg0@@29 arg1@@15))
)) (forall ((arg0@@30 T@U) ) (! (= (type (TypeTupleCar arg0@@30)) ClassNameType)
 :qid |funType:TypeTupleCar|
 :pattern ( (TypeTupleCar arg0@@30))
))) (forall ((arg0@@31 T@U) ) (! (= (type (TypeTupleCdr arg0@@31)) ClassNameType)
 :qid |funType:TypeTupleCdr|
 :pattern ( (TypeTupleCdr arg0@@31))
))))
(assert (forall ((a@@19 T@U) (b@@21 T@U) ) (!  (=> (and (= (type a@@19) ClassNameType) (= (type b@@21) ClassNameType)) (and (= (TypeTupleCar (TypeTuple a@@19 b@@21)) a@@19) (= (TypeTupleCdr (TypeTuple a@@19 b@@21)) b@@21)))
 :qid |B4bpl.198:15|
 :skolemid |63|
 :pattern ( (TypeTuple a@@19 b@@21))
)))
(assert (forall ((arg0@@32 Int) ) (! (= (type (IndexField arg0@@32)) (FieldType BoxTypeType))
 :qid |funType:IndexField|
 :pattern ( (IndexField arg0@@32))
)))
(assert (forall ((i@@10 Int) ) (! (= (FDim (IndexField i@@10)) 1)
 :qid |B4bpl.224:15|
 :skolemid |64|
 :pattern ( (IndexField i@@10))
)))
(assert (forall ((i@@11 Int) ) (! (= (IndexField_Inverse (IndexField i@@11)) i@@11)
 :qid |B4bpl.228:15|
 :skolemid |65|
 :pattern ( (IndexField i@@11))
)))
(assert (forall ((arg0@@33 T@U) (arg1@@16 Int) ) (! (= (type (MultiIndexField arg0@@33 arg1@@16)) (FieldType BoxTypeType))
 :qid |funType:MultiIndexField|
 :pattern ( (MultiIndexField arg0@@33 arg1@@16))
)))
(assert (forall ((f T@U) (i@@12 Int) ) (!  (=> (= (type f) (FieldType BoxTypeType)) (= (FDim (MultiIndexField f i@@12)) (+ (FDim f) 1)))
 :qid |B4bpl.232:15|
 :skolemid |66|
 :pattern ( (MultiIndexField f i@@12))
)))
(assert (forall ((arg0@@34 T@U) ) (! (let ((T@@59 (FieldTypeInv0 (type arg0@@34))))
(= (type (MultiIndexField_Inverse0 arg0@@34)) (FieldType T@@59)))
 :qid |funType:MultiIndexField_Inverse0|
 :pattern ( (MultiIndexField_Inverse0 arg0@@34))
)))
(assert (forall ((f@@0 T@U) (i@@13 Int) ) (!  (=> (= (type f@@0) (FieldType BoxTypeType)) (and (= (MultiIndexField_Inverse0 (MultiIndexField f@@0 i@@13)) f@@0) (= (MultiIndexField_Inverse1 (MultiIndexField f@@0 i@@13)) i@@13)))
 :qid |B4bpl.238:15|
 :skolemid |67|
 :pattern ( (MultiIndexField f@@0 i@@13))
)))
(assert (= (FDim alloc) 0))
(assert  (and (and (and (and (and (forall ((arg0@@35 T@T) ) (! (= (Ctor (MapType1Type arg0@@35)) 11)
 :qid |ctor:MapType1Type|
)) (forall ((arg0@@36 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@36)) arg0@@36)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@36))
))) (forall ((arg0@@37 T@U) (arg1@@17 T@U) (arg2@@2 T@U) ) (! (let ((alpha@@1 (FieldTypeInv0 (type arg2@@2))))
(= (type (MapType1Select arg0@@37 arg1@@17 arg2@@2)) alpha@@1))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@37 arg1@@17 arg2@@2))
))) (forall ((arg0@@38 T@U) (arg1@@18 T@U) (arg2@@3 T@U) (arg3@@0 T@U) ) (! (let ((aVar0@@0 (type arg1@@18)))
(= (type (MapType1Store arg0@@38 arg1@@18 arg2@@3 arg3@@0)) (MapType1Type aVar0@@0)))
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@38 arg1@@18 arg2@@3 arg3@@0))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (x1 T@U) (val@@2 T@U) ) (! (let ((alpha@@2 (FieldTypeInv0 (type x1))))
 (=> (= (type val@@2) alpha@@2) (= (MapType1Select (MapType1Store m@@2 x0@@2 x1 val@@2) x0@@2 x1) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (and (and (forall ((val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@0 T@U) (y0@@1 T@U) (y1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select (MapType1Store m@@3 x0@@3 x1@@0 val@@3) y0@@1 y1) (MapType1Select m@@3 y0@@1 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (x1@@1 T@U) (y0@@2 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select (MapType1Store m@@4 x0@@4 x1@@1 val@@4) y0@@2 y1@@0) (MapType1Select m@@4 y0@@2 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
))) (forall ((val@@5 T@U) (m@@5 T@U) (x0@@5 T@U) (x1@@2 T@U) (y0@@3 T@U) (y1@@1 T@U) ) (!  (or true (= (MapType1Select (MapType1Store m@@5 x0@@5 x1@@2 val@@5) y0@@3 y1@@1) (MapType1Select m@@5 y0@@3 y1@@1)))
 :qid |mapAx2:MapType1Select|
 :weight 0
)))))
(assert (forall ((h T@U) (k T@U) (d T@U) ) (!  (=> (and (and (and (and (= (type h) (MapType1Type refType)) (= (type k) (MapType1Type refType))) (= (type d) DatatypeTypeType)) ($HeapSucc h k)) (DtAlloc d h)) (DtAlloc d k))
 :qid |B4bpl.248:15|
 :skolemid |68|
 :pattern ( ($HeapSucc h k) (DtAlloc d h))
 :pattern ( ($HeapSucc h k) (DtAlloc d k))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (d@@0 T@U) ) (!  (=> (and (and (and (and (= (type h@@0) (MapType1Type refType)) (= (type k@@0) (MapType1Type refType))) (= (type d@@0) BoxTypeType)) ($HeapSucc h@@0 k@@0)) (GenericAlloc d@@0 h@@0)) (GenericAlloc d@@0 k@@0))
 :qid |B4bpl.252:15|
 :skolemid |69|
 :pattern ( ($HeapSucc h@@0 k@@0) (GenericAlloc d@@0 h@@0))
 :pattern ( ($HeapSucc h@@0 k@@0) (GenericAlloc d@@0 k@@0))
)))
(assert (= (type null) refType))
(assert (forall ((b@@22 T@U) (h@@1 T@U) ) (!  (=> (and (and (= (type b@@22) BoxTypeType) (= (type h@@1) (MapType1Type refType))) (GenericAlloc b@@22 h@@1)) (or (= ($Unbox refType b@@22) null) (U_2_bool (MapType1Select h@@1 ($Unbox refType b@@22) alloc))))
 :qid |B4bpl.254:15|
 :skolemid |70|
 :pattern ( (GenericAlloc b@@22 h@@1) (MapType1Select h@@1 ($Unbox refType b@@22) alloc))
)))
(assert (forall ((b@@23 T@U) (h@@2 T@U) (i@@14 Int) ) (!  (=> (and (= (type b@@23) BoxTypeType) (= (type h@@2) (MapType1Type refType))) (=> (and (and (GenericAlloc b@@23 h@@2) (<= 0 i@@14)) (< i@@14 (|Seq#Length| ($Unbox (SeqType BoxTypeType) b@@23)))) (GenericAlloc (|Seq#Index| ($Unbox (SeqType BoxTypeType) b@@23) i@@14) h@@2)))
 :qid |B4bpl.256:15|
 :skolemid |71|
 :pattern ( (GenericAlloc b@@23 h@@2) (|Seq#Index| ($Unbox (SeqType BoxTypeType) b@@23) i@@14))
)))
(assert (forall ((b@@24 T@U) (h@@3 T@U) (t@@2 T@U) ) (!  (=> (and (and (and (= (type b@@24) BoxTypeType) (= (type h@@3) (MapType1Type refType))) (= (type t@@2) BoxTypeType)) (and (GenericAlloc b@@24 h@@3) (U_2_bool (MapType0Select ($Unbox (MapType0Type BoxTypeType boolType) b@@24) t@@2)))) (GenericAlloc t@@2 h@@3))
 :qid |B4bpl.258:15|
 :skolemid |72|
 :pattern ( (GenericAlloc b@@24 h@@3) (MapType0Select ($Unbox (MapType0Type BoxTypeType boolType) b@@24) t@@2))
)))
(assert (forall ((arg0@@39 T@U) ) (! (= (type (DtType arg0@@39)) ClassNameType)
 :qid |funType:DtType|
 :pattern ( (DtType arg0@@39))
)))
(assert (forall ((b@@25 T@U) (h@@4 T@U) ) (!  (=> (and (and (= (type b@@25) BoxTypeType) (= (type h@@4) (MapType1Type refType))) (GenericAlloc b@@25 h@@4)) (DtAlloc ($Unbox DatatypeTypeType b@@25) h@@4))
 :qid |B4bpl.260:15|
 :skolemid |73|
 :pattern ( (GenericAlloc b@@25 h@@4) (DtType ($Unbox DatatypeTypeType b@@25)))
)))
(assert  (and (= (Ctor TType) 12) (forall ((arg0@@40 T@U) ) (! (= (type (type@@0 arg0@@40)) TType)
 :qid |funType:type|
 :pattern ( (type@@0 arg0@@40))
))))
(assert (forall ((b@@26 T@U) (h@@6 T@U) ) (!  (=> (and (and (= (type b@@26) boolType) (= (type h@@6) (MapType1Type refType))) ($IsGoodHeap h@@6)) (GenericAlloc ($Box b@@26) h@@6))
 :qid |B4bpl.262:15|
 :skolemid |74|
 :no-pattern (type@@0 h@@5)
 :no-pattern (type b@@26)
 :no-pattern (type h@@6)
 :no-pattern (U_2_int b@@26)
 :no-pattern (U_2_bool b@@26)
 :no-pattern (U_2_int h@@6)
 :no-pattern (U_2_bool h@@6)
)))
(assert (forall ((x@@15 T@U) (h@@8 T@U) ) (!  (=> (and (and (= (type x@@15) intType) (= (type h@@8) (MapType1Type refType))) ($IsGoodHeap h@@8)) (GenericAlloc ($Box x@@15) h@@8))
 :qid |B4bpl.264:15|
 :skolemid |75|
 :no-pattern (type@@0 h@@7)
 :no-pattern (type x@@15)
 :no-pattern (type h@@8)
 :no-pattern (U_2_int x@@15)
 :no-pattern (U_2_bool x@@15)
 :no-pattern (U_2_int h@@8)
 :no-pattern (U_2_bool h@@8)
)))
(assert (forall ((r@@1 T@U) (h@@9 T@U) ) (!  (=> (and (and (= (type r@@1) refType) (= (type h@@9) (MapType1Type refType))) (and ($IsGoodHeap h@@9) (or (= r@@1 null) (U_2_bool (MapType1Select h@@9 r@@1 alloc))))) (GenericAlloc ($Box r@@1) h@@9))
 :qid |B4bpl.266:15|
 :skolemid |76|
 :pattern ( (GenericAlloc ($Box r@@1) h@@9))
)))
(assert (forall ((h@@10 T@U) (r@@2 T@U) (f@@1 T@U) (x@@16 T@U) ) (! (let ((alpha@@3 (type x@@16)))
 (=> (and (and (= (type h@@10) (MapType1Type refType)) (= (type r@@2) refType)) (= (type f@@1) (FieldType alpha@@3))) ($HeapSucc h@@10 (MapType1Store h@@10 r@@2 f@@1 x@@16))))
 :qid |B4bpl.294:22|
 :skolemid |79|
 :pattern ( (MapType1Store h@@10 r@@2 f@@1 x@@16))
)))
(assert (forall ((a@@20 T@U) (b@@27 T@U) (c T@U) ) (!  (=> (and (and (and (= (type a@@20) (MapType1Type refType)) (= (type b@@27) (MapType1Type refType))) (= (type c) (MapType1Type refType))) (and ($HeapSucc a@@20 b@@27) ($HeapSucc b@@27 c))) ($HeapSucc a@@20 c))
 :qid |B4bpl.296:15|
 :skolemid |80|
 :pattern ( ($HeapSucc a@@20 b@@27) ($HeapSucc b@@27 c))
)))
(assert (forall ((h@@11 T@U) (k@@1 T@U) ) (!  (=> (and (and (= (type h@@11) (MapType1Type refType)) (= (type k@@1) (MapType1Type refType))) ($HeapSucc h@@11 k@@1)) (forall ((o@@11 T@U) ) (!  (=> (and (= (type o@@11) refType) (U_2_bool (MapType1Select h@@11 o@@11 alloc))) (U_2_bool (MapType1Select k@@1 o@@11 alloc)))
 :qid |B4bpl.298:91|
 :skolemid |81|
 :pattern ( (MapType1Select k@@1 o@@11 alloc))
)))
 :qid |B4bpl.298:15|
 :skolemid |82|
 :pattern ( ($HeapSucc h@@11 k@@1))
)))
(assert (forall ((x@@17 Int) (y@@5 Int) ) (! (= (mod x@@17 y@@5) (- x@@17 (* (div x@@17 y@@5) y@@5)))
 :qid |B4bpl.304:15|
 :skolemid |83|
 :pattern ( (mod x@@17 y@@5))
 :pattern ( (div x@@17 y@@5))
)))
(assert (forall ((x@@18 Int) (y@@6 Int) ) (!  (=> (< 0 y@@6) (and (<= 0 (mod x@@18 y@@6)) (< (mod x@@18 y@@6) y@@6)))
 :qid |B4bpl.306:15|
 :skolemid |84|
 :pattern ( (mod x@@18 y@@6))
)))
(assert (forall ((x@@19 Int) (y@@7 Int) ) (!  (=> (< y@@7 0) (and (< y@@7 (mod x@@19 y@@7)) (<= (mod x@@19 y@@7) 0)))
 :qid |B4bpl.308:15|
 :skolemid |85|
 :pattern ( (mod x@@19 y@@7))
)))
(assert (forall ((a@@21 Int) (b@@28 Int) (d@@1 Int) ) (!  (=> (and (and (<= 2 d@@1) (= (mod a@@21 d@@1) (mod b@@28 d@@1))) (< a@@21 b@@28)) (<= (+ a@@21 d@@1) b@@28))
 :qid |B4bpl.310:15|
 :skolemid |86|
 :pattern ( (mod a@@21 d@@1) (mod b@@28 d@@1))
)))
(assert (forall ((o@@12 T@U) ) (!  (=> (= (type o@@12) refType) (<= 0 (array.Length o@@12)))
 :qid |B4bpl.316:15|
 :skolemid |87|
 :no-pattern (type o@@12)
 :no-pattern (U_2_int o@@12)
 :no-pattern (U_2_bool o@@12)
)))
(assert (= (FDim Map.Keys) 0))
(assert (forall ((arg0@@41 T@U) ) (! (= (type (DeclType arg0@@41)) ClassNameType)
 :qid |funType:DeclType|
 :pattern ( (DeclType arg0@@41))
)))
(assert (= (DeclType Map.Keys) class.Map))
(assert (forall (($h T@U) ($o T@U) ) (!  (=> (and (= (type $h) (MapType1Type refType)) (= (type $o) refType)) (=> (and (and ($IsGoodHeap $h) (not (= $o null))) (U_2_bool (MapType1Select $h $o alloc))) (forall ((|$i#0| Int) ) (!  (=> (and (<= 0 |$i#0|) (< |$i#0| (|Seq#Length| (MapType1Select $h $o Map.Keys)))) (GenericAlloc (|Seq#Index| (MapType1Select $h $o Map.Keys) |$i#0|) $h))
 :qid |B4bpl.326:132|
 :skolemid |88|
 :pattern ( (|Seq#Index| (MapType1Select $h $o Map.Keys) |$i#0|))
))))
 :qid |B4bpl.326:15|
 :skolemid |89|
 :pattern ( (MapType1Select $h $o Map.Keys))
)))
(assert (= (FDim Map.Values) 0))
(assert (= (DeclType Map.Values) class.Map))
(assert (forall (($h@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (= (type $h@@0) (MapType1Type refType)) (= (type $o@@0) refType)) (=> (and (and ($IsGoodHeap $h@@0) (not (= $o@@0 null))) (U_2_bool (MapType1Select $h@@0 $o@@0 alloc))) (forall ((|$i#1| Int) ) (!  (=> (and (<= 0 |$i#1|) (< |$i#1| (|Seq#Length| (MapType1Select $h@@0 $o@@0 Map.Values)))) (GenericAlloc (|Seq#Index| (MapType1Select $h@@0 $o@@0 Map.Values) |$i#1|) $h@@0))
 :qid |B4bpl.332:134|
 :skolemid |90|
 :pattern ( (|Seq#Index| (MapType1Select $h@@0 $o@@0 Map.Values) |$i#1|))
))))
 :qid |B4bpl.332:15|
 :skolemid |91|
 :pattern ( (MapType1Select $h@@0 $o@@0 Map.Values))
)))
(assert (= (FDim Map.Repr) 0))
(assert (= (DeclType Map.Repr) class.Map))
(assert (forall (($h@@1 T@U) ($o@@1 T@U) ) (!  (=> (and (= (type $h@@1) (MapType1Type refType)) (= (type $o@@1) refType)) (=> (and (and ($IsGoodHeap $h@@1) (not (= $o@@1 null))) (U_2_bool (MapType1Select $h@@1 $o@@1 alloc))) (forall ((|$t#2| T@U) ) (!  (=> (and (= (type |$t#2|) BoxTypeType) (U_2_bool (MapType0Select (MapType1Select $h@@1 $o@@1 Map.Repr) |$t#2|))) (or (= ($Unbox refType |$t#2|) null) (U_2_bool (MapType1Select $h@@1 ($Unbox refType |$t#2|) alloc))))
 :qid |B4bpl.338:132|
 :skolemid |92|
 :pattern ( (MapType0Select (MapType1Select $h@@1 $o@@1 Map.Repr) |$t#2|))
))))
 :qid |B4bpl.338:15|
 :skolemid |93|
 :pattern ( (MapType1Select $h@@1 $o@@1 Map.Repr))
)))
(assert (= (FDim Map.head) 0))
(assert (= (DeclType Map.head) class.Map))
(assert (forall ((arg0@@42 T@U) ) (! (= (type (dtype arg0@@42)) ClassNameType)
 :qid |funType:dtype|
 :pattern ( (dtype arg0@@42))
)))
(assert (forall (($h@@2 T@U) ($o@@2 T@U) ) (!  (=> (and (= (type $h@@2) (MapType1Type refType)) (= (type $o@@2) refType)) (=> (and (and ($IsGoodHeap $h@@2) (not (= $o@@2 null))) (U_2_bool (MapType1Select $h@@2 $o@@2 alloc))) (or (= (MapType1Select $h@@2 $o@@2 Map.head) null) (and (U_2_bool (MapType1Select $h@@2 (MapType1Select $h@@2 $o@@2 Map.head) alloc)) (= (dtype (MapType1Select $h@@2 $o@@2 Map.head)) class.Node)))))
 :qid |B4bpl.344:15|
 :skolemid |94|
 :pattern ( (MapType1Select $h@@2 $o@@2 Map.head))
)))
(assert (= (FDim Map.nodes) 0))
(assert (= (DeclType Map.nodes) class.Map))
(assert (forall (($h@@3 T@U) ($o@@3 T@U) ) (!  (=> (and (= (type $h@@3) (MapType1Type refType)) (= (type $o@@3) refType)) (=> (and (and ($IsGoodHeap $h@@3) (not (= $o@@3 null))) (U_2_bool (MapType1Select $h@@3 $o@@3 alloc))) (forall ((|$i#3| Int) ) (!  (=> (and (<= 0 |$i#3|) (< |$i#3| (|Seq#Length| (MapType1Select $h@@3 $o@@3 Map.nodes)))) (or (= ($Unbox refType (|Seq#Index| (MapType1Select $h@@3 $o@@3 Map.nodes) |$i#3|)) null) (and (U_2_bool (MapType1Select $h@@3 ($Unbox refType (|Seq#Index| (MapType1Select $h@@3 $o@@3 Map.nodes) |$i#3|)) alloc)) (= (dtype ($Unbox refType (|Seq#Index| (MapType1Select $h@@3 $o@@3 Map.nodes) |$i#3|))) class.Node))))
 :qid |B4bpl.350:133|
 :skolemid |95|
 :pattern ( (|Seq#Index| (MapType1Select $h@@3 $o@@3 Map.nodes) |$i#3|))
))))
 :qid |B4bpl.350:15|
 :skolemid |96|
 :pattern ( (MapType1Select $h@@3 $o@@3 Map.nodes))
)))
(assert (= (FDim Node.key) 0))
(assert (= (DeclType Node.key) class.Node))
(assert (= (FDim Node.val) 0))
(assert (= (DeclType Node.val) class.Node))
(assert (= (FDim Node.next) 0))
(assert (= (DeclType Node.next) class.Node))
(assert  (=> (or (< 0 $ModuleContextHeight) (and (= 0 $ModuleContextHeight) (or (<= 4 $FunctionContextHeight) $InMethodContext))) (forall (($Heap T@U) (this T@U) ) (!  (=> (and (and (= (type $Heap) (MapType1Type refType)) (= (type this) refType)) (or (|Map.Valid#canCall| $Heap this) (and (and (and (and (or (or (not (= 0 $ModuleContextHeight)) (not (= 4 $FunctionContextHeight))) $InMethodContext) ($IsGoodHeap $Heap)) (not (= this null))) (U_2_bool (MapType1Select $Heap this alloc))) (= (dtype this) class.Map)))) (and (and (and (and (and (=> (U_2_bool (MapType0Select (MapType1Select $Heap this Map.Repr) ($Box this))) true) (=> (and (U_2_bool (MapType0Select (MapType1Select $Heap this Map.Repr) ($Box this))) (= (|Seq#Length| (MapType1Select $Heap this Map.Keys)) (|Seq#Length| (MapType1Select $Heap this Map.Values)))) true)) (=> (and (and (U_2_bool (MapType0Select (MapType1Select $Heap this Map.Repr) ($Box this))) (= (|Seq#Length| (MapType1Select $Heap this Map.Keys)) (|Seq#Length| (MapType1Select $Heap this Map.Values)))) (= (|Seq#Length| (MapType1Select $Heap this Map.nodes)) (+ (|Seq#Length| (MapType1Select $Heap this Map.Keys)) 1))) true)) (=> (and (and (and (U_2_bool (MapType0Select (MapType1Select $Heap this Map.Repr) ($Box this))) (= (|Seq#Length| (MapType1Select $Heap this Map.Keys)) (|Seq#Length| (MapType1Select $Heap this Map.Values)))) (= (|Seq#Length| (MapType1Select $Heap this Map.nodes)) (+ (|Seq#Length| (MapType1Select $Heap this Map.Keys)) 1))) (= (MapType1Select $Heap this Map.head) ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) 0)))) (forall ((|i#0| Int) ) (!  (=> true (and (=> (<= 0 |i#0|) true) (=> (and (<= 0 |i#0|) (< |i#0| (|Seq#Length| (MapType1Select $Heap this Map.Keys)))) (and (and (and (and (=> (not (= ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0|)) null)) true) (=> (and (not (= ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0|)) null)) (U_2_bool (MapType0Select (MapType1Select $Heap this Map.Repr) ($Box ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0|)))))) true)) (=> (and (and (not (= ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0|)) null)) (U_2_bool (MapType0Select (MapType1Select $Heap this Map.Repr) ($Box ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0|)))))) (= (MapType1Select $Heap ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0|)) Node.key) (|Seq#Index| (MapType1Select $Heap this Map.Keys) |i#0|))) true)) (=> (and (and (and (not (= ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0|)) null)) (U_2_bool (MapType0Select (MapType1Select $Heap this Map.Repr) ($Box ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0|)))))) (= (MapType1Select $Heap ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0|)) Node.key) (|Seq#Index| (MapType1Select $Heap this Map.Keys) |i#0|))) (not (|Seq#Contains| (|Seq#Drop| (MapType1Select $Heap this Map.Keys) (+ |i#0| 1)) (MapType1Select $Heap ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0|)) Node.key)))) true)) (=> (and (and (and (and (not (= ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0|)) null)) (U_2_bool (MapType0Select (MapType1Select $Heap this Map.Repr) ($Box ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0|)))))) (= (MapType1Select $Heap ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0|)) Node.key) (|Seq#Index| (MapType1Select $Heap this Map.Keys) |i#0|))) (not (|Seq#Contains| (|Seq#Drop| (MapType1Select $Heap this Map.Keys) (+ |i#0| 1)) (MapType1Select $Heap ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0|)) Node.key)))) (= (MapType1Select $Heap ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0|)) Node.val) (|Seq#Index| (MapType1Select $Heap this Map.Values) |i#0|))) true)))))
 :qid |B4bpl.363:1149|
 :skolemid |97|
)))) (=> (and (and (and (and (U_2_bool (MapType0Select (MapType1Select $Heap this Map.Repr) ($Box this))) (= (|Seq#Length| (MapType1Select $Heap this Map.Keys)) (|Seq#Length| (MapType1Select $Heap this Map.Values)))) (= (|Seq#Length| (MapType1Select $Heap this Map.nodes)) (+ (|Seq#Length| (MapType1Select $Heap this Map.Keys)) 1))) (= (MapType1Select $Heap this Map.head) ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) 0)))) (forall ((|i#0@@0| Int) ) (!  (=> true (=> (and (<= 0 |i#0@@0|) (< |i#0@@0| (|Seq#Length| (MapType1Select $Heap this Map.Keys)))) (and (and (and (and (and (not (= ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0@@0|)) null)) (U_2_bool (MapType0Select (MapType1Select $Heap this Map.Repr) ($Box ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0@@0|)))))) (= (MapType1Select $Heap ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0@@0|)) Node.key) (|Seq#Index| (MapType1Select $Heap this Map.Keys) |i#0@@0|))) (not (|Seq#Contains| (|Seq#Drop| (MapType1Select $Heap this Map.Keys) (+ |i#0@@0| 1)) (MapType1Select $Heap ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0@@0|)) Node.key)))) (= (MapType1Select $Heap ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0@@0|)) Node.val) (|Seq#Index| (MapType1Select $Heap this Map.Values) |i#0@@0|))) (= (MapType1Select $Heap ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0@@0|)) Node.next) ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) (+ |i#0@@0| 1)))))))
 :qid |B4bpl.363:3184|
 :skolemid |98|
))) true)) (and (=> (Map.Valid $Heap this) (and (and (and (and (and (U_2_bool (MapType0Select (MapType1Select $Heap this Map.Repr) ($Box this))) (= (|Seq#Length| (MapType1Select $Heap this Map.Keys)) (|Seq#Length| (MapType1Select $Heap this Map.Values)))) (= (|Seq#Length| (MapType1Select $Heap this Map.nodes)) (+ (|Seq#Length| (MapType1Select $Heap this Map.Keys)) 1))) (= (MapType1Select $Heap this Map.head) ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) 0)))) (forall ((|i#0@@1| Int) ) (!  (=> true (=> (and (<= 0 |i#0@@1|) (< |i#0@@1| (|Seq#Length| (MapType1Select $Heap this Map.Keys)))) (and (and (and (and (and (not (= ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0@@1|)) null)) (U_2_bool (MapType0Select (MapType1Select $Heap this Map.Repr) ($Box ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0@@1|)))))) (= (MapType1Select $Heap ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0@@1|)) Node.key) (|Seq#Index| (MapType1Select $Heap this Map.Keys) |i#0@@1|))) (not (|Seq#Contains| (|Seq#Drop| (MapType1Select $Heap this Map.Keys) (+ |i#0@@1| 1)) (MapType1Select $Heap ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0@@1|)) Node.key)))) (= (MapType1Select $Heap ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0@@1|)) Node.val) (|Seq#Index| (MapType1Select $Heap this Map.Values) |i#0@@1|))) (= (MapType1Select $Heap ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0@@1|)) Node.next) ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) (+ |i#0@@1| 1)))))))
 :qid |B4bpl.363:4351|
 :skolemid |99|
))) (= ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) (- (|Seq#Length| (MapType1Select $Heap this Map.nodes)) 1))) null))) (=> (and (and (and (and (and (U_2_bool (MapType0Select (MapType1Select $Heap this Map.Repr) ($Box this))) (= (|Seq#Length| (MapType1Select $Heap this Map.Keys)) (|Seq#Length| (MapType1Select $Heap this Map.Values)))) (= (|Seq#Length| (MapType1Select $Heap this Map.nodes)) (+ (|Seq#Length| (MapType1Select $Heap this Map.Keys)) 1))) (= (MapType1Select $Heap this Map.head) ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) 0)))) (forall ((|i#0@@2| Int) ) (!  (=> true (=> (and (<= 0 |i#0@@2|) (< |i#0@@2| (|Seq#Length| (MapType1Select $Heap this Map.Keys)))) (and (and (and (and (and (not (= ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0@@2|)) null)) (U_2_bool (MapType0Select (MapType1Select $Heap this Map.Repr) ($Box ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0@@2|)))))) (= (MapType1Select $Heap ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0@@2|)) Node.key) (|Seq#Index| (MapType1Select $Heap this Map.Keys) |i#0@@2|))) (not (|Seq#Contains| (|Seq#Drop| (MapType1Select $Heap this Map.Keys) (+ |i#0@@2| 1)) (MapType1Select $Heap ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0@@2|)) Node.key)))) (= (MapType1Select $Heap ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0@@2|)) Node.val) (|Seq#Index| (MapType1Select $Heap this Map.Values) |i#0@@2|))) (= (MapType1Select $Heap ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) |i#0@@2|)) Node.next) ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) (+ |i#0@@2| 1)))))))
 :qid |B4bpl.363:4351|
 :skolemid |99|
))) (= ($Unbox refType (|Seq#Index| (MapType1Select $Heap this Map.nodes) (- (|Seq#Length| (MapType1Select $Heap this Map.nodes)) 1))) null)) (Map.Valid $Heap this)))))
 :qid |B4bpl.363:128|
 :skolemid |100|
 :pattern ( (Map.Valid $Heap this))
))))
(assert (forall (($h0 T@U) ($h1 T@U) (this@@0 T@U) ) (!  (=> (and (and (= (type $h0) (MapType1Type refType)) (= (type $h1) (MapType1Type refType))) (= (type this@@0) refType)) (=> (and (and (and (and (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (not (= this@@0 null))) (U_2_bool (MapType1Select $h0 this@@0 alloc))) (= (dtype this@@0) class.Map)) (U_2_bool (MapType1Select $h1 this@@0 alloc))) (= (dtype this@@0) class.Map)) ($HeapSucc $h0 $h1)) (=> (forall (($o@@4 T@U) ($f T@U) ) (! (let ((alpha@@4 (FieldTypeInv0 (type $f))))
 (=> (and (= (type $o@@4) refType) (= (type $f) (FieldType alpha@@4))) (=> (and (and (and (not (= $o@@4 null)) (U_2_bool (MapType1Select $h0 $o@@4 alloc))) (U_2_bool (MapType1Select $h1 $o@@4 alloc))) (or (= $o@@4 this@@0) (U_2_bool (MapType0Select (MapType1Select $h0 this@@0 Map.Repr) ($Box $o@@4))))) (= (MapType1Select $h0 $o@@4 $f) (MapType1Select $h1 $o@@4 $f)))))
 :qid |B4bpl.366:307|
 :skolemid |101|
 :no-pattern (type $o@@4)
 :no-pattern (type $f)
 :no-pattern (U_2_int $o@@4)
 :no-pattern (U_2_bool $o@@4)
 :no-pattern (U_2_int $f)
 :no-pattern (U_2_bool $f)
)) (and (=> (Map.Valid $h0 this@@0) (Map.Valid $h1 this@@0)) (=> (Map.Valid $h1 this@@0) (Map.Valid $h0 this@@0))))))
 :qid |B4bpl.366:15|
 :skolemid |102|
 :pattern ( ($HeapSucc $h0 $h1) (Map.Valid $h1 this@@0))
)))
(assert (forall (($h@@4 T@U) ($o@@5 T@U) ) (!  (=> (and (= (type $h@@4) (MapType1Type refType)) (= (type $o@@5) refType)) (=> (and (and ($IsGoodHeap $h@@4) (not (= $o@@5 null))) (U_2_bool (MapType1Select $h@@4 $o@@5 alloc))) (GenericAlloc (MapType1Select $h@@4 $o@@5 Node.key) $h@@4)))
 :qid |B4bpl.1369:15|
 :skolemid |153|
 :pattern ( (MapType1Select $h@@4 $o@@5 Node.key))
)))
(assert (forall (($h@@5 T@U) ($o@@6 T@U) ) (!  (=> (and (= (type $h@@5) (MapType1Type refType)) (= (type $o@@6) refType)) (=> (and (and ($IsGoodHeap $h@@5) (not (= $o@@6 null))) (U_2_bool (MapType1Select $h@@5 $o@@6 alloc))) (GenericAlloc (MapType1Select $h@@5 $o@@6 Node.val) $h@@5)))
 :qid |B4bpl.1373:15|
 :skolemid |154|
 :pattern ( (MapType1Select $h@@5 $o@@6 Node.val))
)))
(assert (forall (($h@@6 T@U) ($o@@7 T@U) ) (!  (=> (and (= (type $h@@6) (MapType1Type refType)) (= (type $o@@7) refType)) (=> (and (and ($IsGoodHeap $h@@6) (not (= $o@@7 null))) (U_2_bool (MapType1Select $h@@6 $o@@7 alloc))) (or (= (MapType1Select $h@@6 $o@@7 Node.next) null) (and (U_2_bool (MapType1Select $h@@6 (MapType1Select $h@@6 $o@@7 Node.next) alloc)) (= (dtype (MapType1Select $h@@6 $o@@7 Node.next)) class.Node)))))
 :qid |B4bpl.1377:15|
 :skolemid |155|
 :pattern ( (MapType1Select $h@@6 $o@@7 Node.next))
)))
(assert  (and (and (and (and (and (and (and (forall ((arg0@@43 T@T) (arg1@@19 T@T) ) (! (= (Ctor (MapType2Type arg0@@43 arg1@@19)) 13)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@44 T@T) (arg1@@20 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@44 arg1@@20)) arg0@@44)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@44 arg1@@20))
))) (forall ((arg0@@45 T@T) (arg1@@21 T@T) ) (! (= (MapType2TypeInv1 (MapType2Type arg0@@45 arg1@@21)) arg1@@21)
 :qid |typeInv:MapType2TypeInv1|
 :pattern ( (MapType2Type arg0@@45 arg1@@21))
))) (forall ((arg0@@46 T@U) (arg1@@22 T@U) (arg2@@4 T@U) ) (! (let ((aVar1@@2 (MapType2TypeInv1 (type arg0@@46))))
(= (type (MapType2Select arg0@@46 arg1@@22 arg2@@4)) aVar1@@2))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@46 arg1@@22 arg2@@4))
))) (forall ((arg0@@47 T@U) (arg1@@23 T@U) (arg2@@5 T@U) (arg3@@1 T@U) ) (! (let ((aVar1@@3 (type arg3@@1)))
(let ((aVar0@@1 (type arg1@@23)))
(= (type (MapType2Store arg0@@47 arg1@@23 arg2@@5 arg3@@1)) (MapType2Type aVar0@@1 aVar1@@3))))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@47 arg1@@23 arg2@@5 arg3@@1))
))) (forall ((m@@6 T@U) (x0@@6 T@U) (x1@@3 T@U) (val@@6 T@U) ) (! (let ((aVar1@@4 (MapType2TypeInv1 (type m@@6))))
 (=> (= (type val@@6) aVar1@@4) (= (MapType2Select (MapType2Store m@@6 x0@@6 x1@@3 val@@6) x0@@6 x1@@3) val@@6)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (and (forall ((val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@4 T@U) (y0@@4 T@U) (y1@@2 T@U) ) (!  (or (= x0@@7 y0@@4) (= (MapType2Select (MapType2Store m@@7 x0@@7 x1@@4 val@@7) y0@@4 y1@@2) (MapType2Select m@@7 y0@@4 y1@@2)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@8 T@U) (m@@8 T@U) (x0@@8 T@U) (x1@@5 T@U) (y0@@5 T@U) (y1@@3 T@U) ) (!  (or (= x1@@5 y1@@3) (= (MapType2Select (MapType2Store m@@8 x0@@8 x1@@5 val@@8) y0@@5 y1@@3) (MapType2Select m@@8 y0@@5 y1@@3)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((val@@9 T@U) (m@@9 T@U) (x0@@9 T@U) (x1@@6 T@U) (y0@@6 T@U) (y1@@4 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@9 x0@@9 x1@@6 val@@9) y0@@6 y1@@4) (MapType2Select m@@9 y0@@6 y1@@4)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))) (forall ((arg0@@48 T@U) (arg1@@24 T@U) (arg2@@6 T@U) (arg3@@2 T@U) (arg4 T@U) ) (! (= (type (|lambda#0| arg0@@48 arg1@@24 arg2@@6 arg3@@2 arg4)) (MapType2Type refType boolType))
 :qid |funType:lambda#0|
 :pattern ( (|lambda#0| arg0@@48 arg1@@24 arg2@@6 arg3@@2 arg4))
))))
(assert (forall (($o@@8 T@U) ($f@@0 T@U) (Map.Repr@@0 T@U) (null@@0 T@U) ($Heap@@0 T@U) (alloc@@0 T@U) (this@@1 T@U) ) (! (let ((alpha@@5 (FieldTypeInv0 (type $f@@0))))
 (=> (and (and (and (and (and (and (= (type $o@@8) refType) (= (type $f@@0) (FieldType alpha@@5))) (= (type Map.Repr@@0) (FieldType (MapType0Type BoxTypeType boolType)))) (= (type null@@0) refType)) (= (type $Heap@@0) (MapType1Type refType))) (= (type alloc@@0) (FieldType boolType))) (= (type this@@1) refType)) (= (U_2_bool (MapType2Select (|lambda#0| Map.Repr@@0 null@@0 $Heap@@0 alloc@@0 this@@1) $o@@8 $f@@0))  (=> (and (not (= $o@@8 null@@0)) (U_2_bool (MapType1Select $Heap@@0 $o@@8 alloc@@0))) (or (= $o@@8 this@@1) (U_2_bool (MapType0Select (MapType1Select $Heap@@0 this@@1 Map.Repr@@0) ($Box $o@@8))))))))
 :qid |B4bpl.383:35|
 :skolemid |156|
 :pattern ( (MapType2Select (|lambda#0| Map.Repr@@0 null@@0 $Heap@@0 alloc@@0 this@@1) $o@@8 $f@@0))
)))
(assert (forall ((arg0@@49 T@U) (arg1@@25 T@U) (arg2@@7 T@U) (arg3@@3 T@U) ) (! (= (type (|lambda#1| arg0@@49 arg1@@25 arg2@@7 arg3@@3)) (MapType2Type refType boolType))
 :qid |funType:lambda#1|
 :pattern ( (|lambda#1| arg0@@49 arg1@@25 arg2@@7 arg3@@3))
)))
(assert (forall (($o@@9 T@U) ($f@@1 T@U) (this@@2 T@U) (null@@1 T@U) ($Heap@@1 T@U) (alloc@@1 T@U) ) (! (let ((alpha@@6 (FieldTypeInv0 (type $f@@1))))
 (=> (and (and (and (and (and (= (type $o@@9) refType) (= (type $f@@1) (FieldType alpha@@6))) (= (type this@@2) refType)) (= (type null@@1) refType)) (= (type $Heap@@1) (MapType1Type refType))) (= (type alloc@@1) (FieldType boolType))) (= (U_2_bool (MapType2Select (|lambda#1| this@@2 null@@1 $Heap@@1 alloc@@1) $o@@9 $f@@1))  (=> (and (not (= $o@@9 null@@1)) (U_2_bool (MapType1Select $Heap@@1 $o@@9 alloc@@1))) (= $o@@9 this@@2)))))
 :qid |B4bpl.488:31|
 :skolemid |157|
 :pattern ( (MapType2Select (|lambda#1| this@@2 null@@1 $Heap@@1 alloc@@1) $o@@9 $f@@1))
)))
(assert (forall ((arg0@@50 T@U) (arg1@@26 T@U) (arg2@@8 T@U) (arg3@@4 T@U) ) (! (= (type (|lambda#2| arg0@@50 arg1@@26 arg2@@8 arg3@@4)) (MapType2Type refType boolType))
 :qid |funType:lambda#2|
 :pattern ( (|lambda#2| arg0@@50 arg1@@26 arg2@@8 arg3@@4))
)))
(assert (forall (($o@@10 T@U) ($f@@2 T@U) (this@@3 T@U) (null@@2 T@U) ($Heap@@2 T@U) (alloc@@2 T@U) ) (! (let ((alpha@@7 (FieldTypeInv0 (type $f@@2))))
 (=> (and (and (and (and (and (= (type $o@@10) refType) (= (type $f@@2) (FieldType alpha@@7))) (= (type this@@3) refType)) (= (type null@@2) refType)) (= (type $Heap@@2) (MapType1Type refType))) (= (type alloc@@2) (FieldType boolType))) (= (U_2_bool (MapType2Select (|lambda#2| this@@3 null@@2 $Heap@@2 alloc@@2) $o@@10 $f@@2))  (=> (and (not (= $o@@10 null@@2)) (U_2_bool (MapType1Select $Heap@@2 $o@@10 alloc@@2))) (= $o@@10 this@@3)))))
 :qid |B4bpl.531:31|
 :skolemid |158|
 :pattern ( (MapType2Select (|lambda#2| this@@3 null@@2 $Heap@@2 alloc@@2) $o@@10 $f@@2))
)))
(assert (forall ((arg0@@51 T@U) (arg1@@27 T@U) (arg2@@9 T@U) ) (! (= (type (|lambda#3| arg0@@51 arg1@@27 arg2@@9)) (MapType2Type refType boolType))
 :qid |funType:lambda#3|
 :pattern ( (|lambda#3| arg0@@51 arg1@@27 arg2@@9))
)))
(assert (forall (($o@@11 T@U) ($f@@3 T@U) (alloc@@3 T@U) (null@@3 T@U) ($Heap@@3 T@U) ) (! (let ((alpha@@8 (FieldTypeInv0 (type $f@@3))))
 (=> (and (and (and (and (= (type $o@@11) refType) (= (type $f@@3) (FieldType alpha@@8))) (= (type alloc@@3) (FieldType boolType))) (= (type null@@3) refType)) (= (type $Heap@@3) (MapType1Type refType))) (= (U_2_bool (MapType2Select (|lambda#3| alloc@@3 null@@3 $Heap@@3) $o@@11 $f@@3))  (=> (and (not (= $o@@11 null@@3)) (U_2_bool (MapType1Select $Heap@@3 $o@@11 alloc@@3))) false))))
 :qid |B4bpl.582:31|
 :skolemid |159|
 :pattern ( (MapType2Select (|lambda#3| alloc@@3 null@@3 $Heap@@3) $o@@11 $f@@3))
)))
(assert (forall ((arg0@@52 T@U) (arg1@@28 T@U) (arg2@@10 T@U) ) (! (= (type (|lambda#4| arg0@@52 arg1@@28 arg2@@10)) (MapType2Type refType boolType))
 :qid |funType:lambda#4|
 :pattern ( (|lambda#4| arg0@@52 arg1@@28 arg2@@10))
)))
(assert (forall (($o@@12 T@U) ($f@@4 T@U) (alloc@@4 T@U) (null@@4 T@U) ($Heap@@4 T@U) ) (! (let ((alpha@@9 (FieldTypeInv0 (type $f@@4))))
 (=> (and (and (and (and (= (type $o@@12) refType) (= (type $f@@4) (FieldType alpha@@9))) (= (type alloc@@4) (FieldType boolType))) (= (type null@@4) refType)) (= (type $Heap@@4) (MapType1Type refType))) (= (U_2_bool (MapType2Select (|lambda#4| alloc@@4 null@@4 $Heap@@4) $o@@12 $f@@4))  (=> (and (not (= $o@@12 null@@4)) (U_2_bool (MapType1Select $Heap@@4 $o@@12 alloc@@4))) false))))
 :qid |B4bpl.646:31|
 :skolemid |160|
 :pattern ( (MapType2Select (|lambda#4| alloc@@4 null@@4 $Heap@@4) $o@@12 $f@@4))
)))
(assert (forall ((arg0@@53 T@U) (arg1@@29 T@U) (arg2@@11 T@U) (arg3@@5 T@U) (arg4@@0 T@U) ) (! (= (type (|lambda#5| arg0@@53 arg1@@29 arg2@@11 arg3@@5 arg4@@0)) (MapType2Type refType boolType))
 :qid |funType:lambda#5|
 :pattern ( (|lambda#5| arg0@@53 arg1@@29 arg2@@11 arg3@@5 arg4@@0))
)))
(assert (forall (($o@@13 T@U) ($f@@5 T@U) (Map.Repr@@1 T@U) (null@@5 T@U) ($Heap@@5 T@U) (alloc@@5 T@U) (this@@4 T@U) ) (! (let ((alpha@@10 (FieldTypeInv0 (type $f@@5))))
 (=> (and (and (and (and (and (and (= (type $o@@13) refType) (= (type $f@@5) (FieldType alpha@@10))) (= (type Map.Repr@@1) (FieldType (MapType0Type BoxTypeType boolType)))) (= (type null@@5) refType)) (= (type $Heap@@5) (MapType1Type refType))) (= (type alloc@@5) (FieldType boolType))) (= (type this@@4) refType)) (= (U_2_bool (MapType2Select (|lambda#5| Map.Repr@@1 null@@5 $Heap@@5 alloc@@5 this@@4) $o@@13 $f@@5))  (=> (and (not (= $o@@13 null@@5)) (U_2_bool (MapType1Select $Heap@@5 $o@@13 alloc@@5))) (U_2_bool (MapType0Select (MapType1Select $Heap@@5 this@@4 Map.Repr@@1) ($Box $o@@13)))))))
 :qid |B4bpl.699:31|
 :skolemid |161|
 :pattern ( (MapType2Select (|lambda#5| Map.Repr@@1 null@@5 $Heap@@5 alloc@@5 this@@4) $o@@13 $f@@5))
)))
(assert (forall ((arg0@@54 T@U) (arg1@@30 T@U) (arg2@@12 T@U) (arg3@@6 T@U) (arg4@@1 T@U) ) (! (= (type (|lambda#6| arg0@@54 arg1@@30 arg2@@12 arg3@@6 arg4@@1)) (MapType2Type refType boolType))
 :qid |funType:lambda#6|
 :pattern ( (|lambda#6| arg0@@54 arg1@@30 arg2@@12 arg3@@6 arg4@@1))
)))
(assert (forall (($o@@14 T@U) ($f@@6 T@U) (Map.Repr@@2 T@U) (null@@6 T@U) ($Heap@@6 T@U) (alloc@@6 T@U) (this@@5 T@U) ) (! (let ((alpha@@11 (FieldTypeInv0 (type $f@@6))))
 (=> (and (and (and (and (and (and (= (type $o@@14) refType) (= (type $f@@6) (FieldType alpha@@11))) (= (type Map.Repr@@2) (FieldType (MapType0Type BoxTypeType boolType)))) (= (type null@@6) refType)) (= (type $Heap@@6) (MapType1Type refType))) (= (type alloc@@6) (FieldType boolType))) (= (type this@@5) refType)) (= (U_2_bool (MapType2Select (|lambda#6| Map.Repr@@2 null@@6 $Heap@@6 alloc@@6 this@@5) $o@@14 $f@@6))  (=> (and (not (= $o@@14 null@@6)) (U_2_bool (MapType1Select $Heap@@6 $o@@14 alloc@@6))) (U_2_bool (MapType0Select (MapType1Select $Heap@@6 this@@5 Map.Repr@@2) ($Box $o@@14)))))))
 :qid |B4bpl.819:31|
 :skolemid |162|
 :pattern ( (MapType2Select (|lambda#6| Map.Repr@@2 null@@6 $Heap@@6 alloc@@6 this@@5) $o@@14 $f@@6))
)))
(assert (forall ((arg0@@55 T@U) (arg1@@31 T@U) (arg2@@13 T@U) (arg3@@7 T@U) (arg4@@2 T@U) ) (! (= (type (|lambda#7| arg0@@55 arg1@@31 arg2@@13 arg3@@7 arg4@@2)) (MapType2Type refType boolType))
 :qid |funType:lambda#7|
 :pattern ( (|lambda#7| arg0@@55 arg1@@31 arg2@@13 arg3@@7 arg4@@2))
)))
(assert (forall (($o@@15 T@U) ($f@@7 T@U) (Map.Repr@@3 T@U) (null@@7 T@U) ($Heap@@7 T@U) (alloc@@7 T@U) (this@@6 T@U) ) (! (let ((alpha@@12 (FieldTypeInv0 (type $f@@7))))
 (=> (and (and (and (and (and (and (= (type $o@@15) refType) (= (type $f@@7) (FieldType alpha@@12))) (= (type Map.Repr@@3) (FieldType (MapType0Type BoxTypeType boolType)))) (= (type null@@7) refType)) (= (type $Heap@@7) (MapType1Type refType))) (= (type alloc@@7) (FieldType boolType))) (= (type this@@6) refType)) (= (U_2_bool (MapType2Select (|lambda#7| Map.Repr@@3 null@@7 $Heap@@7 alloc@@7 this@@6) $o@@15 $f@@7))  (=> (and (not (= $o@@15 null@@7)) (U_2_bool (MapType1Select $Heap@@7 $o@@15 alloc@@7))) (U_2_bool (MapType0Select (MapType1Select $Heap@@7 this@@6 Map.Repr@@3) ($Box $o@@15)))))))
 :qid |B4bpl.943:31|
 :skolemid |163|
 :pattern ( (MapType2Select (|lambda#7| Map.Repr@@3 null@@7 $Heap@@7 alloc@@7 this@@6) $o@@15 $f@@7))
)))
(assert (forall ((arg0@@56 T@U) (arg1@@32 T@U) (arg2@@14 T@U) (arg3@@8 T@U) (arg4@@3 T@U) ) (! (= (type (|lambda#8| arg0@@56 arg1@@32 arg2@@14 arg3@@8 arg4@@3)) (MapType2Type refType boolType))
 :qid |funType:lambda#8|
 :pattern ( (|lambda#8| arg0@@56 arg1@@32 arg2@@14 arg3@@8 arg4@@3))
)))
(assert (forall (($o@@16 T@U) ($f@@8 T@U) (Map.Repr@@4 T@U) (null@@8 T@U) ($Heap@@8 T@U) (alloc@@8 T@U) (this@@7 T@U) ) (! (let ((alpha@@13 (FieldTypeInv0 (type $f@@8))))
 (=> (and (and (and (and (and (and (= (type $o@@16) refType) (= (type $f@@8) (FieldType alpha@@13))) (= (type Map.Repr@@4) (FieldType (MapType0Type BoxTypeType boolType)))) (= (type null@@8) refType)) (= (type $Heap@@8) (MapType1Type refType))) (= (type alloc@@8) (FieldType boolType))) (= (type this@@7) refType)) (= (U_2_bool (MapType2Select (|lambda#8| Map.Repr@@4 null@@8 $Heap@@8 alloc@@8 this@@7) $o@@16 $f@@8))  (=> (and (not (= $o@@16 null@@8)) (U_2_bool (MapType1Select $Heap@@8 $o@@16 alloc@@8))) (U_2_bool (MapType0Select (MapType1Select $Heap@@8 this@@7 Map.Repr@@4) ($Box $o@@16)))))))
 :qid |B4bpl.1069:31|
 :skolemid |164|
 :pattern ( (MapType2Select (|lambda#8| Map.Repr@@4 null@@8 $Heap@@8 alloc@@8 this@@7) $o@@16 $f@@8))
)))
(assert (forall ((arg0@@57 T@U) (arg1@@33 T@U) (arg2@@15 T@U) ) (! (= (type (|lambda#9| arg0@@57 arg1@@33 arg2@@15)) (MapType2Type refType boolType))
 :qid |funType:lambda#9|
 :pattern ( (|lambda#9| arg0@@57 arg1@@33 arg2@@15))
)))
(assert (forall (($o@@17 T@U) ($f@@9 T@U) (alloc@@9 T@U) (null@@9 T@U) ($Heap@@9 T@U) ) (! (let ((alpha@@14 (FieldTypeInv0 (type $f@@9))))
 (=> (and (and (and (and (= (type $o@@17) refType) (= (type $f@@9) (FieldType alpha@@14))) (= (type alloc@@9) (FieldType boolType))) (= (type null@@9) refType)) (= (type $Heap@@9) (MapType1Type refType))) (= (U_2_bool (MapType2Select (|lambda#9| alloc@@9 null@@9 $Heap@@9) $o@@17 $f@@9))  (=> (and (not (= $o@@17 null@@9)) (U_2_bool (MapType1Select $Heap@@9 $o@@17 alloc@@9))) false))))
 :qid |B4bpl.1169:31|
 :skolemid |165|
 :pattern ( (MapType2Select (|lambda#9| alloc@@9 null@@9 $Heap@@9) $o@@17 $f@@9))
)))
(assert (forall ((arg0@@58 T@U) (arg1@@34 T@U) (arg2@@16 T@U) ) (! (= (type (|lambda#10| arg0@@58 arg1@@34 arg2@@16)) (MapType2Type refType boolType))
 :qid |funType:lambda#10|
 :pattern ( (|lambda#10| arg0@@58 arg1@@34 arg2@@16))
)))
(assert (forall (($o@@18 T@U) ($f@@10 T@U) (alloc@@10 T@U) (null@@10 T@U) ($Heap@@10 T@U) ) (! (let ((alpha@@15 (FieldTypeInv0 (type $f@@10))))
 (=> (and (and (and (and (= (type $o@@18) refType) (= (type $f@@10) (FieldType alpha@@15))) (= (type alloc@@10) (FieldType boolType))) (= (type null@@10) refType)) (= (type $Heap@@10) (MapType1Type refType))) (= (U_2_bool (MapType2Select (|lambda#10| alloc@@10 null@@10 $Heap@@10) $o@@18 $f@@10))  (=> (and (not (= $o@@18 null@@10)) (U_2_bool (MapType1Select $Heap@@10 $o@@18 alloc@@10))) false))))
 :qid |B4bpl.1261:31|
 :skolemid |166|
 :pattern ( (MapType2Select (|lambda#10| alloc@@10 null@@10 $Heap@@10) $o@@18 $f@@10))
)))
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (type $Heap@6) (MapType1Type refType)) (= (type this@@8) refType)) (= (type $Heap@@11) (MapType1Type refType))) (= (type |key#16|) BoxTypeType)) (= (type |call4formal@p#24@0|) refType)) (= (type $Heap@0) (MapType1Type refType))) (= (type |call6formal@prev#26@0|) refType)) (= (type $_Frame@0) (MapType2Type refType boolType))) (= (type $Heap@3) (MapType1Type refType))) (= (type |$rhs#6@0|) refType)) (= (type $Heap@4) (MapType1Type refType))) (= (type |$rhs#7@0|) refType)) (= (type $Heap@5) (MapType1Type refType))) (= (type |$rhs#3@0|) (SeqType BoxTypeType))) (= (type $Heap@1) (MapType1Type refType))) (= (type |$rhs#4@0|) (SeqType BoxTypeType))) (= (type $Heap@2) (MapType1Type refType))) (= (type |$rhs#5@0|) (SeqType BoxTypeType))) (= (type |call4formal@p#24|) refType)) (= (type |call6formal@prev#26|) refType)) (= (type |p#20|) refType)) (= (type |prev#22|) refType)) (= (type |$rhs#0|) refType)) (= (type |$rhs#2|) refType)))
(push 1)
(set-info :boogie-vc-id Map.Remove)
(assert (not
(let ((GeneratedUnifiedExit_correct  (=> (! (and %lbl%+44566 true) :lblpos +44566) (and (! (or %lbl%@48730  (=> (|Map.Valid#canCall| $Heap@6 this@@8) (or (Map.Valid $Heap@6 this@@8) (U_2_bool (MapType0Select (MapType1Select $Heap@6 this@@8 Map.Repr) ($Box this@@8)))))) :lblneg @48730) (=> (=> (|Map.Valid#canCall| $Heap@6 this@@8) (or (Map.Valid $Heap@6 this@@8) (U_2_bool (MapType0Select (MapType1Select $Heap@6 this@@8 Map.Repr) ($Box this@@8))))) (and (! (or %lbl%@48757  (=> (|Map.Valid#canCall| $Heap@6 this@@8) (or (Map.Valid $Heap@6 this@@8) (= (|Seq#Length| (MapType1Select $Heap@6 this@@8 Map.Keys)) (|Seq#Length| (MapType1Select $Heap@6 this@@8 Map.Values)))))) :lblneg @48757) (=> (=> (|Map.Valid#canCall| $Heap@6 this@@8) (or (Map.Valid $Heap@6 this@@8) (= (|Seq#Length| (MapType1Select $Heap@6 this@@8 Map.Keys)) (|Seq#Length| (MapType1Select $Heap@6 this@@8 Map.Values))))) (and (! (or %lbl%@48791  (=> (|Map.Valid#canCall| $Heap@6 this@@8) (or (Map.Valid $Heap@6 this@@8) (= (|Seq#Length| (MapType1Select $Heap@6 this@@8 Map.nodes)) (+ (|Seq#Length| (MapType1Select $Heap@6 this@@8 Map.Keys)) 1))))) :lblneg @48791) (=> (=> (|Map.Valid#canCall| $Heap@6 this@@8) (or (Map.Valid $Heap@6 this@@8) (= (|Seq#Length| (MapType1Select $Heap@6 this@@8 Map.nodes)) (+ (|Seq#Length| (MapType1Select $Heap@6 this@@8 Map.Keys)) 1)))) (and (! (or %lbl%@48829  (=> (|Map.Valid#canCall| $Heap@6 this@@8) (or (Map.Valid $Heap@6 this@@8) (= (MapType1Select $Heap@6 this@@8 Map.head) ($Unbox refType (|Seq#Index| (MapType1Select $Heap@6 this@@8 Map.nodes) 0)))))) :lblneg @48829) (=> (=> (|Map.Valid#canCall| $Heap@6 this@@8) (or (Map.Valid $Heap@6 this@@8) (= (MapType1Select $Heap@6 this@@8 Map.head) ($Unbox refType (|Seq#Index| (MapType1Select $Heap@6 this@@8 Map.nodes) 0))))) (and (! (or %lbl%@48867  (=> (|Map.Valid#canCall| $Heap@6 this@@8) (or (Map.Valid $Heap@6 this@@8) (forall ((|i#0@@3| Int) ) (!  (=> true (=> (and (<= 0 |i#0@@3|) (< |i#0@@3| (|Seq#Length| (MapType1Select $Heap@6 this@@8 Map.Keys)))) (and (and (and (and (and (not (= ($Unbox refType (|Seq#Index| (MapType1Select $Heap@6 this@@8 Map.nodes) |i#0@@3|)) null)) (U_2_bool (MapType0Select (MapType1Select $Heap@6 this@@8 Map.Repr) ($Box ($Unbox refType (|Seq#Index| (MapType1Select $Heap@6 this@@8 Map.nodes) |i#0@@3|)))))) (= (MapType1Select $Heap@6 ($Unbox refType (|Seq#Index| (MapType1Select $Heap@6 this@@8 Map.nodes) |i#0@@3|)) Node.key) (|Seq#Index| (MapType1Select $Heap@6 this@@8 Map.Keys) |i#0@@3|))) (not (|Seq#Contains| (|Seq#Drop| (MapType1Select $Heap@6 this@@8 Map.Keys) (+ |i#0@@3| 1)) (MapType1Select $Heap@6 ($Unbox refType (|Seq#Index| (MapType1Select $Heap@6 this@@8 Map.nodes) |i#0@@3|)) Node.key)))) (= (MapType1Select $Heap@6 ($Unbox refType (|Seq#Index| (MapType1Select $Heap@6 this@@8 Map.nodes) |i#0@@3|)) Node.val) (|Seq#Index| (MapType1Select $Heap@6 this@@8 Map.Values) |i#0@@3|))) (= (MapType1Select $Heap@6 ($Unbox refType (|Seq#Index| (MapType1Select $Heap@6 this@@8 Map.nodes) |i#0@@3|)) Node.next) ($Unbox refType (|Seq#Index| (MapType1Select $Heap@6 this@@8 Map.nodes) (+ |i#0@@3| 1)))))))
 :qid |B4bpl.1036:80|
 :skolemid |141|
))))) :lblneg @48867) (=> (=> (|Map.Valid#canCall| $Heap@6 this@@8) (or (Map.Valid $Heap@6 this@@8) (forall ((|i#0@@4| Int) ) (!  (=> true (=> (and (<= 0 |i#0@@4|) (< |i#0@@4| (|Seq#Length| (MapType1Select $Heap@6 this@@8 Map.Keys)))) (and (and (and (and (and (not (= ($Unbox refType (|Seq#Index| (MapType1Select $Heap@6 this@@8 Map.nodes) |i#0@@4|)) null)) (U_2_bool (MapType0Select (MapType1Select $Heap@6 this@@8 Map.Repr) ($Box ($Unbox refType (|Seq#Index| (MapType1Select $Heap@6 this@@8 Map.nodes) |i#0@@4|)))))) (= (MapType1Select $Heap@6 ($Unbox refType (|Seq#Index| (MapType1Select $Heap@6 this@@8 Map.nodes) |i#0@@4|)) Node.key) (|Seq#Index| (MapType1Select $Heap@6 this@@8 Map.Keys) |i#0@@4|))) (not (|Seq#Contains| (|Seq#Drop| (MapType1Select $Heap@6 this@@8 Map.Keys) (+ |i#0@@4| 1)) (MapType1Select $Heap@6 ($Unbox refType (|Seq#Index| (MapType1Select $Heap@6 this@@8 Map.nodes) |i#0@@4|)) Node.key)))) (= (MapType1Select $Heap@6 ($Unbox refType (|Seq#Index| (MapType1Select $Heap@6 this@@8 Map.nodes) |i#0@@4|)) Node.val) (|Seq#Index| (MapType1Select $Heap@6 this@@8 Map.Values) |i#0@@4|))) (= (MapType1Select $Heap@6 ($Unbox refType (|Seq#Index| (MapType1Select $Heap@6 this@@8 Map.nodes) |i#0@@4|)) Node.next) ($Unbox refType (|Seq#Index| (MapType1Select $Heap@6 this@@8 Map.nodes) (+ |i#0@@4| 1)))))))
 :qid |B4bpl.1036:80|
 :skolemid |141|
)))) (and (! (or %lbl%@49112  (=> (|Map.Valid#canCall| $Heap@6 this@@8) (or (Map.Valid $Heap@6 this@@8) (= ($Unbox refType (|Seq#Index| (MapType1Select $Heap@6 this@@8 Map.nodes) (- (|Seq#Length| (MapType1Select $Heap@6 this@@8 Map.nodes)) 1))) null)))) :lblneg @49112) (=> (=> (|Map.Valid#canCall| $Heap@6 this@@8) (or (Map.Valid $Heap@6 this@@8) (= ($Unbox refType (|Seq#Index| (MapType1Select $Heap@6 this@@8 Map.nodes) (- (|Seq#Length| (MapType1Select $Heap@6 this@@8 Map.nodes)) 1))) null))) (and (! (or %lbl%@49156 (forall (($o@@21 T@U) ) (!  (=> (= (type $o@@21) refType) (=> (and (and (not (= $o@@21 null)) (U_2_bool (MapType0Select (MapType1Select $Heap@6 this@@8 Map.Repr) ($Box $o@@21)))) (not (U_2_bool (MapType0Select (MapType1Select $Heap@@11 this@@8 Map.Repr) ($Box $o@@21))))) (not (U_2_bool (MapType1Select $Heap@@11 $o@@21 alloc)))))
 :qid |B4bpl.1038:19|
 :skolemid |142|
 :no-pattern (type $o@@21)
 :no-pattern (U_2_int $o@@21)
 :no-pattern (U_2_bool $o@@21)
))) :lblneg @49156) (=> (forall (($o@@22 T@U) ) (!  (=> (= (type $o@@22) refType) (=> (and (and (not (= $o@@22 null)) (U_2_bool (MapType0Select (MapType1Select $Heap@6 this@@8 Map.Repr) ($Box $o@@22)))) (not (U_2_bool (MapType0Select (MapType1Select $Heap@@11 this@@8 Map.Repr) ($Box $o@@22))))) (not (U_2_bool (MapType1Select $Heap@@11 $o@@22 alloc)))))
 :qid |B4bpl.1038:19|
 :skolemid |142|
 :no-pattern (type@@0 $o@@19)
 :no-pattern (type $o@@22)
 :no-pattern (U_2_int $o@@22)
 :no-pattern (U_2_bool $o@@22)
)) (and (! (or %lbl%@49208 (forall ((|k#17@@0| T@U) ) (!  (=> (and (and (= (type |k#17@@0|) BoxTypeType) (GenericAlloc |k#17@@0| $Heap@6)) (|Seq#Contains| (MapType1Select $Heap@6 this@@8 Map.Keys) |k#17@@0|)) (|Seq#Contains| (MapType1Select $Heap@@11 this@@8 Map.Keys) |k#17@@0|))
 :qid |B4bpl.1039:19|
 :skolemid |143|
 :no-pattern (type |k#17@@0|)
 :no-pattern (U_2_int |k#17@@0|)
 :no-pattern (U_2_bool |k#17@@0|)
))) :lblneg @49208) (=> (forall ((|k#17@@1| T@U) ) (!  (=> (and (and (= (type |k#17@@1|) BoxTypeType) (GenericAlloc |k#17@@1| $Heap@6)) (|Seq#Contains| (MapType1Select $Heap@6 this@@8 Map.Keys) |k#17@@1|)) (|Seq#Contains| (MapType1Select $Heap@@11 this@@8 Map.Keys) |k#17@@1|))
 :qid |B4bpl.1039:19|
 :skolemid |143|
 :no-pattern (type@@0 |k#17|)
 :no-pattern (type |k#17@@1|)
 :no-pattern (U_2_int |k#17@@1|)
 :no-pattern (U_2_bool |k#17@@1|)
)) (and (! (or %lbl%@49242 (forall ((|k#18@@0| T@U) ) (!  (=> (and (and (= (type |k#18@@0|) BoxTypeType) (GenericAlloc |k#18@@0| $Heap@6)) (|Seq#Contains| (MapType1Select $Heap@@11 this@@8 Map.Keys) |k#18@@0|)) (or (|Seq#Contains| (MapType1Select $Heap@6 this@@8 Map.Keys) |k#18@@0|) (= |k#18@@0| |key#16|)))
 :qid |B4bpl.1040:19|
 :skolemid |144|
 :no-pattern (type |k#18@@0|)
 :no-pattern (U_2_int |k#18@@0|)
 :no-pattern (U_2_bool |k#18@@0|)
))) :lblneg @49242) (=> (forall ((|k#18@@1| T@U) ) (!  (=> (and (and (= (type |k#18@@1|) BoxTypeType) (GenericAlloc |k#18@@1| $Heap@6)) (|Seq#Contains| (MapType1Select $Heap@@11 this@@8 Map.Keys) |k#18@@1|)) (or (|Seq#Contains| (MapType1Select $Heap@6 this@@8 Map.Keys) |k#18@@1|) (= |k#18@@1| |key#16|)))
 :qid |B4bpl.1040:19|
 :skolemid |144|
 :no-pattern (type@@0 |k#18|)
 :no-pattern (type |k#18@@1|)
 :no-pattern (U_2_int |k#18@@1|)
 :no-pattern (U_2_bool |k#18@@1|)
)) (and (! (or %lbl%@49284  (=> (not (|Seq#Contains| (MapType1Select $Heap@@11 this@@8 Map.Keys) |key#16|)) (|Seq#Equal| (MapType1Select $Heap@6 this@@8 Map.Keys) (MapType1Select $Heap@@11 this@@8 Map.Keys)))) :lblneg @49284) (=> (=> (not (|Seq#Contains| (MapType1Select $Heap@@11 this@@8 Map.Keys) |key#16|)) (|Seq#Equal| (MapType1Select $Heap@6 this@@8 Map.Keys) (MapType1Select $Heap@@11 this@@8 Map.Keys))) (and (! (or %lbl%@49315  (=> (not (|Seq#Contains| (MapType1Select $Heap@@11 this@@8 Map.Keys) |key#16|)) (|Seq#Equal| (MapType1Select $Heap@6 this@@8 Map.Values) (MapType1Select $Heap@@11 this@@8 Map.Values)))) :lblneg @49315) (=> (=> (not (|Seq#Contains| (MapType1Select $Heap@@11 this@@8 Map.Keys) |key#16|)) (|Seq#Equal| (MapType1Select $Heap@6 this@@8 Map.Values) (MapType1Select $Heap@@11 this@@8 Map.Values))) (and (! (or %lbl%@49346  (=> (|Seq#Contains| (MapType1Select $Heap@@11 this@@8 Map.Keys) |key#16|) (= (|Seq#Length| (MapType1Select $Heap@6 this@@8 Map.Keys)) (- (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.Keys)) 1)))) :lblneg @49346) (=> (=> (|Seq#Contains| (MapType1Select $Heap@@11 this@@8 Map.Keys) |key#16|) (= (|Seq#Length| (MapType1Select $Heap@6 this@@8 Map.Keys)) (- (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.Keys)) 1))) (and (! (or %lbl%@49383  (=> (|Seq#Contains| (MapType1Select $Heap@@11 this@@8 Map.Keys) |key#16|) (not (|Seq#Contains| (MapType1Select $Heap@6 this@@8 Map.Keys) |key#16|)))) :lblneg @49383) (=> (=> (|Seq#Contains| (MapType1Select $Heap@@11 this@@8 Map.Keys) |key#16|) (not (|Seq#Contains| (MapType1Select $Heap@6 this@@8 Map.Keys) |key#16|))) (! (or %lbl%@49409  (=> (|Seq#Contains| (MapType1Select $Heap@@11 this@@8 Map.Keys) |key#16|) (exists ((|h#19| Int) ) (!  (and (and (and (and (and (<= 0 |h#19|) (< |h#19| (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.Keys)))) (|Seq#Equal| (|Seq#Take| (MapType1Select $Heap@6 this@@8 Map.Keys) |h#19|) (|Seq#Take| (MapType1Select $Heap@@11 this@@8 Map.Keys) |h#19|))) (|Seq#Equal| (|Seq#Take| (MapType1Select $Heap@6 this@@8 Map.Values) |h#19|) (|Seq#Take| (MapType1Select $Heap@@11 this@@8 Map.Values) |h#19|))) (|Seq#Equal| (|Seq#Drop| (MapType1Select $Heap@6 this@@8 Map.Keys) |h#19|) (|Seq#Drop| (MapType1Select $Heap@@11 this@@8 Map.Keys) (+ |h#19| 1)))) (|Seq#Equal| (|Seq#Drop| (MapType1Select $Heap@6 this@@8 Map.Values) |h#19|) (|Seq#Drop| (MapType1Select $Heap@@11 this@@8 Map.Values) (+ |h#19| 1))))
 :qid |B4bpl.1045:78|
 :skolemid |145|
)))) :lblneg @49409))))))))))))))))))))))))))))))
(let ((anon6_Else_correct  (=> (! (and %lbl%+16006 true) :lblpos +16006) (=> (not (= |call6formal@prev#26@0| null)) (and (! (or %lbl%@48670 (not (= |call6formal@prev#26@0| null))) :lblneg @48670) (=> (not (= |call6formal@prev#26@0| null)) (and (! (or %lbl%@48677 (U_2_bool (MapType2Select $_Frame@0 |call6formal@prev#26@0| Node.next))) :lblneg @48677) (=> (U_2_bool (MapType2Select $_Frame@0 |call6formal@prev#26@0| Node.next)) (and (! (or %lbl%@48683 (not (= |call4formal@p#24@0| null))) :lblneg @48683) (=> (not (= |call4formal@p#24@0| null)) (=> (and (and (= |$rhs#7@0| (MapType1Select $Heap@3 |call4formal@p#24@0| Node.next)) (= $Heap@5 (MapType1Store $Heap@3 |call6formal@prev#26@0| Node.next |$rhs#7@0|))) (and ($IsGoodHeap $Heap@5) (= $Heap@6 $Heap@5))) GeneratedUnifiedExit_correct)))))))))))
(let ((anon6_Then_correct  (=> (! (and %lbl%+16004 true) :lblpos +16004) (=> (= |call6formal@prev#26@0| null) (and (! (or %lbl%@48610 (U_2_bool (MapType2Select $_Frame@0 this@@8 Map.head))) :lblneg @48610) (=> (U_2_bool (MapType2Select $_Frame@0 this@@8 Map.head)) (and (! (or %lbl%@48617 (not (= (MapType1Select $Heap@3 this@@8 Map.head) null))) :lblneg @48617) (=> (not (= (MapType1Select $Heap@3 this@@8 Map.head) null)) (=> (and (and (= |$rhs#6@0| (MapType1Select $Heap@3 (MapType1Select $Heap@3 this@@8 Map.head) Node.next)) (= $Heap@4 (MapType1Store $Heap@3 this@@8 Map.head |$rhs#6@0|))) (and ($IsGoodHeap $Heap@4) (= $Heap@6 $Heap@4))) GeneratedUnifiedExit_correct)))))))))
(let ((anon5_Then_correct  (=> (! (and %lbl%+16002 true) :lblpos +16002) (=> (not (= |call4formal@p#24@0| null)) (and (! (or %lbl%@48132 (U_2_bool (MapType2Select $_Frame@0 this@@8 Map.Keys))) :lblneg @48132) (=> (U_2_bool (MapType2Select $_Frame@0 this@@8 Map.Keys)) (and (! (or %lbl%@48139  (and (<= 0 |call5formal@n#25@0|) (<= |call5formal@n#25@0| (|Seq#Length| (MapType1Select $Heap@0 this@@8 Map.Keys))))) :lblneg @48139) (=> (and (<= 0 |call5formal@n#25@0|) (<= |call5formal@n#25@0| (|Seq#Length| (MapType1Select $Heap@0 this@@8 Map.Keys)))) (and (! (or %lbl%@48158  (and (<= 0 (+ |call5formal@n#25@0| 1)) (<= (+ |call5formal@n#25@0| 1) (|Seq#Length| (MapType1Select $Heap@0 this@@8 Map.Keys))))) :lblneg @48158) (=> (and (<= 0 (+ |call5formal@n#25@0| 1)) (<= (+ |call5formal@n#25@0| 1) (|Seq#Length| (MapType1Select $Heap@0 this@@8 Map.Keys)))) (=> (= |$rhs#3@0| (|Seq#Append| (|Seq#Take| (MapType1Select $Heap@0 this@@8 Map.Keys) |call5formal@n#25@0|) (|Seq#Drop| (MapType1Select $Heap@0 this@@8 Map.Keys) (+ |call5formal@n#25@0| 1)))) (=> (and (= $Heap@1 (MapType1Store $Heap@0 this@@8 Map.Keys |$rhs#3@0|)) ($IsGoodHeap $Heap@1)) (and (! (or %lbl%@48238 (U_2_bool (MapType2Select $_Frame@0 this@@8 Map.Values))) :lblneg @48238) (=> (U_2_bool (MapType2Select $_Frame@0 this@@8 Map.Values)) (and (! (or %lbl%@48245  (and (<= 0 |call5formal@n#25@0|) (<= |call5formal@n#25@0| (|Seq#Length| (MapType1Select $Heap@1 this@@8 Map.Values))))) :lblneg @48245) (=> (and (<= 0 |call5formal@n#25@0|) (<= |call5formal@n#25@0| (|Seq#Length| (MapType1Select $Heap@1 this@@8 Map.Values)))) (and (! (or %lbl%@48264  (and (<= 0 (+ |call5formal@n#25@0| 1)) (<= (+ |call5formal@n#25@0| 1) (|Seq#Length| (MapType1Select $Heap@1 this@@8 Map.Values))))) :lblneg @48264) (=> (and (<= 0 (+ |call5formal@n#25@0| 1)) (<= (+ |call5formal@n#25@0| 1) (|Seq#Length| (MapType1Select $Heap@1 this@@8 Map.Values)))) (=> (= |$rhs#4@0| (|Seq#Append| (|Seq#Take| (MapType1Select $Heap@1 this@@8 Map.Values) |call5formal@n#25@0|) (|Seq#Drop| (MapType1Select $Heap@1 this@@8 Map.Values) (+ |call5formal@n#25@0| 1)))) (=> (and (= $Heap@2 (MapType1Store $Heap@1 this@@8 Map.Values |$rhs#4@0|)) ($IsGoodHeap $Heap@2)) (and (! (or %lbl%@48342  (and (<= 0 |call5formal@n#25@0|) (<= |call5formal@n#25@0| (|Seq#Length| (MapType1Select $Heap@2 this@@8 Map.Keys))))) :lblneg @48342) (and (! (or %lbl%@48361  (and (<= 0 (+ |call5formal@n#25@0| 1)) (<= (+ |call5formal@n#25@0| 1) (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.Keys))))) :lblneg @48361) (and (! (or %lbl%@48390 (|Seq#Equal| (|Seq#Drop| (MapType1Select $Heap@2 this@@8 Map.Keys) |call5formal@n#25@0|) (|Seq#Drop| (MapType1Select $Heap@@11 this@@8 Map.Keys) (+ |call5formal@n#25@0| 1)))) :lblneg @48390) (=> (|Seq#Equal| (|Seq#Drop| (MapType1Select $Heap@2 this@@8 Map.Keys) |call5formal@n#25@0|) (|Seq#Drop| (MapType1Select $Heap@@11 this@@8 Map.Keys) (+ |call5formal@n#25@0| 1))) (and (! (or %lbl%@48416  (and (<= 0 |call5formal@n#25@0|) (<= |call5formal@n#25@0| (|Seq#Length| (MapType1Select $Heap@2 this@@8 Map.Values))))) :lblneg @48416) (and (! (or %lbl%@48435  (and (<= 0 (+ |call5formal@n#25@0| 1)) (<= (+ |call5formal@n#25@0| 1) (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.Values))))) :lblneg @48435) (and (! (or %lbl%@48464 (|Seq#Equal| (|Seq#Drop| (MapType1Select $Heap@2 this@@8 Map.Values) |call5formal@n#25@0|) (|Seq#Drop| (MapType1Select $Heap@@11 this@@8 Map.Values) (+ |call5formal@n#25@0| 1)))) :lblneg @48464) (=> (|Seq#Equal| (|Seq#Drop| (MapType1Select $Heap@2 this@@8 Map.Values) |call5formal@n#25@0|) (|Seq#Drop| (MapType1Select $Heap@@11 this@@8 Map.Values) (+ |call5formal@n#25@0| 1))) (and (! (or %lbl%@48492 (U_2_bool (MapType2Select $_Frame@0 this@@8 Map.nodes))) :lblneg @48492) (=> (U_2_bool (MapType2Select $_Frame@0 this@@8 Map.nodes)) (and (! (or %lbl%@48499  (and (<= 0 |call5formal@n#25@0|) (<= |call5formal@n#25@0| (|Seq#Length| (MapType1Select $Heap@2 this@@8 Map.nodes))))) :lblneg @48499) (=> (and (<= 0 |call5formal@n#25@0|) (<= |call5formal@n#25@0| (|Seq#Length| (MapType1Select $Heap@2 this@@8 Map.nodes)))) (and (! (or %lbl%@48518  (and (<= 0 (+ |call5formal@n#25@0| 1)) (<= (+ |call5formal@n#25@0| 1) (|Seq#Length| (MapType1Select $Heap@2 this@@8 Map.nodes))))) :lblneg @48518) (=> (and (<= 0 (+ |call5formal@n#25@0| 1)) (<= (+ |call5formal@n#25@0| 1) (|Seq#Length| (MapType1Select $Heap@2 this@@8 Map.nodes)))) (=> (= |$rhs#5@0| (|Seq#Append| (|Seq#Take| (MapType1Select $Heap@2 this@@8 Map.nodes) |call5formal@n#25@0|) (|Seq#Drop| (MapType1Select $Heap@2 this@@8 Map.nodes) (+ |call5formal@n#25@0| 1)))) (=> (and (= $Heap@3 (MapType1Store $Heap@2 this@@8 Map.nodes |$rhs#5@0|)) ($IsGoodHeap $Heap@3)) (and anon6_Then_correct anon6_Else_correct)))))))))))))))))))))))))))))))))))))
(let ((anon5_Else_correct  (=> (! (and %lbl%+16008 true) :lblpos +16008) (=> (and (= |call4formal@p#24@0| null) (= $Heap@6 $Heap@0)) GeneratedUnifiedExit_correct))))
(let ((anon0_correct  (=> (! (and %lbl%+15995 true) :lblpos +15995) (=> (= $_Frame@0 (|lambda#8| Map.Repr null $Heap@@11 alloc this@@8)) (and (! (or %lbl%@47359 (forall (($o@@23 T@U) ($f@@12 T@U) ) (! (let ((alpha@@16 (FieldTypeInv0 (type $f@@12))))
 (=> (and (and (= (type $o@@23) refType) (= (type $f@@12) (FieldType alpha@@16))) false) (U_2_bool (MapType2Select $_Frame@0 $o@@23 $f@@12))))
 :qid |B4bpl.1079:27|
 :skolemid |147|
 :no-pattern (type $o@@23)
 :no-pattern (type $f@@12)
 :no-pattern (U_2_int $o@@23)
 :no-pattern (U_2_bool $o@@23)
 :no-pattern (U_2_int $f@@12)
 :no-pattern (U_2_bool $f@@12)
))) :lblneg @47359) (=> (forall (($o@@24 T@U) ($f@@13 T@U) ) (! (let ((alpha@@17 (FieldTypeInv0 (type $f@@13))))
 (=> (and (and (= (type $o@@24) refType) (= (type $f@@13) (FieldType alpha@@17))) false) (U_2_bool (MapType2Select $_Frame@0 $o@@24 $f@@13))))
 :qid |B4bpl.1079:27|
 :skolemid |147|
 :no-pattern (type@@0 $o@@20)
 :no-pattern (type@@0 $f@@11)
 :no-pattern (type $o@@24)
 :no-pattern (type $f@@13)
 :no-pattern (U_2_int $o@@24)
 :no-pattern (U_2_bool $o@@24)
 :no-pattern (U_2_int $f@@13)
 :no-pattern (U_2_bool $f@@13)
)) (=> (and (or (= |call4formal@p#24| null) (and (U_2_bool (MapType1Select $Heap@@11 |call4formal@p#24| alloc)) (= (dtype |call4formal@p#24|) class.Node))) (or (= |call6formal@prev#26| null) (and (U_2_bool (MapType1Select $Heap@@11 |call6formal@prev#26| alloc)) (= (dtype |call6formal@prev#26|) class.Node)))) (and (! (or %lbl%@47380  (=> (|Map.Valid#canCall| $Heap@@11 this@@8) (or (Map.Valid $Heap@@11 this@@8) (U_2_bool (MapType0Select (MapType1Select $Heap@@11 this@@8 Map.Repr) ($Box this@@8)))))) :lblneg @47380) (=> (=> (|Map.Valid#canCall| $Heap@@11 this@@8) (or (Map.Valid $Heap@@11 this@@8) (U_2_bool (MapType0Select (MapType1Select $Heap@@11 this@@8 Map.Repr) ($Box this@@8))))) (and (! (or %lbl%@47406  (=> (|Map.Valid#canCall| $Heap@@11 this@@8) (or (Map.Valid $Heap@@11 this@@8) (= (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.Keys)) (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.Values)))))) :lblneg @47406) (=> (=> (|Map.Valid#canCall| $Heap@@11 this@@8) (or (Map.Valid $Heap@@11 this@@8) (= (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.Keys)) (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.Values))))) (and (! (or %lbl%@47440  (=> (|Map.Valid#canCall| $Heap@@11 this@@8) (or (Map.Valid $Heap@@11 this@@8) (= (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.nodes)) (+ (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.Keys)) 1))))) :lblneg @47440) (=> (=> (|Map.Valid#canCall| $Heap@@11 this@@8) (or (Map.Valid $Heap@@11 this@@8) (= (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.nodes)) (+ (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.Keys)) 1)))) (and (! (or %lbl%@47478  (=> (|Map.Valid#canCall| $Heap@@11 this@@8) (or (Map.Valid $Heap@@11 this@@8) (= (MapType1Select $Heap@@11 this@@8 Map.head) ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) 0)))))) :lblneg @47478) (=> (=> (|Map.Valid#canCall| $Heap@@11 this@@8) (or (Map.Valid $Heap@@11 this@@8) (= (MapType1Select $Heap@@11 this@@8 Map.head) ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) 0))))) (and (! (or %lbl%@47516  (=> (|Map.Valid#canCall| $Heap@@11 this@@8) (or (Map.Valid $Heap@@11 this@@8) (forall ((|i#0@@5| Int) ) (!  (=> true (=> (and (<= 0 |i#0@@5|) (< |i#0@@5| (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.Keys)))) (and (and (and (and (and (not (= ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) |i#0@@5|)) null)) (U_2_bool (MapType0Select (MapType1Select $Heap@@11 this@@8 Map.Repr) ($Box ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) |i#0@@5|)))))) (= (MapType1Select $Heap@@11 ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) |i#0@@5|)) Node.key) (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.Keys) |i#0@@5|))) (not (|Seq#Contains| (|Seq#Drop| (MapType1Select $Heap@@11 this@@8 Map.Keys) (+ |i#0@@5| 1)) (MapType1Select $Heap@@11 ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) |i#0@@5|)) Node.key)))) (= (MapType1Select $Heap@@11 ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) |i#0@@5|)) Node.val) (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.Values) |i#0@@5|))) (= (MapType1Select $Heap@@11 ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) |i#0@@5|)) Node.next) ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) (+ |i#0@@5| 1)))))))
 :qid |B4bpl.1235:81|
 :skolemid |150|
))))) :lblneg @47516) (=> (=> (|Map.Valid#canCall| $Heap@@11 this@@8) (or (Map.Valid $Heap@@11 this@@8) (forall ((|i#0@@6| Int) ) (!  (=> true (=> (and (<= 0 |i#0@@6|) (< |i#0@@6| (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.Keys)))) (and (and (and (and (and (not (= ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) |i#0@@6|)) null)) (U_2_bool (MapType0Select (MapType1Select $Heap@@11 this@@8 Map.Repr) ($Box ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) |i#0@@6|)))))) (= (MapType1Select $Heap@@11 ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) |i#0@@6|)) Node.key) (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.Keys) |i#0@@6|))) (not (|Seq#Contains| (|Seq#Drop| (MapType1Select $Heap@@11 this@@8 Map.Keys) (+ |i#0@@6| 1)) (MapType1Select $Heap@@11 ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) |i#0@@6|)) Node.key)))) (= (MapType1Select $Heap@@11 ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) |i#0@@6|)) Node.val) (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.Values) |i#0@@6|))) (= (MapType1Select $Heap@@11 ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) |i#0@@6|)) Node.next) ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) (+ |i#0@@6| 1)))))))
 :qid |B4bpl.1235:81|
 :skolemid |150|
)))) (and (! (or %lbl%@47765  (=> (|Map.Valid#canCall| $Heap@@11 this@@8) (or (Map.Valid $Heap@@11 this@@8) (= ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) (- (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.nodes)) 1))) null)))) :lblneg @47765) (=> (=> (|Map.Valid#canCall| $Heap@@11 this@@8) (or (Map.Valid $Heap@@11 this@@8) (= ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) (- (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.nodes)) 1))) null))) (=> ($IsGoodHeap $Heap@0) (=> (and (and (or (= |call4formal@p#24@0| null) (and (U_2_bool (MapType1Select $Heap@0 |call4formal@p#24@0| alloc)) (= (dtype |call4formal@p#24@0|) class.Node))) (or (= |call6formal@prev#26@0| null) (and (U_2_bool (MapType1Select $Heap@0 |call6formal@prev#26@0| alloc)) (= (dtype |call6formal@prev#26@0|) class.Node)))) (and (=> (= |call4formal@p#24@0| null) (not (|Seq#Contains| (MapType1Select $Heap@0 this@@8 Map.Keys) |key#16|))) (=> (not (= |call4formal@p#24@0| null)) (<= 0 |call5formal@n#25@0|)))) (=> (and (and (and (=> (not (= |call4formal@p#24@0| null)) (< |call5formal@n#25@0| (|Seq#Length| (MapType1Select $Heap@0 this@@8 Map.Keys)))) (=> (not (= |call4formal@p#24@0| null)) (= (|Seq#Index| (MapType1Select $Heap@0 this@@8 Map.Keys) |call5formal@n#25@0|) |key#16|))) (and (=> (not (= |call4formal@p#24@0| null)) (not (|Seq#Contains| (|Seq#Take| (MapType1Select $Heap@0 this@@8 Map.Keys) |call5formal@n#25@0|) |key#16|))) (=> (not (= |call4formal@p#24@0| null)) (not (|Seq#Contains| (|Seq#Drop| (MapType1Select $Heap@0 this@@8 Map.Keys) (+ |call5formal@n#25@0| 1)) |key#16|))))) (and (and (=> (not (= |call4formal@p#24@0| null)) (= |call4formal@p#24@0| ($Unbox refType (|Seq#Index| (MapType1Select $Heap@0 this@@8 Map.nodes) |call5formal@n#25@0|)))) (=> (not (= |call4formal@p#24@0| null)) (or (and (= |call5formal@n#25@0| 0) (= |call6formal@prev#26@0| null)) (and (< 0 |call5formal@n#25@0|) (= |call6formal@prev#26@0| ($Unbox refType (|Seq#Index| (MapType1Select $Heap@0 this@@8 Map.nodes) (- |call5formal@n#25@0| 1)))))))) (and (forall (($o@@25 T@U) ($f@@14 T@U) ) (! (let ((alpha@@18 (FieldTypeInv0 (type $f@@14))))
 (=> (and (and (= (type $o@@25) refType) (= (type $f@@14) (FieldType alpha@@18))) (and (not (= $o@@25 null)) (U_2_bool (MapType1Select $Heap@@11 $o@@25 alloc)))) (= (MapType1Select $Heap@0 $o@@25 $f@@14) (MapType1Select $Heap@@11 $o@@25 $f@@14))))
 :qid |B4bpl.1247:31|
 :skolemid |151|
 :pattern ( (MapType1Select $Heap@0 $o@@25 $f@@14))
)) ($HeapSucc $Heap@@11 $Heap@0)))) (and anon5_Then_correct anon5_Else_correct)))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (! (and %lbl%+44604 true) :lblpos +44604) (=> ($IsGoodHeap $Heap@@11) (=> (and (and (and (and (and (not (= this@@8 null)) (U_2_bool (MapType1Select $Heap@@11 this@@8 alloc))) (= (dtype this@@8) class.Map)) (GenericAlloc |key#16| $Heap@@11)) (and (or (= |p#20| null) (and (U_2_bool (MapType1Select $Heap@@11 |p#20| alloc)) (= (dtype |p#20|) class.Node))) (or (= |prev#22| null) (and (U_2_bool (MapType1Select $Heap@@11 |prev#22| alloc)) (= (dtype |prev#22|) class.Node))))) (and (and (or (= |$rhs#0| null) (and (U_2_bool (MapType1Select $Heap@@11 |$rhs#0| alloc)) (= (dtype |$rhs#0|) class.Node))) (or (= |$rhs#2| null) (and (U_2_bool (MapType1Select $Heap@@11 |$rhs#2| alloc)) (= (dtype |$rhs#2|) class.Node)))) (and (= 0 $ModuleContextHeight) $InMethodContext))) (=> (and (and (and (and (and (and (and (and (and (|Map.Valid#canCall| $Heap@@11 this@@8) (Map.Valid $Heap@@11 this@@8)) (U_2_bool (MapType0Select (MapType1Select $Heap@@11 this@@8 Map.Repr) ($Box this@@8)))) (= (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.Keys)) (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.Values)))) (= (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.nodes)) (+ (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.Keys)) 1))) (= (MapType1Select $Heap@@11 this@@8 Map.head) ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) 0)))) (forall ((|i#0@@7| Int) ) (!  (=> true (=> (and (<= 0 |i#0@@7|) (< |i#0@@7| (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.Keys)))) (and (and (and (and (and (not (= ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) |i#0@@7|)) null)) (U_2_bool (MapType0Select (MapType1Select $Heap@@11 this@@8 Map.Repr) ($Box ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) |i#0@@7|)))))) (= (MapType1Select $Heap@@11 ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) |i#0@@7|)) Node.key) (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.Keys) |i#0@@7|))) (not (|Seq#Contains| (|Seq#Drop| (MapType1Select $Heap@@11 this@@8 Map.Keys) (+ |i#0@@7| 1)) (MapType1Select $Heap@@11 ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) |i#0@@7|)) Node.key)))) (= (MapType1Select $Heap@@11 ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) |i#0@@7|)) Node.val) (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.Values) |i#0@@7|))) (= (MapType1Select $Heap@@11 ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) |i#0@@7|)) Node.next) ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) (+ |i#0@@7| 1)))))))
 :qid |B4bpl.1023:397|
 :skolemid |138|
))) (= ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) (- (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.nodes)) 1))) null)) (and (=> (|Map.Valid#canCall| $Heap@@11 this@@8) (or (Map.Valid $Heap@@11 this@@8) (U_2_bool (MapType0Select (MapType1Select $Heap@@11 this@@8 Map.Repr) ($Box this@@8))))) (=> (|Map.Valid#canCall| $Heap@@11 this@@8) (or (Map.Valid $Heap@@11 this@@8) (= (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.Keys)) (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.Values))))))) (and (and (=> (|Map.Valid#canCall| $Heap@@11 this@@8) (or (Map.Valid $Heap@@11 this@@8) (= (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.nodes)) (+ (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.Keys)) 1)))) (=> (|Map.Valid#canCall| $Heap@@11 this@@8) (or (Map.Valid $Heap@@11 this@@8) (= (MapType1Select $Heap@@11 this@@8 Map.head) ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) 0)))))) (and (=> (|Map.Valid#canCall| $Heap@@11 this@@8) (or (Map.Valid $Heap@@11 this@@8) (forall ((|i#0@@8| Int) ) (!  (=> true (=> (and (<= 0 |i#0@@8|) (< |i#0@@8| (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.Keys)))) (and (and (and (and (and (not (= ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) |i#0@@8|)) null)) (U_2_bool (MapType0Select (MapType1Select $Heap@@11 this@@8 Map.Repr) ($Box ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) |i#0@@8|)))))) (= (MapType1Select $Heap@@11 ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) |i#0@@8|)) Node.key) (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.Keys) |i#0@@8|))) (not (|Seq#Contains| (|Seq#Drop| (MapType1Select $Heap@@11 this@@8 Map.Keys) (+ |i#0@@8| 1)) (MapType1Select $Heap@@11 ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) |i#0@@8|)) Node.key)))) (= (MapType1Select $Heap@@11 ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) |i#0@@8|)) Node.val) (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.Values) |i#0@@8|))) (= (MapType1Select $Heap@@11 ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) |i#0@@8|)) Node.next) ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) (+ |i#0@@8| 1)))))))
 :qid |B4bpl.1028:81|
 :skolemid |139|
)))) (=> (|Map.Valid#canCall| $Heap@@11 this@@8) (or (Map.Valid $Heap@@11 this@@8) (= ($Unbox refType (|Seq#Index| (MapType1Select $Heap@@11 this@@8 Map.nodes) (- (|Seq#Length| (MapType1Select $Heap@@11 this@@8 Map.nodes)) 1))) null)))))) anon0_correct))))))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(pop 1)
; Valid
