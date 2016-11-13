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
(declare-sort $@Map@@ref@To@Int@@ 0)
(declare-sort ref 0)

;Functions
(declare-fun heap ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@0 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@1 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@10 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@11 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@12 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@13 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@14 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@15 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@16 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@17 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@18 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@19 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@2 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@20 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@21 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@3 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@4 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@5 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@6 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@7 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@8 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@9 ( ) $@Map@@ref@To@Int@@)
(declare-fun MapRead$$@Map@@ref@To@Int@@$ ( $@Map@@ref@To@Int@@ ref ) Int)
(declare-fun MapWrite$$@Map@@ref@To@Int@@$ ( $@Map@@ref@To@Int@@ ref Int ) $@Map@@ref@To@Int@@)
(declare-fun r0 ( ) ref)
(declare-fun r1 ( ) ref)
(declare-fun r2 ( ) ref)

;Predicates
(declare-fun $@condition ( ) Bool)
(declare-fun $@condition_$0 ( ) Bool)
(declare-fun $@condition_$1 ( ) Bool)
(declare-fun $@condition_$2 ( ) Bool)
(declare-fun $@condition_$4 ( ) Bool)
(declare-fun $branchMerge_0 ( ) Bool)
(declare-fun anon12 ( ) Bool)
(declare-fun anon15 ( ) Bool)
(declare-fun anon15_assertion ( ) Bool)
(declare-fun anon16_Else ( ) Bool)
(declare-fun anon16_Then ( ) Bool)
(declare-fun anon17_Else ( ) Bool)
(declare-fun anon17_Then ( ) Bool)
(declare-fun anon18_Else ( ) Bool)
(declare-fun anon18_Then ( ) Bool)
(declare-fun anon19_Else ( ) Bool)
(declare-fun anon19_Then ( ) Bool)
(declare-fun anon20_Else ( ) Bool)
(declare-fun anon20_Then ( ) Bool)
(declare-fun anon3 ( ) Bool)
(declare-fun anon6 ( ) Bool)

;Axioms
   (assert (! (= (MapWrite$$@Map@@ref@To@Int@@$ heap r0 0) heap@0) :named ax_0))
   (assert (! (= heap@1 (MapWrite$$@Map@@ref@To@Int@@$ heap@0 r1 1)) :named ax_1))
   (assert (! (= heap@2 (MapWrite$$@Map@@ref@To@Int@@$ heap@1 r2 2)) :named ax_2))
   (assert (! (= heap@3 (MapWrite$$@Map@@ref@To@Int@@$ heap@2 r1 1)) :named ax_3))
   (assert (! (forall ((|i| ref)(|m| $@Map@@ref@To@Int@@)(|v| Int))(!(= v (MapRead$$@Map@@ref@To@Int@@$ (MapWrite$$@Map@@ref@To@Int@@$ m i v) i)):pattern ( (MapRead$$@Map@@ref@To@Int@@$ (MapWrite$$@Map@@ref@To@Int@@$ m i v) i)) :qid map_1_$@Map@@ref@To@Int@@ :weight 0 )) :named ax_4))
   (assert (! (forall ((|v_1| Int)(|m_1| $@Map@@ref@To@Int@@)(|i_1| ref)(|j| ref))(!(=> (not (= j i_1)) (= (MapRead$$@Map@@ref@To@Int@@$ m_1 j) (MapRead$$@Map@@ref@To@Int@@$ (MapWrite$$@Map@@ref@To@Int@@$ m_1 i_1 v_1) j))):pattern ( (MapRead$$@Map@@ref@To@Int@@$ (MapWrite$$@Map@@ref@To@Int@@$ m_1 i_1 v_1) j)) :qid map_2_$@Map@@ref@To@Int@@ :weight 0 )) :named ax_5))
   (assert (! (not (= r1 r0)) :named ax_6))
   (assert (! (not (= r1 r0)) :named ax_7))
   (assert (! (not (= r2 r0)) :named ax_8))
   (assert (! (not (= r2 r0)) :named ax_9))
   (assert (! (not (= r2 r1)) :named ax_10))
   (assert (! (not (= r2 r1)) :named ax_11))

;Program
(assert (! (and true
(or anon16_Else anon16_Then)
) :named ax_true))
(assert (! (=> anon16_Else (and true 
   (and true
      (= heap@5 (MapWrite$$@Map@@ref@To@Int@@$ heap@3 r2 1))
      (= heap@6 heap@5)
      (not $@condition)
   )
anon3
)) :named ax_anon16_Else))
(assert (! (=> anon16_Then (and true 
   (and true
      $@condition
      (= heap@4 (MapWrite$$@Map@@ref@To@Int@@$ heap@3 r1 1))
      (= heap@6 heap@4)
   )
anon3
)) :named ax_anon16_Then))
(assert (! (=> anon3 (and true 
   (and true
      (= heap@7 (MapWrite$$@Map@@ref@To@Int@@$ heap@6 r2 1))
   )
(or anon17_Else anon17_Then)
)) :named ax_anon3))
(assert (! (=> anon17_Else (and true 
   (and true
      (= heap@10 heap@9)
      (= heap@9 (MapWrite$$@Map@@ref@To@Int@@$ heap@7 r2 2))
      (not $@condition_$0)
   )
anon6
)) :named ax_anon17_Else))
(assert (! (=> anon17_Then (and true 
   (and true
      $@condition_$0
      (= heap@10 heap@8)
      (= heap@8 (MapWrite$$@Map@@ref@To@Int@@$ heap@7 r1 2))
   )
anon6
)) :named ax_anon17_Then))
(assert (! (=> anon6 (and true 
   (and true
      (= heap@11 (MapWrite$$@Map@@ref@To@Int@@$ heap@10 r2 1))
   )
(or anon18_Else anon18_Then)
)) :named ax_anon6))
(assert (! (=> anon18_Else (and true 
   (and true
      (= heap@13 (MapWrite$$@Map@@ref@To@Int@@$ heap@11 r2 3))
      (= heap@14 heap@13)
      (not $@condition_$1)
   )
$branchMerge_0
)) :named ax_anon18_Else))
(assert (! (=> anon18_Then (and true 
   (and true
      $@condition_$1
      (= heap@12 (MapWrite$$@Map@@ref@To@Int@@$ heap@11 r1 3))
      (= heap@14 heap@12)
   )
$branchMerge_0
)) :named ax_anon18_Then))
(assert (! (=> $branchMerge_0 (and true 
   (and true
   )
(or anon19_Else anon19_Then)
)) :named ax_$branchMerge_0))
(assert (! (=> anon19_Else (and true 
   (and true
      (= heap@16 (MapWrite$$@Map@@ref@To@Int@@$ heap@14 r2 4))
      (= heap@17 heap@16)
      (not $@condition_$2)
   )
anon12
)) :named ax_anon19_Else))
(assert (! (=> anon19_Then (and true 
   (and true
      $@condition_$2
      (= heap@15 (MapWrite$$@Map@@ref@To@Int@@$ heap@14 r1 4))
      (= heap@17 heap@15)
   )
anon12
)) :named ax_anon19_Then))
(assert (! (=> anon12 (and true 
   (and true
      (= heap@18 (MapWrite$$@Map@@ref@To@Int@@$ heap@17 r2 1))
   )
(or anon20_Else anon20_Then)
)) :named ax_anon12))
(assert (! (=> anon20_Else (and true 
   (and true
      (= heap@20 (MapWrite$$@Map@@ref@To@Int@@$ heap@18 r2 5))
      (= heap@21 heap@20)
      (not $@condition_$4)
   )
anon15
)) :named ax_anon20_Else))
(assert (! (=> anon20_Then (and true 
   (and true
      $@condition_$4
      (= heap@19 (MapWrite$$@Map@@ref@To@Int@@$ heap@18 r1 5))
      (= heap@21 heap@19)
   )
anon15
)) :named ax_anon20_Then))
(assert (! (=> anon15 (and true 
   (and true
   )
anon15_assertion
)) :named ax_anon15))
(assert (! (=> anon15_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@ref@To@Int@@$ heap@21 r0) 0)
   )
))) :named ax_anon15_assertion))
(assert (=> false (not (and
   anon15_assertion
))))

;Commands
   (check-sat)
   ;(get-unsat-core)
