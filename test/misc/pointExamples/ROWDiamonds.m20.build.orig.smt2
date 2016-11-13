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
(declare-fun heap@41 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@42 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@43 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@44 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@45 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@46 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@47 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@48 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@49 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@5 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@50 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@51 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@52 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@53 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@54 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@55 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@56 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@57 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@58 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@59 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@6 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@60 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@61 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@62 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@63 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@64 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@65 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@66 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@67 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@68 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@69 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@7 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@70 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@71 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@72 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@73 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@74 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@75 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@76 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@77 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@78 ( ) $@Map@@ref@To@Int@@)
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
(declare-fun $@condition_$11 ( ) Bool)
(declare-fun $@condition_$12 ( ) Bool)
(declare-fun $@condition_$13 ( ) Bool)
(declare-fun $@condition_$14 ( ) Bool)
(declare-fun $@condition_$16 ( ) Bool)
(declare-fun $@condition_$17 ( ) Bool)
(declare-fun $@condition_$18 ( ) Bool)
(declare-fun $@condition_$19 ( ) Bool)
(declare-fun $@condition_$2 ( ) Bool)
(declare-fun $@condition_$20 ( ) Bool)
(declare-fun $@condition_$22 ( ) Bool)
(declare-fun $@condition_$4 ( ) Bool)
(declare-fun $@condition_$5 ( ) Bool)
(declare-fun $@condition_$6 ( ) Bool)
(declare-fun $@condition_$7 ( ) Bool)
(declare-fun $@condition_$8 ( ) Bool)

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
(assert (not
(let ((anon60_assertion (and
    (= (MapRead$$@Map@@ref@To@Int@@$ heap@78 r0) 0)
)))
(let ((anon60 (=> (and true
  )
    anon60_assertion
)))
(let ((anon80_Else (=> (and true
    (= heap@77 (MapWrite$$@Map@@ref@To@Int@@$ heap@75 r2 10))
    (= heap@78 heap@77)
  )
    anon60
)))
(let ((anon80_Then (=> (and true
    (= heap@76 (MapWrite$$@Map@@ref@To@Int@@$ heap@75 r1 10))
    (= heap@78 heap@76)
  )
    anon60
)))
(let ((anon57 (=> (and true
    (= heap@75 (MapWrite$$@Map@@ref@To@Int@@$ heap@74 r2 1))
  )
    (and anon80_Else anon80_Then)
)))
(let ((anon79_Else (=> (and true
    (= heap@73 (MapWrite$$@Map@@ref@To@Int@@$ heap@71 r2 9))
    (= heap@74 heap@73)
  )
    anon57
)))
(let ((anon79_Then (=> (and true
    (= heap@72 (MapWrite$$@Map@@ref@To@Int@@$ heap@71 r1 9))
    (= heap@74 heap@72)
  )
    anon57
)))
(let (($branchMerge_3 (=> (and true
  )
    (and anon79_Else anon79_Then)
)))
(let ((anon78_Else (=> (and true
    (= heap@70 (MapWrite$$@Map@@ref@To@Int@@$ heap@68 r2 8))
    (= heap@71 heap@70)
  )
    $branchMerge_3
)))
(let ((anon78_Then (=> (and true
    (= heap@69 (MapWrite$$@Map@@ref@To@Int@@$ heap@68 r1 8))
    (= heap@71 heap@69)
  )
    $branchMerge_3
)))
(let ((anon51 (=> (and true
    (= heap@68 (MapWrite$$@Map@@ref@To@Int@@$ heap@67 r2 1))
  )
    (and anon78_Else anon78_Then)
)))
(let ((anon77_Else (=> (and true
    (= heap@66 (MapWrite$$@Map@@ref@To@Int@@$ heap@64 r2 7))
    (= heap@67 heap@66)
  )
    anon51
)))
(let ((anon77_Then (=> (and true
    (= heap@65 (MapWrite$$@Map@@ref@To@Int@@$ heap@64 r1 7))
    (= heap@67 heap@65)
  )
    anon51
)))
(let ((anon48 (=> (and true
    (= heap@64 (MapWrite$$@Map@@ref@To@Int@@$ heap@63 r2 1))
  )
    (and anon77_Else anon77_Then)
)))
(let ((anon76_Else (=> (and true
    (= heap@62 (MapWrite$$@Map@@ref@To@Int@@$ heap@60 r2 6))
    (= heap@63 heap@62)
  )
    anon48
)))
(let ((anon76_Then (=> (and true
    (= heap@61 (MapWrite$$@Map@@ref@To@Int@@$ heap@60 r1 6))
    (= heap@63 heap@61)
  )
    anon48
)))
(let ((anon45 (=> (and true
    (= heap@60 (MapWrite$$@Map@@ref@To@Int@@$ heap@59 r1 1))
  )
    (and anon76_Else anon76_Then)
)))
(let ((anon75_Else (=> (and true
    (= heap@58 (MapWrite$$@Map@@ref@To@Int@@$ heap@56 r2 5))
    (= heap@59 heap@58)
  )
    anon45
)))
(let ((anon75_Then (=> (and true
    (= heap@57 (MapWrite$$@Map@@ref@To@Int@@$ heap@56 r1 5))
    (= heap@59 heap@57)
  )
    anon45
)))
(let ((anon42 (=> (and true
    (= heap@56 (MapWrite$$@Map@@ref@To@Int@@$ heap@55 r2 1))
  )
    (and anon75_Else anon75_Then)
)))
(let ((anon74_Else (=> (and true
    (= heap@54 (MapWrite$$@Map@@ref@To@Int@@$ heap@52 r2 4))
    (= heap@55 heap@54)
  )
    anon42
)))
(let ((anon74_Then (=> (and true
    (= heap@53 (MapWrite$$@Map@@ref@To@Int@@$ heap@52 r1 4))
    (= heap@55 heap@53)
  )
    anon42
)))
(let (($branchMerge_2 (=> (and true
  )
    (and anon74_Else anon74_Then)
)))
(let ((anon73_Else (=> (and true
    (= heap@51 (MapWrite$$@Map@@ref@To@Int@@$ heap@49 r2 3))
    (= heap@52 heap@51)
  )
    $branchMerge_2
)))
(let ((anon73_Then (=> (and true
    (= heap@50 (MapWrite$$@Map@@ref@To@Int@@$ heap@49 r1 3))
    (= heap@52 heap@50)
  )
    $branchMerge_2
)))
(let ((anon36 (=> (and true
    (= heap@49 (MapWrite$$@Map@@ref@To@Int@@$ heap@48 r2 1))
  )
    (and anon73_Else anon73_Then)
)))
(let ((anon72_Else (=> (and true
    (= heap@47 (MapWrite$$@Map@@ref@To@Int@@$ heap@45 r2 2))
    (= heap@48 heap@47)
  )
    anon36
)))
(let ((anon72_Then (=> (and true
    (= heap@46 (MapWrite$$@Map@@ref@To@Int@@$ heap@45 r1 2))
    (= heap@48 heap@46)
  )
    anon36
)))
(let ((anon33 (=> (and true
    (= heap@45 (MapWrite$$@Map@@ref@To@Int@@$ heap@44 r2 1))
  )
    (and anon72_Else anon72_Then)
)))
(let ((anon71_Else (=> (and true
    (= heap@43 (MapWrite$$@Map@@ref@To@Int@@$ heap@41 r2 1))
    (= heap@44 heap@43)
  )
    anon33
)))
(let ((anon71_Then (=> (and true
    (= heap@42 (MapWrite$$@Map@@ref@To@Int@@$ heap@41 r1 1))
    (= heap@44 heap@42)
  )
    anon33
)))
(let ((anon30 (=> (and true
    (= heap@41 (MapWrite$$@Map@@ref@To@Int@@$ heap@40 r1 1))
  )
    (and anon71_Else anon71_Then)
)))
(let ((anon70_Else (=> (and true
    (= heap@39 (MapWrite$$@Map@@ref@To@Int@@$ heap@37 r2 10))
    (= heap@40 heap@39)
  )
    anon30
)))
(let ((anon70_Then (=> (and true
    (= heap@38 (MapWrite$$@Map@@ref@To@Int@@$ heap@37 r1 10))
    (= heap@40 heap@38)
  )
    anon30
)))
(let ((anon27 (=> (and true
    (= heap@37 (MapWrite$$@Map@@ref@To@Int@@$ heap@36 r2 1))
  )
    (and anon70_Else anon70_Then)
)))
(let ((anon69_Else (=> (and true
    (= heap@35 (MapWrite$$@Map@@ref@To@Int@@$ heap@33 r2 9))
    (= heap@36 heap@35)
  )
    anon27
)))
(let ((anon69_Then (=> (and true
    (= heap@34 (MapWrite$$@Map@@ref@To@Int@@$ heap@33 r1 9))
    (= heap@36 heap@34)
  )
    anon27
)))
(let (($branchMerge_1 (=> (and true
  )
    (and anon69_Else anon69_Then)
)))
(let ((anon68_Else (=> (and true
    (= heap@32 (MapWrite$$@Map@@ref@To@Int@@$ heap@30 r2 8))
    (= heap@33 heap@32)
  )
    $branchMerge_1
)))
(let ((anon68_Then (=> (and true
    (= heap@31 (MapWrite$$@Map@@ref@To@Int@@$ heap@30 r1 8))
    (= heap@33 heap@31)
  )
    $branchMerge_1
)))
(let ((anon21 (=> (and true
    (= heap@30 (MapWrite$$@Map@@ref@To@Int@@$ heap@29 r2 1))
  )
    (and anon68_Else anon68_Then)
)))
(let ((anon67_Else (=> (and true
    (= heap@28 (MapWrite$$@Map@@ref@To@Int@@$ heap@26 r2 7))
    (= heap@29 heap@28)
  )
    anon21
)))
(let ((anon67_Then (=> (and true
    (= heap@27 (MapWrite$$@Map@@ref@To@Int@@$ heap@26 r1 7))
    (= heap@29 heap@27)
  )
    anon21
)))
(let ((anon18 (=> (and true
    (= heap@26 (MapWrite$$@Map@@ref@To@Int@@$ heap@25 r2 1))
  )
    (and anon67_Else anon67_Then)
)))
(let ((anon66_Else (=> (and true
    (= heap@24 (MapWrite$$@Map@@ref@To@Int@@$ heap@22 r2 6))
    (= heap@25 heap@24)
  )
    anon18
)))
(let ((anon66_Then (=> (and true
    (= heap@23 (MapWrite$$@Map@@ref@To@Int@@$ heap@22 r1 6))
    (= heap@25 heap@23)
  )
    anon18
)))
(let ((anon15 (=> (and true
    (= heap@22 (MapWrite$$@Map@@ref@To@Int@@$ heap@21 r1 1))
  )
    (and anon66_Else anon66_Then)
)))
(let ((anon65_Else (=> (and true
    (= heap@20 (MapWrite$$@Map@@ref@To@Int@@$ heap@18 r2 5))
    (= heap@21 heap@20)
  )
    anon15
)))
(let ((anon65_Then (=> (and true
    (= heap@19 (MapWrite$$@Map@@ref@To@Int@@$ heap@18 r1 5))
    (= heap@21 heap@19)
  )
    anon15
)))
(let ((anon12 (=> (and true
    (= heap@18 (MapWrite$$@Map@@ref@To@Int@@$ heap@17 r2 1))
  )
    (and anon65_Else anon65_Then)
)))
(let ((anon64_Else (=> (and true
    (= heap@16 (MapWrite$$@Map@@ref@To@Int@@$ heap@14 r2 4))
    (= heap@17 heap@16)
  )
    anon12
)))
(let ((anon64_Then (=> (and true
    (= heap@15 (MapWrite$$@Map@@ref@To@Int@@$ heap@14 r1 4))
    (= heap@17 heap@15)
  )
    anon12
)))
(let (($branchMerge_0 (=> (and true
  )
    (and anon64_Else anon64_Then)
)))
(let ((anon63_Else (=> (and true
    (= heap@13 (MapWrite$$@Map@@ref@To@Int@@$ heap@11 r2 3))
    (= heap@14 heap@13)
  )
    $branchMerge_0
)))
(let ((anon63_Then (=> (and true
    (= heap@12 (MapWrite$$@Map@@ref@To@Int@@$ heap@11 r1 3))
    (= heap@14 heap@12)
  )
    $branchMerge_0
)))
(let ((anon6 (=> (and true
    (= heap@11 (MapWrite$$@Map@@ref@To@Int@@$ heap@10 r2 1))
  )
    (and anon63_Else anon63_Then)
)))
(let ((anon62_Else (=> (and true
    (= heap@9 (MapWrite$$@Map@@ref@To@Int@@$ heap@7 r2 2))
    (= heap@9 heap@10)
  )
    anon6
)))
(let ((anon62_Then (=> (and true
    (= heap@8 (MapWrite$$@Map@@ref@To@Int@@$ heap@7 r1 2))
    (= heap@8 heap@10)
  )
    anon6
)))
(let ((anon3 (=> (and true
    (= heap@7 (MapWrite$$@Map@@ref@To@Int@@$ heap@6 r2 1))
  )
    (and anon62_Else anon62_Then)
)))
(let ((anon61_Else (=> (and true
    (= heap@5 (MapWrite$$@Map@@ref@To@Int@@$ heap@3 r2 1))
    (= heap@6 heap@5)
  )
    anon3
)))
(let ((anon61_Then (=> (and true
    (= heap@4 (MapWrite$$@Map@@ref@To@Int@@$ heap@3 r1 1))
    (= heap@6 heap@4)
  )
    anon3
)))
(let (($root (=> (and true
  )
    (and anon61_Else anon61_Then)
)))
   $root
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))

;Commands
   (check-sat)
   ;(get-unsat-core)
