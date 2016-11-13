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
(declare-fun heap@22 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@23 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@24 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@25 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@26 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@27 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@28 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@29 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@3 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@30 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@31 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@32 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@33 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@34 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@35 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@36 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@37 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@38 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@39 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@4 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@40 ( ) $@Map@@ref@To@Int@@)
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
(declare-fun $@condition_$10 ( ) Bool)
(declare-fun $@condition_$2 ( ) Bool)
(declare-fun $@condition_$4 ( ) Bool)
(declare-fun $@condition_$5 ( ) Bool)
(declare-fun $@condition_$6 ( ) Bool)
(declare-fun $@condition_$7 ( ) Bool)
(declare-fun $@condition_$8 ( ) Bool)
(declare-fun $branchMerge_0 ( ) Bool)
(declare-fun $branchMerge_1 ( ) Bool)
(declare-fun $start ( ) Bool)
(declare-fun anon0 ( ) Bool)
(declare-fun anon12 ( ) Bool)
(declare-fun anon15 ( ) Bool)
(declare-fun anon18 ( ) Bool)
(declare-fun anon21 ( ) Bool)
(declare-fun anon27 ( ) Bool)
(declare-fun anon3 ( ) Bool)
(declare-fun anon30 ( ) Bool)
(declare-fun anon30_assertion ( ) Bool)
(declare-fun anon31_Else ( ) Bool)
(declare-fun anon31_Then ( ) Bool)
(declare-fun anon32_Else ( ) Bool)
(declare-fun anon32_Then ( ) Bool)
(declare-fun anon33_Else ( ) Bool)
(declare-fun anon33_Then ( ) Bool)
(declare-fun anon34_Else ( ) Bool)
(declare-fun anon34_Then ( ) Bool)
(declare-fun anon35_Else ( ) Bool)
(declare-fun anon35_Then ( ) Bool)
(declare-fun anon36_Else ( ) Bool)
(declare-fun anon36_Then ( ) Bool)
(declare-fun anon37_Else ( ) Bool)
(declare-fun anon37_Then ( ) Bool)
(declare-fun anon38_Else ( ) Bool)
(declare-fun anon38_Then ( ) Bool)
(declare-fun anon39_Else ( ) Bool)
(declare-fun anon39_Then ( ) Bool)
(declare-fun anon40_Else ( ) Bool)
(declare-fun anon40_Then ( ) Bool)
(declare-fun anon6 ( ) Bool)
(declare-fun PreconditionGeneratedEntry ( ) Bool)

;Axioms
   (assert (! (forall ((|i| ref)(|m| $@Map@@ref@To@Int@@)(|v| Int))(!(= v (MapRead$$@Map@@ref@To@Int@@$ (MapWrite$$@Map@@ref@To@Int@@$ m i v) i)):pattern ( (MapRead$$@Map@@ref@To@Int@@$ (MapWrite$$@Map@@ref@To@Int@@$ m i v) i)) :qid map_1_$@Map@@ref@To@Int@@ :weight 0 )) :named ax_0))
   (assert (! (forall ((|v_1| Int)(|m_1| $@Map@@ref@To@Int@@)(|i_1| ref)(|j| ref))(!(=> (not (= j i_1)) (= (MapRead$$@Map@@ref@To@Int@@$ m_1 j) (MapRead$$@Map@@ref@To@Int@@$ (MapWrite$$@Map@@ref@To@Int@@$ m_1 i_1 v_1) j))):pattern ( (MapRead$$@Map@@ref@To@Int@@$ (MapWrite$$@Map@@ref@To@Int@@$ m_1 i_1 v_1) j)) :qid map_2_$@Map@@ref@To@Int@@ :weight 0 )) :named ax_1))
   (assert (! (not (= r1 r0)) :named ax_2))
   (assert (! (not (= r1 r0)) :named ax_3))
   (assert (! (not (= r2 r0)) :named ax_4))
   (assert (! (not (= r2 r0)) :named ax_5))
   (assert (! (not (= r2 r1)) :named ax_6))
   (assert (! (not (= r2 r1)) :named ax_7))

;Program
(assert (! (and true
$start
) :named ax_true))
(assert (! (=> $start (and true 
   (and true
   )
PreconditionGeneratedEntry
)) :named ax_$start))
(assert (! (=> PreconditionGeneratedEntry (and true 
   (and true
   )
anon0
)) :named ax_PreconditionGeneratedEntry))
(assert (! (=> anon0 (and true 
   (and true
      (= heap@0 (MapWrite$$@Map@@ref@To@Int@@$ heap r0 0))
      (= heap@1 (MapWrite$$@Map@@ref@To@Int@@$ heap@0 r1 1))
      (= heap@2 (MapWrite$$@Map@@ref@To@Int@@$ heap@1 r2 2))
      (= heap@3 (MapWrite$$@Map@@ref@To@Int@@$ heap@2 r1 1))
   )
(or anon31_Else anon31_Then)
)) :named ax_anon0))
(assert (! (=> anon31_Else (and true 
   (and true
      (= heap@5 (MapWrite$$@Map@@ref@To@Int@@$ heap@3 r2 1))
      (= heap@6 heap@5)
      (not $@condition)
   )
anon3
)) :named ax_anon31_Else))
(assert (! (=> anon31_Then (and true 
   (and true
      $@condition
      (= heap@4 (MapWrite$$@Map@@ref@To@Int@@$ heap@3 r1 1))
      (= heap@6 heap@4)
   )
anon3
)) :named ax_anon31_Then))
(assert (! (=> anon3 (and true 
   (and true
      (= heap@7 (MapWrite$$@Map@@ref@To@Int@@$ heap@6 r2 1))
   )
(or anon32_Else anon32_Then)
)) :named ax_anon3))
(assert (! (=> anon32_Else (and true 
   (and true
      (= heap@10 heap@9)
      (= heap@9 (MapWrite$$@Map@@ref@To@Int@@$ heap@7 r2 2))
      (not $@condition_$0)
   )
anon6
)) :named ax_anon32_Else))
(assert (! (=> anon32_Then (and true 
   (and true
      $@condition_$0
      (= heap@10 heap@8)
      (= heap@8 (MapWrite$$@Map@@ref@To@Int@@$ heap@7 r1 2))
   )
anon6
)) :named ax_anon32_Then))
(assert (! (=> anon6 (and true 
   (and true
      (= heap@11 (MapWrite$$@Map@@ref@To@Int@@$ heap@10 r2 1))
   )
(or anon33_Else anon33_Then)
)) :named ax_anon6))
(assert (! (=> anon33_Else (and true 
   (and true
      (= heap@13 (MapWrite$$@Map@@ref@To@Int@@$ heap@11 r2 3))
      (= heap@14 heap@13)
      (not $@condition_$1)
   )
$branchMerge_0
)) :named ax_anon33_Else))
(assert (! (=> anon33_Then (and true 
   (and true
      $@condition_$1
      (= heap@12 (MapWrite$$@Map@@ref@To@Int@@$ heap@11 r1 3))
      (= heap@14 heap@12)
   )
$branchMerge_0
)) :named ax_anon33_Then))
(assert (! (=> $branchMerge_0 (and true 
   (and true
   )
(or anon34_Else anon34_Then)
)) :named ax_$branchMerge_0))
(assert (! (=> anon34_Else (and true 
   (and true
      (= heap@16 (MapWrite$$@Map@@ref@To@Int@@$ heap@14 r2 4))
      (= heap@17 heap@16)
      (not $@condition_$2)
   )
anon12
)) :named ax_anon34_Else))
(assert (! (=> anon34_Then (and true 
   (and true
      $@condition_$2
      (= heap@15 (MapWrite$$@Map@@ref@To@Int@@$ heap@14 r1 4))
      (= heap@17 heap@15)
   )
anon12
)) :named ax_anon34_Then))
(assert (! (=> anon12 (and true 
   (and true
      (= heap@18 (MapWrite$$@Map@@ref@To@Int@@$ heap@17 r2 1))
   )
(or anon35_Else anon35_Then)
)) :named ax_anon12))
(assert (! (=> anon35_Else (and true 
   (and true
      (= heap@20 (MapWrite$$@Map@@ref@To@Int@@$ heap@18 r2 5))
      (= heap@21 heap@20)
      (not $@condition_$4)
   )
anon15
)) :named ax_anon35_Else))
(assert (! (=> anon35_Then (and true 
   (and true
      $@condition_$4
      (= heap@19 (MapWrite$$@Map@@ref@To@Int@@$ heap@18 r1 5))
      (= heap@21 heap@19)
   )
anon15
)) :named ax_anon35_Then))
(assert (! (=> anon15 (and true 
   (and true
      (= heap@22 (MapWrite$$@Map@@ref@To@Int@@$ heap@21 r1 1))
   )
(or anon36_Else anon36_Then)
)) :named ax_anon15))
(assert (! (=> anon36_Else (and true 
   (and true
      (= heap@24 (MapWrite$$@Map@@ref@To@Int@@$ heap@22 r2 6))
      (= heap@25 heap@24)
      (not $@condition_$5)
   )
anon18
)) :named ax_anon36_Else))
(assert (! (=> anon36_Then (and true 
   (and true
      $@condition_$5
      (= heap@23 (MapWrite$$@Map@@ref@To@Int@@$ heap@22 r1 6))
      (= heap@25 heap@23)
   )
anon18
)) :named ax_anon36_Then))
(assert (! (=> anon18 (and true 
   (and true
      (= heap@26 (MapWrite$$@Map@@ref@To@Int@@$ heap@25 r2 1))
   )
(or anon37_Else anon37_Then)
)) :named ax_anon18))
(assert (! (=> anon37_Else (and true 
   (and true
      (= heap@28 (MapWrite$$@Map@@ref@To@Int@@$ heap@26 r2 7))
      (= heap@29 heap@28)
      (not $@condition_$6)
   )
anon21
)) :named ax_anon37_Else))
(assert (! (=> anon37_Then (and true 
   (and true
      $@condition_$6
      (= heap@27 (MapWrite$$@Map@@ref@To@Int@@$ heap@26 r1 7))
      (= heap@29 heap@27)
   )
anon21
)) :named ax_anon37_Then))
(assert (! (=> anon21 (and true 
   (and true
      (= heap@30 (MapWrite$$@Map@@ref@To@Int@@$ heap@29 r2 1))
   )
(or anon38_Else anon38_Then)
)) :named ax_anon21))
(assert (! (=> anon38_Else (and true 
   (and true
      (= heap@32 (MapWrite$$@Map@@ref@To@Int@@$ heap@30 r2 8))
      (= heap@33 heap@32)
      (not $@condition_$7)
   )
$branchMerge_1
)) :named ax_anon38_Else))
(assert (! (=> anon38_Then (and true 
   (and true
      $@condition_$7
      (= heap@31 (MapWrite$$@Map@@ref@To@Int@@$ heap@30 r1 8))
      (= heap@33 heap@31)
   )
$branchMerge_1
)) :named ax_anon38_Then))
(assert (! (=> $branchMerge_1 (and true 
   (and true
   )
(or anon39_Else anon39_Then)
)) :named ax_$branchMerge_1))
(assert (! (=> anon39_Else (and true 
   (and true
      (= heap@35 (MapWrite$$@Map@@ref@To@Int@@$ heap@33 r2 9))
      (= heap@36 heap@35)
      (not $@condition_$8)
   )
anon27
)) :named ax_anon39_Else))
(assert (! (=> anon39_Then (and true 
   (and true
      $@condition_$8
      (= heap@34 (MapWrite$$@Map@@ref@To@Int@@$ heap@33 r1 9))
      (= heap@36 heap@34)
   )
anon27
)) :named ax_anon39_Then))
(assert (! (=> anon27 (and true 
   (and true
      (= heap@37 (MapWrite$$@Map@@ref@To@Int@@$ heap@36 r2 1))
   )
(or anon40_Else anon40_Then)
)) :named ax_anon27))
(assert (! (=> anon40_Else (and true 
   (and true
      (= heap@39 (MapWrite$$@Map@@ref@To@Int@@$ heap@37 r2 10))
      (= heap@40 heap@39)
      (not $@condition_$10)
   )
anon30
)) :named ax_anon40_Else))
(assert (! (=> anon40_Then (and true 
   (and true
      $@condition_$10
      (= heap@38 (MapWrite$$@Map@@ref@To@Int@@$ heap@37 r1 10))
      (= heap@40 heap@38)
   )
anon30
)) :named ax_anon40_Then))
(assert (! (=> anon30 (and true 
   (and true
   )
anon30_assertion
)) :named ax_anon30))
(assert (! (=> anon30_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@ref@To@Int@@$ heap@40 r0) 0)
   )
))) :named ax_anon30_assertion))
(assert (=> false (not (and
   anon30_assertion
))))

;Commands
   (check-sat)
   ;(get-unsat-core)
