(set-option :print-success false)
(set-info :smt-lib-version 2.0)
(set-option :AUTO_CONFIG false)
(set-option :MODEL_HIDE_UNUSED_PARTITIONS false)
(set-option :MODEL_V2 true)
(set-option :ASYNC_COMMANDS false)
(set-option :PHASE_SELECTION 0)
(set-option :RESTART_STRATEGY 0)
(set-option :RESTART_FACTOR |1.5|)
(set-option :ARITH_RANDOM_INITIAL_VALUE true)
(set-option :CASE_SPLIT 3)
(set-option :DELAY_UNITS true)
(set-option :DELAY_UNITS_THRESHOLD 16)
(set-option :NNF_SK_HACK true)
(set-option :MBQI false)
(set-option :QI_EAGER_THRESHOLD 100)
(set-option :QI_COST |"(+ weight generation)"|)
(set-option :TYPE_CHECK true)
(set-option :BV_REFLECT true)
; done setting options

; Boogie universal background predicate
; Copyright (c) 2004-2010, Microsoft Corp.
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
(declare-fun PermissionComponentType () T@T)
(declare-fun perm$R () T@U)
(declare-fun perm$N () T@U)
(declare-fun FieldType (T@T) T@T)
(declare-fun FieldTypeInv0 (T@T) T@T)
(declare-fun joinable () T@U)
(declare-fun TypeNameType () T@T)
(declare-fun |token#t| () T@U)
(declare-fun forkK () T@U)
(declare-fun MuType () T@T)
(declare-fun mu () T@U)
(declare-fun held () T@U)
(declare-fun rdheld () T@U)
(declare-fun |AVLTree#t| () T@U)
(declare-fun ModuleNameType () T@T)
(declare-fun |module#default| () T@U)
(declare-fun refType () T@T)
(declare-fun AVLTree.root () T@U)
(declare-fun SeqType (T@T) T@T)
(declare-fun SeqTypeInv0 (T@T) T@T)
(declare-fun AVLTree.keys () T@U)
(declare-fun AVLTree.valid () T@U)
(declare-fun |AVLTreeNode#t| () T@U)
(declare-fun AVLTreeNode.key () T@U)
(declare-fun AVLTreeNode.height () T@U)
(declare-fun AVLTreeNode.left () T@U)
(declare-fun AVLTreeNode.right () T@U)
(declare-fun AVLTreeNode.keys () T@U)
(declare-fun AVLTreeNode.balanceFactor () T@U)
(declare-fun AVLTreeNode.valid () T@U)
(declare-fun Permission$denominator () Int)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType0Select (T@U T@U) T@U)
(declare-fun MapType0Store (T@U T@U T@U) T@U)
(declare-fun Permission$Zero () T@U)
(declare-fun Permission$Full () T@U)
(declare-fun Permission$FullFraction () Int)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun MapType1Select (T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@U T@U T@U T@U) T@U)
(declare-fun ZeroMask () T@U)
(declare-fun IsGoodMask (T@U) Bool)
(declare-fun NonPredicateField (T@U) Bool)
(declare-fun Fractions (Int) Int)
(declare-fun channelK () Int)
(declare-fun monitorK () Int)
(declare-fun predicateK () Int)
(declare-fun PartialHeapTypeType () T@T)
(declare-fun combine (T@U T@U) T@U)
(declare-fun IsGoodState (T@U) Bool)
(declare-fun emptyPartialHeap () T@U)
(declare-fun MuBelow (T@U T@U) Bool)
(declare-fun $LockBottom () T@U)
(declare-fun MapType2Type (T@T) T@T)
(declare-fun MapType2TypeInv0 (T@T) T@T)
(declare-fun MapType2Select (T@U T@U T@U) T@U)
(declare-fun MapType2Store (T@U T@U T@U T@U) T@U)
(declare-fun IsGoodInhaleState (T@U T@U T@U T@U) Bool)
(declare-fun CanRead (T@U T@U T@U T@U) Bool)
(declare-fun IsGoodExhaleState (T@U T@U T@U T@U) Bool)
(declare-fun PredicateField (T@U) Bool)
(declare-fun CanReadForSure (T@U T@U T@U) Bool)
(declare-fun CanWrite (T@U T@U T@U) Bool)
(declare-fun wf (T@U T@U T@U) Bool)
(declare-fun DecPerm (T@U T@U T@U Int) T@U)
(declare-fun q@ite (Bool T@U T@U) T@U)
(declare-fun DecEpsilons (T@U T@U T@U Int) T@U)
(declare-fun IncPerm (T@U T@U T@U Int) T@U)
(declare-fun IncEpsilons (T@U T@U T@U Int) T@U)
(declare-fun Havocing (T@U T@U T@U T@U) T@U)
(declare-fun EmptyMask (T@U) Bool)
(declare-fun ZeroCredits () T@U)
(declare-fun null () T@U)
(declare-fun EmptyCredits (T@U) Bool)
(declare-fun submask (T@U T@U) Bool)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| (T@T) T@U)
(declare-fun |Seq#Singleton| (T@U) T@U)
(declare-fun |Seq#Build| (T@U Int T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#SameUntil| (T@U T@U Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@U)
(declare-fun this () T@U)
(declare-fun Heap () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Mask@0 () T@U)
(declare-fun heapFragment (T@U) T@U)
(declare-fun Mask@1 () T@U)
(declare-fun Mask () T@U)
(declare-fun SecMask () T@U)
(declare-fun Credits () T@U)
(declare-fun Heap@0 () T@U)
(declare-fun Mask@2 () T@U)
(declare-fun Mask@3 () T@U)
(declare-fun %lbl%+4829 () Bool)
(declare-fun |methodK#_11| () Int)
(declare-fun CanAssumeFunctionDefs () Bool)
(declare-fun %lbl%@1016706 () Bool)
(declare-fun %lbl%@1016884 () Bool)
(declare-fun %lbl%@1016894 () Bool)
(declare-fun %lbl%+1016344 () Bool)
(assert (and
(= (Ctor intType) 0)
(= (Ctor realType) 1)
(= (Ctor boolType) 2)
(forall ((arg0 Int) ) (! (= (U_2_int (int_2_U arg0)) arg0)
 :qid |typeInv:U_2_int|
 :pattern ( (int_2_U arg0))
))
(forall ((x T@U) ) (! (=> (= (type x) intType) (= (int_2_U (U_2_int x)) x))
 :qid |cast:U_2_int|
 :pattern ( (U_2_int x))
))
(forall ((arg0@@0 Int) ) (! (= (type (int_2_U arg0@@0)) intType)
 :qid |funType:int_2_U|
 :pattern ( (int_2_U arg0@@0))
))
(forall ((arg0@@1 Real) ) (! (= (U_2_real (real_2_U arg0@@1)) arg0@@1)
 :qid |typeInv:U_2_real|
 :pattern ( (real_2_U arg0@@1))
))
(forall ((x@@0 T@U) ) (! (=> (= (type x@@0) realType) (= (real_2_U (U_2_real x@@0)) x@@0))
 :qid |cast:U_2_real|
 :pattern ( (U_2_real x@@0))
))
(forall ((arg0@@2 Real) ) (! (= (type (real_2_U arg0@@2)) realType)
 :qid |funType:real_2_U|
 :pattern ( (real_2_U arg0@@2))
))
(forall ((arg0@@3 Bool) ) (! (= (U_2_bool (bool_2_U arg0@@3)) arg0@@3)
 :qid |typeInv:U_2_bool|
 :pattern ( (bool_2_U arg0@@3))
))
(forall ((x@@1 T@U) ) (! (=> (= (type x@@1) boolType) (= (bool_2_U (U_2_bool x@@1)) x@@1))
 :qid |cast:U_2_bool|
 :pattern ( (U_2_bool x@@1))
))
(forall ((arg0@@4 Bool) ) (! (= (type (bool_2_U arg0@@4)) boolType)
 :qid |funType:bool_2_U|
 :pattern ( (bool_2_U arg0@@4))
))))
(assert (forall ((x@@2 T@U) ) (! (UOrdering2 x@@2 x@@2)
 :qid |bg:subtype-refl|
 :no-pattern (U_2_int x@@2)
 :no-pattern (U_2_bool x@@2)
)))
(assert (forall ((x@@3 T@U) (y T@U) (z T@U) ) (! (let ((alpha (type x@@3)))
(=> (and
(= (type y) alpha)
(= (type z) alpha)
(UOrdering2 x@@3 y)
(UOrdering2 y z)) (UOrdering2 x@@3 z)))
 :qid |bg:subtype-trans|
 :pattern ( (UOrdering2 x@@3 y) (UOrdering2 y z))
)))
(assert (forall ((x@@4 T@U) (y@@0 T@U) ) (! (let ((alpha@@0 (type x@@4)))
(=> (= (type y@@0) alpha@@0) (=> (and
(UOrdering2 x@@4 y@@0)
(UOrdering2 y@@0 x@@4)) (= x@@4 y@@0))))
 :qid |bg:subtype-antisymm|
 :pattern ( (UOrdering2 x@@4 y@@0) (UOrdering2 y@@0 x@@4))
)))
(assert (and
(= (Ctor PermissionComponentType) 3)
(= (type perm$R) PermissionComponentType)
(= (type perm$N) PermissionComponentType)
(forall ((arg0@@5 T@T) ) (! (= (Ctor (FieldType arg0@@5)) 4)
 :qid |ctor:FieldType|
))
(forall ((arg0@@6 T@T) ) (! (= (FieldTypeInv0 (FieldType arg0@@6)) arg0@@6)
 :qid |typeInv:FieldTypeInv0|
 :pattern ( (FieldType arg0@@6))
))
(= (type joinable) (FieldType intType))
(= (Ctor TypeNameType) 5)
(= (type |token#t|) TypeNameType)
(= (type forkK) (FieldType intType))
(= (Ctor MuType) 6)
(= (type mu) (FieldType MuType))
(= (type held) (FieldType intType))
(= (type rdheld) (FieldType boolType))
(= (type |AVLTree#t|) TypeNameType)
(= (Ctor ModuleNameType) 7)
(= (type |module#default|) ModuleNameType)
(= (Ctor refType) 8)
(= (type AVLTree.root) (FieldType refType))
(forall ((arg0@@7 T@T) ) (! (= (Ctor (SeqType arg0@@7)) 9)
 :qid |ctor:SeqType|
))
(forall ((arg0@@8 T@T) ) (! (= (SeqTypeInv0 (SeqType arg0@@8)) arg0@@8)
 :qid |typeInv:SeqTypeInv0|
 :pattern ( (SeqType arg0@@8))
))
(= (type AVLTree.keys) (FieldType (SeqType intType)))
(= (type AVLTree.valid) (FieldType intType))
(= (type |AVLTreeNode#t|) TypeNameType)
(= (type AVLTreeNode.key) (FieldType intType))
(= (type AVLTreeNode.height) (FieldType intType))
(= (type AVLTreeNode.left) (FieldType refType))
(= (type AVLTreeNode.right) (FieldType refType))
(= (type AVLTreeNode.keys) (FieldType (SeqType intType)))
(= (type AVLTreeNode.balanceFactor) (FieldType intType))
(= (type AVLTreeNode.valid) (FieldType intType))))
(assert (distinct perm$R perm$N joinable |token#t| forkK mu held rdheld |AVLTree#t| |module#default| AVLTree.root AVLTree.keys AVLTree.valid |AVLTreeNode#t| AVLTreeNode.key AVLTreeNode.height AVLTreeNode.left AVLTreeNode.right AVLTreeNode.keys AVLTreeNode.balanceFactor AVLTreeNode.valid)
)
(assert (> Permission$denominator 0))
(assert (and
(forall ((arg0@@9 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@9 arg1)) 10)
 :qid |ctor:MapType0Type|
))
(forall ((arg0@@10 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@10 arg1@@0)) arg0@@10)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@10 arg1@@0))
))
(forall ((arg0@@11 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@11 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@11 arg1@@1))
))
(forall ((arg0@@12 T@U) (arg1@@2 T@U) ) (! (let ((aVar1 (MapType0TypeInv1 (type arg0@@12))))
(= (type (MapType0Select arg0@@12 arg1@@2)) aVar1))
 :qid |funType:MapType0Select|
 :pattern ( (MapType0Select arg0@@12 arg1@@2))
))
(forall ((arg0@@13 T@U) (arg1@@3 T@U) (arg2 T@U) ) (! (let ((aVar1@@0 (type arg2)))
(let ((aVar0 (type arg1@@3)))
(= (type (MapType0Store arg0@@13 arg1@@3 arg2)) (MapType0Type aVar0 aVar1@@0))))
 :qid |funType:MapType0Store|
 :pattern ( (MapType0Store arg0@@13 arg1@@3 arg2))
))
(forall ((m T@U) (x0 T@U) (val T@U) ) (! (let ((aVar1@@1 (MapType0TypeInv1 (type m))))
(=> (= (type val) aVar1@@1) (= (MapType0Select (MapType0Store m x0 val) x0) val)))
 :qid |mapAx0:MapType0Select|
 :weight 0
))
(forall ((val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (! (or
(= x0@@0 y0)
(= (MapType0Select (MapType0Store m@@0 x0@@0 val@@0) y0) (MapType0Select m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))
(forall ((val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (y0@@0 T@U) ) (! (or
true
(= (MapType0Select (MapType0Store m@@1 x0@@1 val@@1) y0@@0) (MapType0Select m@@1 y0@@0)))
 :qid |mapAx2:MapType0Select|
 :weight 0
))
(= (type Permission$Zero) (MapType0Type PermissionComponentType intType))))
(assert (= (U_2_int (MapType0Select Permission$Zero perm$R)) 0))
(assert (= (U_2_int (MapType0Select Permission$Zero perm$N)) 0))
(assert (= (type Permission$Full) (MapType0Type PermissionComponentType intType)))
(assert (= (U_2_int (MapType0Select Permission$Full perm$R)) Permission$FullFraction))
(assert (= (U_2_int (MapType0Select Permission$Full perm$N)) 0))
(assert (and
(forall ((arg0@@14 T@T) (arg1@@4 T@T) ) (! (= (Ctor (MapType1Type arg0@@14 arg1@@4)) 11)
 :qid |ctor:MapType1Type|
))
(forall ((arg0@@15 T@T) (arg1@@5 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@15 arg1@@5)) arg0@@15)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@15 arg1@@5))
))
(forall ((arg0@@16 T@T) (arg1@@6 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@16 arg1@@6)) arg1@@6)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@16 arg1@@6))
))
(forall ((arg0@@17 T@U) (arg1@@7 T@U) (arg2@@0 T@U) ) (! (let ((aVar1@@2 (MapType1TypeInv1 (type arg0@@17))))
(= (type (MapType1Select arg0@@17 arg1@@7 arg2@@0)) aVar1@@2))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@17 arg1@@7 arg2@@0))
))
(forall ((arg0@@18 T@U) (arg1@@8 T@U) (arg2@@1 T@U) (arg3 T@U) ) (! (let ((aVar1@@3 (type arg3)))
(let ((aVar0@@0 (type arg1@@8)))
(= (type (MapType1Store arg0@@18 arg1@@8 arg2@@1 arg3)) (MapType1Type aVar0@@0 aVar1@@3))))
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@18 arg1@@8 arg2@@1 arg3))
))
(forall ((m@@2 T@U) (x0@@2 T@U) (x1 T@U) (val@@2 T@U) ) (! (let ((aVar1@@4 (MapType1TypeInv1 (type m@@2))))
(=> (= (type val@@2) aVar1@@4) (= (MapType1Select (MapType1Store m@@2 x0@@2 x1 val@@2) x0@@2 x1) val@@2)))
 :qid |mapAx0:MapType1Select|
 :weight 0
))
(forall ((val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@0 T@U) (y0@@1 T@U) (y1 T@U) ) (! (or
(= x0@@3 y0@@1)
(= (MapType1Select (MapType1Store m@@3 x0@@3 x1@@0 val@@3) y0@@1 y1) (MapType1Select m@@3 y0@@1 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))
(forall ((val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (x1@@1 T@U) (y0@@2 T@U) (y1@@0 T@U) ) (! (or
(= x1@@1 y1@@0)
(= (MapType1Select (MapType1Store m@@4 x0@@4 x1@@1 val@@4) y0@@2 y1@@0) (MapType1Select m@@4 y0@@2 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
))
(forall ((val@@5 T@U) (m@@5 T@U) (x0@@5 T@U) (x1@@2 T@U) (y0@@3 T@U) (y1@@1 T@U) ) (! (or
true
(= (MapType1Select (MapType1Store m@@5 x0@@5 x1@@2 val@@5) y0@@3 y1@@1) (MapType1Select m@@5 y0@@3 y1@@1)))
 :qid |mapAx2:MapType1Select|
 :weight 0
))
(= (type ZeroMask) (MapType1Type refType (MapType0Type PermissionComponentType intType)))))
(assert (forall ((o T@U) (f T@U) (pc T@U) ) (! (let ((T (FieldTypeInv0 (type f))))
(=> (and
(= (type o) refType)
(= (type f) (FieldType T))
(= (type pc) PermissionComponentType)) (= (U_2_int (MapType0Select (MapType1Select ZeroMask o f) pc)) 0)))
 :qid |AVLTreeb.26:18|
 :skolemid |0|
 :no-pattern (type o)
 :no-pattern (type f)
 :no-pattern (type pc)
 :no-pattern (U_2_int o)
 :no-pattern (U_2_bool o)
 :no-pattern (U_2_int f)
 :no-pattern (U_2_bool f)
 :no-pattern (U_2_int pc)
 :no-pattern (U_2_bool pc)
)))
(assert (IsGoodMask ZeroMask))
(assert (NonPredicateField joinable))
(assert (NonPredicateField forkK))
(assert (forall ((n Int) ) (! (= (Fractions n) (* n Permission$denominator))
 :qid |AVLTreeb.37:20|
 :skolemid |1|
 :pattern ( (Fractions n))
)))
(assert (forall ((x@@5 Int) (y@@1 Int) ) (! (=> (and
(<= 0 x@@5)
(<= x@@5 y@@1)) (<= (Fractions x@@5) (Fractions y@@1)))
 :qid |AVLTreeb.41:15|
 :skolemid |2|
)))
(assert (= Permission$FullFraction (Fractions 100)))
(assert (< 0 channelK))
(assert (< (* 1000 channelK) (Fractions 1)))
(assert (< 0 monitorK))
(assert (< (* 1000 monitorK) (Fractions 1)))
(assert (< 0 predicateK))
(assert (< (* 1000 predicateK) (Fractions 1)))
(assert (= predicateK channelK))
(assert (= channelK monitorK))
(assert (and
(= (Ctor PartialHeapTypeType) 12)
(forall ((arg0@@19 T@U) (arg1@@9 T@U) ) (! (= (type (combine arg0@@19 arg1@@9)) PartialHeapTypeType)
 :qid |funType:combine|
 :pattern ( (combine arg0@@19 arg1@@9))
))))
(assert (forall ((a T@U) (b T@U) ) (! (=> (and
(= (type a) PartialHeapTypeType)
(= (type b) PartialHeapTypeType)) (= (IsGoodState (combine a b)) (and
(IsGoodState a)
(IsGoodState b))))
 :qid |AVLTreeb.57:15|
 :skolemid |3|
 :pattern ( (IsGoodState (combine a b)))
)))
(assert (= (type emptyPartialHeap) PartialHeapTypeType))
(assert (IsGoodState emptyPartialHeap))
(assert (NonPredicateField mu))
(assert (forall ((m@@6 T@U) (n@@0 T@U) ) (! (=> (and
(= (type m@@6) MuType)
(= (type n@@0) MuType)) (not (and
(MuBelow m@@6 n@@0)
(MuBelow n@@0 m@@6))))
 :qid |AVLTreeb.70:15|
 :skolemid |4|
 :pattern ( (MuBelow m@@6 n@@0) (MuBelow n@@0 m@@6))
)))
(assert (forall ((m@@7 T@U) (n@@1 T@U) (o@@0 T@U) ) (! (=> (and
(= (type m@@7) MuType)
(= (type n@@1) MuType)
(= (type o@@0) MuType)
(MuBelow m@@7 n@@1)
(MuBelow n@@1 o@@0)) (MuBelow m@@7 o@@0))
 :qid |AVLTreeb.73:15|
 :skolemid |5|
 :pattern ( (MuBelow m@@7 n@@1) (MuBelow n@@1 o@@0))
)))
(assert (= (type $LockBottom) MuType))
(assert (forall ((m@@8 T@U) (n@@2 T@U) ) (! (=> (and
(= (type m@@8) MuType)
(= (type n@@2) MuType)
(MuBelow m@@8 n@@2)) (not (= n@@2 $LockBottom)))
 :qid |AVLTreeb.77:15|
 :skolemid |6|
 :no-pattern (type m@@8)
 :no-pattern (type n@@2)
 :no-pattern (U_2_int m@@8)
 :no-pattern (U_2_bool m@@8)
 :no-pattern (U_2_int n@@2)
 :no-pattern (U_2_bool n@@2)
)))
(assert (NonPredicateField held))
(assert (NonPredicateField rdheld))
(assert (and
(forall ((arg0@@20 T@T) ) (! (= (Ctor (MapType2Type arg0@@20)) 13)
 :qid |ctor:MapType2Type|
))
(forall ((arg0@@21 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@21)) arg0@@21)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@21))
))
(forall ((arg0@@22 T@U) (arg1@@10 T@U) (arg2@@2 T@U) ) (! (let ((a@@0 (FieldTypeInv0 (type arg2@@2))))
(= (type (MapType2Select arg0@@22 arg1@@10 arg2@@2)) a@@0))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@22 arg1@@10 arg2@@2))
))
(forall ((arg0@@23 T@U) (arg1@@11 T@U) (arg2@@3 T@U) (arg3@@0 T@U) ) (! (let ((aVar0@@1 (type arg1@@11)))
(= (type (MapType2Store arg0@@23 arg1@@11 arg2@@3 arg3@@0)) (MapType2Type aVar0@@1)))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@23 arg1@@11 arg2@@3 arg3@@0))
))
(forall ((m@@9 T@U) (x0@@6 T@U) (x1@@3 T@U) (val@@6 T@U) ) (! (let ((a@@1 (FieldTypeInv0 (type x1@@3))))
(=> (= (type val@@6) a@@1) (= (MapType2Select (MapType2Store m@@9 x0@@6 x1@@3 val@@6) x0@@6 x1@@3) val@@6)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))
(forall ((val@@7 T@U) (m@@10 T@U) (x0@@7 T@U) (x1@@4 T@U) (y0@@4 T@U) (y1@@2 T@U) ) (! (or
(= x0@@7 y0@@4)
(= (MapType2Select (MapType2Store m@@10 x0@@7 x1@@4 val@@7) y0@@4 y1@@2) (MapType2Select m@@10 y0@@4 y1@@2)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
))
(forall ((val@@8 T@U) (m@@11 T@U) (x0@@8 T@U) (x1@@5 T@U) (y0@@5 T@U) (y1@@3 T@U) ) (! (or
(= x1@@5 y1@@3)
(= (MapType2Select (MapType2Store m@@11 x0@@8 x1@@5 val@@8) y0@@5 y1@@3) (MapType2Select m@@11 y0@@5 y1@@3)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))
(forall ((val@@9 T@U) (m@@12 T@U) (x0@@9 T@U) (x1@@6 T@U) (y0@@6 T@U) (y1@@4 T@U) ) (! (or
true
(= (MapType2Select (MapType2Store m@@12 x0@@9 x1@@6 val@@9) y0@@6 y1@@4) (MapType2Select m@@12 y0@@6 y1@@4)))
 :qid |mapAx2:MapType2Select|
 :weight 0
))))
(assert (forall ((ih T@U) (h T@U) (m@@13 T@U) (sm T@U) ) (! (=> (and
(= (type ih) (MapType2Type refType))
(= (type h) (MapType2Type refType))
(= (type m@@13) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type sm) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (IsGoodInhaleState ih h m@@13 sm) (and
(forall ((o@@1 T@U) (f@@0 T@U) ) (! (let ((T@@0 (FieldTypeInv0 (type f@@0))))
(=> (and
(= (type o@@1) refType)
(= (type f@@0) (FieldType T@@0))
(CanRead m@@13 sm o@@1 f@@0)) (= (MapType2Select ih o@@1 f@@0) (MapType2Select h o@@1 f@@0))))
 :qid |AVLTreeb.98:14|
 :skolemid |7|
 :pattern ( (MapType2Select ih o@@1 f@@0))
))
(forall ((o@@2 T@U) ) (! (=> (= (type o@@2) refType) (= (< 0 (U_2_int (MapType2Select ih o@@2 held))) (< 0 (U_2_int (MapType2Select h o@@2 held)))))
 :qid |AVLTreeb.99:11|
 :skolemid |8|
 :pattern ( (MapType2Select ih o@@2 held))
))
(forall ((o@@3 T@U) ) (! (=> (= (type o@@3) refType) (= (U_2_bool (MapType2Select ih o@@3 rdheld)) (U_2_bool (MapType2Select h o@@3 rdheld))))
 :qid |AVLTreeb.100:11|
 :skolemid |9|
 :pattern ( (MapType2Select ih o@@3 rdheld))
))
(forall ((o@@4 T@U) ) (! (=> (and
(= (type o@@4) refType)
(< 0 (U_2_int (MapType2Select h o@@4 held)))) (= (MapType2Select ih o@@4 mu) (MapType2Select h o@@4 mu)))
 :qid |AVLTreeb.101:11|
 :skolemid |10|
 :pattern ( (MapType2Select h o@@4 held))
))
(forall ((o@@5 T@U) ) (! (=> (and
(= (type o@@5) refType)
(U_2_bool (MapType2Select h o@@5 rdheld))) (= (MapType2Select ih o@@5 mu) (MapType2Select h o@@5 mu)))
 :qid |AVLTreeb.102:11|
 :skolemid |11|
 :pattern ( (MapType2Select h o@@5 rdheld))
)))))
 :qid |AVLTreeb.95:28|
 :skolemid |12|
 :pattern ( (IsGoodInhaleState ih h m@@13 sm))
)))
(assert (forall ((eh T@U) (h@@0 T@U) (m@@14 T@U) (sm@@0 T@U) ) (! (=> (and
(= (type eh) (MapType2Type refType))
(= (type h@@0) (MapType2Type refType))
(= (type m@@14) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type sm@@0) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (IsGoodExhaleState eh h@@0 m@@14 sm@@0) (and
(forall ((o@@6 T@U) (f@@1 T@U) ) (! (let ((T@@1 (FieldTypeInv0 (type f@@1))))
(=> (and
(= (type o@@6) refType)
(= (type f@@1) (FieldType T@@1))
(CanRead m@@14 sm@@0 o@@6 f@@1)) (= (MapType2Select eh o@@6 f@@1) (MapType2Select h@@0 o@@6 f@@1))))
 :qid |AVLTreeb.107:14|
 :skolemid |13|
 :pattern ( (MapType2Select eh o@@6 f@@1))
))
(forall ((o@@7 T@U) ) (! (=> (= (type o@@7) refType) (= (< 0 (U_2_int (MapType2Select eh o@@7 held))) (< 0 (U_2_int (MapType2Select h@@0 o@@7 held)))))
 :qid |AVLTreeb.108:11|
 :skolemid |14|
 :pattern ( (MapType2Select eh o@@7 held))
))
(forall ((o@@8 T@U) ) (! (=> (= (type o@@8) refType) (= (U_2_bool (MapType2Select eh o@@8 rdheld)) (U_2_bool (MapType2Select h@@0 o@@8 rdheld))))
 :qid |AVLTreeb.109:11|
 :skolemid |15|
 :pattern ( (MapType2Select eh o@@8 rdheld))
))
(forall ((o@@9 T@U) ) (! (=> (and
(= (type o@@9) refType)
(< 0 (U_2_int (MapType2Select h@@0 o@@9 held)))) (= (MapType2Select eh o@@9 mu) (MapType2Select h@@0 o@@9 mu)))
 :qid |AVLTreeb.110:11|
 :skolemid |16|
 :pattern ( (MapType2Select h@@0 o@@9 held))
))
(forall ((o@@10 T@U) ) (! (=> (and
(= (type o@@10) refType)
(U_2_bool (MapType2Select h@@0 o@@10 rdheld))) (= (MapType2Select eh o@@10 mu) (MapType2Select h@@0 o@@10 mu)))
 :qid |AVLTreeb.111:11|
 :skolemid |17|
 :pattern ( (MapType2Select h@@0 o@@10 rdheld))
))
(forall ((o@@11 T@U) ) (! (=> (= (type o@@11) refType) (= (U_2_int (MapType2Select h@@0 o@@11 forkK)) (U_2_int (MapType2Select eh o@@11 forkK))))
 :qid |AVLTreeb.112:11|
 :skolemid |18|
 :pattern ( (MapType2Select h@@0 o@@11 forkK))
 :pattern ( (MapType2Select eh o@@11 forkK))
))
(forall ((o@@12 T@U) ) (! (=> (= (type o@@12) refType) (= (U_2_int (MapType2Select h@@0 o@@12 held)) (U_2_int (MapType2Select eh o@@12 held))))
 :qid |AVLTreeb.113:11|
 :skolemid |19|
 :pattern ( (MapType2Select h@@0 o@@12 held))
 :pattern ( (MapType2Select eh o@@12 held))
))
(forall ((o@@13 T@U) (f@@2 T@U) ) (! (=> (and
(= (type o@@13) refType)
(= (type f@@2) (FieldType intType))
(PredicateField f@@2)) (<= (U_2_int (MapType2Select h@@0 o@@13 f@@2)) (U_2_int (MapType2Select eh o@@13 f@@2))))
 :qid |AVLTreeb.114:11|
 :skolemid |20|
 :pattern ( (MapType2Select eh o@@13 f@@2) (PredicateField f@@2))
)))))
 :qid |AVLTreeb.104:28|
 :skolemid |21|
 :pattern ( (IsGoodExhaleState eh h@@0 m@@14 sm@@0))
)))
(assert (forall ((m@@15 T@U) (sm@@1 T@U) (obj T@U) (f@@3 T@U) ) (! (let ((T@@2 (FieldTypeInv0 (type f@@3))))
(=> (and
(= (type m@@15) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type sm@@1) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type obj) refType)
(= (type f@@3) (FieldType T@@2))) (= (CanRead m@@15 sm@@1 obj f@@3) (or
(< 0 (U_2_int (MapType0Select (MapType1Select m@@15 obj f@@3) perm$R)))
(< 0 (U_2_int (MapType0Select (MapType1Select m@@15 obj f@@3) perm$N)))
(< 0 (U_2_int (MapType0Select (MapType1Select sm@@1 obj f@@3) perm$R)))
(< 0 (U_2_int (MapType0Select (MapType1Select sm@@1 obj f@@3) perm$N)))))))
 :qid |AVLTreeb.121:37|
 :skolemid |22|
 :pattern ( (CanRead m@@15 sm@@1 obj f@@3))
)))
(assert (forall ((m@@16 T@U) (obj@@0 T@U) (f@@4 T@U) ) (! (let ((T@@3 (FieldTypeInv0 (type f@@4))))
(=> (and
(= (type m@@16) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type obj@@0) refType)
(= (type f@@4) (FieldType T@@3))) (= (CanReadForSure m@@16 obj@@0 f@@4) (or
(< 0 (U_2_int (MapType0Select (MapType1Select m@@16 obj@@0 f@@4) perm$R)))
(< 0 (U_2_int (MapType0Select (MapType1Select m@@16 obj@@0 f@@4) perm$N)))))))
 :qid |AVLTreeb.126:44|
 :skolemid |23|
 :pattern ( (CanReadForSure m@@16 obj@@0 f@@4))
)))
(assert (forall ((m@@17 T@U) (obj@@1 T@U) (f@@5 T@U) ) (! (let ((T@@4 (FieldTypeInv0 (type f@@5))))
(=> (and
(= (type m@@17) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type obj@@1) refType)
(= (type f@@5) (FieldType T@@4))) (= (CanWrite m@@17 obj@@1 f@@5) (and
(= (U_2_int (MapType0Select (MapType1Select m@@17 obj@@1 f@@5) perm$R)) Permission$FullFraction)
(= (U_2_int (MapType0Select (MapType1Select m@@17 obj@@1 f@@5) perm$N)) 0)))))
 :qid |AVLTreeb.130:38|
 :skolemid |24|
 :pattern ( (CanWrite m@@17 obj@@1 f@@5))
)))
(assert (forall ((m@@18 T@U) ) (! (=> (= (type m@@18) (MapType1Type refType (MapType0Type PermissionComponentType intType))) (= (IsGoodMask m@@18) (forall ((o@@14 T@U) (f@@6 T@U) ) (! (let ((T@@5 (FieldTypeInv0 (type f@@6))))
(=> (and
(= (type o@@14) refType)
(= (type f@@6) (FieldType T@@5))) (and
(<= 0 (U_2_int (MapType0Select (MapType1Select m@@18 o@@14 f@@6) perm$R)))
(=> (NonPredicateField f@@6) (and
(<= (U_2_int (MapType0Select (MapType1Select m@@18 o@@14 f@@6) perm$R)) Permission$FullFraction)
(=> (< 0 (U_2_int (MapType0Select (MapType1Select m@@18 o@@14 f@@6) perm$N))) (< (U_2_int (MapType0Select (MapType1Select m@@18 o@@14 f@@6) perm$R)) Permission$FullFraction))))
(=> (< (U_2_int (MapType0Select (MapType1Select m@@18 o@@14 f@@6) perm$N)) 0) (< 0 (U_2_int (MapType0Select (MapType1Select m@@18 o@@14 f@@6) perm$R)))))))
 :qid |AVLTreeb.136:14|
 :skolemid |25|
 :no-pattern (type o@@14)
 :no-pattern (type f@@6)
 :no-pattern (U_2_int o@@14)
 :no-pattern (U_2_bool o@@14)
 :no-pattern (U_2_int f@@6)
 :no-pattern (U_2_bool f@@6)
))))
 :qid |AVLTreeb.134:36|
 :skolemid |26|
 :pattern ( (IsGoodMask m@@18))
)))
(assert (forall ((h@@1 T@U) (m@@19 T@U) (sm@@2 T@U) (o@@15 T@U) (q T@U) ) (! (=> (and
(= (type h@@1) (MapType2Type refType))
(= (type m@@19) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type sm@@2) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type o@@15) refType)
(= (type q) refType)
(wf h@@1 m@@19 sm@@2)
(not (= o@@15 q))
(or
(< 0 (U_2_int (MapType2Select h@@1 o@@15 held)))
(U_2_bool (MapType2Select h@@1 o@@15 rdheld)))
(or
(< 0 (U_2_int (MapType2Select h@@1 q held)))
(U_2_bool (MapType2Select h@@1 q rdheld)))) (not (= (MapType2Select h@@1 o@@15 mu) (MapType2Select h@@1 q mu))))
 :qid |AVLTreeb.144:15|
 :skolemid |27|
 :pattern ( (wf h@@1 m@@19 sm@@2) (MapType2Select h@@1 o@@15 mu) (MapType2Select h@@1 q mu))
)))
(assert (and
(forall ((arg0@@24 T@U) (arg1@@12 T@U) (arg2@@4 T@U) (arg3@@1 Int) ) (! (= (type (DecPerm arg0@@24 arg1@@12 arg2@@4 arg3@@1)) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
 :qid |funType:DecPerm|
 :pattern ( (DecPerm arg0@@24 arg1@@12 arg2@@4 arg3@@1))
))
(forall ((arg0@@25 Bool) (arg1@@13 T@U) (arg2@@5 T@U) ) (! (let ((T@@6 (type arg1@@13)))
(= (type (q@ite arg0@@25 arg1@@13 arg2@@5)) T@@6))
 :qid |funType:ite|
 :pattern ( (q@ite arg0@@25 arg1@@13 arg2@@5))
))))
(assert (forall ((m@@20 T@U) (o@@16 T@U) (f@@7 T@U) (howMuch Int) (q@@0 T@U) (g T@U) ) (! (let ((U (FieldTypeInv0 (type g))))
(let ((T@@7 (FieldTypeInv0 (type f@@7))))
(=> (and
(= (type m@@20) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type o@@16) refType)
(= (type f@@7) (FieldType T@@7))
(= (type q@@0) refType)
(= (type g) (FieldType U))) (= (U_2_int (MapType0Select (MapType1Select (DecPerm m@@20 o@@16 f@@7 howMuch) q@@0 g) perm$R)) (U_2_int (q@ite (and
(= o@@16 q@@0)
(= f@@7 g)) (int_2_U (- (U_2_int (MapType0Select (MapType1Select m@@20 q@@0 g) perm$R)) howMuch)) (MapType0Select (MapType1Select m@@20 q@@0 g) perm$R)))))))
 :qid |AVLTreeb.148:20|
 :skolemid |28|
 :pattern ( (MapType0Select (MapType1Select (DecPerm m@@20 o@@16 f@@7 howMuch) q@@0 g) perm$R))
)))
(assert (forall ((arg0@@26 T@U) (arg1@@14 T@U) (arg2@@6 T@U) (arg3@@2 Int) ) (! (= (type (DecEpsilons arg0@@26 arg1@@14 arg2@@6 arg3@@2)) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
 :qid |funType:DecEpsilons|
 :pattern ( (DecEpsilons arg0@@26 arg1@@14 arg2@@6 arg3@@2))
)))
(assert (forall ((m@@21 T@U) (o@@17 T@U) (f@@8 T@U) (howMuch@@0 Int) (q@@1 T@U) (g@@0 T@U) ) (! (let ((U@@0 (FieldTypeInv0 (type g@@0))))
(let ((T@@8 (FieldTypeInv0 (type f@@8))))
(=> (and
(= (type m@@21) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type o@@17) refType)
(= (type f@@8) (FieldType T@@8))
(= (type q@@1) refType)
(= (type g@@0) (FieldType U@@0))) (= (U_2_int (MapType0Select (MapType1Select (DecEpsilons m@@21 o@@17 f@@8 howMuch@@0) q@@1 g@@0) perm$N)) (U_2_int (q@ite (and
(= o@@17 q@@1)
(= f@@8 g@@0)) (int_2_U (- (U_2_int (MapType0Select (MapType1Select m@@21 q@@1 g@@0) perm$N)) howMuch@@0)) (MapType0Select (MapType1Select m@@21 q@@1 g@@0) perm$N)))))))
 :qid |AVLTreeb.154:20|
 :skolemid |29|
 :pattern ( (MapType0Select (MapType1Select (DecPerm m@@21 o@@17 f@@8 howMuch@@0) q@@1 g@@0) perm$N))
)))
(assert (forall ((arg0@@27 T@U) (arg1@@15 T@U) (arg2@@7 T@U) (arg3@@3 Int) ) (! (= (type (IncPerm arg0@@27 arg1@@15 arg2@@7 arg3@@3)) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
 :qid |funType:IncPerm|
 :pattern ( (IncPerm arg0@@27 arg1@@15 arg2@@7 arg3@@3))
)))
(assert (forall ((m@@22 T@U) (o@@18 T@U) (f@@9 T@U) (howMuch@@1 Int) (q@@2 T@U) (g@@1 T@U) ) (! (let ((U@@1 (FieldTypeInv0 (type g@@1))))
(let ((T@@9 (FieldTypeInv0 (type f@@9))))
(=> (and
(= (type m@@22) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type o@@18) refType)
(= (type f@@9) (FieldType T@@9))
(= (type q@@2) refType)
(= (type g@@1) (FieldType U@@1))) (= (U_2_int (MapType0Select (MapType1Select (IncPerm m@@22 o@@18 f@@9 howMuch@@1) q@@2 g@@1) perm$R)) (U_2_int (q@ite (and
(= o@@18 q@@2)
(= f@@9 g@@1)) (int_2_U (+ (U_2_int (MapType0Select (MapType1Select m@@22 q@@2 g@@1) perm$R)) howMuch@@1)) (MapType0Select (MapType1Select m@@22 q@@2 g@@1) perm$R)))))))
 :qid |AVLTreeb.160:20|
 :skolemid |30|
 :pattern ( (MapType0Select (MapType1Select (IncPerm m@@22 o@@18 f@@9 howMuch@@1) q@@2 g@@1) perm$R))
)))
(assert (forall ((arg0@@28 T@U) (arg1@@16 T@U) (arg2@@8 T@U) (arg3@@4 Int) ) (! (= (type (IncEpsilons arg0@@28 arg1@@16 arg2@@8 arg3@@4)) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
 :qid |funType:IncEpsilons|
 :pattern ( (IncEpsilons arg0@@28 arg1@@16 arg2@@8 arg3@@4))
)))
(assert (forall ((m@@23 T@U) (o@@19 T@U) (f@@10 T@U) (howMuch@@2 Int) (q@@3 T@U) (g@@2 T@U) ) (! (let ((U@@2 (FieldTypeInv0 (type g@@2))))
(let ((T@@10 (FieldTypeInv0 (type f@@10))))
(=> (and
(= (type m@@23) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type o@@19) refType)
(= (type f@@10) (FieldType T@@10))
(= (type q@@3) refType)
(= (type g@@2) (FieldType U@@2))) (= (U_2_int (MapType0Select (MapType1Select (IncEpsilons m@@23 o@@19 f@@10 howMuch@@2) q@@3 g@@2) perm$N)) (U_2_int (q@ite (and
(= o@@19 q@@3)
(= f@@10 g@@2)) (int_2_U (+ (U_2_int (MapType0Select (MapType1Select m@@23 q@@3 g@@2) perm$N)) howMuch@@2)) (MapType0Select (MapType1Select m@@23 q@@3 g@@2) perm$N)))))))
 :qid |AVLTreeb.166:20|
 :skolemid |31|
 :pattern ( (MapType0Select (MapType1Select (IncPerm m@@23 o@@19 f@@10 howMuch@@2) q@@3 g@@2) perm$N))
)))
(assert (forall ((arg0@@29 T@U) (arg1@@17 T@U) (arg2@@9 T@U) (arg3@@5 T@U) ) (! (= (type (Havocing arg0@@29 arg1@@17 arg2@@9 arg3@@5)) (MapType2Type refType))
 :qid |funType:Havocing|
 :pattern ( (Havocing arg0@@29 arg1@@17 arg2@@9 arg3@@5))
)))
(assert (forall ((h@@2 T@U) (o@@20 T@U) (f@@11 T@U) (newValue T@U) (q@@4 T@U) (g@@3 T@U) ) (! (let ((U@@3 (type newValue)))
(let ((T@@11 (FieldTypeInv0 (type f@@11))))
(=> (and
(= (type h@@2) (MapType2Type refType))
(= (type o@@20) refType)
(= (type f@@11) (FieldType T@@11))
(= (type q@@4) refType)
(= (type g@@3) (FieldType U@@3))) (= (MapType2Select (Havocing h@@2 o@@20 f@@11 newValue) q@@4 g@@3) (q@ite (and
(= o@@20 q@@4)
(= f@@11 g@@3)) newValue (MapType2Select h@@2 q@@4 g@@3))))))
 :qid |AVLTreeb.172:20|
 :skolemid |32|
 :pattern ( (MapType2Select (Havocing h@@2 o@@20 f@@11 newValue) q@@4 g@@3))
)))
(assert (forall ((m@@24 T@U) ) (! (=> (= (type m@@24) (MapType1Type refType (MapType0Type PermissionComponentType intType))) (= (EmptyMask m@@24) (forall ((o@@21 T@U) (f@@12 T@U) ) (! (let ((T@@12 (FieldTypeInv0 (type f@@12))))
(=> (and
(= (type o@@21) refType)
(= (type f@@12) (FieldType T@@12))
(NonPredicateField f@@12)) (and
(<= (U_2_int (MapType0Select (MapType1Select m@@24 o@@21 f@@12) perm$R)) 0)
(<= (U_2_int (MapType0Select (MapType1Select m@@24 o@@21 f@@12) perm$N)) 0))))
 :qid |AVLTreeb.184:74|
 :skolemid |33|
 :no-pattern (type o@@21)
 :no-pattern (type f@@12)
 :no-pattern (U_2_int o@@21)
 :no-pattern (U_2_bool o@@21)
 :no-pattern (U_2_int f@@12)
 :no-pattern (U_2_bool f@@12)
))))
 :qid |AVLTreeb.184:15|
 :skolemid |34|
 :pattern ( (EmptyMask m@@24))
)))
(assert (= (type ZeroCredits) (MapType0Type refType intType)))
(assert (forall ((o@@22 T@U) ) (! (=> (= (type o@@22) refType) (= (U_2_int (MapType0Select ZeroCredits o@@22)) 0))
 :qid |AVLTreeb.187:15|
 :skolemid |35|
 :no-pattern (type o@@22)
 :no-pattern (U_2_int o@@22)
 :no-pattern (U_2_bool o@@22)
)))
(assert (= (type null) refType))
(assert (forall ((c T@U) ) (! (=> (= (type c) (MapType0Type refType intType)) (= (EmptyCredits c) (forall ((o@@23 T@U) ) (! (=> (and
(= (type o@@23) refType)
(not (= o@@23 null))) (= (U_2_int (MapType0Select c o@@23)) 0))
 :qid |AVLTreeb.189:80|
 :skolemid |36|
 :no-pattern (type o@@23)
 :no-pattern (U_2_int o@@23)
 :no-pattern (U_2_bool o@@23)
))))
 :qid |AVLTreeb.189:15|
 :skolemid |37|
 :pattern ( (EmptyCredits c))
)))
(assert (forall ((f@@13 T@U) ) (! (let ((T@@13 (FieldTypeInv0 (type f@@13))))
(=> (and
(= (type f@@13) (FieldType T@@13))
(NonPredicateField f@@13)) (not (PredicateField f@@13))))
 :qid |AVLTreeb.193:18|
 :skolemid |38|
 :no-pattern (type f@@13)
 :no-pattern (U_2_int f@@13)
 :no-pattern (U_2_bool f@@13)
)))
(assert (forall ((f@@14 T@U) ) (! (let ((T@@14 (FieldTypeInv0 (type f@@14))))
(=> (and
(= (type f@@14) (FieldType T@@14))
(PredicateField f@@14)) (not (NonPredicateField f@@14))))
 :qid |AVLTreeb.194:18|
 :skolemid |39|
 :no-pattern (type f@@14)
 :no-pattern (U_2_int f@@14)
 :no-pattern (U_2_bool f@@14)
)))
(assert (forall ((m1 T@U) (m2 T@U) ) (! (=> (and
(= (type m1) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type m2) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (submask m1 m2) (forall ((o@@24 T@U) (f@@15 T@U) ) (! (let ((T@@15 (FieldTypeInv0 (type f@@15))))
(=> (and
(= (type o@@24) refType)
(= (type f@@15) (FieldType T@@15))) (or
(< (U_2_int (MapType0Select (MapType1Select m1 o@@24 f@@15) perm$R)) (U_2_int (MapType0Select (MapType1Select m2 o@@24 f@@15) perm$R)))
(and
(= (U_2_int (MapType0Select (MapType1Select m1 o@@24 f@@15) perm$R)) (U_2_int (MapType0Select (MapType1Select m2 o@@24 f@@15) perm$R)))
(<= (U_2_int (MapType0Select (MapType1Select m1 o@@24 f@@15) perm$N)) (U_2_int (MapType0Select (MapType1Select m2 o@@24 f@@15) perm$N)))))))
 :qid |AVLTreeb.199:35|
 :skolemid |40|
 :no-pattern (type o@@24)
 :no-pattern (type f@@15)
 :no-pattern (U_2_int o@@24)
 :no-pattern (U_2_bool o@@24)
 :no-pattern (U_2_int f@@15)
 :no-pattern (U_2_bool f@@15)
))))
 :qid |AVLTreeb.198:15|
 :skolemid |41|
 :pattern ( (submask m1 m2))
)))
(assert (forall ((con Bool) (a@@2 T@U) (b@@0 T@U) ) (! (let ((T@@16 (type a@@2)))
(=> (and
(= (type b@@0) T@@16)
con) (= (q@ite con a@@2 b@@0) a@@2)))
 :qid |AVLTreeb.207:18|
 :skolemid |42|
 :pattern ( (q@ite con a@@2 b@@0))
)))
(assert (forall ((con@@0 Bool) (a@@3 T@U) (b@@1 T@U) ) (! (let ((T@@17 (type a@@3)))
(=> (and
(= (type b@@1) T@@17)
(not con@@0)) (= (q@ite con@@0 a@@3 b@@1) b@@1)))
 :qid |AVLTreeb.208:18|
 :skolemid |43|
 :pattern ( (q@ite con@@0 a@@3 b@@1))
)))
(assert (forall ((s T@U) ) (! (let ((T@@18 (SeqTypeInv0 (type s))))
(=> (= (type s) (SeqType T@@18)) (<= 0 (|Seq#Length| s))))
 :qid |AVLTreeb.238:18|
 :skolemid |44|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((T@@19 T@T) ) (! (= (type (|Seq#Empty| T@@19)) (SeqType T@@19))
 :qid |funType:Seq#Empty|
 :pattern ( (|Seq#Empty| T@@19))
)))
(assert (forall ((T@@20 T@T) ) (! (= (|Seq#Length| (|Seq#Empty| T@@20)) 0)
 :skolemid |45|
)))
(assert (forall ((s@@0 T@U) ) (! (let ((T@@21 (SeqTypeInv0 (type s@@0))))
(=> (and
(= (type s@@0) (SeqType T@@21))
(= (|Seq#Length| s@@0) 0)) (= s@@0 (|Seq#Empty| T@@21))))
 :qid |AVLTreeb.242:18|
 :skolemid |46|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((arg0@@30 T@U) ) (! (let ((T@@22 (type arg0@@30)))
(= (type (|Seq#Singleton| arg0@@30)) (SeqType T@@22)))
 :qid |funType:Seq#Singleton|
 :pattern ( (|Seq#Singleton| arg0@@30))
)))
(assert (forall ((t T@U) ) (! (= (|Seq#Length| (|Seq#Singleton| t)) 1)
 :qid |AVLTreeb.245:18|
 :skolemid |47|
 :pattern ( (|Seq#Length| (|Seq#Singleton| t)))
)))
(assert (forall ((arg0@@31 T@U) (arg1@@18 Int) (arg2@@10 T@U) (arg3@@6 Int) ) (! (let ((T@@23 (type arg2@@10)))
(= (type (|Seq#Build| arg0@@31 arg1@@18 arg2@@10 arg3@@6)) (SeqType T@@23)))
 :qid |funType:Seq#Build|
 :pattern ( (|Seq#Build| arg0@@31 arg1@@18 arg2@@10 arg3@@6))
)))
(assert (forall ((s@@1 T@U) (i Int) (v T@U) (len Int) ) (! (let ((T@@24 (type v)))
(=> (and
(= (type s@@1) (SeqType T@@24))
(<= 0 len)) (= (|Seq#Length| (|Seq#Build| s@@1 i v len)) len)))
 :qid |AVLTreeb.248:18|
 :skolemid |48|
 :pattern ( (|Seq#Length| (|Seq#Build| s@@1 i v len)))
)))
(assert (forall ((arg0@@32 T@U) (arg1@@19 T@U) ) (! (let ((T@@25 (SeqTypeInv0 (type arg0@@32))))
(= (type (|Seq#Append| arg0@@32 arg1@@19)) (SeqType T@@25)))
 :qid |funType:Seq#Append|
 :pattern ( (|Seq#Append| arg0@@32 arg1@@19))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (let ((T@@26 (SeqTypeInv0 (type s0))))
(=> (and
(= (type s0) (SeqType T@@26))
(= (type s1) (SeqType T@@26))) (= (|Seq#Length| (|Seq#Append| s0 s1)) (+ (|Seq#Length| s0) (|Seq#Length| s1)))))
 :qid |AVLTreeb.252:18|
 :skolemid |49|
 :pattern ( (|Seq#Length| (|Seq#Append| s0 s1)))
)))
(assert (forall ((arg0@@33 T@U) (arg1@@20 Int) ) (! (let ((T@@27 (SeqTypeInv0 (type arg0@@33))))
(= (type (|Seq#Index| arg0@@33 arg1@@20)) T@@27))
 :qid |funType:Seq#Index|
 :pattern ( (|Seq#Index| arg0@@33 arg1@@20))
)))
(assert (forall ((t@@0 T@U) ) (! (= (|Seq#Index| (|Seq#Singleton| t@@0) 0) t@@0)
 :qid |AVLTreeb.256:18|
 :skolemid |50|
 :pattern ( (|Seq#Index| (|Seq#Singleton| t@@0) 0))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) (n@@3 Int) ) (! (let ((T@@28 (SeqTypeInv0 (type s0@@0))))
(=> (and
(= (type s0@@0) (SeqType T@@28))
(= (type s1@@0) (SeqType T@@28))) (and
(=> (< n@@3 (|Seq#Length| s0@@0)) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@3) (|Seq#Index| s0@@0 n@@3)))
(=> (<= (|Seq#Length| s0@@0) n@@3) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@3) (|Seq#Index| s1@@0 (- n@@3 (|Seq#Length| s0@@0))))))))
 :qid |AVLTreeb.257:18|
 :skolemid |51|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@3))
)))
(assert (forall ((s@@2 T@U) (i@@0 Int) (v@@0 T@U) (len@@0 Int) (n@@4 Int) ) (! (let ((T@@29 (type v@@0)))
(=> (= (type s@@2) (SeqType T@@29)) (=> (and
(<= 0 n@@4)
(< n@@4 len@@0)) (and
(=> (= i@@0 n@@4) (= (|Seq#Index| (|Seq#Build| s@@2 i@@0 v@@0 len@@0) n@@4) v@@0))
(=> (not (= i@@0 n@@4)) (= (|Seq#Index| (|Seq#Build| s@@2 i@@0 v@@0 len@@0) n@@4) (|Seq#Index| s@@2 n@@4)))))))
 :qid |AVLTreeb.260:18|
 :skolemid |52|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@2 i@@0 v@@0 len@@0) n@@4))
)))
(assert (forall ((s@@3 T@U) (x@@6 T@U) ) (! (let ((T@@30 (type x@@6)))
(=> (= (type s@@3) (SeqType T@@30)) (= (|Seq#Contains| s@@3 x@@6) (exists ((i@@1 Int) ) (! (and
(<= 0 i@@1)
(< i@@1 (|Seq#Length| s@@3))
(= (|Seq#Index| s@@3 i@@1) x@@6))
 :qid |AVLTreeb.268:13|
 :skolemid |53|
 :pattern ( (|Seq#Index| s@@3 i@@1))
)))))
 :qid |AVLTreeb.266:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains| s@@3 x@@6))
)))
(assert (forall ((x@@7 T@U) ) (! (=> (= (type x@@7) refType) (not (|Seq#Contains| (|Seq#Empty| refType) x@@7)))
 :qid |AVLTreeb.269:15|
 :skolemid |55|
 :pattern ( (|Seq#Contains| (|Seq#Empty| refType) x@@7))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (x@@8 T@U) ) (! (let ((T@@31 (type x@@8)))
(=> (and
(= (type s0@@1) (SeqType T@@31))
(= (type s1@@1) (SeqType T@@31))) (= (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@8) (or
(|Seq#Contains| s0@@1 x@@8)
(|Seq#Contains| s1@@1 x@@8)))))
 :qid |AVLTreeb.272:18|
 :skolemid |56|
 :pattern ( (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@8))
)))
(assert (forall ((s@@4 T@U) (i@@2 Int) (v@@1 T@U) (len@@1 Int) (x@@9 T@U) ) (! (let ((T@@32 (type v@@1)))
(=> (and
(= (type s@@4) (SeqType T@@32))
(= (type x@@9) T@@32)) (= (|Seq#Contains| (|Seq#Build| s@@4 i@@2 v@@1 len@@1) x@@9) (or
(and
(<= 0 i@@2)
(< i@@2 len@@1)
(= x@@9 v@@1))
(exists ((j Int) ) (! (and
(<= 0 j)
(< j (|Seq#Length| s@@4))
(< j len@@1)
(not (= j i@@2))
(= (|Seq#Index| s@@4 j) x@@9))
 :qid |AVLTreeb.280:13|
 :skolemid |57|
 :pattern ( (|Seq#Index| s@@4 j))
))))))
 :qid |AVLTreeb.276:18|
 :skolemid |58|
 :pattern ( (|Seq#Contains| (|Seq#Build| s@@4 i@@2 v@@1 len@@1) x@@9))
)))
(assert (forall ((arg0@@34 T@U) (arg1@@21 Int) ) (! (let ((T@@33 (SeqTypeInv0 (type arg0@@34))))
(= (type (|Seq#Take| arg0@@34 arg1@@21)) (SeqType T@@33)))
 :qid |funType:Seq#Take|
 :pattern ( (|Seq#Take| arg0@@34 arg1@@21))
)))
(assert (forall ((s@@5 T@U) (n@@5 Int) (x@@10 T@U) ) (! (let ((T@@34 (type x@@10)))
(=> (= (type s@@5) (SeqType T@@34)) (= (|Seq#Contains| (|Seq#Take| s@@5 n@@5) x@@10) (exists ((i@@3 Int) ) (! (and
(<= 0 i@@3)
(< i@@3 n@@5)
(< i@@3 (|Seq#Length| s@@5))
(= (|Seq#Index| s@@5 i@@3) x@@10))
 :qid |AVLTreeb.284:13|
 :skolemid |59|
 :pattern ( (|Seq#Index| s@@5 i@@3))
)))))
 :qid |AVLTreeb.281:18|
 :skolemid |60|
 :pattern ( (|Seq#Contains| (|Seq#Take| s@@5 n@@5) x@@10))
)))
(assert (forall ((arg0@@35 T@U) (arg1@@22 Int) ) (! (let ((T@@35 (SeqTypeInv0 (type arg0@@35))))
(= (type (|Seq#Drop| arg0@@35 arg1@@22)) (SeqType T@@35)))
 :qid |funType:Seq#Drop|
 :pattern ( (|Seq#Drop| arg0@@35 arg1@@22))
)))
(assert (forall ((s@@6 T@U) (n@@6 Int) (x@@11 T@U) ) (! (let ((T@@36 (type x@@11)))
(=> (= (type s@@6) (SeqType T@@36)) (= (|Seq#Contains| (|Seq#Drop| s@@6 n@@6) x@@11) (exists ((i@@4 Int) ) (! (and
(<= 0 n@@6)
(<= n@@6 i@@4)
(< i@@4 (|Seq#Length| s@@6))
(= (|Seq#Index| s@@6 i@@4) x@@11))
 :qid |AVLTreeb.289:13|
 :skolemid |61|
 :pattern ( (|Seq#Index| s@@6 i@@4))
)))))
 :qid |AVLTreeb.286:18|
 :skolemid |62|
 :pattern ( (|Seq#Contains| (|Seq#Drop| s@@6 n@@6) x@@11))
)))
(assert (forall ((s0@@2 T@U) (s1@@2 T@U) ) (! (let ((T@@37 (SeqTypeInv0 (type s0@@2))))
(=> (and
(= (type s0@@2) (SeqType T@@37))
(= (type s1@@2) (SeqType T@@37))) (= (|Seq#Equal| s0@@2 s1@@2) (and
(= (|Seq#Length| s0@@2) (|Seq#Length| s1@@2))
(forall ((j@@0 Int) ) (! (=> (and
(<= 0 j@@0)
(< j@@0 (|Seq#Length| s0@@2))) (= (|Seq#Index| s0@@2 j@@0) (|Seq#Index| s1@@2 j@@0)))
 :qid |AVLTreeb.296:13|
 :skolemid |63|
 :pattern ( (|Seq#Index| s0@@2 j@@0))
 :pattern ( (|Seq#Index| s1@@2 j@@0))
))))))
 :qid |AVLTreeb.293:18|
 :skolemid |64|
 :pattern ( (|Seq#Equal| s0@@2 s1@@2))
)))
(assert (forall ((a@@4 T@U) (b@@2 T@U) ) (! (let ((T@@38 (SeqTypeInv0 (type a@@4))))
(=> (and
(= (type a@@4) (SeqType T@@38))
(= (type b@@2) (SeqType T@@38))
(|Seq#Equal| a@@4 b@@2)) (= a@@4 b@@2)))
 :qid |AVLTreeb.298:17|
 :skolemid |65|
 :pattern ( (|Seq#Equal| a@@4 b@@2))
)))
(assert (forall ((s0@@3 T@U) (s1@@3 T@U) (n@@7 Int) ) (! (let ((T@@39 (SeqTypeInv0 (type s0@@3))))
(=> (and
(= (type s0@@3) (SeqType T@@39))
(= (type s1@@3) (SeqType T@@39))) (= (|Seq#SameUntil| s0@@3 s1@@3 n@@7) (forall ((j@@1 Int) ) (! (=> (and
(<= 0 j@@1)
(< j@@1 n@@7)) (= (|Seq#Index| s0@@3 j@@1) (|Seq#Index| s1@@3 j@@1)))
 :qid |AVLTreeb.304:13|
 :skolemid |66|
 :pattern ( (|Seq#Index| s0@@3 j@@1))
 :pattern ( (|Seq#Index| s1@@3 j@@1))
)))))
 :qid |AVLTreeb.302:18|
 :skolemid |67|
 :pattern ( (|Seq#SameUntil| s0@@3 s1@@3 n@@7))
)))
(assert (forall ((s@@7 T@U) (n@@8 Int) ) (! (let ((T@@40 (SeqTypeInv0 (type s@@7))))
(=> (and
(= (type s@@7) (SeqType T@@40))
(<= 0 n@@8)) (and
(=> (<= n@@8 (|Seq#Length| s@@7)) (= (|Seq#Length| (|Seq#Take| s@@7 n@@8)) n@@8))
(=> (< (|Seq#Length| s@@7) n@@8) (= (|Seq#Length| (|Seq#Take| s@@7 n@@8)) (|Seq#Length| s@@7))))))
 :qid |AVLTreeb.308:18|
 :skolemid |68|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@7 n@@8)))
)))
(assert (forall ((s@@8 T@U) (n@@9 Int) (j@@2 Int) ) (! (let ((T@@41 (SeqTypeInv0 (type s@@8))))
(=> (= (type s@@8) (SeqType T@@41)) (=> (and
(<= 0 j@@2)
(< j@@2 n@@9)
(< j@@2 (|Seq#Length| s@@8))) (= (|Seq#Index| (|Seq#Take| s@@8 n@@9) j@@2) (|Seq#Index| s@@8 j@@2)))))
 :qid |AVLTreeb.312:18|
 :weight 25
 :skolemid |69|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@8 n@@9) j@@2))
)))
(assert (forall ((s@@9 T@U) (n@@10 Int) ) (! (let ((T@@42 (SeqTypeInv0 (type s@@9))))
(=> (and
(= (type s@@9) (SeqType T@@42))
(<= 0 n@@10)) (and
(=> (<= n@@10 (|Seq#Length| s@@9)) (= (|Seq#Length| (|Seq#Drop| s@@9 n@@10)) (- (|Seq#Length| s@@9) n@@10)))
(=> (< (|Seq#Length| s@@9) n@@10) (= (|Seq#Length| (|Seq#Drop| s@@9 n@@10)) 0)))))
 :qid |AVLTreeb.317:18|
 :skolemid |70|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@9 n@@10)))
)))
(assert (forall ((s@@10 T@U) (n@@11 Int) (j@@3 Int) ) (! (let ((T@@43 (SeqTypeInv0 (type s@@10))))
(=> (= (type s@@10) (SeqType T@@43)) (=> (and
(<= 0 n@@11)
(<= 0 j@@3)
(< j@@3 (- (|Seq#Length| s@@10) n@@11))) (= (|Seq#Index| (|Seq#Drop| s@@10 n@@11) j@@3) (|Seq#Index| s@@10 (+ j@@3 n@@11))))))
 :qid |AVLTreeb.321:18|
 :weight 25
 :skolemid |71|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@10 n@@11) j@@3))
)))
(assert (forall ((s@@11 T@U) (t@@1 T@U) ) (! (let ((T@@44 (SeqTypeInv0 (type s@@11))))
(=> (and
(= (type s@@11) (SeqType T@@44))
(= (type t@@1) (SeqType T@@44))) (and
(= (|Seq#Take| (|Seq#Append| s@@11 t@@1) (|Seq#Length| s@@11)) s@@11)
(= (|Seq#Drop| (|Seq#Append| s@@11 t@@1) (|Seq#Length| s@@11)) t@@1))))
 :qid |AVLTreeb.325:18|
 :skolemid |72|
 :pattern ( (|Seq#Append| s@@11 t@@1))
)))
(assert (forall ((arg0@@36 Int) (arg1@@23 Int) ) (! (= (type (|Seq#Range| arg0@@36 arg1@@23)) (SeqType intType))
 :qid |funType:Seq#Range|
 :pattern ( (|Seq#Range| arg0@@36 arg1@@23))
)))
(assert (forall ((q@min Int) (q@max Int) ) (! (and
(=> (< q@min q@max) (= (|Seq#Length| (|Seq#Range| q@min q@max)) (- q@max q@min)))
(=> (<= q@max q@min) (= (|Seq#Length| (|Seq#Range| q@min q@max)) 0)))
 :qid |AVLTreeb.332:15|
 :skolemid |73|
 :pattern ( (|Seq#Length| (|Seq#Range| q@min q@max)))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@4 Int) ) (! (=> (and
(<= 0 j@@4)
(< j@@4 (- q@max@@0 q@min@@0))) (= (U_2_int (|Seq#Index| (|Seq#Range| q@min@@0 q@max@@0) j@@4)) (+ q@min@@0 j@@4)))
 :qid |AVLTreeb.333:15|
 :skolemid |74|
 :pattern ( (|Seq#Index| (|Seq#Range| q@min@@0 q@max@@0) j@@4))
)))
(assert (forall ((x@@12 T@U) (y@@2 T@U) ) (! (let ((T@@45 (type x@@12)))
(=> (= (type y@@2) T@@45) (= (|Seq#Contains| (|Seq#Singleton| x@@12) y@@2) (= x@@12 y@@2))))
 :qid |AVLTreeb.335:18|
 :skolemid |75|
 :pattern ( (|Seq#Contains| (|Seq#Singleton| x@@12) y@@2))
)))
(assert (NonPredicateField AVLTree.root))
(assert (NonPredicateField AVLTree.keys))
(assert (PredicateField AVLTree.valid))
(assert (NonPredicateField AVLTreeNode.key))
(assert (NonPredicateField AVLTreeNode.height))
(assert (NonPredicateField AVLTreeNode.left))
(assert (NonPredicateField AVLTreeNode.right))
(assert (NonPredicateField AVLTreeNode.keys))
(assert (NonPredicateField AVLTreeNode.balanceFactor))
(assert (PredicateField AVLTreeNode.valid))
(assert (and
(= (type this) refType)
(= (type Heap) (MapType2Type refType))
(forall ((arg0@@37 T@U) ) (! (= (type (dtype arg0@@37)) TypeNameType)
 :qid |funType:dtype|
 :pattern ( (dtype arg0@@37))
))
(= (type Mask@0) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(forall ((arg0@@38 T@U) ) (! (= (type (heapFragment arg0@@38)) PartialHeapTypeType)
 :qid |funType:heapFragment|
 :pattern ( (heapFragment arg0@@38))
))
(= (type Mask@1) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type Mask) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type Credits) (MapType0Type refType intType))
(= (type Heap@0) (MapType2Type refType))
(= (type Mask@2) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type Mask@3) (MapType1Type refType (MapType0Type PermissionComponentType intType)))))
(push 1)
(set-info :boogie-vc-id AVLTree.init$checkDefinedness)
(assert (not
(let ((anon0_correct (=> (! (and %lbl%+4829 true) :lblpos +4829) (=> (and
(< 0 |methodK#_11|)
(< (* 1000 |methodK#_11|) (Fractions 1))) (=> (and
CanAssumeFunctionDefs
(not (= this null))
(wf Heap ZeroMask ZeroMask)
(or
(= (MapType2Select Heap this AVLTree.root) null)
(= (dtype (MapType2Select Heap this AVLTree.root)) |AVLTreeNode#t|))
(> (Fractions 100) 0)
(= Mask@0 (MapType1Store ZeroMask this AVLTree.root (MapType0Store (MapType1Select ZeroMask this AVLTree.root) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select ZeroMask this AVLTree.root) perm$R)) (Fractions 100))))))
(IsGoodMask Mask@0)
(IsGoodState (heapFragment (MapType2Select Heap this AVLTree.root)))) (=> (and
(wf Heap Mask@0 ZeroMask)
(wf Heap Mask@0 ZeroMask)
(not (= this null))
(wf Heap Mask@0 ZeroMask)
(> (Fractions 100) 0)
(= Mask@1 (MapType1Store Mask@0 this AVLTree.keys (MapType0Store (MapType1Select Mask@0 this AVLTree.keys) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select Mask@0 this AVLTree.keys) perm$R)) (Fractions 100))))))
(IsGoodMask Mask@1)
(IsGoodState (heapFragment (MapType2Select Heap this AVLTree.keys)))
(wf Heap Mask@1 ZeroMask)
(wf Heap Mask@1 ZeroMask)
(IsGoodMask Mask@1)
(wf Heap Mask@1 ZeroMask)
(= Heap Heap)
(= Mask@1 Mask)
(= ZeroMask SecMask)
(= ZeroCredits Credits)) (and
(! (or %lbl%@1016706 (not (= this null))) :lblneg @1016706)
(=> (not (= this null)) (=> (and
(not (= this null))
(wf Heap@0 ZeroMask ZeroMask)
(> (Fractions 100) 0)
(= Mask@2 (MapType1Store ZeroMask this AVLTree.valid (MapType0Store (MapType1Select ZeroMask this AVLTree.valid) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select ZeroMask this AVLTree.valid) perm$R)) (Fractions 100))))))
(IsGoodMask Mask@2)
(IsGoodState (heapFragment (MapType2Select Heap@0 this AVLTree.valid)))
(wf Heap@0 Mask@2 ZeroMask)
(wf Heap@0 Mask@2 ZeroMask)
(not (= this null))
(wf Heap@0 Mask@2 ZeroMask)
(> (Fractions 50) 0)
(= Mask@3 (MapType1Store Mask@2 this AVLTree.keys (MapType0Store (MapType1Select Mask@2 this AVLTree.keys) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select Mask@2 this AVLTree.keys) perm$R)) (Fractions 50))))))
(IsGoodMask Mask@3)
(IsGoodState (heapFragment (MapType2Select Heap@0 this AVLTree.keys)))
(wf Heap@0 Mask@3 ZeroMask)
(wf Heap@0 Mask@3 ZeroMask)) (and
(! (or %lbl%@1016884 (=> true (not (= this null)))) :lblneg @1016884)
(=> (=> true (not (= this null))) (and
(! (or %lbl%@1016894 (=> true (CanRead Mask@3 ZeroMask this AVLTree.keys))) :lblneg @1016894)
(=> (=> true (CanRead Mask@3 ZeroMask this AVLTree.keys)) true)))))))))))))
(let ((PreconditionGeneratedEntry_correct (=> (! (and %lbl%+1016344 true) :lblpos +1016344) (=> (IsGoodMask Mask) (=> (and
(IsGoodMask SecMask)
(or
(= this null)
(= (dtype this) |AVLTree#t|))
(not (= this null))
(wf Heap Mask SecMask)) anon0_correct)))))
PreconditionGeneratedEntry_correct))
))
(check-sat)
(pop 1)
(declare-fun |exhaleMask#_25@0| () T@U)
(declare-fun |exhaleHeap#_16@0| () T@U)
(declare-fun SecMask@32 () T@U)
(declare-fun Mask@2@@0 () T@U)
(declare-fun this@@0 () T@U)
(declare-fun |exhaleMask#_25@1| () T@U)
(declare-fun |exhaleHeap#_24@0| () T@U)
(declare-fun TType () T@T)
(declare-fun type@@0 (T@U) T@U)
(declare-fun SecMask@31 () T@U)
(declare-fun SecMask@30 () T@U)
(declare-fun SecMask@28 () T@U)
(declare-fun SecMask@29 () T@U)
(declare-fun SecMask@27 () T@U)
(declare-fun SecMask@26 () T@U)
(declare-fun SecMask@24 () T@U)
(declare-fun SecMask@25 () T@U)
(declare-fun SecMask@23 () T@U)
(declare-fun SecMask@22 () T@U)
(declare-fun SecMask@20 () T@U)
(declare-fun SecMask@21 () T@U)
(declare-fun SecMask@19 () T@U)
(declare-fun SecMask@18 () T@U)
(declare-fun SecMask@16 () T@U)
(declare-fun SecMask@17 () T@U)
(declare-fun SecMask@15 () T@U)
(declare-fun SecMask@13 () T@U)
(declare-fun SecMask@14 () T@U)
(declare-fun SecMask@12 () T@U)
(declare-fun SecMask@10 () T@U)
(declare-fun SecMask@11 () T@U)
(declare-fun SecMask@9 () T@U)
(declare-fun Heap@1 () T@U)
(declare-fun |exhaleMask#_17@9| () T@U)
(declare-fun |exhaleMask#_17@7| () T@U)
(declare-fun |exhaleMask#_17@8| () T@U)
(declare-fun SecMask@8 () T@U)
(declare-fun SecMask@7 () T@U)
(declare-fun Mask@1@@0 () T@U)
(declare-fun |exhaleMask#_17@5| () T@U)
(declare-fun |exhaleMask#_17@6| () T@U)
(declare-fun SecMask@6 () T@U)
(declare-fun SecMask@5 () T@U)
(declare-fun |exhaleMask#_17@3| () T@U)
(declare-fun |exhaleMask#_17@4| () T@U)
(declare-fun SecMask@4 () T@U)
(declare-fun SecMask@3 () T@U)
(declare-fun |exhaleMask#_17@2| () T@U)
(declare-fun SecMask@2 () T@U)
(declare-fun |exhaleMask#_17@1| () T@U)
(declare-fun SecMask@1 () T@U)
(declare-fun |exhaleMask#_17@0| () T@U)
(declare-fun SecMask@0 () T@U)
(declare-fun CurrentModule () T@U)
(declare-fun Mask@0@@0 () T@U)
(declare-fun Heap@0@@0 () T@U)
(declare-fun %lbl%+7093 () Bool)
(declare-fun %lbl%@1021640 () Bool)
(declare-fun %lbl%@1021648 () Bool)
(declare-fun %lbl%@1021774 () Bool)
(declare-fun %lbl%@1021840 () Bool)
(declare-fun ch () T@U)
(declare-fun %lbl%+7091 () Bool)
(declare-fun %lbl%+7089 () Bool)
(declare-fun %lbl%+7087 () Bool)
(declare-fun %lbl%+7081 () Bool)
(declare-fun |predVer#_13@0| () Int)
(declare-fun %lbl%+7079 () Bool)
(declare-fun %lbl%+7077 () Bool)
(declare-fun %lbl%+7075 () Bool)
(declare-fun %lbl%+7073 () Bool)
(declare-fun %lbl%+7071 () Bool)
(declare-fun %lbl%+7069 () Bool)
(declare-fun %lbl%+7062 () Bool)
(declare-fun %lbl%+7056 () Bool)
(declare-fun %lbl%+7054 () Bool)
(declare-fun %lbl%+7052 () Bool)
(declare-fun %lbl%+7050 () Bool)
(declare-fun %lbl%+7048 () Bool)
(declare-fun %lbl%+7041 () Bool)
(declare-fun %lbl%+7035 () Bool)
(declare-fun %lbl%+7033 () Bool)
(declare-fun %lbl%+7031 () Bool)
(declare-fun %lbl%+7029 () Bool)
(declare-fun %lbl%+7027 () Bool)
(declare-fun %lbl%+7020 () Bool)
(declare-fun %lbl%+7014 () Bool)
(declare-fun %lbl%+7012 () Bool)
(declare-fun %lbl%+7010 () Bool)
(declare-fun %lbl%+7008 () Bool)
(declare-fun %lbl%+7006 () Bool)
(declare-fun %lbl%+6999 () Bool)
(declare-fun %lbl%+6993 () Bool)
(declare-fun %lbl%+6991 () Bool)
(declare-fun %lbl%+6989 () Bool)
(declare-fun %lbl%+6982 () Bool)
(declare-fun %lbl%+6980 () Bool)
(declare-fun %lbl%+6978 () Bool)
(declare-fun %lbl%+6971 () Bool)
(declare-fun %lbl%+6969 () Bool)
(declare-fun %lbl%+6967 () Bool)
(declare-fun %lbl%+6960 () Bool)
(declare-fun %lbl%+6958 () Bool)
(declare-fun %lbl%+6956 () Bool)
(declare-fun %lbl%+6950 () Bool)
(declare-fun %lbl%@1020349 () Bool)
(declare-fun %lbl%@1020360 () Bool)
(declare-fun %lbl%@1020368 () Bool)
(declare-fun %lbl%+6943 () Bool)
(declare-fun %lbl%+6941 () Bool)
(declare-fun %lbl%@1019969 () Bool)
(declare-fun %lbl%@1019977 () Bool)
(declare-fun %lbl%+6939 () Bool)
(declare-fun %lbl%+6933 () Bool)
(declare-fun %lbl%+6931 () Bool)
(declare-fun %lbl%@1019716 () Bool)
(declare-fun %lbl%@1019724 () Bool)
(declare-fun %lbl%+6929 () Bool)
(declare-fun %lbl%+6923 () Bool)
(declare-fun %lbl%+6921 () Bool)
(declare-fun %lbl%@1019463 () Bool)
(declare-fun %lbl%@1019471 () Bool)
(declare-fun %lbl%+6919 () Bool)
(declare-fun %lbl%+6913 () Bool)
(declare-fun %lbl%+6911 () Bool)
(declare-fun %lbl%+6909 () Bool)
(declare-fun %lbl%+6907 () Bool)
(declare-fun %lbl%+6905 () Bool)
(declare-fun %lbl%@1019156 () Bool)
(declare-fun %lbl%@1019164 () Bool)
(declare-fun %lbl%+6899 () Bool)
(declare-fun %lbl%@1018811 () Bool)
(declare-fun %lbl%@1018819 () Bool)
(declare-fun %lbl%@1018977 () Bool)
(declare-fun %lbl%@1018985 () Bool)
(declare-fun %lbl%+6893 () Bool)
(declare-fun %lbl%+6891 () Bool)
(declare-fun %lbl%@1018789 () Bool)
(declare-fun %lbl%+6889 () Bool)
(declare-fun %lbl%+6882 () Bool)
(declare-fun %lbl%+6880 () Bool)
(declare-fun %lbl%@1018746 () Bool)
(declare-fun %lbl%+6878 () Bool)
(declare-fun |methodK#_11@@0| () Int)
(declare-fun %lbl%@1018629 () Bool)
(declare-fun %lbl%@1018658 () Bool)
(declare-fun |#AVLTree.valid#trigger| (T@U) Bool)
(declare-fun |foldK#_15| () Int)
(declare-fun %lbl%@1018722 () Bool)
(declare-fun %lbl%+1018189 () Bool)
(assert (and
(= (type |exhaleMask#_25@0|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type |exhaleHeap#_16@0|) (MapType2Type refType))
(= (type SecMask@32) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type Mask@2@@0) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type this@@0) refType)
(= (type |exhaleMask#_25@1|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type |exhaleHeap#_24@0|) (MapType2Type refType))
(= (Ctor TType) 14)
(forall ((arg0@@39 T@U) ) (! (= (type (type@@0 arg0@@39)) TType)
 :qid |funType:type|
 :pattern ( (type@@0 arg0@@39))
))
(= (type SecMask@31) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@30) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@28) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@29) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@27) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@26) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@24) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@25) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@23) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@22) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@20) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@21) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@19) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@18) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@16) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@17) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@15) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@13) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@14) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@12) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@10) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@11) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@9) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type Heap@1) (MapType2Type refType))
(= (type |exhaleMask#_17@9|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type |exhaleMask#_17@7|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type |exhaleMask#_17@8|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@8) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@7) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type Mask@1@@0) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type |exhaleMask#_17@5|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type |exhaleMask#_17@6|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@6) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@5) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type |exhaleMask#_17@3|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type |exhaleMask#_17@4|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@4) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@3) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type |exhaleMask#_17@2|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@2) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type |exhaleMask#_17@1|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@1) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type |exhaleMask#_17@0|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type SecMask@0) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type CurrentModule) ModuleNameType)
(= (type Mask@0@@0) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
(= (type Heap@0@@0) (MapType2Type refType))))
(push 1)
(set-info :boogie-vc-id AVLTree.init)
(assert (not
(let ((anon42_correct (=> (! (and %lbl%+7093 true) :lblpos +7093) (=> (IsGoodMask |exhaleMask#_25@0|) (=> (and
(wf |exhaleHeap#_16@0| |exhaleMask#_25@0| SecMask@32)
(wf |exhaleHeap#_16@0| Mask@2@@0 SecMask@32)) (and
(! (or %lbl%@1021640 (> (Fractions 50) 0)) :lblneg @1021640)
(=> (> (Fractions 50) 0) (and
(! (or %lbl%@1021648 (and
(<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_25@0| this@@0 AVLTree.keys) perm$R)))
(=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_25@0| this@@0 AVLTree.keys) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_25@0| this@@0 AVLTree.keys) perm$N)))))) :lblneg @1021648)
(=> (and
(<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_25@0| this@@0 AVLTree.keys) perm$R)))
(=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_25@0| this@@0 AVLTree.keys) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_25@0| this@@0 AVLTree.keys) perm$N))))) (=> (= |exhaleMask#_25@1| (MapType1Store |exhaleMask#_25@0| this@@0 AVLTree.keys (MapType0Store (MapType1Select |exhaleMask#_25@0| this@@0 AVLTree.keys) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select |exhaleMask#_25@0| this@@0 AVLTree.keys) perm$R)) (Fractions 50)))))) (=> (and
(IsGoodMask |exhaleMask#_25@1|)
(wf |exhaleHeap#_16@0| |exhaleMask#_25@1| SecMask@32)) (=> (and
(wf |exhaleHeap#_16@0| Mask@2@@0 SecMask@32)
(IsGoodExhaleState |exhaleHeap#_24@0| |exhaleHeap#_16@0| |exhaleMask#_25@1| SecMask@32)
(IsGoodMask |exhaleMask#_25@1|)
(wf |exhaleHeap#_24@0| |exhaleMask#_25@1| SecMask@32)) (and
(! (or %lbl%@1021774 (forall ((|lk#_36| T@U) ) (! (=> (= (type |lk#_36|) refType) (or
(and
(= (< 0 (U_2_int (MapType2Select |exhaleHeap#_24@0| |lk#_36| held))) (< 0 (U_2_int (MapType2Select Heap |lk#_36| held))))
(= (U_2_bool (MapType2Select |exhaleHeap#_24@0| |lk#_36| rdheld)) (U_2_bool (MapType2Select Heap |lk#_36| rdheld))))
false))
 :qid |AVLTreeb.795:79|
 :skolemid |77|
 :pattern ( (MapType2Select |exhaleHeap#_24@0| |lk#_36| held))
 :pattern ( (MapType2Select |exhaleHeap#_24@0| |lk#_36| rdheld))
))) :lblneg @1021774)
(=> (forall ((|lk#_36@@0| T@U) ) (! (=> (= (type |lk#_36@@0|) refType) (or
(and
(= (< 0 (U_2_int (MapType2Select |exhaleHeap#_24@0| |lk#_36@@0| held))) (< 0 (U_2_int (MapType2Select Heap |lk#_36@@0| held))))
(= (U_2_bool (MapType2Select |exhaleHeap#_24@0| |lk#_36@@0| rdheld)) (U_2_bool (MapType2Select Heap |lk#_36@@0| rdheld))))
false))
 :qid |AVLTreeb.795:79|
 :skolemid |77|
 :pattern ( (MapType2Select |exhaleHeap#_24@0| |lk#_36@@0| held))
 :pattern ( (MapType2Select |exhaleHeap#_24@0| |lk#_36@@0| rdheld))
)) (and
(! (or %lbl%@1021840 (forall ((ch@@0 T@U) ) (! (=> (= (type ch@@0) refType) (or
(= ch@@0 null)
(<= 0 (U_2_int (MapType0Select ZeroCredits ch@@0)))))
 :qid |AVLTreeb.796:81|
 :skolemid |78|
 :no-pattern (type ch@@0)
 :no-pattern (U_2_int ch@@0)
 :no-pattern (U_2_bool ch@@0)
))) :lblneg @1021840)
(=> (forall ((ch@@1 T@U) ) (! (=> (= (type ch@@1) refType) (or
(= ch@@1 null)
(<= 0 (U_2_int (MapType0Select ZeroCredits ch@@1)))))
 :qid |AVLTreeb.796:81|
 :skolemid |78|
 :no-pattern (type@@0 ch)
 :no-pattern (type ch@@1)
 :no-pattern (U_2_int ch@@1)
 :no-pattern (U_2_bool ch@@1)
)) true))))))))))))))))
(let ((anon63_Else_correct (=> (! (and %lbl%+7091 true) :lblpos +7091) (=> (CanRead |exhaleMask#_25@0| SecMask@32 this@@0 AVLTree.valid) anon42_correct))))
(let ((anon63_Then_correct (=> (! (and %lbl%+7089 true) :lblpos +7089) (=> (and
(not (CanRead |exhaleMask#_25@0| SecMask@32 this@@0 AVLTree.valid))
(< (U_2_int (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.valid)) (U_2_int (MapType2Select |exhaleHeap#_24@0| this@@0 AVLTree.valid)))) anon42_correct))))
(let ((anon40_correct (=> (! (and %lbl%+7087 true) :lblpos +7087) (and
anon63_Then_correct
anon63_Else_correct))))
(let ((anon50_Else_correct (=> (! (and %lbl%+7081 true) :lblpos +7081) (=> (and
(not (or
false
(and
(= |predVer#_13@0| (U_2_int (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.valid)))
(= this@@0 this@@0)
true
true)))
(= SecMask@32 SecMask@9)) anon40_correct))))
(let ((anon39_correct (=> (! (and %lbl%+7079 true) :lblpos +7079) (=> (and
(wf |exhaleHeap#_16@0| SecMask@31 SecMask@31)
(= SecMask@32 SecMask@31)) (and
anon63_Then_correct
anon63_Else_correct)))))
(let ((anon61_Else_correct (=> (! (and %lbl%+7077 true) :lblpos +7077) (=> (and
(= (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) null)
(= SecMask@31 SecMask@27)) anon39_correct))))
(let ((anon38_correct (=> (! (and %lbl%+7075 true) :lblpos +7075) (=> (wf |exhaleHeap#_16@0| SecMask@30 SecMask@30) (=> (and
(wf |exhaleHeap#_16@0| Mask@2@@0 SecMask@30)
(= SecMask@31 SecMask@30)) anon39_correct)))))
(let ((anon62_Else_correct (=> (! (and %lbl%+7073 true) :lblpos +7073) (=> (and
(<= 0 (U_2_int (MapType0Select (MapType1Select SecMask@28 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.balanceFactor) perm$R)))
(= SecMask@30 SecMask@28)) anon38_correct))))
(let ((anon62_Then_correct (=> (! (and %lbl%+7071 true) :lblpos +7071) (=> (< (U_2_int (MapType0Select (MapType1Select SecMask@28 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.balanceFactor) perm$R)) 0) (=> (and
(= SecMask@29 (MapType1Store SecMask@28 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.balanceFactor (MapType0Store (MapType1Select SecMask@28 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.balanceFactor) perm$R (int_2_U 0))))
(= SecMask@30 SecMask@29)) anon38_correct)))))
(let ((anon61_Then_correct (=> (! (and %lbl%+7069 true) :lblpos +7069) (=> (and
(not (= (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) null))
(= SecMask@28 (MapType1Store SecMask@27 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.balanceFactor (MapType0Store (MapType1Select SecMask@27 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.balanceFactor) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select SecMask@27 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.balanceFactor) perm$R)) (Fractions 50))))))) (and
anon62_Then_correct
anon62_Else_correct)))))
(let ((anon35_correct (=> (! (and %lbl%+7062 true) :lblpos +7062) (and
anon61_Then_correct
anon61_Else_correct))))
(let ((anon59_Else_correct (=> (! (and %lbl%+7056 true) :lblpos +7056) (=> (and
(= (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) null)
(= SecMask@27 SecMask@23)) anon35_correct))))
(let ((anon34_correct (=> (! (and %lbl%+7054 true) :lblpos +7054) (=> (wf |exhaleHeap#_16@0| SecMask@26 SecMask@26) (=> (and
(wf |exhaleHeap#_16@0| Mask@2@@0 SecMask@26)
(= SecMask@27 SecMask@26)) (and
anon61_Then_correct
anon61_Else_correct))))))
(let ((anon60_Else_correct (=> (! (and %lbl%+7052 true) :lblpos +7052) (=> (and
(<= 0 (U_2_int (MapType0Select (MapType1Select SecMask@24 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.keys) perm$R)))
(= SecMask@26 SecMask@24)) anon34_correct))))
(let ((anon60_Then_correct (=> (! (and %lbl%+7050 true) :lblpos +7050) (=> (< (U_2_int (MapType0Select (MapType1Select SecMask@24 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.keys) perm$R)) 0) (=> (and
(= SecMask@25 (MapType1Store SecMask@24 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.keys (MapType0Store (MapType1Select SecMask@24 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.keys) perm$R (int_2_U 0))))
(= SecMask@26 SecMask@25)) anon34_correct)))))
(let ((anon59_Then_correct (=> (! (and %lbl%+7048 true) :lblpos +7048) (=> (and
(not (= (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) null))
(= SecMask@24 (MapType1Store SecMask@23 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.keys (MapType0Store (MapType1Select SecMask@23 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.keys) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select SecMask@23 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.keys) perm$R)) (Fractions 50))))))) (and
anon60_Then_correct
anon60_Else_correct)))))
(let ((anon31_correct (=> (! (and %lbl%+7041 true) :lblpos +7041) (and
anon59_Then_correct
anon59_Else_correct))))
(let ((anon57_Else_correct (=> (! (and %lbl%+7035 true) :lblpos +7035) (=> (and
(= (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) null)
(= SecMask@23 SecMask@19)) anon31_correct))))
(let ((anon30_correct (=> (! (and %lbl%+7033 true) :lblpos +7033) (=> (wf |exhaleHeap#_16@0| SecMask@22 SecMask@22) (=> (and
(wf |exhaleHeap#_16@0| Mask@2@@0 SecMask@22)
(= SecMask@23 SecMask@22)) (and
anon59_Then_correct
anon59_Else_correct))))))
(let ((anon58_Else_correct (=> (! (and %lbl%+7031 true) :lblpos +7031) (=> (and
(<= 0 (U_2_int (MapType0Select (MapType1Select SecMask@20 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.height) perm$R)))
(= SecMask@22 SecMask@20)) anon30_correct))))
(let ((anon58_Then_correct (=> (! (and %lbl%+7029 true) :lblpos +7029) (=> (< (U_2_int (MapType0Select (MapType1Select SecMask@20 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.height) perm$R)) 0) (=> (and
(= SecMask@21 (MapType1Store SecMask@20 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.height (MapType0Store (MapType1Select SecMask@20 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.height) perm$R (int_2_U 0))))
(= SecMask@22 SecMask@21)) anon30_correct)))))
(let ((anon57_Then_correct (=> (! (and %lbl%+7027 true) :lblpos +7027) (=> (and
(not (= (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) null))
(= SecMask@20 (MapType1Store SecMask@19 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.height (MapType0Store (MapType1Select SecMask@19 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.height) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select SecMask@19 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.height) perm$R)) (Fractions 50))))))) (and
anon58_Then_correct
anon58_Else_correct)))))
(let ((anon27_correct (=> (! (and %lbl%+7020 true) :lblpos +7020) (and
anon57_Then_correct
anon57_Else_correct))))
(let ((anon55_Else_correct (=> (! (and %lbl%+7014 true) :lblpos +7014) (=> (and
(= (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) null)
(= SecMask@19 SecMask@15)) anon27_correct))))
(let ((anon26_correct (=> (! (and %lbl%+7012 true) :lblpos +7012) (=> (wf |exhaleHeap#_16@0| SecMask@18 SecMask@18) (=> (and
(wf |exhaleHeap#_16@0| Mask@2@@0 SecMask@18)
(= SecMask@19 SecMask@18)) (and
anon57_Then_correct
anon57_Else_correct))))))
(let ((anon56_Else_correct (=> (! (and %lbl%+7010 true) :lblpos +7010) (=> (and
(<= 0 (U_2_int (MapType0Select (MapType1Select SecMask@16 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.valid) perm$R)))
(= SecMask@18 SecMask@16)) anon26_correct))))
(let ((anon56_Then_correct (=> (! (and %lbl%+7008 true) :lblpos +7008) (=> (< (U_2_int (MapType0Select (MapType1Select SecMask@16 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.valid) perm$R)) 0) (=> (and
(= SecMask@17 (MapType1Store SecMask@16 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.valid (MapType0Store (MapType1Select SecMask@16 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.valid) perm$R (int_2_U 0))))
(= SecMask@18 SecMask@17)) anon26_correct)))))
(let ((anon55_Then_correct (=> (! (and %lbl%+7006 true) :lblpos +7006) (=> (and
(not (= (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) null))
(= SecMask@16 (MapType1Store SecMask@15 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.valid (MapType0Store (MapType1Select SecMask@15 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.valid) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select SecMask@15 (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.valid) perm$R)) (Fractions 100))))))) (and
anon56_Then_correct
anon56_Else_correct)))))
(let ((anon23_correct (=> (! (and %lbl%+6999 true) :lblpos +6999) (=> (and
(wf |exhaleHeap#_16@0| SecMask@15 SecMask@15)
(wf |exhaleHeap#_16@0| Mask@2@@0 SecMask@15)) (and
anon55_Then_correct
anon55_Else_correct)))))
(let ((anon54_Else_correct (=> (! (and %lbl%+6993 true) :lblpos +6993) (=> (and
(<= 0 (U_2_int (MapType0Select (MapType1Select SecMask@13 this@@0 AVLTree.keys) perm$R)))
(= SecMask@15 SecMask@13)) anon23_correct))))
(let ((anon54_Then_correct (=> (! (and %lbl%+6991 true) :lblpos +6991) (=> (< (U_2_int (MapType0Select (MapType1Select SecMask@13 this@@0 AVLTree.keys) perm$R)) 0) (=> (and
(= SecMask@14 (MapType1Store SecMask@13 this@@0 AVLTree.keys (MapType0Store (MapType1Select SecMask@13 this@@0 AVLTree.keys) perm$R (int_2_U 0))))
(= SecMask@15 SecMask@14)) anon23_correct)))))
(let ((anon21_correct (=> (! (and %lbl%+6989 true) :lblpos +6989) (=> (wf |exhaleHeap#_16@0| SecMask@12 SecMask@12) (=> (and
(wf |exhaleHeap#_16@0| Mask@2@@0 SecMask@12)
(= SecMask@13 (MapType1Store SecMask@12 this@@0 AVLTree.keys (MapType0Store (MapType1Select SecMask@12 this@@0 AVLTree.keys) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select SecMask@12 this@@0 AVLTree.keys) perm$R)) (Fractions 50))))))) (and
anon54_Then_correct
anon54_Else_correct))))))
(let ((anon53_Else_correct (=> (! (and %lbl%+6982 true) :lblpos +6982) (=> (and
(<= 0 (U_2_int (MapType0Select (MapType1Select SecMask@10 this@@0 AVLTree.root) perm$R)))
(= SecMask@12 SecMask@10)) anon21_correct))))
(let ((anon53_Then_correct (=> (! (and %lbl%+6980 true) :lblpos +6980) (=> (< (U_2_int (MapType0Select (MapType1Select SecMask@10 this@@0 AVLTree.root) perm$R)) 0) (=> (and
(= SecMask@11 (MapType1Store SecMask@10 this@@0 AVLTree.root (MapType0Store (MapType1Select SecMask@10 this@@0 AVLTree.root) perm$R (int_2_U 0))))
(= SecMask@12 SecMask@11)) anon21_correct)))))
(let ((anon19_correct (=> (! (and %lbl%+6978 true) :lblpos +6978) (=> (= SecMask@10 (MapType1Store SecMask@9 this@@0 AVLTree.root (MapType0Store (MapType1Select SecMask@9 this@@0 AVLTree.root) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select SecMask@9 this@@0 AVLTree.root) perm$R)) (Fractions 100)))))) (and
anon53_Then_correct
anon53_Else_correct)))))
(let ((anon52_Else_correct (=> (! (and %lbl%+6971 true) :lblpos +6971) (=> (not (= (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) null)) anon19_correct))))
(let ((anon52_Then_correct (=> (! (and %lbl%+6969 true) :lblpos +6969) (=> (and
(= (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) null)
(|Seq#Equal| (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.keys) (|Seq#Empty| intType))) anon19_correct))))
(let ((anon17_correct (=> (! (and %lbl%+6967 true) :lblpos +6967) (and
anon52_Then_correct
anon52_Else_correct))))
(let ((anon51_Else_correct (=> (! (and %lbl%+6960 true) :lblpos +6960) (=> (= (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) null) anon17_correct))))
(let ((anon51_Then_correct (=> (! (and %lbl%+6958 true) :lblpos +6958) (=> (and
(not (= (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) null))
(|Seq#Equal| (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.keys) (MapType2Select |exhaleHeap#_16@0| (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.root) AVLTreeNode.keys))) (and
anon52_Then_correct
anon52_Else_correct)))))
(let ((anon50_Then_correct (=> (! (and %lbl%+6956 true) :lblpos +6956) (=> (or
false
(and
(= |predVer#_13@0| (U_2_int (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.valid)))
(= this@@0 this@@0)
true
true)) (and
anon51_Then_correct
anon51_Else_correct)))))
(let ((anon14_correct (=> (! (and %lbl%+6950 true) :lblpos +6950) (=> (IsGoodExhaleState |exhaleHeap#_16@0| Heap@1 |exhaleMask#_17@9| SecMask@9) (=> (and
(IsGoodMask |exhaleMask#_17@9|)
(wf |exhaleHeap#_16@0| |exhaleMask#_17@9| SecMask@9)) (=> (and
(not (= this@@0 null))
(wf |exhaleHeap#_16@0| |exhaleMask#_17@9| SecMask@9)
(> (Fractions 100) 0)
(= Mask@2@@0 (MapType1Store |exhaleMask#_17@9| this@@0 AVLTree.valid (MapType0Store (MapType1Select |exhaleMask#_17@9| this@@0 AVLTree.valid) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@9| this@@0 AVLTree.valid) perm$R)) (Fractions 100))))))) (=> (and
(IsGoodMask Mask@2@@0)
(IsGoodState (heapFragment (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.valid)))
(wf |exhaleHeap#_16@0| Mask@2@@0 SecMask@9)
(wf |exhaleHeap#_16@0| Mask@2@@0 SecMask@9)
(IsGoodMask Mask@2@@0)
(wf |exhaleHeap#_16@0| Mask@2@@0 SecMask@9)
(= |predVer#_13@0| (U_2_int (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.valid)))
(wf |exhaleHeap#_16@0| Mask@2@@0 SecMask@9)) (and
(! (or %lbl%@1020349 (|Seq#Equal| (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.keys) (|Seq#Empty| intType))) :lblneg @1020349)
(=> (|Seq#Equal| (MapType2Select |exhaleHeap#_16@0| this@@0 AVLTree.keys) (|Seq#Empty| intType)) (and
(! (or %lbl%@1020360 (> (Fractions 100) 0)) :lblneg @1020360)
(=> (> (Fractions 100) 0) (and
(! (or %lbl%@1020368 (and
(<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@2@@0 this@@0 AVLTree.valid) perm$R)))
(=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@2@@0 this@@0 AVLTree.valid) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select Mask@2@@0 this@@0 AVLTree.valid) perm$N)))))) :lblneg @1020368)
(=> (and
(<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@2@@0 this@@0 AVLTree.valid) perm$R)))
(=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@2@@0 this@@0 AVLTree.valid) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select Mask@2@@0 this@@0 AVLTree.valid) perm$N))))) (=> (= |exhaleMask#_25@0| (MapType1Store Mask@2@@0 this@@0 AVLTree.valid (MapType0Store (MapType1Select Mask@2@@0 this@@0 AVLTree.valid) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select Mask@2@@0 this@@0 AVLTree.valid) perm$R)) (Fractions 100)))))) (and
anon50_Then_correct
anon50_Else_correct)))))))))))))))
(let ((anon49_Else_correct (=> (! (and %lbl%+6943 true) :lblpos +6943) (=> (= (MapType2Select Heap@1 this@@0 AVLTree.root) null) (=> (and
(= SecMask@9 SecMask@7)
(= |exhaleMask#_17@9| |exhaleMask#_17@7|)) anon14_correct)))))
(let ((anon49_Then_correct (=> (! (and %lbl%+6941 true) :lblpos +6941) (=> (not (= (MapType2Select Heap@1 this@@0 AVLTree.root) null)) (and
(! (or %lbl%@1019969 (> (Fractions 50) 0)) :lblneg @1019969)
(=> (> (Fractions 50) 0) (and
(! (or %lbl%@1019977 (and
(<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@7| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.balanceFactor) perm$R)))
(=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@7| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.balanceFactor) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@7| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.balanceFactor) perm$N)))))) :lblneg @1019977)
(=> (and
(<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@7| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.balanceFactor) perm$R)))
(=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@7| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.balanceFactor) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@7| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.balanceFactor) perm$N))))) (=> (and
(= |exhaleMask#_17@8| (MapType1Store |exhaleMask#_17@7| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.balanceFactor (MapType0Store (MapType1Select |exhaleMask#_17@7| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.balanceFactor) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@7| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.balanceFactor) perm$R)) (Fractions 50))))))
(> (Fractions 50) 0)
(= SecMask@8 (MapType1Store SecMask@7 (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.balanceFactor (MapType0Store (MapType1Select SecMask@7 (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.balanceFactor) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select SecMask@7 (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.balanceFactor) perm$R)) (Fractions 50))))))
(IsGoodMask |exhaleMask#_17@8|)
(wf Heap@1 |exhaleMask#_17@8| SecMask@8)
(wf Heap@1 Mask@1@@0 SecMask@8)
(= SecMask@9 SecMask@8)
(= |exhaleMask#_17@9| |exhaleMask#_17@8|)) anon14_correct)))))))))
(let ((anon12_correct (=> (! (and %lbl%+6939 true) :lblpos +6939) (and
anon49_Then_correct
anon49_Else_correct))))
(let ((anon48_Else_correct (=> (! (and %lbl%+6933 true) :lblpos +6933) (=> (= (MapType2Select Heap@1 this@@0 AVLTree.root) null) (=> (and
(= SecMask@7 SecMask@5)
(= |exhaleMask#_17@7| |exhaleMask#_17@5|)) anon12_correct)))))
(let ((anon48_Then_correct (=> (! (and %lbl%+6931 true) :lblpos +6931) (=> (not (= (MapType2Select Heap@1 this@@0 AVLTree.root) null)) (and
(! (or %lbl%@1019716 (> (Fractions 50) 0)) :lblneg @1019716)
(=> (> (Fractions 50) 0) (and
(! (or %lbl%@1019724 (and
(<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@5| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.keys) perm$R)))
(=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@5| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.keys) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@5| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.keys) perm$N)))))) :lblneg @1019724)
(=> (and
(<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@5| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.keys) perm$R)))
(=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@5| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.keys) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@5| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.keys) perm$N))))) (=> (and
(= |exhaleMask#_17@6| (MapType1Store |exhaleMask#_17@5| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.keys (MapType0Store (MapType1Select |exhaleMask#_17@5| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.keys) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@5| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.keys) perm$R)) (Fractions 50))))))
(> (Fractions 50) 0)
(= SecMask@6 (MapType1Store SecMask@5 (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.keys (MapType0Store (MapType1Select SecMask@5 (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.keys) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select SecMask@5 (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.keys) perm$R)) (Fractions 50))))))
(IsGoodMask |exhaleMask#_17@6|)
(wf Heap@1 |exhaleMask#_17@6| SecMask@6)
(wf Heap@1 Mask@1@@0 SecMask@6)
(= SecMask@7 SecMask@6)
(= |exhaleMask#_17@7| |exhaleMask#_17@6|)) (and
anon49_Then_correct
anon49_Else_correct))))))))))
(let ((anon10_correct (=> (! (and %lbl%+6929 true) :lblpos +6929) (and
anon48_Then_correct
anon48_Else_correct))))
(let ((anon47_Else_correct (=> (! (and %lbl%+6923 true) :lblpos +6923) (=> (= (MapType2Select Heap@1 this@@0 AVLTree.root) null) (=> (and
(= SecMask@5 SecMask@3)
(= |exhaleMask#_17@5| |exhaleMask#_17@3|)) anon10_correct)))))
(let ((anon47_Then_correct (=> (! (and %lbl%+6921 true) :lblpos +6921) (=> (not (= (MapType2Select Heap@1 this@@0 AVLTree.root) null)) (and
(! (or %lbl%@1019463 (> (Fractions 50) 0)) :lblneg @1019463)
(=> (> (Fractions 50) 0) (and
(! (or %lbl%@1019471 (and
(<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@3| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.height) perm$R)))
(=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@3| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.height) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@3| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.height) perm$N)))))) :lblneg @1019471)
(=> (and
(<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@3| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.height) perm$R)))
(=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@3| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.height) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@3| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.height) perm$N))))) (=> (and
(= |exhaleMask#_17@4| (MapType1Store |exhaleMask#_17@3| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.height (MapType0Store (MapType1Select |exhaleMask#_17@3| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.height) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@3| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.height) perm$R)) (Fractions 50))))))
(> (Fractions 50) 0)
(= SecMask@4 (MapType1Store SecMask@3 (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.height (MapType0Store (MapType1Select SecMask@3 (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.height) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select SecMask@3 (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.height) perm$R)) (Fractions 50))))))
(IsGoodMask |exhaleMask#_17@4|)
(wf Heap@1 |exhaleMask#_17@4| SecMask@4)
(wf Heap@1 Mask@1@@0 SecMask@4)
(= SecMask@5 SecMask@4)
(= |exhaleMask#_17@5| |exhaleMask#_17@4|)) (and
anon48_Then_correct
anon48_Else_correct))))))))))
(let ((anon8_correct (=> (! (and %lbl%+6919 true) :lblpos +6919) (and
anon47_Then_correct
anon47_Else_correct))))
(let ((anon45_Else_correct (=> (! (and %lbl%+6913 true) :lblpos +6913) (=> (= (MapType2Select Heap@1 this@@0 AVLTree.root) null) (=> (and
(= SecMask@3 SecMask@1)
(= |exhaleMask#_17@3| |exhaleMask#_17@1|)) anon8_correct)))))
(let ((anon7_correct (=> (! (and %lbl%+6911 true) :lblpos +6911) (=> (IsGoodMask |exhaleMask#_17@2|) (=> (and
(wf Heap@1 |exhaleMask#_17@2| SecMask@2)
(wf Heap@1 Mask@1@@0 SecMask@2)
(= SecMask@3 SecMask@2)
(= |exhaleMask#_17@3| |exhaleMask#_17@2|)) (and
anon47_Then_correct
anon47_Else_correct))))))
(let ((anon46_Else_correct (=> (! (and %lbl%+6909 true) :lblpos +6909) (=> (CanRead |exhaleMask#_17@2| SecMask@2 (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.valid) anon7_correct))))
(let ((anon46_Then_correct (=> (! (and %lbl%+6907 true) :lblpos +6907) (=> (and
(not (CanRead |exhaleMask#_17@2| SecMask@2 (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.valid))
(< (U_2_int (MapType2Select Heap@1 (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.valid)) (U_2_int (MapType2Select |exhaleHeap#_16@0| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.valid)))) anon7_correct))))
(let ((anon45_Then_correct (=> (! (and %lbl%+6905 true) :lblpos +6905) (=> (not (= (MapType2Select Heap@1 this@@0 AVLTree.root) null)) (and
(! (or %lbl%@1019156 (> (Fractions 100) 0)) :lblneg @1019156)
(=> (> (Fractions 100) 0) (and
(! (or %lbl%@1019164 (and
(<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@1| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.valid) perm$R)))
(=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@1| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.valid) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@1| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.valid) perm$N)))))) :lblneg @1019164)
(=> (and
(<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@1| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.valid) perm$R)))
(=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@1| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.valid) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@1| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.valid) perm$N))))) (=> (= |exhaleMask#_17@2| (MapType1Store |exhaleMask#_17@1| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.valid (MapType0Store (MapType1Select |exhaleMask#_17@1| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.valid) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@1| (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.valid) perm$R)) (Fractions 100)))))) (=> (and
(> (Fractions 100) 0)
(= SecMask@2 (MapType1Store SecMask@1 (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.valid (MapType0Store (MapType1Select SecMask@1 (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.valid) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select SecMask@1 (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.valid) perm$R)) (Fractions 100))))))) (and
anon46_Then_correct
anon46_Else_correct)))))))))))
(let ((anon4_correct (=> (! (and %lbl%+6899 true) :lblpos +6899) (and
(! (or %lbl%@1018811 (> (Fractions 100) 0)) :lblneg @1018811)
(=> (> (Fractions 100) 0) (and
(! (or %lbl%@1018819 (and
(<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@1@@0 this@@0 AVLTree.root) perm$R)))
(=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@1@@0 this@@0 AVLTree.root) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select Mask@1@@0 this@@0 AVLTree.root) perm$N)))))) :lblneg @1018819)
(=> (and
(<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@1@@0 this@@0 AVLTree.root) perm$R)))
(=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@1@@0 this@@0 AVLTree.root) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select Mask@1@@0 this@@0 AVLTree.root) perm$N))))) (=> (and
(= |exhaleMask#_17@0| (MapType1Store Mask@1@@0 this@@0 AVLTree.root (MapType0Store (MapType1Select Mask@1@@0 this@@0 AVLTree.root) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select Mask@1@@0 this@@0 AVLTree.root) perm$R)) (Fractions 100))))))
(> (Fractions 100) 0)) (=> (and
(= SecMask@0 (MapType1Store ZeroMask this@@0 AVLTree.root (MapType0Store (MapType1Select ZeroMask this@@0 AVLTree.root) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select ZeroMask this@@0 AVLTree.root) perm$R)) (Fractions 100))))))
(IsGoodMask |exhaleMask#_17@0|)
(wf Heap@1 |exhaleMask#_17@0| SecMask@0)
(wf Heap@1 Mask@1@@0 SecMask@0)) (and
(! (or %lbl%@1018977 (> (Fractions 50) 0)) :lblneg @1018977)
(=> (> (Fractions 50) 0) (and
(! (or %lbl%@1018985 (and
(<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@0| this@@0 AVLTree.keys) perm$R)))
(=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@0| this@@0 AVLTree.keys) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@0| this@@0 AVLTree.keys) perm$N)))))) :lblneg @1018985)
(=> (and
(<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@0| this@@0 AVLTree.keys) perm$R)))
(=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@0| this@@0 AVLTree.keys) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@0| this@@0 AVLTree.keys) perm$N))))) (=> (and
(= |exhaleMask#_17@1| (MapType1Store |exhaleMask#_17@0| this@@0 AVLTree.keys (MapType0Store (MapType1Select |exhaleMask#_17@0| this@@0 AVLTree.keys) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select |exhaleMask#_17@0| this@@0 AVLTree.keys) perm$R)) (Fractions 50))))))
(> (Fractions 50) 0)) (=> (and
(= SecMask@1 (MapType1Store SecMask@0 this@@0 AVLTree.keys (MapType0Store (MapType1Select SecMask@0 this@@0 AVLTree.keys) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select SecMask@0 this@@0 AVLTree.keys) perm$R)) (Fractions 50))))))
(IsGoodMask |exhaleMask#_17@1|)
(wf Heap@1 |exhaleMask#_17@1| SecMask@1)
(wf Heap@1 Mask@1@@0 SecMask@1)) (and
anon45_Then_correct
anon45_Else_correct))))))))))))))))
(let ((anon44_Else_correct (=> (! (and %lbl%+6893 true) :lblpos +6893) (=> (not (= (MapType2Select Heap@1 this@@0 AVLTree.root) null)) anon4_correct))))
(let ((anon44_Then_correct (=> (! (and %lbl%+6891 true) :lblpos +6891) (=> (= (MapType2Select Heap@1 this@@0 AVLTree.root) null) (and
(! (or %lbl%@1018789 (|Seq#Equal| (MapType2Select Heap@1 this@@0 AVLTree.keys) (|Seq#Empty| intType))) :lblneg @1018789)
(=> (|Seq#Equal| (MapType2Select Heap@1 this@@0 AVLTree.keys) (|Seq#Empty| intType)) anon4_correct))))))
(let ((anon2_correct (=> (! (and %lbl%+6889 true) :lblpos +6889) (and
anon44_Then_correct
anon44_Else_correct))))
(let ((anon43_Else_correct (=> (! (and %lbl%+6882 true) :lblpos +6882) (=> (= (MapType2Select Heap@1 this@@0 AVLTree.root) null) anon2_correct))))
(let ((anon43_Then_correct (=> (! (and %lbl%+6880 true) :lblpos +6880) (=> (not (= (MapType2Select Heap@1 this@@0 AVLTree.root) null)) (and
(! (or %lbl%@1018746 (|Seq#Equal| (MapType2Select Heap@1 this@@0 AVLTree.keys) (MapType2Select Heap@1 (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.keys))) :lblneg @1018746)
(=> (|Seq#Equal| (MapType2Select Heap@1 this@@0 AVLTree.keys) (MapType2Select Heap@1 (MapType2Select Heap@1 this@@0 AVLTree.root) AVLTreeNode.keys)) (and
anon44_Then_correct
anon44_Else_correct)))))))
(let ((anon0_correct@@0 (=> (! (and %lbl%+6878 true) :lblpos +6878) (=> (and
(< 0 |methodK#_11@@0|)
(< (* 1000 |methodK#_11@@0|) (Fractions 1))
(= CurrentModule |module#default|)) (=> (and
CanAssumeFunctionDefs
(not (= this@@0 null))
(wf Heap ZeroMask ZeroMask)
(or
(= (MapType2Select Heap this@@0 AVLTree.root) null)
(= (dtype (MapType2Select Heap this@@0 AVLTree.root)) |AVLTreeNode#t|))
(> (Fractions 100) 0)
(= Mask@0@@0 (MapType1Store ZeroMask this@@0 AVLTree.root (MapType0Store (MapType1Select ZeroMask this@@0 AVLTree.root) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select ZeroMask this@@0 AVLTree.root) perm$R)) (Fractions 100))))))
(IsGoodMask Mask@0@@0)
(IsGoodState (heapFragment (MapType2Select Heap this@@0 AVLTree.root)))) (=> (and
(wf Heap Mask@0@@0 ZeroMask)
(wf Heap Mask@0@@0 ZeroMask)
(not (= this@@0 null))
(wf Heap Mask@0@@0 ZeroMask)
(> (Fractions 100) 0)
(= Mask@1@@0 (MapType1Store Mask@0@@0 this@@0 AVLTree.keys (MapType0Store (MapType1Select Mask@0@@0 this@@0 AVLTree.keys) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select Mask@0@@0 this@@0 AVLTree.keys) perm$R)) (Fractions 100))))))
(IsGoodMask Mask@1@@0)
(IsGoodState (heapFragment (MapType2Select Heap this@@0 AVLTree.keys)))
(wf Heap Mask@1@@0 ZeroMask)
(wf Heap Mask@1@@0 ZeroMask)
(IsGoodMask Mask@1@@0)
(wf Heap Mask@1@@0 ZeroMask)
(= Heap Heap)
(= Mask@1@@0 Mask)
(= ZeroMask SecMask)
(= ZeroCredits Credits)) (and
(! (or %lbl%@1018629 (CanWrite Mask@1@@0 this@@0 AVLTree.root)) :lblneg @1018629)
(=> (CanWrite Mask@1@@0 this@@0 AVLTree.root) (=> (and
(= Heap@0@@0 (MapType2Store Heap this@@0 AVLTree.root null))
(wf Heap@0@@0 Mask@1@@0 ZeroMask)) (and
(! (or %lbl%@1018658 (CanWrite Mask@1@@0 this@@0 AVLTree.keys)) :lblneg @1018658)
(=> (CanWrite Mask@1@@0 this@@0 AVLTree.keys) (=> (= Heap@1 (MapType2Store Heap@0@@0 this@@0 AVLTree.keys (|Seq#Empty| intType))) (=> (and
(wf Heap@1 Mask@1@@0 ZeroMask)
(|#AVLTree.valid#trigger| this@@0)) (=> (and
(< 0 |foldK#_15|)
(< (* 1000 |foldK#_15|) (Fractions 1))
(< (* 1000 |foldK#_15|) |methodK#_11@@0|)) (and
(! (or %lbl%@1018722 (not (= this@@0 null))) :lblneg @1018722)
(=> (not (= this@@0 null)) (and
anon43_Then_correct
anon43_Else_correct)))))))))))))))))
(let ((PreconditionGeneratedEntry_correct@@0 (=> (! (and %lbl%+1018189 true) :lblpos +1018189) (=> (IsGoodMask Mask) (=> (and
(IsGoodMask SecMask)
(or
(= this@@0 null)
(= (dtype this@@0) |AVLTree#t|))
(not (= this@@0 null))
(wf Heap Mask SecMask)) anon0_correct@@0)))))
PreconditionGeneratedEntry_correct@@0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
