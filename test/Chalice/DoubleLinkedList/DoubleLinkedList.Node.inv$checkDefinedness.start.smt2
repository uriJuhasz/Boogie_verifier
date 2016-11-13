;Analysis time until now:     0s
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
(set-logic  UFNIA)
;(set-option :produce-unsat-cores true)
; done setting options
;Sorts
(declare-sort $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ 0)
(declare-sort $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ 0)
(declare-sort $@Map@@PermissionComponent@To@Int@@ 0)
(declare-sort $@Map@@ref@To@Int@@ 0)
(declare-sort Field$Bool$ 0)
(declare-sort Field$Int$ 0)
(declare-sort Field$Mu$ 0)
(declare-sort Field$ref$ 0)
(declare-sort Mu 0)
(declare-sort PartialHeapType 0)
(declare-sort PermissionComponent 0)
(declare-sort ref 0)
(declare-sort TypeName 0)

;Functions
(declare-fun $LockBottom ( ) Mu)
(declare-fun channelK ( ) Int)
(declare-fun DecPerm$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Bool$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun DecPerm$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun DecPerm$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun DecPerm$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun dtype ( ref ) TypeName)
(declare-fun emptyPartialHeap ( ) PartialHeapType)
(declare-fun forkK ( ) Field$Int$)
(declare-fun Fractions ( Int ) Int)
(declare-fun Heap ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun heapFragment$Int$ ( Int ) PartialHeapType)
(declare-fun heapFragment$Mu$ ( Mu ) PartialHeapType)
(declare-fun heapFragment$ref$ ( ref ) PartialHeapType)
(declare-fun held ( ) Field$Int$)
(declare-fun IncPerm$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Bool$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun IncPerm$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun IncPerm$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun IncPerm$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ ( Bool $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( Bool $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun ite$$@Map@@PermissionComponent@To@Int@@$ ( Bool $@Map@@PermissionComponent@To@Int@@ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun ite$$@Map@@ref@To@Int@@$ ( Bool $@Map@@ref@To@Int@@ $@Map@@ref@To@Int@@ ) $@Map@@ref@To@Int@@)
(declare-fun ite$Field$Bool$$ ( Bool Field$Bool$ Field$Bool$ ) Field$Bool$)
(declare-fun ite$Field$Int$$ ( Bool Field$Int$ Field$Int$ ) Field$Int$)
(declare-fun ite$Field$Mu$$ ( Bool Field$Mu$ Field$Mu$ ) Field$Mu$)
(declare-fun ite$Field$ref$$ ( Bool Field$ref$ Field$ref$ ) Field$ref$)
(declare-fun ite$Int$ ( Bool Int Int ) Int)
(declare-fun ite$Mu$ ( Bool Mu Mu ) Mu)
(declare-fun ite$PartialHeapType$ ( Bool PartialHeapType PartialHeapType ) PartialHeapType)
(declare-fun ite$PermissionComponent$ ( Bool PermissionComponent PermissionComponent ) PermissionComponent)
(declare-fun ite$ref$ ( Bool ref ref ) ref)
(declare-fun ite$TypeName$ ( Bool TypeName TypeName ) TypeName)
(declare-fun joinable ( ) Field$Int$)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Bool$ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Bool$ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Int$ ) Int)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Mu$ ) Mu)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$ref$ ) ref)
(declare-fun MapRead$$@Map@@PermissionComponent@To@Int@@$ ( $@Map@@PermissionComponent@To@Int@@ PermissionComponent ) Int)
(declare-fun MapRead$$@Map@@ref@To@Int@@$ ( $@Map@@ref@To@Int@@ ref ) Int)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Int$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@PermissionComponent@To@Int@@$ ( $@Map@@PermissionComponent@To@Int@@ PermissionComponent Int ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun Mask ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun monitorK ( ) Int)
(declare-fun mu ( ) Field$Mu$)
(declare-fun newVers@_47@0 ( ) Int)
(declare-fun newVers@_82@0 ( ) Int)
(declare-fun Node.inv ( ) Field$Int$)
(declare-fun Node.invLeft ( ) Field$Int$)
(declare-fun Node.invRight ( ) Field$Int$)
(declare-fun Node.next ( ) Field$ref$)
(declare-fun Node.prev ( ) Field$ref$)
(declare-fun Node@t ( ) TypeName)
(declare-fun null ( ) ref)
(declare-fun oldVers@_46@0 ( ) Int)
(declare-fun oldVers@_81@0 ( ) Int)
(declare-fun perm$N ( ) PermissionComponent)
(declare-fun perm$R ( ) PermissionComponent)
(declare-fun Permission$denominator ( ) Int)
(declare-fun Permission$Full ( ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun Permission$FullFraction ( ) Int)
(declare-fun Permission$Zero ( ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun predicateK ( ) Int)
(declare-fun predicateK@_27 ( ) Int)
(declare-fun predRec@_28@0 ( ) ref)
(declare-fun predRec@_48@0 ( ) ref)
(declare-fun predRec@_63@0 ( ) ref)
(declare-fun predRec@_83@0 ( ) ref)
(declare-fun predVer@_29@0 ( ) Int)
(declare-fun predVer@_49@0 ( ) Int)
(declare-fun predVer@_64@0 ( ) Int)
(declare-fun predVer@_84@0 ( ) Int)
(declare-fun rdheld ( ) Field$Bool$)
(declare-fun SecMask ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun this ( ) ref)
(declare-fun unfoldingHeap@_31@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun unfoldingHeap@_31@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun unfoldingHeap@_66@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun unfoldingHeap@_66@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun unfoldingK@_36 ( ) Int)
(declare-fun unfoldingK@_71 ( ) Int)
(declare-fun unfoldingMask@_32@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_32@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_32@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_32@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_32@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_32@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_67@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_67@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_67@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_67@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_67@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_67@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_33@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_33@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_33@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_33@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_33@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_33@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_68@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_68@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_68@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_68@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_68@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingSecMask@_68@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun ZeroCredits ( ) $@Map@@ref@To@Int@@)
(declare-fun ZeroMask ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)

;Predicates
(declare-fun $@Node.invLeft@trigger ( ref ) Bool)
(declare-fun $@Node.invRight@trigger ( ref ) Bool)
(declare-fun CanRead$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Bool$ ) Bool)
(declare-fun CanRead$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ ) Bool)
(declare-fun CanRead$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ ) Bool)
(declare-fun CanRead$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ ) Bool)
(declare-fun IsGoodMask ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ) Bool)
(declare-fun IsGoodState ( PartialHeapType ) Bool)
(declare-fun ite$Bool$ ( Bool Bool Bool ) Bool)
(declare-fun MuBelow ( Mu Mu ) Bool)
(declare-fun NonPredicateField$Bool$ ( Field$Bool$ ) Bool)
(declare-fun NonPredicateField$Int$ ( Field$Int$ ) Bool)
(declare-fun NonPredicateField$Mu$ ( Field$Mu$ ) Bool)
(declare-fun NonPredicateField$ref$ ( Field$ref$ ) Bool)
(declare-fun PredicateField$Bool$ ( Field$Bool$ ) Bool)
(declare-fun PredicateField$Int$ ( Field$Int$ ) Bool)
(declare-fun PredicateField$Mu$ ( Field$Mu$ ) Bool)
(declare-fun PredicateField$ref$ ( Field$ref$ ) Bool)
(declare-fun wf ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ) Bool)

;Axioms
   (assert (! (forall ((|i_1| Field$ref$)(|i| ref)(|m_1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_1| $@Map@@PermissionComponent@To@Int@@))(!(= v_1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_1 i i_1 v_1) i i_1)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_1 i i_1 v_1) i i_1)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_0))
   (assert (! (forall ((|i_10| PermissionComponent)(|m_6| $@Map@@PermissionComponent@To@Int@@)(|v_6| Int))(!(= v_6 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_6 i_10 v_6) i_10)):pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_6 i_10 v_6) i_10)) :qid map_1_$@Map@@PermissionComponent@To@Int@@ :weight 0 )) :named ax_1))
   (assert (! (forall ((|i_13| Field$Mu$)(|i_12| ref)(|m_8| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_8| $@Map@@PermissionComponent@To@Int@@))(!(= v_8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_8 i_12 i_13 v_8) i_12 i_13)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_8 i_12 i_13 v_8) i_12 i_13)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_2))
   (assert (! (forall ((|i_23| Field$Int$)(|i_22| ref)(|m_13| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_13| $@Map@@PermissionComponent@To@Int@@))(!(= v_13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_13 i_22 i_23 v_13) i_22 i_23)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_13 i_22 i_23 v_13) i_22 i_23)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_3))
   (assert (! (forall ((|i_33| Field$Int$)(|i_32| ref)(|m_18| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_18| Int))(!(= v_18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_18 i_32 i_33 v_18) i_32 i_33)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_18 i_32 i_33 v_18) i_32 i_33)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_4))
   (assert (! (forall ((|v_10| $@Map@@PermissionComponent@To@Int@@)(|i_17| Field$Mu$)(|i_16| ref)(|j_12| Field$Bool$)(|j_11| ref)(|m_10| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_10 j_11 j_12) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_10 i_16 i_17 v_10) j_11 j_12)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_10 i_16 i_17 v_10) j_11 j_12)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__Mu :weight 0 )) :named ax_5))
   (assert (! (forall ((|v_11| $@Map@@PermissionComponent@To@Int@@)(|i_19| Field$Mu$)(|i_18| ref)(|j_14| Field$Int$)(|j_13| ref)(|m_11| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_11 j_13 j_14) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_11 i_18 i_19 v_11) j_13 j_14)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_11 i_18 i_19 v_11) j_13 j_14)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Int__Mu :weight 0 )) :named ax_6))
   (assert (! (forall ((|v_12| $@Map@@PermissionComponent@To@Int@@)(|i_21| Field$Mu$)(|i_20| ref)(|j_16| Field$ref$)(|j_15| ref)(|m_12| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_12 j_15 j_16) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_12 i_20 i_21 v_12) j_15 j_16)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_12 i_20 i_21 v_12) j_15 j_16)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__ref__Mu :weight 0 )) :named ax_7))
   (assert (! (forall ((|v_14| $@Map@@PermissionComponent@To@Int@@)(|m_14| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_25| Field$Int$)(|j_18| Field$Int$)(|i_24| ref)(|j_17| ref))(!(=> (or (not (= j_18 i_25)) (not (= j_17 i_24))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_14 j_17 j_18) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_14 i_24 i_25 v_14) j_17 j_18))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_14 i_24 i_25 v_14) j_17 j_18)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_8))
   (assert (! (forall ((|v_15| $@Map@@PermissionComponent@To@Int@@)(|i_27| Field$Int$)(|i_26| ref)(|j_20| Field$Bool$)(|j_19| ref)(|m_15| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_15 j_19 j_20) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_15 i_26 i_27 v_15) j_19 j_20)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_15 i_26 i_27 v_15) j_19 j_20)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__Int :weight 0 )) :named ax_9))
   (assert (! (forall ((|v_16| $@Map@@PermissionComponent@To@Int@@)(|i_29| Field$Int$)(|i_28| ref)(|j_22| Field$ref$)(|j_21| ref)(|m_16| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_16 j_21 j_22) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_16 i_28 i_29 v_16) j_21 j_22)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_16 i_28 i_29 v_16) j_21 j_22)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__ref__Int :weight 0 )) :named ax_10))
   (assert (! (forall ((|v_17| $@Map@@PermissionComponent@To@Int@@)(|i_31| Field$Int$)(|i_30| ref)(|j_24| Field$Mu$)(|j_23| ref)(|m_17| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_17 j_23 j_24) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_17 i_30 i_31 v_17) j_23 j_24)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_17 i_30 i_31 v_17) j_23 j_24)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Mu__Int :weight 0 )) :named ax_11))
   (assert (! (forall ((|v_19| Int)(|m_19| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_35| Field$Int$)(|j_26| Field$Int$)(|i_34| ref)(|j_25| ref))(!(=> (or (not (= j_26 i_35)) (not (= j_25 i_34))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_19 j_25 j_26) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_19 i_34 i_35 v_19) j_25 j_26))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_19 i_34 i_35 v_19) j_25 j_26)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_12))
   (assert (! (forall ((|v_2| $@Map@@PermissionComponent@To@Int@@)(|m_2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_3| Field$ref$)(|j_1| Field$ref$)(|i_2| ref)(|j| ref))(!(=> (or (not (= j_1 i_3)) (not (= j i_2))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_2 j j_1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_2 i_2 i_3 v_2) j j_1))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_2 i_2 i_3 v_2) j j_1)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_13))
   (assert (! (forall ((|v_20| Int)(|i_37| Field$Int$)(|i_36| ref)(|j_28| Field$Bool$)(|j_27| ref)(|m_20| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_20 j_27 j_28) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_20 i_36 i_37 v_20) j_27 j_28)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_20 i_36 i_37 v_20) j_27 j_28)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__Int :weight 0 )) :named ax_14))
   (assert (! (forall ((|v_21| Int)(|i_39| Field$Int$)(|i_38| ref)(|j_30| Field$Mu$)(|j_29| ref)(|m_21| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ m_21 j_29 j_30) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_21 i_38 i_39 v_21) j_29 j_30)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_21 i_38 i_39 v_21) j_29 j_30)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Mu__Int :weight 0 )) :named ax_15))
   (assert (! (forall ((|v_22| Int)(|i_41| Field$Int$)(|i_40| ref)(|j_32| Field$ref$)(|j_31| ref)(|m_22| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_22 j_31 j_32) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_22 i_40 i_41 v_22) j_31 j_32)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_22 i_40 i_41 v_22) j_31 j_32)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__Int :weight 0 )) :named ax_16))
   (assert (! (forall ((|v_3| $@Map@@PermissionComponent@To@Int@@)(|i_5| Field$ref$)(|i_4| ref)(|j_3| Field$Bool$)(|j_2| ref)(|m_3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_3 j_2 j_3) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_3 i_4 i_5 v_3) j_2 j_3)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_3 i_4 i_5 v_3) j_2 j_3)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__ref :weight 0 )) :named ax_17))
   (assert (! (forall ((|v_4| $@Map@@PermissionComponent@To@Int@@)(|i_7| Field$ref$)(|i_6| ref)(|j_5| Field$Int$)(|j_4| ref)(|m_4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_4 j_4 j_5) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_4 i_6 i_7 v_4) j_4 j_5)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_4 i_6 i_7 v_4) j_4 j_5)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Int__ref :weight 0 )) :named ax_18))
   (assert (! (forall ((|v_5| $@Map@@PermissionComponent@To@Int@@)(|i_9| Field$ref$)(|i_8| ref)(|j_7| Field$Mu$)(|j_6| ref)(|m_5| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_5 j_6 j_7) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_5 i_8 i_9 v_5) j_6 j_7)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_5 i_8 i_9 v_5) j_6 j_7)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Mu__ref :weight 0 )) :named ax_19))
   (assert (! (forall ((|v_7| Int)(|m_7| $@Map@@PermissionComponent@To@Int@@)(|i_11| PermissionComponent)(|j_8| PermissionComponent))(!(=> (not (= j_8 i_11)) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ m_7 j_8) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_7 i_11 v_7) j_8))):pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_7 i_11 v_7) j_8)) :qid map_2_$@Map@@PermissionComponent@To@Int@@ :weight 0 )) :named ax_20))
   (assert (! (forall ((|v_9| $@Map@@PermissionComponent@To@Int@@)(|m_9| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_15| Field$Mu$)(|j_10| Field$Mu$)(|i_14| ref)(|j_9| ref))(!(=> (or (not (= j_9 i_14)) (not (= j_10 i_15))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_9 j_9 j_10) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_9 i_14 i_15 v_9) j_9 j_10))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_9 i_14 i_15 v_9) j_9 j_10)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_21))
   (assert (! (not (= forkK held)) :named ax_22))
   (assert (! (not (= forkK Node.inv)) :named ax_23))
   (assert (! (not (= forkK Node.invLeft)) :named ax_24))
   (assert (! (not (= forkK Node.invRight)) :named ax_25))
   (assert (! (not (= held forkK)) :named ax_26))
   (assert (! (not (= held Node.inv)) :named ax_27))
   (assert (! (not (= held Node.invLeft)) :named ax_28))
   (assert (! (not (= held Node.invRight)) :named ax_29))
   (assert (! (not (= joinable forkK)) :named ax_30))
   (assert (! (not (= joinable forkK)) :named ax_31))
   (assert (! (not (= joinable held)) :named ax_32))
   (assert (! (not (= joinable held)) :named ax_33))
   (assert (! (not (= joinable Node.inv)) :named ax_34))
   (assert (! (not (= joinable Node.invLeft)) :named ax_35))
   (assert (! (not (= joinable Node.invRight)) :named ax_36))
   (assert (! (not (= Node.inv forkK)) :named ax_37))
   (assert (! (not (= Node.inv held)) :named ax_38))
   (assert (! (not (= Node.inv joinable)) :named ax_39))
   (assert (! (not (= Node.inv Node.invLeft)) :named ax_40))
   (assert (! (not (= Node.inv Node.invRight)) :named ax_41))
   (assert (! (not (= Node.invLeft forkK)) :named ax_42))
   (assert (! (not (= Node.invLeft held)) :named ax_43))
   (assert (! (not (= Node.invLeft joinable)) :named ax_44))
   (assert (! (not (= Node.invLeft Node.inv)) :named ax_45))
   (assert (! (not (= Node.invLeft Node.invRight)) :named ax_46))
   (assert (! (not (= Node.invRight forkK)) :named ax_47))
   (assert (! (not (= Node.invRight held)) :named ax_48))
   (assert (! (not (= Node.invRight joinable)) :named ax_49))
   (assert (! (not (= Node.invRight Node.inv)) :named ax_50))
   (assert (! (not (= Node.invRight Node.invLeft)) :named ax_51))
   (assert (! (not (= Node.next Node.prev)) :named ax_52))
   (assert (! (not (= Node.prev Node.next)) :named ax_53))
   (assert (! (not (= perm$R perm$N)) :named ax_54))
   (assert (! (not (= perm$R perm$N)) :named ax_55))

;Program
(assert (not
(let ((anon105_Then@8_assertion (and
    (> (Fractions 100) 0)
)))
(let ((anon131_Then@8_assertion (and
    (> (Fractions 100) 0)
)))
(let ((anon0@1_assertion (and
    (=> true (CanRead$ref$ Mask@2 ZeroMask this Node.prev))
)))
(let ((anon103@1_assertion (and
    (=> true (CanRead$Mu$ unfoldingMask@_67@5 unfoldingSecMask@_68@5 this mu))
)))
(let ((anon103@3_assertion (and
    (=> true (CanRead$ref$ unfoldingMask@_67@5 unfoldingSecMask@_68@5 this Node.next))
)))
(let ((anon103@5_assertion (and
    (=> true (CanRead$Mu$ unfoldingMask@_67@5 unfoldingSecMask@_68@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) mu))
)))
(let ((anon105_Then@1_assertion (and
    (=> true (CanRead$ref$ Mask@2 ZeroMask this Node.prev))
)))
(let ((anon105_Then@4_assertion (and
    (=> true (CanRead$ref$ Mask@2 ZeroMask this Node.prev))
)))
(let ((anon105_Then@6_assertion (and
    (=> true (CanRead$ref$ Mask@3 ZeroMask this Node.prev))
)))
(let ((anon131_Then@1_assertion (and
    (=> true (CanRead$ref$ Mask@4 SecMask@5 this Node.next))
)))
(let ((anon131_Then@4_assertion (and
    (=> true (CanRead$ref$ Mask@4 SecMask@5 this Node.next))
)))
(let ((anon131_Then@6_assertion (and
    (=> true (CanRead$ref$ Mask@5 SecMask@5 this Node.next))
)))
(let ((anon51@1_assertion (and
    (=> true (CanRead$ref$ unfoldingMask@_32@5 unfoldingSecMask@_33@5 this Node.prev))
)))
(let ((anon51@3_assertion (and
    (=> true (CanRead$Mu$ unfoldingMask@_32@5 unfoldingSecMask@_33@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) mu))
)))
(let ((anon51@5_assertion (and
    (=> true (CanRead$Mu$ unfoldingMask@_32@5 unfoldingSecMask@_33@5 this mu))
)))
(let ((anon52@1_assertion (and
    (=> true (CanRead$ref$ Mask@4 SecMask@5 this Node.next))
)))
(let ((anon105_Then@9_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.invLeft) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.invLeft) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.invLeft) perm$N)))
)))
(let ((anon131_Then@9_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.invRight) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.invRight) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.invRight) perm$N)))
)))
(let ((anon0_assertion (and
    (=> true (not (= this null)))
)))
(let ((anon103_assertion (and
    (=> true (not (= this null)))
)))
(let ((anon103@2_assertion (and
    (=> true (not (= this null)))
)))
(let ((anon103@4_assertion (and
    (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) null)))
)))
(let ((anon105_Then_assertion (and
    (=> true (not (= this null)))
)))
(let ((anon105_Then@2_assertion (and
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) null))
)))
(let ((anon105_Then@3_assertion (and
    (=> true (not (= this null)))
)))
(let ((anon105_Then@5_assertion (and
    (=> true (not (= this null)))
)))
(let ((anon105_Then@7_assertion (and
    (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) null)))
)))
(let ((anon131_Then_assertion (and
    (=> true (not (= this null)))
)))
(let ((anon131_Then@2_assertion (and
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) null))
)))
(let ((anon131_Then@3_assertion (and
    (=> true (not (= this null)))
)))
(let ((anon131_Then@5_assertion (and
    (=> true (not (= this null)))
)))
(let ((anon131_Then@7_assertion (and
    (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) null)))
)))
(let ((anon51_assertion (and
    (=> true (not (= this null)))
)))
(let ((anon51@2_assertion (and
    (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) null)))
)))
(let ((anon51@4_assertion (and
    (=> true (not (= this null)))
)))
(let ((anon52_assertion (and
    (=> true (not (= this null)))
)))
(let ((anon103@5 (=> (and true
    (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) null)))
  )
    anon103@5_assertion
)))
(let ((anon103@4 (=> (and true
    (=> true (CanRead$ref$ unfoldingMask@_67@5 unfoldingSecMask@_68@5 this Node.next))
  )(and 
    anon103@4_assertion
    anon103@5
))))
(let ((anon103@3 (=> (and true
    (=> true (not (= this null)))
  )(and 
    anon103@3_assertion
    anon103@4
))))
(let ((anon103@2 (=> (and true
    (=> true (CanRead$Mu$ unfoldingMask@_67@5 unfoldingSecMask@_68@5 this mu))
  )(and 
    anon103@2_assertion
    anon103@3
))))
(let ((anon103@1 (=> (and true
    (=> true (not (= this null)))
  )(and 
    anon103@1_assertion
    anon103@2
))))
(let ((anon103 (=> (and true
  )(and 
    anon103_assertion
    anon103@1
))))
(let ((anon156_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.next) null)
    (= SecMask@10 SecMask@8)
  )
    anon103
)))
(let ((anon156_Then (=> (and true
    (= SecMask@10 SecMask@9)
    (= SecMask@9 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.next) Node.invRight (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.next) Node.invRight) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.next) Node.invRight) perm$R) (Fractions 100)))))
    (> (Fractions 100) 0)
    (IsGoodMask Mask@5)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.next) Node.invRight)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.next) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.next) null))
    (wf Heap Mask@5 SecMask@8)
    (wf Heap Mask@5 SecMask@9)
    (wf Heap Mask@5 SecMask@9)
  )
    anon103
)))
(let ((anon149_Else (=> (and true
    (= SecMask@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.prev) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.prev) perm$N) 1))))
    (= SecMask@7 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.next) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.next) perm$N) 1))))
    (= SecMask@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ SecMask@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ SecMask@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) mu) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ SecMask@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) mu) perm$N) 1))))
    (> 1 0)
    (> 1 0)
    (> 1 0)
    (IsGoodMask Mask@5)
    (IsGoodMask Mask@5)
    (IsGoodMask Mask@5)
    (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) mu)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.next)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.prev)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) null))
    (not false)
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.next)) Node@t))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.prev)) Node@t))
    (wf Heap Mask@5 SecMask@5)
    (wf Heap Mask@5 SecMask@6)
    (wf Heap Mask@5 SecMask@6)
    (wf Heap Mask@5 SecMask@6)
    (wf Heap Mask@5 SecMask@7)
    (wf Heap Mask@5 SecMask@7)
    (wf Heap Mask@5 SecMask@7)
    (wf Heap Mask@5 SecMask@8)
    (wf Heap Mask@5 SecMask@8)
    (wf Heap SecMask@6 SecMask@6)
    (wf Heap SecMask@7 SecMask@7)
    (wf Heap SecMask@8 SecMask@8)
  )
    (and anon156_Else anon156_Then)
)))
(let ((anon87 (=> (and true
    (IsGoodMask unfoldingMask@_67@5)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@5 unfoldingSecMask@_68@5)
  )
    anon149_Else
)))
(let ((anon140_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) Node.next) null)
    (= unfoldingMask@_67@5 unfoldingMask@_67@3)
    (= unfoldingSecMask@_68@5 SecMask@5)
  )
    anon87
)))
(let ((anon86 (=> (and true
    (= unfoldingMask@_67@5 unfoldingMask@_67@4)
    (= unfoldingSecMask@_68@5 unfoldingSecMask@_68@4)
    (MuBelow (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_66@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_66@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) Node.next) mu))
  )
    anon87
)))
(let ((anon148_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 predRec@_83@0 Node.next) null)
    (= unfoldingSecMask@_68@4 unfoldingSecMask@_68@2)
  )
    anon86
)))
(let ((anon148_Then (=> (and true
    (= unfoldingSecMask@_68@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_68@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 predRec@_83@0 Node.next) Node.invRight (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_68@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 predRec@_83@0 Node.next) Node.invRight) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_68@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 predRec@_83@0 Node.next) Node.invRight) perm$R) (Fractions 100)))))
    (= unfoldingSecMask@_68@4 unfoldingSecMask@_68@3)
    (> (Fractions 100) 0)
    (IsGoodMask unfoldingMask@_67@4)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_66@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 predRec@_83@0 Node.next) Node.invRight)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 predRec@_83@0 Node.next) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 predRec@_83@0 Node.next) null))
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@4 unfoldingSecMask@_68@2)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@4 unfoldingSecMask@_68@3)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@4 unfoldingSecMask@_68@3)
  )
    anon86
)))
(let ((anon141_Else (=> (and true
    (= unfoldingSecMask@_68@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@5 predRec@_83@0 Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@5 predRec@_83@0 Node.prev) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@5 predRec@_83@0 Node.prev) perm$N) 1))))
    (= unfoldingSecMask@_68@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_68@0 predRec@_83@0 Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_68@0 predRec@_83@0 Node.next) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_68@0 predRec@_83@0 Node.next) perm$N) 1))))
    (= unfoldingSecMask@_68@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_68@1 predRec@_83@0 mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_68@1 predRec@_83@0 mu) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_68@1 predRec@_83@0 mu) perm$N) 1))))
    (> 1 0)
    (> 1 0)
    (> 1 0)
    (IsGoodMask unfoldingMask@_67@4)
    (IsGoodMask unfoldingMask@_67@4)
    (IsGoodMask unfoldingMask@_67@4)
    (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_66@1 predRec@_83@0 mu)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 predRec@_83@0 Node.next)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 predRec@_83@0 Node.prev)))
    (not (= predRec@_83@0 null))
    (not (= predRec@_83@0 null))
    (not (= predRec@_83@0 null))
    (not false)
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 predRec@_83@0 Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 predRec@_83@0 Node.next)) Node@t))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 predRec@_83@0 Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 predRec@_83@0 Node.prev)) Node@t))
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@4 SecMask@5)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@4 unfoldingSecMask@_68@0)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@4 unfoldingSecMask@_68@0)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@4 unfoldingSecMask@_68@0)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@4 unfoldingSecMask@_68@1)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@4 unfoldingSecMask@_68@1)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@4 unfoldingSecMask@_68@1)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@4 unfoldingSecMask@_68@2)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@4 unfoldingSecMask@_68@2)
    (wf unfoldingHeap@_66@1 unfoldingSecMask@_68@0 unfoldingSecMask@_68@0)
    (wf unfoldingHeap@_66@1 unfoldingSecMask@_68@1 unfoldingSecMask@_68@1)
    (wf unfoldingHeap@_66@1 unfoldingSecMask@_68@2 unfoldingSecMask@_68@2)
  )
    (and anon148_Else anon148_Then)
)))
(let ((anon140_Then (=> (and true
    ($@Node.invRight@trigger (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.next))
    (= predRec@_83@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.next))
    (= predVer@_84@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_66@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.next) Node.invRight))
    (= unfoldingMask@_67@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_67@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) Node.next) Node.invRight (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_67@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) Node.next) Node.invRight) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_67@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) Node.next) Node.invRight) perm$R) (Fractions 100)))))
    (> (Fractions 100) 0)
    (IsGoodMask unfoldingMask@_67@4)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_66@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) Node.next) Node.invRight)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) Node.next) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) Node.next) null))
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@3 SecMask@5)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@4 SecMask@5)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@4 SecMask@5)
  )
    anon141_Else
)))
(let ((anon69 (=> (and true
    (= unfoldingMask@_67@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_67@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_67@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) Node.prev) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_67@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) Node.prev) perm$N) 1))))
    (= unfoldingMask@_67@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_67@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_67@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) Node.next) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_67@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) Node.next) perm$N) 1))))
    (= unfoldingMask@_67@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingMask@_67@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingMask@_67@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) mu) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingMask@_67@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) mu) perm$N) 1))))
    (> 1 0)
    (> 1 0)
    (> 1 0)
    (IsGoodMask unfoldingMask@_67@0)
    (IsGoodMask unfoldingMask@_67@0)
    (IsGoodMask unfoldingMask@_67@1)
    (IsGoodMask unfoldingMask@_67@2)
    (IsGoodMask unfoldingMask@_67@3)
    (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_66@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) mu)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) Node.next)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) Node.prev)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) null))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) Node.next)) Node@t))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@1 this Node.next) Node.prev)) Node@t))
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@0 SecMask@5)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@0 SecMask@5)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@0 SecMask@5)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@1 SecMask@5)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@1 SecMask@5)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@1 SecMask@5)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@1 SecMask@5)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@2 SecMask@5)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@2 SecMask@5)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@2 SecMask@5)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@2 SecMask@5)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@3 SecMask@5)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@3 SecMask@5)
    (wf unfoldingHeap@_66@1 unfoldingMask@_67@3 SecMask@5)
  )
    (and anon140_Else anon140_Then)
)))
(let ((anon139_Else (=> (and true
    (= unfoldingHeap@_66@1 Heap)
    (CanRead$Int$ unfoldingMask@_67@0 SecMask@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.invRight)
  )
    anon69
)))
(let ((anon139_Then (=> (and true
    (< oldVers@_81@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_66@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_66@0 this Node.next) Node.invRight))
    (= oldVers@_81@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.invRight))
    (= unfoldingHeap@_66@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.invRight newVers@_82@0))
    (= unfoldingHeap@_66@1 unfoldingHeap@_66@0)
    (not (CanRead$Int$ unfoldingMask@_67@0 SecMask@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.invRight))
  )
    anon69
)))
(let ((anon132_Else (=> (and true
    (not false)
  )
    (and anon139_Else anon139_Then)
)))
(let ((anon131_Then@10 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.invRight) perm$R))
    (= unfoldingMask@_67@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.invRight (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.invRight) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.invRight) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.invRight) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.invRight) perm$N)))
  )
    anon132_Else
)))
(let ((anon131_Then@9 (=> (and true
    (> (Fractions 100) 0)
  )(and 
    anon131_Then@9_assertion
    anon131_Then@10
))))
(let ((anon131_Then@8 (=> (and true
    (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) null)))
    (wf Heap Mask@5 SecMask@5)
  )(and 
    anon131_Then@8_assertion
    anon131_Then@9
))))
(let ((anon131_Then@7 (=> (and true
    (=> true (CanRead$ref$ Mask@5 SecMask@5 this Node.next))
  )(and 
    anon131_Then@7_assertion
    anon131_Then@8
))))
(let ((anon131_Then@6 (=> (and true
    (=> true (not (= this null)))
  )(and 
    anon131_Then@6_assertion
    anon131_Then@7
))))
(let ((anon131_Then@5 (=> (and true
    ($@Node.invRight@trigger (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next))
    (< (* 1000 unfoldingK@_71) (Fractions 1))
    (< 0 unfoldingK@_71)
    (= Mask@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.invRight (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.invRight) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.invRight) perm$R) (Fractions 100)))))
    (= predRec@_63@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next))
    (= predVer@_64@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.invRight))
    (=> true (CanRead$ref$ Mask@4 SecMask@5 this Node.next))
    (> (Fractions 100) 0)
    (IsGoodMask Mask@5)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) Node.invRight)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) null))
    (wf Heap Mask@4 SecMask@5)
    (wf Heap Mask@5 SecMask@5)
    (wf Heap Mask@5 SecMask@5)
  )(and 
    anon131_Then@5_assertion
    anon131_Then@6
))))
(let ((anon131_Then@4 (=> (and true
    (=> true (not (= this null)))
  )(and 
    anon131_Then@4_assertion
    anon131_Then@5
))))
(let ((anon131_Then@3 (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) null))
  )(and 
    anon131_Then@3_assertion
    anon131_Then@4
))))
(let ((anon131_Then@2 (=> (and true
    (=> true (CanRead$ref$ Mask@4 SecMask@5 this Node.next))
  )(and 
    anon131_Then@2_assertion
    anon131_Then@3
))))
(let ((anon131_Then@1 (=> (and true
    (=> true (not (= this null)))
  )(and 
    anon131_Then@1_assertion
    anon131_Then@2
))))
(let ((anon131_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) null))
  )(and 
    anon131_Then_assertion
    anon131_Then@1
))))
(let ((anon52@2 (=> (and true
    (=> true (CanRead$ref$ Mask@4 SecMask@5 this Node.next))
  )
    anon131_Then
)))
(let ((anon52@1 (=> (and true
    (=> true (not (= this null)))
  )(and 
    anon52@1_assertion
    anon52@2
))))
(let ((anon52 (=> (and true
  )(and 
    anon52_assertion
    anon52@1
))))
(let ((anon105_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) null)
    (= Mask@4 Mask@2)
    (= SecMask@5 ZeroMask)
  )
    anon52
)))
(let ((anon51@6 (=> (and true
    (= Mask@4 Mask@3)
    (= SecMask@5 SecMask@4)
    (=> true (CanRead$Mu$ unfoldingMask@_32@5 unfoldingSecMask@_33@5 this mu))
    (MuBelow (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap this mu))
  )
    anon52
)))
(let ((anon51@5 (=> (and true
    (=> true (not (= this null)))
  )(and 
    anon51@5_assertion
    anon51@6
))))
(let ((anon51@4 (=> (and true
    (=> true (CanRead$Mu$ unfoldingMask@_32@5 unfoldingSecMask@_33@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) mu))
  )(and 
    anon51@4_assertion
    anon51@5
))))
(let ((anon51@3 (=> (and true
    (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) null)))
  )(and 
    anon51@3_assertion
    anon51@4
))))
(let ((anon51@2 (=> (and true
    (=> true (CanRead$ref$ unfoldingMask@_32@5 unfoldingSecMask@_33@5 this Node.prev))
  )(and 
    anon51@2_assertion
    anon51@3
))))
(let ((anon51@1 (=> (and true
    (=> true (not (= this null)))
  )(and 
    anon51@1_assertion
    anon51@2
))))
(let ((anon51 (=> (and true
  )(and 
    anon51_assertion
    anon51@1
))))
(let ((anon130_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev) null)
    (= SecMask@4 SecMask@2)
  )
    anon51
)))
(let ((anon130_Then (=> (and true
    (= SecMask@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev) Node.invLeft (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev) Node.invLeft) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev) Node.invLeft) perm$R) (Fractions 100)))))
    (= SecMask@4 SecMask@3)
    (> (Fractions 100) 0)
    (IsGoodMask Mask@3)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev) Node.invLeft)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev) null))
    (wf Heap Mask@3 SecMask@2)
    (wf Heap Mask@3 SecMask@3)
    (wf Heap Mask@3 SecMask@3)
  )
    anon51
)))
(let ((anon123_Else (=> (and true
    (= SecMask@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev) perm$N) 1))))
    (= SecMask@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.next) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.next) perm$N) 1))))
    (= SecMask@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ SecMask@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ SecMask@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) mu) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ SecMask@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) mu) perm$N) 1))))
    (> 1 0)
    (> 1 0)
    (> 1 0)
    (IsGoodMask Mask@3)
    (IsGoodMask Mask@3)
    (IsGoodMask Mask@3)
    (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) mu)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.next)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) null))
    (not false)
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.next)) Node@t))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev)) Node@t))
    (wf Heap Mask@3 SecMask@0)
    (wf Heap Mask@3 SecMask@0)
    (wf Heap Mask@3 SecMask@0)
    (wf Heap Mask@3 SecMask@1)
    (wf Heap Mask@3 SecMask@1)
    (wf Heap Mask@3 SecMask@1)
    (wf Heap Mask@3 SecMask@2)
    (wf Heap Mask@3 SecMask@2)
    (wf Heap Mask@3 ZeroMask)
    (wf Heap SecMask@0 SecMask@0)
    (wf Heap SecMask@1 SecMask@1)
    (wf Heap SecMask@2 SecMask@2)
  )
    (and anon130_Else anon130_Then)
)))
(let ((anon35 (=> (and true
    (IsGoodMask unfoldingMask@_32@5)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@5 unfoldingSecMask@_33@5)
  )
    anon123_Else
)))
(let ((anon114_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) Node.prev) null)
    (= unfoldingMask@_32@5 unfoldingMask@_32@3)
    (= unfoldingSecMask@_33@5 ZeroMask)
  )
    anon35
)))
(let ((anon34 (=> (and true
    (= unfoldingMask@_32@5 unfoldingMask@_32@4)
    (= unfoldingSecMask@_33@5 unfoldingSecMask@_33@4)
    (MuBelow (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_31@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) Node.prev) mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_31@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) mu))
  )
    anon35
)))
(let ((anon122_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 predRec@_48@0 Node.prev) null)
    (= unfoldingSecMask@_33@4 unfoldingSecMask@_33@2)
  )
    anon34
)))
(let ((anon122_Then (=> (and true
    (= unfoldingSecMask@_33@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_33@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 predRec@_48@0 Node.prev) Node.invLeft (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_33@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 predRec@_48@0 Node.prev) Node.invLeft) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingSecMask@_33@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 predRec@_48@0 Node.prev) Node.invLeft) perm$R) (Fractions 100)))))
    (= unfoldingSecMask@_33@4 unfoldingSecMask@_33@3)
    (> (Fractions 100) 0)
    (IsGoodMask unfoldingMask@_32@4)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_31@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 predRec@_48@0 Node.prev) Node.invLeft)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 predRec@_48@0 Node.prev) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 predRec@_48@0 Node.prev) null))
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@4 unfoldingSecMask@_33@2)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@4 unfoldingSecMask@_33@3)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@4 unfoldingSecMask@_33@3)
  )
    anon34
)))
(let ((anon115_Else (=> (and true
    (= unfoldingSecMask@_33@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask predRec@_48@0 Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask predRec@_48@0 Node.prev) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask predRec@_48@0 Node.prev) perm$N) 1))))
    (= unfoldingSecMask@_33@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_33@0 predRec@_48@0 Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_33@0 predRec@_48@0 Node.next) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingSecMask@_33@0 predRec@_48@0 Node.next) perm$N) 1))))
    (= unfoldingSecMask@_33@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_33@1 predRec@_48@0 mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_33@1 predRec@_48@0 mu) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingSecMask@_33@1 predRec@_48@0 mu) perm$N) 1))))
    (> 1 0)
    (> 1 0)
    (> 1 0)
    (IsGoodMask unfoldingMask@_32@4)
    (IsGoodMask unfoldingMask@_32@4)
    (IsGoodMask unfoldingMask@_32@4)
    (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_31@1 predRec@_48@0 mu)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 predRec@_48@0 Node.next)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 predRec@_48@0 Node.prev)))
    (not (= predRec@_48@0 null))
    (not (= predRec@_48@0 null))
    (not (= predRec@_48@0 null))
    (not false)
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 predRec@_48@0 Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 predRec@_48@0 Node.next)) Node@t))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 predRec@_48@0 Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 predRec@_48@0 Node.prev)) Node@t))
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@4 unfoldingSecMask@_33@0)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@4 unfoldingSecMask@_33@0)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@4 unfoldingSecMask@_33@0)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@4 unfoldingSecMask@_33@1)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@4 unfoldingSecMask@_33@1)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@4 unfoldingSecMask@_33@1)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@4 unfoldingSecMask@_33@2)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@4 unfoldingSecMask@_33@2)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@4 ZeroMask)
    (wf unfoldingHeap@_31@1 unfoldingSecMask@_33@0 unfoldingSecMask@_33@0)
    (wf unfoldingHeap@_31@1 unfoldingSecMask@_33@1 unfoldingSecMask@_33@1)
    (wf unfoldingHeap@_31@1 unfoldingSecMask@_33@2 unfoldingSecMask@_33@2)
  )
    (and anon122_Else anon122_Then)
)))
(let ((anon114_Then (=> (and true
    ($@Node.invLeft@trigger (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev))
    (= predRec@_48@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev))
    (= predVer@_49@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_31@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.prev) Node.invLeft))
    (= unfoldingMask@_32@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_32@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) Node.prev) Node.invLeft (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_32@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) Node.prev) Node.invLeft) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_32@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) Node.prev) Node.invLeft) perm$R) (Fractions 100)))))
    (> (Fractions 100) 0)
    (IsGoodMask unfoldingMask@_32@4)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_31@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) Node.prev) Node.invLeft)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) Node.prev) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) Node.prev) null))
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@3 ZeroMask)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@4 ZeroMask)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@4 ZeroMask)
  )
    anon115_Else
)))
(let ((anon17 (=> (and true
    (= unfoldingMask@_32@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_32@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_32@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) Node.prev) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_32@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) Node.prev) perm$N) 1))))
    (= unfoldingMask@_32@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_32@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_32@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) Node.next) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_32@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) Node.next) perm$N) 1))))
    (= unfoldingMask@_32@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingMask@_32@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingMask@_32@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) mu) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ unfoldingMask@_32@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) mu) perm$N) 1))))
    (> 1 0)
    (> 1 0)
    (> 1 0)
    (IsGoodMask unfoldingMask@_32@0)
    (IsGoodMask unfoldingMask@_32@0)
    (IsGoodMask unfoldingMask@_32@1)
    (IsGoodMask unfoldingMask@_32@2)
    (IsGoodMask unfoldingMask@_32@3)
    (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ unfoldingHeap@_31@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) mu)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) Node.next)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) Node.prev)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) null))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) Node.next)) Node@t))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@1 this Node.prev) Node.prev)) Node@t))
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@0 ZeroMask)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@0 ZeroMask)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@0 ZeroMask)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@1 ZeroMask)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@1 ZeroMask)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@1 ZeroMask)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@1 ZeroMask)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@2 ZeroMask)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@2 ZeroMask)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@2 ZeroMask)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@2 ZeroMask)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@3 ZeroMask)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@3 ZeroMask)
    (wf unfoldingHeap@_31@1 unfoldingMask@_32@3 ZeroMask)
  )
    (and anon114_Else anon114_Then)
)))
(let ((anon113_Else (=> (and true
    (= unfoldingHeap@_31@1 Heap)
    (CanRead$Int$ unfoldingMask@_32@0 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.invLeft)
  )
    anon17
)))
(let ((anon113_Then (=> (and true
    (< oldVers@_46@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_31@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_31@0 this Node.prev) Node.invLeft))
    (= oldVers@_46@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.invLeft))
    (= unfoldingHeap@_31@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.invLeft newVers@_47@0))
    (= unfoldingHeap@_31@1 unfoldingHeap@_31@0)
    (not (CanRead$Int$ unfoldingMask@_32@0 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.invLeft))
  )
    anon17
)))
(let ((anon106_Else (=> (and true
    (not false)
  )
    (and anon113_Else anon113_Then)
)))
(let ((anon105_Then@10 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.invLeft) perm$R))
    (= unfoldingMask@_32@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.invLeft (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.invLeft) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.invLeft) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.invLeft) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.invLeft) perm$N)))
  )
    anon106_Else
)))
(let ((anon105_Then@9 (=> (and true
    (> (Fractions 100) 0)
  )(and 
    anon105_Then@9_assertion
    anon105_Then@10
))))
(let ((anon105_Then@8 (=> (and true
    (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) null)))
    (wf Heap Mask@3 ZeroMask)
  )(and 
    anon105_Then@8_assertion
    anon105_Then@9
))))
(let ((anon105_Then@7 (=> (and true
    (=> true (CanRead$ref$ Mask@3 ZeroMask this Node.prev))
  )(and 
    anon105_Then@7_assertion
    anon105_Then@8
))))
(let ((anon105_Then@6 (=> (and true
    (=> true (not (= this null)))
  )(and 
    anon105_Then@6_assertion
    anon105_Then@7
))))
(let ((anon105_Then@5 (=> (and true
    ($@Node.invLeft@trigger (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev))
    (< (* 1000 unfoldingK@_36) (Fractions 1))
    (< 0 unfoldingK@_36)
    (= Mask@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.invLeft (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.invLeft) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.invLeft) perm$R) (Fractions 100)))))
    (= predRec@_28@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev))
    (= predVer@_29@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.invLeft))
    (=> true (CanRead$ref$ Mask@2 ZeroMask this Node.prev))
    (> (Fractions 100) 0)
    (IsGoodMask Mask@3)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) Node.invLeft)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) null))
    (wf Heap Mask@2 ZeroMask)
    (wf Heap Mask@3 ZeroMask)
    (wf Heap Mask@3 ZeroMask)
  )(and 
    anon105_Then@5_assertion
    anon105_Then@6
))))
(let ((anon105_Then@4 (=> (and true
    (=> true (not (= this null)))
  )(and 
    anon105_Then@4_assertion
    anon105_Then@5
))))
(let ((anon105_Then@3 (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) null))
  )(and 
    anon105_Then@3_assertion
    anon105_Then@4
))))
(let ((anon105_Then@2 (=> (and true
    (=> true (CanRead$ref$ Mask@2 ZeroMask this Node.prev))
  )(and 
    anon105_Then@2_assertion
    anon105_Then@3
))))
(let ((anon105_Then@1 (=> (and true
    (=> true (not (= this null)))
  )(and 
    anon105_Then@1_assertion
    anon105_Then@2
))))
(let ((anon105_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) null))
  )(and 
    anon105_Then_assertion
    anon105_Then@1
))))
(let ((anon0@2 (=> (and true
    (=> true (CanRead$ref$ Mask@2 ZeroMask this Node.prev))
  )
    (and anon105_Else anon105_Then)
)))
(let ((anon0@1 (=> (and true
    (=> true (not (= this null)))
  )(and 
    anon0@1_assertion
    anon0@2
))))
(let ((anon0 (=> (and true
    (< (* 1000 predicateK@_27) (Fractions 1))
    (< 0 predicateK@_27)
    (= Mask@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask this Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask this Node.prev) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask this Node.prev) perm$N) 1))))
    (= Mask@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@0 this Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@0 this Node.next) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@0 this Node.next) perm$N) 1))))
    (= Mask@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@1 this mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@1 this mu) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@1 this mu) perm$N) 1))))
    (> 1 0)
    (> 1 0)
    (> 1 0)
    (IsGoodMask Mask@0)
    (IsGoodMask Mask@1)
    (IsGoodMask Mask@2)
    (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap this mu)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev)))
    (not (= this null))
    (not (= this null))
    (not (= this null))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.next)) Node@t))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this Node.prev)) Node@t))
    (wf Heap Mask@0 ZeroMask)
    (wf Heap Mask@0 ZeroMask)
    (wf Heap Mask@0 ZeroMask)
    (wf Heap Mask@0 ZeroMask)
    (wf Heap Mask@1 ZeroMask)
    (wf Heap Mask@1 ZeroMask)
    (wf Heap Mask@1 ZeroMask)
    (wf Heap Mask@1 ZeroMask)
    (wf Heap Mask@2 ZeroMask)
    (wf Heap Mask@2 ZeroMask)
    (wf Heap Mask@2 ZeroMask)
    (wf Heap ZeroMask ZeroMask)
  )(and 
    anon0_assertion
    anon0@1
))))
(let ((PreconditionGeneratedEntry (=> (and true
    (IsGoodMask Mask)
    (IsGoodMask SecMask)
    (not (= this null))
    (or (= this null) (= (dtype this) Node@t))
    (wf Heap Mask SecMask)
  )
    anon0
)))
(let (($start (=> (and true
    (< (* 1000 channelK) (Fractions 1))
    (< (* 1000 monitorK) (Fractions 1))
    (< (* 1000 predicateK) (Fractions 1))
    (< 0 channelK)
    (< 0 monitorK)
    (< 0 predicateK)
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ Permission$Full perm$N) 0)
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ Permission$Full perm$R) Permission$FullFraction)
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ Permission$Zero perm$N) 0)
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ Permission$Zero perm$R) 0)
    (= channelK monitorK)
    (= Permission$FullFraction (Fractions 100))
    (= predicateK channelK)
    (> Permission$denominator 0)
    (forall( (|a_$2| Int) (|b_$2| Int) (|d| Int))(!(=> (and (and (<= 2 |d|) (= (mod |a_$2| |d|) (mod |b_$2| |d|))) (< |a_$2| |b_$2|)) (<= (+ |a_$2| |d|) |b_$2|))  :pattern ( (mod |a_$2| |d|) (mod |b_$2| |d|))))
    (forall( (|con_$0_$0| Bool) (|a_$1_$0| Bool) (|b_$1_$0| Bool))(!(=> (not |con_$0_$0|) (= (ite$Bool$ |con_$0_$0| |a_$1_$0| |b_$1_$0|) |b_$1_$0|))  :pattern ( (ite$Bool$ |con_$0_$0| |a_$1_$0| |b_$1_$0|))))
    (forall( (|con_$0_$1| Bool) (|a_$1_$1| Int) (|b_$1_$1| Int))(!(=> (not |con_$0_$1|) (= (ite$Int$ |con_$0_$1| |a_$1_$1| |b_$1_$1|) |b_$1_$1|))  :pattern ( (ite$Int$ |con_$0_$1| |a_$1_$1| |b_$1_$1|))))
    (forall( (|con_$0_$10| Bool) (|a_$1_$10| Field$Bool$) (|b_$1_$10| Field$Bool$))(!(=> (not |con_$0_$10|) (= (ite$Field$Bool$$ |con_$0_$10| |a_$1_$10| |b_$1_$10|) |b_$1_$10|))  :pattern ( (ite$Field$Bool$$ |con_$0_$10| |a_$1_$10| |b_$1_$10|))))
    (forall( (|con_$0_$11| Bool) (|a_$1_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|b_$1_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (not |con_$0_$11|) (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$0_$11| |a_$1_$11| |b_$1_$11|) |b_$1_$11|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$0_$11| |a_$1_$11| |b_$1_$11|))))
    (forall( (|con_$0_$12| Bool) (|a_$1_$12| $@Map@@ref@To@Int@@) (|b_$1_$12| $@Map@@ref@To@Int@@))(!(=> (not |con_$0_$12|) (= (ite$$@Map@@ref@To@Int@@$ |con_$0_$12| |a_$1_$12| |b_$1_$12|) |b_$1_$12|))  :pattern ( (ite$$@Map@@ref@To@Int@@$ |con_$0_$12| |a_$1_$12| |b_$1_$12|))))
    (forall( (|con_$0_$13| Bool) (|a_$1_$13| Field$ref$) (|b_$1_$13| Field$ref$))(!(=> (not |con_$0_$13|) (= (ite$Field$ref$$ |con_$0_$13| |a_$1_$13| |b_$1_$13|) |b_$1_$13|))  :pattern ( (ite$Field$ref$$ |con_$0_$13| |a_$1_$13| |b_$1_$13|))))
    (forall( (|con_$0_$14| Bool) (|a_$1_$14| TypeName) (|b_$1_$14| TypeName))(!(=> (not |con_$0_$14|) (= (ite$TypeName$ |con_$0_$14| |a_$1_$14| |b_$1_$14|) |b_$1_$14|))  :pattern ( (ite$TypeName$ |con_$0_$14| |a_$1_$14| |b_$1_$14|))))
    (forall( (|con_$0_$2| Bool) (|a_$1_$2| $@Map@@PermissionComponent@To@Int@@) (|b_$1_$2| $@Map@@PermissionComponent@To@Int@@))(!(=> (not |con_$0_$2|) (= (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$0_$2| |a_$1_$2| |b_$1_$2|) |b_$1_$2|))  :pattern ( (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$0_$2| |a_$1_$2| |b_$1_$2|))))
    (forall( (|con_$0_$3| Bool) (|a_$1_$3| PermissionComponent) (|b_$1_$3| PermissionComponent))(!(=> (not |con_$0_$3|) (= (ite$PermissionComponent$ |con_$0_$3| |a_$1_$3| |b_$1_$3|) |b_$1_$3|))  :pattern ( (ite$PermissionComponent$ |con_$0_$3| |a_$1_$3| |b_$1_$3|))))
    (forall( (|con_$0_$4| Bool) (|a_$1_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|b_$1_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(=> (not |con_$0_$4|) (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$0_$4| |a_$1_$4| |b_$1_$4|) |b_$1_$4|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$0_$4| |a_$1_$4| |b_$1_$4|))))
    (forall( (|con_$0_$5| Bool) (|a_$1_$5| ref) (|b_$1_$5| ref))(!(=> (not |con_$0_$5|) (= (ite$ref$ |con_$0_$5| |a_$1_$5| |b_$1_$5|) |b_$1_$5|))  :pattern ( (ite$ref$ |con_$0_$5| |a_$1_$5| |b_$1_$5|))))
    (forall( (|con_$0_$6| Bool) (|a_$1_$6| Field$Int$) (|b_$1_$6| Field$Int$))(!(=> (not |con_$0_$6|) (= (ite$Field$Int$$ |con_$0_$6| |a_$1_$6| |b_$1_$6|) |b_$1_$6|))  :pattern ( (ite$Field$Int$$ |con_$0_$6| |a_$1_$6| |b_$1_$6|))))
    (forall( (|con_$0_$7| Bool) (|a_$1_$7| PartialHeapType) (|b_$1_$7| PartialHeapType))(!(=> (not |con_$0_$7|) (= (ite$PartialHeapType$ |con_$0_$7| |a_$1_$7| |b_$1_$7|) |b_$1_$7|))  :pattern ( (ite$PartialHeapType$ |con_$0_$7| |a_$1_$7| |b_$1_$7|))))
    (forall( (|con_$0_$8| Bool) (|a_$1_$8| Field$Mu$) (|b_$1_$8| Field$Mu$))(!(=> (not |con_$0_$8|) (= (ite$Field$Mu$$ |con_$0_$8| |a_$1_$8| |b_$1_$8|) |b_$1_$8|))  :pattern ( (ite$Field$Mu$$ |con_$0_$8| |a_$1_$8| |b_$1_$8|))))
    (forall( (|con_$0_$9| Bool) (|a_$1_$9| Mu) (|b_$1_$9| Mu))(!(=> (not |con_$0_$9|) (= (ite$Mu$ |con_$0_$9| |a_$1_$9| |b_$1_$9|) |b_$1_$9|))  :pattern ( (ite$Mu$ |con_$0_$9| |a_$1_$9| |b_$1_$9|))))
    (forall( (|con_$1| Bool) (|a_$0_$0| Bool) (|b_$0_$0| Bool))(!(=> |con_$1| (= (ite$Bool$ |con_$1| |a_$0_$0| |b_$0_$0|) |a_$0_$0|))  :pattern ( (ite$Bool$ |con_$1| |a_$0_$0| |b_$0_$0|))))
    (forall( (|con_$10| Bool) (|a_$0_$9| Mu) (|b_$0_$9| Mu))(!(=> |con_$10| (= (ite$Mu$ |con_$10| |a_$0_$9| |b_$0_$9|) |a_$0_$9|))  :pattern ( (ite$Mu$ |con_$10| |a_$0_$9| |b_$0_$9|))))
    (forall( (|con_$11| Bool) (|a_$0_$10| Field$Bool$) (|b_$0_$10| Field$Bool$))(!(=> |con_$11| (= (ite$Field$Bool$$ |con_$11| |a_$0_$10| |b_$0_$10|) |a_$0_$10|))  :pattern ( (ite$Field$Bool$$ |con_$11| |a_$0_$10| |b_$0_$10|))))
    (forall( (|con_$12| Bool) (|a_$0_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|b_$0_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> |con_$12| (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$12| |a_$0_$11| |b_$0_$11|) |a_$0_$11|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$12| |a_$0_$11| |b_$0_$11|))))
    (forall( (|con_$13| Bool) (|a_$0_$12| $@Map@@ref@To@Int@@) (|b_$0_$12| $@Map@@ref@To@Int@@))(!(=> |con_$13| (= (ite$$@Map@@ref@To@Int@@$ |con_$13| |a_$0_$12| |b_$0_$12|) |a_$0_$12|))  :pattern ( (ite$$@Map@@ref@To@Int@@$ |con_$13| |a_$0_$12| |b_$0_$12|))))
    (forall( (|con_$14| Bool) (|a_$0_$13| Field$ref$) (|b_$0_$13| Field$ref$))(!(=> |con_$14| (= (ite$Field$ref$$ |con_$14| |a_$0_$13| |b_$0_$13|) |a_$0_$13|))  :pattern ( (ite$Field$ref$$ |con_$14| |a_$0_$13| |b_$0_$13|))))
    (forall( (|con_$15| Bool) (|a_$0_$14| TypeName) (|b_$0_$14| TypeName))(!(=> |con_$15| (= (ite$TypeName$ |con_$15| |a_$0_$14| |b_$0_$14|) |a_$0_$14|))  :pattern ( (ite$TypeName$ |con_$15| |a_$0_$14| |b_$0_$14|))))
    (forall( (|con_$2| Bool) (|a_$0_$1| Int) (|b_$0_$1| Int))(!(=> |con_$2| (= (ite$Int$ |con_$2| |a_$0_$1| |b_$0_$1|) |a_$0_$1|))  :pattern ( (ite$Int$ |con_$2| |a_$0_$1| |b_$0_$1|))))
    (forall( (|con_$3| Bool) (|a_$0_$2| $@Map@@PermissionComponent@To@Int@@) (|b_$0_$2| $@Map@@PermissionComponent@To@Int@@))(!(=> |con_$3| (= (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$3| |a_$0_$2| |b_$0_$2|) |a_$0_$2|))  :pattern ( (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$3| |a_$0_$2| |b_$0_$2|))))
    (forall( (|con_$4| Bool) (|a_$0_$3| PermissionComponent) (|b_$0_$3| PermissionComponent))(!(=> |con_$4| (= (ite$PermissionComponent$ |con_$4| |a_$0_$3| |b_$0_$3|) |a_$0_$3|))  :pattern ( (ite$PermissionComponent$ |con_$4| |a_$0_$3| |b_$0_$3|))))
    (forall( (|con_$5| Bool) (|a_$0_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|b_$0_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(=> |con_$5| (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$5| |a_$0_$4| |b_$0_$4|) |a_$0_$4|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$5| |a_$0_$4| |b_$0_$4|))))
    (forall( (|con_$6| Bool) (|a_$0_$5| ref) (|b_$0_$5| ref))(!(=> |con_$6| (= (ite$ref$ |con_$6| |a_$0_$5| |b_$0_$5|) |a_$0_$5|))  :pattern ( (ite$ref$ |con_$6| |a_$0_$5| |b_$0_$5|))))
    (forall( (|con_$7| Bool) (|a_$0_$6| Field$Int$) (|b_$0_$6| Field$Int$))(!(=> |con_$7| (= (ite$Field$Int$$ |con_$7| |a_$0_$6| |b_$0_$6|) |a_$0_$6|))  :pattern ( (ite$Field$Int$$ |con_$7| |a_$0_$6| |b_$0_$6|))))
    (forall( (|con_$8| Bool) (|a_$0_$7| PartialHeapType) (|b_$0_$7| PartialHeapType))(!(=> |con_$8| (= (ite$PartialHeapType$ |con_$8| |a_$0_$7| |b_$0_$7|) |a_$0_$7|))  :pattern ( (ite$PartialHeapType$ |con_$8| |a_$0_$7| |b_$0_$7|))))
    (forall( (|con_$9| Bool) (|a_$0_$8| Field$Mu$) (|b_$0_$8| Field$Mu$))(!(=> |con_$9| (= (ite$Field$Mu$$ |con_$9| |a_$0_$8| |b_$0_$8|) |a_$0_$8|))  :pattern ( (ite$Field$Mu$$ |con_$9| |a_$0_$8| |b_$0_$8|))))
    (forall( (|f_$13_$0| Field$Bool$))(=> (NonPredicateField$Bool$ |f_$13_$0|) (not (PredicateField$Bool$ |f_$13_$0|))))
    (forall( (|f_$13_$1| Field$Int$))(=> (NonPredicateField$Int$ |f_$13_$1|) (not (PredicateField$Int$ |f_$13_$1|))))
    (forall( (|f_$13_$2| Field$ref$))(=> (NonPredicateField$ref$ |f_$13_$2|) (not (PredicateField$ref$ |f_$13_$2|))))
    (forall( (|f_$13_$3| Field$Mu$))(=> (NonPredicateField$Mu$ |f_$13_$3|) (not (PredicateField$Mu$ |f_$13_$3|))))
    (forall( (|f_$14_$0| Field$Bool$))(=> (PredicateField$Bool$ |f_$14_$0|) (not (NonPredicateField$Bool$ |f_$14_$0|))))
    (forall( (|f_$14_$1| Field$Int$))(=> (PredicateField$Int$ |f_$14_$1|) (not (NonPredicateField$Int$ |f_$14_$1|))))
    (forall( (|f_$14_$2| Field$ref$))(=> (PredicateField$ref$ |f_$14_$2|) (not (NonPredicateField$ref$ |f_$14_$2|))))
    (forall( (|f_$14_$3| Field$Mu$))(=> (PredicateField$Mu$ |f_$14_$3|) (not (NonPredicateField$Mu$ |f_$14_$3|))))
    (forall( (|h_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|m_$8| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$15| ref) (|q| ref))(!(=> (and (and (and (wf |h_$1| |m_$8| |sm_$2|) (not (= |o_$15| |q|))) (or (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$1| |o_$15| held)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$1| |o_$15| rdheld))) (or (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$1| |q| held)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$1| |q| rdheld))) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$1| |o_$15| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$1| |q| mu))))  :pattern ( (wf |h_$1| |m_$8| |sm_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$1| |o_$15| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$1| |q| mu))))
    (forall( (|m_$0| Mu) (|n_$1| Mu) (|o_$0| Mu))(!(=> (and (MuBelow |m_$0| |n_$1|) (MuBelow |n_$1| |o_$0|)) (MuBelow |m_$0| |o_$0|))  :pattern ( (MuBelow |m_$0| |n_$1|) (MuBelow |n_$1| |o_$0|))))
    (forall( (|m_$1| Mu) (|n_$2| Mu))(=> (MuBelow |m_$1| |n_$2|) (not (= |n_$2| $LockBottom))))
    (forall( (|m_$11_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$0| ref) (|f_$9_$0| Field$Bool$) (|howMuch_$1_$0| Int) (|q_$2_$0| ref) (|g_$1_$0| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Bool$ |m_$11_$0| |o_$18_$0| |f_$9_$0| |howMuch_$1_$0|) |q_$2_$0| |g_$1_$0|) perm$R) (ite$Int$ (and (= |o_$18_$0| |q_$2_$0|) (= |f_$9_$0| |g_$1_$0|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$0| |q_$2_$0| |g_$1_$0|) perm$R) |howMuch_$1_$0|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$0| |q_$2_$0| |g_$1_$0|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Bool$ |m_$11_$0| |o_$18_$0| |f_$9_$0| |howMuch_$1_$0|) |q_$2_$0| |g_$1_$0|) perm$R))))
    (forall( (|m_$11_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$1| ref) (|f_$9_$1| Field$Int$) (|howMuch_$1_$1| Int) (|q_$2_$1| ref) (|g_$1_$1| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Int$ |m_$11_$1| |o_$18_$1| |f_$9_$1| |howMuch_$1_$1|) |q_$2_$1| |g_$1_$1|) perm$R) (ite$Int$ (and (= |o_$18_$1| |q_$2_$1|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$1| |q_$2_$1| |g_$1_$1|) perm$R) |howMuch_$1_$1|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$1| |q_$2_$1| |g_$1_$1|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Int$ |m_$11_$1| |o_$18_$1| |f_$9_$1| |howMuch_$1_$1|) |q_$2_$1| |g_$1_$1|) perm$R))))
    (forall( (|m_$11_$10| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$10| ref) (|f_$9_$10| Field$ref$) (|howMuch_$1_$10| Int) (|q_$2_$10| ref) (|g_$1_$10| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$ref$ |m_$11_$10| |o_$18_$10| |f_$9_$10| |howMuch_$1_$10|) |q_$2_$10| |g_$1_$10|) perm$R) (ite$Int$ (and (= |o_$18_$10| |q_$2_$10|) (= |f_$9_$10| |g_$1_$10|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$10| |q_$2_$10| |g_$1_$10|) perm$R) |howMuch_$1_$10|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$10| |q_$2_$10| |g_$1_$10|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$ref$ |m_$11_$10| |o_$18_$10| |f_$9_$10| |howMuch_$1_$10|) |q_$2_$10| |g_$1_$10|) perm$R))))
    (forall( (|m_$11_$11| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$11| ref) (|f_$9_$11| Field$Mu$) (|howMuch_$1_$11| Int) (|q_$2_$11| ref) (|g_$1_$11| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Mu$ |m_$11_$11| |o_$18_$11| |f_$9_$11| |howMuch_$1_$11|) |q_$2_$11| |g_$1_$11|) perm$R) (ite$Int$ (and (= |o_$18_$11| |q_$2_$11|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$11| |q_$2_$11| |g_$1_$11|) perm$R) |howMuch_$1_$11|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$11| |q_$2_$11| |g_$1_$11|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Mu$ |m_$11_$11| |o_$18_$11| |f_$9_$11| |howMuch_$1_$11|) |q_$2_$11| |g_$1_$11|) perm$R))))
    (forall( (|m_$11_$12| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$12| ref) (|f_$9_$12| Field$Bool$) (|howMuch_$1_$12| Int) (|q_$2_$12| ref) (|g_$1_$12| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Bool$ |m_$11_$12| |o_$18_$12| |f_$9_$12| |howMuch_$1_$12|) |q_$2_$12| |g_$1_$12|) perm$R) (ite$Int$ (and (= |o_$18_$12| |q_$2_$12|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$12| |q_$2_$12| |g_$1_$12|) perm$R) |howMuch_$1_$12|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$12| |q_$2_$12| |g_$1_$12|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Bool$ |m_$11_$12| |o_$18_$12| |f_$9_$12| |howMuch_$1_$12|) |q_$2_$12| |g_$1_$12|) perm$R))))
    (forall( (|m_$11_$13| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$13| ref) (|f_$9_$13| Field$Int$) (|howMuch_$1_$13| Int) (|q_$2_$13| ref) (|g_$1_$13| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Int$ |m_$11_$13| |o_$18_$13| |f_$9_$13| |howMuch_$1_$13|) |q_$2_$13| |g_$1_$13|) perm$R) (ite$Int$ (and (= |o_$18_$13| |q_$2_$13|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$13| |q_$2_$13| |g_$1_$13|) perm$R) |howMuch_$1_$13|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$13| |q_$2_$13| |g_$1_$13|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Int$ |m_$11_$13| |o_$18_$13| |f_$9_$13| |howMuch_$1_$13|) |q_$2_$13| |g_$1_$13|) perm$R))))
    (forall( (|m_$11_$14| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$14| ref) (|f_$9_$14| Field$ref$) (|howMuch_$1_$14| Int) (|q_$2_$14| ref) (|g_$1_$14| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$ref$ |m_$11_$14| |o_$18_$14| |f_$9_$14| |howMuch_$1_$14|) |q_$2_$14| |g_$1_$14|) perm$R) (ite$Int$ (and (= |o_$18_$14| |q_$2_$14|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$14| |q_$2_$14| |g_$1_$14|) perm$R) |howMuch_$1_$14|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$14| |q_$2_$14| |g_$1_$14|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$ref$ |m_$11_$14| |o_$18_$14| |f_$9_$14| |howMuch_$1_$14|) |q_$2_$14| |g_$1_$14|) perm$R))))
    (forall( (|m_$11_$15| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$15| ref) (|f_$9_$15| Field$Mu$) (|howMuch_$1_$15| Int) (|q_$2_$15| ref) (|g_$1_$15| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Mu$ |m_$11_$15| |o_$18_$15| |f_$9_$15| |howMuch_$1_$15|) |q_$2_$15| |g_$1_$15|) perm$R) (ite$Int$ (and (= |o_$18_$15| |q_$2_$15|) (= |f_$9_$15| |g_$1_$15|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$15| |q_$2_$15| |g_$1_$15|) perm$R) |howMuch_$1_$15|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$15| |q_$2_$15| |g_$1_$15|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Mu$ |m_$11_$15| |o_$18_$15| |f_$9_$15| |howMuch_$1_$15|) |q_$2_$15| |g_$1_$15|) perm$R))))
    (forall( (|m_$11_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$2| ref) (|f_$9_$2| Field$ref$) (|howMuch_$1_$2| Int) (|q_$2_$2| ref) (|g_$1_$2| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$ref$ |m_$11_$2| |o_$18_$2| |f_$9_$2| |howMuch_$1_$2|) |q_$2_$2| |g_$1_$2|) perm$R) (ite$Int$ (and (= |o_$18_$2| |q_$2_$2|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$2| |q_$2_$2| |g_$1_$2|) perm$R) |howMuch_$1_$2|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$2| |q_$2_$2| |g_$1_$2|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$ref$ |m_$11_$2| |o_$18_$2| |f_$9_$2| |howMuch_$1_$2|) |q_$2_$2| |g_$1_$2|) perm$R))))
    (forall( (|m_$11_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$3| ref) (|f_$9_$3| Field$Mu$) (|howMuch_$1_$3| Int) (|q_$2_$3| ref) (|g_$1_$3| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Mu$ |m_$11_$3| |o_$18_$3| |f_$9_$3| |howMuch_$1_$3|) |q_$2_$3| |g_$1_$3|) perm$R) (ite$Int$ (and (= |o_$18_$3| |q_$2_$3|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$3| |q_$2_$3| |g_$1_$3|) perm$R) |howMuch_$1_$3|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$3| |q_$2_$3| |g_$1_$3|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Mu$ |m_$11_$3| |o_$18_$3| |f_$9_$3| |howMuch_$1_$3|) |q_$2_$3| |g_$1_$3|) perm$R))))
    (forall( (|m_$11_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$4| ref) (|f_$9_$4| Field$Bool$) (|howMuch_$1_$4| Int) (|q_$2_$4| ref) (|g_$1_$4| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Bool$ |m_$11_$4| |o_$18_$4| |f_$9_$4| |howMuch_$1_$4|) |q_$2_$4| |g_$1_$4|) perm$R) (ite$Int$ (and (= |o_$18_$4| |q_$2_$4|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$4| |q_$2_$4| |g_$1_$4|) perm$R) |howMuch_$1_$4|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$4| |q_$2_$4| |g_$1_$4|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Bool$ |m_$11_$4| |o_$18_$4| |f_$9_$4| |howMuch_$1_$4|) |q_$2_$4| |g_$1_$4|) perm$R))))
    (forall( (|m_$11_$5| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$5| ref) (|f_$9_$5| Field$Int$) (|howMuch_$1_$5| Int) (|q_$2_$5| ref) (|g_$1_$5| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Int$ |m_$11_$5| |o_$18_$5| |f_$9_$5| |howMuch_$1_$5|) |q_$2_$5| |g_$1_$5|) perm$R) (ite$Int$ (and (= |o_$18_$5| |q_$2_$5|) (= |f_$9_$5| |g_$1_$5|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$5| |q_$2_$5| |g_$1_$5|) perm$R) |howMuch_$1_$5|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$5| |q_$2_$5| |g_$1_$5|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Int$ |m_$11_$5| |o_$18_$5| |f_$9_$5| |howMuch_$1_$5|) |q_$2_$5| |g_$1_$5|) perm$R))))
    (forall( (|m_$11_$6| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$6| ref) (|f_$9_$6| Field$ref$) (|howMuch_$1_$6| Int) (|q_$2_$6| ref) (|g_$1_$6| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$ref$ |m_$11_$6| |o_$18_$6| |f_$9_$6| |howMuch_$1_$6|) |q_$2_$6| |g_$1_$6|) perm$R) (ite$Int$ (and (= |o_$18_$6| |q_$2_$6|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$6| |q_$2_$6| |g_$1_$6|) perm$R) |howMuch_$1_$6|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$6| |q_$2_$6| |g_$1_$6|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$ref$ |m_$11_$6| |o_$18_$6| |f_$9_$6| |howMuch_$1_$6|) |q_$2_$6| |g_$1_$6|) perm$R))))
    (forall( (|m_$11_$7| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$7| ref) (|f_$9_$7| Field$Mu$) (|howMuch_$1_$7| Int) (|q_$2_$7| ref) (|g_$1_$7| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Mu$ |m_$11_$7| |o_$18_$7| |f_$9_$7| |howMuch_$1_$7|) |q_$2_$7| |g_$1_$7|) perm$R) (ite$Int$ (and (= |o_$18_$7| |q_$2_$7|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$7| |q_$2_$7| |g_$1_$7|) perm$R) |howMuch_$1_$7|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$7| |q_$2_$7| |g_$1_$7|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Mu$ |m_$11_$7| |o_$18_$7| |f_$9_$7| |howMuch_$1_$7|) |q_$2_$7| |g_$1_$7|) perm$R))))
    (forall( (|m_$11_$8| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$8| ref) (|f_$9_$8| Field$Bool$) (|howMuch_$1_$8| Int) (|q_$2_$8| ref) (|g_$1_$8| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Bool$ |m_$11_$8| |o_$18_$8| |f_$9_$8| |howMuch_$1_$8|) |q_$2_$8| |g_$1_$8|) perm$R) (ite$Int$ (and (= |o_$18_$8| |q_$2_$8|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$8| |q_$2_$8| |g_$1_$8|) perm$R) |howMuch_$1_$8|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$8| |q_$2_$8| |g_$1_$8|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Bool$ |m_$11_$8| |o_$18_$8| |f_$9_$8| |howMuch_$1_$8|) |q_$2_$8| |g_$1_$8|) perm$R))))
    (forall( (|m_$11_$9| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$9| ref) (|f_$9_$9| Field$Int$) (|howMuch_$1_$9| Int) (|q_$2_$9| ref) (|g_$1_$9| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Int$ |m_$11_$9| |o_$18_$9| |f_$9_$9| |howMuch_$1_$9|) |q_$2_$9| |g_$1_$9|) perm$R) (ite$Int$ (and (= |o_$18_$9| |q_$2_$9|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$9| |q_$2_$9| |g_$1_$9|) perm$R) |howMuch_$1_$9|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$9| |q_$2_$9| |g_$1_$9|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Int$ |m_$11_$9| |o_$18_$9| |f_$9_$9| |howMuch_$1_$9|) |q_$2_$9| |g_$1_$9|) perm$R))))
    (forall( (|m_$4_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$2| ref) (|f_$3_$0| Field$Bool$))(!(= (CanRead$Bool$ |m_$4_$0| |sm_$1_$0| |obj_$2| |f_$3_$0|) (or (or (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$4_$0| |obj_$2| |f_$3_$0|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$4_$0| |obj_$2| |f_$3_$0|) perm$N))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |sm_$1_$0| |obj_$2| |f_$3_$0|) perm$R))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |sm_$1_$0| |obj_$2| |f_$3_$0|) perm$N))))  :expand  false :pattern ( (CanRead$Bool$ |m_$4_$0| |sm_$1_$0| |obj_$2| |f_$3_$0|))))
    (forall( (|m_$4_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$3| ref) (|f_$3_$1| Field$Int$))(!(= (CanRead$Int$ |m_$4_$1| |sm_$1_$1| |obj_$3| |f_$3_$1|) (or (or (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$4_$1| |obj_$3| |f_$3_$1|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$4_$1| |obj_$3| |f_$3_$1|) perm$N))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |sm_$1_$1| |obj_$3| |f_$3_$1|) perm$R))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |sm_$1_$1| |obj_$3| |f_$3_$1|) perm$N))))  :expand  false :pattern ( (CanRead$Int$ |m_$4_$1| |sm_$1_$1| |obj_$3| |f_$3_$1|))))
    (forall( (|m_$4_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$4| ref) (|f_$3_$2| Field$ref$))(!(= (CanRead$ref$ |m_$4_$2| |sm_$1_$2| |obj_$4| |f_$3_$2|) (or (or (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$4_$2| |obj_$4| |f_$3_$2|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$4_$2| |obj_$4| |f_$3_$2|) perm$N))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |sm_$1_$2| |obj_$4| |f_$3_$2|) perm$R))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |sm_$1_$2| |obj_$4| |f_$3_$2|) perm$N))))  :expand  false :pattern ( (CanRead$ref$ |m_$4_$2| |sm_$1_$2| |obj_$4| |f_$3_$2|))))
    (forall( (|m_$4_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$5| ref) (|f_$3_$3| Field$Mu$))(!(= (CanRead$Mu$ |m_$4_$3| |sm_$1_$3| |obj_$5| |f_$3_$3|) (or (or (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$4_$3| |obj_$5| |f_$3_$3|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$4_$3| |obj_$5| |f_$3_$3|) perm$N))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |sm_$1_$3| |obj_$5| |f_$3_$3|) perm$R))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |sm_$1_$3| |obj_$5| |f_$3_$3|) perm$N))))  :expand  false :pattern ( (CanRead$Mu$ |m_$4_$3| |sm_$1_$3| |obj_$5| |f_$3_$3|))))
    (forall( (|m_$7| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (IsGoodMask |m_$7|) (and (and (and (forall( (|o_$14_$0| ref) (|f_$6_$0| Field$Bool$))(and (and (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$R)) (=> (NonPredicateField$Bool$ |f_$6_$0|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$R) Permission$FullFraction))))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$R))))) (forall( (|o_$14_$1| ref) (|f_$6_$1| Field$Int$))(and (and (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$R)) (=> (NonPredicateField$Int$ |f_$6_$1|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$R) Permission$FullFraction))))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$R)))))) (forall( (|o_$14_$2| ref) (|f_$6_$2| Field$ref$))(and (and (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$R)) (=> (NonPredicateField$ref$ |f_$6_$2|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$R) Permission$FullFraction))))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$R)))))) (forall( (|o_$14_$3| ref) (|f_$6_$3| Field$Mu$))(and (and (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$R)) (=> (NonPredicateField$Mu$ |f_$6_$3|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$R) Permission$FullFraction))))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$R)))))))  :expand  true :pattern ( (IsGoodMask |m_$7|))))
    (forall( (|m_$9_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$0| ref) (|f_$7_$0| Field$Bool$) (|howMuch_$3| Int) (|q_$0_$0| ref) (|g_$4| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Bool$ |m_$9_$0| |o_$16_$0| |f_$7_$0| |howMuch_$3|) |q_$0_$0| |g_$4|) perm$R) (ite$Int$ (and (= |o_$16_$0| |q_$0_$0|) (= |f_$7_$0| |g_$4|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$0| |q_$0_$0| |g_$4|) perm$R) |howMuch_$3|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$0| |q_$0_$0| |g_$4|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Bool$ |m_$9_$0| |o_$16_$0| |f_$7_$0| |howMuch_$3|) |q_$0_$0| |g_$4|) perm$R))))
    (forall( (|m_$9_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$1| ref) (|f_$7_$1| Field$Int$) (|howMuch_$4| Int) (|q_$0_$1| ref) (|g_$5| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Int$ |m_$9_$1| |o_$16_$1| |f_$7_$1| |howMuch_$4|) |q_$0_$1| |g_$5|) perm$R) (ite$Int$ (and (= |o_$16_$1| |q_$0_$1|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$1| |q_$0_$1| |g_$5|) perm$R) |howMuch_$4|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$1| |q_$0_$1| |g_$5|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Int$ |m_$9_$1| |o_$16_$1| |f_$7_$1| |howMuch_$4|) |q_$0_$1| |g_$5|) perm$R))))
    (forall( (|m_$9_$10| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$10| ref) (|f_$7_$10| Field$ref$) (|howMuch_$13| Int) (|q_$0_$10| ref) (|g_$14| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$ref$ |m_$9_$10| |o_$16_$10| |f_$7_$10| |howMuch_$13|) |q_$0_$10| |g_$14|) perm$R) (ite$Int$ (and (= |o_$16_$10| |q_$0_$10|) (= |f_$7_$10| |g_$14|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$10| |q_$0_$10| |g_$14|) perm$R) |howMuch_$13|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$10| |q_$0_$10| |g_$14|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$ref$ |m_$9_$10| |o_$16_$10| |f_$7_$10| |howMuch_$13|) |q_$0_$10| |g_$14|) perm$R))))
    (forall( (|m_$9_$11| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$11| ref) (|f_$7_$11| Field$Mu$) (|howMuch_$14| Int) (|q_$0_$11| ref) (|g_$15| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Mu$ |m_$9_$11| |o_$16_$11| |f_$7_$11| |howMuch_$14|) |q_$0_$11| |g_$15|) perm$R) (ite$Int$ (and (= |o_$16_$11| |q_$0_$11|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$11| |q_$0_$11| |g_$15|) perm$R) |howMuch_$14|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$11| |q_$0_$11| |g_$15|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Mu$ |m_$9_$11| |o_$16_$11| |f_$7_$11| |howMuch_$14|) |q_$0_$11| |g_$15|) perm$R))))
    (forall( (|m_$9_$12| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$12| ref) (|f_$7_$12| Field$Bool$) (|howMuch_$15| Int) (|q_$0_$12| ref) (|g_$16| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Bool$ |m_$9_$12| |o_$16_$12| |f_$7_$12| |howMuch_$15|) |q_$0_$12| |g_$16|) perm$R) (ite$Int$ (and (= |o_$16_$12| |q_$0_$12|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$12| |q_$0_$12| |g_$16|) perm$R) |howMuch_$15|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$12| |q_$0_$12| |g_$16|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Bool$ |m_$9_$12| |o_$16_$12| |f_$7_$12| |howMuch_$15|) |q_$0_$12| |g_$16|) perm$R))))
    (forall( (|m_$9_$13| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$13| ref) (|f_$7_$13| Field$Int$) (|howMuch_$16| Int) (|q_$0_$13| ref) (|g_$17| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Int$ |m_$9_$13| |o_$16_$13| |f_$7_$13| |howMuch_$16|) |q_$0_$13| |g_$17|) perm$R) (ite$Int$ (and (= |o_$16_$13| |q_$0_$13|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$13| |q_$0_$13| |g_$17|) perm$R) |howMuch_$16|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$13| |q_$0_$13| |g_$17|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Int$ |m_$9_$13| |o_$16_$13| |f_$7_$13| |howMuch_$16|) |q_$0_$13| |g_$17|) perm$R))))
    (forall( (|m_$9_$14| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$14| ref) (|f_$7_$14| Field$ref$) (|howMuch_$17| Int) (|q_$0_$14| ref) (|g_$18| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$ref$ |m_$9_$14| |o_$16_$14| |f_$7_$14| |howMuch_$17|) |q_$0_$14| |g_$18|) perm$R) (ite$Int$ (and (= |o_$16_$14| |q_$0_$14|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$14| |q_$0_$14| |g_$18|) perm$R) |howMuch_$17|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$14| |q_$0_$14| |g_$18|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$ref$ |m_$9_$14| |o_$16_$14| |f_$7_$14| |howMuch_$17|) |q_$0_$14| |g_$18|) perm$R))))
    (forall( (|m_$9_$15| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$15| ref) (|f_$7_$15| Field$Mu$) (|howMuch_$18| Int) (|q_$0_$15| ref) (|g_$19| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Mu$ |m_$9_$15| |o_$16_$15| |f_$7_$15| |howMuch_$18|) |q_$0_$15| |g_$19|) perm$R) (ite$Int$ (and (= |o_$16_$15| |q_$0_$15|) (= |f_$7_$15| |g_$19|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$15| |q_$0_$15| |g_$19|) perm$R) |howMuch_$18|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$15| |q_$0_$15| |g_$19|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Mu$ |m_$9_$15| |o_$16_$15| |f_$7_$15| |howMuch_$18|) |q_$0_$15| |g_$19|) perm$R))))
    (forall( (|m_$9_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$2| ref) (|f_$7_$2| Field$ref$) (|howMuch_$5| Int) (|q_$0_$2| ref) (|g_$6| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$ref$ |m_$9_$2| |o_$16_$2| |f_$7_$2| |howMuch_$5|) |q_$0_$2| |g_$6|) perm$R) (ite$Int$ (and (= |o_$16_$2| |q_$0_$2|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$2| |q_$0_$2| |g_$6|) perm$R) |howMuch_$5|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$2| |q_$0_$2| |g_$6|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$ref$ |m_$9_$2| |o_$16_$2| |f_$7_$2| |howMuch_$5|) |q_$0_$2| |g_$6|) perm$R))))
    (forall( (|m_$9_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$3| ref) (|f_$7_$3| Field$Mu$) (|howMuch_$6| Int) (|q_$0_$3| ref) (|g_$7| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Mu$ |m_$9_$3| |o_$16_$3| |f_$7_$3| |howMuch_$6|) |q_$0_$3| |g_$7|) perm$R) (ite$Int$ (and (= |o_$16_$3| |q_$0_$3|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$3| |q_$0_$3| |g_$7|) perm$R) |howMuch_$6|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$3| |q_$0_$3| |g_$7|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Mu$ |m_$9_$3| |o_$16_$3| |f_$7_$3| |howMuch_$6|) |q_$0_$3| |g_$7|) perm$R))))
    (forall( (|m_$9_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$4| ref) (|f_$7_$4| Field$Bool$) (|howMuch_$7| Int) (|q_$0_$4| ref) (|g_$8| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Bool$ |m_$9_$4| |o_$16_$4| |f_$7_$4| |howMuch_$7|) |q_$0_$4| |g_$8|) perm$R) (ite$Int$ (and (= |o_$16_$4| |q_$0_$4|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$4| |q_$0_$4| |g_$8|) perm$R) |howMuch_$7|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$4| |q_$0_$4| |g_$8|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Bool$ |m_$9_$4| |o_$16_$4| |f_$7_$4| |howMuch_$7|) |q_$0_$4| |g_$8|) perm$R))))
    (forall( (|m_$9_$5| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$5| ref) (|f_$7_$5| Field$Int$) (|howMuch_$8| Int) (|q_$0_$5| ref) (|g_$9| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Int$ |m_$9_$5| |o_$16_$5| |f_$7_$5| |howMuch_$8|) |q_$0_$5| |g_$9|) perm$R) (ite$Int$ (and (= |o_$16_$5| |q_$0_$5|) (= |f_$7_$5| |g_$9|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$5| |q_$0_$5| |g_$9|) perm$R) |howMuch_$8|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$5| |q_$0_$5| |g_$9|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Int$ |m_$9_$5| |o_$16_$5| |f_$7_$5| |howMuch_$8|) |q_$0_$5| |g_$9|) perm$R))))
    (forall( (|m_$9_$6| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$6| ref) (|f_$7_$6| Field$ref$) (|howMuch_$9| Int) (|q_$0_$6| ref) (|g_$10| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$ref$ |m_$9_$6| |o_$16_$6| |f_$7_$6| |howMuch_$9|) |q_$0_$6| |g_$10|) perm$R) (ite$Int$ (and (= |o_$16_$6| |q_$0_$6|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$6| |q_$0_$6| |g_$10|) perm$R) |howMuch_$9|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$6| |q_$0_$6| |g_$10|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$ref$ |m_$9_$6| |o_$16_$6| |f_$7_$6| |howMuch_$9|) |q_$0_$6| |g_$10|) perm$R))))
    (forall( (|m_$9_$7| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$7| ref) (|f_$7_$7| Field$Mu$) (|howMuch_$10| Int) (|q_$0_$7| ref) (|g_$11| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Mu$ |m_$9_$7| |o_$16_$7| |f_$7_$7| |howMuch_$10|) |q_$0_$7| |g_$11|) perm$R) (ite$Int$ (and (= |o_$16_$7| |q_$0_$7|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$7| |q_$0_$7| |g_$11|) perm$R) |howMuch_$10|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$7| |q_$0_$7| |g_$11|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Mu$ |m_$9_$7| |o_$16_$7| |f_$7_$7| |howMuch_$10|) |q_$0_$7| |g_$11|) perm$R))))
    (forall( (|m_$9_$8| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$8| ref) (|f_$7_$8| Field$Bool$) (|howMuch_$11| Int) (|q_$0_$8| ref) (|g_$12| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Bool$ |m_$9_$8| |o_$16_$8| |f_$7_$8| |howMuch_$11|) |q_$0_$8| |g_$12|) perm$R) (ite$Int$ (and (= |o_$16_$8| |q_$0_$8|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$8| |q_$0_$8| |g_$12|) perm$R) |howMuch_$11|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$8| |q_$0_$8| |g_$12|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Bool$ |m_$9_$8| |o_$16_$8| |f_$7_$8| |howMuch_$11|) |q_$0_$8| |g_$12|) perm$R))))
    (forall( (|m_$9_$9| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$9| ref) (|f_$7_$9| Field$Int$) (|howMuch_$12| Int) (|q_$0_$9| ref) (|g_$13| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Int$ |m_$9_$9| |o_$16_$9| |f_$7_$9| |howMuch_$12|) |q_$0_$9| |g_$13|) perm$R) (ite$Int$ (and (= |o_$16_$9| |q_$0_$9|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$9| |q_$0_$9| |g_$13|) perm$R) |howMuch_$12|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$9| |q_$0_$9| |g_$13|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Int$ |m_$9_$9| |o_$16_$9| |f_$7_$9| |howMuch_$12|) |q_$0_$9| |g_$13|) perm$R))))
    (forall( (|m| Mu) (|n_$0| Mu))(!(not (and (MuBelow |m| |n_$0|) (MuBelow |n_$0| |m|)))  :pattern ( (MuBelow |m| |n_$0|) (MuBelow |n_$0| |m|))))
    (forall( (|n| Int))(!(= (Fractions |n|) (* |n| Permission$denominator))  :pattern ( (Fractions |n|))))
    (forall( (|o_$22| ref))(= (MapRead$$@Map@@ref@To@Int@@$ ZeroCredits |o_$22|) 0))
    (forall( (|o_$25| ref) (|f_$16| Field$Bool$) (|pc_$0| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ ZeroMask |o_$25| |f_$16|) |pc_$0|) 0))
    (forall( (|o_$26| ref) (|f_$17| Field$Int$) (|pc_$1| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask |o_$26| |f_$17|) |pc_$1|) 0))
    (forall( (|o_$27| ref) (|f_$18| Field$ref$) (|pc_$2| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask |o_$27| |f_$18|) |pc_$2|) 0))
    (forall( (|o_$28| ref) (|f_$19| Field$Mu$) (|pc_$3| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ ZeroMask |o_$28| |f_$19|) |pc_$3|) 0))
    (forall( (|x_$0| Int) (|y_$0| Int))(!(= (mod |x_$0| |y_$0|) (- |x_$0| (* (div |x_$0| |y_$0|) |y_$0|)))  :pattern ( (mod |x_$0| |y_$0|)) :pattern ( (div |x_$0| |y_$0|))))
    (forall( (|x_$1| Int) (|y_$1| Int))(!(=> (< 0 |y_$1|) (and (<= 0 (mod |x_$1| |y_$1|)) (< (mod |x_$1| |y_$1|) |y_$1|)))  :pattern ( (mod |x_$1| |y_$1|))))
    (forall( (|x_$2| Int) (|y_$2| Int))(!(=> (< |y_$2| 0) (and (< |y_$2| (mod |x_$2| |y_$2|)) (<= (mod |x_$2| |y_$2|) 0)))  :pattern ( (mod |x_$2| |y_$2|))))
    (forall( (|x| Int) (|y| Int))(=> (and (<= 0 |x|) (<= |x| |y|)) (<= (Fractions |x|) (Fractions |y|))))
    (IsGoodMask ZeroMask)
    (IsGoodState emptyPartialHeap)
    (NonPredicateField$Bool$ rdheld)
    (NonPredicateField$Int$ forkK)
    (NonPredicateField$Int$ held)
    (NonPredicateField$Int$ joinable)
    (NonPredicateField$Mu$ mu)
    (NonPredicateField$ref$ Node.next)
    (NonPredicateField$ref$ Node.prev)
    (PredicateField$Int$ Node.inv)
    (PredicateField$Int$ Node.invLeft)
    (PredicateField$Int$ Node.invRight)
  )
    PreconditionGeneratedEntry
)))
(let (($root (=> (and true
  )
    $start
)))
   $root
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))

;Commands
   (check-sat)
   ;(get-unsat-core)
