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
(declare-fun |exhaleMask#_95@0| () T@U)
(declare-fun |exhaleHeap#_86@0| () T@U)
(declare-fun SecMask@32 () T@U)
(declare-fun Mask@29 () T@U)
(declare-fun this () T@U)
(declare-fun |exhaleMask#_95@1| () T@U)
(declare-fun |exhaleHeap#_94@0| () T@U)
(declare-fun Heap () T@U)
(declare-fun SecMask@9 () T@U)
(declare-fun SecMask@31 () T@U)
(declare-fun SecMask@27 () T@U)
(declare-fun SecMask@30 () T@U)
(declare-fun SecMask@28 () T@U)
(declare-fun SecMask@29 () T@U)
(declare-fun SecMask@23 () T@U)
(declare-fun SecMask@26 () T@U)
(declare-fun SecMask@24 () T@U)
(declare-fun SecMask@25 () T@U)
(declare-fun SecMask@19 () T@U)
(declare-fun SecMask@22 () T@U)
(declare-fun SecMask@20 () T@U)
(declare-fun SecMask@21 () T@U)
(declare-fun SecMask@15 () T@U)
(declare-fun SecMask@18 () T@U)
(declare-fun SecMask@16 () T@U)
(declare-fun SecMask@17 () T@U)
(declare-fun SecMask@13 () T@U)
(declare-fun SecMask@14 () T@U)
(declare-fun SecMask@12 () T@U)
(declare-fun SecMask@10 () T@U)
(declare-fun SecMask@11 () T@U)
(declare-fun Heap@5 () T@U)
(declare-fun |exhaleMask#_87@9| () T@U)
(declare-fun heapFragment (T@U) T@U)
(declare-fun |exhaleMask#_87@7| () T@U)
(declare-fun |exhaleMask#_87@8| () T@U)
(declare-fun SecMask@8 () T@U)
(declare-fun SecMask@7 () T@U)
(declare-fun Mask@28 () T@U)
(declare-fun |exhaleMask#_87@5| () T@U)
(declare-fun |exhaleMask#_87@6| () T@U)
(declare-fun SecMask@6 () T@U)
(declare-fun SecMask@5 () T@U)
(declare-fun |exhaleMask#_87@3| () T@U)
(declare-fun |exhaleMask#_87@4| () T@U)
(declare-fun SecMask@4 () T@U)
(declare-fun SecMask@3 () T@U)
(declare-fun SecMask@1 () T@U)
(declare-fun |exhaleMask#_87@1| () T@U)
(declare-fun |exhaleMask#_87@2| () T@U)
(declare-fun SecMask@2 () T@U)
(declare-fun |exhaleMask#_87@0| () T@U)
(declare-fun SecMask@0 () T@U)
(declare-fun Heap@4 () T@U)
(declare-fun |nw#_53@0| () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Mask@12 () T@U)
(declare-fun Heap@1 () T@U)
(declare-fun Mask@13 () T@U)
(declare-fun Mask@14 () T@U)
(declare-fun Mask@15 () T@U)
(declare-fun Mask@16 () T@U)
(declare-fun Mask@17 () T@U)
(declare-fun Mask@18 () T@U)
(declare-fun Mask@19 () T@U)
(declare-fun |exhaleMask#_60@0| () T@U)
(declare-fun |exhaleMask#_60@1| () T@U)
(declare-fun |exhaleMask#_60@2| () T@U)
(declare-fun |exhaleMask#_60@3| () T@U)
(declare-fun |exhaleMask#_60@4| () T@U)
(declare-fun |exhaleMask#_60@5| () T@U)
(declare-fun |exhaleHeap#_59@0| () T@U)
(declare-fun Mask@20 () T@U)
(declare-fun Mask@21 () T@U)
(declare-fun Mask@22 () T@U)
(declare-fun Mask@23 () T@U)
(declare-fun Heap@2 () T@U)
(declare-fun Mask@27 () T@U)
(declare-fun |exhaleHeap#_74@0| () T@U)
(declare-fun Heap@3 () T@U)
(declare-fun |r#122@0| () T@U)
(declare-fun |this#120@0| () T@U)
(declare-fun |exhaleMask#_75@0| () T@U)
(declare-fun |exhaleMask#_75@1| () T@U)
(declare-fun |exhaleMask#_75@2| () T@U)
(declare-fun |exhaleMask#_75@3| () T@U)
(declare-fun Mask@24 () T@U)
(declare-fun Mask@25 () T@U)
(declare-fun Mask@26 () T@U)
(declare-fun Mask@10 () T@U)
(declare-fun Mask@11 () T@U)
(declare-fun Mask@8 () T@U)
(declare-fun Mask@9 () T@U)
(declare-fun Mask@6 () T@U)
(declare-fun Mask@7 () T@U)
(declare-fun Mask@4 () T@U)
(declare-fun Mask@5 () T@U)
(declare-fun Mask@2 () T@U)
(declare-fun Mask@3 () T@U)
(declare-fun Heap@0 () T@U)
(declare-fun CurrentModule () T@U)
(declare-fun Mask@0 () T@U)
(declare-fun Mask@1 () T@U)
(declare-fun Mask () T@U)
(declare-fun SecMask () T@U)
(declare-fun Credits () T@U)
(declare-fun |n#2| () T@U)
(declare-fun |this#118| () T@U)
(declare-fun |this#120| () T@U)
(declare-fun |r#122| () T@U)
(declare-fun |r#75| () T@U)
(declare-fun %lbl%+13960 () Bool)
(declare-fun %lbl%@1028789 () Bool)
(declare-fun %lbl%@1028797 () Bool)
(declare-fun %lbl%@1028923 () Bool)
(declare-fun %lbl%@1028989 () Bool)
(declare-fun %lbl%+13958 () Bool)
(declare-fun %lbl%+13956 () Bool)
(declare-fun %lbl%+13946 () Bool)
(declare-fun %lbl%+13942 () Bool)
(declare-fun %lbl%+13940 () Bool)
(declare-fun %lbl%+13938 () Bool)
(declare-fun %lbl%+13936 () Bool)
(declare-fun %lbl%+13944 () Bool)
(declare-fun %lbl%+13921 () Bool)
(declare-fun %lbl%+13919 () Bool)
(declare-fun %lbl%+13917 () Bool)
(declare-fun %lbl%+13915 () Bool)
(declare-fun %lbl%+13923 () Bool)
(declare-fun %lbl%+13900 () Bool)
(declare-fun %lbl%+13898 () Bool)
(declare-fun %lbl%+13896 () Bool)
(declare-fun %lbl%+13894 () Bool)
(declare-fun %lbl%+13902 () Bool)
(declare-fun %lbl%+13879 () Bool)
(declare-fun %lbl%+13877 () Bool)
(declare-fun %lbl%+13875 () Bool)
(declare-fun %lbl%+13873 () Bool)
(declare-fun %lbl%+13881 () Bool)
(declare-fun %lbl%+13866 () Bool)
(declare-fun %lbl%+13860 () Bool)
(declare-fun %lbl%+13858 () Bool)
(declare-fun %lbl%+13856 () Bool)
(declare-fun %lbl%+13849 () Bool)
(declare-fun %lbl%+13847 () Bool)
(declare-fun %lbl%+13845 () Bool)
(declare-fun %lbl%+13838 () Bool)
(declare-fun %lbl%+13836 () Bool)
(declare-fun %lbl%+13827 () Bool)
(declare-fun %lbl%+13825 () Bool)
(declare-fun %lbl%+13823 () Bool)
(declare-fun |predVer#_83@0| () Int)
(declare-fun |cond#_52@0| () Bool)
(declare-fun %lbl%+13948 () Bool)
(declare-fun %lbl%+13817 () Bool)
(declare-fun %lbl%@1027379 () Bool)
(declare-fun |k#0| () Int)
(declare-fun %lbl%@1027390 () Bool)
(declare-fun %lbl%@1027436 () Bool)
(declare-fun %lbl%@1027499 () Bool)
(declare-fun %lbl%@1027507 () Bool)
(declare-fun %lbl%+13810 () Bool)
(declare-fun %lbl%+13808 () Bool)
(declare-fun %lbl%@1026999 () Bool)
(declare-fun %lbl%@1027007 () Bool)
(declare-fun %lbl%+13800 () Bool)
(declare-fun %lbl%+13798 () Bool)
(declare-fun %lbl%@1026746 () Bool)
(declare-fun %lbl%@1026754 () Bool)
(declare-fun %lbl%+13790 () Bool)
(declare-fun %lbl%+13788 () Bool)
(declare-fun %lbl%@1026493 () Bool)
(declare-fun %lbl%@1026501 () Bool)
(declare-fun %lbl%+13778 () Bool)
(declare-fun %lbl%+13776 () Bool)
(declare-fun %lbl%+13774 () Bool)
(declare-fun %lbl%+13772 () Bool)
(declare-fun %lbl%@1026186 () Bool)
(declare-fun %lbl%@1026194 () Bool)
(declare-fun %lbl%+13780 () Bool)
(declare-fun %lbl%+13766 () Bool)
(declare-fun %lbl%@1025841 () Bool)
(declare-fun %lbl%@1025849 () Bool)
(declare-fun %lbl%@1026007 () Bool)
(declare-fun %lbl%@1026015 () Bool)
(declare-fun %lbl%+13760 () Bool)
(declare-fun %lbl%+13758 () Bool)
(declare-fun %lbl%@1025819 () Bool)
(declare-fun %lbl%+13749 () Bool)
(declare-fun %lbl%+13747 () Bool)
(declare-fun %lbl%@1025776 () Bool)
(declare-fun %lbl%+13745 () Bool)
(declare-fun %lbl%@1025624 () Bool)
(declare-fun %lbl%@1025631 () Bool)
(declare-fun %lbl%@1025641 () Bool)
(declare-fun %lbl%@1025653 () Bool)
(declare-fun %lbl%@1025668 () Bool)
(declare-fun |#AVLTree.valid#trigger| (T@U) Bool)
(declare-fun |foldK#_85| () Int)
(declare-fun |methodK#_37| () Int)
(declare-fun %lbl%@1025752 () Bool)
(declare-fun %lbl%+13739 () Bool)
(declare-fun %lbl%@1025579 () Bool)
(declare-fun %lbl%+13737 () Bool)
(declare-fun %lbl%+13735 () Bool)
(declare-fun %lbl%+13733 () Bool)
(declare-fun %lbl%+13726 () Bool)
(declare-fun %lbl%+13724 () Bool)
(declare-fun %lbl%+13716 () Bool)
(declare-fun %lbl%+13714 () Bool)
(declare-fun %lbl%+13712 () Bool)
(declare-fun %lbl%@1024617 () Bool)
(declare-fun %lbl%@1024625 () Bool)
(declare-fun %lbl%@1024727 () Bool)
(declare-fun %lbl%@1024735 () Bool)
(declare-fun %lbl%@1024837 () Bool)
(declare-fun %lbl%@1024845 () Bool)
(declare-fun %lbl%+13705 () Bool)
(declare-fun %lbl%+13703 () Bool)
(declare-fun %lbl%+13701 () Bool)
(declare-fun |methodCallK#_73| () Int)
(declare-fun %lbl%@1024423 () Bool)
(declare-fun %lbl%@1024433 () Bool)
(declare-fun %lbl%@1024445 () Bool)
(declare-fun %lbl%@1024477 () Bool)
(declare-fun %lbl%@1024485 () Bool)
(declare-fun %lbl%+13695 () Bool)
(declare-fun |methodCallK#_58| () Int)
(declare-fun %lbl%@1023281 () Bool)
(declare-fun %lbl%@1023296 () Bool)
(declare-fun %lbl%@1023304 () Bool)
(declare-fun %lbl%@1023406 () Bool)
(declare-fun %lbl%@1023414 () Bool)
(declare-fun %lbl%@1023516 () Bool)
(declare-fun %lbl%@1023524 () Bool)
(declare-fun %lbl%@1023626 () Bool)
(declare-fun %lbl%@1023634 () Bool)
(declare-fun %lbl%@1023736 () Bool)
(declare-fun %lbl%@1023744 () Bool)
(declare-fun %lbl%@1023846 () Bool)
(declare-fun %lbl%@1023854 () Bool)
(declare-fun %lbl%@1024348 () Bool)
(declare-fun %lbl%+13693 () Bool)
(declare-fun %lbl%@1022858 () Bool)
(declare-fun %lbl%@1022868 () Bool)
(declare-fun %lbl%+13686 () Bool)
(declare-fun %lbl%+13684 () Bool)
(declare-fun %lbl%+13675 () Bool)
(declare-fun %lbl%+13673 () Bool)
(declare-fun %lbl%+13665 () Bool)
(declare-fun %lbl%+13663 () Bool)
(declare-fun %lbl%+13655 () Bool)
(declare-fun %lbl%+13653 () Bool)
(declare-fun %lbl%+13645 () Bool)
(declare-fun %lbl%+13643 () Bool)
(declare-fun %lbl%+13635 () Bool)
(declare-fun %lbl%+13633 () Bool)
(declare-fun %lbl%+13631 () Bool)
(declare-fun %lbl%+13625 () Bool)
(declare-fun %lbl%+13623 () Bool)
(declare-fun |oldVers#_50@0| () Int)
(declare-fun |newVers#_51@0| () Int)
(declare-fun %lbl%+13615 () Bool)
(declare-fun %lbl%+13490 () Bool)
(declare-fun %lbl%+13484 () Bool)
(declare-fun CanAssumeFunctionDefs () Bool)
(declare-fun |unfoldK#_38| () Int)
(declare-fun %lbl%@1021777 () Bool)
(declare-fun %lbl%@1021783 () Bool)
(declare-fun %lbl%@1021791 () Bool)
(declare-fun %lbl%+1021092 () Bool)
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
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (Ctor PermissionComponentType) 3) (= (type perm$R) PermissionComponentType)) (= (type perm$N) PermissionComponentType)) (forall ((arg0@@5 T@T) ) (! (= (Ctor (FieldType arg0@@5)) 4)
 :qid |ctor:FieldType|
))) (forall ((arg0@@6 T@T) ) (! (= (FieldTypeInv0 (FieldType arg0@@6)) arg0@@6)
 :qid |typeInv:FieldTypeInv0|
 :pattern ( (FieldType arg0@@6))
))) (= (type joinable) (FieldType intType))) (= (Ctor TypeNameType) 5)) (= (type |token#t|) TypeNameType)) (= (type forkK) (FieldType intType))) (= (Ctor MuType) 6)) (= (type mu) (FieldType MuType))) (= (type held) (FieldType intType))) (= (type rdheld) (FieldType boolType))) (= (type |AVLTree#t|) TypeNameType)) (= (Ctor ModuleNameType) 7)) (= (type |module#default|) ModuleNameType)) (= (Ctor refType) 8)) (= (type AVLTree.root) (FieldType refType))) (forall ((arg0@@7 T@T) ) (! (= (Ctor (SeqType arg0@@7)) 9)
 :qid |ctor:SeqType|
))) (forall ((arg0@@8 T@T) ) (! (= (SeqTypeInv0 (SeqType arg0@@8)) arg0@@8)
 :qid |typeInv:SeqTypeInv0|
 :pattern ( (SeqType arg0@@8))
))) (= (type AVLTree.keys) (FieldType (SeqType intType)))) (= (type AVLTree.valid) (FieldType intType))) (= (type |AVLTreeNode#t|) TypeNameType)) (= (type AVLTreeNode.key) (FieldType intType))) (= (type AVLTreeNode.height) (FieldType intType))) (= (type AVLTreeNode.left) (FieldType refType))) (= (type AVLTreeNode.right) (FieldType refType))) (= (type AVLTreeNode.keys) (FieldType (SeqType intType)))) (= (type AVLTreeNode.balanceFactor) (FieldType intType))) (= (type AVLTreeNode.valid) (FieldType intType))))
(assert (distinct perm$R perm$N joinable |token#t| forkK mu held rdheld |AVLTree#t| |module#default| AVLTree.root AVLTree.keys AVLTree.valid |AVLTreeNode#t| AVLTreeNode.key AVLTreeNode.height AVLTreeNode.left AVLTreeNode.right AVLTreeNode.keys AVLTreeNode.balanceFactor AVLTreeNode.valid)
)
(assert (> Permission$denominator 0))
(assert  (and (and (and (and (and (and (and (forall ((arg0@@9 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@9 arg1)) 10)
 :qid |ctor:MapType0Type|
)) (forall ((arg0@@10 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@10 arg1@@0)) arg0@@10)
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
)))) (= (type Permission$Zero) (MapType0Type PermissionComponentType intType))))
(assert (= (U_2_int (MapType0Select Permission$Zero perm$R)) 0))
(assert (= (U_2_int (MapType0Select Permission$Zero perm$N)) 0))
(assert (= (type Permission$Full) (MapType0Type PermissionComponentType intType)))
(assert (= (U_2_int (MapType0Select Permission$Full perm$R)) Permission$FullFraction))
(assert (= (U_2_int (MapType0Select Permission$Full perm$N)) 0))
(assert  (and (and (and (and (and (and (and (forall ((arg0@@14 T@T) (arg1@@4 T@T) ) (! (= (Ctor (MapType1Type arg0@@14 arg1@@4)) 11)
 :qid |ctor:MapType1Type|
)) (forall ((arg0@@15 T@T) (arg1@@5 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@15 arg1@@5)) arg0@@15)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@15 arg1@@5))
))) (forall ((arg0@@16 T@T) (arg1@@6 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@16 arg1@@6)) arg1@@6)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@16 arg1@@6))
))) (forall ((arg0@@17 T@U) (arg1@@7 T@U) (arg2@@0 T@U) ) (! (let ((aVar1@@2 (MapType1TypeInv1 (type arg0@@17))))
(= (type (MapType1Select arg0@@17 arg1@@7 arg2@@0)) aVar1@@2))
 :qid |funType:MapType1Select|
 :pattern ( (MapType1Select arg0@@17 arg1@@7 arg2@@0))
))) (forall ((arg0@@18 T@U) (arg1@@8 T@U) (arg2@@1 T@U) (arg3 T@U) ) (! (let ((aVar1@@3 (type arg3)))
(let ((aVar0@@0 (type arg1@@8)))
(= (type (MapType1Store arg0@@18 arg1@@8 arg2@@1 arg3)) (MapType1Type aVar0@@0 aVar1@@3))))
 :qid |funType:MapType1Store|
 :pattern ( (MapType1Store arg0@@18 arg1@@8 arg2@@1 arg3))
))) (forall ((m@@2 T@U) (x0@@2 T@U) (x1 T@U) (val@@2 T@U) ) (! (let ((aVar1@@4 (MapType1TypeInv1 (type m@@2))))
 (=> (= (type val@@2) aVar1@@4) (= (MapType1Select (MapType1Store m@@2 x0@@2 x1 val@@2) x0@@2 x1) val@@2)))
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
)))) (= (type ZeroMask) (MapType1Type refType (MapType0Type PermissionComponentType intType)))))
(assert (forall ((o T@U) (f T@U) (pc T@U) ) (! (let ((T (FieldTypeInv0 (type f))))
 (=> (and (and (= (type o) refType) (= (type f) (FieldType T))) (= (type pc) PermissionComponentType)) (= (U_2_int (MapType0Select (MapType1Select ZeroMask o f) pc)) 0)))
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
(assert (forall ((x@@5 Int) (y@@1 Int) ) (!  (=> (and (<= 0 x@@5) (<= x@@5 y@@1)) (<= (Fractions x@@5) (Fractions y@@1)))
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
(assert  (and (= (Ctor PartialHeapTypeType) 12) (forall ((arg0@@19 T@U) (arg1@@9 T@U) ) (! (= (type (combine arg0@@19 arg1@@9)) PartialHeapTypeType)
 :qid |funType:combine|
 :pattern ( (combine arg0@@19 arg1@@9))
))))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (= (type a) PartialHeapTypeType) (= (type b) PartialHeapTypeType)) (and (=> (IsGoodState (combine a b)) (and (IsGoodState a) (IsGoodState b))) (=> (and (IsGoodState a) (IsGoodState b)) (IsGoodState (combine a b)))))
 :qid |AVLTreeb.57:15|
 :skolemid |3|
 :pattern ( (IsGoodState (combine a b)))
)))
(assert (= (type emptyPartialHeap) PartialHeapTypeType))
(assert (IsGoodState emptyPartialHeap))
(assert (NonPredicateField mu))
(assert (forall ((m@@6 T@U) (n@@0 T@U) ) (!  (=> (and (= (type m@@6) MuType) (= (type n@@0) MuType)) (not (and (MuBelow m@@6 n@@0) (MuBelow n@@0 m@@6))))
 :qid |AVLTreeb.70:15|
 :skolemid |4|
 :pattern ( (MuBelow m@@6 n@@0) (MuBelow n@@0 m@@6))
)))
(assert (forall ((m@@7 T@U) (n@@1 T@U) (o@@0 T@U) ) (!  (=> (and (and (and (= (type m@@7) MuType) (= (type n@@1) MuType)) (= (type o@@0) MuType)) (and (MuBelow m@@7 n@@1) (MuBelow n@@1 o@@0))) (MuBelow m@@7 o@@0))
 :qid |AVLTreeb.73:15|
 :skolemid |5|
 :pattern ( (MuBelow m@@7 n@@1) (MuBelow n@@1 o@@0))
)))
(assert (= (type $LockBottom) MuType))
(assert (forall ((m@@8 T@U) (n@@2 T@U) ) (!  (=> (and (and (= (type m@@8) MuType) (= (type n@@2) MuType)) (MuBelow m@@8 n@@2)) (not (= n@@2 $LockBottom)))
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
(assert  (and (and (and (and (and (forall ((arg0@@20 T@T) ) (! (= (Ctor (MapType2Type arg0@@20)) 13)
 :qid |ctor:MapType2Type|
)) (forall ((arg0@@21 T@T) ) (! (= (MapType2TypeInv0 (MapType2Type arg0@@21)) arg0@@21)
 :qid |typeInv:MapType2TypeInv0|
 :pattern ( (MapType2Type arg0@@21))
))) (forall ((arg0@@22 T@U) (arg1@@10 T@U) (arg2@@2 T@U) ) (! (let ((a@@0 (FieldTypeInv0 (type arg2@@2))))
(= (type (MapType2Select arg0@@22 arg1@@10 arg2@@2)) a@@0))
 :qid |funType:MapType2Select|
 :pattern ( (MapType2Select arg0@@22 arg1@@10 arg2@@2))
))) (forall ((arg0@@23 T@U) (arg1@@11 T@U) (arg2@@3 T@U) (arg3@@0 T@U) ) (! (let ((aVar0@@1 (type arg1@@11)))
(= (type (MapType2Store arg0@@23 arg1@@11 arg2@@3 arg3@@0)) (MapType2Type aVar0@@1)))
 :qid |funType:MapType2Store|
 :pattern ( (MapType2Store arg0@@23 arg1@@11 arg2@@3 arg3@@0))
))) (forall ((m@@9 T@U) (x0@@6 T@U) (x1@@3 T@U) (val@@6 T@U) ) (! (let ((a@@1 (FieldTypeInv0 (type x1@@3))))
 (=> (= (type val@@6) a@@1) (= (MapType2Select (MapType2Store m@@9 x0@@6 x1@@3 val@@6) x0@@6 x1@@3) val@@6)))
 :qid |mapAx0:MapType2Select|
 :weight 0
))) (and (and (forall ((val@@7 T@U) (m@@10 T@U) (x0@@7 T@U) (x1@@4 T@U) (y0@@4 T@U) (y1@@2 T@U) ) (!  (or (= x0@@7 y0@@4) (= (MapType2Select (MapType2Store m@@10 x0@@7 x1@@4 val@@7) y0@@4 y1@@2) (MapType2Select m@@10 y0@@4 y1@@2)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((val@@8 T@U) (m@@11 T@U) (x0@@8 T@U) (x1@@5 T@U) (y0@@5 T@U) (y1@@3 T@U) ) (!  (or (= x1@@5 y1@@3) (= (MapType2Select (MapType2Store m@@11 x0@@8 x1@@5 val@@8) y0@@5 y1@@3) (MapType2Select m@@11 y0@@5 y1@@3)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((val@@9 T@U) (m@@12 T@U) (x0@@9 T@U) (x1@@6 T@U) (y0@@6 T@U) (y1@@4 T@U) ) (!  (or true (= (MapType2Select (MapType2Store m@@12 x0@@9 x1@@6 val@@9) y0@@6 y1@@4) (MapType2Select m@@12 y0@@6 y1@@4)))
 :qid |mapAx2:MapType2Select|
 :weight 0
)))))
(assert (forall ((ih T@U) (h T@U) (m@@13 T@U) (sm T@U) ) (!  (=> (and (and (and (= (type ih) (MapType2Type refType)) (= (type h) (MapType2Type refType))) (= (type m@@13) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type sm) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (and (=> (IsGoodInhaleState ih h m@@13 sm) (and (and (and (and (forall ((o@@1 T@U) (f@@0 T@U) ) (! (let ((T@@0 (FieldTypeInv0 (type f@@0))))
 (=> (and (and (= (type o@@1) refType) (= (type f@@0) (FieldType T@@0))) (CanRead m@@13 sm o@@1 f@@0)) (= (MapType2Select ih o@@1 f@@0) (MapType2Select h o@@1 f@@0))))
 :qid |AVLTreeb.98:14|
 :skolemid |7|
 :pattern ( (MapType2Select ih o@@1 f@@0))
)) (forall ((o@@2 T@U) ) (!  (=> (= (type o@@2) refType) (and (=> (< 0 (U_2_int (MapType2Select ih o@@2 held))) (< 0 (U_2_int (MapType2Select h o@@2 held)))) (=> (< 0 (U_2_int (MapType2Select h o@@2 held))) (< 0 (U_2_int (MapType2Select ih o@@2 held))))))
 :qid |AVLTreeb.99:11|
 :skolemid |8|
 :pattern ( (MapType2Select ih o@@2 held))
))) (forall ((o@@3 T@U) ) (!  (=> (= (type o@@3) refType) (and (=> (U_2_bool (MapType2Select ih o@@3 rdheld)) (U_2_bool (MapType2Select h o@@3 rdheld))) (=> (U_2_bool (MapType2Select h o@@3 rdheld)) (U_2_bool (MapType2Select ih o@@3 rdheld)))))
 :qid |AVLTreeb.100:11|
 :skolemid |9|
 :pattern ( (MapType2Select ih o@@3 rdheld))
))) (forall ((o@@4 T@U) ) (!  (=> (and (= (type o@@4) refType) (< 0 (U_2_int (MapType2Select h o@@4 held)))) (= (MapType2Select ih o@@4 mu) (MapType2Select h o@@4 mu)))
 :qid |AVLTreeb.101:11|
 :skolemid |10|
 :pattern ( (MapType2Select h o@@4 held))
))) (forall ((o@@5 T@U) ) (!  (=> (and (= (type o@@5) refType) (U_2_bool (MapType2Select h o@@5 rdheld))) (= (MapType2Select ih o@@5 mu) (MapType2Select h o@@5 mu)))
 :qid |AVLTreeb.102:11|
 :skolemid |11|
 :pattern ( (MapType2Select h o@@5 rdheld))
)))) (=> (and (and (and (and (forall ((o@@6 T@U) (f@@1 T@U) ) (! (let ((T@@1 (FieldTypeInv0 (type f@@1))))
 (=> (and (and (= (type o@@6) refType) (= (type f@@1) (FieldType T@@1))) (CanRead m@@13 sm o@@6 f@@1)) (= (MapType2Select ih o@@6 f@@1) (MapType2Select h o@@6 f@@1))))
 :qid |AVLTreeb.98:14|
 :skolemid |7|
 :pattern ( (MapType2Select ih o@@6 f@@1))
)) (forall ((o@@7 T@U) ) (!  (=> (= (type o@@7) refType) (and (=> (< 0 (U_2_int (MapType2Select ih o@@7 held))) (< 0 (U_2_int (MapType2Select h o@@7 held)))) (=> (< 0 (U_2_int (MapType2Select h o@@7 held))) (< 0 (U_2_int (MapType2Select ih o@@7 held))))))
 :qid |AVLTreeb.99:11|
 :skolemid |8|
 :pattern ( (MapType2Select ih o@@7 held))
))) (forall ((o@@8 T@U) ) (!  (=> (= (type o@@8) refType) (and (=> (U_2_bool (MapType2Select ih o@@8 rdheld)) (U_2_bool (MapType2Select h o@@8 rdheld))) (=> (U_2_bool (MapType2Select h o@@8 rdheld)) (U_2_bool (MapType2Select ih o@@8 rdheld)))))
 :qid |AVLTreeb.100:11|
 :skolemid |9|
 :pattern ( (MapType2Select ih o@@8 rdheld))
))) (forall ((o@@9 T@U) ) (!  (=> (and (= (type o@@9) refType) (< 0 (U_2_int (MapType2Select h o@@9 held)))) (= (MapType2Select ih o@@9 mu) (MapType2Select h o@@9 mu)))
 :qid |AVLTreeb.101:11|
 :skolemid |10|
 :pattern ( (MapType2Select h o@@9 held))
))) (forall ((o@@10 T@U) ) (!  (=> (and (= (type o@@10) refType) (U_2_bool (MapType2Select h o@@10 rdheld))) (= (MapType2Select ih o@@10 mu) (MapType2Select h o@@10 mu)))
 :qid |AVLTreeb.102:11|
 :skolemid |11|
 :pattern ( (MapType2Select h o@@10 rdheld))
))) (IsGoodInhaleState ih h m@@13 sm))))
 :qid |AVLTreeb.95:28|
 :skolemid |12|
 :pattern ( (IsGoodInhaleState ih h m@@13 sm))
)))
(assert (forall ((eh T@U) (h@@0 T@U) (m@@14 T@U) (sm@@0 T@U) ) (!  (=> (and (and (and (= (type eh) (MapType2Type refType)) (= (type h@@0) (MapType2Type refType))) (= (type m@@14) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type sm@@0) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (and (=> (IsGoodExhaleState eh h@@0 m@@14 sm@@0) (and (and (and (and (and (and (and (forall ((o@@11 T@U) (f@@2 T@U) ) (! (let ((T@@2 (FieldTypeInv0 (type f@@2))))
 (=> (and (and (= (type o@@11) refType) (= (type f@@2) (FieldType T@@2))) (CanRead m@@14 sm@@0 o@@11 f@@2)) (= (MapType2Select eh o@@11 f@@2) (MapType2Select h@@0 o@@11 f@@2))))
 :qid |AVLTreeb.107:14|
 :skolemid |13|
 :pattern ( (MapType2Select eh o@@11 f@@2))
)) (forall ((o@@12 T@U) ) (!  (=> (= (type o@@12) refType) (and (=> (< 0 (U_2_int (MapType2Select eh o@@12 held))) (< 0 (U_2_int (MapType2Select h@@0 o@@12 held)))) (=> (< 0 (U_2_int (MapType2Select h@@0 o@@12 held))) (< 0 (U_2_int (MapType2Select eh o@@12 held))))))
 :qid |AVLTreeb.108:11|
 :skolemid |14|
 :pattern ( (MapType2Select eh o@@12 held))
))) (forall ((o@@13 T@U) ) (!  (=> (= (type o@@13) refType) (and (=> (U_2_bool (MapType2Select eh o@@13 rdheld)) (U_2_bool (MapType2Select h@@0 o@@13 rdheld))) (=> (U_2_bool (MapType2Select h@@0 o@@13 rdheld)) (U_2_bool (MapType2Select eh o@@13 rdheld)))))
 :qid |AVLTreeb.109:11|
 :skolemid |15|
 :pattern ( (MapType2Select eh o@@13 rdheld))
))) (forall ((o@@14 T@U) ) (!  (=> (and (= (type o@@14) refType) (< 0 (U_2_int (MapType2Select h@@0 o@@14 held)))) (= (MapType2Select eh o@@14 mu) (MapType2Select h@@0 o@@14 mu)))
 :qid |AVLTreeb.110:11|
 :skolemid |16|
 :pattern ( (MapType2Select h@@0 o@@14 held))
))) (forall ((o@@15 T@U) ) (!  (=> (and (= (type o@@15) refType) (U_2_bool (MapType2Select h@@0 o@@15 rdheld))) (= (MapType2Select eh o@@15 mu) (MapType2Select h@@0 o@@15 mu)))
 :qid |AVLTreeb.111:11|
 :skolemid |17|
 :pattern ( (MapType2Select h@@0 o@@15 rdheld))
))) (forall ((o@@16 T@U) ) (!  (=> (= (type o@@16) refType) (= (U_2_int (MapType2Select h@@0 o@@16 forkK)) (U_2_int (MapType2Select eh o@@16 forkK))))
 :qid |AVLTreeb.112:11|
 :skolemid |18|
 :pattern ( (MapType2Select h@@0 o@@16 forkK))
 :pattern ( (MapType2Select eh o@@16 forkK))
))) (forall ((o@@17 T@U) ) (!  (=> (= (type o@@17) refType) (= (U_2_int (MapType2Select h@@0 o@@17 held)) (U_2_int (MapType2Select eh o@@17 held))))
 :qid |AVLTreeb.113:11|
 :skolemid |19|
 :pattern ( (MapType2Select h@@0 o@@17 held))
 :pattern ( (MapType2Select eh o@@17 held))
))) (forall ((o@@18 T@U) (f@@3 T@U) ) (!  (=> (and (and (= (type o@@18) refType) (= (type f@@3) (FieldType intType))) (PredicateField f@@3)) (<= (U_2_int (MapType2Select h@@0 o@@18 f@@3)) (U_2_int (MapType2Select eh o@@18 f@@3))))
 :qid |AVLTreeb.114:11|
 :skolemid |20|
 :pattern ( (MapType2Select eh o@@18 f@@3) (PredicateField f@@3))
)))) (=> (and (and (and (and (and (and (and (forall ((o@@19 T@U) (f@@4 T@U) ) (! (let ((T@@3 (FieldTypeInv0 (type f@@4))))
 (=> (and (and (= (type o@@19) refType) (= (type f@@4) (FieldType T@@3))) (CanRead m@@14 sm@@0 o@@19 f@@4)) (= (MapType2Select eh o@@19 f@@4) (MapType2Select h@@0 o@@19 f@@4))))
 :qid |AVLTreeb.107:14|
 :skolemid |13|
 :pattern ( (MapType2Select eh o@@19 f@@4))
)) (forall ((o@@20 T@U) ) (!  (=> (= (type o@@20) refType) (and (=> (< 0 (U_2_int (MapType2Select eh o@@20 held))) (< 0 (U_2_int (MapType2Select h@@0 o@@20 held)))) (=> (< 0 (U_2_int (MapType2Select h@@0 o@@20 held))) (< 0 (U_2_int (MapType2Select eh o@@20 held))))))
 :qid |AVLTreeb.108:11|
 :skolemid |14|
 :pattern ( (MapType2Select eh o@@20 held))
))) (forall ((o@@21 T@U) ) (!  (=> (= (type o@@21) refType) (and (=> (U_2_bool (MapType2Select eh o@@21 rdheld)) (U_2_bool (MapType2Select h@@0 o@@21 rdheld))) (=> (U_2_bool (MapType2Select h@@0 o@@21 rdheld)) (U_2_bool (MapType2Select eh o@@21 rdheld)))))
 :qid |AVLTreeb.109:11|
 :skolemid |15|
 :pattern ( (MapType2Select eh o@@21 rdheld))
))) (forall ((o@@22 T@U) ) (!  (=> (and (= (type o@@22) refType) (< 0 (U_2_int (MapType2Select h@@0 o@@22 held)))) (= (MapType2Select eh o@@22 mu) (MapType2Select h@@0 o@@22 mu)))
 :qid |AVLTreeb.110:11|
 :skolemid |16|
 :pattern ( (MapType2Select h@@0 o@@22 held))
))) (forall ((o@@23 T@U) ) (!  (=> (and (= (type o@@23) refType) (U_2_bool (MapType2Select h@@0 o@@23 rdheld))) (= (MapType2Select eh o@@23 mu) (MapType2Select h@@0 o@@23 mu)))
 :qid |AVLTreeb.111:11|
 :skolemid |17|
 :pattern ( (MapType2Select h@@0 o@@23 rdheld))
))) (forall ((o@@24 T@U) ) (!  (=> (= (type o@@24) refType) (= (U_2_int (MapType2Select h@@0 o@@24 forkK)) (U_2_int (MapType2Select eh o@@24 forkK))))
 :qid |AVLTreeb.112:11|
 :skolemid |18|
 :pattern ( (MapType2Select h@@0 o@@24 forkK))
 :pattern ( (MapType2Select eh o@@24 forkK))
))) (forall ((o@@25 T@U) ) (!  (=> (= (type o@@25) refType) (= (U_2_int (MapType2Select h@@0 o@@25 held)) (U_2_int (MapType2Select eh o@@25 held))))
 :qid |AVLTreeb.113:11|
 :skolemid |19|
 :pattern ( (MapType2Select h@@0 o@@25 held))
 :pattern ( (MapType2Select eh o@@25 held))
))) (forall ((o@@26 T@U) (f@@5 T@U) ) (!  (=> (and (and (= (type o@@26) refType) (= (type f@@5) (FieldType intType))) (PredicateField f@@5)) (<= (U_2_int (MapType2Select h@@0 o@@26 f@@5)) (U_2_int (MapType2Select eh o@@26 f@@5))))
 :qid |AVLTreeb.114:11|
 :skolemid |20|
 :pattern ( (MapType2Select eh o@@26 f@@5) (PredicateField f@@5))
))) (IsGoodExhaleState eh h@@0 m@@14 sm@@0))))
 :qid |AVLTreeb.104:28|
 :skolemid |21|
 :pattern ( (IsGoodExhaleState eh h@@0 m@@14 sm@@0))
)))
(assert (forall ((m@@15 T@U) (sm@@1 T@U) (obj T@U) (f@@6 T@U) ) (! (let ((T@@4 (FieldTypeInv0 (type f@@6))))
 (=> (and (and (and (= (type m@@15) (MapType1Type refType (MapType0Type PermissionComponentType intType))) (= (type sm@@1) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type obj) refType)) (= (type f@@6) (FieldType T@@4))) (and (=> (CanRead m@@15 sm@@1 obj f@@6) (or (or (or (< 0 (U_2_int (MapType0Select (MapType1Select m@@15 obj f@@6) perm$R))) (< 0 (U_2_int (MapType0Select (MapType1Select m@@15 obj f@@6) perm$N)))) (< 0 (U_2_int (MapType0Select (MapType1Select sm@@1 obj f@@6) perm$R)))) (< 0 (U_2_int (MapType0Select (MapType1Select sm@@1 obj f@@6) perm$N))))) (=> (or (or (or (< 0 (U_2_int (MapType0Select (MapType1Select m@@15 obj f@@6) perm$R))) (< 0 (U_2_int (MapType0Select (MapType1Select m@@15 obj f@@6) perm$N)))) (< 0 (U_2_int (MapType0Select (MapType1Select sm@@1 obj f@@6) perm$R)))) (< 0 (U_2_int (MapType0Select (MapType1Select sm@@1 obj f@@6) perm$N)))) (CanRead m@@15 sm@@1 obj f@@6)))))
 :qid |AVLTreeb.121:41|
 :skolemid |22|
 :pattern ( (CanRead m@@15 sm@@1 obj f@@6))
)))
(assert (forall ((m@@16 T@U) (obj@@0 T@U) (f@@7 T@U) ) (! (let ((T@@5 (FieldTypeInv0 (type f@@7))))
 (=> (and (and (= (type m@@16) (MapType1Type refType (MapType0Type PermissionComponentType intType))) (= (type obj@@0) refType)) (= (type f@@7) (FieldType T@@5))) (and (=> (CanReadForSure m@@16 obj@@0 f@@7) (or (< 0 (U_2_int (MapType0Select (MapType1Select m@@16 obj@@0 f@@7) perm$R))) (< 0 (U_2_int (MapType0Select (MapType1Select m@@16 obj@@0 f@@7) perm$N))))) (=> (or (< 0 (U_2_int (MapType0Select (MapType1Select m@@16 obj@@0 f@@7) perm$R))) (< 0 (U_2_int (MapType0Select (MapType1Select m@@16 obj@@0 f@@7) perm$N)))) (CanReadForSure m@@16 obj@@0 f@@7)))))
 :qid |AVLTreeb.126:48|
 :skolemid |23|
 :pattern ( (CanReadForSure m@@16 obj@@0 f@@7))
)))
(assert (forall ((m@@17 T@U) (obj@@1 T@U) (f@@8 T@U) ) (! (let ((T@@6 (FieldTypeInv0 (type f@@8))))
 (=> (and (and (= (type m@@17) (MapType1Type refType (MapType0Type PermissionComponentType intType))) (= (type obj@@1) refType)) (= (type f@@8) (FieldType T@@6))) (and (=> (CanWrite m@@17 obj@@1 f@@8) (and (= (U_2_int (MapType0Select (MapType1Select m@@17 obj@@1 f@@8) perm$R)) Permission$FullFraction) (= (U_2_int (MapType0Select (MapType1Select m@@17 obj@@1 f@@8) perm$N)) 0))) (=> (and (= (U_2_int (MapType0Select (MapType1Select m@@17 obj@@1 f@@8) perm$R)) Permission$FullFraction) (= (U_2_int (MapType0Select (MapType1Select m@@17 obj@@1 f@@8) perm$N)) 0)) (CanWrite m@@17 obj@@1 f@@8)))))
 :qid |AVLTreeb.130:42|
 :skolemid |24|
 :pattern ( (CanWrite m@@17 obj@@1 f@@8))
)))
(assert (forall ((m@@18 T@U) ) (!  (=> (= (type m@@18) (MapType1Type refType (MapType0Type PermissionComponentType intType))) (and (=> (IsGoodMask m@@18) (forall ((o@@27 T@U) (f@@9 T@U) ) (! (let ((T@@7 (FieldTypeInv0 (type f@@9))))
 (=> (and (= (type o@@27) refType) (= (type f@@9) (FieldType T@@7))) (and (and (<= 0 (U_2_int (MapType0Select (MapType1Select m@@18 o@@27 f@@9) perm$R))) (=> (NonPredicateField f@@9) (and (<= (U_2_int (MapType0Select (MapType1Select m@@18 o@@27 f@@9) perm$R)) Permission$FullFraction) (=> (< 0 (U_2_int (MapType0Select (MapType1Select m@@18 o@@27 f@@9) perm$N))) (< (U_2_int (MapType0Select (MapType1Select m@@18 o@@27 f@@9) perm$R)) Permission$FullFraction))))) (=> (< (U_2_int (MapType0Select (MapType1Select m@@18 o@@27 f@@9) perm$N)) 0) (< 0 (U_2_int (MapType0Select (MapType1Select m@@18 o@@27 f@@9) perm$R)))))))
 :qid |AVLTreeb.136:14|
 :skolemid |25|
 :no-pattern (type o@@27)
 :no-pattern (type f@@9)
 :no-pattern (U_2_int o@@27)
 :no-pattern (U_2_bool o@@27)
 :no-pattern (U_2_int f@@9)
 :no-pattern (U_2_bool f@@9)
))) (=> (forall ((o@@28 T@U) (f@@10 T@U) ) (! (let ((T@@8 (FieldTypeInv0 (type f@@10))))
 (=> (and (= (type o@@28) refType) (= (type f@@10) (FieldType T@@8))) (and (and (<= 0 (U_2_int (MapType0Select (MapType1Select m@@18 o@@28 f@@10) perm$R))) (=> (NonPredicateField f@@10) (and (<= (U_2_int (MapType0Select (MapType1Select m@@18 o@@28 f@@10) perm$R)) Permission$FullFraction) (=> (< 0 (U_2_int (MapType0Select (MapType1Select m@@18 o@@28 f@@10) perm$N))) (< (U_2_int (MapType0Select (MapType1Select m@@18 o@@28 f@@10) perm$R)) Permission$FullFraction))))) (=> (< (U_2_int (MapType0Select (MapType1Select m@@18 o@@28 f@@10) perm$N)) 0) (< 0 (U_2_int (MapType0Select (MapType1Select m@@18 o@@28 f@@10) perm$R)))))))
 :qid |AVLTreeb.136:14|
 :skolemid |25|
 :no-pattern (type o@@28)
 :no-pattern (type f@@10)
 :no-pattern (U_2_int o@@28)
 :no-pattern (U_2_bool o@@28)
 :no-pattern (U_2_int f@@10)
 :no-pattern (U_2_bool f@@10)
)) (IsGoodMask m@@18))))
 :qid |AVLTreeb.134:40|
 :skolemid |26|
 :pattern ( (IsGoodMask m@@18))
)))
(assert (forall ((h@@1 T@U) (m@@19 T@U) (sm@@2 T@U) (o@@29 T@U) (q T@U) ) (!  (=> (and (and (and (and (and (= (type h@@1) (MapType2Type refType)) (= (type m@@19) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type sm@@2) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type o@@29) refType)) (= (type q) refType)) (and (and (and (wf h@@1 m@@19 sm@@2) (not (= o@@29 q))) (or (< 0 (U_2_int (MapType2Select h@@1 o@@29 held))) (U_2_bool (MapType2Select h@@1 o@@29 rdheld)))) (or (< 0 (U_2_int (MapType2Select h@@1 q held))) (U_2_bool (MapType2Select h@@1 q rdheld))))) (not (= (MapType2Select h@@1 o@@29 mu) (MapType2Select h@@1 q mu))))
 :qid |AVLTreeb.144:15|
 :skolemid |27|
 :pattern ( (wf h@@1 m@@19 sm@@2) (MapType2Select h@@1 o@@29 mu) (MapType2Select h@@1 q mu))
)))
(assert  (and (forall ((arg0@@24 T@U) (arg1@@12 T@U) (arg2@@4 T@U) (arg3@@1 Int) ) (! (= (type (DecPerm arg0@@24 arg1@@12 arg2@@4 arg3@@1)) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
 :qid |funType:DecPerm|
 :pattern ( (DecPerm arg0@@24 arg1@@12 arg2@@4 arg3@@1))
)) (forall ((arg0@@25 Bool) (arg1@@13 T@U) (arg2@@5 T@U) ) (! (let ((T@@9 (type arg1@@13)))
(= (type (q@ite arg0@@25 arg1@@13 arg2@@5)) T@@9))
 :qid |funType:ite|
 :pattern ( (q@ite arg0@@25 arg1@@13 arg2@@5))
))))
(assert (forall ((m@@20 T@U) (o@@30 T@U) (f@@11 T@U) (howMuch Int) (q@@0 T@U) (g T@U) ) (! (let ((U (FieldTypeInv0 (type g))))
(let ((T@@10 (FieldTypeInv0 (type f@@11))))
 (=> (and (and (and (and (= (type m@@20) (MapType1Type refType (MapType0Type PermissionComponentType intType))) (= (type o@@30) refType)) (= (type f@@11) (FieldType T@@10))) (= (type q@@0) refType)) (= (type g) (FieldType U))) (= (U_2_int (MapType0Select (MapType1Select (DecPerm m@@20 o@@30 f@@11 howMuch) q@@0 g) perm$R)) (U_2_int (q@ite  (and (= o@@30 q@@0) (= f@@11 g)) (int_2_U (- (U_2_int (MapType0Select (MapType1Select m@@20 q@@0 g) perm$R)) howMuch)) (MapType0Select (MapType1Select m@@20 q@@0 g) perm$R)))))))
 :qid |AVLTreeb.148:20|
 :skolemid |28|
 :pattern ( (MapType0Select (MapType1Select (DecPerm m@@20 o@@30 f@@11 howMuch) q@@0 g) perm$R))
)))
(assert (forall ((arg0@@26 T@U) (arg1@@14 T@U) (arg2@@6 T@U) (arg3@@2 Int) ) (! (= (type (DecEpsilons arg0@@26 arg1@@14 arg2@@6 arg3@@2)) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
 :qid |funType:DecEpsilons|
 :pattern ( (DecEpsilons arg0@@26 arg1@@14 arg2@@6 arg3@@2))
)))
(assert (forall ((m@@21 T@U) (o@@31 T@U) (f@@12 T@U) (howMuch@@0 Int) (q@@1 T@U) (g@@0 T@U) ) (! (let ((U@@0 (FieldTypeInv0 (type g@@0))))
(let ((T@@11 (FieldTypeInv0 (type f@@12))))
 (=> (and (and (and (and (= (type m@@21) (MapType1Type refType (MapType0Type PermissionComponentType intType))) (= (type o@@31) refType)) (= (type f@@12) (FieldType T@@11))) (= (type q@@1) refType)) (= (type g@@0) (FieldType U@@0))) (= (U_2_int (MapType0Select (MapType1Select (DecEpsilons m@@21 o@@31 f@@12 howMuch@@0) q@@1 g@@0) perm$N)) (U_2_int (q@ite  (and (= o@@31 q@@1) (= f@@12 g@@0)) (int_2_U (- (U_2_int (MapType0Select (MapType1Select m@@21 q@@1 g@@0) perm$N)) howMuch@@0)) (MapType0Select (MapType1Select m@@21 q@@1 g@@0) perm$N)))))))
 :qid |AVLTreeb.154:20|
 :skolemid |29|
 :pattern ( (MapType0Select (MapType1Select (DecPerm m@@21 o@@31 f@@12 howMuch@@0) q@@1 g@@0) perm$N))
)))
(assert (forall ((arg0@@27 T@U) (arg1@@15 T@U) (arg2@@7 T@U) (arg3@@3 Int) ) (! (= (type (IncPerm arg0@@27 arg1@@15 arg2@@7 arg3@@3)) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
 :qid |funType:IncPerm|
 :pattern ( (IncPerm arg0@@27 arg1@@15 arg2@@7 arg3@@3))
)))
(assert (forall ((m@@22 T@U) (o@@32 T@U) (f@@13 T@U) (howMuch@@1 Int) (q@@2 T@U) (g@@1 T@U) ) (! (let ((U@@1 (FieldTypeInv0 (type g@@1))))
(let ((T@@12 (FieldTypeInv0 (type f@@13))))
 (=> (and (and (and (and (= (type m@@22) (MapType1Type refType (MapType0Type PermissionComponentType intType))) (= (type o@@32) refType)) (= (type f@@13) (FieldType T@@12))) (= (type q@@2) refType)) (= (type g@@1) (FieldType U@@1))) (= (U_2_int (MapType0Select (MapType1Select (IncPerm m@@22 o@@32 f@@13 howMuch@@1) q@@2 g@@1) perm$R)) (U_2_int (q@ite  (and (= o@@32 q@@2) (= f@@13 g@@1)) (int_2_U (+ (U_2_int (MapType0Select (MapType1Select m@@22 q@@2 g@@1) perm$R)) howMuch@@1)) (MapType0Select (MapType1Select m@@22 q@@2 g@@1) perm$R)))))))
 :qid |AVLTreeb.160:20|
 :skolemid |30|
 :pattern ( (MapType0Select (MapType1Select (IncPerm m@@22 o@@32 f@@13 howMuch@@1) q@@2 g@@1) perm$R))
)))
(assert (forall ((arg0@@28 T@U) (arg1@@16 T@U) (arg2@@8 T@U) (arg3@@4 Int) ) (! (= (type (IncEpsilons arg0@@28 arg1@@16 arg2@@8 arg3@@4)) (MapType1Type refType (MapType0Type PermissionComponentType intType)))
 :qid |funType:IncEpsilons|
 :pattern ( (IncEpsilons arg0@@28 arg1@@16 arg2@@8 arg3@@4))
)))
(assert (forall ((m@@23 T@U) (o@@33 T@U) (f@@14 T@U) (howMuch@@2 Int) (q@@3 T@U) (g@@2 T@U) ) (! (let ((U@@2 (FieldTypeInv0 (type g@@2))))
(let ((T@@13 (FieldTypeInv0 (type f@@14))))
 (=> (and (and (and (and (= (type m@@23) (MapType1Type refType (MapType0Type PermissionComponentType intType))) (= (type o@@33) refType)) (= (type f@@14) (FieldType T@@13))) (= (type q@@3) refType)) (= (type g@@2) (FieldType U@@2))) (= (U_2_int (MapType0Select (MapType1Select (IncEpsilons m@@23 o@@33 f@@14 howMuch@@2) q@@3 g@@2) perm$N)) (U_2_int (q@ite  (and (= o@@33 q@@3) (= f@@14 g@@2)) (int_2_U (+ (U_2_int (MapType0Select (MapType1Select m@@23 q@@3 g@@2) perm$N)) howMuch@@2)) (MapType0Select (MapType1Select m@@23 q@@3 g@@2) perm$N)))))))
 :qid |AVLTreeb.166:20|
 :skolemid |31|
 :pattern ( (MapType0Select (MapType1Select (IncPerm m@@23 o@@33 f@@14 howMuch@@2) q@@3 g@@2) perm$N))
)))
(assert (forall ((arg0@@29 T@U) (arg1@@17 T@U) (arg2@@9 T@U) (arg3@@5 T@U) ) (! (= (type (Havocing arg0@@29 arg1@@17 arg2@@9 arg3@@5)) (MapType2Type refType))
 :qid |funType:Havocing|
 :pattern ( (Havocing arg0@@29 arg1@@17 arg2@@9 arg3@@5))
)))
(assert (forall ((h@@2 T@U) (o@@34 T@U) (f@@15 T@U) (newValue T@U) (q@@4 T@U) (g@@3 T@U) ) (! (let ((U@@3 (type newValue)))
(let ((T@@14 (FieldTypeInv0 (type f@@15))))
 (=> (and (and (and (and (= (type h@@2) (MapType2Type refType)) (= (type o@@34) refType)) (= (type f@@15) (FieldType T@@14))) (= (type q@@4) refType)) (= (type g@@3) (FieldType U@@3))) (= (MapType2Select (Havocing h@@2 o@@34 f@@15 newValue) q@@4 g@@3) (q@ite  (and (= o@@34 q@@4) (= f@@15 g@@3)) newValue (MapType2Select h@@2 q@@4 g@@3))))))
 :qid |AVLTreeb.172:20|
 :skolemid |32|
 :pattern ( (MapType2Select (Havocing h@@2 o@@34 f@@15 newValue) q@@4 g@@3))
)))
(assert (forall ((m@@24 T@U) ) (!  (=> (= (type m@@24) (MapType1Type refType (MapType0Type PermissionComponentType intType))) (and (=> (EmptyMask m@@24) (forall ((o@@35 T@U) (f@@16 T@U) ) (! (let ((T@@15 (FieldTypeInv0 (type f@@16))))
 (=> (and (and (= (type o@@35) refType) (= (type f@@16) (FieldType T@@15))) (NonPredicateField f@@16)) (and (<= (U_2_int (MapType0Select (MapType1Select m@@24 o@@35 f@@16) perm$R)) 0) (<= (U_2_int (MapType0Select (MapType1Select m@@24 o@@35 f@@16) perm$N)) 0))))
 :qid |AVLTreeb.184:74|
 :skolemid |33|
 :no-pattern (type o@@35)
 :no-pattern (type f@@16)
 :no-pattern (U_2_int o@@35)
 :no-pattern (U_2_bool o@@35)
 :no-pattern (U_2_int f@@16)
 :no-pattern (U_2_bool f@@16)
))) (=> (forall ((o@@36 T@U) (f@@17 T@U) ) (! (let ((T@@16 (FieldTypeInv0 (type f@@17))))
 (=> (and (and (= (type o@@36) refType) (= (type f@@17) (FieldType T@@16))) (NonPredicateField f@@17)) (and (<= (U_2_int (MapType0Select (MapType1Select m@@24 o@@36 f@@17) perm$R)) 0) (<= (U_2_int (MapType0Select (MapType1Select m@@24 o@@36 f@@17) perm$N)) 0))))
 :qid |AVLTreeb.184:74|
 :skolemid |33|
 :no-pattern (type o@@36)
 :no-pattern (type f@@17)
 :no-pattern (U_2_int o@@36)
 :no-pattern (U_2_bool o@@36)
 :no-pattern (U_2_int f@@17)
 :no-pattern (U_2_bool f@@17)
)) (EmptyMask m@@24))))
 :qid |AVLTreeb.184:15|
 :skolemid |34|
 :pattern ( (EmptyMask m@@24))
)))
(assert (= (type ZeroCredits) (MapType0Type refType intType)))
(assert (forall ((o@@37 T@U) ) (!  (=> (= (type o@@37) refType) (= (U_2_int (MapType0Select ZeroCredits o@@37)) 0))
 :qid |AVLTreeb.187:15|
 :skolemid |35|
 :no-pattern (type o@@37)
 :no-pattern (U_2_int o@@37)
 :no-pattern (U_2_bool o@@37)
)))
(assert (= (type null) refType))
(assert (forall ((c T@U) ) (!  (=> (= (type c) (MapType0Type refType intType)) (and (=> (EmptyCredits c) (forall ((o@@38 T@U) ) (!  (=> (and (= (type o@@38) refType) (not (= o@@38 null))) (= (U_2_int (MapType0Select c o@@38)) 0))
 :qid |AVLTreeb.189:80|
 :skolemid |36|
 :no-pattern (type o@@38)
 :no-pattern (U_2_int o@@38)
 :no-pattern (U_2_bool o@@38)
))) (=> (forall ((o@@39 T@U) ) (!  (=> (and (= (type o@@39) refType) (not (= o@@39 null))) (= (U_2_int (MapType0Select c o@@39)) 0))
 :qid |AVLTreeb.189:80|
 :skolemid |36|
 :no-pattern (type o@@39)
 :no-pattern (U_2_int o@@39)
 :no-pattern (U_2_bool o@@39)
)) (EmptyCredits c))))
 :qid |AVLTreeb.189:15|
 :skolemid |37|
 :pattern ( (EmptyCredits c))
)))
(assert (forall ((f@@18 T@U) ) (! (let ((T@@17 (FieldTypeInv0 (type f@@18))))
 (=> (and (= (type f@@18) (FieldType T@@17)) (NonPredicateField f@@18)) (not (PredicateField f@@18))))
 :qid |AVLTreeb.193:18|
 :skolemid |38|
 :no-pattern (type f@@18)
 :no-pattern (U_2_int f@@18)
 :no-pattern (U_2_bool f@@18)
)))
(assert (forall ((f@@19 T@U) ) (! (let ((T@@18 (FieldTypeInv0 (type f@@19))))
 (=> (and (= (type f@@19) (FieldType T@@18)) (PredicateField f@@19)) (not (NonPredicateField f@@19))))
 :qid |AVLTreeb.194:18|
 :skolemid |39|
 :no-pattern (type f@@19)
 :no-pattern (U_2_int f@@19)
 :no-pattern (U_2_bool f@@19)
)))
(assert (forall ((m1 T@U) (m2 T@U) ) (!  (=> (and (= (type m1) (MapType1Type refType (MapType0Type PermissionComponentType intType))) (= (type m2) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (and (=> (submask m1 m2) (forall ((o@@40 T@U) (f@@20 T@U) ) (! (let ((T@@19 (FieldTypeInv0 (type f@@20))))
 (=> (and (= (type o@@40) refType) (= (type f@@20) (FieldType T@@19))) (or (< (U_2_int (MapType0Select (MapType1Select m1 o@@40 f@@20) perm$R)) (U_2_int (MapType0Select (MapType1Select m2 o@@40 f@@20) perm$R))) (and (= (U_2_int (MapType0Select (MapType1Select m1 o@@40 f@@20) perm$R)) (U_2_int (MapType0Select (MapType1Select m2 o@@40 f@@20) perm$R))) (<= (U_2_int (MapType0Select (MapType1Select m1 o@@40 f@@20) perm$N)) (U_2_int (MapType0Select (MapType1Select m2 o@@40 f@@20) perm$N)))))))
 :qid |AVLTreeb.199:35|
 :skolemid |40|
 :no-pattern (type o@@40)
 :no-pattern (type f@@20)
 :no-pattern (U_2_int o@@40)
 :no-pattern (U_2_bool o@@40)
 :no-pattern (U_2_int f@@20)
 :no-pattern (U_2_bool f@@20)
))) (=> (forall ((o@@41 T@U) (f@@21 T@U) ) (! (let ((T@@20 (FieldTypeInv0 (type f@@21))))
 (=> (and (= (type o@@41) refType) (= (type f@@21) (FieldType T@@20))) (or (< (U_2_int (MapType0Select (MapType1Select m1 o@@41 f@@21) perm$R)) (U_2_int (MapType0Select (MapType1Select m2 o@@41 f@@21) perm$R))) (and (= (U_2_int (MapType0Select (MapType1Select m1 o@@41 f@@21) perm$R)) (U_2_int (MapType0Select (MapType1Select m2 o@@41 f@@21) perm$R))) (<= (U_2_int (MapType0Select (MapType1Select m1 o@@41 f@@21) perm$N)) (U_2_int (MapType0Select (MapType1Select m2 o@@41 f@@21) perm$N)))))))
 :qid |AVLTreeb.199:35|
 :skolemid |40|
 :no-pattern (type o@@41)
 :no-pattern (type f@@21)
 :no-pattern (U_2_int o@@41)
 :no-pattern (U_2_bool o@@41)
 :no-pattern (U_2_int f@@21)
 :no-pattern (U_2_bool f@@21)
)) (submask m1 m2))))
 :qid |AVLTreeb.198:15|
 :skolemid |41|
 :pattern ( (submask m1 m2))
)))
(assert (forall ((con Bool) (a@@2 T@U) (b@@0 T@U) ) (! (let ((T@@21 (type a@@2)))
 (=> (and (= (type b@@0) T@@21) con) (= (q@ite con a@@2 b@@0) a@@2)))
 :qid |AVLTreeb.207:18|
 :skolemid |42|
 :pattern ( (q@ite con a@@2 b@@0))
)))
(assert (forall ((con@@0 Bool) (a@@3 T@U) (b@@1 T@U) ) (! (let ((T@@22 (type a@@3)))
 (=> (and (= (type b@@1) T@@22) (not con@@0)) (= (q@ite con@@0 a@@3 b@@1) b@@1)))
 :qid |AVLTreeb.208:18|
 :skolemid |43|
 :pattern ( (q@ite con@@0 a@@3 b@@1))
)))
(assert (forall ((s T@U) ) (! (let ((T@@23 (SeqTypeInv0 (type s))))
 (=> (= (type s) (SeqType T@@23)) (<= 0 (|Seq#Length| s))))
 :qid |AVLTreeb.238:18|
 :skolemid |44|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((T@@24 T@T) ) (! (= (type (|Seq#Empty| T@@24)) (SeqType T@@24))
 :qid |funType:Seq#Empty|
 :pattern ( (|Seq#Empty| T@@24))
)))
(assert (forall ((T@@25 T@T) ) (! (= (|Seq#Length| (|Seq#Empty| T@@25)) 0)
 :skolemid |45|
)))
(assert (forall ((s@@0 T@U) ) (! (let ((T@@26 (SeqTypeInv0 (type s@@0))))
 (=> (and (= (type s@@0) (SeqType T@@26)) (= (|Seq#Length| s@@0) 0)) (= s@@0 (|Seq#Empty| T@@26))))
 :qid |AVLTreeb.242:18|
 :skolemid |46|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((arg0@@30 T@U) ) (! (let ((T@@27 (type arg0@@30)))
(= (type (|Seq#Singleton| arg0@@30)) (SeqType T@@27)))
 :qid |funType:Seq#Singleton|
 :pattern ( (|Seq#Singleton| arg0@@30))
)))
(assert (forall ((t T@U) ) (! (= (|Seq#Length| (|Seq#Singleton| t)) 1)
 :qid |AVLTreeb.245:18|
 :skolemid |47|
 :pattern ( (|Seq#Length| (|Seq#Singleton| t)))
)))
(assert (forall ((arg0@@31 T@U) (arg1@@18 Int) (arg2@@10 T@U) (arg3@@6 Int) ) (! (let ((T@@28 (type arg2@@10)))
(= (type (|Seq#Build| arg0@@31 arg1@@18 arg2@@10 arg3@@6)) (SeqType T@@28)))
 :qid |funType:Seq#Build|
 :pattern ( (|Seq#Build| arg0@@31 arg1@@18 arg2@@10 arg3@@6))
)))
(assert (forall ((s@@1 T@U) (i Int) (v T@U) (len Int) ) (! (let ((T@@29 (type v)))
 (=> (and (= (type s@@1) (SeqType T@@29)) (<= 0 len)) (= (|Seq#Length| (|Seq#Build| s@@1 i v len)) len)))
 :qid |AVLTreeb.248:18|
 :skolemid |48|
 :pattern ( (|Seq#Length| (|Seq#Build| s@@1 i v len)))
)))
(assert (forall ((arg0@@32 T@U) (arg1@@19 T@U) ) (! (let ((T@@30 (SeqTypeInv0 (type arg0@@32))))
(= (type (|Seq#Append| arg0@@32 arg1@@19)) (SeqType T@@30)))
 :qid |funType:Seq#Append|
 :pattern ( (|Seq#Append| arg0@@32 arg1@@19))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (let ((T@@31 (SeqTypeInv0 (type s0))))
 (=> (and (= (type s0) (SeqType T@@31)) (= (type s1) (SeqType T@@31))) (= (|Seq#Length| (|Seq#Append| s0 s1)) (+ (|Seq#Length| s0) (|Seq#Length| s1)))))
 :qid |AVLTreeb.252:18|
 :skolemid |49|
 :pattern ( (|Seq#Length| (|Seq#Append| s0 s1)))
)))
(assert (forall ((arg0@@33 T@U) (arg1@@20 Int) ) (! (let ((T@@32 (SeqTypeInv0 (type arg0@@33))))
(= (type (|Seq#Index| arg0@@33 arg1@@20)) T@@32))
 :qid |funType:Seq#Index|
 :pattern ( (|Seq#Index| arg0@@33 arg1@@20))
)))
(assert (forall ((t@@0 T@U) ) (! (= (|Seq#Index| (|Seq#Singleton| t@@0) 0) t@@0)
 :qid |AVLTreeb.256:18|
 :skolemid |50|
 :pattern ( (|Seq#Index| (|Seq#Singleton| t@@0) 0))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) (n@@3 Int) ) (! (let ((T@@33 (SeqTypeInv0 (type s0@@0))))
 (=> (and (= (type s0@@0) (SeqType T@@33)) (= (type s1@@0) (SeqType T@@33))) (and (=> (< n@@3 (|Seq#Length| s0@@0)) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@3) (|Seq#Index| s0@@0 n@@3))) (=> (<= (|Seq#Length| s0@@0) n@@3) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@3) (|Seq#Index| s1@@0 (- n@@3 (|Seq#Length| s0@@0))))))))
 :qid |AVLTreeb.257:18|
 :skolemid |51|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@3))
)))
(assert (forall ((s@@2 T@U) (i@@0 Int) (v@@0 T@U) (len@@0 Int) (n@@4 Int) ) (! (let ((T@@34 (type v@@0)))
 (=> (= (type s@@2) (SeqType T@@34)) (=> (and (<= 0 n@@4) (< n@@4 len@@0)) (and (=> (= i@@0 n@@4) (= (|Seq#Index| (|Seq#Build| s@@2 i@@0 v@@0 len@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index| (|Seq#Build| s@@2 i@@0 v@@0 len@@0) n@@4) (|Seq#Index| s@@2 n@@4)))))))
 :qid |AVLTreeb.260:18|
 :skolemid |52|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@2 i@@0 v@@0 len@@0) n@@4))
)))
(assert (forall ((s@@3 T@U) (x@@6 T@U) ) (! (let ((T@@35 (type x@@6)))
 (=> (= (type s@@3) (SeqType T@@35)) (and (=> (|Seq#Contains| s@@3 x@@6) (exists ((i@@1 Int) ) (!  (and (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@3))) (= (|Seq#Index| s@@3 i@@1) x@@6))
 :qid |AVLTreeb.268:13|
 :skolemid |53|
 :pattern ( (|Seq#Index| s@@3 i@@1))
))) (=> (exists ((i@@2 Int) ) (!  (and (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@3))) (= (|Seq#Index| s@@3 i@@2) x@@6))
 :qid |AVLTreeb.268:13|
 :skolemid |53|
 :pattern ( (|Seq#Index| s@@3 i@@2))
)) (|Seq#Contains| s@@3 x@@6)))))
 :qid |AVLTreeb.266:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains| s@@3 x@@6))
)))
(assert (forall ((x@@7 T@U) ) (!  (=> (= (type x@@7) refType) (not (|Seq#Contains| (|Seq#Empty| refType) x@@7)))
 :qid |AVLTreeb.269:15|
 :skolemid |55|
 :pattern ( (|Seq#Contains| (|Seq#Empty| refType) x@@7))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (x@@8 T@U) ) (! (let ((T@@36 (type x@@8)))
 (=> (and (= (type s0@@1) (SeqType T@@36)) (= (type s1@@1) (SeqType T@@36))) (and (=> (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@8) (or (|Seq#Contains| s0@@1 x@@8) (|Seq#Contains| s1@@1 x@@8))) (=> (or (|Seq#Contains| s0@@1 x@@8) (|Seq#Contains| s1@@1 x@@8)) (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@8)))))
 :qid |AVLTreeb.272:18|
 :skolemid |56|
 :pattern ( (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@8))
)))
(assert (forall ((s@@4 T@U) (i@@3 Int) (v@@1 T@U) (len@@1 Int) (x@@9 T@U) ) (! (let ((T@@37 (type v@@1)))
 (=> (and (= (type s@@4) (SeqType T@@37)) (= (type x@@9) T@@37)) (and (=> (|Seq#Contains| (|Seq#Build| s@@4 i@@3 v@@1 len@@1) x@@9) (or (and (and (<= 0 i@@3) (< i@@3 len@@1)) (= x@@9 v@@1)) (exists ((j Int) ) (!  (and (and (and (and (<= 0 j) (< j (|Seq#Length| s@@4))) (< j len@@1)) (not (= j i@@3))) (= (|Seq#Index| s@@4 j) x@@9))
 :qid |AVLTreeb.280:13|
 :skolemid |57|
 :pattern ( (|Seq#Index| s@@4 j))
)))) (=> (or (and (and (<= 0 i@@3) (< i@@3 len@@1)) (= x@@9 v@@1)) (exists ((j@@0 Int) ) (!  (and (and (and (and (<= 0 j@@0) (< j@@0 (|Seq#Length| s@@4))) (< j@@0 len@@1)) (not (= j@@0 i@@3))) (= (|Seq#Index| s@@4 j@@0) x@@9))
 :qid |AVLTreeb.280:13|
 :skolemid |57|
 :pattern ( (|Seq#Index| s@@4 j@@0))
))) (|Seq#Contains| (|Seq#Build| s@@4 i@@3 v@@1 len@@1) x@@9)))))
 :qid |AVLTreeb.276:18|
 :skolemid |58|
 :pattern ( (|Seq#Contains| (|Seq#Build| s@@4 i@@3 v@@1 len@@1) x@@9))
)))
(assert (forall ((arg0@@34 T@U) (arg1@@21 Int) ) (! (let ((T@@38 (SeqTypeInv0 (type arg0@@34))))
(= (type (|Seq#Take| arg0@@34 arg1@@21)) (SeqType T@@38)))
 :qid |funType:Seq#Take|
 :pattern ( (|Seq#Take| arg0@@34 arg1@@21))
)))
(assert (forall ((s@@5 T@U) (n@@5 Int) (x@@10 T@U) ) (! (let ((T@@39 (type x@@10)))
 (=> (= (type s@@5) (SeqType T@@39)) (and (=> (|Seq#Contains| (|Seq#Take| s@@5 n@@5) x@@10) (exists ((i@@4 Int) ) (!  (and (and (and (<= 0 i@@4) (< i@@4 n@@5)) (< i@@4 (|Seq#Length| s@@5))) (= (|Seq#Index| s@@5 i@@4) x@@10))
 :qid |AVLTreeb.284:13|
 :skolemid |59|
 :pattern ( (|Seq#Index| s@@5 i@@4))
))) (=> (exists ((i@@5 Int) ) (!  (and (and (and (<= 0 i@@5) (< i@@5 n@@5)) (< i@@5 (|Seq#Length| s@@5))) (= (|Seq#Index| s@@5 i@@5) x@@10))
 :qid |AVLTreeb.284:13|
 :skolemid |59|
 :pattern ( (|Seq#Index| s@@5 i@@5))
)) (|Seq#Contains| (|Seq#Take| s@@5 n@@5) x@@10)))))
 :qid |AVLTreeb.281:18|
 :skolemid |60|
 :pattern ( (|Seq#Contains| (|Seq#Take| s@@5 n@@5) x@@10))
)))
(assert (forall ((arg0@@35 T@U) (arg1@@22 Int) ) (! (let ((T@@40 (SeqTypeInv0 (type arg0@@35))))
(= (type (|Seq#Drop| arg0@@35 arg1@@22)) (SeqType T@@40)))
 :qid |funType:Seq#Drop|
 :pattern ( (|Seq#Drop| arg0@@35 arg1@@22))
)))
(assert (forall ((s@@6 T@U) (n@@6 Int) (x@@11 T@U) ) (! (let ((T@@41 (type x@@11)))
 (=> (= (type s@@6) (SeqType T@@41)) (and (=> (|Seq#Contains| (|Seq#Drop| s@@6 n@@6) x@@11) (exists ((i@@6 Int) ) (!  (and (and (and (<= 0 n@@6) (<= n@@6 i@@6)) (< i@@6 (|Seq#Length| s@@6))) (= (|Seq#Index| s@@6 i@@6) x@@11))
 :qid |AVLTreeb.289:13|
 :skolemid |61|
 :pattern ( (|Seq#Index| s@@6 i@@6))
))) (=> (exists ((i@@7 Int) ) (!  (and (and (and (<= 0 n@@6) (<= n@@6 i@@7)) (< i@@7 (|Seq#Length| s@@6))) (= (|Seq#Index| s@@6 i@@7) x@@11))
 :qid |AVLTreeb.289:13|
 :skolemid |61|
 :pattern ( (|Seq#Index| s@@6 i@@7))
)) (|Seq#Contains| (|Seq#Drop| s@@6 n@@6) x@@11)))))
 :qid |AVLTreeb.286:18|
 :skolemid |62|
 :pattern ( (|Seq#Contains| (|Seq#Drop| s@@6 n@@6) x@@11))
)))
(assert (forall ((s0@@2 T@U) (s1@@2 T@U) ) (! (let ((T@@42 (SeqTypeInv0 (type s0@@2))))
 (=> (and (= (type s0@@2) (SeqType T@@42)) (= (type s1@@2) (SeqType T@@42))) (and (=> (|Seq#Equal| s0@@2 s1@@2) (and (= (|Seq#Length| s0@@2) (|Seq#Length| s1@@2)) (forall ((j@@1 Int) ) (!  (=> (and (<= 0 j@@1) (< j@@1 (|Seq#Length| s0@@2))) (= (|Seq#Index| s0@@2 j@@1) (|Seq#Index| s1@@2 j@@1)))
 :qid |AVLTreeb.296:13|
 :skolemid |63|
 :pattern ( (|Seq#Index| s0@@2 j@@1))
 :pattern ( (|Seq#Index| s1@@2 j@@1))
)))) (=> (and (= (|Seq#Length| s0@@2) (|Seq#Length| s1@@2)) (forall ((j@@2 Int) ) (!  (=> (and (<= 0 j@@2) (< j@@2 (|Seq#Length| s0@@2))) (= (|Seq#Index| s0@@2 j@@2) (|Seq#Index| s1@@2 j@@2)))
 :qid |AVLTreeb.296:13|
 :skolemid |63|
 :pattern ( (|Seq#Index| s0@@2 j@@2))
 :pattern ( (|Seq#Index| s1@@2 j@@2))
))) (|Seq#Equal| s0@@2 s1@@2)))))
 :qid |AVLTreeb.293:18|
 :skolemid |64|
 :pattern ( (|Seq#Equal| s0@@2 s1@@2))
)))
(assert (forall ((a@@4 T@U) (b@@2 T@U) ) (! (let ((T@@43 (SeqTypeInv0 (type a@@4))))
 (=> (and (and (= (type a@@4) (SeqType T@@43)) (= (type b@@2) (SeqType T@@43))) (|Seq#Equal| a@@4 b@@2)) (= a@@4 b@@2)))
 :qid |AVLTreeb.298:17|
 :skolemid |65|
 :pattern ( (|Seq#Equal| a@@4 b@@2))
)))
(assert (forall ((s0@@3 T@U) (s1@@3 T@U) (n@@7 Int) ) (! (let ((T@@44 (SeqTypeInv0 (type s0@@3))))
 (=> (and (= (type s0@@3) (SeqType T@@44)) (= (type s1@@3) (SeqType T@@44))) (and (=> (|Seq#SameUntil| s0@@3 s1@@3 n@@7) (forall ((j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 n@@7)) (= (|Seq#Index| s0@@3 j@@3) (|Seq#Index| s1@@3 j@@3)))
 :qid |AVLTreeb.304:13|
 :skolemid |66|
 :pattern ( (|Seq#Index| s0@@3 j@@3))
 :pattern ( (|Seq#Index| s1@@3 j@@3))
))) (=> (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 n@@7)) (= (|Seq#Index| s0@@3 j@@4) (|Seq#Index| s1@@3 j@@4)))
 :qid |AVLTreeb.304:13|
 :skolemid |66|
 :pattern ( (|Seq#Index| s0@@3 j@@4))
 :pattern ( (|Seq#Index| s1@@3 j@@4))
)) (|Seq#SameUntil| s0@@3 s1@@3 n@@7)))))
 :qid |AVLTreeb.302:18|
 :skolemid |67|
 :pattern ( (|Seq#SameUntil| s0@@3 s1@@3 n@@7))
)))
(assert (forall ((s@@7 T@U) (n@@8 Int) ) (! (let ((T@@45 (SeqTypeInv0 (type s@@7))))
 (=> (and (= (type s@@7) (SeqType T@@45)) (<= 0 n@@8)) (and (=> (<= n@@8 (|Seq#Length| s@@7)) (= (|Seq#Length| (|Seq#Take| s@@7 n@@8)) n@@8)) (=> (< (|Seq#Length| s@@7) n@@8) (= (|Seq#Length| (|Seq#Take| s@@7 n@@8)) (|Seq#Length| s@@7))))))
 :qid |AVLTreeb.308:18|
 :skolemid |68|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@7 n@@8)))
)))
(assert (forall ((s@@8 T@U) (n@@9 Int) (j@@5 Int) ) (! (let ((T@@46 (SeqTypeInv0 (type s@@8))))
 (=> (= (type s@@8) (SeqType T@@46)) (=> (and (and (<= 0 j@@5) (< j@@5 n@@9)) (< j@@5 (|Seq#Length| s@@8))) (= (|Seq#Index| (|Seq#Take| s@@8 n@@9) j@@5) (|Seq#Index| s@@8 j@@5)))))
 :qid |AVLTreeb.312:18|
 :weight 25
 :skolemid |69|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@8 n@@9) j@@5))
)))
(assert (forall ((s@@9 T@U) (n@@10 Int) ) (! (let ((T@@47 (SeqTypeInv0 (type s@@9))))
 (=> (and (= (type s@@9) (SeqType T@@47)) (<= 0 n@@10)) (and (=> (<= n@@10 (|Seq#Length| s@@9)) (= (|Seq#Length| (|Seq#Drop| s@@9 n@@10)) (- (|Seq#Length| s@@9) n@@10))) (=> (< (|Seq#Length| s@@9) n@@10) (= (|Seq#Length| (|Seq#Drop| s@@9 n@@10)) 0)))))
 :qid |AVLTreeb.317:18|
 :skolemid |70|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@9 n@@10)))
)))
(assert (forall ((s@@10 T@U) (n@@11 Int) (j@@6 Int) ) (! (let ((T@@48 (SeqTypeInv0 (type s@@10))))
 (=> (= (type s@@10) (SeqType T@@48)) (=> (and (and (<= 0 n@@11) (<= 0 j@@6)) (< j@@6 (- (|Seq#Length| s@@10) n@@11))) (= (|Seq#Index| (|Seq#Drop| s@@10 n@@11) j@@6) (|Seq#Index| s@@10 (+ j@@6 n@@11))))))
 :qid |AVLTreeb.321:18|
 :weight 25
 :skolemid |71|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@10 n@@11) j@@6))
)))
(assert (forall ((s@@11 T@U) (t@@1 T@U) ) (! (let ((T@@49 (SeqTypeInv0 (type s@@11))))
 (=> (and (= (type s@@11) (SeqType T@@49)) (= (type t@@1) (SeqType T@@49))) (and (= (|Seq#Take| (|Seq#Append| s@@11 t@@1) (|Seq#Length| s@@11)) s@@11) (= (|Seq#Drop| (|Seq#Append| s@@11 t@@1) (|Seq#Length| s@@11)) t@@1))))
 :qid |AVLTreeb.325:18|
 :skolemid |72|
 :pattern ( (|Seq#Append| s@@11 t@@1))
)))
(assert (forall ((arg0@@36 Int) (arg1@@23 Int) ) (! (= (type (|Seq#Range| arg0@@36 arg1@@23)) (SeqType intType))
 :qid |funType:Seq#Range|
 :pattern ( (|Seq#Range| arg0@@36 arg1@@23))
)))
(assert (forall ((q@min Int) (q@max Int) ) (!  (and (=> (< q@min q@max) (= (|Seq#Length| (|Seq#Range| q@min q@max)) (- q@max q@min))) (=> (<= q@max q@min) (= (|Seq#Length| (|Seq#Range| q@min q@max)) 0)))
 :qid |AVLTreeb.332:15|
 :skolemid |73|
 :pattern ( (|Seq#Length| (|Seq#Range| q@min q@max)))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (- q@max@@0 q@min@@0))) (= (U_2_int (|Seq#Index| (|Seq#Range| q@min@@0 q@max@@0) j@@7)) (+ q@min@@0 j@@7)))
 :qid |AVLTreeb.333:15|
 :skolemid |74|
 :pattern ( (|Seq#Index| (|Seq#Range| q@min@@0 q@max@@0) j@@7))
)))
(assert (forall ((x@@12 T@U) (y@@2 T@U) ) (! (let ((T@@50 (type x@@12)))
 (=> (= (type y@@2) T@@50) (and (=> (|Seq#Contains| (|Seq#Singleton| x@@12) y@@2) (= x@@12 y@@2)) (=> (= x@@12 y@@2) (|Seq#Contains| (|Seq#Singleton| x@@12) y@@2)))))
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
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (type |exhaleMask#_95@0|) (MapType1Type refType (MapType0Type PermissionComponentType intType))) (= (type |exhaleHeap#_86@0|) (MapType2Type refType))) (= (type SecMask@32) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask@29) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type this) refType)) (= (type |exhaleMask#_95@1|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type |exhaleHeap#_94@0|) (MapType2Type refType))) (= (type Heap) (MapType2Type refType))) (= (type SecMask@9) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@31) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@27) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@30) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@28) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@29) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@23) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@26) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@24) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@25) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@19) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@22) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@20) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@21) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@15) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@18) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@16) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@17) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@13) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@14) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@12) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@10) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@11) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Heap@5) (MapType2Type refType))) (= (type |exhaleMask#_87@9|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (forall ((arg0@@37 T@U) ) (! (= (type (heapFragment arg0@@37)) PartialHeapTypeType)
 :qid |funType:heapFragment|
 :pattern ( (heapFragment arg0@@37))
))) (= (type |exhaleMask#_87@7|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type |exhaleMask#_87@8|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@8) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@7) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask@28) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type |exhaleMask#_87@5|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type |exhaleMask#_87@6|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@6) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@5) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type |exhaleMask#_87@3|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type |exhaleMask#_87@4|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@4) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@3) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@1) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type |exhaleMask#_87@1|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type |exhaleMask#_87@2|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@2) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type |exhaleMask#_87@0|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask@0) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Heap@4) (MapType2Type refType))) (= (type |nw#_53@0|) refType)) (forall ((arg0@@38 T@U) ) (! (= (type (dtype arg0@@38)) TypeNameType)
 :qid |funType:dtype|
 :pattern ( (dtype arg0@@38))
))) (= (type Mask@12) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Heap@1) (MapType2Type refType))) (= (type Mask@13) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask@14) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask@15) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask@16) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask@17) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask@18) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask@19) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type |exhaleMask#_60@0|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type |exhaleMask#_60@1|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type |exhaleMask#_60@2|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type |exhaleMask#_60@3|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type |exhaleMask#_60@4|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type |exhaleMask#_60@5|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type |exhaleHeap#_59@0|) (MapType2Type refType))) (= (type Mask@20) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask@21) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask@22) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask@23) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Heap@2) (MapType2Type refType))) (= (type Mask@27) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type |exhaleHeap#_74@0|) (MapType2Type refType))) (= (type Heap@3) (MapType2Type refType))) (= (type |r#122@0|) refType)) (= (type |this#120@0|) refType)) (= (type |exhaleMask#_75@0|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type |exhaleMask#_75@1|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type |exhaleMask#_75@2|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type |exhaleMask#_75@3|) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask@24) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask@25) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask@26) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask@10) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask@11) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask@8) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask@9) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask@6) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask@7) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask@4) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask@5) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask@2) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask@3) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Heap@0) (MapType2Type refType))) (= (type CurrentModule) ModuleNameType)) (= (type Mask@0) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask@1) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Mask) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type SecMask) (MapType1Type refType (MapType0Type PermissionComponentType intType)))) (= (type Credits) (MapType0Type refType intType))) (= (type |n#2|) refType)) (= (type |this#118|) refType)) (= (type |this#120|) refType)) (= (type |r#122|) refType)) (= (type |r#75|) refType)))
(push 1)
(set-info :boogie-vc-id AVLTree.insert)
(assert (not
(let ((anon93_correct  (=> (! (and %lbl%+13960 true) :lblpos +13960) (=> (IsGoodMask |exhaleMask#_95@0|) (=> (and (wf |exhaleHeap#_86@0| |exhaleMask#_95@0| SecMask@32) (wf |exhaleHeap#_86@0| Mask@29 SecMask@32)) (and (! (or %lbl%@1028789 (> (Fractions 50) 0)) :lblneg @1028789) (=> (> (Fractions 50) 0) (and (! (or %lbl%@1028797  (and (<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_95@0| this AVLTree.keys) perm$R))) (=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_95@0| this AVLTree.keys) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_95@0| this AVLTree.keys) perm$N)))))) :lblneg @1028797) (=> (and (<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_95@0| this AVLTree.keys) perm$R))) (=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_95@0| this AVLTree.keys) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_95@0| this AVLTree.keys) perm$N))))) (=> (= |exhaleMask#_95@1| (MapType1Store |exhaleMask#_95@0| this AVLTree.keys (MapType0Store (MapType1Select |exhaleMask#_95@0| this AVLTree.keys) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select |exhaleMask#_95@0| this AVLTree.keys) perm$R)) (Fractions 50)))))) (=> (and (IsGoodMask |exhaleMask#_95@1|) (wf |exhaleHeap#_86@0| |exhaleMask#_95@1| SecMask@32)) (=> (and (and (wf |exhaleHeap#_86@0| Mask@29 SecMask@32) (IsGoodExhaleState |exhaleHeap#_94@0| |exhaleHeap#_86@0| |exhaleMask#_95@1| SecMask@32)) (and (IsGoodMask |exhaleMask#_95@1|) (wf |exhaleHeap#_94@0| |exhaleMask#_95@1| SecMask@32))) (and (! (or %lbl%@1028923 (forall ((|lk#_106| T@U) ) (!  (=> (= (type |lk#_106|) refType) (or (and (and (=> (< 0 (U_2_int (MapType2Select |exhaleHeap#_94@0| |lk#_106| held))) (< 0 (U_2_int (MapType2Select Heap |lk#_106| held)))) (=> (< 0 (U_2_int (MapType2Select Heap |lk#_106| held))) (< 0 (U_2_int (MapType2Select |exhaleHeap#_94@0| |lk#_106| held))))) (and (=> (U_2_bool (MapType2Select |exhaleHeap#_94@0| |lk#_106| rdheld)) (U_2_bool (MapType2Select Heap |lk#_106| rdheld))) (=> (U_2_bool (MapType2Select Heap |lk#_106| rdheld)) (U_2_bool (MapType2Select |exhaleHeap#_94@0| |lk#_106| rdheld))))) false))
 :qid |AVLTreeb.1534:79|
 :skolemid |86|
 :pattern ( (MapType2Select |exhaleHeap#_94@0| |lk#_106| held))
 :pattern ( (MapType2Select |exhaleHeap#_94@0| |lk#_106| rdheld))
))) :lblneg @1028923) (=> (forall ((|lk#_106@@0| T@U) ) (!  (=> (= (type |lk#_106@@0|) refType) (or (and (and (=> (< 0 (U_2_int (MapType2Select |exhaleHeap#_94@0| |lk#_106@@0| held))) (< 0 (U_2_int (MapType2Select Heap |lk#_106@@0| held)))) (=> (< 0 (U_2_int (MapType2Select Heap |lk#_106@@0| held))) (< 0 (U_2_int (MapType2Select |exhaleHeap#_94@0| |lk#_106@@0| held))))) (and (=> (U_2_bool (MapType2Select |exhaleHeap#_94@0| |lk#_106@@0| rdheld)) (U_2_bool (MapType2Select Heap |lk#_106@@0| rdheld))) (=> (U_2_bool (MapType2Select Heap |lk#_106@@0| rdheld)) (U_2_bool (MapType2Select |exhaleHeap#_94@0| |lk#_106@@0| rdheld))))) false))
 :qid |AVLTreeb.1534:79|
 :skolemid |86|
 :pattern ( (MapType2Select |exhaleHeap#_94@0| |lk#_106@@0| held))
 :pattern ( (MapType2Select |exhaleHeap#_94@0| |lk#_106@@0| rdheld))
)) (! (or %lbl%@1028989 (forall ((ch T@U) ) (!  (=> (= (type ch) refType) (or (= ch null) (<= 0 (U_2_int (MapType0Select ZeroCredits ch)))))
 :qid |AVLTreeb.1535:81|
 :skolemid |87|
 :no-pattern (type ch)
 :no-pattern (U_2_int ch)
 :no-pattern (U_2_bool ch)
))) :lblneg @1028989)))))))))))))))
(let ((anon139_Else_correct  (=> (! (and %lbl%+13958 true) :lblpos +13958) (=> (CanRead |exhaleMask#_95@0| SecMask@32 this AVLTree.valid) anon93_correct))))
(let ((anon139_Then_correct  (=> (! (and %lbl%+13956 true) :lblpos +13956) (=> (and (not (CanRead |exhaleMask#_95@0| SecMask@32 this AVLTree.valid)) (< (U_2_int (MapType2Select |exhaleHeap#_86@0| this AVLTree.valid)) (U_2_int (MapType2Select |exhaleHeap#_94@0| this AVLTree.valid)))) anon93_correct))))
(let ((anon90_correct  (=> (! (and %lbl%+13946 true) :lblpos +13946) (=> (and (wf |exhaleHeap#_86@0| SecMask@31 SecMask@31) (= SecMask@32 SecMask@31)) (and anon139_Then_correct anon139_Else_correct)))))
(let ((anon89_correct  (=> (! (and %lbl%+13942 true) :lblpos +13942) (=> (wf |exhaleHeap#_86@0| SecMask@30 SecMask@30) (=> (and (wf |exhaleHeap#_86@0| Mask@29 SecMask@30) (= SecMask@31 SecMask@30)) anon90_correct)))))
(let ((anon138_Else_correct  (=> (! (and %lbl%+13940 true) :lblpos +13940) (=> (and (<= 0 (U_2_int (MapType0Select (MapType1Select SecMask@28 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.balanceFactor) perm$R))) (= SecMask@30 SecMask@28)) anon89_correct))))
(let ((anon138_Then_correct  (=> (! (and %lbl%+13938 true) :lblpos +13938) (=> (< (U_2_int (MapType0Select (MapType1Select SecMask@28 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.balanceFactor) perm$R)) 0) (=> (and (= SecMask@29 (MapType1Store SecMask@28 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.balanceFactor (MapType0Store (MapType1Select SecMask@28 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.balanceFactor) perm$R (int_2_U 0)))) (= SecMask@30 SecMask@29)) anon89_correct)))))
(let ((anon137_Then_correct  (=> (! (and %lbl%+13936 true) :lblpos +13936) (=> (and (not (= (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) null)) (= SecMask@28 (MapType1Store SecMask@27 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.balanceFactor (MapType0Store (MapType1Select SecMask@27 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.balanceFactor) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select SecMask@27 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.balanceFactor) perm$R)) (Fractions 50))))))) (and anon138_Then_correct anon138_Else_correct)))))
(let ((anon137_Else_correct  (=> (! (and %lbl%+13944 true) :lblpos +13944) (=> (and (= (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) null) (= SecMask@31 SecMask@27)) anon90_correct))))
(let ((anon85_correct  (=> (! (and %lbl%+13921 true) :lblpos +13921) (=> (wf |exhaleHeap#_86@0| SecMask@26 SecMask@26) (=> (and (wf |exhaleHeap#_86@0| Mask@29 SecMask@26) (= SecMask@27 SecMask@26)) (and anon137_Then_correct anon137_Else_correct))))))
(let ((anon136_Else_correct  (=> (! (and %lbl%+13919 true) :lblpos +13919) (=> (and (<= 0 (U_2_int (MapType0Select (MapType1Select SecMask@24 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.keys) perm$R))) (= SecMask@26 SecMask@24)) anon85_correct))))
(let ((anon136_Then_correct  (=> (! (and %lbl%+13917 true) :lblpos +13917) (=> (< (U_2_int (MapType0Select (MapType1Select SecMask@24 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.keys) perm$R)) 0) (=> (and (= SecMask@25 (MapType1Store SecMask@24 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.keys (MapType0Store (MapType1Select SecMask@24 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.keys) perm$R (int_2_U 0)))) (= SecMask@26 SecMask@25)) anon85_correct)))))
(let ((anon135_Then_correct  (=> (! (and %lbl%+13915 true) :lblpos +13915) (=> (and (not (= (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) null)) (= SecMask@24 (MapType1Store SecMask@23 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.keys (MapType0Store (MapType1Select SecMask@23 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.keys) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select SecMask@23 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.keys) perm$R)) (Fractions 50))))))) (and anon136_Then_correct anon136_Else_correct)))))
(let ((anon135_Else_correct  (=> (! (and %lbl%+13923 true) :lblpos +13923) (=> (and (= (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) null) (= SecMask@27 SecMask@23)) (and anon137_Then_correct anon137_Else_correct)))))
(let ((anon81_correct  (=> (! (and %lbl%+13900 true) :lblpos +13900) (=> (wf |exhaleHeap#_86@0| SecMask@22 SecMask@22) (=> (and (wf |exhaleHeap#_86@0| Mask@29 SecMask@22) (= SecMask@23 SecMask@22)) (and anon135_Then_correct anon135_Else_correct))))))
(let ((anon134_Else_correct  (=> (! (and %lbl%+13898 true) :lblpos +13898) (=> (and (<= 0 (U_2_int (MapType0Select (MapType1Select SecMask@20 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.height) perm$R))) (= SecMask@22 SecMask@20)) anon81_correct))))
(let ((anon134_Then_correct  (=> (! (and %lbl%+13896 true) :lblpos +13896) (=> (< (U_2_int (MapType0Select (MapType1Select SecMask@20 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.height) perm$R)) 0) (=> (and (= SecMask@21 (MapType1Store SecMask@20 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.height (MapType0Store (MapType1Select SecMask@20 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.height) perm$R (int_2_U 0)))) (= SecMask@22 SecMask@21)) anon81_correct)))))
(let ((anon133_Then_correct  (=> (! (and %lbl%+13894 true) :lblpos +13894) (=> (and (not (= (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) null)) (= SecMask@20 (MapType1Store SecMask@19 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.height (MapType0Store (MapType1Select SecMask@19 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.height) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select SecMask@19 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.height) perm$R)) (Fractions 50))))))) (and anon134_Then_correct anon134_Else_correct)))))
(let ((anon133_Else_correct  (=> (! (and %lbl%+13902 true) :lblpos +13902) (=> (and (= (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) null) (= SecMask@23 SecMask@19)) (and anon135_Then_correct anon135_Else_correct)))))
(let ((anon77_correct  (=> (! (and %lbl%+13879 true) :lblpos +13879) (=> (wf |exhaleHeap#_86@0| SecMask@18 SecMask@18) (=> (and (wf |exhaleHeap#_86@0| Mask@29 SecMask@18) (= SecMask@19 SecMask@18)) (and anon133_Then_correct anon133_Else_correct))))))
(let ((anon132_Else_correct  (=> (! (and %lbl%+13877 true) :lblpos +13877) (=> (and (<= 0 (U_2_int (MapType0Select (MapType1Select SecMask@16 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.valid) perm$R))) (= SecMask@18 SecMask@16)) anon77_correct))))
(let ((anon132_Then_correct  (=> (! (and %lbl%+13875 true) :lblpos +13875) (=> (< (U_2_int (MapType0Select (MapType1Select SecMask@16 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.valid) perm$R)) 0) (=> (and (= SecMask@17 (MapType1Store SecMask@16 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.valid (MapType0Store (MapType1Select SecMask@16 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.valid) perm$R (int_2_U 0)))) (= SecMask@18 SecMask@17)) anon77_correct)))))
(let ((anon131_Then_correct  (=> (! (and %lbl%+13873 true) :lblpos +13873) (=> (and (not (= (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) null)) (= SecMask@16 (MapType1Store SecMask@15 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.valid (MapType0Store (MapType1Select SecMask@15 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.valid) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select SecMask@15 (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.valid) perm$R)) (Fractions 100))))))) (and anon132_Then_correct anon132_Else_correct)))))
(let ((anon131_Else_correct  (=> (! (and %lbl%+13881 true) :lblpos +13881) (=> (and (= (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) null) (= SecMask@19 SecMask@15)) (and anon133_Then_correct anon133_Else_correct)))))
(let ((anon74_correct  (=> (! (and %lbl%+13866 true) :lblpos +13866) (=> (and (wf |exhaleHeap#_86@0| SecMask@15 SecMask@15) (wf |exhaleHeap#_86@0| Mask@29 SecMask@15)) (and anon131_Then_correct anon131_Else_correct)))))
(let ((anon130_Else_correct  (=> (! (and %lbl%+13860 true) :lblpos +13860) (=> (and (<= 0 (U_2_int (MapType0Select (MapType1Select SecMask@13 this AVLTree.keys) perm$R))) (= SecMask@15 SecMask@13)) anon74_correct))))
(let ((anon130_Then_correct  (=> (! (and %lbl%+13858 true) :lblpos +13858) (=> (< (U_2_int (MapType0Select (MapType1Select SecMask@13 this AVLTree.keys) perm$R)) 0) (=> (and (= SecMask@14 (MapType1Store SecMask@13 this AVLTree.keys (MapType0Store (MapType1Select SecMask@13 this AVLTree.keys) perm$R (int_2_U 0)))) (= SecMask@15 SecMask@14)) anon74_correct)))))
(let ((anon72_correct  (=> (! (and %lbl%+13856 true) :lblpos +13856) (=> (wf |exhaleHeap#_86@0| SecMask@12 SecMask@12) (=> (and (wf |exhaleHeap#_86@0| Mask@29 SecMask@12) (= SecMask@13 (MapType1Store SecMask@12 this AVLTree.keys (MapType0Store (MapType1Select SecMask@12 this AVLTree.keys) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select SecMask@12 this AVLTree.keys) perm$R)) (Fractions 50))))))) (and anon130_Then_correct anon130_Else_correct))))))
(let ((anon129_Else_correct  (=> (! (and %lbl%+13849 true) :lblpos +13849) (=> (and (<= 0 (U_2_int (MapType0Select (MapType1Select SecMask@10 this AVLTree.root) perm$R))) (= SecMask@12 SecMask@10)) anon72_correct))))
(let ((anon129_Then_correct  (=> (! (and %lbl%+13847 true) :lblpos +13847) (=> (< (U_2_int (MapType0Select (MapType1Select SecMask@10 this AVLTree.root) perm$R)) 0) (=> (and (= SecMask@11 (MapType1Store SecMask@10 this AVLTree.root (MapType0Store (MapType1Select SecMask@10 this AVLTree.root) perm$R (int_2_U 0)))) (= SecMask@12 SecMask@11)) anon72_correct)))))
(let ((anon70_correct  (=> (! (and %lbl%+13845 true) :lblpos +13845) (=> (= SecMask@10 (MapType1Store SecMask@9 this AVLTree.root (MapType0Store (MapType1Select SecMask@9 this AVLTree.root) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select SecMask@9 this AVLTree.root) perm$R)) (Fractions 100)))))) (and anon129_Then_correct anon129_Else_correct)))))
(let ((anon128_Else_correct  (=> (! (and %lbl%+13838 true) :lblpos +13838) (=> (not (= (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) null)) anon70_correct))))
(let ((anon128_Then_correct  (=> (! (and %lbl%+13836 true) :lblpos +13836) (=> (and (= (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) null) (|Seq#Equal| (MapType2Select |exhaleHeap#_86@0| this AVLTree.keys) (|Seq#Empty| intType))) anon70_correct))))
(let ((anon127_Else_correct  (=> (! (and %lbl%+13827 true) :lblpos +13827) (=> (= (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) null) (and anon128_Then_correct anon128_Else_correct)))))
(let ((anon127_Then_correct  (=> (! (and %lbl%+13825 true) :lblpos +13825) (=> (and (not (= (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) null)) (|Seq#Equal| (MapType2Select |exhaleHeap#_86@0| this AVLTree.keys) (MapType2Select |exhaleHeap#_86@0| (MapType2Select |exhaleHeap#_86@0| this AVLTree.root) AVLTreeNode.keys))) (and anon128_Then_correct anon128_Else_correct)))))
(let ((anon126_Then_correct  (=> (! (and %lbl%+13823 true) :lblpos +13823) (=> (or false (and (and (and (and (= |predVer#_83@0| (U_2_int (MapType2Select |exhaleHeap#_86@0| this AVLTree.valid))) (= this this)) true) (not |cond#_52@0|)) true)) (and anon127_Then_correct anon127_Else_correct)))))
(let ((anon126_Else_correct  (=> (! (and %lbl%+13948 true) :lblpos +13948) (=> (and (not (or false (and (and (and (and (= |predVer#_83@0| (U_2_int (MapType2Select |exhaleHeap#_86@0| this AVLTree.valid))) (= this this)) true) (not |cond#_52@0|)) true))) (= SecMask@32 SecMask@9)) (and anon139_Then_correct anon139_Else_correct)))))
(let ((anon65_correct  (=> (! (and %lbl%+13817 true) :lblpos +13817) (=> (IsGoodExhaleState |exhaleHeap#_86@0| Heap@5 |exhaleMask#_87@9| SecMask@9) (=> (and (IsGoodMask |exhaleMask#_87@9|) (wf |exhaleHeap#_86@0| |exhaleMask#_87@9| SecMask@9)) (=> (and (and (not (= this null)) (wf |exhaleHeap#_86@0| |exhaleMask#_87@9| SecMask@9)) (and (> (Fractions 100) 0) (= Mask@29 (MapType1Store |exhaleMask#_87@9| this AVLTree.valid (MapType0Store (MapType1Select |exhaleMask#_87@9| this AVLTree.valid) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@9| this AVLTree.valid) perm$R)) (Fractions 100)))))))) (=> (and (and (and (IsGoodMask Mask@29) (IsGoodState (heapFragment (MapType2Select |exhaleHeap#_86@0| this AVLTree.valid)))) (and (wf |exhaleHeap#_86@0| Mask@29 SecMask@9) (wf |exhaleHeap#_86@0| Mask@29 SecMask@9))) (and (and (IsGoodMask Mask@29) (wf |exhaleHeap#_86@0| Mask@29 SecMask@9)) (and (= |predVer#_83@0| (U_2_int (MapType2Select |exhaleHeap#_86@0| this AVLTree.valid))) (wf |exhaleHeap#_86@0| Mask@29 SecMask@9)))) (and (! (or %lbl%@1027379 (|Seq#Contains| (MapType2Select |exhaleHeap#_86@0| this AVLTree.keys) (int_2_U |k#0|))) :lblneg @1027379) (=> (|Seq#Contains| (MapType2Select |exhaleHeap#_86@0| this AVLTree.keys) (int_2_U |k#0|)) (and (! (or %lbl%@1027390 (forall ((|j#73#125| Int) ) (!  (=> (and (<= 0 |j#73#125|) (< |j#73#125| (|Seq#Length| (MapType2Select Heap this AVLTree.keys)))) (|Seq#Contains| (MapType2Select |exhaleHeap#_86@0| this AVLTree.keys) (|Seq#Index| (MapType2Select Heap this AVLTree.keys) |j#73#125|)))
 :qid |AVLTreeb.1454:130|
 :skolemid |84|
))) :lblneg @1027390) (=> (forall ((|j#73#125@@0| Int) ) (!  (=> (and (<= 0 |j#73#125@@0|) (< |j#73#125@@0| (|Seq#Length| (MapType2Select Heap this AVLTree.keys)))) (|Seq#Contains| (MapType2Select |exhaleHeap#_86@0| this AVLTree.keys) (|Seq#Index| (MapType2Select Heap this AVLTree.keys) |j#73#125@@0|)))
 :qid |AVLTreeb.1454:130|
 :skolemid |84|
)) (and (! (or %lbl%@1027436 (forall ((|j#74#126| Int) ) (!  (=> (and (<= 0 |j#74#126|) (< |j#74#126| (|Seq#Length| (MapType2Select |exhaleHeap#_86@0| this AVLTree.keys)))) (or (|Seq#Contains| (MapType2Select Heap this AVLTree.keys) (|Seq#Index| (MapType2Select |exhaleHeap#_86@0| this AVLTree.keys) |j#74#126|)) (= (U_2_int (|Seq#Index| (MapType2Select |exhaleHeap#_86@0| this AVLTree.keys) |j#74#126|)) |k#0|)))
 :qid |AVLTreeb.1455:130|
 :skolemid |85|
))) :lblneg @1027436) (=> (forall ((|j#74#126@@0| Int) ) (!  (=> (and (<= 0 |j#74#126@@0|) (< |j#74#126@@0| (|Seq#Length| (MapType2Select |exhaleHeap#_86@0| this AVLTree.keys)))) (or (|Seq#Contains| (MapType2Select Heap this AVLTree.keys) (|Seq#Index| (MapType2Select |exhaleHeap#_86@0| this AVLTree.keys) |j#74#126@@0|)) (= (U_2_int (|Seq#Index| (MapType2Select |exhaleHeap#_86@0| this AVLTree.keys) |j#74#126@@0|)) |k#0|)))
 :qid |AVLTreeb.1455:130|
 :skolemid |85|
)) (and (! (or %lbl%@1027499 (> (Fractions 100) 0)) :lblneg @1027499) (=> (> (Fractions 100) 0) (and (! (or %lbl%@1027507  (and (<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@29 this AVLTree.valid) perm$R))) (=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@29 this AVLTree.valid) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select Mask@29 this AVLTree.valid) perm$N)))))) :lblneg @1027507) (=> (and (<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@29 this AVLTree.valid) perm$R))) (=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@29 this AVLTree.valid) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select Mask@29 this AVLTree.valid) perm$N))))) (=> (= |exhaleMask#_95@0| (MapType1Store Mask@29 this AVLTree.valid (MapType0Store (MapType1Select Mask@29 this AVLTree.valid) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select Mask@29 this AVLTree.valid) perm$R)) (Fractions 100)))))) (and anon126_Then_correct anon126_Else_correct)))))))))))))))))))
(let ((anon125_Else_correct  (=> (! (and %lbl%+13810 true) :lblpos +13810) (=> (= (MapType2Select Heap@5 this AVLTree.root) null) (=> (and (= |exhaleMask#_87@9| |exhaleMask#_87@7|) (= SecMask@9 SecMask@7)) anon65_correct)))))
(let ((anon125_Then_correct  (=> (! (and %lbl%+13808 true) :lblpos +13808) (=> (not (= (MapType2Select Heap@5 this AVLTree.root) null)) (and (! (or %lbl%@1026999 (> (Fractions 50) 0)) :lblneg @1026999) (=> (> (Fractions 50) 0) (and (! (or %lbl%@1027007  (and (<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@7| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.balanceFactor) perm$R))) (=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@7| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.balanceFactor) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@7| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.balanceFactor) perm$N)))))) :lblneg @1027007) (=> (and (<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@7| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.balanceFactor) perm$R))) (=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@7| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.balanceFactor) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@7| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.balanceFactor) perm$N))))) (=> (and (and (and (= |exhaleMask#_87@8| (MapType1Store |exhaleMask#_87@7| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.balanceFactor (MapType0Store (MapType1Select |exhaleMask#_87@7| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.balanceFactor) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@7| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.balanceFactor) perm$R)) (Fractions 50)))))) (> (Fractions 50) 0)) (and (= SecMask@8 (MapType1Store SecMask@7 (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.balanceFactor (MapType0Store (MapType1Select SecMask@7 (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.balanceFactor) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select SecMask@7 (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.balanceFactor) perm$R)) (Fractions 50)))))) (IsGoodMask |exhaleMask#_87@8|))) (and (and (wf Heap@5 |exhaleMask#_87@8| SecMask@8) (wf Heap@5 Mask@28 SecMask@8)) (and (= |exhaleMask#_87@9| |exhaleMask#_87@8|) (= SecMask@9 SecMask@8)))) anon65_correct)))))))))
(let ((anon124_Else_correct  (=> (! (and %lbl%+13800 true) :lblpos +13800) (=> (= (MapType2Select Heap@5 this AVLTree.root) null) (=> (and (= SecMask@7 SecMask@5) (= |exhaleMask#_87@7| |exhaleMask#_87@5|)) (and anon125_Then_correct anon125_Else_correct))))))
(let ((anon124_Then_correct  (=> (! (and %lbl%+13798 true) :lblpos +13798) (=> (not (= (MapType2Select Heap@5 this AVLTree.root) null)) (and (! (or %lbl%@1026746 (> (Fractions 50) 0)) :lblneg @1026746) (=> (> (Fractions 50) 0) (and (! (or %lbl%@1026754  (and (<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@5| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.keys) perm$R))) (=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@5| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.keys) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@5| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.keys) perm$N)))))) :lblneg @1026754) (=> (and (<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@5| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.keys) perm$R))) (=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@5| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.keys) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@5| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.keys) perm$N))))) (=> (and (and (and (= |exhaleMask#_87@6| (MapType1Store |exhaleMask#_87@5| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.keys (MapType0Store (MapType1Select |exhaleMask#_87@5| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.keys) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@5| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.keys) perm$R)) (Fractions 50)))))) (> (Fractions 50) 0)) (and (= SecMask@6 (MapType1Store SecMask@5 (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.keys (MapType0Store (MapType1Select SecMask@5 (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.keys) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select SecMask@5 (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.keys) perm$R)) (Fractions 50)))))) (IsGoodMask |exhaleMask#_87@6|))) (and (and (wf Heap@5 |exhaleMask#_87@6| SecMask@6) (wf Heap@5 Mask@28 SecMask@6)) (and (= SecMask@7 SecMask@6) (= |exhaleMask#_87@7| |exhaleMask#_87@6|)))) (and anon125_Then_correct anon125_Else_correct))))))))))
(let ((anon123_Else_correct  (=> (! (and %lbl%+13790 true) :lblpos +13790) (=> (= (MapType2Select Heap@5 this AVLTree.root) null) (=> (and (= |exhaleMask#_87@5| |exhaleMask#_87@3|) (= SecMask@5 SecMask@3)) (and anon124_Then_correct anon124_Else_correct))))))
(let ((anon123_Then_correct  (=> (! (and %lbl%+13788 true) :lblpos +13788) (=> (not (= (MapType2Select Heap@5 this AVLTree.root) null)) (and (! (or %lbl%@1026493 (> (Fractions 50) 0)) :lblneg @1026493) (=> (> (Fractions 50) 0) (and (! (or %lbl%@1026501  (and (<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@3| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.height) perm$R))) (=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@3| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.height) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@3| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.height) perm$N)))))) :lblneg @1026501) (=> (and (<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@3| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.height) perm$R))) (=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@3| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.height) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@3| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.height) perm$N))))) (=> (and (and (and (= |exhaleMask#_87@4| (MapType1Store |exhaleMask#_87@3| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.height (MapType0Store (MapType1Select |exhaleMask#_87@3| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.height) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@3| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.height) perm$R)) (Fractions 50)))))) (> (Fractions 50) 0)) (and (= SecMask@4 (MapType1Store SecMask@3 (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.height (MapType0Store (MapType1Select SecMask@3 (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.height) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select SecMask@3 (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.height) perm$R)) (Fractions 50)))))) (IsGoodMask |exhaleMask#_87@4|))) (and (and (wf Heap@5 |exhaleMask#_87@4| SecMask@4) (wf Heap@5 Mask@28 SecMask@4)) (and (= |exhaleMask#_87@5| |exhaleMask#_87@4|) (= SecMask@5 SecMask@4)))) (and anon124_Then_correct anon124_Else_correct))))))))))
(let ((anon58_correct  (=> (! (and %lbl%+13778 true) :lblpos +13778) (=> (IsGoodMask |exhaleMask#_87@2|) (=> (and (and (wf Heap@5 |exhaleMask#_87@2| SecMask@2) (wf Heap@5 Mask@28 SecMask@2)) (and (= SecMask@3 SecMask@2) (= |exhaleMask#_87@3| |exhaleMask#_87@2|))) (and anon123_Then_correct anon123_Else_correct))))))
(let ((anon122_Else_correct  (=> (! (and %lbl%+13776 true) :lblpos +13776) (=> (CanRead |exhaleMask#_87@2| SecMask@2 (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.valid) anon58_correct))))
(let ((anon122_Then_correct  (=> (! (and %lbl%+13774 true) :lblpos +13774) (=> (and (not (CanRead |exhaleMask#_87@2| SecMask@2 (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.valid)) (< (U_2_int (MapType2Select Heap@5 (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.valid)) (U_2_int (MapType2Select |exhaleHeap#_86@0| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.valid)))) anon58_correct))))
(let ((anon121_Then_correct  (=> (! (and %lbl%+13772 true) :lblpos +13772) (=> (not (= (MapType2Select Heap@5 this AVLTree.root) null)) (and (! (or %lbl%@1026186 (> (Fractions 100) 0)) :lblneg @1026186) (=> (> (Fractions 100) 0) (and (! (or %lbl%@1026194  (and (<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@1| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.valid) perm$R))) (=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@1| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.valid) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@1| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.valid) perm$N)))))) :lblneg @1026194) (=> (and (<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@1| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.valid) perm$R))) (=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@1| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.valid) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@1| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.valid) perm$N))))) (=> (= |exhaleMask#_87@2| (MapType1Store |exhaleMask#_87@1| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.valid (MapType0Store (MapType1Select |exhaleMask#_87@1| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.valid) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@1| (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.valid) perm$R)) (Fractions 100)))))) (=> (and (> (Fractions 100) 0) (= SecMask@2 (MapType1Store SecMask@1 (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.valid (MapType0Store (MapType1Select SecMask@1 (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.valid) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select SecMask@1 (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.valid) perm$R)) (Fractions 100))))))) (and anon122_Then_correct anon122_Else_correct)))))))))))
(let ((anon121_Else_correct  (=> (! (and %lbl%+13780 true) :lblpos +13780) (=> (= (MapType2Select Heap@5 this AVLTree.root) null) (=> (and (= SecMask@3 SecMask@1) (= |exhaleMask#_87@3| |exhaleMask#_87@1|)) (and anon123_Then_correct anon123_Else_correct))))))
(let ((anon55_correct  (=> (! (and %lbl%+13766 true) :lblpos +13766) (and (! (or %lbl%@1025841 (> (Fractions 100) 0)) :lblneg @1025841) (=> (> (Fractions 100) 0) (and (! (or %lbl%@1025849  (and (<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@28 this AVLTree.root) perm$R))) (=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@28 this AVLTree.root) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select Mask@28 this AVLTree.root) perm$N)))))) :lblneg @1025849) (=> (and (<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@28 this AVLTree.root) perm$R))) (=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@28 this AVLTree.root) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select Mask@28 this AVLTree.root) perm$N))))) (=> (and (= |exhaleMask#_87@0| (MapType1Store Mask@28 this AVLTree.root (MapType0Store (MapType1Select Mask@28 this AVLTree.root) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select Mask@28 this AVLTree.root) perm$R)) (Fractions 100)))))) (> (Fractions 100) 0)) (=> (and (and (= SecMask@0 (MapType1Store ZeroMask this AVLTree.root (MapType0Store (MapType1Select ZeroMask this AVLTree.root) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select ZeroMask this AVLTree.root) perm$R)) (Fractions 100)))))) (IsGoodMask |exhaleMask#_87@0|)) (and (wf Heap@5 |exhaleMask#_87@0| SecMask@0) (wf Heap@5 Mask@28 SecMask@0))) (and (! (or %lbl%@1026007 (> (Fractions 50) 0)) :lblneg @1026007) (=> (> (Fractions 50) 0) (and (! (or %lbl%@1026015  (and (<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@0| this AVLTree.keys) perm$R))) (=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@0| this AVLTree.keys) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@0| this AVLTree.keys) perm$N)))))) :lblneg @1026015) (=> (and (<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@0| this AVLTree.keys) perm$R))) (=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@0| this AVLTree.keys) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@0| this AVLTree.keys) perm$N))))) (=> (and (= |exhaleMask#_87@1| (MapType1Store |exhaleMask#_87@0| this AVLTree.keys (MapType0Store (MapType1Select |exhaleMask#_87@0| this AVLTree.keys) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select |exhaleMask#_87@0| this AVLTree.keys) perm$R)) (Fractions 50)))))) (> (Fractions 50) 0)) (=> (and (and (= SecMask@1 (MapType1Store SecMask@0 this AVLTree.keys (MapType0Store (MapType1Select SecMask@0 this AVLTree.keys) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select SecMask@0 this AVLTree.keys) perm$R)) (Fractions 50)))))) (IsGoodMask |exhaleMask#_87@1|)) (and (wf Heap@5 |exhaleMask#_87@1| SecMask@1) (wf Heap@5 Mask@28 SecMask@1))) (and anon121_Then_correct anon121_Else_correct))))))))))))))))
(let ((anon120_Else_correct  (=> (! (and %lbl%+13760 true) :lblpos +13760) (=> (not (= (MapType2Select Heap@5 this AVLTree.root) null)) anon55_correct))))
(let ((anon120_Then_correct  (=> (! (and %lbl%+13758 true) :lblpos +13758) (=> (= (MapType2Select Heap@5 this AVLTree.root) null) (and (! (or %lbl%@1025819 (|Seq#Equal| (MapType2Select Heap@5 this AVLTree.keys) (|Seq#Empty| intType))) :lblneg @1025819) (=> (|Seq#Equal| (MapType2Select Heap@5 this AVLTree.keys) (|Seq#Empty| intType)) anon55_correct))))))
(let ((anon119_Else_correct  (=> (! (and %lbl%+13749 true) :lblpos +13749) (=> (= (MapType2Select Heap@5 this AVLTree.root) null) (and anon120_Then_correct anon120_Else_correct)))))
(let ((anon119_Then_correct  (=> (! (and %lbl%+13747 true) :lblpos +13747) (=> (not (= (MapType2Select Heap@5 this AVLTree.root) null)) (and (! (or %lbl%@1025776 (|Seq#Equal| (MapType2Select Heap@5 this AVLTree.keys) (MapType2Select Heap@5 (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.keys))) :lblneg @1025776) (=> (|Seq#Equal| (MapType2Select Heap@5 this AVLTree.keys) (MapType2Select Heap@5 (MapType2Select Heap@5 this AVLTree.root) AVLTreeNode.keys)) (and anon120_Then_correct anon120_Else_correct)))))))
(let ((anon51_correct  (=> (! (and %lbl%+13745 true) :lblpos +13745) (and (! (or %lbl%@1025624 (CanWrite Mask@28 this AVLTree.keys)) :lblneg @1025624) (=> (CanWrite Mask@28 this AVLTree.keys) (and (! (or %lbl%@1025631  (=> true (not (= this null)))) :lblneg @1025631) (=> (=> true (not (= this null))) (and (! (or %lbl%@1025641  (=> true (CanRead Mask@28 ZeroMask this AVLTree.root))) :lblneg @1025641) (=> (=> true (CanRead Mask@28 ZeroMask this AVLTree.root)) (and (! (or %lbl%@1025653  (=> true (not (= (MapType2Select Heap@4 this AVLTree.root) null)))) :lblneg @1025653) (=> (=> true (not (= (MapType2Select Heap@4 this AVLTree.root) null))) (and (! (or %lbl%@1025668  (=> true (CanRead Mask@28 ZeroMask (MapType2Select Heap@4 this AVLTree.root) AVLTreeNode.keys))) :lblneg @1025668) (=> (=> true (CanRead Mask@28 ZeroMask (MapType2Select Heap@4 this AVLTree.root) AVLTreeNode.keys)) (=> (= Heap@5 (MapType2Store Heap@4 this AVLTree.keys (MapType2Select Heap@4 (MapType2Select Heap@4 this AVLTree.root) AVLTreeNode.keys))) (=> (and (wf Heap@5 Mask@28 ZeroMask) (|#AVLTree.valid#trigger| this)) (=> (and (and (< 0 |foldK#_85|) (< (* 1000 |foldK#_85|) (Fractions 1))) (< (* 1000 |foldK#_85|) |methodK#_37|)) (and (! (or %lbl%@1025752 (not (= this null))) :lblneg @1025752) (=> (not (= this null)) (and anon119_Then_correct anon119_Else_correct)))))))))))))))))))
(let ((anon50_correct  (=> (! (and %lbl%+13739 true) :lblpos +13739) (=> (and (IsGoodMask Mask@27) (wf |exhaleHeap#_74@0| Mask@27 ZeroMask)) (and (! (or %lbl%@1025579 (CanWrite Mask@27 this AVLTree.root)) :lblneg @1025579) (=> (CanWrite Mask@27 this AVLTree.root) (=> (and (and (= Heap@3 (MapType2Store |exhaleHeap#_74@0| this AVLTree.root |r#122@0|)) (wf Heap@3 Mask@27 ZeroMask)) (and (= Mask@28 Mask@27) (= Heap@4 Heap@3))) anon51_correct)))))))
(let ((anon118_Else_correct  (=> (! (and %lbl%+13737 true) :lblpos +13737) (=> (not (|Seq#Contains| (MapType2Select Heap@1 |this#120@0| AVLTreeNode.keys) (int_2_U |k#0|))) anon50_correct))))
(let ((anon118_Then_correct  (=> (! (and %lbl%+13735 true) :lblpos +13735) (=> (and (|Seq#Contains| (MapType2Select Heap@1 |this#120@0| AVLTreeNode.keys) (int_2_U |k#0|)) (= (U_2_int (MapType2Select |exhaleHeap#_74@0| |r#122@0| AVLTreeNode.height)) (U_2_int (MapType2Select Heap@1 |this#120@0| AVLTreeNode.height)))) anon50_correct))))
(let ((anon48_correct  (=> (! (and %lbl%+13733 true) :lblpos +13733) (=> (or (= (U_2_int (MapType2Select |exhaleHeap#_74@0| |r#122@0| AVLTreeNode.height)) (U_2_int (MapType2Select Heap@1 |this#120@0| AVLTreeNode.height))) (= (U_2_int (MapType2Select |exhaleHeap#_74@0| |r#122@0| AVLTreeNode.height)) (+ (U_2_int (MapType2Select Heap@1 |this#120@0| AVLTreeNode.height)) 1))) (and anon118_Then_correct anon118_Else_correct)))))
(let ((anon117_Else_correct  (=> (! (and %lbl%+13726 true) :lblpos +13726) (=> (|Seq#Contains| (MapType2Select Heap@1 |this#120@0| AVLTreeNode.keys) (int_2_U |k#0|)) anon48_correct))))
(let ((anon117_Then_correct  (=> (! (and %lbl%+13724 true) :lblpos +13724) (=> (and (not (|Seq#Contains| (MapType2Select Heap@1 |this#120@0| AVLTreeNode.keys) (int_2_U |k#0|))) (= (|Seq#Length| (MapType2Select |exhaleHeap#_74@0| |r#122@0| AVLTreeNode.keys)) (+ (|Seq#Length| (MapType2Select Heap@1 |this#120@0| AVLTreeNode.keys)) 1))) anon48_correct))))
(let ((anon116_Else_correct  (=> (! (and %lbl%+13716 true) :lblpos +13716) (=> (not (|Seq#Contains| (MapType2Select Heap@1 |this#120@0| AVLTreeNode.keys) (int_2_U |k#0|))) (and anon117_Then_correct anon117_Else_correct)))))
(let ((anon116_Then_correct  (=> (! (and %lbl%+13714 true) :lblpos +13714) (=> (and (|Seq#Contains| (MapType2Select Heap@1 |this#120@0| AVLTreeNode.keys) (int_2_U |k#0|)) (|Seq#Equal| (MapType2Select |exhaleHeap#_74@0| |r#122@0| AVLTreeNode.keys) (MapType2Select Heap@1 |this#120@0| AVLTreeNode.keys))) (and anon117_Then_correct anon117_Else_correct)))))
(let ((anon44_correct  (=> (! (and %lbl%+13712 true) :lblpos +13712) (=> (IsGoodMask |exhaleMask#_75@0|) (=> (and (wf Heap@1 |exhaleMask#_75@0| ZeroMask) (wf Heap@1 Mask@12 ZeroMask)) (and (! (or %lbl%@1024617 (> (Fractions 50) 0)) :lblneg @1024617) (=> (> (Fractions 50) 0) (and (! (or %lbl%@1024625  (and (<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_75@0| |this#120@0| AVLTreeNode.keys) perm$R))) (=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_75@0| |this#120@0| AVLTreeNode.keys) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_75@0| |this#120@0| AVLTreeNode.keys) perm$N)))))) :lblneg @1024625) (=> (and (<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_75@0| |this#120@0| AVLTreeNode.keys) perm$R))) (=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_75@0| |this#120@0| AVLTreeNode.keys) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_75@0| |this#120@0| AVLTreeNode.keys) perm$N))))) (=> (and (and (= |exhaleMask#_75@1| (MapType1Store |exhaleMask#_75@0| |this#120@0| AVLTreeNode.keys (MapType0Store (MapType1Select |exhaleMask#_75@0| |this#120@0| AVLTreeNode.keys) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select |exhaleMask#_75@0| |this#120@0| AVLTreeNode.keys) perm$R)) (Fractions 50)))))) (IsGoodMask |exhaleMask#_75@1|)) (and (wf Heap@1 |exhaleMask#_75@1| ZeroMask) (wf Heap@1 Mask@12 ZeroMask))) (and (! (or %lbl%@1024727 (> (Fractions 50) 0)) :lblneg @1024727) (=> (> (Fractions 50) 0) (and (! (or %lbl%@1024735  (and (<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_75@1| |this#120@0| AVLTreeNode.height) perm$R))) (=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_75@1| |this#120@0| AVLTreeNode.height) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_75@1| |this#120@0| AVLTreeNode.height) perm$N)))))) :lblneg @1024735) (=> (and (<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_75@1| |this#120@0| AVLTreeNode.height) perm$R))) (=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_75@1| |this#120@0| AVLTreeNode.height) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_75@1| |this#120@0| AVLTreeNode.height) perm$N))))) (=> (and (and (= |exhaleMask#_75@2| (MapType1Store |exhaleMask#_75@1| |this#120@0| AVLTreeNode.height (MapType0Store (MapType1Select |exhaleMask#_75@1| |this#120@0| AVLTreeNode.height) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select |exhaleMask#_75@1| |this#120@0| AVLTreeNode.height) perm$R)) (Fractions 50)))))) (IsGoodMask |exhaleMask#_75@2|)) (and (wf Heap@1 |exhaleMask#_75@2| ZeroMask) (wf Heap@1 Mask@12 ZeroMask))) (and (! (or %lbl%@1024837 (> (Fractions 50) 0)) :lblneg @1024837) (=> (> (Fractions 50) 0) (and (! (or %lbl%@1024845  (and (<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_75@2| |this#120@0| AVLTreeNode.balanceFactor) perm$R))) (=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_75@2| |this#120@0| AVLTreeNode.balanceFactor) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_75@2| |this#120@0| AVLTreeNode.balanceFactor) perm$N)))))) :lblneg @1024845) (=> (and (<= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_75@2| |this#120@0| AVLTreeNode.balanceFactor) perm$R))) (=> (= (Fractions 50) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_75@2| |this#120@0| AVLTreeNode.balanceFactor) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_75@2| |this#120@0| AVLTreeNode.balanceFactor) perm$N))))) (=> (and (and (= |exhaleMask#_75@3| (MapType1Store |exhaleMask#_75@2| |this#120@0| AVLTreeNode.balanceFactor (MapType0Store (MapType1Select |exhaleMask#_75@2| |this#120@0| AVLTreeNode.balanceFactor) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select |exhaleMask#_75@2| |this#120@0| AVLTreeNode.balanceFactor) perm$R)) (Fractions 50)))))) (IsGoodMask |exhaleMask#_75@3|)) (and (wf Heap@1 |exhaleMask#_75@3| ZeroMask) (wf Heap@1 Mask@12 ZeroMask))) (=> (and (and (and (IsGoodExhaleState |exhaleHeap#_74@0| Heap@1 |exhaleMask#_75@3| ZeroMask) (IsGoodMask |exhaleMask#_75@3|)) (and (wf |exhaleHeap#_74@0| |exhaleMask#_75@3| ZeroMask) (or (= |r#122@0| null) (= (dtype |r#122@0|) |AVLTreeNode#t|)))) (and (and (not (= |r#122@0| null)) (not (= |r#122@0| null))) (and (wf |exhaleHeap#_74@0| |exhaleMask#_75@3| ZeroMask) (> (Fractions 100) 0)))) (=> (and (and (and (and (and (= Mask@24 (MapType1Store |exhaleMask#_75@3| |r#122@0| AVLTreeNode.valid (MapType0Store (MapType1Select |exhaleMask#_75@3| |r#122@0| AVLTreeNode.valid) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select |exhaleMask#_75@3| |r#122@0| AVLTreeNode.valid) perm$R)) (Fractions 100)))))) (IsGoodMask Mask@24)) (and (IsGoodState (heapFragment (MapType2Select |exhaleHeap#_74@0| |r#122@0| AVLTreeNode.valid))) (wf |exhaleHeap#_74@0| Mask@24 ZeroMask))) (and (and (wf |exhaleHeap#_74@0| Mask@24 ZeroMask) (not (= |r#122@0| null))) (and (wf |exhaleHeap#_74@0| Mask@24 ZeroMask) (> (Fractions 50) 0)))) (and (and (and (= Mask@25 (MapType1Store Mask@24 |r#122@0| AVLTreeNode.keys (MapType0Store (MapType1Select Mask@24 |r#122@0| AVLTreeNode.keys) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select Mask@24 |r#122@0| AVLTreeNode.keys) perm$R)) (Fractions 50)))))) (IsGoodMask Mask@25)) (and (IsGoodState (heapFragment (MapType2Select |exhaleHeap#_74@0| |r#122@0| AVLTreeNode.keys))) (wf |exhaleHeap#_74@0| Mask@25 ZeroMask))) (and (and (wf |exhaleHeap#_74@0| Mask@25 ZeroMask) (not (= |r#122@0| null))) (and (wf |exhaleHeap#_74@0| Mask@25 ZeroMask) (> (Fractions 50) 0))))) (and (and (and (and (= Mask@26 (MapType1Store Mask@25 |r#122@0| AVLTreeNode.height (MapType0Store (MapType1Select Mask@25 |r#122@0| AVLTreeNode.height) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select Mask@25 |r#122@0| AVLTreeNode.height) perm$R)) (Fractions 50)))))) (IsGoodMask Mask@26)) (and (IsGoodState (heapFragment (MapType2Select |exhaleHeap#_74@0| |r#122@0| AVLTreeNode.height))) (wf |exhaleHeap#_74@0| Mask@26 ZeroMask))) (and (and (wf |exhaleHeap#_74@0| Mask@26 ZeroMask) (not (= |r#122@0| null))) (and (wf |exhaleHeap#_74@0| Mask@26 ZeroMask) (> (Fractions 50) 0)))) (and (and (and (= Mask@27 (MapType1Store Mask@26 |r#122@0| AVLTreeNode.balanceFactor (MapType0Store (MapType1Select Mask@26 |r#122@0| AVLTreeNode.balanceFactor) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select Mask@26 |r#122@0| AVLTreeNode.balanceFactor) perm$R)) (Fractions 50)))))) (IsGoodMask Mask@27)) (and (IsGoodState (heapFragment (MapType2Select |exhaleHeap#_74@0| |r#122@0| AVLTreeNode.balanceFactor))) (wf |exhaleHeap#_74@0| Mask@27 ZeroMask))) (and (and (wf |exhaleHeap#_74@0| Mask@27 ZeroMask) (|Seq#Contains| (MapType2Select |exhaleHeap#_74@0| |r#122@0| AVLTreeNode.keys) (int_2_U |k#0|))) (and (forall ((|i#82#123| Int) ) (!  (=> (and (<= 0 |i#82#123|) (< |i#82#123| (|Seq#Length| (MapType2Select Heap@1 |this#120@0| AVLTreeNode.keys)))) (|Seq#Contains| (MapType2Select |exhaleHeap#_74@0| |r#122@0| AVLTreeNode.keys) (|Seq#Index| (MapType2Select Heap@1 |this#120@0| AVLTreeNode.keys) |i#82#123|)))
 :qid |AVLTreeb.1327:20|
 :skolemid |82|
)) (forall ((|i#83#124| Int) ) (!  (=> (and (<= 0 |i#83#124|) (< |i#83#124| (|Seq#Length| (MapType2Select |exhaleHeap#_74@0| |r#122@0| AVLTreeNode.keys)))) (or (|Seq#Contains| (MapType2Select Heap@1 |this#120@0| AVLTreeNode.keys) (|Seq#Index| (MapType2Select |exhaleHeap#_74@0| |r#122@0| AVLTreeNode.keys) |i#83#124|)) (= (U_2_int (|Seq#Index| (MapType2Select |exhaleHeap#_74@0| |r#122@0| AVLTreeNode.keys) |i#83#124|)) |k#0|)))
 :qid |AVLTreeb.1328:20|
 :skolemid |83|
))))))) (and anon116_Then_correct anon116_Else_correct)))))))))))))))))))))))
(let ((anon115_Else_correct  (=> (! (and %lbl%+13705 true) :lblpos +13705) (=> (CanRead |exhaleMask#_75@0| ZeroMask |this#120@0| AVLTreeNode.valid) anon44_correct))))
(let ((anon115_Then_correct  (=> (! (and %lbl%+13703 true) :lblpos +13703) (=> (and (not (CanRead |exhaleMask#_75@0| ZeroMask |this#120@0| AVLTreeNode.valid)) (< (U_2_int (MapType2Select Heap@1 |this#120@0| AVLTreeNode.valid)) (U_2_int (MapType2Select |exhaleHeap#_74@0| |this#120@0| AVLTreeNode.valid)))) anon44_correct))))
(let ((anon114_Else_correct  (=> (! (and %lbl%+13701 true) :lblpos +13701) (=> (not |cond#_52@0|) (=> (and (and (and (< 0 |methodCallK#_73|) (< (* 1000 |methodCallK#_73|) (Fractions 1))) (< (* 1000 |methodCallK#_73|) |methodK#_37|)) (wf Heap@1 Mask@12 ZeroMask)) (and (! (or %lbl%@1024423  (=> true (not (= this null)))) :lblneg @1024423) (=> (=> true (not (= this null))) (and (! (or %lbl%@1024433  (=> true (CanRead Mask@12 ZeroMask this AVLTree.root))) :lblneg @1024433) (=> (=> true (CanRead Mask@12 ZeroMask this AVLTree.root)) (and (! (or %lbl%@1024445 (not (= (MapType2Select Heap@1 this AVLTree.root) null))) :lblneg @1024445) (=> (not (= (MapType2Select Heap@1 this AVLTree.root) null)) (=> (= |this#120@0| (MapType2Select Heap@1 this AVLTree.root)) (and (! (or %lbl%@1024477 (> (Fractions 100) 0)) :lblneg @1024477) (=> (> (Fractions 100) 0) (and (! (or %lbl%@1024485  (and (<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@12 |this#120@0| AVLTreeNode.valid) perm$R))) (=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@12 |this#120@0| AVLTreeNode.valid) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select Mask@12 |this#120@0| AVLTreeNode.valid) perm$N)))))) :lblneg @1024485) (=> (and (<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@12 |this#120@0| AVLTreeNode.valid) perm$R))) (=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@12 |this#120@0| AVLTreeNode.valid) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select Mask@12 |this#120@0| AVLTreeNode.valid) perm$N))))) (=> (= |exhaleMask#_75@0| (MapType1Store Mask@12 |this#120@0| AVLTreeNode.valid (MapType0Store (MapType1Select Mask@12 |this#120@0| AVLTreeNode.valid) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select Mask@12 |this#120@0| AVLTreeNode.valid) perm$R)) (Fractions 100)))))) (and anon115_Then_correct anon115_Else_correct))))))))))))))))))
(let ((anon114_Then_correct  (=> (! (and %lbl%+13695 true) :lblpos +13695) (=> |cond#_52@0| (=> (and (and (and (not (= |nw#_53@0| null)) (= (dtype |nw#_53@0|) |AVLTreeNode#t|)) (forall ((f@@22 T@U) ) (! (let ((|T#_0| (FieldTypeInv0 (type f@@22))))
 (=> (= (type f@@22) (FieldType |T#_0|)) (and (= (U_2_int (MapType0Select (MapType1Select Mask@12 |nw#_53@0| f@@22) perm$R)) 0) (= (U_2_int (MapType0Select (MapType1Select Mask@12 |nw#_53@0| f@@22) perm$N)) 0))))
 :qid |AVLTreeb.1125:26|
 :skolemid |81|
 :no-pattern (type f@@22)
 :no-pattern (U_2_int f@@22)
 :no-pattern (U_2_bool f@@22)
))) (and (= (MapType2Select Heap@1 |nw#_53@0| mu) $LockBottom) (<= (U_2_int (MapType2Select Heap@1 |nw#_53@0| held)) 0))) (=> (and (and (and (and (and (=> (U_2_bool (MapType2Select Heap@1 |nw#_53@0| rdheld)) false) (=> false (U_2_bool (MapType2Select Heap@1 |nw#_53@0| rdheld)))) (= Mask@13 (MapType1Store Mask@12 |nw#_53@0| AVLTreeNode.key (MapType0Store (MapType1Select Mask@12 |nw#_53@0| AVLTreeNode.key) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select Mask@12 |nw#_53@0| AVLTreeNode.key) perm$R)) (Fractions 100))))))) (and (= Mask@14 (MapType1Store Mask@13 |nw#_53@0| AVLTreeNode.height (MapType0Store (MapType1Select Mask@13 |nw#_53@0| AVLTreeNode.height) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select Mask@13 |nw#_53@0| AVLTreeNode.height) perm$R)) (Fractions 100)))))) (= Mask@15 (MapType1Store Mask@14 |nw#_53@0| AVLTreeNode.left (MapType0Store (MapType1Select Mask@14 |nw#_53@0| AVLTreeNode.left) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select Mask@14 |nw#_53@0| AVLTreeNode.left) perm$R)) (Fractions 100)))))))) (and (and (= Mask@16 (MapType1Store Mask@15 |nw#_53@0| AVLTreeNode.right (MapType0Store (MapType1Select Mask@15 |nw#_53@0| AVLTreeNode.right) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select Mask@15 |nw#_53@0| AVLTreeNode.right) perm$R)) (Fractions 100)))))) (= Mask@17 (MapType1Store Mask@16 |nw#_53@0| AVLTreeNode.keys (MapType0Store (MapType1Select Mask@16 |nw#_53@0| AVLTreeNode.keys) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select Mask@16 |nw#_53@0| AVLTreeNode.keys) perm$R)) (Fractions 100))))))) (and (= Mask@18 (MapType1Store Mask@17 |nw#_53@0| AVLTreeNode.balanceFactor (MapType0Store (MapType1Select Mask@17 |nw#_53@0| AVLTreeNode.balanceFactor) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select Mask@17 |nw#_53@0| AVLTreeNode.balanceFactor) perm$R)) (Fractions 100)))))) (= Mask@19 (MapType1Store Mask@18 |nw#_53@0| mu (MapType0Store (MapType1Select Mask@18 |nw#_53@0| mu) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select Mask@18 |nw#_53@0| mu) perm$R)) (Fractions 100))))))))) (and (and (and (< 0 |methodCallK#_58|) (< (* 1000 |methodCallK#_58|) (Fractions 1))) (< (* 1000 |methodCallK#_58|) |methodK#_37|)) (wf Heap@1 Mask@19 ZeroMask))) (and (! (or %lbl%@1023281 (not (= |nw#_53@0| null))) :lblneg @1023281) (=> (not (= |nw#_53@0| null)) (and (! (or %lbl%@1023296 (> (Fractions 100) 0)) :lblneg @1023296) (=> (> (Fractions 100) 0) (and (! (or %lbl%@1023304  (and (<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@19 |nw#_53@0| AVLTreeNode.key) perm$R))) (=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@19 |nw#_53@0| AVLTreeNode.key) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select Mask@19 |nw#_53@0| AVLTreeNode.key) perm$N)))))) :lblneg @1023304) (=> (and (<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@19 |nw#_53@0| AVLTreeNode.key) perm$R))) (=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@19 |nw#_53@0| AVLTreeNode.key) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select Mask@19 |nw#_53@0| AVLTreeNode.key) perm$N))))) (=> (and (and (= |exhaleMask#_60@0| (MapType1Store Mask@19 |nw#_53@0| AVLTreeNode.key (MapType0Store (MapType1Select Mask@19 |nw#_53@0| AVLTreeNode.key) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select Mask@19 |nw#_53@0| AVLTreeNode.key) perm$R)) (Fractions 100)))))) (IsGoodMask |exhaleMask#_60@0|)) (and (wf Heap@1 |exhaleMask#_60@0| ZeroMask) (wf Heap@1 Mask@19 ZeroMask))) (and (! (or %lbl%@1023406 (> (Fractions 100) 0)) :lblneg @1023406) (=> (> (Fractions 100) 0) (and (! (or %lbl%@1023414  (and (<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@0| |nw#_53@0| AVLTreeNode.height) perm$R))) (=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@0| |nw#_53@0| AVLTreeNode.height) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@0| |nw#_53@0| AVLTreeNode.height) perm$N)))))) :lblneg @1023414) (=> (and (<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@0| |nw#_53@0| AVLTreeNode.height) perm$R))) (=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@0| |nw#_53@0| AVLTreeNode.height) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@0| |nw#_53@0| AVLTreeNode.height) perm$N))))) (=> (and (and (= |exhaleMask#_60@1| (MapType1Store |exhaleMask#_60@0| |nw#_53@0| AVLTreeNode.height (MapType0Store (MapType1Select |exhaleMask#_60@0| |nw#_53@0| AVLTreeNode.height) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@0| |nw#_53@0| AVLTreeNode.height) perm$R)) (Fractions 100)))))) (IsGoodMask |exhaleMask#_60@1|)) (and (wf Heap@1 |exhaleMask#_60@1| ZeroMask) (wf Heap@1 Mask@19 ZeroMask))) (and (! (or %lbl%@1023516 (> (Fractions 100) 0)) :lblneg @1023516) (=> (> (Fractions 100) 0) (and (! (or %lbl%@1023524  (and (<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@1| |nw#_53@0| AVLTreeNode.left) perm$R))) (=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@1| |nw#_53@0| AVLTreeNode.left) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@1| |nw#_53@0| AVLTreeNode.left) perm$N)))))) :lblneg @1023524) (=> (and (<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@1| |nw#_53@0| AVLTreeNode.left) perm$R))) (=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@1| |nw#_53@0| AVLTreeNode.left) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@1| |nw#_53@0| AVLTreeNode.left) perm$N))))) (=> (and (and (= |exhaleMask#_60@2| (MapType1Store |exhaleMask#_60@1| |nw#_53@0| AVLTreeNode.left (MapType0Store (MapType1Select |exhaleMask#_60@1| |nw#_53@0| AVLTreeNode.left) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@1| |nw#_53@0| AVLTreeNode.left) perm$R)) (Fractions 100)))))) (IsGoodMask |exhaleMask#_60@2|)) (and (wf Heap@1 |exhaleMask#_60@2| ZeroMask) (wf Heap@1 Mask@19 ZeroMask))) (and (! (or %lbl%@1023626 (> (Fractions 100) 0)) :lblneg @1023626) (=> (> (Fractions 100) 0) (and (! (or %lbl%@1023634  (and (<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@2| |nw#_53@0| AVLTreeNode.right) perm$R))) (=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@2| |nw#_53@0| AVLTreeNode.right) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@2| |nw#_53@0| AVLTreeNode.right) perm$N)))))) :lblneg @1023634) (=> (and (<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@2| |nw#_53@0| AVLTreeNode.right) perm$R))) (=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@2| |nw#_53@0| AVLTreeNode.right) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@2| |nw#_53@0| AVLTreeNode.right) perm$N))))) (=> (and (and (= |exhaleMask#_60@3| (MapType1Store |exhaleMask#_60@2| |nw#_53@0| AVLTreeNode.right (MapType0Store (MapType1Select |exhaleMask#_60@2| |nw#_53@0| AVLTreeNode.right) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@2| |nw#_53@0| AVLTreeNode.right) perm$R)) (Fractions 100)))))) (IsGoodMask |exhaleMask#_60@3|)) (and (wf Heap@1 |exhaleMask#_60@3| ZeroMask) (wf Heap@1 Mask@19 ZeroMask))) (and (! (or %lbl%@1023736 (> (Fractions 100) 0)) :lblneg @1023736) (=> (> (Fractions 100) 0) (and (! (or %lbl%@1023744  (and (<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@3| |nw#_53@0| AVLTreeNode.keys) perm$R))) (=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@3| |nw#_53@0| AVLTreeNode.keys) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@3| |nw#_53@0| AVLTreeNode.keys) perm$N)))))) :lblneg @1023744) (=> (and (<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@3| |nw#_53@0| AVLTreeNode.keys) perm$R))) (=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@3| |nw#_53@0| AVLTreeNode.keys) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@3| |nw#_53@0| AVLTreeNode.keys) perm$N))))) (=> (and (and (= |exhaleMask#_60@4| (MapType1Store |exhaleMask#_60@3| |nw#_53@0| AVLTreeNode.keys (MapType0Store (MapType1Select |exhaleMask#_60@3| |nw#_53@0| AVLTreeNode.keys) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@3| |nw#_53@0| AVLTreeNode.keys) perm$R)) (Fractions 100)))))) (IsGoodMask |exhaleMask#_60@4|)) (and (wf Heap@1 |exhaleMask#_60@4| ZeroMask) (wf Heap@1 Mask@19 ZeroMask))) (and (! (or %lbl%@1023846 (> (Fractions 100) 0)) :lblneg @1023846) (=> (> (Fractions 100) 0) (and (! (or %lbl%@1023854  (and (<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@4| |nw#_53@0| AVLTreeNode.balanceFactor) perm$R))) (=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@4| |nw#_53@0| AVLTreeNode.balanceFactor) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@4| |nw#_53@0| AVLTreeNode.balanceFactor) perm$N)))))) :lblneg @1023854) (=> (and (<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@4| |nw#_53@0| AVLTreeNode.balanceFactor) perm$R))) (=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@4| |nw#_53@0| AVLTreeNode.balanceFactor) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@4| |nw#_53@0| AVLTreeNode.balanceFactor) perm$N))))) (=> (= |exhaleMask#_60@5| (MapType1Store |exhaleMask#_60@4| |nw#_53@0| AVLTreeNode.balanceFactor (MapType0Store (MapType1Select |exhaleMask#_60@4| |nw#_53@0| AVLTreeNode.balanceFactor) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@4| |nw#_53@0| AVLTreeNode.balanceFactor) perm$R)) (Fractions 100)))))) (=> (and (and (IsGoodMask |exhaleMask#_60@5|) (wf Heap@1 |exhaleMask#_60@5| ZeroMask)) (and (wf Heap@1 Mask@19 ZeroMask) (IsGoodExhaleState |exhaleHeap#_59@0| Heap@1 |exhaleMask#_60@5| ZeroMask))) (=> (and (and (and (IsGoodMask |exhaleMask#_60@5|) (wf |exhaleHeap#_59@0| |exhaleMask#_60@5| ZeroMask)) (and (not (= |nw#_53@0| null)) (wf |exhaleHeap#_59@0| |exhaleMask#_60@5| ZeroMask))) (and (and (> (Fractions 100) 0) (= Mask@20 (MapType1Store |exhaleMask#_60@5| |nw#_53@0| AVLTreeNode.valid (MapType0Store (MapType1Select |exhaleMask#_60@5| |nw#_53@0| AVLTreeNode.valid) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select |exhaleMask#_60@5| |nw#_53@0| AVLTreeNode.valid) perm$R)) (Fractions 100))))))) (and (IsGoodMask Mask@20) (IsGoodState (heapFragment (MapType2Select |exhaleHeap#_59@0| |nw#_53@0| AVLTreeNode.valid)))))) (=> (and (and (and (and (and (wf |exhaleHeap#_59@0| Mask@20 ZeroMask) (wf |exhaleHeap#_59@0| Mask@20 ZeroMask)) (and (not (= |nw#_53@0| null)) (wf |exhaleHeap#_59@0| Mask@20 ZeroMask))) (and (and (> (Fractions 50) 0) (= Mask@21 (MapType1Store Mask@20 |nw#_53@0| AVLTreeNode.keys (MapType0Store (MapType1Select Mask@20 |nw#_53@0| AVLTreeNode.keys) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select Mask@20 |nw#_53@0| AVLTreeNode.keys) perm$R)) (Fractions 50))))))) (and (IsGoodMask Mask@21) (IsGoodState (heapFragment (MapType2Select |exhaleHeap#_59@0| |nw#_53@0| AVLTreeNode.keys)))))) (and (and (and (wf |exhaleHeap#_59@0| Mask@21 ZeroMask) (wf |exhaleHeap#_59@0| Mask@21 ZeroMask)) (and (not (= |nw#_53@0| null)) (wf |exhaleHeap#_59@0| Mask@21 ZeroMask))) (and (and (> (Fractions 50) 0) (= Mask@22 (MapType1Store Mask@21 |nw#_53@0| AVLTreeNode.height (MapType0Store (MapType1Select Mask@21 |nw#_53@0| AVLTreeNode.height) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select Mask@21 |nw#_53@0| AVLTreeNode.height) perm$R)) (Fractions 50))))))) (and (IsGoodMask Mask@22) (IsGoodState (heapFragment (MapType2Select |exhaleHeap#_59@0| |nw#_53@0| AVLTreeNode.height))))))) (and (and (and (and (wf |exhaleHeap#_59@0| Mask@22 ZeroMask) (wf |exhaleHeap#_59@0| Mask@22 ZeroMask)) (and (not (= |nw#_53@0| null)) (wf |exhaleHeap#_59@0| Mask@22 ZeroMask))) (and (and (> (Fractions 50) 0) (= Mask@23 (MapType1Store Mask@22 |nw#_53@0| AVLTreeNode.balanceFactor (MapType0Store (MapType1Select Mask@22 |nw#_53@0| AVLTreeNode.balanceFactor) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select Mask@22 |nw#_53@0| AVLTreeNode.balanceFactor) perm$R)) (Fractions 50))))))) (and (IsGoodMask Mask@23) (IsGoodState (heapFragment (MapType2Select |exhaleHeap#_59@0| |nw#_53@0| AVLTreeNode.balanceFactor)))))) (and (and (and (wf |exhaleHeap#_59@0| Mask@23 ZeroMask) (wf |exhaleHeap#_59@0| Mask@23 ZeroMask)) (and (= (U_2_int (MapType2Select |exhaleHeap#_59@0| |nw#_53@0| AVLTreeNode.height)) 1) (|Seq#Equal| (MapType2Select |exhaleHeap#_59@0| |nw#_53@0| AVLTreeNode.keys) (|Seq#Singleton| (int_2_U |k#0|))))) (and (and (= (U_2_int (MapType2Select |exhaleHeap#_59@0| |nw#_53@0| AVLTreeNode.balanceFactor)) 0) (|Seq#Contains| (MapType2Select |exhaleHeap#_59@0| |nw#_53@0| AVLTreeNode.keys) (int_2_U |k#0|))) (and (IsGoodMask Mask@23) (wf |exhaleHeap#_59@0| Mask@23 ZeroMask)))))) (and (! (or %lbl%@1024348 (CanWrite Mask@23 this AVLTree.root)) :lblneg @1024348) (=> (CanWrite Mask@23 this AVLTree.root) (=> (and (and (= Heap@2 (MapType2Store |exhaleHeap#_59@0| this AVLTree.root |nw#_53@0|)) (wf Heap@2 Mask@23 ZeroMask)) (and (= Mask@28 Mask@23) (= Heap@4 Heap@2))) anon51_correct))))))))))))))))))))))))))))))))))))))))))))
(let ((anon40_correct  (=> (! (and %lbl%+13693 true) :lblpos +13693) (=> (and (and (IsGoodMask Mask@12) (wf Heap@1 Mask@12 ZeroMask)) (and (=> |cond#_52@0| (= (MapType2Select Heap@1 this AVLTree.root) null)) (=> (= (MapType2Select Heap@1 this AVLTree.root) null) |cond#_52@0|))) (and (! (or %lbl%@1022858  (=> true (not (= this null)))) :lblneg @1022858) (=> (=> true (not (= this null))) (and (! (or %lbl%@1022868  (=> true (CanRead Mask@12 ZeroMask this AVLTree.root))) :lblneg @1022868) (=> (=> true (CanRead Mask@12 ZeroMask this AVLTree.root)) (and anon114_Then_correct anon114_Else_correct)))))))))
(let ((anon113_Else_correct  (=> (! (and %lbl%+13686 true) :lblpos +13686) (=> (not (= (MapType2Select Heap@1 this AVLTree.root) null)) anon40_correct))))
(let ((anon113_Then_correct  (=> (! (and %lbl%+13684 true) :lblpos +13684) (=> (and (= (MapType2Select Heap@1 this AVLTree.root) null) (|Seq#Equal| (MapType2Select Heap@1 this AVLTree.keys) (|Seq#Empty| intType))) anon40_correct))))
(let ((anon112_Else_correct  (=> (! (and %lbl%+13675 true) :lblpos +13675) (=> (= (MapType2Select Heap@1 this AVLTree.root) null) (and anon113_Then_correct anon113_Else_correct)))))
(let ((anon112_Then_correct  (=> (! (and %lbl%+13673 true) :lblpos +13673) (=> (and (not (= (MapType2Select Heap@1 this AVLTree.root) null)) (|Seq#Equal| (MapType2Select Heap@1 this AVLTree.keys) (MapType2Select Heap@1 (MapType2Select Heap@1 this AVLTree.root) AVLTreeNode.keys))) (and anon113_Then_correct anon113_Else_correct)))))
(let ((anon111_Else_correct  (=> (! (and %lbl%+13665 true) :lblpos +13665) (=> (and (= (MapType2Select Heap@1 this AVLTree.root) null) (= Mask@12 Mask@10)) (and anon112_Then_correct anon112_Else_correct)))))
(let ((anon111_Then_correct  (=> (! (and %lbl%+13663 true) :lblpos +13663) (=> (and (not (= (MapType2Select Heap@1 this AVLTree.root) null)) (not (= (MapType2Select Heap@1 this AVLTree.root) null))) (=> (and (and (and (wf Heap@1 Mask@10 ZeroMask) (> (Fractions 50) 0)) (and (= Mask@11 (MapType1Store Mask@10 (MapType2Select Heap@1 this AVLTree.root) AVLTreeNode.balanceFactor (MapType0Store (MapType1Select Mask@10 (MapType2Select Heap@1 this AVLTree.root) AVLTreeNode.balanceFactor) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select Mask@10 (MapType2Select Heap@1 this AVLTree.root) AVLTreeNode.balanceFactor) perm$R)) (Fractions 50)))))) (IsGoodMask Mask@11))) (and (and (IsGoodState (heapFragment (MapType2Select Heap@1 (MapType2Select Heap@1 this AVLTree.root) AVLTreeNode.balanceFactor))) (wf Heap@1 Mask@11 ZeroMask)) (and (wf Heap@1 Mask@11 ZeroMask) (= Mask@12 Mask@11)))) (and anon112_Then_correct anon112_Else_correct))))))
(let ((anon110_Else_correct  (=> (! (and %lbl%+13655 true) :lblpos +13655) (=> (and (= (MapType2Select Heap@1 this AVLTree.root) null) (= Mask@10 Mask@8)) (and anon111_Then_correct anon111_Else_correct)))))
(let ((anon110_Then_correct  (=> (! (and %lbl%+13653 true) :lblpos +13653) (=> (and (not (= (MapType2Select Heap@1 this AVLTree.root) null)) (not (= (MapType2Select Heap@1 this AVLTree.root) null))) (=> (and (and (and (wf Heap@1 Mask@8 ZeroMask) (> (Fractions 50) 0)) (and (= Mask@9 (MapType1Store Mask@8 (MapType2Select Heap@1 this AVLTree.root) AVLTreeNode.keys (MapType0Store (MapType1Select Mask@8 (MapType2Select Heap@1 this AVLTree.root) AVLTreeNode.keys) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select Mask@8 (MapType2Select Heap@1 this AVLTree.root) AVLTreeNode.keys) perm$R)) (Fractions 50)))))) (IsGoodMask Mask@9))) (and (and (IsGoodState (heapFragment (MapType2Select Heap@1 (MapType2Select Heap@1 this AVLTree.root) AVLTreeNode.keys))) (wf Heap@1 Mask@9 ZeroMask)) (and (wf Heap@1 Mask@9 ZeroMask) (= Mask@10 Mask@9)))) (and anon111_Then_correct anon111_Else_correct))))))
(let ((anon109_Else_correct  (=> (! (and %lbl%+13645 true) :lblpos +13645) (=> (and (= (MapType2Select Heap@1 this AVLTree.root) null) (= Mask@8 Mask@6)) (and anon110_Then_correct anon110_Else_correct)))))
(let ((anon109_Then_correct  (=> (! (and %lbl%+13643 true) :lblpos +13643) (=> (and (not (= (MapType2Select Heap@1 this AVLTree.root) null)) (not (= (MapType2Select Heap@1 this AVLTree.root) null))) (=> (and (and (and (wf Heap@1 Mask@6 ZeroMask) (> (Fractions 50) 0)) (and (= Mask@7 (MapType1Store Mask@6 (MapType2Select Heap@1 this AVLTree.root) AVLTreeNode.height (MapType0Store (MapType1Select Mask@6 (MapType2Select Heap@1 this AVLTree.root) AVLTreeNode.height) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select Mask@6 (MapType2Select Heap@1 this AVLTree.root) AVLTreeNode.height) perm$R)) (Fractions 50)))))) (IsGoodMask Mask@7))) (and (and (IsGoodState (heapFragment (MapType2Select Heap@1 (MapType2Select Heap@1 this AVLTree.root) AVLTreeNode.height))) (wf Heap@1 Mask@7 ZeroMask)) (and (wf Heap@1 Mask@7 ZeroMask) (= Mask@8 Mask@7)))) (and anon110_Then_correct anon110_Else_correct))))))
(let ((anon108_Else_correct  (=> (! (and %lbl%+13635 true) :lblpos +13635) (=> (and (= (MapType2Select Heap@1 this AVLTree.root) null) (= Mask@6 Mask@4)) (and anon109_Then_correct anon109_Else_correct)))))
(let ((anon108_Then_correct  (=> (! (and %lbl%+13633 true) :lblpos +13633) (=> (and (not (= (MapType2Select Heap@1 this AVLTree.root) null)) (not (= (MapType2Select Heap@1 this AVLTree.root) null))) (=> (and (and (and (wf Heap@1 Mask@4 ZeroMask) (> (Fractions 100) 0)) (and (= Mask@5 (MapType1Store Mask@4 (MapType2Select Heap@1 this AVLTree.root) AVLTreeNode.valid (MapType0Store (MapType1Select Mask@4 (MapType2Select Heap@1 this AVLTree.root) AVLTreeNode.valid) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select Mask@4 (MapType2Select Heap@1 this AVLTree.root) AVLTreeNode.valid) perm$R)) (Fractions 100)))))) (IsGoodMask Mask@5))) (and (and (IsGoodState (heapFragment (MapType2Select Heap@1 (MapType2Select Heap@1 this AVLTree.root) AVLTreeNode.valid))) (wf Heap@1 Mask@5 ZeroMask)) (and (wf Heap@1 Mask@5 ZeroMask) (= Mask@6 Mask@5)))) (and anon109_Then_correct anon109_Else_correct))))))
(let ((anon28_correct  (=> (! (and %lbl%+13631 true) :lblpos +13631) (=> (IsGoodMask Mask@2) (=> (and (and (wf Heap@1 Mask@2 ZeroMask) (IsGoodMask Mask@2)) (and (wf Heap@1 Mask@2 ZeroMask) (not (= this null)))) (=> (and (and (and (and (wf Heap@1 Mask@2 ZeroMask) (or (= (MapType2Select Heap@1 this AVLTree.root) null) (= (dtype (MapType2Select Heap@1 this AVLTree.root)) |AVLTreeNode#t|))) (and (> (Fractions 100) 0) (= Mask@3 (MapType1Store Mask@2 this AVLTree.root (MapType0Store (MapType1Select Mask@2 this AVLTree.root) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select Mask@2 this AVLTree.root) perm$R)) (Fractions 100)))))))) (and (and (IsGoodMask Mask@3) (IsGoodState (heapFragment (MapType2Select Heap@1 this AVLTree.root)))) (and (wf Heap@1 Mask@3 ZeroMask) (wf Heap@1 Mask@3 ZeroMask)))) (and (and (and (not (= this null)) (wf Heap@1 Mask@3 ZeroMask)) (and (> (Fractions 50) 0) (= Mask@4 (MapType1Store Mask@3 this AVLTree.keys (MapType0Store (MapType1Select Mask@3 this AVLTree.keys) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select Mask@3 this AVLTree.keys) perm$R)) (Fractions 50)))))))) (and (and (IsGoodMask Mask@4) (IsGoodState (heapFragment (MapType2Select Heap@1 this AVLTree.keys)))) (and (wf Heap@1 Mask@4 ZeroMask) (wf Heap@1 Mask@4 ZeroMask))))) (and anon108_Then_correct anon108_Else_correct)))))))
(let ((anon107_Else_correct  (=> (! (and %lbl%+13625 true) :lblpos +13625) (=> (and (CanRead Mask@2 ZeroMask this AVLTree.valid) (= Heap@1 Heap)) anon28_correct))))
(let ((anon107_Then_correct  (=> (! (and %lbl%+13623 true) :lblpos +13623) (=> (not (CanRead Mask@2 ZeroMask this AVLTree.valid)) (=> (and (and (= |oldVers#_50@0| (U_2_int (MapType2Select Heap this AVLTree.valid))) (= Heap@0 (MapType2Store Heap this AVLTree.valid (int_2_U |newVers#_51@0|)))) (and (< |oldVers#_50@0| (U_2_int (MapType2Select Heap@0 this AVLTree.valid))) (= Heap@1 Heap@0))) anon28_correct)))))
(let ((anon94_Else_correct  (=> (! (and %lbl%+13615 true) :lblpos +13615) (=> (not false) (and anon107_Then_correct anon107_Else_correct)))))
(let ((anon94_Then_correct  (=> (! (and %lbl%+13490 true) :lblpos +13490) true)))
(let ((anon0_correct  (=> (! (and %lbl%+13484 true) :lblpos +13484) (=> (and (and (and (and (and (< 0 |methodK#_37|) (< (* 1000 |methodK#_37|) (Fractions 1))) (= CurrentModule |module#default|)) (and (and CanAssumeFunctionDefs (not (= this null))) (and (wf Heap ZeroMask ZeroMask) (> (Fractions 100) 0)))) (and (and (and (= Mask@0 (MapType1Store ZeroMask this AVLTree.valid (MapType0Store (MapType1Select ZeroMask this AVLTree.valid) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select ZeroMask this AVLTree.valid) perm$R)) (Fractions 100)))))) (IsGoodMask Mask@0)) (and (IsGoodState (heapFragment (MapType2Select Heap this AVLTree.valid))) (wf Heap Mask@0 ZeroMask))) (and (and (wf Heap Mask@0 ZeroMask) (not (= this null))) (and (wf Heap Mask@0 ZeroMask) (> (Fractions 50) 0))))) (and (and (and (and (= Mask@1 (MapType1Store Mask@0 this AVLTree.keys (MapType0Store (MapType1Select Mask@0 this AVLTree.keys) perm$R (int_2_U (+ (U_2_int (MapType0Select (MapType1Select Mask@0 this AVLTree.keys) perm$R)) (Fractions 50)))))) (IsGoodMask Mask@1)) (and (IsGoodState (heapFragment (MapType2Select Heap this AVLTree.keys))) (wf Heap Mask@1 ZeroMask))) (and (and (wf Heap Mask@1 ZeroMask) (IsGoodMask Mask@1)) (and (wf Heap Mask@1 ZeroMask) (= Heap Heap)))) (and (and (and (= Mask@1 Mask) (= ZeroMask SecMask)) (and (= ZeroCredits Credits) (|#AVLTree.valid#trigger| this))) (and (and (< 0 |unfoldK#_38|) (< |unfoldK#_38| (Fractions 1))) (< (* 1000 |unfoldK#_38|) |methodK#_37|))))) (and (! (or %lbl%@1021777 (not (= this null))) :lblneg @1021777) (=> (not (= this null)) (and (! (or %lbl%@1021783 (> (Fractions 100) 0)) :lblneg @1021783) (=> (> (Fractions 100) 0) (and (! (or %lbl%@1021791  (and (<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@1 this AVLTree.valid) perm$R))) (=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@1 this AVLTree.valid) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select Mask@1 this AVLTree.valid) perm$N)))))) :lblneg @1021791) (=> (and (<= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@1 this AVLTree.valid) perm$R))) (=> (= (Fractions 100) (U_2_int (MapType0Select (MapType1Select Mask@1 this AVLTree.valid) perm$R))) (<= 0 (U_2_int (MapType0Select (MapType1Select Mask@1 this AVLTree.valid) perm$N))))) (=> (= Mask@2 (MapType1Store Mask@1 this AVLTree.valid (MapType0Store (MapType1Select Mask@1 this AVLTree.valid) perm$R (int_2_U (- (U_2_int (MapType0Select (MapType1Select Mask@1 this AVLTree.valid) perm$R)) (Fractions 100)))))) (and anon94_Then_correct anon94_Else_correct))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (! (and %lbl%+1021092 true) :lblpos +1021092) (=> (and (IsGoodMask Mask) (IsGoodMask SecMask)) (=> (and (and (and (or (= this null) (= (dtype this) |AVLTree#t|)) (or (= |n#2| null) (= (dtype |n#2|) |AVLTreeNode#t|))) (and (or (= |this#118| null) (= (dtype |this#118|) |AVLTreeNode#t|)) (or (= |this#120| null) (= (dtype |this#120|) |AVLTreeNode#t|)))) (and (and (or (= |r#122| null) (= (dtype |r#122|) |AVLTreeNode#t|)) (or (= |r#75| null) (= (dtype |r#75|) |AVLTreeNode#t|))) (and (not (= this null)) (wf Heap Mask SecMask)))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
