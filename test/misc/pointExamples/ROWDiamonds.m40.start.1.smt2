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
(let ((anon120_assertion (and
    (= (MapRead$$@Map@@ref@To@Int@@$ heap@154 r0) 0)
)))
(let ((anon120 (=> (and true
  )
    anon120_assertion
)))
(let ((anon160_Else (=> (and true
    (= heap@153 (MapWrite$$@Map@@ref@To@Int@@$ heap@151 r2 10))
    (= heap@154 heap@153)
  )
    anon120
)))
(let ((anon160_Then (=> (and true
    (= heap@152 (MapWrite$$@Map@@ref@To@Int@@$ heap@151 r1 10))
    (= heap@154 heap@152)
  )
    anon120
)))
(let ((anon117 (=> (and true
    (= heap@151 (MapWrite$$@Map@@ref@To@Int@@$ heap@150 r2 1))
  )
    (and anon160_Else anon160_Then)
)))
(let ((anon159_Else (=> (and true
    (= heap@149 (MapWrite$$@Map@@ref@To@Int@@$ heap@147 r2 9))
    (= heap@150 heap@149)
  )
    anon117
)))
(let ((anon159_Then (=> (and true
    (= heap@148 (MapWrite$$@Map@@ref@To@Int@@$ heap@147 r1 9))
    (= heap@150 heap@148)
  )
    anon117
)))
(let (($branchMerge_7 (=> (and true
  )
    (and anon159_Else anon159_Then)
)))
(let ((anon158_Else (=> (and true
    (= heap@146 (MapWrite$$@Map@@ref@To@Int@@$ heap@144 r2 8))
    (= heap@147 heap@146)
  )
    $branchMerge_7
)))
(let ((anon158_Then (=> (and true
    (= heap@145 (MapWrite$$@Map@@ref@To@Int@@$ heap@144 r1 8))
    (= heap@147 heap@145)
  )
    $branchMerge_7
)))
(let ((anon111 (=> (and true
    (= heap@144 (MapWrite$$@Map@@ref@To@Int@@$ heap@143 r2 1))
  )
    (and anon158_Else anon158_Then)
)))
(let ((anon157_Else (=> (and true
    (= heap@142 (MapWrite$$@Map@@ref@To@Int@@$ heap@140 r2 7))
    (= heap@143 heap@142)
  )
    anon111
)))
(let ((anon157_Then (=> (and true
    (= heap@141 (MapWrite$$@Map@@ref@To@Int@@$ heap@140 r1 7))
    (= heap@143 heap@141)
  )
    anon111
)))
(let ((anon108 (=> (and true
    (= heap@140 (MapWrite$$@Map@@ref@To@Int@@$ heap@139 r2 1))
  )
    (and anon157_Else anon157_Then)
)))
(let ((anon156_Else (=> (and true
    (= heap@138 (MapWrite$$@Map@@ref@To@Int@@$ heap@136 r2 6))
    (= heap@139 heap@138)
  )
    anon108
)))
(let ((anon156_Then (=> (and true
    (= heap@137 (MapWrite$$@Map@@ref@To@Int@@$ heap@136 r1 6))
    (= heap@139 heap@137)
  )
    anon108
)))
(let ((anon105 (=> (and true
    (= heap@136 (MapWrite$$@Map@@ref@To@Int@@$ heap@135 r1 1))
  )
    (and anon156_Else anon156_Then)
)))
(let ((anon155_Else (=> (and true
    (= heap@134 (MapWrite$$@Map@@ref@To@Int@@$ heap@132 r2 5))
    (= heap@135 heap@134)
  )
    anon105
)))
(let ((anon155_Then (=> (and true
    (= heap@133 (MapWrite$$@Map@@ref@To@Int@@$ heap@132 r1 5))
    (= heap@135 heap@133)
  )
    anon105
)))
(let ((anon102 (=> (and true
    (= heap@132 (MapWrite$$@Map@@ref@To@Int@@$ heap@131 r2 1))
  )
    (and anon155_Else anon155_Then)
)))
(let ((anon154_Else (=> (and true
    (= heap@130 (MapWrite$$@Map@@ref@To@Int@@$ heap@128 r2 4))
    (= heap@131 heap@130)
  )
    anon102
)))
(let ((anon154_Then (=> (and true
    (= heap@129 (MapWrite$$@Map@@ref@To@Int@@$ heap@128 r1 4))
    (= heap@131 heap@129)
  )
    anon102
)))
(let (($branchMerge_6 (=> (and true
  )
    (and anon154_Else anon154_Then)
)))
(let ((anon153_Else (=> (and true
    (= heap@127 (MapWrite$$@Map@@ref@To@Int@@$ heap@125 r2 3))
    (= heap@128 heap@127)
  )
    $branchMerge_6
)))
(let ((anon153_Then (=> (and true
    (= heap@126 (MapWrite$$@Map@@ref@To@Int@@$ heap@125 r1 3))
    (= heap@128 heap@126)
  )
    $branchMerge_6
)))
(let ((anon96 (=> (and true
    (= heap@125 (MapWrite$$@Map@@ref@To@Int@@$ heap@124 r2 1))
  )
    (and anon153_Else anon153_Then)
)))
(let ((anon152_Else (=> (and true
    (= heap@123 (MapWrite$$@Map@@ref@To@Int@@$ heap@121 r2 2))
    (= heap@124 heap@123)
  )
    anon96
)))
(let ((anon152_Then (=> (and true
    (= heap@122 (MapWrite$$@Map@@ref@To@Int@@$ heap@121 r1 2))
    (= heap@124 heap@122)
  )
    anon96
)))
(let ((anon93 (=> (and true
    (= heap@121 (MapWrite$$@Map@@ref@To@Int@@$ heap@120 r2 1))
  )
    (and anon152_Else anon152_Then)
)))
(let ((anon151_Else (=> (and true
    (= heap@119 (MapWrite$$@Map@@ref@To@Int@@$ heap@117 r2 1))
    (= heap@120 heap@119)
  )
    anon93
)))
(let ((anon151_Then (=> (and true
    (= heap@118 (MapWrite$$@Map@@ref@To@Int@@$ heap@117 r1 1))
    (= heap@120 heap@118)
  )
    anon93
)))
(let ((anon90 (=> (and true
    (= heap@117 (MapWrite$$@Map@@ref@To@Int@@$ heap@116 r1 1))
  )
    (and anon151_Else anon151_Then)
)))
(let ((anon150_Else (=> (and true
    (= heap@115 (MapWrite$$@Map@@ref@To@Int@@$ heap@113 r2 10))
    (= heap@116 heap@115)
  )
    anon90
)))
(let ((anon150_Then (=> (and true
    (= heap@114 (MapWrite$$@Map@@ref@To@Int@@$ heap@113 r1 10))
    (= heap@116 heap@114)
  )
    anon90
)))
(let ((anon87 (=> (and true
    (= heap@113 (MapWrite$$@Map@@ref@To@Int@@$ heap@112 r2 1))
  )
    (and anon150_Else anon150_Then)
)))
(let ((anon149_Else (=> (and true
    (= heap@111 (MapWrite$$@Map@@ref@To@Int@@$ heap@109 r2 9))
    (= heap@112 heap@111)
  )
    anon87
)))
(let ((anon149_Then (=> (and true
    (= heap@110 (MapWrite$$@Map@@ref@To@Int@@$ heap@109 r1 9))
    (= heap@112 heap@110)
  )
    anon87
)))
(let (($branchMerge_5 (=> (and true
  )
    (and anon149_Else anon149_Then)
)))
(let ((anon148_Else (=> (and true
    (= heap@108 (MapWrite$$@Map@@ref@To@Int@@$ heap@106 r2 8))
    (= heap@109 heap@108)
  )
    $branchMerge_5
)))
(let ((anon148_Then (=> (and true
    (= heap@107 (MapWrite$$@Map@@ref@To@Int@@$ heap@106 r1 8))
    (= heap@109 heap@107)
  )
    $branchMerge_5
)))
(let ((anon81 (=> (and true
    (= heap@106 (MapWrite$$@Map@@ref@To@Int@@$ heap@105 r2 1))
  )
    (and anon148_Else anon148_Then)
)))
(let ((anon147_Else (=> (and true
    (= heap@104 (MapWrite$$@Map@@ref@To@Int@@$ heap@102 r2 7))
    (= heap@105 heap@104)
  )
    anon81
)))
(let ((anon147_Then (=> (and true
    (= heap@103 (MapWrite$$@Map@@ref@To@Int@@$ heap@102 r1 7))
    (= heap@105 heap@103)
  )
    anon81
)))
(let ((anon78 (=> (and true
    (= heap@102 (MapWrite$$@Map@@ref@To@Int@@$ heap@101 r2 1))
  )
    (and anon147_Else anon147_Then)
)))
(let ((anon146_Else (=> (and true
    (= (MapWrite$$@Map@@ref@To@Int@@$ heap@98 r2 6) heap@100)
    (= heap@101 heap@100)
  )
    anon78
)))
(let ((anon146_Then (=> (and true
    (= heap@99 (MapWrite$$@Map@@ref@To@Int@@$ heap@98 r1 6))
    (= heap@99 heap@101)
  )
    anon78
)))
(let ((anon75 (=> (and true
    (= heap@98 (MapWrite$$@Map@@ref@To@Int@@$ heap@97 r1 1))
  )
    (and anon146_Else anon146_Then)
)))
(let ((anon145_Else (=> (and true
    (= heap@96 (MapWrite$$@Map@@ref@To@Int@@$ heap@94 r2 5))
    (= heap@97 heap@96)
  )
    anon75
)))
(let ((anon145_Then (=> (and true
    (= heap@95 (MapWrite$$@Map@@ref@To@Int@@$ heap@94 r1 5))
    (= heap@97 heap@95)
  )
    anon75
)))
(let ((anon72 (=> (and true
    (= heap@94 (MapWrite$$@Map@@ref@To@Int@@$ heap@93 r2 1))
  )
    (and anon145_Else anon145_Then)
)))
(let ((anon144_Else (=> (and true
    (= heap@92 (MapWrite$$@Map@@ref@To@Int@@$ heap@90 r2 4))
    (= heap@93 heap@92)
  )
    anon72
)))
(let ((anon144_Then (=> (and true
    (= heap@91 (MapWrite$$@Map@@ref@To@Int@@$ heap@90 r1 4))
    (= heap@93 heap@91)
  )
    anon72
)))
(let (($branchMerge_4 (=> (and true
  )
    (and anon144_Else anon144_Then)
)))
(let ((anon143_Else (=> (and true
    (= heap@89 (MapWrite$$@Map@@ref@To@Int@@$ heap@87 r2 3))
    (= heap@90 heap@89)
  )
    $branchMerge_4
)))
(let ((anon143_Then (=> (and true
    (= heap@88 (MapWrite$$@Map@@ref@To@Int@@$ heap@87 r1 3))
    (= heap@90 heap@88)
  )
    $branchMerge_4
)))
(let ((anon66 (=> (and true
    (= heap@87 (MapWrite$$@Map@@ref@To@Int@@$ heap@86 r2 1))
  )
    (and anon143_Else anon143_Then)
)))
(let ((anon142_Else (=> (and true
    (= heap@85 (MapWrite$$@Map@@ref@To@Int@@$ heap@83 r2 2))
    (= heap@86 heap@85)
  )
    anon66
)))
(let ((anon142_Then (=> (and true
    (= heap@84 (MapWrite$$@Map@@ref@To@Int@@$ heap@83 r1 2))
    (= heap@86 heap@84)
  )
    anon66
)))
(let ((anon63 (=> (and true
    (= heap@83 (MapWrite$$@Map@@ref@To@Int@@$ heap@82 r2 1))
  )
    (and anon142_Else anon142_Then)
)))
(let ((anon141_Else (=> (and true
    (= heap@81 (MapWrite$$@Map@@ref@To@Int@@$ heap@79 r2 1))
    (= heap@82 heap@81)
  )
    anon63
)))
(let ((anon141_Then (=> (and true
    (= heap@80 (MapWrite$$@Map@@ref@To@Int@@$ heap@79 r1 1))
    (= heap@82 heap@80)
  )
    anon63
)))
(let ((anon60 (=> (and true
    (= heap@79 (MapWrite$$@Map@@ref@To@Int@@$ heap@78 r1 1))
  )
    (and anon141_Else anon141_Then)
)))
(let ((anon140_Else (=> (and true
    (= heap@77 (MapWrite$$@Map@@ref@To@Int@@$ heap@75 r2 10))
    (= heap@78 heap@77)
  )
    anon60
)))
(let ((anon140_Then (=> (and true
    (= heap@76 (MapWrite$$@Map@@ref@To@Int@@$ heap@75 r1 10))
    (= heap@78 heap@76)
  )
    anon60
)))
(let ((anon57 (=> (and true
    (= heap@75 (MapWrite$$@Map@@ref@To@Int@@$ heap@74 r2 1))
  )
    (and anon140_Else anon140_Then)
)))
(let ((anon139_Else (=> (and true
    (= heap@73 (MapWrite$$@Map@@ref@To@Int@@$ heap@71 r2 9))
    (= heap@74 heap@73)
  )
    anon57
)))
(let ((anon139_Then (=> (and true
    (= heap@72 (MapWrite$$@Map@@ref@To@Int@@$ heap@71 r1 9))
    (= heap@74 heap@72)
  )
    anon57
)))
(let (($branchMerge_3 (=> (and true
  )
    (and anon139_Else anon139_Then)
)))
(let ((anon138_Else (=> (and true
    (= heap@70 (MapWrite$$@Map@@ref@To@Int@@$ heap@68 r2 8))
    (= heap@71 heap@70)
  )
    $branchMerge_3
)))
(let ((anon138_Then (=> (and true
    (= heap@69 (MapWrite$$@Map@@ref@To@Int@@$ heap@68 r1 8))
    (= heap@71 heap@69)
  )
    $branchMerge_3
)))
(let ((anon51 (=> (and true
    (= heap@68 (MapWrite$$@Map@@ref@To@Int@@$ heap@67 r2 1))
  )
    (and anon138_Else anon138_Then)
)))
(let ((anon137_Else (=> (and true
    (= heap@66 (MapWrite$$@Map@@ref@To@Int@@$ heap@64 r2 7))
    (= heap@67 heap@66)
  )
    anon51
)))
(let ((anon137_Then (=> (and true
    (= heap@65 (MapWrite$$@Map@@ref@To@Int@@$ heap@64 r1 7))
    (= heap@67 heap@65)
  )
    anon51
)))
(let ((anon48 (=> (and true
    (= heap@64 (MapWrite$$@Map@@ref@To@Int@@$ heap@63 r2 1))
  )
    (and anon137_Else anon137_Then)
)))
(let ((anon136_Else (=> (and true
    (= heap@62 (MapWrite$$@Map@@ref@To@Int@@$ heap@60 r2 6))
    (= heap@63 heap@62)
  )
    anon48
)))
(let ((anon136_Then (=> (and true
    (= heap@61 (MapWrite$$@Map@@ref@To@Int@@$ heap@60 r1 6))
    (= heap@63 heap@61)
  )
    anon48
)))
(let ((anon45 (=> (and true
    (= heap@60 (MapWrite$$@Map@@ref@To@Int@@$ heap@59 r1 1))
  )
    (and anon136_Else anon136_Then)
)))
(let ((anon135_Else (=> (and true
    (= heap@58 (MapWrite$$@Map@@ref@To@Int@@$ heap@56 r2 5))
    (= heap@59 heap@58)
  )
    anon45
)))
(let ((anon135_Then (=> (and true
    (= heap@57 (MapWrite$$@Map@@ref@To@Int@@$ heap@56 r1 5))
    (= heap@59 heap@57)
  )
    anon45
)))
(let ((anon42 (=> (and true
    (= heap@56 (MapWrite$$@Map@@ref@To@Int@@$ heap@55 r2 1))
  )
    (and anon135_Else anon135_Then)
)))
(let ((anon134_Else (=> (and true
    (= heap@54 (MapWrite$$@Map@@ref@To@Int@@$ heap@52 r2 4))
    (= heap@55 heap@54)
  )
    anon42
)))
(let ((anon134_Then (=> (and true
    (= heap@53 (MapWrite$$@Map@@ref@To@Int@@$ heap@52 r1 4))
    (= heap@55 heap@53)
  )
    anon42
)))
(let (($branchMerge_2 (=> (and true
  )
    (and anon134_Else anon134_Then)
)))
(let ((anon133_Else (=> (and true
    (= heap@51 (MapWrite$$@Map@@ref@To@Int@@$ heap@49 r2 3))
    (= heap@52 heap@51)
  )
    $branchMerge_2
)))
(let ((anon133_Then (=> (and true
    (= heap@50 (MapWrite$$@Map@@ref@To@Int@@$ heap@49 r1 3))
    (= heap@52 heap@50)
  )
    $branchMerge_2
)))
(let ((anon36 (=> (and true
    (= heap@49 (MapWrite$$@Map@@ref@To@Int@@$ heap@48 r2 1))
  )
    (and anon133_Else anon133_Then)
)))
(let ((anon132_Else (=> (and true
    (= heap@47 (MapWrite$$@Map@@ref@To@Int@@$ heap@45 r2 2))
    (= heap@48 heap@47)
  )
    anon36
)))
(let ((anon132_Then (=> (and true
    (= heap@46 (MapWrite$$@Map@@ref@To@Int@@$ heap@45 r1 2))
    (= heap@48 heap@46)
  )
    anon36
)))
(let ((anon33 (=> (and true
    (= heap@45 (MapWrite$$@Map@@ref@To@Int@@$ heap@44 r2 1))
  )
    (and anon132_Else anon132_Then)
)))
(let ((anon131_Else (=> (and true
    (= heap@43 (MapWrite$$@Map@@ref@To@Int@@$ heap@41 r2 1))
    (= heap@44 heap@43)
  )
    anon33
)))
(let ((anon131_Then (=> (and true
    (= heap@42 (MapWrite$$@Map@@ref@To@Int@@$ heap@41 r1 1))
    (= heap@44 heap@42)
  )
    anon33
)))
(let ((anon30 (=> (and true
    (= heap@41 (MapWrite$$@Map@@ref@To@Int@@$ heap@40 r1 1))
  )
    (and anon131_Else anon131_Then)
)))
(let ((anon130_Else (=> (and true
    (= heap@39 (MapWrite$$@Map@@ref@To@Int@@$ heap@37 r2 10))
    (= heap@40 heap@39)
  )
    anon30
)))
(let ((anon130_Then (=> (and true
    (= heap@38 (MapWrite$$@Map@@ref@To@Int@@$ heap@37 r1 10))
    (= heap@40 heap@38)
  )
    anon30
)))
(let ((anon27 (=> (and true
    (= heap@37 (MapWrite$$@Map@@ref@To@Int@@$ heap@36 r2 1))
  )
    (and anon130_Else anon130_Then)
)))
(let ((anon129_Else (=> (and true
    (= heap@35 (MapWrite$$@Map@@ref@To@Int@@$ heap@33 r2 9))
    (= heap@36 heap@35)
  )
    anon27
)))
(let ((anon129_Then (=> (and true
    (= heap@34 (MapWrite$$@Map@@ref@To@Int@@$ heap@33 r1 9))
    (= heap@36 heap@34)
  )
    anon27
)))
(let (($branchMerge_1 (=> (and true
  )
    (and anon129_Else anon129_Then)
)))
(let ((anon128_Else (=> (and true
    (= heap@32 (MapWrite$$@Map@@ref@To@Int@@$ heap@30 r2 8))
    (= heap@33 heap@32)
  )
    $branchMerge_1
)))
(let ((anon128_Then (=> (and true
    (= heap@31 (MapWrite$$@Map@@ref@To@Int@@$ heap@30 r1 8))
    (= heap@33 heap@31)
  )
    $branchMerge_1
)))
(let ((anon21 (=> (and true
    (= heap@30 (MapWrite$$@Map@@ref@To@Int@@$ heap@29 r2 1))
  )
    (and anon128_Else anon128_Then)
)))
(let ((anon127_Else (=> (and true
    (= heap@28 (MapWrite$$@Map@@ref@To@Int@@$ heap@26 r2 7))
    (= heap@29 heap@28)
  )
    anon21
)))
(let ((anon127_Then (=> (and true
    (= heap@27 (MapWrite$$@Map@@ref@To@Int@@$ heap@26 r1 7))
    (= heap@29 heap@27)
  )
    anon21
)))
(let ((anon18 (=> (and true
    (= heap@26 (MapWrite$$@Map@@ref@To@Int@@$ heap@25 r2 1))
  )
    (and anon127_Else anon127_Then)
)))
(let ((anon126_Else (=> (and true
    (= heap@24 (MapWrite$$@Map@@ref@To@Int@@$ heap@22 r2 6))
    (= heap@25 heap@24)
  )
    anon18
)))
(let ((anon126_Then (=> (and true
    (= heap@23 (MapWrite$$@Map@@ref@To@Int@@$ heap@22 r1 6))
    (= heap@25 heap@23)
  )
    anon18
)))
(let ((anon15 (=> (and true
    (= heap@22 (MapWrite$$@Map@@ref@To@Int@@$ heap@21 r1 1))
  )
    (and anon126_Else anon126_Then)
)))
(let ((anon125_Else (=> (and true
    (= heap@20 (MapWrite$$@Map@@ref@To@Int@@$ heap@18 r2 5))
    (= heap@21 heap@20)
  )
    anon15
)))
(let ((anon125_Then (=> (and true
    (= heap@19 (MapWrite$$@Map@@ref@To@Int@@$ heap@18 r1 5))
    (= heap@21 heap@19)
  )
    anon15
)))
(let ((anon12 (=> (and true
    (= heap@18 (MapWrite$$@Map@@ref@To@Int@@$ heap@17 r2 1))
  )
    (and anon125_Else anon125_Then)
)))
(let ((anon124_Else (=> (and true
    (= heap@16 (MapWrite$$@Map@@ref@To@Int@@$ heap@14 r2 4))
    (= heap@17 heap@16)
  )
    anon12
)))
(let ((anon124_Then (=> (and true
    (= heap@15 (MapWrite$$@Map@@ref@To@Int@@$ heap@14 r1 4))
    (= heap@17 heap@15)
  )
    anon12
)))
(let (($branchMerge_0 (=> (and true
  )
    (and anon124_Else anon124_Then)
)))
(let ((anon123_Else (=> (and true
    (= heap@13 (MapWrite$$@Map@@ref@To@Int@@$ heap@11 r2 3))
    (= heap@14 heap@13)
  )
    $branchMerge_0
)))
(let ((anon123_Then (=> (and true
    (= heap@12 (MapWrite$$@Map@@ref@To@Int@@$ heap@11 r1 3))
    (= heap@14 heap@12)
  )
    $branchMerge_0
)))
(let ((anon6 (=> (and true
    (= heap@11 (MapWrite$$@Map@@ref@To@Int@@$ heap@10 r2 1))
  )
    (and anon123_Else anon123_Then)
)))
(let ((anon122_Else (=> (and true
    (= heap@9 (MapWrite$$@Map@@ref@To@Int@@$ heap@7 r2 2))
    (= heap@9 heap@10)
  )
    anon6
)))
(let ((anon122_Then (=> (and true
    (= heap@8 (MapWrite$$@Map@@ref@To@Int@@$ heap@7 r1 2))
    (= heap@8 heap@10)
  )
    anon6
)))
(let ((anon3 (=> (and true
    (= heap@7 (MapWrite$$@Map@@ref@To@Int@@$ heap@6 r2 1))
  )
    (and anon122_Else anon122_Then)
)))
(let ((anon121_Else (=> (and true
    (= heap@5 (MapWrite$$@Map@@ref@To@Int@@$ heap@3 r2 1))
    (= heap@6 heap@5)
  )
    anon3
)))
(let ((anon121_Then (=> (and true
    (= heap@4 (MapWrite$$@Map@@ref@To@Int@@$ heap@3 r1 1))
    (= heap@6 heap@4)
  )
    anon3
)))
(let (($root (=> (and true
  )
    (and anon121_Else anon121_Then)
)))
   $root
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))

;Commands
   (check-sat)
   ;(get-unsat-core)
