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
(declare-fun heap@100 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@101 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@102 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@103 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@104 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@105 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@106 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@107 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@108 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@109 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@11 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@110 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@111 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@112 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@113 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@114 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@115 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@116 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@117 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@118 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@119 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@12 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@120 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@121 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@122 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@123 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@124 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@125 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@126 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@127 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@128 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@129 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@13 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@130 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@131 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@132 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@133 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@134 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@135 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@136 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@137 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@138 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@139 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@14 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@140 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@141 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@142 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@143 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@144 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@145 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@146 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@147 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@148 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@149 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@15 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@150 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@151 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@152 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@153 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@154 ( ) $@Map@@ref@To@Int@@)
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
(declare-fun heap@79 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@8 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@80 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@81 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@82 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@83 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@84 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@85 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@86 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@87 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@88 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@89 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@9 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@90 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@91 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@92 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@93 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@94 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@95 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@96 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@97 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@98 ( ) $@Map@@ref@To@Int@@)
(declare-fun heap@99 ( ) $@Map@@ref@To@Int@@)
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
(declare-fun $@condition_$23 ( ) Bool)
(declare-fun $@condition_$24 ( ) Bool)
(declare-fun $@condition_$25 ( ) Bool)
(declare-fun $@condition_$26 ( ) Bool)
(declare-fun $@condition_$28 ( ) Bool)
(declare-fun $@condition_$29 ( ) Bool)
(declare-fun $@condition_$30 ( ) Bool)
(declare-fun $@condition_$31 ( ) Bool)
(declare-fun $@condition_$32 ( ) Bool)
(declare-fun $@condition_$34 ( ) Bool)
(declare-fun $@condition_$35 ( ) Bool)
(declare-fun $@condition_$36 ( ) Bool)
(declare-fun $@condition_$37 ( ) Bool)
(declare-fun $@condition_$38 ( ) Bool)
(declare-fun $@condition_$4 ( ) Bool)
(declare-fun $@condition_$40 ( ) Bool)
(declare-fun $@condition_$41 ( ) Bool)
(declare-fun $@condition_$42 ( ) Bool)
(declare-fun $@condition_$43 ( ) Bool)
(declare-fun $@condition_$44 ( ) Bool)
(declare-fun $@condition_$46 ( ) Bool)
(declare-fun $@condition_$5 ( ) Bool)
(declare-fun $@condition_$6 ( ) Bool)
(declare-fun $@condition_$7 ( ) Bool)
(declare-fun $@condition_$8 ( ) Bool)
(declare-fun $branchMerge_0 ( ) Bool)
(declare-fun $branchMerge_1 ( ) Bool)
(declare-fun $branchMerge_2 ( ) Bool)
(declare-fun $branchMerge_3 ( ) Bool)
(declare-fun $branchMerge_4 ( ) Bool)
(declare-fun $branchMerge_5 ( ) Bool)
(declare-fun $branchMerge_6 ( ) Bool)
(declare-fun $branchMerge_7 ( ) Bool)
(declare-fun anon102 ( ) Bool)
(declare-fun anon105 ( ) Bool)
(declare-fun anon108 ( ) Bool)
(declare-fun anon111 ( ) Bool)
(declare-fun anon117 ( ) Bool)
(declare-fun anon12 ( ) Bool)
(declare-fun anon120 ( ) Bool)
(declare-fun anon120_assertion ( ) Bool)
(declare-fun anon121_Else ( ) Bool)
(declare-fun anon121_Then ( ) Bool)
(declare-fun anon122_Else ( ) Bool)
(declare-fun anon122_Then ( ) Bool)
(declare-fun anon123_Else ( ) Bool)
(declare-fun anon123_Then ( ) Bool)
(declare-fun anon124_Else ( ) Bool)
(declare-fun anon124_Then ( ) Bool)
(declare-fun anon125_Else ( ) Bool)
(declare-fun anon125_Then ( ) Bool)
(declare-fun anon126_Else ( ) Bool)
(declare-fun anon126_Then ( ) Bool)
(declare-fun anon127_Else ( ) Bool)
(declare-fun anon127_Then ( ) Bool)
(declare-fun anon128_Else ( ) Bool)
(declare-fun anon128_Then ( ) Bool)
(declare-fun anon129_Else ( ) Bool)
(declare-fun anon129_Then ( ) Bool)
(declare-fun anon130_Else ( ) Bool)
(declare-fun anon130_Then ( ) Bool)
(declare-fun anon131_Else ( ) Bool)
(declare-fun anon131_Then ( ) Bool)
(declare-fun anon132_Else ( ) Bool)
(declare-fun anon132_Then ( ) Bool)
(declare-fun anon133_Else ( ) Bool)
(declare-fun anon133_Then ( ) Bool)
(declare-fun anon134_Else ( ) Bool)
(declare-fun anon134_Then ( ) Bool)
(declare-fun anon135_Else ( ) Bool)
(declare-fun anon135_Then ( ) Bool)
(declare-fun anon136_Else ( ) Bool)
(declare-fun anon136_Then ( ) Bool)
(declare-fun anon137_Else ( ) Bool)
(declare-fun anon137_Then ( ) Bool)
(declare-fun anon138_Else ( ) Bool)
(declare-fun anon138_Then ( ) Bool)
(declare-fun anon139_Else ( ) Bool)
(declare-fun anon139_Then ( ) Bool)
(declare-fun anon140_Else ( ) Bool)
(declare-fun anon140_Then ( ) Bool)
(declare-fun anon141_Else ( ) Bool)
(declare-fun anon141_Then ( ) Bool)
(declare-fun anon142_Else ( ) Bool)
(declare-fun anon142_Then ( ) Bool)
(declare-fun anon143_Else ( ) Bool)
(declare-fun anon143_Then ( ) Bool)
(declare-fun anon144_Else ( ) Bool)
(declare-fun anon144_Then ( ) Bool)
(declare-fun anon145_Else ( ) Bool)
(declare-fun anon145_Then ( ) Bool)
(declare-fun anon146_Else ( ) Bool)
(declare-fun anon146_Then ( ) Bool)
(declare-fun anon147_Else ( ) Bool)
(declare-fun anon147_Then ( ) Bool)
(declare-fun anon148_Else ( ) Bool)
(declare-fun anon148_Then ( ) Bool)
(declare-fun anon149_Else ( ) Bool)
(declare-fun anon149_Then ( ) Bool)
(declare-fun anon15 ( ) Bool)
(declare-fun anon150_Else ( ) Bool)
(declare-fun anon150_Then ( ) Bool)
(declare-fun anon151_Else ( ) Bool)
(declare-fun anon151_Then ( ) Bool)
(declare-fun anon152_Else ( ) Bool)
(declare-fun anon152_Then ( ) Bool)
(declare-fun anon153_Else ( ) Bool)
(declare-fun anon153_Then ( ) Bool)
(declare-fun anon154_Else ( ) Bool)
(declare-fun anon154_Then ( ) Bool)
(declare-fun anon155_Else ( ) Bool)
(declare-fun anon155_Then ( ) Bool)
(declare-fun anon156_Else ( ) Bool)
(declare-fun anon156_Then ( ) Bool)
(declare-fun anon157_Else ( ) Bool)
(declare-fun anon157_Then ( ) Bool)
(declare-fun anon158_Else ( ) Bool)
(declare-fun anon158_Then ( ) Bool)
(declare-fun anon159_Else ( ) Bool)
(declare-fun anon159_Then ( ) Bool)
(declare-fun anon160_Else ( ) Bool)
(declare-fun anon160_Then ( ) Bool)
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
(declare-fun anon63 ( ) Bool)
(declare-fun anon66 ( ) Bool)
(declare-fun anon72 ( ) Bool)
(declare-fun anon75 ( ) Bool)
(declare-fun anon78 ( ) Bool)
(declare-fun anon81 ( ) Bool)
(declare-fun anon87 ( ) Bool)
(declare-fun anon90 ( ) Bool)
(declare-fun anon93 ( ) Bool)
(declare-fun anon96 ( ) Bool)

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
(or anon121_Else anon121_Then)
) :named ax_true))
(assert (! (=> anon121_Else (and true 
   (and true
      (= heap@5 (MapWrite$$@Map@@ref@To@Int@@$ heap@3 r2 1))
      (= heap@5 heap@6)
      (not $@condition)
   )
anon3
)) :named ax_anon121_Else))
(assert (! (=> anon121_Then (and true 
   (and true
      $@condition
      (= heap@4 (MapWrite$$@Map@@ref@To@Int@@$ heap@3 r1 1))
      (= heap@4 heap@6)
   )
anon3
)) :named ax_anon121_Then))
(assert (! (=> anon3 (and true 
   (and true
      (= heap@7 (MapWrite$$@Map@@ref@To@Int@@$ heap@6 r2 1))
   )
(or anon122_Else anon122_Then)
)) :named ax_anon3))
(assert (! (=> anon122_Else (and true 
   (and true
      (= heap@10 (MapWrite$$@Map@@ref@To@Int@@$ heap@7 r2 2))
      (= heap@10 heap@9)
      (not $@condition_$0)
   )
anon6
)) :named ax_anon122_Else))
(assert (! (=> anon122_Then (and true 
   (and true
      $@condition_$0
      (= heap@10 (MapWrite$$@Map@@ref@To@Int@@$ heap@7 r1 2))
      (= heap@10 heap@8)
   )
anon6
)) :named ax_anon122_Then))
(assert (! (=> anon6 (and true 
   (and true
      (= heap@11 (MapWrite$$@Map@@ref@To@Int@@$ heap@10 r2 1))
   )
(or anon123_Else anon123_Then)
)) :named ax_anon6))
(assert (! (=> anon123_Else (and true 
   (and true
      (= heap@13 (MapWrite$$@Map@@ref@To@Int@@$ heap@11 r2 3))
      (= heap@13 heap@14)
      (not $@condition_$1)
   )
$branchMerge_0
)) :named ax_anon123_Else))
(assert (! (=> anon123_Then (and true 
   (and true
      $@condition_$1
      (= heap@12 (MapWrite$$@Map@@ref@To@Int@@$ heap@11 r1 3))
      (= heap@12 heap@14)
   )
$branchMerge_0
)) :named ax_anon123_Then))
(assert (! (=> $branchMerge_0 (and true 
   (and true
   )
(or anon124_Else anon124_Then)
)) :named ax_$branchMerge_0))
(assert (! (=> anon124_Else (and true 
   (and true
      (= heap@16 (MapWrite$$@Map@@ref@To@Int@@$ heap@14 r2 4))
      (= heap@16 heap@17)
      (not $@condition_$2)
   )
anon12
)) :named ax_anon124_Else))
(assert (! (=> anon124_Then (and true 
   (and true
      $@condition_$2
      (= heap@15 (MapWrite$$@Map@@ref@To@Int@@$ heap@14 r1 4))
      (= heap@15 heap@17)
   )
anon12
)) :named ax_anon124_Then))
(assert (! (=> anon12 (and true 
   (and true
      (= heap@18 (MapWrite$$@Map@@ref@To@Int@@$ heap@17 r2 1))
   )
(or anon125_Else anon125_Then)
)) :named ax_anon12))
(assert (! (=> anon125_Else (and true 
   (and true
      (= heap@20 (MapWrite$$@Map@@ref@To@Int@@$ heap@18 r2 5))
      (= heap@20 heap@21)
      (not $@condition_$4)
   )
anon15
)) :named ax_anon125_Else))
(assert (! (=> anon125_Then (and true 
   (and true
      $@condition_$4
      (= heap@19 (MapWrite$$@Map@@ref@To@Int@@$ heap@18 r1 5))
      (= heap@19 heap@21)
   )
anon15
)) :named ax_anon125_Then))
(assert (! (=> anon15 (and true 
   (and true
      (= heap@22 (MapWrite$$@Map@@ref@To@Int@@$ heap@21 r1 1))
   )
(or anon126_Else anon126_Then)
)) :named ax_anon15))
(assert (! (=> anon126_Else (and true 
   (and true
      (= heap@24 (MapWrite$$@Map@@ref@To@Int@@$ heap@22 r2 6))
      (= heap@24 heap@25)
      (not $@condition_$5)
   )
anon18
)) :named ax_anon126_Else))
(assert (! (=> anon126_Then (and true 
   (and true
      $@condition_$5
      (= heap@23 (MapWrite$$@Map@@ref@To@Int@@$ heap@22 r1 6))
      (= heap@23 heap@25)
   )
anon18
)) :named ax_anon126_Then))
(assert (! (=> anon18 (and true 
   (and true
      (= heap@26 (MapWrite$$@Map@@ref@To@Int@@$ heap@25 r2 1))
   )
(or anon127_Else anon127_Then)
)) :named ax_anon18))
(assert (! (=> anon127_Else (and true 
   (and true
      (= heap@28 (MapWrite$$@Map@@ref@To@Int@@$ heap@26 r2 7))
      (= heap@28 heap@29)
      (not $@condition_$6)
   )
anon21
)) :named ax_anon127_Else))
(assert (! (=> anon127_Then (and true 
   (and true
      $@condition_$6
      (= heap@27 (MapWrite$$@Map@@ref@To@Int@@$ heap@26 r1 7))
      (= heap@27 heap@29)
   )
anon21
)) :named ax_anon127_Then))
(assert (! (=> anon21 (and true 
   (and true
      (= heap@30 (MapWrite$$@Map@@ref@To@Int@@$ heap@29 r2 1))
   )
(or anon128_Else anon128_Then)
)) :named ax_anon21))
(assert (! (=> anon128_Else (and true 
   (and true
      (= heap@32 (MapWrite$$@Map@@ref@To@Int@@$ heap@30 r2 8))
      (= heap@32 heap@33)
      (not $@condition_$7)
   )
$branchMerge_1
)) :named ax_anon128_Else))
(assert (! (=> anon128_Then (and true 
   (and true
      $@condition_$7
      (= heap@31 (MapWrite$$@Map@@ref@To@Int@@$ heap@30 r1 8))
      (= heap@31 heap@33)
   )
$branchMerge_1
)) :named ax_anon128_Then))
(assert (! (=> $branchMerge_1 (and true 
   (and true
   )
(or anon129_Else anon129_Then)
)) :named ax_$branchMerge_1))
(assert (! (=> anon129_Else (and true 
   (and true
      (= heap@35 (MapWrite$$@Map@@ref@To@Int@@$ heap@33 r2 9))
      (= heap@35 heap@36)
      (not $@condition_$8)
   )
anon27
)) :named ax_anon129_Else))
(assert (! (=> anon129_Then (and true 
   (and true
      $@condition_$8
      (= heap@34 (MapWrite$$@Map@@ref@To@Int@@$ heap@33 r1 9))
      (= heap@34 heap@36)
   )
anon27
)) :named ax_anon129_Then))
(assert (! (=> anon27 (and true 
   (and true
      (= heap@37 (MapWrite$$@Map@@ref@To@Int@@$ heap@36 r2 1))
   )
(or anon130_Else anon130_Then)
)) :named ax_anon27))
(assert (! (=> anon130_Else (and true 
   (and true
      (= heap@39 (MapWrite$$@Map@@ref@To@Int@@$ heap@37 r2 10))
      (= heap@39 heap@40)
      (not $@condition_$10)
   )
anon30
)) :named ax_anon130_Else))
(assert (! (=> anon130_Then (and true 
   (and true
      $@condition_$10
      (= heap@38 (MapWrite$$@Map@@ref@To@Int@@$ heap@37 r1 10))
      (= heap@38 heap@40)
   )
anon30
)) :named ax_anon130_Then))
(assert (! (=> anon30 (and true 
   (and true
      (= heap@41 (MapWrite$$@Map@@ref@To@Int@@$ heap@40 r1 1))
   )
(or anon131_Else anon131_Then)
)) :named ax_anon30))
(assert (! (=> anon131_Else (and true 
   (and true
      (= heap@43 (MapWrite$$@Map@@ref@To@Int@@$ heap@41 r2 1))
      (= heap@43 heap@44)
      (not $@condition_$11)
   )
anon33
)) :named ax_anon131_Else))
(assert (! (=> anon131_Then (and true 
   (and true
      $@condition_$11
      (= heap@42 (MapWrite$$@Map@@ref@To@Int@@$ heap@41 r1 1))
      (= heap@42 heap@44)
   )
anon33
)) :named ax_anon131_Then))
(assert (! (=> anon33 (and true 
   (and true
      (= heap@45 (MapWrite$$@Map@@ref@To@Int@@$ heap@44 r2 1))
   )
(or anon132_Else anon132_Then)
)) :named ax_anon33))
(assert (! (=> anon132_Else (and true 
   (and true
      (= heap@47 (MapWrite$$@Map@@ref@To@Int@@$ heap@45 r2 2))
      (= heap@47 heap@48)
      (not $@condition_$12)
   )
anon36
)) :named ax_anon132_Else))
(assert (! (=> anon132_Then (and true 
   (and true
      $@condition_$12
      (= heap@46 (MapWrite$$@Map@@ref@To@Int@@$ heap@45 r1 2))
      (= heap@46 heap@48)
   )
anon36
)) :named ax_anon132_Then))
(assert (! (=> anon36 (and true 
   (and true
      (= heap@49 (MapWrite$$@Map@@ref@To@Int@@$ heap@48 r2 1))
   )
(or anon133_Else anon133_Then)
)) :named ax_anon36))
(assert (! (=> anon133_Else (and true 
   (and true
      (= heap@51 (MapWrite$$@Map@@ref@To@Int@@$ heap@49 r2 3))
      (= heap@51 heap@52)
      (not $@condition_$13)
   )
$branchMerge_2
)) :named ax_anon133_Else))
(assert (! (=> anon133_Then (and true 
   (and true
      $@condition_$13
      (= heap@50 (MapWrite$$@Map@@ref@To@Int@@$ heap@49 r1 3))
      (= heap@50 heap@52)
   )
$branchMerge_2
)) :named ax_anon133_Then))
(assert (! (=> $branchMerge_2 (and true 
   (and true
   )
(or anon134_Else anon134_Then)
)) :named ax_$branchMerge_2))
(assert (! (=> anon134_Else (and true 
   (and true
      (= heap@54 (MapWrite$$@Map@@ref@To@Int@@$ heap@52 r2 4))
      (= heap@54 heap@55)
      (not $@condition_$14)
   )
anon42
)) :named ax_anon134_Else))
(assert (! (=> anon134_Then (and true 
   (and true
      $@condition_$14
      (= heap@53 (MapWrite$$@Map@@ref@To@Int@@$ heap@52 r1 4))
      (= heap@53 heap@55)
   )
anon42
)) :named ax_anon134_Then))
(assert (! (=> anon42 (and true 
   (and true
      (= heap@56 (MapWrite$$@Map@@ref@To@Int@@$ heap@55 r2 1))
   )
(or anon135_Else anon135_Then)
)) :named ax_anon42))
(assert (! (=> anon135_Else (and true 
   (and true
      (= heap@58 (MapWrite$$@Map@@ref@To@Int@@$ heap@56 r2 5))
      (= heap@58 heap@59)
      (not $@condition_$16)
   )
anon45
)) :named ax_anon135_Else))
(assert (! (=> anon135_Then (and true 
   (and true
      $@condition_$16
      (= heap@57 (MapWrite$$@Map@@ref@To@Int@@$ heap@56 r1 5))
      (= heap@57 heap@59)
   )
anon45
)) :named ax_anon135_Then))
(assert (! (=> anon45 (and true 
   (and true
      (= heap@60 (MapWrite$$@Map@@ref@To@Int@@$ heap@59 r1 1))
   )
(or anon136_Else anon136_Then)
)) :named ax_anon45))
(assert (! (=> anon136_Else (and true 
   (and true
      (= heap@62 (MapWrite$$@Map@@ref@To@Int@@$ heap@60 r2 6))
      (= heap@62 heap@63)
      (not $@condition_$17)
   )
anon48
)) :named ax_anon136_Else))
(assert (! (=> anon136_Then (and true 
   (and true
      $@condition_$17
      (= heap@61 (MapWrite$$@Map@@ref@To@Int@@$ heap@60 r1 6))
      (= heap@61 heap@63)
   )
anon48
)) :named ax_anon136_Then))
(assert (! (=> anon48 (and true 
   (and true
      (= heap@64 (MapWrite$$@Map@@ref@To@Int@@$ heap@63 r2 1))
   )
(or anon137_Else anon137_Then)
)) :named ax_anon48))
(assert (! (=> anon137_Else (and true 
   (and true
      (= heap@66 (MapWrite$$@Map@@ref@To@Int@@$ heap@64 r2 7))
      (= heap@66 heap@67)
      (not $@condition_$18)
   )
anon51
)) :named ax_anon137_Else))
(assert (! (=> anon137_Then (and true 
   (and true
      $@condition_$18
      (= heap@65 (MapWrite$$@Map@@ref@To@Int@@$ heap@64 r1 7))
      (= heap@65 heap@67)
   )
anon51
)) :named ax_anon137_Then))
(assert (! (=> anon51 (and true 
   (and true
      (= heap@68 (MapWrite$$@Map@@ref@To@Int@@$ heap@67 r2 1))
   )
(or anon138_Else anon138_Then)
)) :named ax_anon51))
(assert (! (=> anon138_Else (and true 
   (and true
      (= heap@70 (MapWrite$$@Map@@ref@To@Int@@$ heap@68 r2 8))
      (= heap@70 heap@71)
      (not $@condition_$19)
   )
$branchMerge_3
)) :named ax_anon138_Else))
(assert (! (=> anon138_Then (and true 
   (and true
      $@condition_$19
      (= heap@69 (MapWrite$$@Map@@ref@To@Int@@$ heap@68 r1 8))
      (= heap@69 heap@71)
   )
$branchMerge_3
)) :named ax_anon138_Then))
(assert (! (=> $branchMerge_3 (and true 
   (and true
   )
(or anon139_Else anon139_Then)
)) :named ax_$branchMerge_3))
(assert (! (=> anon139_Else (and true 
   (and true
      (= heap@73 (MapWrite$$@Map@@ref@To@Int@@$ heap@71 r2 9))
      (= heap@73 heap@74)
      (not $@condition_$20)
   )
anon57
)) :named ax_anon139_Else))
(assert (! (=> anon139_Then (and true 
   (and true
      $@condition_$20
      (= heap@72 (MapWrite$$@Map@@ref@To@Int@@$ heap@71 r1 9))
      (= heap@72 heap@74)
   )
anon57
)) :named ax_anon139_Then))
(assert (! (=> anon57 (and true 
   (and true
      (= heap@75 (MapWrite$$@Map@@ref@To@Int@@$ heap@74 r2 1))
   )
(or anon140_Else anon140_Then)
)) :named ax_anon57))
(assert (! (=> anon140_Else (and true 
   (and true
      (= heap@77 (MapWrite$$@Map@@ref@To@Int@@$ heap@75 r2 10))
      (= heap@77 heap@78)
      (not $@condition_$22)
   )
anon60
)) :named ax_anon140_Else))
(assert (! (=> anon140_Then (and true 
   (and true
      $@condition_$22
      (= heap@76 (MapWrite$$@Map@@ref@To@Int@@$ heap@75 r1 10))
      (= heap@76 heap@78)
   )
anon60
)) :named ax_anon140_Then))
(assert (! (=> anon60 (and true 
   (and true
      (= heap@79 (MapWrite$$@Map@@ref@To@Int@@$ heap@78 r1 1))
   )
(or anon141_Else anon141_Then)
)) :named ax_anon60))
(assert (! (=> anon141_Else (and true 
   (and true
      (= heap@81 (MapWrite$$@Map@@ref@To@Int@@$ heap@79 r2 1))
      (= heap@81 heap@82)
      (not $@condition_$23)
   )
anon63
)) :named ax_anon141_Else))
(assert (! (=> anon141_Then (and true 
   (and true
      $@condition_$23
      (= heap@80 (MapWrite$$@Map@@ref@To@Int@@$ heap@79 r1 1))
      (= heap@80 heap@82)
   )
anon63
)) :named ax_anon141_Then))
(assert (! (=> anon63 (and true 
   (and true
      (= heap@83 (MapWrite$$@Map@@ref@To@Int@@$ heap@82 r2 1))
   )
(or anon142_Else anon142_Then)
)) :named ax_anon63))
(assert (! (=> anon142_Else (and true 
   (and true
      (= heap@85 (MapWrite$$@Map@@ref@To@Int@@$ heap@83 r2 2))
      (= heap@85 heap@86)
      (not $@condition_$24)
   )
anon66
)) :named ax_anon142_Else))
(assert (! (=> anon142_Then (and true 
   (and true
      $@condition_$24
      (= heap@84 (MapWrite$$@Map@@ref@To@Int@@$ heap@83 r1 2))
      (= heap@84 heap@86)
   )
anon66
)) :named ax_anon142_Then))
(assert (! (=> anon66 (and true 
   (and true
      (= heap@87 (MapWrite$$@Map@@ref@To@Int@@$ heap@86 r2 1))
   )
(or anon143_Else anon143_Then)
)) :named ax_anon66))
(assert (! (=> anon143_Else (and true 
   (and true
      (= heap@89 (MapWrite$$@Map@@ref@To@Int@@$ heap@87 r2 3))
      (= heap@89 heap@90)
      (not $@condition_$25)
   )
$branchMerge_4
)) :named ax_anon143_Else))
(assert (! (=> anon143_Then (and true 
   (and true
      $@condition_$25
      (= heap@88 (MapWrite$$@Map@@ref@To@Int@@$ heap@87 r1 3))
      (= heap@88 heap@90)
   )
$branchMerge_4
)) :named ax_anon143_Then))
(assert (! (=> $branchMerge_4 (and true 
   (and true
   )
(or anon144_Else anon144_Then)
)) :named ax_$branchMerge_4))
(assert (! (=> anon144_Else (and true 
   (and true
      (= heap@92 (MapWrite$$@Map@@ref@To@Int@@$ heap@90 r2 4))
      (= heap@92 heap@93)
      (not $@condition_$26)
   )
anon72
)) :named ax_anon144_Else))
(assert (! (=> anon144_Then (and true 
   (and true
      $@condition_$26
      (= heap@91 (MapWrite$$@Map@@ref@To@Int@@$ heap@90 r1 4))
      (= heap@91 heap@93)
   )
anon72
)) :named ax_anon144_Then))
(assert (! (=> anon72 (and true 
   (and true
      (= heap@94 (MapWrite$$@Map@@ref@To@Int@@$ heap@93 r2 1))
   )
(or anon145_Else anon145_Then)
)) :named ax_anon72))
(assert (! (=> anon145_Else (and true 
   (and true
      (= heap@96 (MapWrite$$@Map@@ref@To@Int@@$ heap@94 r2 5))
      (= heap@96 heap@97)
      (not $@condition_$28)
   )
anon75
)) :named ax_anon145_Else))
(assert (! (=> anon145_Then (and true 
   (and true
      $@condition_$28
      (= heap@95 (MapWrite$$@Map@@ref@To@Int@@$ heap@94 r1 5))
      (= heap@95 heap@97)
   )
anon75
)) :named ax_anon145_Then))
(assert (! (=> anon75 (and true 
   (and true
      (= heap@98 (MapWrite$$@Map@@ref@To@Int@@$ heap@97 r1 1))
   )
(or anon146_Else anon146_Then)
)) :named ax_anon75))
(assert (! (=> anon146_Else (and true 
   (and true
      (= heap@100 (MapWrite$$@Map@@ref@To@Int@@$ heap@98 r2 6))
      (= heap@100 heap@101)
      (not $@condition_$29)
   )
anon78
)) :named ax_anon146_Else))
(assert (! (=> anon146_Then (and true 
   (and true
      $@condition_$29
      (= heap@101 (MapWrite$$@Map@@ref@To@Int@@$ heap@98 r1 6))
      (= heap@101 heap@99)
   )
anon78
)) :named ax_anon146_Then))
(assert (! (=> anon78 (and true 
   (and true
      (= heap@102 (MapWrite$$@Map@@ref@To@Int@@$ heap@101 r2 1))
   )
(or anon147_Else anon147_Then)
)) :named ax_anon78))
(assert (! (=> anon147_Else (and true 
   (and true
      (= heap@104 (MapWrite$$@Map@@ref@To@Int@@$ heap@102 r2 7))
      (= heap@104 heap@105)
      (not $@condition_$30)
   )
anon81
)) :named ax_anon147_Else))
(assert (! (=> anon147_Then (and true 
   (and true
      $@condition_$30
      (= heap@103 (MapWrite$$@Map@@ref@To@Int@@$ heap@102 r1 7))
      (= heap@103 heap@105)
   )
anon81
)) :named ax_anon147_Then))
(assert (! (=> anon81 (and true 
   (and true
      (= heap@106 (MapWrite$$@Map@@ref@To@Int@@$ heap@105 r2 1))
   )
(or anon148_Else anon148_Then)
)) :named ax_anon81))
(assert (! (=> anon148_Else (and true 
   (and true
      (= heap@108 (MapWrite$$@Map@@ref@To@Int@@$ heap@106 r2 8))
      (= heap@108 heap@109)
      (not $@condition_$31)
   )
$branchMerge_5
)) :named ax_anon148_Else))
(assert (! (=> anon148_Then (and true 
   (and true
      $@condition_$31
      (= heap@107 (MapWrite$$@Map@@ref@To@Int@@$ heap@106 r1 8))
      (= heap@107 heap@109)
   )
$branchMerge_5
)) :named ax_anon148_Then))
(assert (! (=> $branchMerge_5 (and true 
   (and true
   )
(or anon149_Else anon149_Then)
)) :named ax_$branchMerge_5))
(assert (! (=> anon149_Else (and true 
   (and true
      (= heap@111 (MapWrite$$@Map@@ref@To@Int@@$ heap@109 r2 9))
      (= heap@111 heap@112)
      (not $@condition_$32)
   )
anon87
)) :named ax_anon149_Else))
(assert (! (=> anon149_Then (and true 
   (and true
      $@condition_$32
      (= heap@110 (MapWrite$$@Map@@ref@To@Int@@$ heap@109 r1 9))
      (= heap@110 heap@112)
   )
anon87
)) :named ax_anon149_Then))
(assert (! (=> anon87 (and true 
   (and true
      (= heap@113 (MapWrite$$@Map@@ref@To@Int@@$ heap@112 r2 1))
   )
(or anon150_Else anon150_Then)
)) :named ax_anon87))
(assert (! (=> anon150_Else (and true 
   (and true
      (= heap@115 (MapWrite$$@Map@@ref@To@Int@@$ heap@113 r2 10))
      (= heap@115 heap@116)
      (not $@condition_$34)
   )
anon90
)) :named ax_anon150_Else))
(assert (! (=> anon150_Then (and true 
   (and true
      $@condition_$34
      (= heap@114 (MapWrite$$@Map@@ref@To@Int@@$ heap@113 r1 10))
      (= heap@114 heap@116)
   )
anon90
)) :named ax_anon150_Then))
(assert (! (=> anon90 (and true 
   (and true
      (= heap@117 (MapWrite$$@Map@@ref@To@Int@@$ heap@116 r1 1))
   )
(or anon151_Else anon151_Then)
)) :named ax_anon90))
(assert (! (=> anon151_Else (and true 
   (and true
      (= heap@119 (MapWrite$$@Map@@ref@To@Int@@$ heap@117 r2 1))
      (= heap@119 heap@120)
      (not $@condition_$35)
   )
anon93
)) :named ax_anon151_Else))
(assert (! (=> anon151_Then (and true 
   (and true
      $@condition_$35
      (= heap@118 (MapWrite$$@Map@@ref@To@Int@@$ heap@117 r1 1))
      (= heap@118 heap@120)
   )
anon93
)) :named ax_anon151_Then))
(assert (! (=> anon93 (and true 
   (and true
      (= heap@121 (MapWrite$$@Map@@ref@To@Int@@$ heap@120 r2 1))
   )
(or anon152_Else anon152_Then)
)) :named ax_anon93))
(assert (! (=> anon152_Else (and true 
   (and true
      (= heap@123 (MapWrite$$@Map@@ref@To@Int@@$ heap@121 r2 2))
      (= heap@123 heap@124)
      (not $@condition_$36)
   )
anon96
)) :named ax_anon152_Else))
(assert (! (=> anon152_Then (and true 
   (and true
      $@condition_$36
      (= heap@122 (MapWrite$$@Map@@ref@To@Int@@$ heap@121 r1 2))
      (= heap@122 heap@124)
   )
anon96
)) :named ax_anon152_Then))
(assert (! (=> anon96 (and true 
   (and true
      (= heap@125 (MapWrite$$@Map@@ref@To@Int@@$ heap@124 r2 1))
   )
(or anon153_Else anon153_Then)
)) :named ax_anon96))
(assert (! (=> anon153_Else (and true 
   (and true
      (= heap@127 (MapWrite$$@Map@@ref@To@Int@@$ heap@125 r2 3))
      (= heap@127 heap@128)
      (not $@condition_$37)
   )
$branchMerge_6
)) :named ax_anon153_Else))
(assert (! (=> anon153_Then (and true 
   (and true
      $@condition_$37
      (= heap@126 (MapWrite$$@Map@@ref@To@Int@@$ heap@125 r1 3))
      (= heap@126 heap@128)
   )
$branchMerge_6
)) :named ax_anon153_Then))
(assert (! (=> $branchMerge_6 (and true 
   (and true
   )
(or anon154_Else anon154_Then)
)) :named ax_$branchMerge_6))
(assert (! (=> anon154_Else (and true 
   (and true
      (= heap@130 (MapWrite$$@Map@@ref@To@Int@@$ heap@128 r2 4))
      (= heap@130 heap@131)
      (not $@condition_$38)
   )
anon102
)) :named ax_anon154_Else))
(assert (! (=> anon154_Then (and true 
   (and true
      $@condition_$38
      (= heap@129 (MapWrite$$@Map@@ref@To@Int@@$ heap@128 r1 4))
      (= heap@129 heap@131)
   )
anon102
)) :named ax_anon154_Then))
(assert (! (=> anon102 (and true 
   (and true
      (= heap@132 (MapWrite$$@Map@@ref@To@Int@@$ heap@131 r2 1))
   )
(or anon155_Else anon155_Then)
)) :named ax_anon102))
(assert (! (=> anon155_Else (and true 
   (and true
      (= heap@134 (MapWrite$$@Map@@ref@To@Int@@$ heap@132 r2 5))
      (= heap@134 heap@135)
      (not $@condition_$40)
   )
anon105
)) :named ax_anon155_Else))
(assert (! (=> anon155_Then (and true 
   (and true
      $@condition_$40
      (= heap@133 (MapWrite$$@Map@@ref@To@Int@@$ heap@132 r1 5))
      (= heap@133 heap@135)
   )
anon105
)) :named ax_anon155_Then))
(assert (! (=> anon105 (and true 
   (and true
      (= heap@136 (MapWrite$$@Map@@ref@To@Int@@$ heap@135 r1 1))
   )
(or anon156_Else anon156_Then)
)) :named ax_anon105))
(assert (! (=> anon156_Else (and true 
   (and true
      (= heap@138 (MapWrite$$@Map@@ref@To@Int@@$ heap@136 r2 6))
      (= heap@138 heap@139)
      (not $@condition_$41)
   )
anon108
)) :named ax_anon156_Else))
(assert (! (=> anon156_Then (and true 
   (and true
      $@condition_$41
      (= heap@137 (MapWrite$$@Map@@ref@To@Int@@$ heap@136 r1 6))
      (= heap@137 heap@139)
   )
anon108
)) :named ax_anon156_Then))
(assert (! (=> anon108 (and true 
   (and true
      (= heap@140 (MapWrite$$@Map@@ref@To@Int@@$ heap@139 r2 1))
   )
(or anon157_Else anon157_Then)
)) :named ax_anon108))
(assert (! (=> anon157_Else (and true 
   (and true
      (= heap@142 (MapWrite$$@Map@@ref@To@Int@@$ heap@140 r2 7))
      (= heap@142 heap@143)
      (not $@condition_$42)
   )
anon111
)) :named ax_anon157_Else))
(assert (! (=> anon157_Then (and true 
   (and true
      $@condition_$42
      (= heap@141 (MapWrite$$@Map@@ref@To@Int@@$ heap@140 r1 7))
      (= heap@141 heap@143)
   )
anon111
)) :named ax_anon157_Then))
(assert (! (=> anon111 (and true 
   (and true
      (= heap@144 (MapWrite$$@Map@@ref@To@Int@@$ heap@143 r2 1))
   )
(or anon158_Else anon158_Then)
)) :named ax_anon111))
(assert (! (=> anon158_Else (and true 
   (and true
      (= heap@146 (MapWrite$$@Map@@ref@To@Int@@$ heap@144 r2 8))
      (= heap@146 heap@147)
      (not $@condition_$43)
   )
$branchMerge_7
)) :named ax_anon158_Else))
(assert (! (=> anon158_Then (and true 
   (and true
      $@condition_$43
      (= heap@145 (MapWrite$$@Map@@ref@To@Int@@$ heap@144 r1 8))
      (= heap@145 heap@147)
   )
$branchMerge_7
)) :named ax_anon158_Then))
(assert (! (=> $branchMerge_7 (and true 
   (and true
   )
(or anon159_Else anon159_Then)
)) :named ax_$branchMerge_7))
(assert (! (=> anon159_Else (and true 
   (and true
      (= heap@149 (MapWrite$$@Map@@ref@To@Int@@$ heap@147 r2 9))
      (= heap@149 heap@150)
      (not $@condition_$44)
   )
anon117
)) :named ax_anon159_Else))
(assert (! (=> anon159_Then (and true 
   (and true
      $@condition_$44
      (= heap@148 (MapWrite$$@Map@@ref@To@Int@@$ heap@147 r1 9))
      (= heap@148 heap@150)
   )
anon117
)) :named ax_anon159_Then))
(assert (! (=> anon117 (and true 
   (and true
      (= heap@151 (MapWrite$$@Map@@ref@To@Int@@$ heap@150 r2 1))
   )
(or anon160_Else anon160_Then)
)) :named ax_anon117))
(assert (! (=> anon160_Else (and true 
   (and true
      (= heap@153 (MapWrite$$@Map@@ref@To@Int@@$ heap@151 r2 10))
      (= heap@153 heap@154)
      (not $@condition_$46)
   )
anon120
)) :named ax_anon160_Else))
(assert (! (=> anon160_Then (and true 
   (and true
      $@condition_$46
      (= heap@152 (MapWrite$$@Map@@ref@To@Int@@$ heap@151 r1 10))
      (= heap@152 heap@154)
   )
anon120
)) :named ax_anon160_Then))
(assert (! (=> anon120 (and true 
   (and true
   )
anon120_assertion
)) :named ax_anon120))
(assert (! (=> anon120_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@ref@To@Int@@$ heap@154 r0) 0)
   )
))) :named ax_anon120_assertion))
(assert (=> false (not (and
   anon120_assertion
))))

;Commands
   (check-sat)
   ;(get-unsat-core)
