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
(declare-fun $@condition_$2 ( ) Bool)
(declare-fun $@condition_$3 ( ) Bool)
(declare-fun $@condition_$4 ( ) Bool)
(declare-fun $@condition_$5 ( ) Bool)
(declare-fun $@condition_$6 ( ) Bool)
(declare-fun $@condition_$7 ( ) Bool)
(declare-fun $@condition_$8 ( ) Bool)

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
(assert (not
(let ((anon12_assertion (and
    (= (MapRead$$@Map@@ref@To@Int@@$ heap@17 r0) 0)
)))
(let ((anon15_assertion (and
    (= (MapRead$$@Map@@ref@To@Int@@$ heap@21 r0) 0)
)))
(let ((anon18_assertion (and
    (= (MapRead$$@Map@@ref@To@Int@@$ heap@25 r0) 0)
)))
(let ((anon21_assertion (and
    (= (MapRead$$@Map@@ref@To@Int@@$ heap@29 r0) 0)
)))
(let ((anon24_assertion (and
    (= (MapRead$$@Map@@ref@To@Int@@$ heap@33 r0) 0)
)))
(let ((anon27_assertion (and
    (= (MapRead$$@Map@@ref@To@Int@@$ heap@36 r0) 0)
)))
(let ((anon3_assertion (and
    (= (MapRead$$@Map@@ref@To@Int@@$ heap@6 r0) 0)
)))
(let ((anon30_assertion (and
    (= (MapRead$$@Map@@ref@To@Int@@$ heap@40 r0) 0)
)))
(let ((anon6_assertion (and
    (= (MapRead$$@Map@@ref@To@Int@@$ heap@10 r0) 0)
)))
(let ((anon9_assertion (and
    (= (MapRead$$@Map@@ref@To@Int@@$ heap@14 r0) 0)
)))
(let ((anon30 (=> (and true
  )
    anon30_assertion
)))
(let ((anon40_Else (=> (and true
    (= heap@39 (MapWrite$$@Map@@ref@To@Int@@$ heap@37 r2 10))
    (= heap@39 heap@40)
    (not $@condition_$8)
  )
    anon30
)))
(let ((anon40_Then (=> (and true
    $@condition_$8
    (= heap@38 (MapWrite$$@Map@@ref@To@Int@@$ heap@37 r1 10))
    (= heap@38 heap@40)
  )
    anon30
)))
(let ((anon27@1 (=> (and true
    (= 0 (MapRead$$@Map@@ref@To@Int@@$ heap@36 r0))
    (= heap@37 (MapWrite$$@Map@@ref@To@Int@@$ heap@36 r2 1))
  )
    (and anon40_Else anon40_Then)
)))
(let ((anon27 (=> (and true
  )(and 
    anon27_assertion
    anon27@1
))))
(let ((anon39_Else (=> (and true
    (= heap@35 (MapWrite$$@Map@@ref@To@Int@@$ heap@33 r2 9))
    (= heap@35 heap@36)
    (not $@condition_$7)
  )
    anon27
)))
(let ((anon39_Then (=> (and true
    $@condition_$7
    (= heap@34 (MapWrite$$@Map@@ref@To@Int@@$ heap@33 r1 9))
    (= heap@34 heap@36)
  )
    anon27
)))
(let ((anon24@1 (=> (and true
    (= 0 (MapRead$$@Map@@ref@To@Int@@$ heap@33 r0))
  )
    (and anon39_Else anon39_Then)
)))
(let ((anon24 (=> (and true
  )(and 
    anon24_assertion
    anon24@1
))))
(let ((anon38_Else (=> (and true
    (= heap@32 (MapWrite$$@Map@@ref@To@Int@@$ heap@30 r2 8))
    (= heap@32 heap@33)
    (not $@condition_$6)
  )
    anon24
)))
(let ((anon38_Then (=> (and true
    $@condition_$6
    (= heap@31 (MapWrite$$@Map@@ref@To@Int@@$ heap@30 r1 8))
    (= heap@31 heap@33)
  )
    anon24
)))
(let ((anon21@1 (=> (and true
    (= 0 (MapRead$$@Map@@ref@To@Int@@$ heap@29 r0))
    (= heap@30 (MapWrite$$@Map@@ref@To@Int@@$ heap@29 r2 1))
  )
    (and anon38_Else anon38_Then)
)))
(let ((anon21 (=> (and true
  )(and 
    anon21_assertion
    anon21@1
))))
(let ((anon37_Else (=> (and true
    (= heap@28 (MapWrite$$@Map@@ref@To@Int@@$ heap@26 r2 7))
    (= heap@28 heap@29)
    (not $@condition_$5)
  )
    anon21
)))
(let ((anon37_Then (=> (and true
    $@condition_$5
    (= heap@27 (MapWrite$$@Map@@ref@To@Int@@$ heap@26 r1 7))
    (= heap@27 heap@29)
  )
    anon21
)))
(let ((anon18@1 (=> (and true
    (= 0 (MapRead$$@Map@@ref@To@Int@@$ heap@25 r0))
    (= heap@26 (MapWrite$$@Map@@ref@To@Int@@$ heap@25 r2 1))
  )
    (and anon37_Else anon37_Then)
)))
(let ((anon18 (=> (and true
  )(and 
    anon18_assertion
    anon18@1
))))
(let ((anon36_Else (=> (and true
    (= heap@24 (MapWrite$$@Map@@ref@To@Int@@$ heap@22 r2 6))
    (= heap@24 heap@25)
    (not $@condition_$4)
  )
    anon18
)))
(let ((anon36_Then (=> (and true
    $@condition_$4
    (= heap@23 (MapWrite$$@Map@@ref@To@Int@@$ heap@22 r1 6))
    (= heap@23 heap@25)
  )
    anon18
)))
(let ((anon15@1 (=> (and true
    (= 0 (MapRead$$@Map@@ref@To@Int@@$ heap@21 r0))
    (= heap@22 (MapWrite$$@Map@@ref@To@Int@@$ heap@21 r1 1))
  )
    (and anon36_Else anon36_Then)
)))
(let ((anon15 (=> (and true
  )(and 
    anon15_assertion
    anon15@1
))))
(let ((anon35_Else (=> (and true
    (= heap@20 (MapWrite$$@Map@@ref@To@Int@@$ heap@18 r2 5))
    (= heap@20 heap@21)
    (not $@condition_$3)
  )
    anon15
)))
(let ((anon35_Then (=> (and true
    $@condition_$3
    (= heap@19 (MapWrite$$@Map@@ref@To@Int@@$ heap@18 r1 5))
    (= heap@19 heap@21)
  )
    anon15
)))
(let ((anon12@1 (=> (and true
    (= 0 (MapRead$$@Map@@ref@To@Int@@$ heap@17 r0))
    (= heap@18 (MapWrite$$@Map@@ref@To@Int@@$ heap@17 r2 1))
  )
    (and anon35_Else anon35_Then)
)))
(let ((anon12 (=> (and true
  )(and 
    anon12_assertion
    anon12@1
))))
(let ((anon34_Else (=> (and true
    (= heap@16 (MapWrite$$@Map@@ref@To@Int@@$ heap@14 r2 4))
    (= heap@16 heap@17)
    (not $@condition_$2)
  )
    anon12
)))
(let ((anon34_Then (=> (and true
    $@condition_$2
    (= heap@15 (MapWrite$$@Map@@ref@To@Int@@$ heap@14 r1 4))
    (= heap@15 heap@17)
  )
    anon12
)))
(let ((anon9@1 (=> (and true
    (= 0 (MapRead$$@Map@@ref@To@Int@@$ heap@14 r0))
  )
    (and anon34_Else anon34_Then)
)))
(let ((anon9 (=> (and true
  )(and 
    anon9_assertion
    anon9@1
))))
(let ((anon33_Else (=> (and true
    (= heap@13 (MapWrite$$@Map@@ref@To@Int@@$ heap@11 r2 3))
    (= heap@13 heap@14)
    (not $@condition_$1)
  )
    anon9
)))
(let ((anon33_Then (=> (and true
    $@condition_$1
    (= heap@12 (MapWrite$$@Map@@ref@To@Int@@$ heap@11 r1 3))
    (= heap@12 heap@14)
  )
    anon9
)))
(let ((anon6@1 (=> (and true
    (= 0 (MapRead$$@Map@@ref@To@Int@@$ heap@10 r0))
    (= heap@11 (MapWrite$$@Map@@ref@To@Int@@$ heap@10 r2 1))
  )
    (and anon33_Else anon33_Then)
)))
(let ((anon6 (=> (and true
  )(and 
    anon6_assertion
    anon6@1
))))
(let ((anon32_Else (=> (and true
    (= heap@10 (MapWrite$$@Map@@ref@To@Int@@$ heap@7 r2 2))
    (= heap@10 heap@9)
    (not $@condition_$0)
  )
    anon6
)))
(let ((anon32_Then (=> (and true
    $@condition_$0
    (= heap@10 (MapWrite$$@Map@@ref@To@Int@@$ heap@7 r1 2))
    (= heap@10 heap@8)
  )
    anon6
)))
(let ((anon3@1 (=> (and true
    (= 0 (MapRead$$@Map@@ref@To@Int@@$ heap@6 r0))
    (= heap@7 (MapWrite$$@Map@@ref@To@Int@@$ heap@6 r2 1))
  )
    (and anon32_Else anon32_Then)
)))
(let ((anon3 (=> (and true
  )(and 
    anon3_assertion
    anon3@1
))))
(let ((anon31_Else (=> (and true
    (= heap@5 (MapWrite$$@Map@@ref@To@Int@@$ heap@3 r2 1))
    (= heap@5 heap@6)
    (not $@condition)
  )
    anon3
)))
(let ((anon31_Then (=> (and true
    $@condition
    (= heap@4 (MapWrite$$@Map@@ref@To@Int@@$ heap@3 r1 1))
    (= heap@4 heap@6)
  )
    anon3
)))
(let (($root (=> (and true
  )
    (and anon31_Else anon31_Then)
)))
   $root
))))))))))))))))))))))))))))))))))))))))))))))))))
))

;Commands
   (check-sat)
   ;(get-unsat-core)
