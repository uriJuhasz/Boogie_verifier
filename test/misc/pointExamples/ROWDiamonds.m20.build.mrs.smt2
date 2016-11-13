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
(declare-fun $branchMerge_0 ( ) Bool)
(declare-fun $branchMerge_1 ( ) Bool)
(declare-fun $branchMerge_2 ( ) Bool)
(declare-fun $branchMerge_3 ( ) Bool)
(declare-fun anon12 ( ) Bool)
(declare-fun anon15 ( ) Bool)
(declare-fun anon18 ( ) Bool)
(declare-fun anon21 ( ) Bool)
(declare-fun anon27 ( ) Bool)
(declare-fun anon3 ( ) Bool)
(declare-fun anon30 ( ) Bool)
(declare-fun anon33 ( ) Bool)
(declare-fun anon36 ( ) Bool)
(declare-fun anon42 ( ) Bool)
(declare-fun anon45 ( ) Bool)
(declare-fun anon48 ( ) Bool)
(declare-fun anon51 ( ) Bool)
(declare-fun anon57 ( ) Bool)
(declare-fun anon6 ( ) Bool)
(declare-fun anon60 ( ) Bool)
(declare-fun anon60_assertion ( ) Bool)
(declare-fun anon61_Else ( ) Bool)
(declare-fun anon61_Then ( ) Bool)
(declare-fun anon62_Else ( ) Bool)
(declare-fun anon62_Then ( ) Bool)
(declare-fun anon63_Else ( ) Bool)
(declare-fun anon63_Then ( ) Bool)
(declare-fun anon64_Else ( ) Bool)
(declare-fun anon64_Then ( ) Bool)
(declare-fun anon65_Else ( ) Bool)
(declare-fun anon65_Then ( ) Bool)
(declare-fun anon66_Else ( ) Bool)
(declare-fun anon66_Then ( ) Bool)
(declare-fun anon67_Else ( ) Bool)
(declare-fun anon67_Then ( ) Bool)
(declare-fun anon68_Else ( ) Bool)
(declare-fun anon68_Then ( ) Bool)
(declare-fun anon69_Else ( ) Bool)
(declare-fun anon69_Then ( ) Bool)
(declare-fun anon70_Else ( ) Bool)
(declare-fun anon70_Then ( ) Bool)
(declare-fun anon71_Else ( ) Bool)
(declare-fun anon71_Then ( ) Bool)
(declare-fun anon72_Else ( ) Bool)
(declare-fun anon72_Then ( ) Bool)
(declare-fun anon73_Else ( ) Bool)
(declare-fun anon73_Then ( ) Bool)
(declare-fun anon74_Else ( ) Bool)
(declare-fun anon74_Then ( ) Bool)
(declare-fun anon75_Else ( ) Bool)
(declare-fun anon75_Then ( ) Bool)
(declare-fun anon76_Else ( ) Bool)
(declare-fun anon76_Then ( ) Bool)
(declare-fun anon77_Else ( ) Bool)
(declare-fun anon77_Then ( ) Bool)
(declare-fun anon78_Else ( ) Bool)
(declare-fun anon78_Then ( ) Bool)
(declare-fun anon79_Else ( ) Bool)
(declare-fun anon79_Then ( ) Bool)
(declare-fun anon80_Else ( ) Bool)
(declare-fun anon80_Then ( ) Bool)

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
(or anon61_Else anon61_Then)
) :named ax_true))
(assert (! (=> anon61_Else (and true 
   (and true
      (= heap@5 (MapWrite$$@Map@@ref@To@Int@@$ heap@3 r2 1))
      (= heap@5 heap@6)
      (not $@condition)
   )
anon3
)) :named ax_anon61_Else))
(assert (! (=> anon61_Then (and true 
   (and true
      $@condition
      (= heap@4 (MapWrite$$@Map@@ref@To@Int@@$ heap@3 r1 1))
      (= heap@4 heap@6)
   )
anon3
)) :named ax_anon61_Then))
(assert (! (=> anon3 (and true 
   (and true
      (= heap@7 (MapWrite$$@Map@@ref@To@Int@@$ heap@6 r2 1))
   )
(or anon62_Else anon62_Then)
)) :named ax_anon3))
(assert (! (=> anon62_Else (and true 
   (and true
      (= heap@10 (MapWrite$$@Map@@ref@To@Int@@$ heap@7 r2 2))
      (= heap@10 heap@9)
      (not $@condition_$0)
   )
anon6
)) :named ax_anon62_Else))
(assert (! (=> anon62_Then (and true 
   (and true
      $@condition_$0
      (= heap@10 (MapWrite$$@Map@@ref@To@Int@@$ heap@7 r1 2))
      (= heap@10 heap@8)
   )
anon6
)) :named ax_anon62_Then))
(assert (! (=> anon6 (and true 
   (and true
      (= heap@11 (MapWrite$$@Map@@ref@To@Int@@$ heap@10 r2 1))
   )
(or anon63_Else anon63_Then)
)) :named ax_anon6))
(assert (! (=> anon63_Else (and true 
   (and true
      (= heap@13 (MapWrite$$@Map@@ref@To@Int@@$ heap@11 r2 3))
      (= heap@13 heap@14)
      (not $@condition_$1)
   )
$branchMerge_0
)) :named ax_anon63_Else))
(assert (! (=> anon63_Then (and true 
   (and true
      $@condition_$1
      (= heap@12 (MapWrite$$@Map@@ref@To@Int@@$ heap@11 r1 3))
      (= heap@12 heap@14)
   )
$branchMerge_0
)) :named ax_anon63_Then))
(assert (! (=> $branchMerge_0 (and true 
   (and true
   )
(or anon64_Else anon64_Then)
)) :named ax_$branchMerge_0))
(assert (! (=> anon64_Else (and true 
   (and true
      (= heap@16 (MapWrite$$@Map@@ref@To@Int@@$ heap@14 r2 4))
      (= heap@16 heap@17)
      (not $@condition_$2)
   )
anon12
)) :named ax_anon64_Else))
(assert (! (=> anon64_Then (and true 
   (and true
      $@condition_$2
      (= heap@15 (MapWrite$$@Map@@ref@To@Int@@$ heap@14 r1 4))
      (= heap@15 heap@17)
   )
anon12
)) :named ax_anon64_Then))
(assert (! (=> anon12 (and true 
   (and true
      (= heap@18 (MapWrite$$@Map@@ref@To@Int@@$ heap@17 r2 1))
   )
(or anon65_Else anon65_Then)
)) :named ax_anon12))
(assert (! (=> anon65_Else (and true 
   (and true
      (= heap@20 (MapWrite$$@Map@@ref@To@Int@@$ heap@18 r2 5))
      (= heap@20 heap@21)
      (not $@condition_$4)
   )
anon15
)) :named ax_anon65_Else))
(assert (! (=> anon65_Then (and true 
   (and true
      $@condition_$4
      (= heap@19 (MapWrite$$@Map@@ref@To@Int@@$ heap@18 r1 5))
      (= heap@19 heap@21)
   )
anon15
)) :named ax_anon65_Then))
(assert (! (=> anon15 (and true 
   (and true
      (= heap@22 (MapWrite$$@Map@@ref@To@Int@@$ heap@21 r1 1))
   )
(or anon66_Else anon66_Then)
)) :named ax_anon15))
(assert (! (=> anon66_Else (and true 
   (and true
      (= heap@24 (MapWrite$$@Map@@ref@To@Int@@$ heap@22 r2 6))
      (= heap@24 heap@25)
      (not $@condition_$5)
   )
anon18
)) :named ax_anon66_Else))
(assert (! (=> anon66_Then (and true 
   (and true
      $@condition_$5
      (= heap@23 (MapWrite$$@Map@@ref@To@Int@@$ heap@22 r1 6))
      (= heap@23 heap@25)
   )
anon18
)) :named ax_anon66_Then))
(assert (! (=> anon18 (and true 
   (and true
      (= heap@26 (MapWrite$$@Map@@ref@To@Int@@$ heap@25 r2 1))
   )
(or anon67_Else anon67_Then)
)) :named ax_anon18))
(assert (! (=> anon67_Else (and true 
   (and true
      (= heap@28 (MapWrite$$@Map@@ref@To@Int@@$ heap@26 r2 7))
      (= heap@28 heap@29)
      (not $@condition_$6)
   )
anon21
)) :named ax_anon67_Else))
(assert (! (=> anon67_Then (and true 
   (and true
      $@condition_$6
      (= heap@27 (MapWrite$$@Map@@ref@To@Int@@$ heap@26 r1 7))
      (= heap@27 heap@29)
   )
anon21
)) :named ax_anon67_Then))
(assert (! (=> anon21 (and true 
   (and true
      (= heap@30 (MapWrite$$@Map@@ref@To@Int@@$ heap@29 r2 1))
   )
(or anon68_Else anon68_Then)
)) :named ax_anon21))
(assert (! (=> anon68_Else (and true 
   (and true
      (= heap@32 (MapWrite$$@Map@@ref@To@Int@@$ heap@30 r2 8))
      (= heap@32 heap@33)
      (not $@condition_$7)
   )
$branchMerge_1
)) :named ax_anon68_Else))
(assert (! (=> anon68_Then (and true 
   (and true
      $@condition_$7
      (= heap@31 (MapWrite$$@Map@@ref@To@Int@@$ heap@30 r1 8))
      (= heap@31 heap@33)
   )
$branchMerge_1
)) :named ax_anon68_Then))
(assert (! (=> $branchMerge_1 (and true 
   (and true
   )
(or anon69_Else anon69_Then)
)) :named ax_$branchMerge_1))
(assert (! (=> anon69_Else (and true 
   (and true
      (= heap@35 (MapWrite$$@Map@@ref@To@Int@@$ heap@33 r2 9))
      (= heap@35 heap@36)
      (not $@condition_$8)
   )
anon27
)) :named ax_anon69_Else))
(assert (! (=> anon69_Then (and true 
   (and true
      $@condition_$8
      (= heap@34 (MapWrite$$@Map@@ref@To@Int@@$ heap@33 r1 9))
      (= heap@34 heap@36)
   )
anon27
)) :named ax_anon69_Then))
(assert (! (=> anon27 (and true 
   (and true
      (= heap@37 (MapWrite$$@Map@@ref@To@Int@@$ heap@36 r2 1))
   )
(or anon70_Else anon70_Then)
)) :named ax_anon27))
(assert (! (=> anon70_Else (and true 
   (and true
      (= heap@39 (MapWrite$$@Map@@ref@To@Int@@$ heap@37 r2 10))
      (= heap@39 heap@40)
      (not $@condition_$10)
   )
anon30
)) :named ax_anon70_Else))
(assert (! (=> anon70_Then (and true 
   (and true
      $@condition_$10
      (= heap@38 (MapWrite$$@Map@@ref@To@Int@@$ heap@37 r1 10))
      (= heap@38 heap@40)
   )
anon30
)) :named ax_anon70_Then))
(assert (! (=> anon30 (and true 
   (and true
      (= heap@41 (MapWrite$$@Map@@ref@To@Int@@$ heap@40 r1 1))
   )
(or anon71_Else anon71_Then)
)) :named ax_anon30))
(assert (! (=> anon71_Else (and true 
   (and true
      (= heap@43 (MapWrite$$@Map@@ref@To@Int@@$ heap@41 r2 1))
      (= heap@43 heap@44)
      (not $@condition_$11)
   )
anon33
)) :named ax_anon71_Else))
(assert (! (=> anon71_Then (and true 
   (and true
      $@condition_$11
      (= heap@42 (MapWrite$$@Map@@ref@To@Int@@$ heap@41 r1 1))
      (= heap@42 heap@44)
   )
anon33
)) :named ax_anon71_Then))
(assert (! (=> anon33 (and true 
   (and true
      (= heap@45 (MapWrite$$@Map@@ref@To@Int@@$ heap@44 r2 1))
   )
(or anon72_Else anon72_Then)
)) :named ax_anon33))
(assert (! (=> anon72_Else (and true 
   (and true
      (= heap@47 (MapWrite$$@Map@@ref@To@Int@@$ heap@45 r2 2))
      (= heap@47 heap@48)
      (not $@condition_$12)
   )
anon36
)) :named ax_anon72_Else))
(assert (! (=> anon72_Then (and true 
   (and true
      $@condition_$12
      (= heap@46 (MapWrite$$@Map@@ref@To@Int@@$ heap@45 r1 2))
      (= heap@46 heap@48)
   )
anon36
)) :named ax_anon72_Then))
(assert (! (=> anon36 (and true 
   (and true
      (= heap@49 (MapWrite$$@Map@@ref@To@Int@@$ heap@48 r2 1))
   )
(or anon73_Else anon73_Then)
)) :named ax_anon36))
(assert (! (=> anon73_Else (and true 
   (and true
      (= heap@51 (MapWrite$$@Map@@ref@To@Int@@$ heap@49 r2 3))
      (= heap@51 heap@52)
      (not $@condition_$13)
   )
$branchMerge_2
)) :named ax_anon73_Else))
(assert (! (=> anon73_Then (and true 
   (and true
      $@condition_$13
      (= heap@50 (MapWrite$$@Map@@ref@To@Int@@$ heap@49 r1 3))
      (= heap@50 heap@52)
   )
$branchMerge_2
)) :named ax_anon73_Then))
(assert (! (=> $branchMerge_2 (and true 
   (and true
   )
(or anon74_Else anon74_Then)
)) :named ax_$branchMerge_2))
(assert (! (=> anon74_Else (and true 
   (and true
      (= heap@54 (MapWrite$$@Map@@ref@To@Int@@$ heap@52 r2 4))
      (= heap@54 heap@55)
      (not $@condition_$14)
   )
anon42
)) :named ax_anon74_Else))
(assert (! (=> anon74_Then (and true 
   (and true
      $@condition_$14
      (= heap@53 (MapWrite$$@Map@@ref@To@Int@@$ heap@52 r1 4))
      (= heap@53 heap@55)
   )
anon42
)) :named ax_anon74_Then))
(assert (! (=> anon42 (and true 
   (and true
      (= heap@56 (MapWrite$$@Map@@ref@To@Int@@$ heap@55 r2 1))
   )
(or anon75_Else anon75_Then)
)) :named ax_anon42))
(assert (! (=> anon75_Else (and true 
   (and true
      (= heap@58 (MapWrite$$@Map@@ref@To@Int@@$ heap@56 r2 5))
      (= heap@58 heap@59)
      (not $@condition_$16)
   )
anon45
)) :named ax_anon75_Else))
(assert (! (=> anon75_Then (and true 
   (and true
      $@condition_$16
      (= heap@57 (MapWrite$$@Map@@ref@To@Int@@$ heap@56 r1 5))
      (= heap@57 heap@59)
   )
anon45
)) :named ax_anon75_Then))
(assert (! (=> anon45 (and true 
   (and true
      (= heap@60 (MapWrite$$@Map@@ref@To@Int@@$ heap@59 r1 1))
   )
(or anon76_Else anon76_Then)
)) :named ax_anon45))
(assert (! (=> anon76_Else (and true 
   (and true
      (= heap@62 (MapWrite$$@Map@@ref@To@Int@@$ heap@60 r2 6))
      (= heap@62 heap@63)
      (not $@condition_$17)
   )
anon48
)) :named ax_anon76_Else))
(assert (! (=> anon76_Then (and true 
   (and true
      $@condition_$17
      (= heap@61 (MapWrite$$@Map@@ref@To@Int@@$ heap@60 r1 6))
      (= heap@61 heap@63)
   )
anon48
)) :named ax_anon76_Then))
(assert (! (=> anon48 (and true 
   (and true
      (= heap@64 (MapWrite$$@Map@@ref@To@Int@@$ heap@63 r2 1))
   )
(or anon77_Else anon77_Then)
)) :named ax_anon48))
(assert (! (=> anon77_Else (and true 
   (and true
      (= heap@66 (MapWrite$$@Map@@ref@To@Int@@$ heap@64 r2 7))
      (= heap@66 heap@67)
      (not $@condition_$18)
   )
anon51
)) :named ax_anon77_Else))
(assert (! (=> anon77_Then (and true 
   (and true
      $@condition_$18
      (= heap@65 (MapWrite$$@Map@@ref@To@Int@@$ heap@64 r1 7))
      (= heap@65 heap@67)
   )
anon51
)) :named ax_anon77_Then))
(assert (! (=> anon51 (and true 
   (and true
      (= heap@68 (MapWrite$$@Map@@ref@To@Int@@$ heap@67 r2 1))
   )
(or anon78_Else anon78_Then)
)) :named ax_anon51))
(assert (! (=> anon78_Else (and true 
   (and true
      (= heap@70 (MapWrite$$@Map@@ref@To@Int@@$ heap@68 r2 8))
      (= heap@70 heap@71)
      (not $@condition_$19)
   )
$branchMerge_3
)) :named ax_anon78_Else))
(assert (! (=> anon78_Then (and true 
   (and true
      $@condition_$19
      (= heap@69 (MapWrite$$@Map@@ref@To@Int@@$ heap@68 r1 8))
      (= heap@69 heap@71)
   )
$branchMerge_3
)) :named ax_anon78_Then))
(assert (! (=> $branchMerge_3 (and true 
   (and true
   )
(or anon79_Else anon79_Then)
)) :named ax_$branchMerge_3))
(assert (! (=> anon79_Else (and true 
   (and true
      (= heap@73 (MapWrite$$@Map@@ref@To@Int@@$ heap@71 r2 9))
      (= heap@73 heap@74)
      (not $@condition_$20)
   )
anon57
)) :named ax_anon79_Else))
(assert (! (=> anon79_Then (and true 
   (and true
      $@condition_$20
      (= heap@72 (MapWrite$$@Map@@ref@To@Int@@$ heap@71 r1 9))
      (= heap@72 heap@74)
   )
anon57
)) :named ax_anon79_Then))
(assert (! (=> anon57 (and true 
   (and true
      (= heap@75 (MapWrite$$@Map@@ref@To@Int@@$ heap@74 r2 1))
   )
(or anon80_Else anon80_Then)
)) :named ax_anon57))
(assert (! (=> anon80_Else (and true 
   (and true
      (= heap@77 (MapWrite$$@Map@@ref@To@Int@@$ heap@75 r2 10))
      (= heap@77 heap@78)
      (not $@condition_$22)
   )
anon60
)) :named ax_anon80_Else))
(assert (! (=> anon80_Then (and true 
   (and true
      $@condition_$22
      (= heap@76 (MapWrite$$@Map@@ref@To@Int@@$ heap@75 r1 10))
      (= heap@76 heap@78)
   )
anon60
)) :named ax_anon80_Then))
(assert (! (=> anon60 (and true 
   (and true
   )
anon60_assertion
)) :named ax_anon60))
(assert (! (=> anon60_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@ref@To@Int@@$ heap@78 r0) 0)
   )
))) :named ax_anon60_assertion))
(assert (=> false (not (and
   anon60_assertion
))))

;Commands
   (check-sat)
   ;(get-unsat-core)
