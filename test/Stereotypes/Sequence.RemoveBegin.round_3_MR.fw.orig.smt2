;Analysis time until now:     1s
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
(declare-sort $@Map@@$T0@@ref@field$$T0$@To@$T0@@ 0)
(declare-sort $@Map@@ref@To@Bool@@ 0)
(declare-sort field$$@Map@@ref@To@Bool@@$ 0)
(declare-sort field$ref$ 0)
(declare-sort ref 0)

;Functions
(declare-fun $@sk_33 ( ) ref)
(declare-fun $@sk_34 ( ) ref)
(declare-fun $@sk_36 ( ) ref)
(declare-fun $@sk_37 ( ) field$$@Map@@ref@To@Bool@@$)
(declare-fun $@sk_38 ( ) ref)
(declare-fun $@sk_39 ( ) field$ref$)
(declare-fun $Heap ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@0 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@1 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@10 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@2 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@3 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@4 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@5 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@6 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@7 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@8 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@9 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun AddEl ( $@Map@@ref@To@Bool@@ ref ) $@Map@@ref@To@Bool@@)
(declare-fun call2formal@r2@0 ( ) $@Map@@ref@To@Bool@@)
(declare-fun Empty ( ) $@Map@@ref@To@Bool@@)
(declare-fun It_el ( ) field$ref$)
(declare-fun It_List ( ) field$ref$)
(declare-fun Lb ( ) field$ref$)
(declare-fun Le ( ) field$ref$)
(declare-fun list ( ) ref)
(declare-fun List_head ( ) field$ref$)
(declare-fun LL ( ) field$$@Map@@ref@To@Bool@@$)
(declare-fun Ln ( ) field$ref$)
(declare-fun LNC ( ) field$$@Map@@ref@To@Bool@@$)
(declare-fun Lp ( ) field$ref$)
(declare-fun LPC ( ) field$$@Map@@ref@To@Bool@@$)
(declare-fun MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref field$$@Map@@ref@To@Bool@@$ ) $@Map@@ref@To@Bool@@)
(declare-fun MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref field$ref$ ) ref)
(declare-fun MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref field$$@Map@@ref@To@Bool@@$ $@Map@@ref@To@Bool@@ ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref field$ref$ ref ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun Minus ( $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) $@Map@@ref@To@Bool@@)
(declare-fun newBegin@0 ( ) ref)
(declare-fun newList@0 ( ) $@Map@@ref@To@Bool@@)
(declare-fun Node_next ( ) field$ref$)
(declare-fun null ( ) ref)
(declare-fun oldBegin@0 ( ) ref)
(declare-fun RemEl ( $@Map@@ref@To@Bool@@ ref ) $@Map@@ref@To@Bool@@)
(declare-fun Singleton ( ref ) $@Map@@ref@To@Bool@@)
(declare-fun Union ( $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) $@Map@@ref@To@Bool@@)

;Predicates
(declare-fun anon0@1 ( ) Bool)
(declare-fun anon0@1_assertion ( ) Bool)
(declare-fun anon0@10 ( ) Bool)
(declare-fun anon0@10_assertion ( ) Bool)
(declare-fun anon0@11 ( ) Bool)
(declare-fun anon0@11_assertion ( ) Bool)
(declare-fun anon0@12 ( ) Bool)
(declare-fun anon0@12_assertion ( ) Bool)
(declare-fun anon0@13 ( ) Bool)
(declare-fun anon0@13_assertion ( ) Bool)
(declare-fun anon0@14 ( ) Bool)
(declare-fun anon0@14_assertion ( ) Bool)
(declare-fun anon0@15 ( ) Bool)
(declare-fun anon0@15_assertion ( ) Bool)
(declare-fun anon0@16 ( ) Bool)
(declare-fun anon0@16_assertion ( ) Bool)
(declare-fun anon0@17 ( ) Bool)
(declare-fun anon0@17_assertion ( ) Bool)
(declare-fun anon0@18 ( ) Bool)
(declare-fun anon0@18_assertion ( ) Bool)
(declare-fun anon0@19 ( ) Bool)
(declare-fun anon0@19_assertion ( ) Bool)
(declare-fun anon0@2 ( ) Bool)
(declare-fun anon0@2_assertion ( ) Bool)
(declare-fun anon0@20 ( ) Bool)
(declare-fun anon0@20_assertion ( ) Bool)
(declare-fun anon0@21 ( ) Bool)
(declare-fun anon0@21_assertion ( ) Bool)
(declare-fun anon0@22 ( ) Bool)
(declare-fun anon0@22_assertion ( ) Bool)
(declare-fun anon0@23 ( ) Bool)
(declare-fun anon0@23_assertion ( ) Bool)
(declare-fun anon0@24 ( ) Bool)
(declare-fun anon0@24_assertion ( ) Bool)
(declare-fun anon0@25 ( ) Bool)
(declare-fun anon0@26 ( ) Bool)
(declare-fun anon0@26_assertion ( ) Bool)
(declare-fun anon0@3 ( ) Bool)
(declare-fun anon0@3_assertion ( ) Bool)
(declare-fun anon0@4 ( ) Bool)
(declare-fun anon0@4_assertion ( ) Bool)
(declare-fun anon0@5 ( ) Bool)
(declare-fun anon0@5_assertion ( ) Bool)
(declare-fun anon0@6 ( ) Bool)
(declare-fun anon0@6_assertion ( ) Bool)
(declare-fun anon0@7 ( ) Bool)
(declare-fun anon0@7_assertion ( ) Bool)
(declare-fun anon0@8 ( ) Bool)
(declare-fun anon0@8_assertion ( ) Bool)
(declare-fun anon0@9 ( ) Bool)
(declare-fun anon0@9_assertion ( ) Bool)
(declare-fun anon0_assertion ( ) Bool)
(declare-fun Disjoint ( $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun Equal ( $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InList ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ref ) Bool)
(declare-fun Invb1 ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun Invb1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun Invb2 ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun Invb2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun Invb3Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun Inve1 ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun Inve1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun Inve2 ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun Inve2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun Inve3Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvIsGoodRegionsList ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun InvIsGoodRegionsListEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvL ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun InvLb ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun InvLbEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvLe ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun InvLeEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvLEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvList ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun InvListEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvLL1 ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun InvLL1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvLL2 ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun InvLL2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvNCn1 ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun InvNCn1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvNCn2 ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun InvNCn2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvNCNC ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun InvNCNCEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvNCo ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun InvNCoEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvNCPC ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun InvNCPCEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun Invp ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun InvPCo ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun InvPCoEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvPCp1 ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun InvPCp1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvPCp2 ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun InvPCp2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvPCPC ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun InvPCPCEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvpEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun IsEmptyList ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun IsGoodRegion ( $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun ListClassInv ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun MapRead$$@Map@@ref@To@Bool@@$ ( $@Map@@ref@To@Bool@@ ref ) Bool)
(declare-fun Sub ( $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)

;Axioms
   (assert (! (= $Heap@1 (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 oldBegin@0 Lp null)) :named ax_0))
   (assert (! (= $Heap@2 (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 oldBegin@0 Ln null)) :named ax_1))
   (assert (! (= $Heap@3 (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 oldBegin@0 Lb oldBegin@0)) :named ax_2))
   (assert (! (= $Heap@4 (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@3 oldBegin@0 Le oldBegin@0)) :named ax_3))
   (assert (! (= $Heap@5 (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 oldBegin@0 LPC Empty)) :named ax_4))
   (assert (! (= $Heap@6 (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 oldBegin@0 LNC Empty)) :named ax_5))
   (assert (! (= $Heap@7 (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 oldBegin@0 LL (Singleton oldBegin@0))) :named ax_6))
   (assert (! (= (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap newBegin@0 Lp null) $Heap@0) :named ax_7))
   (assert (! (= (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap list LL) oldBegin@0) newList@0) :named ax_8))
   (assert (! (= (Singleton oldBegin@0) call2formal@r2@0) :named ax_9))
   (assert (! (= (Singleton oldBegin@0) call2formal@r2@0) :named ax_10))
   (assert (! (= newBegin@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap oldBegin@0 Ln)) :named ax_11))
   (assert (! (= oldBegin@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) :named ax_12))
   (assert (! (forall ((|i_1| field$ref$)(|i| ref)(|m| $@Map@@$T0@@ref@field$$T0$@To@$T0@@)(|v_1| ref))(!(= v_1 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ m i i_1 v_1) i i_1)):pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ m i i_1 v_1) i i_1)) :qid map_1_$@Map@@$T0@@ref@field$$T0$@To@$T0@@ :weight 0 )) :named ax_13))
   (assert (! (forall ((|i_7| field$$@Map@@ref@To@Bool@@$)(|i_6| ref)(|m_3| $@Map@@$T0@@ref@field$$T0$@To@$T0@@)(|v_4| $@Map@@ref@To@Bool@@))(!(= v_4 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ m_3 i_6 i_7 v_4) i_6 i_7)):pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ m_3 i_6 i_7 v_4) i_6 i_7)) :qid map_1_$@Map@@$T0@@ref@field$$T0$@To@$T0@@ :weight 0 )) :named ax_14))
   (assert (! (forall ((|v_2| ref)(|m_1| $@Map@@$T0@@ref@field$$T0$@To@$T0@@)(|i_3| field$ref$)(|j_1| field$ref$)(|i_2| ref)(|j| ref))(!(=> (or (not (= j_1 i_3)) (not (= j i_2))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ m_1 j j_1) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ m_1 i_2 i_3 v_2) j j_1))):pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ m_1 i_2 i_3 v_2) j j_1)) :qid map_2_$@Map@@$T0@@ref@field$$T0$@To@$T0@@ :weight 0 )) :named ax_15))
   (assert (! (forall ((|v_3| ref)(|i_5| field$ref$)(|i_4| ref)(|j_3| field$$@Map@@ref@To@Bool@@$)(|j_2| ref)(|m_2| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ m_2 j_2 j_3) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ m_2 i_4 i_5 v_3) j_2 j_3)):pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ m_2 i_4 i_5 v_3) j_2 j_3)) :qid map_3_$@Map@@$T0@@ref@field$$T0$@To@$T0@@__$@Map@@ref@To@Bool@@__ref :weight 0 )) :named ax_16))
   (assert (! (forall ((|v_5| $@Map@@ref@To@Bool@@)(|m_4| $@Map@@$T0@@ref@field$$T0$@To@$T0@@)(|i_9| field$$@Map@@ref@To@Bool@@$)(|j_5| field$$@Map@@ref@To@Bool@@$)(|i_8| ref)(|j_4| ref))(!(=> (or (not (= j_5 i_9)) (not (= j_4 i_8))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ m_4 j_4 j_5) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ m_4 i_8 i_9 v_5) j_4 j_5))):pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ m_4 i_8 i_9 v_5) j_4 j_5)) :qid map_2_$@Map@@$T0@@ref@field$$T0$@To@$T0@@ :weight 0 )) :named ax_17))
   (assert (! (forall ((|v_6| $@Map@@ref@To@Bool@@)(|i_11| field$$@Map@@ref@To@Bool@@$)(|i_10| ref)(|j_7| field$ref$)(|j_6| ref)(|m_5| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ m_5 j_6 j_7) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ m_5 i_10 i_11 v_6) j_6 j_7)):pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ m_5 i_10 i_11 v_6) j_6 j_7)) :qid map_3_$@Map@@$T0@@ref@field$$T0$@To@$T0@@__ref__$@Map@@ref@To@Bool@@ :weight 0 )) :named ax_18))
   (assert (! (forall( (|a_$0| $@Map@@ref@To@Bool@@) (|b_$0| $@Map@@ref@To@Bool@@))(= (Sub |a_$0| |b_$0|) (forall( (|o_$4| ref))(!(=> (MapRead$$@Map@@ref@To@Bool@@$ |a_$0| |o_$4|) (MapRead$$@Map@@ref@To@Bool@@$ |b_$0| |o_$4|))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |a_$0| |o_$4|)) :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |b_$0| |o_$4|)))))) :named ax_19))
   (assert (! (forall( (|a_$1| $@Map@@ref@To@Bool@@) (|b_$1| $@Map@@ref@To@Bool@@))(= (Equal |a_$1| |b_$1|) (forall( (|o_$5| ref))(!(= (MapRead$$@Map@@ref@To@Bool@@$ |b_$1| |o_$5|) (MapRead$$@Map@@ref@To@Bool@@$ |a_$1| |o_$5|))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |a_$1| |o_$5|)) :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |b_$1| |o_$5|)))))) :named ax_20))
   (assert (! (forall( (|a_$2| $@Map@@ref@To@Bool@@) (|b_$2| $@Map@@ref@To@Bool@@))(= (Disjoint |a_$2| |b_$2|) (forall( (|o_$6| ref))(!(or (not (MapRead$$@Map@@ref@To@Bool@@$ |b_$2| |o_$6|)) (not (MapRead$$@Map@@ref@To@Bool@@$ |a_$2| |o_$6|)))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |a_$2| |o_$6|)) :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |b_$2| |o_$6|)))))) :named ax_21))
   (assert (! (forall( (|a| $@Map@@ref@To@Bool@@) (|b| $@Map@@ref@To@Bool@@) (|o_$3| ref))(= (MapRead$$@Map@@ref@To@Bool@@$ (Union |a| |b|) |o_$3|) (or (MapRead$$@Map@@ref@To@Bool@@$ |b| |o_$3|) (MapRead$$@Map@@ref@To@Bool@@$ |a| |o_$3|)))) :named ax_22))
   (assert (! (forall( (|h_$1| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1| $@Map@@ref@To@Bool@@))(= (InvIsGoodRegionsListEx |h_$1| |Ex1|) (forall( (|o_$10| ref))(and (and (IsGoodRegion (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$1| |o_$10| LPC)) (IsGoodRegion (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$1| |o_$10| LNC))) (IsGoodRegion (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$1| |o_$10| LL)))))) :named ax_23))
   (assert (! (forall( (|h_$10| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$8| $@Map@@ref@To@Bool@@))(= (InvPCp1Ex |h_$10| |Ex1_$8|) (forall( (|o_$19| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$8| |o_$19|)) (not (= |o_$19| null))) (=> (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$10| |o_$19| Lp)) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$10| |o_$19| LPC) Empty)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$10| |o_$19| Lp)))))) :named ax_24))
   (assert (! (forall( (|h_$11| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$9| $@Map@@ref@To@Bool@@))(= (InvPCp2Ex |h_$11| |Ex1_$9|) (forall( (|o_$20| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$9| |o_$20|)) (not (= |o_$20| null))) (=> (not (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$11| |o_$20| Lp))) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$11| |o_$20| LPC) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$11| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$11| |o_$20| Lp) LPC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$11| |o_$20| Lp)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$11| |o_$20| Lp) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$11| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$11| |o_$20| Lp) LPC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$11| |o_$20| Lp)))))) :named ax_25))
   (assert (! (forall( (|h_$12| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$10| $@Map@@ref@To@Bool@@))(= (InvPCoEx |h_$12| |Ex1_$10|) (forall( (|o_$21| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$10| |o_$21|)) (not (= |o_$21| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$12| |o_$21| LPC) |o_$21|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$12| |o_$21| LPC)))))) :named ax_26))
   (assert (! (forall( (|h_$13| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$11| $@Map@@ref@To@Bool@@))(= (Invb1Ex |h_$13| |Ex1_$11|) (forall( (|o_$22| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$11| |o_$22|)) (not (= |o_$22| null))) (=> (not (= |o_$22| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$13| |o_$22| Lb))) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$13| |o_$22| LPC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$13| |o_$22| Lb))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$13| |o_$22| Lb)))))) :named ax_27))
   (assert (! (forall( (|h_$14| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$12| $@Map@@ref@To@Bool@@))(= (Invb2Ex |h_$14| |Ex1_$12|) (forall( (|o_$23| ref))(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$12| |o_$23|)) (not (= |o_$23| null))) (= (= |o_$23| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$14| |o_$23| Lb)) (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$14| |o_$23| Lp))))))) :named ax_28))
   (assert (! (forall( (|h_$15| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$13| $@Map@@ref@To@Bool@@))(= (Invb3Ex |h_$15| |Ex1_$13|) (forall( (|o_$24| ref))(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$13| |o_$24|)) (not (= |o_$24| null))) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$15| |o_$24| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$15| |o_$24| Lb)))))) :named ax_29))
   (assert (! (forall( (|h_$16| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$14| $@Map@@ref@To@Bool@@) (|Ex2| $@Map@@ref@To@Bool@@))(= (InvLbEx |h_$16| |Ex1_$14| |Ex2|) (forall( (|o_$25| ref) (|o'_$2| ref))(!(=> (and (and (and (not (= |o_$25| null)) (not (= |o'_$2| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$14| |o_$25|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2| |o'_$2|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$16| |o_$25| LL) |o'_$2|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$16| |o_$25| Lb) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$16| |o'_$2| Lb))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$16| |o_$25| LL) |o'_$2|)))))) :named ax_30))
   (assert (! (forall( (|h_$17| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$15| $@Map@@ref@To@Bool@@) (|Ex2_$0| $@Map@@ref@To@Bool@@))(= (InvLeEx |h_$17| |Ex1_$15| |Ex2_$0|) (forall( (|o_$26| ref) (|o'_$3| ref))(!(=> (and (and (and (not (= |o'_$3| null)) (not (= |o_$26| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$15| |o_$26|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$0| |o'_$3|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$17| |o_$26| LL) |o'_$3|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$17| |o'_$3| Le) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$17| |o_$26| Le))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$17| |o_$26| LL) |o'_$3|)))))) :named ax_31))
   (assert (! (forall( (|h_$18| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$16| $@Map@@ref@To@Bool@@) (|Ex2_$1| $@Map@@ref@To@Bool@@))(= (InvLL1Ex |h_$18| |Ex1_$16| |Ex2_$1|) (forall( (|o_$27| ref) (|o'_$4| ref))(!(=> (and (and (and (not (= |o'_$4| null)) (not (= |o_$27| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$16| |o_$27|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$1| |o'_$4|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$18| |o_$27| LL) |o'_$4|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$18| |o_$27| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$18| |o'_$4| LL))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$18| |o_$27| LL) |o'_$4|)))))) :named ax_32))
   (assert (! (forall( (|h_$19| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$17| $@Map@@ref@To@Bool@@) (|Ex2_$2| $@Map@@ref@To@Bool@@))(= (InvLL2Ex |h_$19| |Ex1_$17| |Ex2_$2|) (forall( (|o_$28| ref) (|o'_$5| ref))(!(=> (and (and (and (not (= |o'_$5| null)) (not (= |o_$28| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$17| |o_$28|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$2| |o'_$5|))) (=> (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$19| |o_$28| LL) |o'_$5|)) (Disjoint (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$19| |o_$28| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$19| |o'_$5| LL))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$19| |o_$28| LL) |o'_$5|)))))) :named ax_33))
   (assert (! (forall( (|h_$2| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$0| $@Map@@ref@To@Bool@@))(= (InvLEx |h_$2| |Ex1_$0|) (forall( (|o_$11| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$0| |o_$11|)) (not (= |o_$11| null))) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$2| |o_$11| LL) (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$2| |o_$11| LPC) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$2| |o_$11| LNC) |o_$11|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$2| |o_$11| LL)))))) :named ax_34))
   (assert (! (forall( (|h_$20| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$18| $@Map@@ref@To@Bool@@) (|Ex2_$3| $@Map@@ref@To@Bool@@))(= (InvNCNCEx |h_$20| |Ex1_$18| |Ex2_$3|) (forall( (|o_$29| ref) (|o'_$6| ref))(=> (and (and (and (not (= |o'_$6| null)) (not (= |o_$29| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$18| |o_$29|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$3| |o'_$6|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$20| |o_$29| LNC) |o'_$6|) (Sub (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$20| |o'_$6| LNC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$20| |o_$29| LNC))))))) :named ax_35))
   (assert (! (forall( (|h_$21| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$19| $@Map@@ref@To@Bool@@) (|Ex2_$4| $@Map@@ref@To@Bool@@))(= (InvPCPCEx |h_$21| |Ex1_$19| |Ex2_$4|) (forall( (|o_$30| ref) (|o'_$7| ref))(!(=> (and (and (and (not (= |o'_$7| null)) (not (= |o_$30| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$19| |o_$30|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$4| |o'_$7|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$21| |o_$30| LPC) |o'_$7|) (Sub (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$21| |o'_$7| LPC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$21| |o_$30| LPC))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$21| |o_$30| LPC) |o'_$7|)))))) :named ax_36))
   (assert (! (forall( (|h_$22| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$20| $@Map@@ref@To@Bool@@) (|Ex2_$5| $@Map@@ref@To@Bool@@))(= (InvpEx |h_$22| |Ex1_$20| |Ex2_$5|) (forall( (|o_$31| ref) (|o'_$8| ref))(=> (and (and (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$20| |o_$31|)) (not (= |o_$31| null))) (not (= |o'_$8| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$5| |o'_$8|))) (= (= |o'_$8| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$22| |o_$31| Lp)) (= |o_$31| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$22| |o'_$8| Ln))))))) :named ax_37))
   (assert (! (forall( (|h_$23| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(= (InvIsGoodRegionsListEx |h_$23| Empty) (InvIsGoodRegionsList |h_$23|))) :named ax_38))
   (assert (! (forall( (|h_$24| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(= (InvLEx |h_$24| Empty) (InvL |h_$24|))) :named ax_39))
   (assert (! (forall( (|h_$25| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(= (InvNCPCEx |h_$25| Empty) (InvNCPC |h_$25|))) :named ax_40))
   (assert (! (forall( (|h_$26| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(= (InvNCn1Ex |h_$26| Empty) (InvNCn1 |h_$26|))) :named ax_41))
   (assert (! (forall( (|h_$27| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(= (InvNCn2Ex |h_$27| Empty) (InvNCn2 |h_$27|))) :named ax_42))
   (assert (! (forall( (|h_$28| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(= (InvNCoEx |h_$28| Empty) (InvNCo |h_$28|))) :named ax_43))
   (assert (! (forall( (|h_$29| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(= (Inve1Ex |h_$29| Empty) (Inve1 |h_$29|))) :named ax_44))
   (assert (! (forall( (|h_$3| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$1| $@Map@@ref@To@Bool@@))(= (InvNCPCEx |h_$3| |Ex1_$1|) (forall( (|o_$12| ref))(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$1| |o_$12|)) (not (= |o_$12| null))) (Disjoint (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$3| |o_$12| LNC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$3| |o_$12| LPC)))))) :named ax_45))
   (assert (! (forall( (|h_$30| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(= (Inve2Ex |h_$30| Empty) (Inve2 |h_$30|))) :named ax_46))
   (assert (! (forall( (|h_$32| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(= (InvPCp1Ex |h_$32| Empty) (InvPCp1 |h_$32|))) :named ax_47))
   (assert (! (forall( (|h_$33| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(= (InvPCp2Ex |h_$33| Empty) (InvPCp2 |h_$33|))) :named ax_48))
   (assert (! (forall( (|h_$34| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(= (InvPCoEx |h_$34| Empty) (InvPCo |h_$34|))) :named ax_49))
   (assert (! (forall( (|h_$35| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(= (Invb1Ex |h_$35| Empty) (Invb1 |h_$35|))) :named ax_50))
   (assert (! (forall( (|h_$36| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(= (Invb2Ex |h_$36| Empty) (Invb2 |h_$36|))) :named ax_51))
   (assert (! (forall( (|h_$38| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(= (InvLbEx |h_$38| Empty Empty) (InvLb |h_$38|))) :named ax_52))
   (assert (! (forall( (|h_$39| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(= (InvLeEx |h_$39| Empty Empty) (InvLe |h_$39|))) :named ax_53))
   (assert (! (forall( (|h_$4| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$2| $@Map@@ref@To@Bool@@))(= (InvNCn1Ex |h_$4| |Ex1_$2|) (forall( (|o_$13| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$2| |o_$13|)) (not (= |o_$13| null))) (=> (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$4| |o_$13| Ln)) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$4| |o_$13| LNC) Empty)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$4| |o_$13| Ln)))))) :named ax_54))
   (assert (! (forall( (|h_$40| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(= (InvLL1Ex |h_$40| Empty Empty) (InvLL1 |h_$40|))) :named ax_55))
   (assert (! (forall( (|h_$41| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(= (InvLL2Ex |h_$41| Empty Empty) (InvLL2 |h_$41|))) :named ax_56))
   (assert (! (forall( (|h_$42| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(= (InvNCNCEx |h_$42| Empty Empty) (InvNCNC |h_$42|))) :named ax_57))
   (assert (! (forall( (|h_$43| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(= (InvPCPCEx |h_$43| Empty Empty) (InvPCPC |h_$43|))) :named ax_58))
   (assert (! (forall( (|h_$44| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(= (InvpEx |h_$44| Empty Empty) (Invp |h_$44|))) :named ax_59))
   (assert (! (forall( (|h_$45| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex| $@Map@@ref@To@Bool@@))(!(= (and (InvpEx |h_$45| |Ex| |Ex|) (and (InvPCPCEx |h_$45| |Ex| |Ex|) (and (InvNCNCEx |h_$45| |Ex| |Ex|) (and (InvLL2Ex |h_$45| |Ex| |Ex|) (and (InvLL1Ex |h_$45| |Ex| |Ex|) (and (InvLeEx |h_$45| |Ex| |Ex|) (and (InvLbEx |h_$45| |Ex| |Ex|) (and (Invb3Ex |h_$45| |Ex|) (and (Invb2Ex |h_$45| |Ex|) (and (Invb1Ex |h_$45| |Ex|) (and (and (InvPCp2Ex |h_$45| |Ex|) (and (InvPCp1Ex |h_$45| |Ex|) (and (Inve3Ex |h_$45| |Ex|) (and (Inve2Ex |h_$45| |Ex|) (and (and (InvNCoEx |h_$45| |Ex|) (and (InvNCn2Ex |h_$45| |Ex|) (and (and (InvNCPCEx |h_$45| |Ex|) (and (InvLEx |h_$45| |Ex|) (InvIsGoodRegionsListEx |h_$45| |Ex|))) (InvNCn1Ex |h_$45| |Ex|)))) (Inve1Ex |h_$45| |Ex|)))))) (InvPCoEx |h_$45| |Ex|)))))))))))) (InvListEx |h_$45| |Ex|))  :pattern ( (InvListEx |h_$45| |Ex|)))) :named ax_60))
   (assert (! (forall( (|h_$46| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(!(= (InvListEx |h_$46| Empty) (InvList |h_$46|))  :pattern ( (InvList |h_$46|)))) :named ax_61))
   (assert (! (forall( (|h_$47| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|list_$0| ref))(= (ListClassInv |h_$47| |list_$0|) (=> (not (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$47| |list_$0| List_head))) (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$47| |list_$0| List_head) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$47| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$47| |list_$0| List_head) Lb)) (forall( (|o_$32| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$47| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$47| |list_$0| List_head) LL) |o_$32|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$47| |o_$32| Node_next) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$47| |o_$32| Ln)))))))) :named ax_62))
   (assert (! (forall( (|h_$48| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|list_$1| ref) (|el| ref))(= (InList |h_$48| |list_$1| |el|) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$48| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$48| |list_$1| List_head) LL) |el|) (not (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$48| |list_$1| List_head)))))) :named ax_63))
   (assert (! (forall( (|h_$5| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$3| $@Map@@ref@To@Bool@@))(= (InvNCn2Ex |h_$5| |Ex1_$3|) (forall( (|o_$14| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$3| |o_$14|)) (not (= |o_$14| null))) (=> (not (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$5| |o_$14| Ln))) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$5| |o_$14| LNC) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$5| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$5| |o_$14| Ln) LNC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$5| |o_$14| Ln)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$5| |o_$14| Ln) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$5| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$5| |o_$14| Ln) LNC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$5| |o_$14| Ln)))))) :named ax_64))
   (assert (! (forall( (|h_$6| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$4| $@Map@@ref@To@Bool@@))(= (InvNCoEx |h_$6| |Ex1_$4|) (forall( (|o_$15| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$4| |o_$15|)) (not (= |o_$15| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$6| |o_$15| LNC) |o_$15|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$6| |o_$15| LNC)))))) :named ax_65))
   (assert (! (forall( (|h_$7| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$5| $@Map@@ref@To@Bool@@))(= (Inve1Ex |h_$7| |Ex1_$5|) (forall( (|o_$16| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$5| |o_$16|)) (not (= |o_$16| null))) (=> (not (= |o_$16| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$7| |o_$16| Le))) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$7| |o_$16| LNC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$7| |o_$16| Le))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$7| |o_$16| Le)))))) :named ax_66))
   (assert (! (forall( (|h_$8| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$6| $@Map@@ref@To@Bool@@))(= (Inve2Ex |h_$8| |Ex1_$6|) (forall( (|o_$17| ref))(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$6| |o_$17|)) (not (= |o_$17| null))) (= (= |o_$17| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$8| |o_$17| Le)) (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$8| |o_$17| Ln))))))) :named ax_67))
   (assert (! (forall( (|h_$9| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$7| $@Map@@ref@To@Bool@@))(= (Inve3Ex |h_$9| |Ex1_$7|) (forall( (|o_$18| ref))(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$7| |o_$18|)) (not (= |o_$18| null))) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$9| |o_$18| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$9| |o_$18| Le)))))) :named ax_68))
   (assert (! (forall( (|h| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o| ref))(= (IsEmptyList |h| |o|) (and (= |o| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h| |o| Lb)) (and (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h| |o| LPC) Empty) (and (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h| |o| Lp)) (and (= |o| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h| |o| Le)) (and (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h| |o| LNC) Empty) (and (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h| |o| Ln)) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h| |o| LL) (Singleton |o|)))))))))) :named ax_69))
   (assert (! (forall( (|o_$1| ref))(not (MapRead$$@Map@@ref@To@Bool@@$ Empty |o_$1|))) :named ax_70))
   (assert (! (forall( (|o_$33| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ newList@0 |o_$33|) (= (Minus (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@7 |o_$33| LL) call2formal@r2@0) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@8 |o_$33| LL)))) :named ax_71))
   (assert (! (forall( (|o_$34_$0| ref) (|f_$3| field$ref$))(= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@8 |o_$34_$0| |f_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@7 |o_$34_$0| |f_$3|))) :named ax_72))
   (assert (! (forall( (|o_$34_$1| ref) (|f_$4| field$$@Map@@ref@To@Bool@@$))(or (and (MapRead$$@Map@@ref@To@Bool@@$ newList@0 |o_$34_$1|) (= LL |f_$4|)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@8 |o_$34_$1| |f_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@7 |o_$34_$1| |f_$4|)))) :named ax_73))
   (assert (! (forall( (|o_$35| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ newList@0 |o_$35|) (= (Minus (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@8 |o_$35| LPC) call2formal@r2@0) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@9 |o_$35| LPC)))) :named ax_74))
   (assert (! (forall( (|o_$36_$0| ref) (|f_$0_$0| field$ref$))(= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@9 |o_$36_$0| |f_$0_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@8 |o_$36_$0| |f_$0_$0|))) :named ax_75))
   (assert (! (forall( (|o_$36_$1| ref) (|f_$0_$1| field$$@Map@@ref@To@Bool@@$))(or (and (MapRead$$@Map@@ref@To@Bool@@$ newList@0 |o_$36_$1|) (= LPC |f_$0_$1|)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@9 |o_$36_$1| |f_$0_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@8 |o_$36_$1| |f_$0_$1|)))) :named ax_76))
   (assert (! (forall( (|o_$37| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ newList@0 |o_$37|) (= newBegin@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@10 |o_$37| Lb)))) :named ax_77))
   (assert (! (forall( (|o_$38_$0| ref) (|f_$1_$0| field$ref$))(or (and (MapRead$$@Map@@ref@To@Bool@@$ newList@0 |o_$38_$0|) (= Lb |f_$1_$0|)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@9 |o_$38_$0| |f_$1_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@10 |o_$38_$0| |f_$1_$0|)))) :named ax_78))
   (assert (! (forall( (|o_$38_$1| ref) (|f_$1_$1| field$$@Map@@ref@To@Bool@@$))(= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@9 |o_$38_$1| |f_$1_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@10 |o_$38_$1| |f_$1_$1|))) :named ax_79))
   (assert (! (forall( (|r_$0| $@Map@@ref@To@Bool@@) (|o_$7| ref) (|o'_$0| ref))(= (or (MapRead$$@Map@@ref@To@Bool@@$ |r_$0| |o'_$0|) (= |o_$7| |o'_$0|)) (MapRead$$@Map@@ref@To@Bool@@$ (AddEl |r_$0| |o_$7|) |o'_$0|))) :named ax_80))
   (assert (! (forall( (|r_$1| $@Map@@ref@To@Bool@@) (|o_$8| ref) (|o'_$1| ref))(= (MapRead$$@Map@@ref@To@Bool@@$ (RemEl |r_$1| |o_$8|) |o'_$1|) (and (MapRead$$@Map@@ref@To@Bool@@$ |r_$1| |o'_$1|) (not (= |o_$8| |o'_$1|))))) :named ax_81))
   (assert (! (forall( (|r_$3| $@Map@@ref@To@Bool@@))(= (IsGoodRegion |r_$3|) (not (MapRead$$@Map@@ref@To@Bool@@$ |r_$3| null)))) :named ax_82))
   (assert (! (forall( (|r| ref) (|o_$2| ref))(= (MapRead$$@Map@@ref@To@Bool@@$ (Singleton |r|) |o_$2|) (= |r| |o_$2|))) :named ax_83))
   (assert (! (forall( (|s_$0| $@Map@@ref@To@Bool@@) (|t| $@Map@@ref@To@Bool@@))(=> (Equal |s_$0| |t|) (= |t| |s_$0|))) :named ax_84))
   (assert (! (forall( (|s| $@Map@@ref@To@Bool@@) (|r_$2| $@Map@@ref@To@Bool@@) (|o_$9| ref))(= (and (MapRead$$@Map@@ref@To@Bool@@$ |s| |o_$9|) (not (MapRead$$@Map@@ref@To@Bool@@$ |r_$2| |o_$9|))) (MapRead$$@Map@@ref@To@Bool@@$ (Minus |s| |r_$2|) |o_$9|))) :named ax_85))
   (assert (! (InvList $Heap) :named ax_86))
   (assert (! (not (= It_List It_el)) :named ax_87))
   (assert (! (not (= It_List It_el)) :named ax_88))
   (assert (! (not (= Lb It_el)) :named ax_89))
   (assert (! (not (= Lb It_el)) :named ax_90))
   (assert (! (not (= Lb It_List)) :named ax_91))
   (assert (! (not (= Lb It_List)) :named ax_92))
   (assert (! (not (= Le It_el)) :named ax_93))
   (assert (! (not (= Le It_el)) :named ax_94))
   (assert (! (not (= Le It_List)) :named ax_95))
   (assert (! (not (= Le It_List)) :named ax_96))
   (assert (! (not (= Le Lb)) :named ax_97))
   (assert (! (not (= Le Lb)) :named ax_98))
   (assert (! (not (= List_head It_el)) :named ax_99))
   (assert (! (not (= List_head It_el)) :named ax_100))
   (assert (! (not (= List_head It_List)) :named ax_101))
   (assert (! (not (= List_head It_List)) :named ax_102))
   (assert (! (not (= List_head Lb)) :named ax_103))
   (assert (! (not (= List_head Lb)) :named ax_104))
   (assert (! (not (= List_head Le)) :named ax_105))
   (assert (! (not (= List_head Le)) :named ax_106))
   (assert (! (not (= Ln It_el)) :named ax_107))
   (assert (! (not (= Ln It_el)) :named ax_108))
   (assert (! (not (= Ln It_List)) :named ax_109))
   (assert (! (not (= Ln It_List)) :named ax_110))
   (assert (! (not (= Ln Lb)) :named ax_111))
   (assert (! (not (= Ln Lb)) :named ax_112))
   (assert (! (not (= Ln Le)) :named ax_113))
   (assert (! (not (= Ln Le)) :named ax_114))
   (assert (! (not (= Ln List_head)) :named ax_115))
   (assert (! (not (= Ln List_head)) :named ax_116))
   (assert (! (not (= LNC LL)) :named ax_117))
   (assert (! (not (= LNC LL)) :named ax_118))
   (assert (! (not (= Lp It_el)) :named ax_119))
   (assert (! (not (= Lp It_el)) :named ax_120))
   (assert (! (not (= Lp It_List)) :named ax_121))
   (assert (! (not (= Lp It_List)) :named ax_122))
   (assert (! (not (= Lp Lb)) :named ax_123))
   (assert (! (not (= Lp Lb)) :named ax_124))
   (assert (! (not (= Lp Le)) :named ax_125))
   (assert (! (not (= Lp Le)) :named ax_126))
   (assert (! (not (= Lp List_head)) :named ax_127))
   (assert (! (not (= Lp List_head)) :named ax_128))
   (assert (! (not (= Lp Ln)) :named ax_129))
   (assert (! (not (= Lp Ln)) :named ax_130))
   (assert (! (not (= LPC LL)) :named ax_131))
   (assert (! (not (= LPC LL)) :named ax_132))
   (assert (! (not (= LPC LNC)) :named ax_133))
   (assert (! (not (= LPC LNC)) :named ax_134))
   (assert (! (not (= Node_next It_el)) :named ax_135))
   (assert (! (not (= Node_next It_el)) :named ax_136))
   (assert (! (not (= Node_next It_List)) :named ax_137))
   (assert (! (not (= Node_next It_List)) :named ax_138))
   (assert (! (not (= Node_next Lb)) :named ax_139))
   (assert (! (not (= Node_next Lb)) :named ax_140))
   (assert (! (not (= Node_next Le)) :named ax_141))
   (assert (! (not (= Node_next Le)) :named ax_142))
   (assert (! (not (= Node_next List_head)) :named ax_143))
   (assert (! (not (= Node_next List_head)) :named ax_144))
   (assert (! (not (= Node_next Ln)) :named ax_145))
   (assert (! (not (= Node_next Ln)) :named ax_146))
   (assert (! (not (= Node_next Lp)) :named ax_147))
   (assert (! (not (= Node_next Lp)) :named ax_148))
   (assert (! (not (= null list)) :named ax_149))
   (assert (! (not (IsEmptyList $Heap list)) :named ax_150))

;Program
(assert (! (and true
(or anon0@1 anon0_assertion)
) :named ax_true))
(assert (! (=> anon0@1 (and true 
   (and true
      (InvIsGoodRegionsList $Heap@10)
   )
(or anon0@1_assertion anon0@2)
)) :named ax_anon0@1))
(assert (! (=> anon0_assertion (not (and true
   (and true
      (InvIsGoodRegionsList $Heap@10)
   )
))) :named ax_anon0_assertion))
(assert (! (=> anon0@1_assertion (not (and true
   (and true
      (InvL $Heap@10)
   )
))) :named ax_anon0@1_assertion))
(assert (! (=> anon0@2 (and true 
   (and true
      (InvL $Heap@10)
   )
(or anon0@2_assertion anon0@3)
)) :named ax_anon0@2))
(assert (! (=> anon0@2_assertion (not (and true
   (and true
      (InvNCPC $Heap@10)
   )
))) :named ax_anon0@2_assertion))
(assert (! (=> anon0@3 (and true 
   (and true
      (InvNCPC $Heap@10)
   )
(or anon0@3_assertion anon0@4)
)) :named ax_anon0@3))
(assert (! (=> anon0@3_assertion (not (and true
   (and true
      (InvNCn1 $Heap@10)
   )
))) :named ax_anon0@3_assertion))
(assert (! (=> anon0@4 (and true 
   (and true
      (InvNCn1 $Heap@10)
   )
(or anon0@4_assertion anon0@5)
)) :named ax_anon0@4))
(assert (! (=> anon0@4_assertion (not (and true
   (and true
      (InvNCn2 $Heap@10)
   )
))) :named ax_anon0@4_assertion))
(assert (! (=> anon0@5 (and true 
   (and true
      (InvNCn2 $Heap@10)
   )
(or anon0@5_assertion anon0@6)
)) :named ax_anon0@5))
(assert (! (=> anon0@5_assertion (not (and true
   (and true
      (InvNCo $Heap@10)
   )
))) :named ax_anon0@5_assertion))
(assert (! (=> anon0@6 (and true 
   (and true
      (InvNCo $Heap@10)
   )
(or anon0@6_assertion anon0@7)
)) :named ax_anon0@6))
(assert (! (=> anon0@6_assertion (not (and true
   (and true
      (Inve1 $Heap@10)
   )
))) :named ax_anon0@6_assertion))
(assert (! (=> anon0@7 (and true 
   (and true
      (Inve1 $Heap@10)
   )
(or anon0@7_assertion anon0@8)
)) :named ax_anon0@7))
(assert (! (=> anon0@7_assertion (not (and true
   (and true
      (Inve2 $Heap@10)
   )
))) :named ax_anon0@7_assertion))
(assert (! (=> anon0@8 (and true 
   (and true
      (Inve2 $Heap@10)
   )
(or anon0@8_assertion anon0@9)
)) :named ax_anon0@8))
(assert (! (=> anon0@8_assertion (not (and true
   (and true
      (InvPCp1 $Heap@10)
   )
))) :named ax_anon0@8_assertion))
(assert (! (=> anon0@9 (and true 
   (and true
      (InvPCp1 $Heap@10)
   )
(or anon0@10 anon0@9_assertion)
)) :named ax_anon0@9))
(assert (! (=> anon0@10 (and true 
   (and true
      (InvPCp2 $Heap@10)
   )
(or anon0@10_assertion anon0@11)
)) :named ax_anon0@10))
(assert (! (=> anon0@9_assertion (not (and true
   (and true
      (InvPCp2 $Heap@10)
   )
))) :named ax_anon0@9_assertion))
(assert (! (=> anon0@10_assertion (not (and true
   (and true
      (InvPCo $Heap@10)
   )
))) :named ax_anon0@10_assertion))
(assert (! (=> anon0@11 (and true 
   (and true
      (InvPCo $Heap@10)
   )
(or anon0@11_assertion anon0@12)
)) :named ax_anon0@11))
(assert (! (=> anon0@11_assertion (not (and true
   (and true
      (Invb1 $Heap@10)
   )
))) :named ax_anon0@11_assertion))
(assert (! (=> anon0@12 (and true 
   (and true
      (Invb1 $Heap@10)
   )
(or anon0@12_assertion anon0@13)
)) :named ax_anon0@12))
(assert (! (=> anon0@12_assertion (not (and true
   (and true
      (Invb2 $Heap@10)
   )
))) :named ax_anon0@12_assertion))
(assert (! (=> anon0@13 (and true 
   (and true
      (Invb2 $Heap@10)
   )
(or anon0@13_assertion anon0@14)
)) :named ax_anon0@13))
(assert (! (=> anon0@13_assertion (not (and true
   (and true
      (InvLb $Heap@10)
   )
))) :named ax_anon0@13_assertion))
(assert (! (=> anon0@14 (and true 
   (and true
      (InvLb $Heap@10)
   )
(or anon0@14_assertion anon0@15)
)) :named ax_anon0@14))
(assert (! (=> anon0@14_assertion (not (and true
   (and true
      (InvLe $Heap@10)
   )
))) :named ax_anon0@14_assertion))
(assert (! (=> anon0@15 (and true 
   (and true
      (InvLe $Heap@10)
   )
(or anon0@15_assertion anon0@16)
)) :named ax_anon0@15))
(assert (! (=> anon0@15_assertion (not (and true
   (and true
      (InvLL1 $Heap@10)
   )
))) :named ax_anon0@15_assertion))
(assert (! (=> anon0@16 (and true 
   (and true
      (InvLL1 $Heap@10)
   )
(or anon0@16_assertion anon0@17)
)) :named ax_anon0@16))
(assert (! (=> anon0@16_assertion (not (and true
   (and true
      (InvLL2 $Heap@10)
   )
))) :named ax_anon0@16_assertion))
(assert (! (=> anon0@17 (and true 
   (and true
      (InvLL2 $Heap@10)
   )
(or anon0@17_assertion anon0@18)
)) :named ax_anon0@17))
(assert (! (=> anon0@17_assertion (not (and true
   (and true
      (InvNCNC $Heap@10)
   )
))) :named ax_anon0@17_assertion))
(assert (! (=> anon0@18 (and true 
   (and true
      (InvNCNC $Heap@10)
   )
(or anon0@18_assertion anon0@19)
)) :named ax_anon0@18))
(assert (! (=> anon0@18_assertion (not (and true
   (and true
      (InvPCPC $Heap@10)
   )
))) :named ax_anon0@18_assertion))
(assert (! (=> anon0@19 (and true 
   (and true
      (InvPCPC $Heap@10)
   )
(or anon0@19_assertion anon0@20)
)) :named ax_anon0@19))
(assert (! (=> anon0@19_assertion (not (and true
   (and true
      (Invp $Heap@10)
   )
))) :named ax_anon0@19_assertion))
(assert (! (=> anon0@20 (and true 
   (and true
      (Invp $Heap@10)
   )
(or anon0@20_assertion anon0@21)
)) :named ax_anon0@20))
(assert (! (=> anon0@20_assertion (not (and true
   (and true
      (InvList $Heap@10)
   )
))) :named ax_anon0@20_assertion))
(assert (! (=> anon0@21 (and true 
   (and true
      (InvList $Heap@10)
   )
(or anon0@21_assertion anon0@22)
)) :named ax_anon0@21))
(assert (! (=> anon0@21_assertion (not (and true
   (and true
      (IsEmptyList $Heap@10 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb))
   )
))) :named ax_anon0@21_assertion))
(assert (! (=> anon0@22 (and true 
   (and true
      (IsEmptyList $Heap@10 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb))
   )
(or anon0@22_assertion anon0@23)
)) :named ax_anon0@22))
(assert (! (=> anon0@22_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@10 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb) Ln) Lp) null)
   )
))) :named ax_anon0@22_assertion))
(assert (! (=> anon0@23 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@10 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb) Ln) Lp) null)
   )
(or anon0@23_assertion anon0@24)
)) :named ax_anon0@23))
(assert (! (=> anon0@23_assertion (not (and true
   (and true
      (forall( (|o_$39| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap list LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) |o_$39|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@10 |o_$39| LL) (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$39| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)))))
   )
))) :named ax_anon0@23_assertion))
(assert (! (=> anon0@24 (and true 
   (and true
      (forall( (|o_$39| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap list LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) |o_$39|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@10 |o_$39| LL) (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$39| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)))))
   )
(or anon0@24_assertion anon0@25)
)) :named ax_anon0@24))
(assert (! (=> anon0@24_assertion (not (and true
   (and true
      (forall( (|o_$40| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap list LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) |o_$40|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@10 |o_$40| LPC) (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$40| LPC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)))))
   )
))) :named ax_anon0@24_assertion))
(assert (! (=> anon0@25 (and true 
   (and true
      (forall( (|o_$40| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap list LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) |o_$40|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@10 |o_$40| LPC) (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$40| LPC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)))))
   )
anon0@26
)) :named ax_anon0@25))
(assert (! (=> anon0@26 (and true 
   (and true
      (forall( (|o_$41| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap list LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) |o_$41|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@10 |o_$41| Lb) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb) Ln))))
   )
anon0@26_assertion
)) :named ax_anon0@26))
(assert (! (=> anon0@26_assertion (not (and true
   (and true
      (forall( (|o_$42_$0| ref) (|f_$2_$0| field$ref$))(or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@10 |o_$42_$0| |f_$2_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap |o_$42_$0| |f_$2_$0|)) (and (= |o_$42_$0| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb) Ln)) (= |f_$2_$0| Lp))) (and (= |o_$42_$0| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) (= |f_$2_$0| Lp))) (and (= |o_$42_$0| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) (= |f_$2_$0| Ln))) (and (= |o_$42_$0| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) (= |f_$2_$0| Lb))) (and (= |o_$42_$0| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) (= |f_$2_$0| Le))) (and (= |o_$42_$0| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) false)) (and (= |o_$42_$0| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) false)) (and (= |o_$42_$0| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap list LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) |o_$42_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap list LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) |o_$42_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap list LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) |o_$42_$0|) (= |f_$2_$0| Lb))))
      (forall( (|o_$42_$1| ref) (|f_$2_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@10 |o_$42_$1| |f_$2_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$42_$1| |f_$2_$1|)) (and (= |o_$42_$1| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb) Ln)) false)) (and (= |o_$42_$1| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) false)) (and (= |o_$42_$1| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) false)) (and (= |o_$42_$1| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) false)) (and (= |o_$42_$1| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) false)) (and (= |o_$42_$1| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) (= |f_$2_$1| LPC))) (and (= |o_$42_$1| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) (= |f_$2_$1| LNC))) (and (= |o_$42_$1| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) (= |f_$2_$1| LL))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap list LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) |o_$42_$1|) (= |f_$2_$1| LL))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap list LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) |o_$42_$1|) (= |f_$2_$1| LPC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap list LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap list Lb)) |o_$42_$1|) false)))
   )
))) :named ax_anon0@26_assertion))
(assert (=> false (not (and
   anon0@1_assertion
   anon0@10_assertion
   anon0@11_assertion
   anon0@12_assertion
   anon0@13_assertion
   anon0@14_assertion
   anon0@15_assertion
   anon0@16_assertion
   anon0@17_assertion
   anon0@18_assertion
   anon0@19_assertion
   anon0@2_assertion
   anon0@20_assertion
   anon0@21_assertion
   anon0@22_assertion
   anon0@23_assertion
   anon0@24_assertion
   anon0@26_assertion
   anon0@3_assertion
   anon0@4_assertion
   anon0@5_assertion
   anon0@6_assertion
   anon0@7_assertion
   anon0@8_assertion
   anon0@9_assertion
   anon0_assertion
))))

;Commands
   (check-sat)
   ;(get-unsat-core)
