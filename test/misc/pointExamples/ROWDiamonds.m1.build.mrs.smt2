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
(declare-fun heap@2 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@3 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@4 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@5 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@6 ( ) $@Map@@ref@To@Int@@)
(declare-fun MapRead$$@Map@@ref@To@Int@@$ ( $@Map@@ref@To@Int@@ ref ) Int)
(declare-fun MapWrite$$@Map@@ref@To@Int@@$ ( $@Map@@ref@To@Int@@ ref Int ) $@Map@@ref@To@Int@@)
(declare-fun r0 ( ) ref)
(declare-fun r1 ( ) ref)
(declare-fun r2 ( ) ref)

;Predicates
(declare-fun $@condition ( ) Bool)
(declare-fun anon3 ( ) Bool)
(declare-fun anon3_assertion ( ) Bool)
(declare-fun anon4_Else ( ) Bool)
(declare-fun anon4_Then ( ) Bool)

;Axioms
   (assert (! (= heap@0 (MapWrite$$@Map@@ref@To@Int@@$ heap r0 0)) :named ax_0))
   (assert (! (= heap@1 (MapWrite$$@Map@@ref@To@Int@@$ heap@0 r1 1)) :named ax_1))
   (assert (! (= heap@2 (MapWrite$$@Map@@ref@To@Int@@$ heap@1 r2 2)) :named ax_2))
   (assert (! (= heap@3 (MapWrite$$@Map@@ref@To@Int@@$ heap@2 r1 1)) :named ax_3))
   (assert (! (forall ((|i| ref)(|m| $@Map@@ref@To@Int@@)(|v| Int))(!(= v (MapRead$$@Map@@ref@To@Int@@$ (MapWrite$$@Map@@ref@To@Int@@$ m i v) i)):pattern ( (MapRead$$@Map@@ref@To@Int@@$ (MapWrite$$@Map@@ref@To@Int@@$ m i v) i)) :qid map_1_$@Map@@ref@To@Int@@ :weight 0 )) :named ax_4))
   (assert (! (forall ((|v_1| Int)(|m_1| $@Map@@ref@To@Int@@)(|i_1| ref)(|j| ref))(!(=> (not (= j i_1)) (= (MapRead$$@Map@@ref@To@Int@@$ m_1 j) (MapRead$$@Map@@ref@To@Int@@$ (MapWrite$$@Map@@ref@To@Int@@$ m_1 i_1 v_1) j))):pattern ( (MapRead$$@Map@@ref@To@Int@@$ (MapWrite$$@Map@@ref@To@Int@@$ m_1 i_1 v_1) j)) :qid map_2_$@Map@@ref@To@Int@@ :weight 0 )) :named ax_5))
   (assert (! (not (= r0 r2)) :named ax_6))
   (assert (! (not (= r1 r0)) :named ax_7))
   (assert (! (not (= r1 r2)) :named ax_8))
   (assert (! (not (= r2 r0)) :named ax_9))
   (assert (! (not (= r2 r1)) :named ax_10))
   (assert (! (not (= true false)) :named ax_11))

;Program
(assert (! (and true
(or anon4_Else anon4_Then)
) :named ax_true))
(assert (! (=> anon4_Else (and true 
   (and true
      (= heap@5 (MapWrite$$@Map@@ref@To@Int@@$ heap@3 r2 1))
      (= heap@5 heap@6)
      (not $@condition)
   )
anon3
)) :named ax_anon4_Else))
(assert (! (=> anon4_Then (and true 
   (and true
      $@condition
      (= heap@4 (MapWrite$$@Map@@ref@To@Int@@$ heap@3 r1 1))
      (= heap@4 heap@6)
   )
anon3
)) :named ax_anon4_Then))
(assert (! (=> anon3 (and true 
   (and true
   )
anon3_assertion
)) :named ax_anon3))
(assert (! (=> anon3_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@ref@To@Int@@$ heap@6 r0) 0)
   )
))) :named ax_anon3_assertion))
(assert (=> false (not (and
   anon3_assertion
))))

;Commands
   (check-sat)
   ;(get-unsat-core)
