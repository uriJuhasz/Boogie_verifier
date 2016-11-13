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
(declare-sort $@Map@@$T0@@ref@field$$T0$@To@$T0@@ 0)
(declare-sort $@Map@@ref@To@Bool@@ 0)
(declare-sort field$$@Map@@ref@To@Bool@@$ 0)
(declare-sort field$ref$ 0)
(declare-sort ref 0)

;Functions
(declare-fun $Heap ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@0 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@1 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@2 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun AddEl ( $@Map@@ref@To@Bool@@ ref ) $@Map@@ref@To@Bool@@)
(declare-fun el ( ) ref)
(declare-fun Empty ( ) $@Map@@ref@To@Bool@@)
(declare-fun It_el ( ) field$ref$)
(declare-fun It_List ( ) field$ref$)
(declare-fun Lb ( ) field$ref$)
(declare-fun Le ( ) field$ref$)
(declare-fun List_head ( ) field$ref$)
(declare-fun listEl ( ) ref)
(declare-fun LL ( ) field$$@Map@@ref@To@Bool@@$)
(declare-fun Ln ( ) field$ref$)
(declare-fun LNC ( ) field$$@Map@@ref@To@Bool@@$)
(declare-fun Lp ( ) field$ref$)
(declare-fun LPC ( ) field$$@Map@@ref@To@Bool@@$)
(declare-fun MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref field$$@Map@@ref@To@Bool@@$ ) $@Map@@ref@To@Bool@@)
(declare-fun MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref field$ref$ ) ref)
(declare-fun Node_next ( ) field$ref$)
(declare-fun null ( ) ref)
(declare-fun Singleton ( ref ) $@Map@@ref@To@Bool@@)
(declare-fun Union ( $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) $@Map@@ref@To@Bool@@)

;Predicates
(declare-fun Disjoint ( $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun Equal ( $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InList ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ref ) Bool)
(declare-fun Invb1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun Invb2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun Invb3Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun Inve1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun Inve2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun Inve3Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvIsGoodRegionsListEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvLbEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvLeEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvLEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvList ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun InvListEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvLL1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvLL2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvNCn1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvNCn2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvNCNCEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvNCoEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvNCPCEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvPCoEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvPCp1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvPCp2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvPCPCEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvpEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun IsEmptyList ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun IsGoodRegion ( $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun ListClassInv ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun MapRead$$@Map@@ref@To@Bool@@$ ( $@Map@@ref@To@Bool@@ ref ) Bool)
(declare-fun Sub ( $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)

;Axioms
   (assert (! (not (= It_List It_el)) :named ax_0))
   (assert (! (not (= It_List It_el)) :named ax_1))
   (assert (! (not (= Lb It_el)) :named ax_2))
   (assert (! (not (= Lb It_el)) :named ax_3))
   (assert (! (not (= Lb It_List)) :named ax_4))
   (assert (! (not (= Lb It_List)) :named ax_5))
   (assert (! (not (= Le It_el)) :named ax_6))
   (assert (! (not (= Le It_el)) :named ax_7))
   (assert (! (not (= Le It_List)) :named ax_8))
   (assert (! (not (= Le It_List)) :named ax_9))
   (assert (! (not (= Le Lb)) :named ax_10))
   (assert (! (not (= Le Lb)) :named ax_11))
   (assert (! (not (= List_head It_el)) :named ax_12))
   (assert (! (not (= List_head It_el)) :named ax_13))
   (assert (! (not (= List_head It_List)) :named ax_14))
   (assert (! (not (= List_head It_List)) :named ax_15))
   (assert (! (not (= List_head Lb)) :named ax_16))
   (assert (! (not (= List_head Lb)) :named ax_17))
   (assert (! (not (= List_head Le)) :named ax_18))
   (assert (! (not (= List_head Le)) :named ax_19))
   (assert (! (not (= Ln It_el)) :named ax_20))
   (assert (! (not (= Ln It_el)) :named ax_21))
   (assert (! (not (= Ln It_List)) :named ax_22))
   (assert (! (not (= Ln It_List)) :named ax_23))
   (assert (! (not (= Ln Lb)) :named ax_24))
   (assert (! (not (= Ln Lb)) :named ax_25))
   (assert (! (not (= Ln Le)) :named ax_26))
   (assert (! (not (= Ln Le)) :named ax_27))
   (assert (! (not (= Ln List_head)) :named ax_28))
   (assert (! (not (= Ln List_head)) :named ax_29))
   (assert (! (not (= LNC LL)) :named ax_30))
   (assert (! (not (= LNC LL)) :named ax_31))
   (assert (! (not (= Lp It_el)) :named ax_32))
   (assert (! (not (= Lp It_el)) :named ax_33))
   (assert (! (not (= Lp It_List)) :named ax_34))
   (assert (! (not (= Lp It_List)) :named ax_35))
   (assert (! (not (= Lp Lb)) :named ax_36))
   (assert (! (not (= Lp Lb)) :named ax_37))
   (assert (! (not (= Lp Le)) :named ax_38))
   (assert (! (not (= Lp Le)) :named ax_39))
   (assert (! (not (= Lp List_head)) :named ax_40))
   (assert (! (not (= Lp List_head)) :named ax_41))
   (assert (! (not (= Lp Ln)) :named ax_42))
   (assert (! (not (= Lp Ln)) :named ax_43))
   (assert (! (not (= LPC LL)) :named ax_44))
   (assert (! (not (= LPC LL)) :named ax_45))
   (assert (! (not (= LPC LNC)) :named ax_46))
   (assert (! (not (= LPC LNC)) :named ax_47))
   (assert (! (not (= Node_next It_el)) :named ax_48))
   (assert (! (not (= Node_next It_el)) :named ax_49))
   (assert (! (not (= Node_next It_List)) :named ax_50))
   (assert (! (not (= Node_next It_List)) :named ax_51))
   (assert (! (not (= Node_next Lb)) :named ax_52))
   (assert (! (not (= Node_next Lb)) :named ax_53))
   (assert (! (not (= Node_next Le)) :named ax_54))
   (assert (! (not (= Node_next Le)) :named ax_55))
   (assert (! (not (= Node_next List_head)) :named ax_56))
   (assert (! (not (= Node_next List_head)) :named ax_57))
   (assert (! (not (= Node_next Ln)) :named ax_58))
   (assert (! (not (= Node_next Ln)) :named ax_59))
   (assert (! (not (= Node_next Lp)) :named ax_60))
   (assert (! (not (= Node_next Lp)) :named ax_61))

;Program
(assert (not
(let ((GeneratedUnifiedExit@16_assertion (and
    (forall( (|o_$46_$0| ref) (|f_$1_$0| field$ref$))(or (and (= Le |f_$1_$0|) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) |o_$46_$0|)) (or (and (= |o_$46_$0| el) (= Le |f_$1_$0|)) (or (and (= |o_$46_$0| el) (= Lb |f_$1_$0|)) (or (and (= |o_$46_$0| el) (= Ln |f_$1_$0|)) (or (and (= |o_$46_$0| el) (= Lp |f_$1_$0|)) (or (and (= |o_$46_$0| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le)) (= Ln |f_$1_$0|)) (or (and (= Lp |f_$1_$0|) (and (= |o_$46_$0| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Ln)) (not (= listEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le))))) (or (and (= Ln |f_$1_$0|) (and (= |o_$46_$0| listEl) (not (= listEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le))))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap |o_$46_$0| |f_$1_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 |o_$46_$0| |f_$1_$0|)))))))))))
    (forall( (|o_$46_$1| ref) (|f_$1_$1| field$$@Map@@ref@To@Bool@@$))(or (and (= LPC |f_$1_$1|) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LNC) |o_$46_$1|)) (or (and (= LNC |f_$1_$1|) (and (= listEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) |o_$46_$1|))) (or (and (= LNC |f_$1_$1|) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Ln) LPC) |o_$46_$1|) (not (= listEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le))))) (or (and (= LL |f_$1_$1|) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) |o_$46_$1|)) (or (and (= |o_$46_$1| el) (= LL |f_$1_$1|)) (or (and (= |o_$46_$1| el) (= LNC |f_$1_$1|)) (or (and (= |o_$46_$1| el) (= LPC |f_$1_$1|)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$46_$1| |f_$1_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 |o_$46_$1| |f_$1_$1|))))))))))
)))
(let ((anon3_Else@2_assertion (and
    (InvList $Heap)
)))
(let ((anon3_Else@3_assertion (and
    (IsEmptyList $Heap el)
)))
(let ((anon3_Then@2_assertion (and
    (InvList $Heap)
)))
(let ((anon3_Then@3_assertion (and
    (IsEmptyList $Heap el)
)))
(let ((GeneratedUnifiedExit@11_assertion (and
    (forall( (|o_$41| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) |o_$41|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 |o_$41| LL) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$41| LL) el))))
)))
(let ((GeneratedUnifiedExit@12_assertion (and
    (=> (= listEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le)) (forall( (|o_$42| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) |o_$42|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 |o_$42| LNC) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$42| LNC) el)))))
)))
(let ((GeneratedUnifiedExit@13_assertion (and
    (=> (not (= listEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le))) (forall( (|o_$43| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Ln) LPC) |o_$43|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 |o_$43| LNC) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$43| LNC) el)))))
)))
(let ((GeneratedUnifiedExit@14_assertion (and
    (=> (not (= listEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le))) (forall( (|o_$44| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LNC) |o_$44|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 |o_$44| LPC) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$44| LPC) el)))))
)))
(let ((GeneratedUnifiedExit@9_assertion (and
    (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 el LNC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LNC))
)))
(let ((GeneratedUnifiedExit@1_assertion (and
    (= el (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 listEl Ln))
)))
(let ((GeneratedUnifiedExit@10_assertion (and
    (= (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) el) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 el LL))
)))
(let ((GeneratedUnifiedExit@15_assertion (and
    (=> (= listEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le)) (forall( (|o_$45| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) |o_$45|) (= el (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 |o_$45| Le)))))
)))
(let ((GeneratedUnifiedExit@2_assertion (and
    (=> (not (= listEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le))) (= el (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Ln) Lp)))
)))
(let ((GeneratedUnifiedExit@3_assertion (and
    (= listEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 el Lp))
)))
(let ((GeneratedUnifiedExit@4_assertion (and
    (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Ln) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 el Ln))
)))
(let ((GeneratedUnifiedExit@5_assertion (and
    (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 listEl Lb) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 el Lb))
)))
(let ((GeneratedUnifiedExit@6_assertion (and
    (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 listEl Le) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 el Le))
)))
(let ((GeneratedUnifiedExit@7_assertion (and
    (=> (not (= listEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Ln) LPC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 el LPC)))
)))
(let ((GeneratedUnifiedExit@8_assertion (and
    (=> (= listEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 el LPC)))
)))
(let ((GeneratedUnifiedExit_assertion (and
    (InvList $Heap@2)
)))
(let ((anon3_Else_assertion (and
    (not (= null listEl))
)))
(let ((anon3_Else@1_assertion (and
    (not (= null el))
)))
(let ((anon3_Else@4_assertion (and
    (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) el))
)))
(let ((anon3_Else@5_assertion (and
    (not (= listEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le)))
)))
(let ((anon3_Then_assertion (and
    (not (= null listEl))
)))
(let ((anon3_Then@1_assertion (and
    (not (= null el))
)))
(let ((anon3_Then@4_assertion (and
    (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) el))
)))
(let ((GeneratedUnifiedExit@16 (=> (and true
    (=> (= listEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le)) (forall( (|o_$45| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) |o_$45|) (= el (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 |o_$45| Le)))))
  )
    GeneratedUnifiedExit@16_assertion
)))
(let ((GeneratedUnifiedExit@15 (=> (and true
    (=> (not (= listEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le))) (forall( (|o_$44| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LNC) |o_$44|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 |o_$44| LPC) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$44| LPC) el)))))
  )(and 
    GeneratedUnifiedExit@15_assertion
    GeneratedUnifiedExit@16
))))
(let ((GeneratedUnifiedExit@14 (=> (and true
    (=> (not (= listEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le))) (forall( (|o_$43| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Ln) LPC) |o_$43|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 |o_$43| LNC) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$43| LNC) el)))))
  )(and 
    GeneratedUnifiedExit@14_assertion
    GeneratedUnifiedExit@15
))))
(let ((GeneratedUnifiedExit@13 (=> (and true
    (=> (= listEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le)) (forall( (|o_$42| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) |o_$42|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 |o_$42| LNC) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$42| LNC) el)))))
  )(and 
    GeneratedUnifiedExit@13_assertion
    GeneratedUnifiedExit@14
))))
(let ((GeneratedUnifiedExit@12 (=> (and true
    (forall( (|o_$41| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) |o_$41|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 |o_$41| LL) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$41| LL) el))))
  )(and 
    GeneratedUnifiedExit@12_assertion
    GeneratedUnifiedExit@13
))))
(let ((GeneratedUnifiedExit@11 (=> (and true
    (= (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) el) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 el LL))
  )(and 
    GeneratedUnifiedExit@11_assertion
    GeneratedUnifiedExit@12
))))
(let ((GeneratedUnifiedExit@10 (=> (and true
    (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 el LNC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LNC))
  )(and 
    GeneratedUnifiedExit@10_assertion
    GeneratedUnifiedExit@11
))))
(let ((GeneratedUnifiedExit@9 (=> (and true
    (=> (= listEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 el LPC)))
  )(and 
    GeneratedUnifiedExit@9_assertion
    GeneratedUnifiedExit@10
))))
(let ((GeneratedUnifiedExit@8 (=> (and true
    (=> (not (= listEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Ln) LPC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 el LPC)))
  )(and 
    GeneratedUnifiedExit@8_assertion
    GeneratedUnifiedExit@9
))))
(let ((GeneratedUnifiedExit@7 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 listEl Le) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 el Le))
  )(and 
    GeneratedUnifiedExit@7_assertion
    GeneratedUnifiedExit@8
))))
(let ((GeneratedUnifiedExit@6 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 listEl Lb) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 el Lb))
  )(and 
    GeneratedUnifiedExit@6_assertion
    GeneratedUnifiedExit@7
))))
(let ((GeneratedUnifiedExit@5 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Ln) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 el Ln))
  )(and 
    GeneratedUnifiedExit@5_assertion
    GeneratedUnifiedExit@6
))))
(let ((GeneratedUnifiedExit@4 (=> (and true
    (= listEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 el Lp))
  )(and 
    GeneratedUnifiedExit@4_assertion
    GeneratedUnifiedExit@5
))))
(let ((GeneratedUnifiedExit@3 (=> (and true
    (=> (not (= listEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le))) (= el (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Ln) Lp)))
  )(and 
    GeneratedUnifiedExit@3_assertion
    GeneratedUnifiedExit@4
))))
(let ((GeneratedUnifiedExit@2 (=> (and true
    (= el (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 listEl Ln))
  )(and 
    GeneratedUnifiedExit@2_assertion
    GeneratedUnifiedExit@3
))))
(let ((GeneratedUnifiedExit@1 (=> (and true
    (InvList $Heap@2)
  )(and 
    GeneratedUnifiedExit@1_assertion
    GeneratedUnifiedExit@2
))))
(let ((GeneratedUnifiedExit (=> (and true
  )(and 
    GeneratedUnifiedExit_assertion
    GeneratedUnifiedExit@1
))))
(let ((anon3_Else@6 (=> (and true
    (= $Heap@2 $Heap@1)
    (= (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) el) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 el LL))
    (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Ln) LPC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 el LPC))
    (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LNC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 el LNC))
    (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Ln) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 el Ln))
    (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 listEl Lb) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 el Lb))
    (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 listEl Le) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 el Le))
    (= el (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Ln) Lp))
    (= el (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 listEl Ln))
    (= listEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 el Lp))
    (forall( (|o_$37| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) |o_$37|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$37| LL) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$37| LL) el))))
    (forall( (|o_$38| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Ln) LPC) |o_$38|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$38| LNC) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$38| LNC) el))))
    (forall( (|o_$39| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LNC) |o_$39|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$39| LPC) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$39| LPC) el))))
    (forall( (|o_$40_$0| ref) (|f_$0_$0| field$ref$))(or (and (= |o_$40_$0| el) (= Le |f_$0_$0|)) (or (and (= |o_$40_$0| el) (= Lb |f_$0_$0|)) (or (and (= |o_$40_$0| el) (= Ln |f_$0_$0|)) (or (and (= |o_$40_$0| el) (= Lp |f_$0_$0|)) (or (and (= |o_$40_$0| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le)) (= Ln |f_$0_$0|)) (or (and (= |o_$40_$0| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Ln)) (= Lp |f_$0_$0|)) (or (and (= |o_$40_$0| listEl) (= Ln |f_$0_$0|)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap |o_$40_$0| |f_$0_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$40_$0| |f_$0_$0|))))))))))
    (forall( (|o_$40_$1| ref) (|f_$0_$1| field$$@Map@@ref@To@Bool@@$))(or (and (= LPC |f_$0_$1|) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LNC) |o_$40_$1|)) (or (and (= LNC |f_$0_$1|) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Ln) LPC) |o_$40_$1|)) (or (and (= LL |f_$0_$1|) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) |o_$40_$1|)) (or (and (= |o_$40_$1| el) (= LL |f_$0_$1|)) (or (and (= |o_$40_$1| el) (= LNC |f_$0_$1|)) (or (and (= |o_$40_$1| el) (= LPC |f_$0_$1|)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$40_$1| |f_$0_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$40_$1| |f_$0_$1|)))))))))
    (InvList $Heap@1)
    (not (= listEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le)))
  )
    GeneratedUnifiedExit
)))
(let ((anon3_Then@5 (=> (and true
    (= $Heap@2 $Heap@0)
    (= (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) el) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 el LL))
    (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 el LPC))
    (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 el Lp))
    (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 listEl Lb) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 el Lb))
    (= el (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le) Ln))
    (= el (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 el Le))
    (= Empty (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 el LNC))
    (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 el Ln))
    (forall( (|o_$33| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) |o_$33|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 |o_$33| LL) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$33| LL) el))))
    (forall( (|o_$34| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) |o_$34|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 |o_$34| LNC) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$34| LNC) el))))
    (forall( (|o_$35| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) |o_$35|) (= el (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 |o_$35| Le))))
    (forall( (|o_$36_$0| ref) (|f_$2| field$ref$))(or (and (= Le |f_$2|) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) |o_$36_$0|)) (or (and (= |o_$36_$0| el) (= Le |f_$2|)) (or (and (= |o_$36_$0| el) (= Lb |f_$2|)) (or (and (= |o_$36_$0| el) (= Ln |f_$2|)) (or (and (= |o_$36_$0| el) (= Lp |f_$2|)) (or (and (= |o_$36_$0| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le)) (= Ln |f_$2|)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap |o_$36_$0| |f_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 |o_$36_$0| |f_$2|)))))))))
    (forall( (|o_$36_$1| ref) (|f_$3| field$$@Map@@ref@To@Bool@@$))(or (and (= LNC |f_$3|) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) |o_$36_$1|)) (or (and (= LL |f_$3|) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) |o_$36_$1|)) (or (and (= |o_$36_$1| el) (= LL |f_$3|)) (or (and (= |o_$36_$1| el) (= LNC |f_$3|)) (or (and (= |o_$36_$1| el) (= LPC |f_$3|)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$36_$1| |f_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 |o_$36_$1| |f_$3|))))))))
    (InvList $Heap@0)
    (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) el))
  )
    GeneratedUnifiedExit
)))
(let ((anon3_Else@5 (=> (and true
    (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) el))
  )(and 
    anon3_Else@5_assertion
    anon3_Else@6
))))
(let ((anon3_Then@4 (=> (and true
    (IsEmptyList $Heap el)
  )(and 
    anon3_Then@4_assertion
    anon3_Then@5
))))
(let ((anon3_Else@4 (=> (and true
    (IsEmptyList $Heap el)
  )(and 
    anon3_Else@4_assertion
    anon3_Else@5
))))
(let ((anon3_Then@3 (=> (and true
    (InvList $Heap)
  )(and 
    anon3_Then@3_assertion
    anon3_Then@4
))))
(let ((anon3_Else@3 (=> (and true
    (InvList $Heap)
  )(and 
    anon3_Else@3_assertion
    anon3_Else@4
))))
(let ((anon3_Then@2 (=> (and true
    (not (= null el))
  )(and 
    anon3_Then@2_assertion
    anon3_Then@3
))))
(let ((anon3_Else@2 (=> (and true
    (not (= null el))
  )(and 
    anon3_Else@2_assertion
    anon3_Else@3
))))
(let ((anon3_Then@1 (=> (and true
    (not (= null listEl))
  )(and 
    anon3_Then@1_assertion
    anon3_Then@2
))))
(let ((anon3_Else@1 (=> (and true
    (not (= null listEl))
  )(and 
    anon3_Else@1_assertion
    anon3_Else@2
))))
(let ((anon3_Then (=> (and true
    (= listEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le))
  )(and 
    anon3_Then_assertion
    anon3_Then@1
))))
(let ((anon3_Else (=> (and true
    (not (= listEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap listEl Le)))
  )(and 
    anon3_Else_assertion
    anon3_Else@1
))))
(let ((anon0 (=> (and true
    (InvList $Heap)
    (IsEmptyList $Heap el)
    (not (= null el))
    (not (= null listEl))
    (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap listEl LL) el))
  )
    (and anon3_Else anon3_Then)
)))
(let (($start (=> (and true
    (forall( (|a_$0| $@Map@@ref@To@Bool@@) (|b_$0| $@Map@@ref@To@Bool@@))(= (Sub |a_$0| |b_$0|) (forall( (|o_$4| ref))(!(=> (MapRead$$@Map@@ref@To@Bool@@$ |a_$0| |o_$4|) (MapRead$$@Map@@ref@To@Bool@@$ |b_$0| |o_$4|))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |a_$0| |o_$4|)) :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |b_$0| |o_$4|))))))
    (forall( (|a_$1| $@Map@@ref@To@Bool@@) (|b_$1| $@Map@@ref@To@Bool@@))(= (Equal |a_$1| |b_$1|) (forall( (|o_$5| ref))(!(= (MapRead$$@Map@@ref@To@Bool@@$ |b_$1| |o_$5|) (MapRead$$@Map@@ref@To@Bool@@$ |a_$1| |o_$5|))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |a_$1| |o_$5|)) :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |b_$1| |o_$5|))))))
    (forall( (|a_$2| $@Map@@ref@To@Bool@@) (|b_$2| $@Map@@ref@To@Bool@@))(= (Disjoint |a_$2| |b_$2|) (forall( (|o_$6| ref))(!(or (not (MapRead$$@Map@@ref@To@Bool@@$ |b_$2| |o_$6|)) (not (MapRead$$@Map@@ref@To@Bool@@$ |a_$2| |o_$6|)))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |a_$2| |o_$6|)) :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |b_$2| |o_$6|))))))
    (forall( (|a| $@Map@@ref@To@Bool@@) (|b| $@Map@@ref@To@Bool@@) (|o_$3| ref))(= (MapRead$$@Map@@ref@To@Bool@@$ (Union |a| |b|) |o_$3|) (or (MapRead$$@Map@@ref@To@Bool@@$ |b| |o_$3|) (MapRead$$@Map@@ref@To@Bool@@$ |a| |o_$3|))))
    (forall( (|h_$1| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1| $@Map@@ref@To@Bool@@))(= (InvIsGoodRegionsListEx |h_$1| |Ex1|) (forall( (|o_$10| ref))(and (and (IsGoodRegion (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$1| |o_$10| LPC)) (IsGoodRegion (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$1| |o_$10| LNC))) (IsGoodRegion (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$1| |o_$10| LL))))))
    (forall( (|h_$10| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$8| $@Map@@ref@To@Bool@@))(= (InvPCp1Ex |h_$10| |Ex1_$8|) (forall( (|o_$19| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$8| |o_$19|)) (not (= |o_$19| null))) (=> (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$10| |o_$19| Lp)) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$10| |o_$19| LPC) Empty)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$10| |o_$19| Lp))))))
    (forall( (|h_$11| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$9| $@Map@@ref@To@Bool@@))(= (InvPCp2Ex |h_$11| |Ex1_$9|) (forall( (|o_$20| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$9| |o_$20|)) (not (= |o_$20| null))) (=> (not (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$11| |o_$20| Lp))) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$11| |o_$20| LPC) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$11| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$11| |o_$20| Lp) LPC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$11| |o_$20| Lp)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$11| |o_$20| Lp) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$11| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$11| |o_$20| Lp) LPC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$11| |o_$20| Lp))))))
    (forall( (|h_$12| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$10| $@Map@@ref@To@Bool@@))(= (InvPCoEx |h_$12| |Ex1_$10|) (forall( (|o_$21| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$10| |o_$21|)) (not (= |o_$21| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$12| |o_$21| LPC) |o_$21|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$12| |o_$21| LPC))))))
    (forall( (|h_$13| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$11| $@Map@@ref@To@Bool@@))(= (Invb1Ex |h_$13| |Ex1_$11|) (forall( (|o_$22| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$11| |o_$22|)) (not (= |o_$22| null))) (=> (not (= |o_$22| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$13| |o_$22| Lb))) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$13| |o_$22| LPC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$13| |o_$22| Lb))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$13| |o_$22| Lb))))))
    (forall( (|h_$14| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$12| $@Map@@ref@To@Bool@@))(= (Invb2Ex |h_$14| |Ex1_$12|) (forall( (|o_$23| ref))(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$12| |o_$23|)) (not (= |o_$23| null))) (= (= |o_$23| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$14| |o_$23| Lb)) (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$14| |o_$23| Lp)))))))
    (forall( (|h_$15| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$13| $@Map@@ref@To@Bool@@))(= (Invb3Ex |h_$15| |Ex1_$13|) (forall( (|o_$24| ref))(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$13| |o_$24|)) (not (= |o_$24| null))) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$15| |o_$24| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$15| |o_$24| Lb))))))
    (forall( (|h_$16| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$14| $@Map@@ref@To@Bool@@) (|Ex2| $@Map@@ref@To@Bool@@))(= (InvLbEx |h_$16| |Ex1_$14| |Ex2|) (forall( (|o_$25| ref) (|o'_$2| ref))(!(=> (and (and (and (not (= |o_$25| null)) (not (= |o'_$2| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$14| |o_$25|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2| |o'_$2|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$16| |o_$25| LL) |o'_$2|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$16| |o_$25| Lb) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$16| |o'_$2| Lb))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$16| |o_$25| LL) |o'_$2|))))))
    (forall( (|h_$17| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$15| $@Map@@ref@To@Bool@@) (|Ex2_$0| $@Map@@ref@To@Bool@@))(= (InvLeEx |h_$17| |Ex1_$15| |Ex2_$0|) (forall( (|o_$26| ref) (|o'_$3| ref))(!(=> (and (and (and (not (= |o'_$3| null)) (not (= |o_$26| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$15| |o_$26|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$0| |o'_$3|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$17| |o_$26| LL) |o'_$3|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$17| |o'_$3| Le) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$17| |o_$26| Le))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$17| |o_$26| LL) |o'_$3|))))))
    (forall( (|h_$18| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$16| $@Map@@ref@To@Bool@@) (|Ex2_$1| $@Map@@ref@To@Bool@@))(= (InvLL1Ex |h_$18| |Ex1_$16| |Ex2_$1|) (forall( (|o_$27| ref) (|o'_$4| ref))(!(=> (and (and (and (not (= |o'_$4| null)) (not (= |o_$27| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$16| |o_$27|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$1| |o'_$4|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$18| |o_$27| LL) |o'_$4|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$18| |o_$27| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$18| |o'_$4| LL))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$18| |o_$27| LL) |o'_$4|))))))
    (forall( (|h_$19| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$17| $@Map@@ref@To@Bool@@) (|Ex2_$2| $@Map@@ref@To@Bool@@))(= (InvLL2Ex |h_$19| |Ex1_$17| |Ex2_$2|) (forall( (|o_$28| ref) (|o'_$5| ref))(!(=> (and (and (and (not (= |o'_$5| null)) (not (= |o_$28| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$17| |o_$28|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$2| |o'_$5|))) (=> (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$19| |o_$28| LL) |o'_$5|)) (Disjoint (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$19| |o_$28| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$19| |o'_$5| LL))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$19| |o_$28| LL) |o'_$5|))))))
    (forall( (|h_$2| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$0| $@Map@@ref@To@Bool@@))(= (InvLEx |h_$2| |Ex1_$0|) (forall( (|o_$11| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$0| |o_$11|)) (not (= |o_$11| null))) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$2| |o_$11| LL) (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$2| |o_$11| LPC) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$2| |o_$11| LNC) |o_$11|))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$2| |o_$11| LL))))))
    (forall( (|h_$20| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$18| $@Map@@ref@To@Bool@@) (|Ex2_$3| $@Map@@ref@To@Bool@@))(= (InvNCNCEx |h_$20| |Ex1_$18| |Ex2_$3|) (forall( (|o_$29| ref) (|o'_$6| ref))(=> (and (and (and (not (= |o'_$6| null)) (not (= |o_$29| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$18| |o_$29|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$3| |o'_$6|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$20| |o_$29| LNC) |o'_$6|) (Sub (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$20| |o'_$6| LNC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$20| |o_$29| LNC)))))))
    (forall( (|h_$21| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$19| $@Map@@ref@To@Bool@@) (|Ex2_$4| $@Map@@ref@To@Bool@@))(= (InvPCPCEx |h_$21| |Ex1_$19| |Ex2_$4|) (forall( (|o_$30| ref) (|o'_$7| ref))(!(=> (and (and (and (not (= |o'_$7| null)) (not (= |o_$30| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$19| |o_$30|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$4| |o'_$7|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$21| |o_$30| LPC) |o'_$7|) (Sub (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$21| |o'_$7| LPC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$21| |o_$30| LPC))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$21| |o_$30| LPC) |o'_$7|))))))
    (forall( (|h_$22| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$20| $@Map@@ref@To@Bool@@) (|Ex2_$5| $@Map@@ref@To@Bool@@))(= (InvpEx |h_$22| |Ex1_$20| |Ex2_$5|) (forall( (|o_$31| ref) (|o'_$8| ref))(=> (and (and (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$20| |o_$31|)) (not (= |o_$31| null))) (not (= |o'_$8| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$5| |o'_$8|))) (= (= |o'_$8| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$22| |o_$31| Lp)) (= |o_$31| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$22| |o'_$8| Ln)))))))
    (forall( (|h_$3| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$1| $@Map@@ref@To@Bool@@))(= (InvNCPCEx |h_$3| |Ex1_$1|) (forall( (|o_$12| ref))(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$1| |o_$12|)) (not (= |o_$12| null))) (Disjoint (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$3| |o_$12| LNC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$3| |o_$12| LPC))))))
    (forall( (|h_$4| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$2| $@Map@@ref@To@Bool@@))(= (InvNCn1Ex |h_$4| |Ex1_$2|) (forall( (|o_$13| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$2| |o_$13|)) (not (= |o_$13| null))) (=> (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$4| |o_$13| Ln)) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$4| |o_$13| LNC) Empty)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$4| |o_$13| Ln))))))
    (forall( (|h_$45| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex| $@Map@@ref@To@Bool@@))(!(= (and (InvpEx |h_$45| |Ex| |Ex|) (and (InvPCPCEx |h_$45| |Ex| |Ex|) (and (InvNCNCEx |h_$45| |Ex| |Ex|) (and (InvLL2Ex |h_$45| |Ex| |Ex|) (and (InvLL1Ex |h_$45| |Ex| |Ex|) (and (InvLeEx |h_$45| |Ex| |Ex|) (and (InvLbEx |h_$45| |Ex| |Ex|) (and (Invb3Ex |h_$45| |Ex|) (and (Invb2Ex |h_$45| |Ex|) (and (Invb1Ex |h_$45| |Ex|) (and (and (InvPCp2Ex |h_$45| |Ex|) (and (InvPCp1Ex |h_$45| |Ex|) (and (Inve3Ex |h_$45| |Ex|) (and (Inve2Ex |h_$45| |Ex|) (and (and (InvNCoEx |h_$45| |Ex|) (and (InvNCn2Ex |h_$45| |Ex|) (and (and (InvNCPCEx |h_$45| |Ex|) (and (InvLEx |h_$45| |Ex|) (InvIsGoodRegionsListEx |h_$45| |Ex|))) (InvNCn1Ex |h_$45| |Ex|)))) (Inve1Ex |h_$45| |Ex|)))))) (InvPCoEx |h_$45| |Ex|)))))))))))) (InvListEx |h_$45| |Ex|))  :pattern ( (InvListEx |h_$45| |Ex|))))
    (forall( (|h_$46| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(!(= (InvListEx |h_$46| Empty) (InvList |h_$46|))  :pattern ( (InvList |h_$46|))))
    (forall( (|h_$47| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|list| ref))(= (ListClassInv |h_$47| |list|) (=> (not (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$47| |list| List_head))) (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$47| |list| List_head) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$47| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$47| |list| List_head) Lb)) (forall( (|o_$32| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$47| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$47| |list| List_head) LL) |o_$32|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$47| |o_$32| Node_next) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$47| |o_$32| Ln))))))))
    (forall( (|h_$48| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|list_$0| ref) (|el_$0| ref))(= (InList |h_$48| |list_$0| |el_$0|) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$48| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$48| |list_$0| List_head) LL) |el_$0|) (not (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$48| |list_$0| List_head))))))
    (forall( (|h_$5| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$3| $@Map@@ref@To@Bool@@))(= (InvNCn2Ex |h_$5| |Ex1_$3|) (forall( (|o_$14| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$3| |o_$14|)) (not (= |o_$14| null))) (=> (not (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$5| |o_$14| Ln))) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$5| |o_$14| LNC) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$5| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$5| |o_$14| Ln) LNC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$5| |o_$14| Ln)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$5| |o_$14| Ln) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$5| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$5| |o_$14| Ln) LNC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$5| |o_$14| Ln))))))
    (forall( (|h_$6| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$4| $@Map@@ref@To@Bool@@))(= (InvNCoEx |h_$6| |Ex1_$4|) (forall( (|o_$15| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$4| |o_$15|)) (not (= |o_$15| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$6| |o_$15| LNC) |o_$15|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$6| |o_$15| LNC))))))
    (forall( (|h_$7| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$5| $@Map@@ref@To@Bool@@))(= (Inve1Ex |h_$7| |Ex1_$5|) (forall( (|o_$16| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$5| |o_$16|)) (not (= |o_$16| null))) (=> (not (= |o_$16| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$7| |o_$16| Le))) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$7| |o_$16| LNC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$7| |o_$16| Le))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$7| |o_$16| Le))))))
    (forall( (|h_$8| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$6| $@Map@@ref@To@Bool@@))(= (Inve2Ex |h_$8| |Ex1_$6|) (forall( (|o_$17| ref))(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$6| |o_$17|)) (not (= |o_$17| null))) (= (= |o_$17| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$8| |o_$17| Le)) (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$8| |o_$17| Ln)))))))
    (forall( (|h_$9| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$7| $@Map@@ref@To@Bool@@))(= (Inve3Ex |h_$9| |Ex1_$7|) (forall( (|o_$18| ref))(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$7| |o_$18|)) (not (= |o_$18| null))) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$9| |o_$18| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$9| |o_$18| Le))))))
    (forall( (|h| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o| ref))(= (IsEmptyList |h| |o|) (and (= |o| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h| |o| Lb)) (and (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h| |o| LPC) Empty) (and (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h| |o| Lp)) (and (= |o| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h| |o| Le)) (and (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h| |o| LNC) Empty) (and (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h| |o| Ln)) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h| |o| LL) (Singleton |o|))))))))))
    (forall( (|o_$1| ref))(not (MapRead$$@Map@@ref@To@Bool@@$ Empty |o_$1|)))
    (forall( (|r_$0| $@Map@@ref@To@Bool@@) (|o_$7| ref) (|o'_$0| ref))(= (or (MapRead$$@Map@@ref@To@Bool@@$ |r_$0| |o'_$0|) (= |o_$7| |o'_$0|)) (MapRead$$@Map@@ref@To@Bool@@$ (AddEl |r_$0| |o_$7|) |o'_$0|)))
    (forall( (|r_$3| $@Map@@ref@To@Bool@@))(= (IsGoodRegion |r_$3|) (not (MapRead$$@Map@@ref@To@Bool@@$ |r_$3| null))))
    (forall( (|r| ref) (|o_$2| ref))(= (MapRead$$@Map@@ref@To@Bool@@$ (Singleton |r|) |o_$2|) (= |r| |o_$2|)))
    (forall( (|s_$0| $@Map@@ref@To@Bool@@) (|t| $@Map@@ref@To@Bool@@))(=> (Equal |s_$0| |t|) (= |t| |s_$0|)))
  )
    anon0
)))
(let (($root (=> (and true
  )
    $start
)))
   $root
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))

;Commands
   (check-sat)
   ;(get-unsat-core)
