;Analysis time until now:     5s
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
(declare-sort $@Map@@Int@To@Int@@ 0)
(declare-sort $@Map@@ref@To@Bool@@ 0)
(declare-sort field$$@Map@@Int@To@Int@@$ 0)
(declare-sort field$$@Map@@ref@To@Bool@@$ 0)
(declare-sort field$Int$ 0)
(declare-sort field$ref$ 0)
(declare-sort field$TNodeState$ 0)
(declare-sort ref 0)
(declare-sort TNodeState 0)

;Functions
(declare-fun $@bf_14 ( $@Map@@ref@To@Bool@@ ref ref ) Bool)
(declare-fun $@bf_15 ( $@Map@@ref@To@Bool@@ ref ref ) Bool)
(declare-fun $@bf_19 ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ref ) Bool)
(declare-fun $@bf_23 ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ref ) Bool)
(declare-fun $@sk_100 ( ) ref)
(declare-fun $@sk_101 ( ) field$ref$)
(declare-fun $@sk_102 ( ) ref)
(declare-fun $@sk_103 ( ) ref)
(declare-fun $@sk_104 ( ) ref)
(declare-fun $@sk_105 ( ) ref)
(declare-fun $@sk_106 ( ) ref)
(declare-fun $@sk_107 ( ) field$TNodeState$)
(declare-fun $@sk_108 ( ) ref)
(declare-fun $@sk_109 ( ) field$Int$)
(declare-fun $@sk_110 ( ) ref)
(declare-fun $@sk_111 ( ) field$$@Map@@Int@To@Int@@$)
(declare-fun $@sk_112 ( ) ref)
(declare-fun $@sk_113 ( ) field$$@Map@@ref@To@Bool@@$)
(declare-fun $@sk_114 ( ) ref)
(declare-fun $@sk_115 ( ) field$ref$)
(declare-fun $@sk_116 ( ) ref)
(declare-fun $@sk_117 ( ) ref)
(declare-fun $@sk_118 ( ) ref)
(declare-fun $@sk_119 ( ) field$TNodeState$)
(declare-fun $@sk_120 ( ) ref)
(declare-fun $@sk_121 ( ) field$Int$)
(declare-fun $@sk_122 ( ) ref)
(declare-fun $@sk_123 ( ) field$$@Map@@Int@To@Int@@$)
(declare-fun $@sk_124 ( ) ref)
(declare-fun $@sk_125 ( ) field$$@Map@@ref@To@Bool@@$)
(declare-fun $@sk_126 ( ) ref)
(declare-fun $@sk_127 ( ) field$ref$)
(declare-fun $@sk_128 ( ) ref)
(declare-fun $@sk_129 ( ) ref)
(declare-fun $@sk_130 ( ) ref)
(declare-fun $@sk_131 ( ) ref)
(declare-fun $@sk_132 ( ) ref)
(declare-fun $@sk_133 ( ) ref)
(declare-fun $@sk_134 ( ) ref)
(declare-fun $@sk_135 ( ) ref)
(declare-fun $@sk_136 ( ) ref)
(declare-fun $@sk_137 ( ) ref)
(declare-fun $@sk_138 ( ) ref)
(declare-fun $@sk_139 ( ) ref)
(declare-fun $@sk_141 ( ) ref)
(declare-fun $@sk_142 ( ) ref)
(declare-fun $@sk_143 ( ) Int)
(declare-fun $@sk_144 ( ) ref)
(declare-fun $@sk_145 ( ) Int)
(declare-fun $@sk_146 ( ) ref)
(declare-fun $@sk_147 ( ) ref)
(declare-fun $@sk_89 ( ) ref)
(declare-fun $@sk_90 ( ) ref)
(declare-fun $@sk_91 ( ) ref)
(declare-fun $@sk_92 ( ) ref)
(declare-fun $@sk_93 ( ) field$TNodeState$)
(declare-fun $@sk_94 ( ) ref)
(declare-fun $@sk_95 ( ) field$Int$)
(declare-fun $@sk_96 ( ) ref)
(declare-fun $@sk_97 ( ) field$$@Map@@Int@To@Int@@$)
(declare-fun $@sk_98 ( ) ref)
(declare-fun $@sk_99 ( ) field$$@Map@@ref@To@Bool@@$)
(declare-fun $Heap ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@0 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@1 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@10 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@11 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@12 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@2 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@3 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@4 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@5 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@6 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@7 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@8 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@9 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun AddEl ( $@Map@@ref@To@Bool@@ ref ) $@Map@@ref@To@Bool@@)
(declare-fun AddMSet ( $@Map@@Int@To@Int@@ Int ) $@Map@@Int@To@Int@@)
(declare-fun BBSet ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) $@Map@@ref@To@Bool@@)
(declare-fun call0formal@r1@0 ( ) $@Map@@ref@To@Bool@@)
(declare-fun call2formal@to@0 ( ) Int)
(declare-fun Card ( $@Map@@ref@To@Bool@@ ) Int)
(declare-fun CLn ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) ref)
(declare-fun CLp ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) ref)
(declare-fun Empty ( ) $@Map@@ref@To@Bool@@)
(declare-fun EmptyMSet ( ) $@Map@@Int@To@Int@@)
(declare-fun FBP ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ Int ) $@Map@@ref@To@Bool@@)
(declare-fun Lb ( ) field$ref$)
(declare-fun Le ( ) field$ref$)
(declare-fun LL ( ) field$$@Map@@ref@To@Bool@@$)
(declare-fun Ln ( ) field$ref$)
(declare-fun Lp ( ) field$ref$)
(declare-fun MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref field$$@Map@@Int@To@Int@@$ ) $@Map@@Int@To@Int@@)
(declare-fun MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref field$$@Map@@ref@To@Bool@@$ ) $@Map@@ref@To@Bool@@)
(declare-fun MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref field$Int$ ) Int)
(declare-fun MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref field$ref$ ) ref)
(declare-fun MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref field$TNodeState$ ) TNodeState)
(declare-fun MapRead$$@Map@@Int@To@Int@@$ ( $@Map@@Int@To@Int@@ Int ) Int)
(declare-fun MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref field$ref$ ref ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref field$TNodeState$ TNodeState ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun Max ( Int Int ) Int)
(declare-fun MaxMSet ( $@Map@@Int@To@Int@@ ) Int)
(declare-fun Minus ( $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) $@Map@@ref@To@Bool@@)
(declare-fun NA ( ) field$$@Map@@ref@To@Bool@@$)
(declare-fun NACCoSet ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) $@Map@@ref@To@Bool@@)
(declare-fun NACCSet ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) $@Map@@ref@To@Bool@@)
(declare-fun Nbb ( ) field$ref$)
(declare-fun NC ( ) field$$@Map@@ref@To@Bool@@$)
(declare-fun Ncpr ( ) field$Int$)
(declare-fun ND ( ) field$$@Map@@ref@To@Bool@@$)
(declare-fun Ndpr ( ) field$Int$)
(declare-fun Np ( ) field$ref$)
(declare-fun Npr ( ) field$$@Map@@Int@To@Int@@$)
(declare-fun NSt ( ) field$TNodeState$)
(declare-fun Nt ( ) field$ref$)
(declare-fun null ( ) ref)
(declare-fun r ( ) ref)
(declare-fun RemEl ( $@Map@@ref@To@Bool@@ ref ) $@Map@@ref@To@Bool@@)
(declare-fun RemoveMSet ( $@Map@@Int@To@Int@@ Int ) $@Map@@Int@To@Int@@)
(declare-fun Singleton ( ref ) $@Map@@ref@To@Bool@@)
(declare-fun StD ( ) TNodeState)
(declare-fun StF ( ) TNodeState)
(declare-fun StL ( ) TNodeState)
(declare-fun this ( ) ref)
(declare-fun Union ( $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) $@Map@@ref@To@Bool@@)

;Predicates
(declare-fun $@condition ( ) Bool)
(declare-fun $@condition_$0 ( ) Bool)
(declare-fun $@condition_$1 ( ) Bool)
(declare-fun $@condition_$2 ( ) Bool)
(declare-fun $join_2 ( ) Bool)
(declare-fun anon10_Else ( ) Bool)
(declare-fun anon10_Then ( ) Bool)
(declare-fun anon10_Then@3_assertion ( ) Bool)
(declare-fun anon10_Then@4 ( ) Bool)
(declare-fun anon10_Then@4_assertion ( ) Bool)
(declare-fun anon10_Then@5 ( ) Bool)
(declare-fun anon10_Then@5_assertion ( ) Bool)
(declare-fun anon10_Then@6 ( ) Bool)
(declare-fun anon10_Then@6_assertion ( ) Bool)
(declare-fun anon10_Then@7 ( ) Bool)
(declare-fun anon11_Else ( ) Bool)
(declare-fun anon11_Then ( ) Bool)
(declare-fun anon11_Then@1_assertion ( ) Bool)
(declare-fun anon11_Then@2 ( ) Bool)
(declare-fun anon11_Then@4_assertion ( ) Bool)
(declare-fun anon11_Then@5 ( ) Bool)
(declare-fun anon11_Then@5_assertion ( ) Bool)
(declare-fun anon11_Then@6 ( ) Bool)
(declare-fun anon11_Then@6_assertion ( ) Bool)
(declare-fun anon11_Then@7 ( ) Bool)
(declare-fun anon12_Else ( ) Bool)
(declare-fun anon12_Else@2_assertion ( ) Bool)
(declare-fun anon12_Else@3 ( ) Bool)
(declare-fun anon12_Else@4_assertion ( ) Bool)
(declare-fun anon12_Else@5 ( ) Bool)
(declare-fun anon12_Else@5_assertion ( ) Bool)
(declare-fun anon12_Else@6 ( ) Bool)
(declare-fun anon12_Else@6_assertion ( ) Bool)
(declare-fun anon12_Else@7 ( ) Bool)
(declare-fun anon12_Then ( ) Bool)
(declare-fun anon12_Then@4_assertion ( ) Bool)
(declare-fun anon12_Then@5 ( ) Bool)
(declare-fun anon12_Then@5_assertion ( ) Bool)
(declare-fun anon12_Then@6 ( ) Bool)
(declare-fun anon12_Then@6_assertion ( ) Bool)
(declare-fun anon12_Then@7 ( ) Bool)
(declare-fun anon13_Else ( ) Bool)
(declare-fun anon13_Else@1 ( ) Bool)
(declare-fun anon13_Else@1_assertion ( ) Bool)
(declare-fun anon13_Else@2 ( ) Bool)
(declare-fun anon13_Else@3 ( ) Bool)
(declare-fun anon13_Else@3_assertion ( ) Bool)
(declare-fun anon13_Else@4 ( ) Bool)
(declare-fun anon13_Else@4_assertion ( ) Bool)
(declare-fun anon13_Else@5 ( ) Bool)
(declare-fun anon13_Else@5_assertion ( ) Bool)
(declare-fun anon13_Else@6 ( ) Bool)
(declare-fun anon13_Else@6_assertion ( ) Bool)
(declare-fun anon13_Else@7 ( ) Bool)
(declare-fun anon13_Then ( ) Bool)
(declare-fun anon13_Then@1_assertion ( ) Bool)
(declare-fun anon13_Then@2 ( ) Bool)
(declare-fun anon13_Then@5_assertion ( ) Bool)
(declare-fun anon13_Then@6 ( ) Bool)
(declare-fun anon13_Then@6_assertion ( ) Bool)
(declare-fun anon13_Then@7 ( ) Bool)
(declare-fun anon13_Then@7_assertion ( ) Bool)
(declare-fun anon13_Then@8 ( ) Bool)
(declare-fun anon13_Then@8_assertion ( ) Bool)
(declare-fun anon13_Then@9 ( ) Bool)
(declare-fun anon6 ( ) Bool)
(declare-fun anon6@1 ( ) Bool)
(declare-fun anon6@1_assertion ( ) Bool)
(declare-fun anon6@2 ( ) Bool)
(declare-fun anon6_assertion ( ) Bool)
(declare-fun anon9 ( ) Bool)
(declare-fun anon9@1 ( ) Bool)
(declare-fun anon9_assertion ( ) Bool)
(declare-fun Disjoint ( $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun Equal ( $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun EqualMSet ( $@Map@@Int@To@Int@@ $@Map@@Int@To@Int@@ ) Bool)
(declare-fun GeneratedUnifiedExit ( ) Bool)
(declare-fun GeneratedUnifiedExit@1 ( ) Bool)
(declare-fun GeneratedUnifiedExit@1_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@10 ( ) Bool)
(declare-fun GeneratedUnifiedExit@10_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@11 ( ) Bool)
(declare-fun GeneratedUnifiedExit@11_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@12 ( ) Bool)
(declare-fun GeneratedUnifiedExit@12_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@13 ( ) Bool)
(declare-fun GeneratedUnifiedExit@13_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@14 ( ) Bool)
(declare-fun GeneratedUnifiedExit@14_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@15 ( ) Bool)
(declare-fun GeneratedUnifiedExit@15_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@16 ( ) Bool)
(declare-fun GeneratedUnifiedExit@17_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@18 ( ) Bool)
(declare-fun GeneratedUnifiedExit@18_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@19 ( ) Bool)
(declare-fun GeneratedUnifiedExit@19_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@2 ( ) Bool)
(declare-fun GeneratedUnifiedExit@2_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@20 ( ) Bool)
(declare-fun GeneratedUnifiedExit@20_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@21 ( ) Bool)
(declare-fun GeneratedUnifiedExit@21_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@22 ( ) Bool)
(declare-fun GeneratedUnifiedExit@22_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@23 ( ) Bool)
(declare-fun GeneratedUnifiedExit@23_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@24 ( ) Bool)
(declare-fun GeneratedUnifiedExit@24_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@25 ( ) Bool)
(declare-fun GeneratedUnifiedExit@25_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@26 ( ) Bool)
(declare-fun GeneratedUnifiedExit@26_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@27 ( ) Bool)
(declare-fun GeneratedUnifiedExit@27_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@28 ( ) Bool)
(declare-fun GeneratedUnifiedExit@28_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@3 ( ) Bool)
(declare-fun GeneratedUnifiedExit@3_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@4 ( ) Bool)
(declare-fun GeneratedUnifiedExit@4_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@5 ( ) Bool)
(declare-fun GeneratedUnifiedExit@5_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@6 ( ) Bool)
(declare-fun GeneratedUnifiedExit@6_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@7 ( ) Bool)
(declare-fun GeneratedUnifiedExit@7_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@8 ( ) Bool)
(declare-fun GeneratedUnifiedExit@8_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit@9 ( ) Bool)
(declare-fun GeneratedUnifiedExit@9_assertion ( ) Bool)
(declare-fun GeneratedUnifiedExit_assertion ( ) Bool)
(declare-fun InMSet ( $@Map@@Int@To@Int@@ Int ) Bool)
(declare-fun InvAAEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvAD1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvAD2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvAD3Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvAEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvAp1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvAp2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvAt1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvAt2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvAt3Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun Invb1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun Invb2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvCCEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvCD1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvCD2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvCpEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvDD1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvDD2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvDEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun Inve1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun Inve2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvIsGoodRegionsListEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvIsGoodRegionsTreeEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvLbEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvLeEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvLEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvList ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun InvListEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvLL1Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvLL2Ex ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvnEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvnpEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvpEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvpnEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvPr ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun InvPrSt ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref Int Int ) Bool)
(declare-fun InvStADEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvStDCCEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvStDEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvStFEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvStLEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvStNDLEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvStruct ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun InvStructEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun InvTree ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ) Bool)
(declare-fun InvTreeEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun IsEmptyList ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun IsGoodRegion ( $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun IsNotAllocatedList ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun IsNotAllocatedTree ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun MapRead$$@Map@@ref@To@Bool@@$ ( $@Map@@ref@To@Bool@@ ref ) Bool)
(declare-fun Sub ( $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)

;Axioms
   (assert (! (= (Card Empty) 0) :named ax_0))
   (assert (! (= (MaxMSet EmptyMSet) 0) :named ax_1))
   (assert (! (= StF (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap this NSt)) :named ax_2))
   (assert (! (forall ((|i_14| field$TNodeState$)(|i_13| ref)(|m_7| $@Map@@$T0@@ref@field$$T0$@To@$T0@@)(|v_7| TNodeState))(!(= v_7 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ m_7 i_13 i_14 v_7) i_13 i_14)):pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ m_7 i_13 i_14 v_7) i_13 i_14)) :qid map_1_$@Map@@$T0@@ref@field$$T0$@To@$T0@@ :weight 0 )) :named ax_3))
   (assert (! (forall ((|i_2| field$ref$)(|i_1| ref)(|m_1| $@Map@@$T0@@ref@field$$T0$@To@$T0@@)(|v_1| ref))(!(= v_1 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ m_1 i_1 i_2 v_1) i_1 i_2)):pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ m_1 i_1 i_2 v_1) i_1 i_2)) :qid map_1_$@Map@@$T0@@ref@field$$T0$@To@$T0@@ :weight 0 )) :named ax_4))
   (assert (! (forall ((|v_10| TNodeState)(|i_20| field$TNodeState$)(|i_19| ref)(|j_16| field$$@Map@@ref@To@Bool@@$)(|j_15| ref)(|m_10| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ m_10 j_15 j_16) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ m_10 i_19 i_20 v_10) j_15 j_16)):pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ m_10 i_19 i_20 v_10) j_15 j_16)) :qid map_3_$@Map@@$T0@@ref@field$$T0$@To@$T0@@__$@Map@@ref@To@Bool@@__TNodeState :weight 0 )) :named ax_5))
   (assert (! (forall ((|v_11| TNodeState)(|i_22| field$TNodeState$)(|i_21| ref)(|j_18| field$Int$)(|j_17| ref)(|m_11| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ m_11 j_17 j_18) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ m_11 i_21 i_22 v_11) j_17 j_18)):pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ m_11 i_21 i_22 v_11) j_17 j_18)) :qid map_3_$@Map@@$T0@@ref@field$$T0$@To@$T0@@__Int__TNodeState :weight 0 )) :named ax_6))
   (assert (! (forall ((|v_12| TNodeState)(|i_24| field$TNodeState$)(|i_23| ref)(|j_20| field$$@Map@@Int@To@Int@@$)(|j_19| ref)(|m_12| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ m_12 j_19 j_20) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ m_12 i_23 i_24 v_12) j_19 j_20)):pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ m_12 i_23 i_24 v_12) j_19 j_20)) :qid map_3_$@Map@@$T0@@ref@field$$T0$@To@$T0@@__$@Map@@Int@To@Int@@__TNodeState :weight 0 )) :named ax_7))
   (assert (! (forall ((|v_2| ref)(|m_2| $@Map@@$T0@@ref@field$$T0$@To@$T0@@)(|i_4| field$ref$)(|j_2| field$ref$)(|i_3| ref)(|j_1| ref))(!(=> (or (not (= j_2 i_4)) (not (= j_1 i_3))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ m_2 j_1 j_2) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ m_2 i_3 i_4 v_2) j_1 j_2))):pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ m_2 i_3 i_4 v_2) j_1 j_2)) :qid map_2_$@Map@@$T0@@ref@field$$T0$@To@$T0@@ :weight 0 )) :named ax_8))
   (assert (! (forall ((|v_3| ref)(|i_6| field$ref$)(|i_5| ref)(|j_4| field$$@Map@@ref@To@Bool@@$)(|j_3| ref)(|m_3| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ m_3 j_3 j_4) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ m_3 i_5 i_6 v_3) j_3 j_4)):pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ m_3 i_5 i_6 v_3) j_3 j_4)) :qid map_3_$@Map@@$T0@@ref@field$$T0$@To@$T0@@__$@Map@@ref@To@Bool@@__ref :weight 0 )) :named ax_9))
   (assert (! (forall ((|v_4| ref)(|i_8| field$ref$)(|i_7| ref)(|j_6| field$Int$)(|j_5| ref)(|m_4| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ m_4 j_5 j_6) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ m_4 i_7 i_8 v_4) j_5 j_6)):pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ m_4 i_7 i_8 v_4) j_5 j_6)) :qid map_3_$@Map@@$T0@@ref@field$$T0$@To@$T0@@__Int__ref :weight 0 )) :named ax_10))
   (assert (! (forall ((|v_5| ref)(|i_10| field$ref$)(|i_9| ref)(|j_8| field$TNodeState$)(|j_7| ref)(|m_5| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ m_5 j_7 j_8) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ m_5 i_9 i_10 v_5) j_7 j_8)):pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ m_5 i_9 i_10 v_5) j_7 j_8)) :qid map_3_$@Map@@$T0@@ref@field$$T0$@To@$T0@@__TNodeState__ref :weight 0 )) :named ax_11))
   (assert (! (forall ((|v_6| ref)(|i_12| field$ref$)(|i_11| ref)(|j_10| field$$@Map@@Int@To@Int@@$)(|j_9| ref)(|m_6| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ m_6 j_9 j_10) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ m_6 i_11 i_12 v_6) j_9 j_10)):pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ m_6 i_11 i_12 v_6) j_9 j_10)) :qid map_3_$@Map@@$T0@@ref@field$$T0$@To@$T0@@__$@Map@@Int@To@Int@@__ref :weight 0 )) :named ax_12))
   (assert (! (forall ((|v_8| TNodeState)(|m_8| $@Map@@$T0@@ref@field$$T0$@To@$T0@@)(|i_16| field$TNodeState$)(|j_12| field$TNodeState$)(|i_15| ref)(|j_11| ref))(!(=> (or (not (= j_12 i_16)) (not (= j_11 i_15))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ m_8 j_11 j_12) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ m_8 i_15 i_16 v_8) j_11 j_12))):pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ m_8 i_15 i_16 v_8) j_11 j_12)) :qid map_2_$@Map@@$T0@@ref@field$$T0$@To@$T0@@ :weight 0 )) :named ax_13))
   (assert (! (forall ((|v_9| TNodeState)(|i_18| field$TNodeState$)(|i_17| ref)(|j_14| field$ref$)(|j_13| ref)(|m_9| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ m_9 j_13 j_14) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ m_9 i_17 i_18 v_9) j_13 j_14)):pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ m_9 i_17 i_18 v_9) j_13 j_14)) :qid map_3_$@Map@@$T0@@ref@field$$T0$@To@$T0@@__ref__TNodeState :weight 0 )) :named ax_14))
   (assert (! (forall( (|$Heap_$0| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$21| ref))(= (IsEmptyList |$Heap_$0| |o_$21|) (and (= |o_$21| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |$Heap_$0| |o_$21| Lb)) (and (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |$Heap_$0| |o_$21| Lp)) (and (= |o_$21| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |$Heap_$0| |o_$21| Le)) (and (= (Singleton |o_$21|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |$Heap_$0| |o_$21| LL)) (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |$Heap_$0| |o_$21| Ln)))))))) :named ax_15))
   (assert (! (forall( (|a_$0| $@Map@@Int@To@Int@@) (|i_$2| Int))(!(= (MapRead$$@Map@@Int@To@Int@@$ (AddMSet |a_$0| |i_$2|) |i_$2|) (+ (MapRead$$@Map@@Int@To@Int@@$ |a_$0| |i_$2|) 1))  :pattern ( (MapRead$$@Map@@Int@To@Int@@$ (AddMSet |a_$0| |i_$2|) |i_$2|)))) :named ax_16))
   (assert (! (forall( (|a_$1| $@Map@@Int@To@Int@@) (|i_$3| Int) (|j| Int))(!(=> (not (= |j| |i_$3|)) (= (MapRead$$@Map@@Int@To@Int@@$ (AddMSet |a_$1| |i_$3|) |j|) (MapRead$$@Map@@Int@To@Int@@$ |a_$1| |j|)))  :pattern ( (MapRead$$@Map@@Int@To@Int@@$ (AddMSet |a_$1| |i_$3|) |j|)))) :named ax_17))
   (assert (! (forall( (|a_$2| $@Map@@Int@To@Int@@) (|i_$4| Int))(!(= (MapRead$$@Map@@Int@To@Int@@$ (RemoveMSet |a_$2| |i_$4|) |i_$4|) (- (MapRead$$@Map@@Int@To@Int@@$ |a_$2| |i_$4|) 1))  :pattern ( (MapRead$$@Map@@Int@To@Int@@$ (RemoveMSet |a_$2| |i_$4|) |i_$4|)))) :named ax_18))
   (assert (! (forall( (|a_$3| $@Map@@Int@To@Int@@) (|i_$5| Int) (|j_$0| Int))(!(=> (not (= |j_$0| |i_$5|)) (= (MapRead$$@Map@@Int@To@Int@@$ (RemoveMSet |a_$3| |i_$5|) |j_$0|) (MapRead$$@Map@@Int@To@Int@@$ |a_$3| |j_$0|)))  :pattern ( (MapRead$$@Map@@Int@To@Int@@$ (RemoveMSet |a_$3| |i_$5|) |j_$0|)))) :named ax_19))
   (assert (! (forall( (|a_$4| $@Map@@ref@To@Bool@@) (|b_$0| $@Map@@ref@To@Bool@@) (|o_$4| ref))(!(= (MapRead$$@Map@@ref@To@Bool@@$ (Union |a_$4| |b_$0|) |o_$4|) (or (MapRead$$@Map@@ref@To@Bool@@$ |b_$0| |o_$4|) (MapRead$$@Map@@ref@To@Bool@@$ |a_$4| |o_$4|)))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (Union |a_$4| |b_$0|) |o_$4|)))) :named ax_20))
   (assert (! (forall( (|a_$5| $@Map@@ref@To@Bool@@) (|b_$1| $@Map@@ref@To@Bool@@))(!(= (Sub |a_$5| |b_$1|) (forall( (|o_$5| ref))(!(=> (MapRead$$@Map@@ref@To@Bool@@$ |a_$5| |o_$5|) (MapRead$$@Map@@ref@To@Bool@@$ |b_$1| |o_$5|))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |a_$5| |o_$5|)) :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |b_$1| |o_$5|)))))  :pattern ( (Sub |a_$5| |b_$1|)))) :named ax_21))
   (assert (! (forall( (|a_$6| $@Map@@ref@To@Bool@@) (|b_$2| $@Map@@ref@To@Bool@@))(!(= (Equal |a_$6| |b_$2|) (forall( (|o_$6| ref))(!(= (MapRead$$@Map@@ref@To@Bool@@$ |b_$2| |o_$6|) (MapRead$$@Map@@ref@To@Bool@@$ |a_$6| |o_$6|))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |a_$6| |o_$6|)) :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |b_$2| |o_$6|)))))  :pattern ( (Equal |a_$6| |b_$2|)))) :named ax_22))
   (assert (! (forall( (|a_$7| $@Map@@ref@To@Bool@@) (|b_$3| $@Map@@ref@To@Bool@@))(!(= (Disjoint |a_$7| |b_$3|) (forall( (|o_$7| ref))(!(or (not (MapRead$$@Map@@ref@To@Bool@@$ |b_$3| |o_$7|)) (not (MapRead$$@Map@@ref@To@Bool@@$ |a_$7| |o_$7|)))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |a_$7| |o_$7|)) :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |b_$3| |o_$7|)))))  :pattern ( (Disjoint |a_$7| |b_$3|)))) :named ax_23))
   (assert (! (forall( (|a| $@Map@@Int@To@Int@@) (|b| $@Map@@Int@To@Int@@))(!(= (EqualMSet |a| |b|) (forall( (|i_$1| Int))(!(=> (> |i_$1| 0) (= (MapRead$$@Map@@Int@To@Int@@$ |b| |i_$1|) (MapRead$$@Map@@Int@To@Int@@$ |a| |i_$1|)))  :pattern ( (MapRead$$@Map@@Int@To@Int@@$ |a| |i_$1|)) :pattern ( (MapRead$$@Map@@Int@To@Int@@$ |b| |i_$1|)))))  :pattern ( (EqualMSet |a| |b|)))) :named ax_24))
   (assert (! (forall( (|h_$0| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$0| ref))(!(= (IsNotAllocatedList |h_$0| |o_$0|) (forall( (|o'_$0| ref))(and (and (and (and (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$0| |o'_$0| LL) |o_$0|)) (not (= |o_$0| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$0| |o'_$0| Ln)))) (not (= |o_$0| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$0| |o'_$0| Le)))) (not (= |o_$0| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$0| |o'_$0| Lp)))) (not (= |o_$0| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$0| |o'_$0| Lb))))))  :pattern ( (IsNotAllocatedList |h_$0| |o_$0|)))) :named ax_25))
   (assert (! (forall( (|h_$10| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$22| ref))(Equal (NACCoSet |h_$10| |o_$22|) (AddEl (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$10| |o_$22| NA) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$10| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$10| |o_$22| Nt) LL)) |o_$22|))) :named ax_26))
   (assert (! (forall( (|h_$100| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld_$2| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|this_$3| ref) (|child_$0| ref))(=> (and (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$2| |this_$3| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$100| |this_$3| Ncpr)) (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$2| |this_$3| Ndpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$100| |this_$3| Ndpr)) (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$2| |this_$3| Npr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$100| |this_$3| Npr)) (and (Equal (BBSet |h_$100| |this_$3|) (RemEl (BBSet |hOld_$2| |this_$3|) |child_$0|)) (and (and (InvPr |hOld_$2| |this_$3|) (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |hOld_$2| |this_$3|) |child_$0|)) (not (= null |child_$0|))))))) (forall( (|o_$68| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |h_$100| |this_$3|) |o_$68|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$2| |o_$68| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$100| |o_$68| Ncpr))))) (and (InvPrSt |h_$100| |this_$3| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$2| |child_$0| Ncpr) 0) (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$2| |child_$0| Ncpr) 0) (InvPr |h_$100| |this_$3|))))) :named ax_27))
   (assert (! (forall( (|h_$101| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld_$3| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|this_$4| ref) (|child_$1| ref))(=> (and (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$3| |this_$4| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$101| |this_$4| Ncpr)) (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$3| |this_$4| Ndpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$101| |this_$4| Ndpr)) (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$3| |this_$4| Npr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$101| |this_$4| Npr)) (and (Equal (BBSet |h_$101| |this_$4|) (AddEl (BBSet |hOld_$3| |this_$4|) |child_$1|)) (and (and (InvPr |hOld_$3| |this_$4|) (not (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |hOld_$3| |this_$4|) |child_$1|))) (not (= null |child_$1|))))))) (forall( (|o_$69| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |h_$101| |this_$4|) |o_$69|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$3| |o_$69| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$101| |o_$69| Ncpr))))) (and (InvPrSt |h_$101| |this_$4| 0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$3| |child_$1| Ncpr)) (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$3| |child_$1| Ncpr) 0) (InvPr |h_$101| |this_$4|))))) :named ax_28))
   (assert (! (forall( (|h_$102| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld_$4| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|from_$0| Int) (|to_$0| Int) (|this_$5| ref))(=> (and (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$4| |this_$5| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$102| |this_$5| Ncpr)) (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$4| |this_$5| Ndpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$102| |this_$5| Ndpr)) (and (and (InvPrSt |hOld_$4| |this_$5| |from_$0| |to_$0|) (Equal (BBSet |h_$102| |this_$5|) (BBSet |hOld_$4| |this_$5|))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$4| |this_$5| Npr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$102| |this_$5| Npr))))) (forall( (|o_$70| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |h_$102| |this_$5|) |o_$70|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$4| |o_$70| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$102| |o_$70| Ncpr))))) (InvPrSt |h_$102| |this_$5| |from_$0| |to_$0|))) :named ax_29))
   (assert (! (forall( (|h_$103| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld_$5| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|from_$1| Int) (|to_$1| Int) (|this_$6| ref))(=> (and (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$5| |this_$6| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$103| |this_$6| Ncpr)) (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$5| |this_$6| Ndpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$103| |this_$6| Ndpr)) (and (and (and (InvPrSt |hOld_$5| |this_$6| |from_$1| |to_$1|) (Equal (BBSet |h_$103| |this_$6|) (BBSet |hOld_$5| |this_$6|))) (=> (<= |from_$1| 0) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$5| |this_$6| Npr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$103| |this_$6| Npr)))) (=> (> |from_$1| 0) (= (RemoveMSet (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$5| |this_$6| Npr) |from_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$103| |this_$6| Npr)))))) (forall( (|o_$71| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |h_$103| |this_$6|) |o_$71|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$5| |o_$71| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$103| |o_$71| Ncpr))))) (InvPrSt |h_$103| |this_$6| 0 |to_$1|))) :named ax_30))
   (assert (! (forall( (|h_$104| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld_$6| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|from_$2| Int) (|to_$2| Int) (|this_$7| ref))(=> (and (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$6| |this_$7| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$104| |this_$7| Ncpr)) (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$6| |this_$7| Ndpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$104| |this_$7| Ndpr)) (and (=> (> |to_$2| 0) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$104| |this_$7| Npr) (AddMSet (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$6| |this_$7| Npr) |to_$2|))) (and (and (InvPrSt |hOld_$6| |this_$7| |from_$2| |to_$2|) (Equal (BBSet |h_$104| |this_$7|) (BBSet |hOld_$6| |this_$7|))) (=> (<= |to_$2| 0) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$6| |this_$7| Npr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$104| |this_$7| Npr))))))) (forall( (|o_$72| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |h_$104| |this_$7|) |o_$72|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$6| |o_$72| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$104| |o_$72| Ncpr))))) (InvPrSt |h_$104| |this_$7| |from_$2| 0))) :named ax_31))
   (assert (! (forall( (|h_$105| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld_$7| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|this_$8| ref))(=> (and (and (= (Max (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$7| |this_$8| Ndpr) (MaxMSet (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$7| |this_$8| Npr))) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$105| |this_$8| Ncpr)) (and (InvPrSt |hOld_$7| |this_$8| 0 0) (not (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |hOld_$7| |this_$8|) |this_$8|)))) (and (forall( (|o_$73_$4| ref) (|f_$2_$4| field$TNodeState$))(= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |hOld_$7| |o_$73_$4| |f_$2_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$105| |o_$73_$4| |f_$2_$4|))) (and (forall( (|o_$73_$3| ref) (|f_$2_$3| field$Int$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$7| |o_$73_$3| |f_$2_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$105| |o_$73_$3| |f_$2_$3|)) (and (= |this_$8| |o_$73_$3|) (= Ncpr |f_$2_$3|)))) (and (forall( (|o_$73_$2| ref) (|f_$2_$2| field$$@Map@@Int@To@Int@@$))(= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$7| |o_$73_$2| |f_$2_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$105| |o_$73_$2| |f_$2_$2|))) (and (forall( (|o_$73_$1| ref) (|f_$2_$1| field$$@Map@@ref@To@Bool@@$))(= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |hOld_$7| |o_$73_$1| |f_$2_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$105| |o_$73_$1| |f_$2_$1|))) (forall( (|o_$73_$0| ref) (|f_$2_$0| field$ref$))(= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |hOld_$7| |o_$73_$0| |f_$2_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$105| |o_$73_$0| |f_$2_$0|)))))))) (InvPr |h_$105| |this_$8|))) :named ax_32))
   (assert (! (forall( (|h_$11| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$23| ref))(Equal (NACCSet |h_$11| |o_$23|) (RemEl (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$11| |o_$23| NA) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$11| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$11| |o_$23| Nt) LL)) |o_$23|))) :named ax_33))
   (assert (! (forall( (|h_$12| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$24| ref))(and (=> (= StD (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$12| |o_$24| NSt)) (Equal (BBSet |h_$12| |o_$24|) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$12| |o_$24| NC) (CLp |h_$12| |o_$24|)))) (=> (not (= StD (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$12| |o_$24| NSt))) (Equal (BBSet |h_$12| |o_$24|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$12| |o_$24| NC))))) :named ax_34))
   (assert (! (forall( (|h_$13| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1| $@Map@@ref@To@Bool@@))(= (InvIsGoodRegionsTreeEx |h_$13| |Ex1|) (forall( (|o_$25| ref))(and (and (IsGoodRegion (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$13| |o_$25| ND)) (IsGoodRegion (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$13| |o_$25| NC))) (IsGoodRegion (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$13| |o_$25| NA)))))) :named ax_35))
   (assert (! (forall( (|h_$14| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$0| $@Map@@ref@To@Bool@@) (|Ex2| $@Map@@ref@To@Bool@@))(= (InvCpEx |h_$14| |Ex1_$0| |Ex2|) (forall( (|o_$26| ref) (|o'_$4| ref))(!(=> (and (and (and (not (= |o'_$4| null)) (not (= |o_$26| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$0| |o_$26|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2| |o'_$4|))) (= (= |o_$26| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$14| |o'_$4| Np)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$14| |o_$26| NC) |o'_$4|)))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$14| |o_$26| NC) |o'_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$14| |o'_$4| Np)))))) :named ax_36))
   (assert (! (forall( (|h_$15| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$1| $@Map@@ref@To@Bool@@) (|Ex2_$0| $@Map@@ref@To@Bool@@))(= (InvCCEx |h_$15| |Ex1_$1| |Ex2_$0|) (forall( (|o_$27| ref) (|o'_$5| ref))(=> (and (and (and (not (= |o'_$5| null)) (not (= |o_$27| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$1| |o_$27|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$0| |o'_$5|))) (=> (not (= |o'_$5| |o_$27|)) (Disjoint (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$15| |o_$27| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$15| |o'_$5| NC))))))) :named ax_37))
   (assert (! (forall( (|h_$16| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$2| $@Map@@ref@To@Bool@@))(= (InvDEx |h_$16| |Ex1_$2|) (forall( (|o_$28| ref))(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$2| |o_$28|)) (not (= |o_$28| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$16| |o_$28| ND) |o_$28|)))))) :named ax_38))
   (assert (! (forall( (|h_$17| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$3| $@Map@@ref@To@Bool@@))(= (InvAEx |h_$17| |Ex1_$3|) (forall( (|o_$29| ref))(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$3| |o_$29|)) (not (= |o_$29| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$17| |o_$29| NA) |o_$29|)))))) :named ax_39))
   (assert (! (forall( (|h_$18| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$4| $@Map@@ref@To@Bool@@))(= (InvCD1Ex |h_$18| |Ex1_$4|) (forall( (|o_$30| ref))(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$4| |o_$30|)) (not (= |o_$30| null))) (Sub (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$18| |o_$30| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$18| |o_$30| ND)))))) :named ax_40))
   (assert (! (forall( (|h_$19| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$5| $@Map@@ref@To@Bool@@) (|Ex2_$1| $@Map@@ref@To@Bool@@))(= (InvCD2Ex |h_$19| |Ex1_$5| |Ex2_$1|) (forall( (|o_$31| ref) (|o'_$6| ref))(=> (and (and (and (not (= |o'_$6| null)) (not (= |o_$31| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$5| |o_$31|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$1| |o'_$6|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$19| |o_$31| ND) |o'_$6|) (Disjoint (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$19| |o_$31| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$19| |o'_$6| ND))))))) :named ax_41))
   (assert (! (forall( (|h_$20| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$6| $@Map@@ref@To@Bool@@) (|Ex2_$2| $@Map@@ref@To@Bool@@))(= (InvAD1Ex |h_$20| |Ex1_$6| |Ex2_$2|) (forall( (|o_$32| ref) (|o'_$7| ref))(!(=> (and (and (and (not (= |o'_$7| null)) (not (= |o_$32| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$6| |o_$32|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$2| |o'_$7|))) (= (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$20| |o'_$7| NA) |o_$32|) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$20| |o_$32| ND) |o'_$7|)))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$20| |o_$32| ND) |o'_$7|)) :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$20| |o'_$7| NA) |o_$32|)))))) :named ax_42))
   (assert (! (forall( (|h_$21| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$7| $@Map@@ref@To@Bool@@) (|Ex2_$3| $@Map@@ref@To@Bool@@))(= (InvAD2Ex |h_$21| |Ex1_$7| |Ex2_$3|) (forall( (|o_$33| ref) (|o'_$8| ref))(!(=> (and (and (and (not (= |o'_$8| null)) (not (= |o_$33| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$7| |o_$33|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$3| |o'_$8|))) (=> (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$21| |o_$33| ND) |o'_$8|)) (Disjoint (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$21| |o'_$8| NA) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$21| |o_$33| ND) |o_$33|))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$21| |o_$33| ND) |o'_$8|)))))) :named ax_43))
   (assert (! (forall( (|h_$22| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$8| $@Map@@ref@To@Bool@@) (|Ex2_$4| $@Map@@ref@To@Bool@@))(= (InvAD3Ex |h_$22| |Ex1_$8| |Ex2_$4|) (forall( (|o_$34| ref) (|o'_$9| ref))(!(=> (and (and (and (not (= |o'_$9| null)) (not (= |o_$34| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$8| |o_$34|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$4| |o'_$9|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$22| |o_$34| ND) |o'_$9|) (Equal (Minus (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$22| |o'_$9| NA) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$22| |o_$34| ND)) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$22| |o_$34| NA) |o_$34|))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$22| |o_$34| ND) |o'_$9|)))))) :named ax_44))
   (assert (! (forall( (|h_$23| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$9| $@Map@@ref@To@Bool@@) (|Ex2_$5| $@Map@@ref@To@Bool@@))(= (InvDD1Ex |h_$23| |Ex1_$9| |Ex2_$5|) (forall( (|o_$35| ref) (|o'_$10| ref))(!(=> (and (and (and (not (= |o_$35| null)) (not (= |o'_$10| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$9| |o_$35|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$5| |o'_$10|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$23| |o_$35| ND) |o'_$10|) (Sub (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$23| |o'_$10| ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$23| |o_$35| ND))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$23| |o_$35| ND) |o'_$10|)))))) :named ax_45))
   (assert (! (forall( (|h_$24| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$10| $@Map@@ref@To@Bool@@) (|Ex2_$6| $@Map@@ref@To@Bool@@))(= (InvDD2Ex |h_$24| |Ex1_$10| |Ex2_$6|) (forall( (|o_$36| ref) (|o'_$11| ref))(!(=> (and (and (and (not (= |o_$36| null)) (not (= |o'_$11| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$10| |o_$36|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$6| |o'_$11|))) (=> (and (and (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$24| |o_$36| ND) |o'_$11|)) (not (= |o_$36| |o'_$11|))) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$24| |o'_$11| ND) |o_$36|))) (Disjoint (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$24| |o_$36| ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$24| |o'_$11| ND))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$24| |o_$36| ND) |o'_$11|) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$24| |o'_$11| ND) |o_$36|)))))) :named ax_46))
   (assert (! (forall( (|h_$25| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$11| $@Map@@ref@To@Bool@@) (|Ex2_$7| $@Map@@ref@To@Bool@@))(= (InvAAEx |h_$25| |Ex1_$11| |Ex2_$7|) (forall( (|o_$37| ref) (|o'_$12| ref))(!(=> (and (and (and (not (= |o_$37| null)) (not (= |o'_$12| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$11| |o_$37|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$7| |o'_$12|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$25| |o_$37| NA) |o'_$12|) (Sub (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$25| |o'_$12| NA) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$25| |o_$37| NA))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$25| |o_$37| NA) |o'_$12|)))))) :named ax_47))
   (assert (! (forall( (|h_$26| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$12| $@Map@@ref@To@Bool@@))(= (InvAp1Ex |h_$26| |Ex1_$12|) (forall( (|o_$38| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$12| |o_$38|)) (not (= |o_$38| null))) (=> (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$26| |o_$38| Np)) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$26| |o_$38| NA) Empty)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$26| |o_$38| Np)))))) :named ax_48))
   (assert (! (forall( (|h_$27| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$13| $@Map@@ref@To@Bool@@))(= (InvAp2Ex |h_$27| |Ex1_$13|) (forall( (|o_$39| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$13| |o_$39|)) (not (= |o_$39| null))) (=> (not (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$27| |o_$39| Np))) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$27| |o_$39| NA) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$27| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$27| |o_$39| Np) NA) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$27| |o_$39| Np)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$27| |o_$39| Np)))))) :named ax_49))
   (assert (! (forall( (|h_$28| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$14| $@Map@@ref@To@Bool@@))(= (InvAt1Ex |h_$28| |Ex1_$14|) (forall( (|o_$40| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$14| |o_$40|)) (not (= |o_$40| null))) (=> (not (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$28| |o_$40| Np))) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$28| |o_$40| NA) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$28| |o_$40| Nt))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$28| |o_$40| Nt)))))) :named ax_50))
   (assert (! (forall( (|h_$29| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$15| $@Map@@ref@To@Bool@@))(= (InvAt2Ex |h_$29| |Ex1_$15|) (forall( (|o_$41| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$15| |o_$41|)) (not (= |o_$41| null))) (=> (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$29| |o_$41| Np)) (= |o_$41| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$29| |o_$41| Nt))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$29| |o_$41| Nt)))))) :named ax_51))
   (assert (! (forall( (|h_$30| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$16| $@Map@@ref@To@Bool@@) (|Ex2_$8| $@Map@@ref@To@Bool@@))(= (InvAt3Ex |h_$30| |Ex1_$16| |Ex2_$8|) (forall( (|o_$42| ref) (|o'_$13| ref))(!(=> (and (and (and (not (= |o_$42| null)) (not (= |o'_$13| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$16| |o_$42|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$8| |o'_$13|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$30| |o_$42| NA) |o'_$13|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$30| |o_$42| Nt) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$30| |o'_$13| Nt))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$30| |o_$42| NA) |o'_$13|)))))) :named ax_52))
   (assert (! (forall( (|h_$4| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|r_$5| $@Map@@ref@To@Bool@@) (|i_$7| Int) (|o_$15| ref))(= (MapRead$$@Map@@ref@To@Bool@@$ (FBP |h_$4| |r_$5| |i_$7|) |o_$15|) (and (and (MapRead$$@Map@@ref@To@Bool@@$ |r_$5| |o_$15|) (= |i_$7| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$4| |o_$15| Ncpr))) (not (= |o_$15| null))))) :named ax_53))
   (assert (! (forall( (|h_$49| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex| $@Map@@ref@To@Bool@@))(!(= (InvTreeEx |h_$49| |Ex|) (and (InvAt3Ex |h_$49| |Ex| |Ex|) (and (InvAt2Ex |h_$49| |Ex|) (and (InvAt1Ex |h_$49| |Ex|) (and (InvAp2Ex |h_$49| |Ex|) (and (InvAp1Ex |h_$49| |Ex|) (and (and (InvDD2Ex |h_$49| |Ex| |Ex|) (and (InvDD1Ex |h_$49| |Ex| |Ex|) (and (InvAD3Ex |h_$49| |Ex| |Ex|) (and (InvAD2Ex |h_$49| |Ex| |Ex|) (and (and (InvCD2Ex |h_$49| |Ex| |Ex|) (and (InvCD1Ex |h_$49| |Ex|) (and (and (InvDEx |h_$49| |Ex|) (and (and (InvIsGoodRegionsTreeEx |h_$49| |Ex|) (InvCpEx |h_$49| |Ex| |Ex|)) (InvCCEx |h_$49| |Ex| |Ex|))) (InvAEx |h_$49| |Ex|)))) (InvAD1Ex |h_$49| |Ex| |Ex|)))))) (InvAAEx |h_$49| |Ex| |Ex|))))))))  :pattern ( (InvTreeEx |h_$49| |Ex|)))) :named ax_54))
   (assert (! (forall( (|h_$5| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$16| ref))(=> (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$5| |o_$16| Ln)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$5| |o_$16| Lb) (CLn |h_$5| |o_$16|)))) :named ax_55))
   (assert (! (forall( (|h_$50| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(!(= (InvTreeEx |h_$50| Empty) (InvTree |h_$50|))  :pattern ( (InvTree |h_$50|)))) :named ax_56))
   (assert (! (forall( (|h_$51| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$17| $@Map@@ref@To@Bool@@))(= (InvIsGoodRegionsListEx |h_$51| |Ex1_$17|) (forall( (|o_$43| ref))(IsGoodRegion (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$51| |o_$43| LL))))) :named ax_57))
   (assert (! (forall( (|h_$52| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$18| $@Map@@ref@To@Bool@@))(= (InvLEx |h_$52| |Ex1_$18|) (forall( (|o_$44| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$18| |o_$44|)) (not (= |o_$44| null))) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$52| |o_$44| LL) |o_$44|))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$52| |o_$44| LL)))))) :named ax_58))
   (assert (! (forall( (|h_$53| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$19| $@Map@@ref@To@Bool@@))(= (Inve1Ex |h_$53| |Ex1_$19|) (forall( (|o_$45| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$19| |o_$45|)) (not (= |o_$45| null))) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$53| |o_$45| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$53| |o_$45| Le)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$53| |o_$45| Le)))))) :named ax_59))
   (assert (! (forall( (|h_$54| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$20| $@Map@@ref@To@Bool@@))(= (Inve2Ex |h_$54| |Ex1_$20|) (forall( (|o_$46| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$20| |o_$46|)) (not (= |o_$46| null))) (= (= |o_$46| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$54| |o_$46| Le)) (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$54| |o_$46| Ln))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$54| |o_$46| Le) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$54| |o_$46| Ln)))))) :named ax_60))
   (assert (! (forall( (|h_$55| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$21| $@Map@@ref@To@Bool@@))(= (Invb1Ex |h_$55| |Ex1_$21|) (forall( (|o_$47| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$21| |o_$47|)) (not (= |o_$47| null))) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$55| |o_$47| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$55| |o_$47| Lb)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$55| |o_$47| Lb)))))) :named ax_61))
   (assert (! (forall( (|h_$56| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$22| $@Map@@ref@To@Bool@@))(= (Invb2Ex |h_$56| |Ex1_$22|) (forall( (|o_$48| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$22| |o_$48|)) (not (= |o_$48| null))) (= (= |o_$48| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$56| |o_$48| Lb)) (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$56| |o_$48| Lp))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$56| |o_$48| Lb) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$56| |o_$48| Lp)))))) :named ax_62))
   (assert (! (forall( (|h_$57| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$23| $@Map@@ref@To@Bool@@))(= (InvnEx |h_$57| |Ex1_$23|) (forall( (|o_$49| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$23| |o_$49|)) (not (= |o_$49| null))) (=> (not (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$57| |o_$49| Ln))) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$57| |o_$49| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$57| |o_$49| Ln))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$57| |o_$49| Ln)))))) :named ax_63))
   (assert (! (forall( (|h_$58| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$24| $@Map@@ref@To@Bool@@))(= (InvpEx |h_$58| |Ex1_$24|) (forall( (|o_$50| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$24| |o_$50|)) (not (= |o_$50| null))) (=> (not (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$58| |o_$50| Lp))) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$58| |o_$50| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$58| |o_$50| Lp))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$58| |o_$50| Lp)))))) :named ax_64))
   (assert (! (forall( (|h_$59| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$25| $@Map@@ref@To@Bool@@))(= (InvnpEx |h_$59| |Ex1_$25|) (forall( (|o_$51| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$25| |o_$51|)) (not (= |o_$51| null))) (=> (not (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$59| |o_$51| Ln))) (= |o_$51| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$59| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$59| |o_$51| Ln) Lp))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$59| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$59| |o_$51| Ln) Lp)))))) :named ax_65))
   (assert (! (forall( (|h_$6| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$17| ref))(=> (not (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$6| |o_$17| Ln))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$6| |o_$17| Ln) (CLn |h_$6| |o_$17|)))) :named ax_66))
   (assert (! (forall( (|h_$60| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$26| $@Map@@ref@To@Bool@@))(= (InvpnEx |h_$60| |Ex1_$26|) (forall( (|o_$52| ref))(!(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$26| |o_$52|)) (not (= |o_$52| null))) (=> (not (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$60| |o_$52| Lp))) (= |o_$52| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$60| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$60| |o_$52| Lp) Ln))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$60| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$60| |o_$52| Lp) Ln)))))) :named ax_67))
   (assert (! (forall( (|h_$61| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$27| $@Map@@ref@To@Bool@@) (|Ex2_$9| $@Map@@ref@To@Bool@@))(= (InvLbEx |h_$61| |Ex1_$27| |Ex2_$9|) (forall( (|o_$53| ref) (|o'_$14| ref))(!(=> (and (and (and (not (= |o_$53| null)) (not (= |o'_$14| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$27| |o_$53|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$9| |o'_$14|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$61| |o_$53| LL) |o'_$14|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$61| |o_$53| Lb) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$61| |o'_$14| Lb))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$61| |o_$53| LL) |o'_$14|)))))) :named ax_68))
   (assert (! (forall( (|h_$62| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$28| $@Map@@ref@To@Bool@@) (|Ex2_$10| $@Map@@ref@To@Bool@@))(= (InvLeEx |h_$62| |Ex1_$28| |Ex2_$10|) (forall( (|o_$54| ref) (|o'_$15| ref))(!(=> (and (and (and (not (= |o_$54| null)) (not (= |o'_$15| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$28| |o_$54|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$10| |o'_$15|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$62| |o_$54| LL) |o'_$15|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$62| |o_$54| Le) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$62| |o'_$15| Le))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$62| |o_$54| LL) |o'_$15|)))))) :named ax_69))
   (assert (! (forall( (|h_$63| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$29| $@Map@@ref@To@Bool@@) (|Ex2_$11| $@Map@@ref@To@Bool@@))(= (InvLL1Ex |h_$63| |Ex1_$29| |Ex2_$11|) (forall( (|o_$55| ref) (|o'_$16| ref))(!(=> (and (and (and (not (= |o_$55| null)) (not (= |o'_$16| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$29| |o_$55|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$11| |o'_$16|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$63| |o_$55| LL) |o'_$16|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$63| |o_$55| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$63| |o'_$16| LL))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$63| |o_$55| LL) |o'_$16|)))))) :named ax_70))
   (assert (! (forall( (|h_$64| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$30| $@Map@@ref@To@Bool@@) (|Ex2_$12| $@Map@@ref@To@Bool@@))(= (InvLL2Ex |h_$64| |Ex1_$30| |Ex2_$12|) (forall( (|o_$56| ref) (|o'_$17| ref))(!(=> (and (and (and (not (= |o_$56| null)) (not (= |o'_$17| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$30| |o_$56|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$12| |o'_$17|))) (=> (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$64| |o_$56| LL) |o'_$17|)) (Disjoint (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$64| |o_$56| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$64| |o'_$17| LL))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$64| |o_$56| LL) |o'_$17|)))))) :named ax_71))
   (assert (! (forall( (|h_$7| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$18| ref))(=> (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$7| |o_$18| Lp)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$7| |o_$18| Le) (CLp |h_$7| |o_$18|)))) :named ax_72))
   (assert (! (forall( (|h_$79| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex_$0| $@Map@@ref@To@Bool@@))(!(= (and (InvLL2Ex |h_$79| |Ex_$0| |Ex_$0|) (and (InvLL1Ex |h_$79| |Ex_$0| |Ex_$0|) (and (InvLeEx |h_$79| |Ex_$0| |Ex_$0|) (and (InvLbEx |h_$79| |Ex_$0| |Ex_$0|) (and (and (InvpnEx |h_$79| |Ex_$0|) (and (InvpEx |h_$79| |Ex_$0|) (and (InvnEx |h_$79| |Ex_$0|) (and (Invb2Ex |h_$79| |Ex_$0|) (and (and (Inve2Ex |h_$79| |Ex_$0|) (and (and (InvLEx |h_$79| |Ex_$0|) (InvIsGoodRegionsListEx |h_$79| |Ex_$0|)) (Inve1Ex |h_$79| |Ex_$0|))) (Invb1Ex |h_$79| |Ex_$0|)))))) (InvnpEx |h_$79| |Ex_$0|)))))) (InvListEx |h_$79| |Ex_$0|))  :pattern ( (InvListEx |h_$79| |Ex_$0|)))) :named ax_73))
   (assert (! (forall( (|h_$8| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$19| ref))(=> (not (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$8| |o_$19| Lp))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$8| |o_$19| Lp) (CLp |h_$8| |o_$19|)))) :named ax_74))
   (assert (! (forall( (|h_$80| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(!(= (InvListEx |h_$80| Empty) (InvList |h_$80|))  :pattern ( (InvList |h_$80|)))) :named ax_75))
   (assert (! (forall( (|h_$81| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$31| $@Map@@ref@To@Bool@@))(= (InvStFEx |h_$81| |Ex1_$31|) (forall( (|o_$57| ref))(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$31| |o_$57|)) (not (= |o_$57| null))) (= (= StF (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$81| |o_$57| NSt)) (and (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$81| |o_$57| Nbb)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$81| |o_$57| Np) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$81| |o_$57| Nbb)))))))) :named ax_76))
   (assert (! (forall( (|h_$82| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$32| $@Map@@ref@To@Bool@@))(= (InvStLEx |h_$82| |Ex1_$32|) (forall( (|o_$58| ref))(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$32| |o_$58|)) (not (= |o_$58| null))) (= (= StL (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$82| |o_$58| NSt)) (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$82| |o_$58| Np) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$82| |o_$58| Nbb)) (not (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$82| |o_$58| Nbb))))))))) :named ax_77))
   (assert (! (forall( (|h_$83| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$33| $@Map@@ref@To@Bool@@))(= (InvStDEx |h_$83| |Ex1_$33|) (forall( (|o_$59| ref))(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$33| |o_$59|)) (not (= |o_$59| null))) (= (= StD (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$83| |o_$59| NSt)) (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$83| |o_$59| Nbb) (CLn |h_$83| |o_$59|)) (not (= null (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$83| |o_$59| Nbb))))))))) :named ax_78))
   (assert (! (forall( (|h_$84| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$34| $@Map@@ref@To@Bool@@))(= (InvStNDLEx |h_$84| |Ex1_$34|) (forall( (|o_$60| ref))(=> (and (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$34| |o_$60|)) (not (= |o_$60| null))) (=> (not (= StD (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$84| |o_$60| NSt))) (IsEmptyList |h_$84| |o_$60|)))))) :named ax_79))
   (assert (! (forall( (|h_$85| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$35| $@Map@@ref@To@Bool@@) (|Ex2_$13| $@Map@@ref@To@Bool@@))(= (InvStDCCEx |h_$85| |Ex1_$35| |Ex2_$13|) (forall( (|o_$61| ref) (|o'_$18| ref))(=> (and (and (and (not (= |o_$61| null)) (not (= |o'_$18| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$35| |o_$61|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$13| |o'_$18|))) (=> (and (= StD (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$85| |o_$61| NSt)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$85| |o_$61| LL) |o'_$18|)) (= StD (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$85| |o'_$18| NSt))))))) :named ax_80))
   (assert (! (forall( (|h_$86| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$36| $@Map@@ref@To@Bool@@) (|Ex2_$14| $@Map@@ref@To@Bool@@))(= (InvStADEx |h_$86| |Ex1_$36| |Ex2_$14|) (forall( (|o_$62| ref) (|o'_$19| ref))(=> (and (and (and (not (= |o_$62| null)) (not (= |o'_$19| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$36| |o_$62|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$14| |o'_$19|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$86| |o_$62| ND) |o'_$19|) (= StL (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$86| |o'_$19| NSt))))))) :named ax_81))
   (assert (! (forall( (|h_$93| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex_$1| $@Map@@ref@To@Bool@@))(= (InvStructEx |h_$93| |Ex_$1|) (and (InvStADEx |h_$93| |Ex_$1| |Ex_$1|) (and (and (InvStNDLEx |h_$93| |Ex_$1|) (and (and (InvStLEx |h_$93| |Ex_$1|) (and (and (InvTreeEx |h_$93| |Ex_$1|) (InvListEx |h_$93| |Ex_$1|)) (InvStFEx |h_$93| |Ex_$1|))) (InvStDEx |h_$93| |Ex_$1|))) (InvStDCCEx |h_$93| |Ex_$1| |Ex_$1|))))) :named ax_82))
   (assert (! (forall( (|h_$94| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(= (InvStructEx |h_$94| Empty) (InvStruct |h_$94|))) :named ax_83))
   (assert (! (forall( (|h_$95| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$63| ref))(= (InvPr |h_$95| |o_$63|) (and (and (>= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$95| |o_$63| Ndpr) 0) (and (= (Max (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$95| |o_$63| Ndpr) (MaxMSet (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$95| |o_$63| Npr))) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$95| |o_$63| Ncpr)) (>= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$95| |o_$63| Ncpr) 0))) (forall( (|i_$8| Int))(=> (> |i_$8| 0) (= (MapRead$$@Map@@Int@To@Int@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$95| |o_$63| Npr) |i_$8|) (Card (FBP |h_$95| (BBSet |h_$95| |o_$63|) |i_$8|)))))))) :named ax_84))
   (assert (! (forall( (|h_$96| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$64| ref) (|from| Int) (|to| Int))(= (InvPrSt |h_$96| |o_$64| |from| |to|) (and (>= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$96| |o_$64| Ndpr) 0) (and (>= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$96| |o_$64| Ncpr) 0) (and (=> (> |to| 0) (= (MapRead$$@Map@@Int@To@Int@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$96| |o_$64| Npr) |to|) (- (Card (FBP |h_$96| (BBSet |h_$96| |o_$64|) |to|)) 1))) (and (=> (> |from| 0) (= (MapRead$$@Map@@Int@To@Int@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$96| |o_$64| Npr) |from|) (+ (Card (FBP |h_$96| (BBSet |h_$96| |o_$64|) |from|)) 1))) (forall( (|i_$9| Int))(=> (and (and (> |i_$9| 0) (not (= |i_$9| |from|))) (not (= |to| |i_$9|))) (= (MapRead$$@Map@@Int@To@Int@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$96| |o_$64| Npr) |i_$9|) (Card (FBP |h_$96| (BBSet |h_$96| |o_$64|) |i_$9|))))))))))) :named ax_85))
   (assert (! (forall( (|h_$97| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|this_$0| ref))(=> (and (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld| |this_$0| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$97| |this_$0| Ncpr)) (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld| |this_$0| Ndpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$97| |this_$0| Ndpr)) (and (and (InvPr |hOld| |this_$0|) (Equal (BBSet |h_$97| |this_$0|) (BBSet |hOld| |this_$0|))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld| |this_$0| Npr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$97| |this_$0| Npr))))) (forall( (|o_$65| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |h_$97| |this_$0|) |o_$65|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld| |o_$65| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$97| |o_$65| Ncpr))))) (InvPr |h_$97| |this_$0|))) :named ax_86))
   (assert (! (forall( (|h_$98| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld_$0| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|this_$1| ref))(=> (and (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$0| |this_$1| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$98| |this_$1| Ncpr)) (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$0| |this_$1| Ndpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$98| |this_$1| Ndpr)) (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$0| |this_$1| Npr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$98| |this_$1| Npr)) (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |hOld_$0| |this_$1| NSt) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$98| |this_$1| NSt)) (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |hOld_$0| |this_$1| Le) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$98| |this_$1| Le)) (and (and (InvPr |hOld_$0| |this_$1|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |hOld_$0| |this_$1| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$98| |this_$1| NC))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |hOld_$0| |this_$1| Lp) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$98| |this_$1| Lp)))))))) (forall( (|o_$66| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |h_$98| |this_$1|) |o_$66|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$0| |o_$66| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$98| |o_$66| Ncpr))))) (InvPr |h_$98| |this_$1|))) :named ax_87))
   (assert (! (forall( (|h_$99| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld_$1| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|this_$2| ref) (|child| ref) (|newNcpr| Int))(=> (and (and (= |newNcpr| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$99| |child| Ncpr)) (and (and (and (>= |newNcpr| 0) (and (InvPr |hOld_$1| |this_$2|) (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |hOld_$1| |this_$2|) |child|))) (not (= null |child|))) (not (= |newNcpr| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$1| |child| Ncpr))))) (and (forall( (|o_$67_$4| ref) (|f_$1_$4| field$TNodeState$))(= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |hOld_$1| |o_$67_$4| |f_$1_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$99| |o_$67_$4| |f_$1_$4|))) (and (forall( (|o_$67_$3| ref) (|f_$1_$3| field$Int$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$1| |o_$67_$3| |f_$1_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$99| |o_$67_$3| |f_$1_$3|)) (and (= |o_$67_$3| |child|) (= Ncpr |f_$1_$3|)))) (and (forall( (|o_$67_$2| ref) (|f_$1_$2| field$$@Map@@Int@To@Int@@$))(= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$1| |o_$67_$2| |f_$1_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$99| |o_$67_$2| |f_$1_$2|))) (and (forall( (|o_$67_$1| ref) (|f_$1_$1| field$$@Map@@ref@To@Bool@@$))(= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |hOld_$1| |o_$67_$1| |f_$1_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$99| |o_$67_$1| |f_$1_$1|))) (forall( (|o_$67_$0| ref) (|f_$1_$0| field$ref$))(= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |hOld_$1| |o_$67_$0| |f_$1_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$99| |o_$67_$0| |f_$1_$0|)))))))) (InvPrSt |h_$99| |this_$2| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$1| |child| Ncpr) |newNcpr|))) :named ax_88))
   (assert (! (forall( (|h| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o| ref))(!(= (IsNotAllocatedTree |h| |o|) (forall( (|o'| ref))(and (and (and (and (not (= |o| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h| |o'| Nt))) (not (= |o| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h| |o'| Np)))) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h| |o'| NA) |o|))) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h| |o'| NC) |o|))) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h| |o'| ND) |o|)))))  :pattern ( (IsNotAllocatedTree |h| |o|)))) :named ax_89))
   (assert (! (forall( (|i_$0| Int))(!(not (InMSet EmptyMSet |i_$0|))  :pattern ( (MapRead$$@Map@@Int@To@Int@@$ EmptyMSet |i_$0|)))) :named ax_90))
   (assert (! (forall( (|i_$6| Int) (|j_$1| Int))(!(and (and (>= (Max |i_$6| |j_$1|) |j_$1|) (>= (Max |i_$6| |j_$1|) |i_$6|)) (or (= (Max |i_$6| |j_$1|) |j_$1|) (= (Max |i_$6| |j_$1|) |i_$6|)))  :pattern ( (Max |i_$6| |j_$1|)))) :named ax_91))
   (assert (! (forall( (|m| $@Map@@Int@To@Int@@) (|i| Int))(!(= (InMSet |m| |i|) (not (= (MapRead$$@Map@@Int@To@Int@@$ |m| |i|) 0)))  :pattern ( (InMSet |m| |i|)))) :named ax_92))
   (assert (! (forall( (|o_$2| ref))(!(not (MapRead$$@Map@@ref@To@Bool@@$ Empty |o_$2|))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ Empty |o_$2|)))) :named ax_93))
   (assert (! (forall( (|o_$74| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap r) |o_$74|) (InvPr $Heap |o_$74|))) :named ax_94))
   (assert (! (forall( (|r_$0| ref) (|o_$3| ref))(!(= (MapRead$$@Map@@ref@To@Bool@@$ (Singleton |r_$0|) |o_$3|) (= |r_$0| |o_$3|))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (Singleton |r_$0|) |o_$3|)))) :named ax_95))
   (assert (! (forall( (|r_$1| $@Map@@ref@To@Bool@@) (|o_$8| ref) (|o'_$2| ref))(!(= (or (MapRead$$@Map@@ref@To@Bool@@$ |r_$1| |o'_$2|) (= |o_$8| |o'_$2|)) (MapRead$$@Map@@ref@To@Bool@@$ (AddEl |r_$1| |o_$8|) |o'_$2|))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (AddEl |r_$1| |o_$8|) |o'_$2|)))) :named ax_96))
   (assert (! (forall( (|r_$2| $@Map@@ref@To@Bool@@) (|o_$9| ref) (|o'_$3| ref))(!(= (MapRead$$@Map@@ref@To@Bool@@$ (RemEl |r_$2| |o_$9|) |o'_$3|) (and (MapRead$$@Map@@ref@To@Bool@@$ |r_$2| |o'_$3|) (not (= |o_$9| |o'_$3|))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (RemEl |r_$2| |o_$9|) |o'_$3|)))) :named ax_97))
   (assert (! (forall( (|r_$4| $@Map@@ref@To@Bool@@))(!(= (IsGoodRegion |r_$4|) (not (MapRead$$@Map@@ref@To@Bool@@$ |r_$4| null)))  :pattern ( (IsGoodRegion |r_$4|)))) :named ax_98))
   (assert (! (forall( (|s_$0| $@Map@@ref@To@Bool@@) (|r_$3| $@Map@@ref@To@Bool@@) (|o_$10| ref))(!(= (and (MapRead$$@Map@@ref@To@Bool@@$ |s_$0| |o_$10|) (not (MapRead$$@Map@@ref@To@Bool@@$ |r_$3| |o_$10|))) (MapRead$$@Map@@ref@To@Bool@@$ (Minus |s_$0| |r_$3|) |o_$10|))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (Minus |s_$0| |r_$3|) |o_$10|)))) :named ax_99))
   (assert (! (forall( (|s_$1| $@Map@@ref@To@Bool@@) (|o_$11| ref))(=> (not (MapRead$$@Map@@ref@To@Bool@@$ |s_$1| |o_$11|)) (= (+ (Card |s_$1|) 1) (Card (AddEl |s_$1| |o_$11|))))) :named ax_100))
   (assert (! (forall( (|s_$2| $@Map@@ref@To@Bool@@) (|o_$12| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ |s_$2| |o_$12|) (= (- (Card |s_$2|) 1) (Card (RemEl |s_$2| |o_$12|))))) :named ax_101))
   (assert (! (forall( (|s_$3| $@Map@@ref@To@Bool@@) (|t_$0| $@Map@@ref@To@Bool@@))(=> (Equal |s_$3| |t_$0|) (= (Card |t_$0|) (Card |s_$3|)))) :named ax_102))
   (assert (! (forall( (|s_$4| $@Map@@ref@To@Bool@@) (|t_$1| $@Map@@ref@To@Bool@@))(=> (Equal |s_$4| |t_$1|) (= |t_$1| |s_$4|))) :named ax_103))
   (assert (! (forall( (|s| $@Map@@Int@To@Int@@) (|t| $@Map@@Int@To@Int@@))(!(=> (EqualMSet |s| |t|) (= (MaxMSet |t|) (MaxMSet |s|)))  :pattern ( (EqualMSet |s| |t|)))) :named ax_104))
   (assert (! (forall( (|St| TNodeState))(or (= StD |St|) (or (= StL |St|) (= StF |St|)))) :named ax_105))
   (assert (! (InvPr $Heap this) :named ax_106))
   (assert (! (InvStruct $Heap) :named ax_107))
   (assert (! (not (= Le Lb)) :named ax_108))
   (assert (! (not (= Le Lb)) :named ax_109))
   (assert (! (not (= Ln Lb)) :named ax_110))
   (assert (! (not (= Ln Lb)) :named ax_111))
   (assert (! (not (= Ln Le)) :named ax_112))
   (assert (! (not (= Ln Le)) :named ax_113))
   (assert (! (not (= Lp Lb)) :named ax_114))
   (assert (! (not (= Lp Lb)) :named ax_115))
   (assert (! (not (= Lp Le)) :named ax_116))
   (assert (! (not (= Lp Le)) :named ax_117))
   (assert (! (not (= Lp Ln)) :named ax_118))
   (assert (! (not (= Lp Ln)) :named ax_119))
   (assert (! (not (= NA LL)) :named ax_120))
   (assert (! (not (= NA LL)) :named ax_121))
   (assert (! (not (= Nbb Lb)) :named ax_122))
   (assert (! (not (= Nbb Lb)) :named ax_123))
   (assert (! (not (= Nbb Le)) :named ax_124))
   (assert (! (not (= Nbb Le)) :named ax_125))
   (assert (! (not (= Nbb Ln)) :named ax_126))
   (assert (! (not (= Nbb Ln)) :named ax_127))
   (assert (! (not (= Nbb Lp)) :named ax_128))
   (assert (! (not (= Nbb Lp)) :named ax_129))
   (assert (! (not (= NC LL)) :named ax_130))
   (assert (! (not (= NC LL)) :named ax_131))
   (assert (! (not (= NC NA)) :named ax_132))
   (assert (! (not (= NC NA)) :named ax_133))
   (assert (! (not (= ND LL)) :named ax_134))
   (assert (! (not (= ND LL)) :named ax_135))
   (assert (! (not (= ND NA)) :named ax_136))
   (assert (! (not (= ND NA)) :named ax_137))
   (assert (! (not (= ND NC)) :named ax_138))
   (assert (! (not (= ND NC)) :named ax_139))
   (assert (! (not (= Ndpr Ncpr)) :named ax_140))
   (assert (! (not (= Ndpr Ncpr)) :named ax_141))
   (assert (! (not (= Np Lb)) :named ax_142))
   (assert (! (not (= Np Lb)) :named ax_143))
   (assert (! (not (= Np Le)) :named ax_144))
   (assert (! (not (= Np Le)) :named ax_145))
   (assert (! (not (= Np Ln)) :named ax_146))
   (assert (! (not (= Np Ln)) :named ax_147))
   (assert (! (not (= Np Lp)) :named ax_148))
   (assert (! (not (= Np Lp)) :named ax_149))
   (assert (! (not (= Np Nbb)) :named ax_150))
   (assert (! (not (= Np Nbb)) :named ax_151))
   (assert (! (not (= Nt Lb)) :named ax_152))
   (assert (! (not (= Nt Lb)) :named ax_153))
   (assert (! (not (= Nt Le)) :named ax_154))
   (assert (! (not (= Nt Le)) :named ax_155))
   (assert (! (not (= Nt Ln)) :named ax_156))
   (assert (! (not (= Nt Ln)) :named ax_157))
   (assert (! (not (= Nt Lp)) :named ax_158))
   (assert (! (not (= Nt Lp)) :named ax_159))
   (assert (! (not (= Nt Nbb)) :named ax_160))
   (assert (! (not (= Nt Nbb)) :named ax_161))
   (assert (! (not (= Nt Np)) :named ax_162))
   (assert (! (not (= Nt Np)) :named ax_163))
   (assert (! (not (= r null)) :named ax_164))
   (assert (! (not (= StF StD)) :named ax_165))
   (assert (! (not (= StF StD)) :named ax_166))
   (assert (! (not (= StL StD)) :named ax_167))
   (assert (! (not (= StL StD)) :named ax_168))
   (assert (! (not (= StL StF)) :named ax_169))
   (assert (! (not (= StL StF)) :named ax_170))
   (assert (! (not (= this null)) :named ax_171))
   (assert (! (not (= this r)) :named ax_172))

;Program
(assert (! (and true
(or anon10_Else anon10_Then)
) :named ax_true))
(assert (! (=> anon10_Else (and true 
   (and true
      (= $@condition (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF))
      (= $Heap@3 (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap this Nbb r))
      (not $@condition)
      (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF))
   )
(or anon12_Else anon12_Then)
)) :named ax_anon10_Else))
(assert (! (=> anon10_Then (and true 
   (and true
      $@condition
      (= $@condition (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF))
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)
      (not (= r null))
      (not (= this null))
      (not (= this r))
   )
(or anon10_Then@3_assertion anon10_Then@4)
)) :named ax_anon10_Then))
(assert (! (=> anon12_Else (and true 
   (and true
      (= $@condition_$1 (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 this ND) r)))
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 this ND) r)
      (not $@condition_$1)
      (not (= r null))
      (not (= this null))
   )
(or anon12_Else@2_assertion anon12_Else@3)
)) :named ax_anon12_Else))
(assert (! (=> anon12_Then (and true 
   (and true
      $@condition_$1
      (= $@condition_$1 (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 this ND) r)))
      (not (= r null))
      (not (= r this))
      (not (= this null))
      (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 this ND) r))
   )
(or anon12_Then@4_assertion anon12_Then@5)
)) :named ax_anon12_Then))
(assert (! (=> anon10_Then@3_assertion (not (and true
   (and true
      (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) this))
   )
))) :named ax_anon10_Then@3_assertion))
(assert (! (=> anon10_Then@4 (and true 
   (and true
      (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) this))
   )
(or anon10_Then@4_assertion anon10_Then@5)
)) :named ax_anon10_Then@4))
(assert (! (=> anon12_Else@2_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@3 this Np) null)
   )
))) :named ax_anon12_Else@2_assertion))
(assert (! (=> anon12_Else@3 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@3 this Np) null)
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 this ND) r)
   )
(or anon12_Else@4_assertion anon12_Else@5)
)) :named ax_anon12_Else@3))
(assert (! (=> anon12_Then@4_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@3 this Np) null)
   )
))) :named ax_anon12_Then@4_assertion))
(assert (! (=> anon12_Then@5 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@3 this Np) null)
   )
(or anon12_Then@5_assertion anon12_Then@6)
)) :named ax_anon12_Then@5))
(assert (! (=> anon10_Then@4_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap r Np) null)
   )
))) :named ax_anon10_Then@4_assertion))
(assert (! (=> anon10_Then@5 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap r Np) null)
   )
(or anon10_Then@5_assertion anon10_Then@6)
)) :named ax_anon10_Then@5))
(assert (! (=> anon12_Else@4_assertion (not (and true
   (and true
      (InvTree $Heap@3)
   )
))) :named ax_anon12_Else@4_assertion))
(assert (! (=> anon12_Else@5 (and true 
   (and true
      (InvTree $Heap@3)
   )
(or anon12_Else@5_assertion anon12_Else@6)
)) :named ax_anon12_Else@5))
(assert (! (=> anon12_Then@5_assertion (not (and true
   (and true
      (InvTree $Heap@3)
   )
))) :named ax_anon12_Then@5_assertion))
(assert (! (=> anon12_Then@6 (and true 
   (and true
      (InvTree $Heap@3)
   )
(or anon12_Then@6_assertion anon12_Then@7)
)) :named ax_anon12_Then@6))
(assert (! (=> anon10_Then@5_assertion (not (and true
   (and true
      (InvTree $Heap)
   )
))) :named ax_anon10_Then@5_assertion))
(assert (! (=> anon10_Then@6 (and true 
   (and true
      (InvTree $Heap)
   )
(or anon10_Then@6_assertion anon10_Then@7)
)) :named ax_anon10_Then@6))
(assert (! (=> anon12_Else@5_assertion (not (and true
   (and true
      (InvList $Heap@3)
   )
))) :named ax_anon12_Else@5_assertion))
(assert (! (=> anon12_Else@6 (and true 
   (and true
      (InvList $Heap@3)
   )
(or anon12_Else@6_assertion anon12_Else@7)
)) :named ax_anon12_Else@6))
(assert (! (=> anon12_Then@6_assertion (not (and true
   (and true
      (InvList $Heap@3)
   )
))) :named ax_anon12_Then@6_assertion))
(assert (! (=> anon12_Then@7 (and true 
   (and true
      (= $Heap@5 (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 this NSt StL))
      (= $Heap@8 $Heap@5)
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r NC) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NC) this))
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 this Np) r)
      (forall( (|o_$82_$0| ref) (|f_$5_$0| field$ref$))(or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 |o_$82_$0| |f_$5_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@3 |o_$82_$0| |f_$5_$0|)) (and (= |o_$82_$0| this) (= |f_$5_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 this ND) this) |o_$82_$0|) (= |f_$5_$0| Nt))) (and (= |o_$82_$0| r) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$82_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 this ND) this) |o_$82_$0|) false)))
      (forall( (|o_$82_$1| ref) (|f_$5_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 |o_$82_$1| |f_$5_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 |o_$82_$1| |f_$5_$1|)) (and (= |o_$82_$1| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 this ND) this) |o_$82_$1|) false)) (and (= |o_$82_$1| r) (= |f_$5_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$82_$1|) (= |f_$5_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 this ND) this) |o_$82_$1|) (= |f_$5_$1| NA))))
      (forall( (|o_$82_$2| ref) (|f_$5_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@4 |o_$82_$2| |f_$5_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@3 |o_$82_$2| |f_$5_$2|)) (and (= |o_$82_$2| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 this ND) this) |o_$82_$2|) false)) (and (= |o_$82_$2| r) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$82_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 this ND) this) |o_$82_$2|) false)))
      (forall( (|o_$82_$3| ref) (|f_$5_$3| field$Int$))(or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@4 |o_$82_$3| |f_$5_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@3 |o_$82_$3| |f_$5_$3|)) (and (= |o_$82_$3| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 this ND) this) |o_$82_$3|) false)) (and (= |o_$82_$3| r) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$82_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 this ND) this) |o_$82_$3|) false)))
      (forall( (|o_$82_$4| ref) (|f_$5_$4| field$TNodeState$))(or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 |o_$82_$4| |f_$5_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 |o_$82_$4| |f_$5_$4|)) (and (= |o_$82_$4| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 this ND) this) |o_$82_$4|) false)) (and (= |o_$82_$4| r) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$82_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 this ND) this) |o_$82_$4|) false)))
      (forall( (|o_$83| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 this ND) this) |o_$83|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 |o_$83| Nt) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@3 r Nt))))
      (forall( (|o_$84| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r NA) r) |o_$84|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 |o_$84| ND) (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 |o_$84| ND) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 this ND) this)))))
      (forall( (|o_$85| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 this ND) this) |o_$85|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 |o_$85| NA) (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 |o_$85| NA) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r NA) r)))))
      (InvList $Heap@3)
      (InvList $Heap@4)
      (InvTree $Heap@4)
   )
anon6
)) :named ax_anon12_Then@7))
(assert (! (=> anon10_Then@6_assertion (not (and true
   (and true
      (InvList $Heap)
   )
))) :named ax_anon10_Then@6_assertion))
(assert (! (=> anon10_Then@7 (and true 
   (and true
      (= $Heap@1 (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 r Nbb this))
      (= $Heap@2 (MapWrite$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r NSt StL))
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 this NC) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this NC) r))
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 r Np) this)
      (forall( (|o_$75_$0| ref) (|f_$3_$0| field$ref$))(or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 |o_$75_$0| |f_$3_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap |o_$75_$0| |f_$3_$0|)) (and (= |o_$75_$0| r) (= |f_$3_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$75_$0|) (= |f_$3_$0| Nt))) (and (= |o_$75_$0| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this NA) this) |o_$75_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$75_$0|) false)))
      (forall( (|o_$75_$1| ref) (|f_$3_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 |o_$75_$1| |f_$3_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$75_$1| |f_$3_$1|)) (and (= |o_$75_$1| r) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$75_$1|) false)) (and (= |o_$75_$1| this) (= |f_$3_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this NA) this) |o_$75_$1|) (= |f_$3_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$75_$1|) (= |f_$3_$1| NA))))
      (forall( (|o_$75_$2| ref) (|f_$3_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@0 |o_$75_$2| |f_$3_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap |o_$75_$2| |f_$3_$2|)) (and (= |o_$75_$2| r) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$75_$2|) false)) (and (= |o_$75_$2| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this NA) this) |o_$75_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$75_$2|) false)))
      (forall( (|o_$75_$3| ref) (|f_$3_$3| field$Int$))(or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@0 |o_$75_$3| |f_$3_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap |o_$75_$3| |f_$3_$3|)) (and (= |o_$75_$3| r) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$75_$3|) false)) (and (= |o_$75_$3| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this NA) this) |o_$75_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$75_$3|) false)))
      (forall( (|o_$75_$4| ref) (|f_$3_$4| field$TNodeState$))(or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 |o_$75_$4| |f_$3_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap |o_$75_$4| |f_$3_$4|)) (and (= |o_$75_$4| r) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$75_$4|) false)) (and (= |o_$75_$4| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this NA) this) |o_$75_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$75_$4|) false)))
      (forall( (|o_$76| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r ND) r) |o_$76|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 |o_$76| Nt) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap this Nt))))
      (forall( (|o_$77| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 this NA) this) |o_$77|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 |o_$77| ND) (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$77| ND) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r ND) r)))))
      (forall( (|o_$78| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$78|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 |o_$78| NA) (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$78| NA) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 this NA) this)))))
      (InvList $Heap)
      (InvList $Heap@0)
      (InvTree $Heap@0)
   )
(or anon11_Else anon11_Then)
)) :named ax_anon10_Then@7))
(assert (! (=> anon12_Else@6_assertion (not (and true
   (and true
      (forall( (|o_$86| ref))(!(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$86|) (IsEmptyList $Heap@3 |o_$86|))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$86|) (IsEmptyList $Heap@3 |o_$86|))))
   )
))) :named ax_anon12_Else@6_assertion))
(assert (! (=> anon12_Else@7 (and true 
   (and true
      (= $Heap@8 $Heap@7)
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 this Ln) null)
      (= call0formal@r1@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 this LL))
      (forall( (|o_$86| ref))(!(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$86|) (IsEmptyList $Heap@3 |o_$86|))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$86|) (IsEmptyList $Heap@3 |o_$86|))))
      (forall( (|o_$87| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$87|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 |o_$87| LL) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r))))
      (forall( (|o_$88| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$88|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 |o_$88| Lb) r)))
      (forall( (|o_$89| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$89|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 |o_$89| Le) this)))
      (forall( (|o_$90| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) this) |o_$90|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@3 |o_$90| Np) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 |o_$90| Ln))))
      (forall( (|o_$91| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$91|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 |o_$91| Np) null)))
      (forall( (|o_$92| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) this) r) |o_$92|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 |o_$92| NC) (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 |o_$92| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 |o_$92| Lp)))))
      (forall( (|o_$93| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) this) r) |o_$93|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 |o_$93| ND) (Minus (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 |o_$93| ND) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 |o_$93| Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 |o_$93| Lp))))))
      (forall( (|o_$94| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$94|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 |o_$94| NA) Empty)))
      (forall( (|o_$95_$0| ref) (|f_$6_$0| field$ref$))(or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 |o_$95_$0| |f_$6_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@3 |o_$95_$0| |f_$6_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$0|) (= |f_$6_$0| Lb))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$0|) (= |f_$6_$0| Le))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$0|) (= |f_$6_$0| Lp))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$0|) (= |f_$6_$0| Ln))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) this) |o_$95_$0|) (= |f_$6_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 this Lp)) |o_$95_$0|) (= |f_$6_$0| Nt))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) this) r) |o_$95_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 this Lp)) |o_$95_$0|) false)))
      (forall( (|o_$95_$1| ref) (|f_$6_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 |o_$95_$1| |f_$6_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 |o_$95_$1| |f_$6_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$1|) (= |f_$6_$1| LL))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) this) |o_$95_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 this Lp)) |o_$95_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) this) r) |o_$95_$1|) (= |f_$6_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$1|) (= |f_$6_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 this Lp)) |o_$95_$1|) (= |f_$6_$1| NA))))
      (forall( (|o_$95_$2| ref) (|f_$6_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@6 |o_$95_$2| |f_$6_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@3 |o_$95_$2| |f_$6_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) this) |o_$95_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 this Lp)) |o_$95_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) this) r) |o_$95_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 this Lp)) |o_$95_$2|) false)))
      (forall( (|o_$95_$3| ref) (|f_$6_$3| field$Int$))(or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@6 |o_$95_$3| |f_$6_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@3 |o_$95_$3| |f_$6_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) this) |o_$95_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 this Lp)) |o_$95_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) this) r) |o_$95_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 this Lp)) |o_$95_$3|) false)))
      (forall( (|o_$95_$4| ref) (|f_$6_$4| field$TNodeState$))(or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@6 |o_$95_$4| |f_$6_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 |o_$95_$4| |f_$6_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) this) |o_$95_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 this Lp)) |o_$95_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) this) r) |o_$95_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r NA) r) |o_$95_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 this Lp)) |o_$95_$4|) false)))
      (forall( (|o_$96| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ call0formal@r1@0 |o_$96|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@7 |o_$96| NSt) StD)))
      (forall( (|o_$97_$0| ref) (|f_$7_$0| field$ref$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@7 |o_$97_$0| |f_$7_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 |o_$97_$0| |f_$7_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ call0formal@r1@0 |o_$97_$0|) false)))
      (forall( (|o_$97_$1| ref) (|f_$7_$1| field$$@Map@@ref@To@Bool@@$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@7 |o_$97_$1| |f_$7_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 |o_$97_$1| |f_$7_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ call0formal@r1@0 |o_$97_$1|) false)))
      (forall( (|o_$97_$2| ref) (|f_$7_$2| field$$@Map@@Int@To@Int@@$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@7 |o_$97_$2| |f_$7_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@6 |o_$97_$2| |f_$7_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ call0formal@r1@0 |o_$97_$2|) false)))
      (forall( (|o_$97_$3| ref) (|f_$7_$3| field$Int$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@7 |o_$97_$3| |f_$7_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@6 |o_$97_$3| |f_$7_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ call0formal@r1@0 |o_$97_$3|) false)))
      (forall( (|o_$97_$4| ref) (|f_$7_$4| field$TNodeState$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@7 |o_$97_$4| |f_$7_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@6 |o_$97_$4| |f_$7_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ call0formal@r1@0 |o_$97_$4|) (= |f_$7_$4| NSt))))
      (InvList $Heap@6)
      (InvTree $Heap@6)
   )
anon6
)) :named ax_anon12_Else@7))
(assert (! (=> anon11_Else (and true 
   (and true
      (= $@condition_$0 (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@2 r Ncpr) 0)))
      (= $Heap@12 $Heap@2)
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@2 r Ncpr) 0)
      (not $@condition_$0)
   )
$join_2
)) :named ax_anon11_Else))
(assert (! (=> anon11_Then (and true 
   (and true
      $@condition_$0
      (= $@condition_$0 (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@2 r Ncpr) 0)))
      (= call2formal@to@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@2 r Ncpr))
      (>= 0 0)
      (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@2 r Ncpr) 0))
   )
(or anon11_Then@1_assertion anon11_Then@2)
)) :named ax_anon11_Then))
(assert (! (=> anon6 (and true 
   (and true
   )
(or anon6@1 anon6_assertion)
)) :named ax_anon6))
(assert (! (=> anon11_Then@1_assertion (not (and true
   (and true
      (>= call2formal@to@0 0)
   )
))) :named ax_anon11_Then@1_assertion))
(assert (! (=> anon11_Then@2 (and true 
   (and true
      (>= call2formal@to@0 0)
      (not (= 0 call2formal@to@0))
      (not (= this null))
   )
(or anon11_Then@4_assertion anon11_Then@5)
)) :named ax_anon11_Then@2))
(assert (! (=> anon6@1 (and true 
   (and true
      (forall( (|o_$98| ref))(=> (not (= |o_$98| r)) (Equal (BBSet $Heap@8 |o_$98|) (BBSet $Heap |o_$98|))))
   )
(or anon6@1_assertion anon6@2)
)) :named ax_anon6@1))
(assert (! (=> anon6_assertion (not (and true
   (and true
      (forall( (|o_$98| ref))(=> (not (= |o_$98| r)) (Equal (BBSet $Heap@8 |o_$98|) (BBSet $Heap |o_$98|))))
   )
))) :named ax_anon6_assertion))
(assert (! (=> anon11_Then@4_assertion (not (and true
   (and true
      (InvStruct $Heap@2)
   )
))) :named ax_anon11_Then@4_assertion))
(assert (! (=> anon11_Then@5 (and true 
   (and true
      (InvStruct $Heap@2)
   )
(or anon11_Then@5_assertion anon11_Then@6)
)) :named ax_anon11_Then@5))
(assert (! (=> anon6@1_assertion (not (and true
   (and true
      (InvStruct $Heap@8)
   )
))) :named ax_anon6@1_assertion))
(assert (! (=> anon6@2 (and true 
   (and true
      (InvStruct $Heap@8)
   )
(or anon13_Else anon13_Then)
)) :named ax_anon6@2))
(assert (! (=> anon11_Then@5_assertion (not (and true
   (and true
      (InvPrSt $Heap@2 this 0 call2formal@to@0)
   )
))) :named ax_anon11_Then@5_assertion))
(assert (! (=> anon11_Then@6 (and true 
   (and true
      (InvPrSt $Heap@2 this 0 call2formal@to@0)
   )
(or anon11_Then@6_assertion anon11_Then@7)
)) :named ax_anon11_Then@6))
(assert (! (=> anon13_Else (and true 
   (and true
      (= $@condition_$2 (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@8 this Ncpr) 0)))
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@8 this Ncpr) 0)
      (not $@condition_$2)
   )
anon13_Else@1
)) :named ax_anon13_Else))
(assert (! (=> anon13_Then (and true 
   (and true
      $@condition_$2
      (= $@condition_$2 (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@8 this Ncpr) 0)))
      (= call2formal@to@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@8 this Ncpr))
      (>= 0 0)
      (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@8 this Ncpr) 0))
   )
(or anon13_Then@1_assertion anon13_Then@2)
)) :named ax_anon13_Then))
(assert (! (=> anon11_Then@6_assertion (not (and true
   (and true
      (forall( (|o_$79| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCSet $Heap@2 this) |o_$79|) (InvPr $Heap@2 |o_$79|)))
   )
))) :named ax_anon11_Then@6_assertion))
(assert (! (=> anon11_Then@7 (and true 
   (and true
      (= $Heap@12 $Heap@11)
      (forall( (|o_$79| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCSet $Heap@2 this) |o_$79|) (InvPr $Heap@2 |o_$79|)))
      (forall( (|o_$80| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@11 this) |o_$80|) (InvPr $Heap@11 |o_$80|)))
      (forall( (|o_$81_$0| ref) (|f_$4_$0| field$ref$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@11 |o_$81_$0| |f_$4_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 |o_$81_$0| |f_$4_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@2 this) |o_$81_$0|) (or false false))))
      (forall( (|o_$81_$1| ref) (|f_$4_$1| field$$@Map@@ref@To@Bool@@$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@11 |o_$81_$1| |f_$4_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 |o_$81_$1| |f_$4_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@2 this) |o_$81_$1|) (or false false))))
      (forall( (|o_$81_$2| ref) (|f_$4_$2| field$$@Map@@Int@To@Int@@$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@11 |o_$81_$2| |f_$4_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@2 |o_$81_$2| |f_$4_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@2 this) |o_$81_$2|) (or (= |f_$4_$2| Npr) false))))
      (forall( (|o_$81_$3| ref) (|f_$4_$3| field$Int$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@11 |o_$81_$3| |f_$4_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@2 |o_$81_$3| |f_$4_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@2 this) |o_$81_$3|) (or false (= |f_$4_$3| Ncpr)))))
      (forall( (|o_$81_$4| ref) (|f_$4_$4| field$TNodeState$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@11 |o_$81_$4| |f_$4_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@2 |o_$81_$4| |f_$4_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@2 this) |o_$81_$4|) (or false false))))
      (InvStruct $Heap@11)
   )
$join_2
)) :named ax_anon11_Then@7))
(assert (! (=> anon13_Else@1 (and true 
   (and true
      (Equal (NACCSet $Heap@8 r) (RemEl (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@8 r NA) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@8 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@8 r Nt) LL)) r))
   )
(or anon13_Else@1_assertion anon13_Else@2)
)) :named ax_anon13_Else@1))
(assert (! (=> anon13_Then@1_assertion (not (and true
   (and true
      (>= call2formal@to@0 0)
   )
))) :named ax_anon13_Then@1_assertion))
(assert (! (=> anon13_Then@2 (and true 
   (and true
      (>= call2formal@to@0 0)
      (InvStruct $Heap@8)
      (not (= 0 call2formal@to@0))
      (not (= r null))
   )
(or anon13_Then@5_assertion anon13_Then@6)
)) :named ax_anon13_Then@2))
(assert (! (=> $join_2 (and true 
   (and true
   )
GeneratedUnifiedExit
)) :named ax_$join_2))
(assert (! (=> anon13_Else@1_assertion (not (and true
   (and true
      (Equal (NACCSet $Heap@8 r) (NACCSet $Heap r))
   )
))) :named ax_anon13_Else@1_assertion))
(assert (! (=> anon13_Else@2 (and true 
   (and true
      (Equal (NACCSet $Heap@8 r) (NACCSet $Heap r))
   )
anon13_Else@3
)) :named ax_anon13_Else@2))
(assert (! (=> anon13_Then@5_assertion (not (and true
   (and true
      (InvPrSt $Heap@8 r 0 call2formal@to@0)
   )
))) :named ax_anon13_Then@5_assertion))
(assert (! (=> anon13_Then@6 (and true 
   (and true
      (InvPrSt $Heap@8 r 0 call2formal@to@0)
   )
(or anon13_Then@6_assertion anon13_Then@7)
)) :named ax_anon13_Then@6))
(assert (! (=> anon13_Else@3 (and true 
   (and true
      (forall( (|o_$103| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap r) |o_$103|) (InvPr $Heap |o_$103|)))
   )
(or anon13_Else@3_assertion anon13_Else@4)
)) :named ax_anon13_Else@3))
(assert (! (=> anon13_Then@6_assertion (not (and true
   (and true
      (forall( (|o_$99| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCSet $Heap@8 r) |o_$99|) (InvPr $Heap@8 |o_$99|)))
   )
))) :named ax_anon13_Then@6_assertion))
(assert (! (=> anon13_Then@7 (and true 
   (and true
      (forall( (|o_$100| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@9 r) |o_$100|) (InvPr $Heap@9 |o_$100|)))
      (forall( (|o_$101_$0| ref) (|f_$8_$0| field$ref$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@9 |o_$101_$0| |f_$8_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@8 |o_$101_$0| |f_$8_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@8 r) |o_$101_$0|) (or false false))))
      (forall( (|o_$101_$1| ref) (|f_$8_$1| field$$@Map@@ref@To@Bool@@$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@9 |o_$101_$1| |f_$8_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@8 |o_$101_$1| |f_$8_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@8 r) |o_$101_$1|) (or false false))))
      (forall( (|o_$101_$2| ref) (|f_$8_$2| field$$@Map@@Int@To@Int@@$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@9 |o_$101_$2| |f_$8_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@8 |o_$101_$2| |f_$8_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@8 r) |o_$101_$2|) (or (= |f_$8_$2| Npr) false))))
      (forall( (|o_$101_$3| ref) (|f_$8_$3| field$Int$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@9 |o_$101_$3| |f_$8_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@8 |o_$101_$3| |f_$8_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@8 r) |o_$101_$3|) (or false (= |f_$8_$3| Ncpr)))))
      (forall( (|o_$101_$4| ref) (|f_$8_$4| field$TNodeState$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@9 |o_$101_$4| |f_$8_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@8 |o_$101_$4| |f_$8_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@8 r) |o_$101_$4|) (or false false))))
      (forall( (|o_$99| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCSet $Heap@8 r) |o_$99|) (InvPr $Heap@8 |o_$99|)))
      (InvStruct $Heap@9)
   )
(or anon13_Then@7_assertion anon13_Then@8)
)) :named ax_anon13_Then@7))
(assert (! (=> anon13_Else@3_assertion (not (and true
   (and true
      (forall( (|o_$104| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@8 r) |o_$104|) (InvPr $Heap |o_$104|)))
   )
))) :named ax_anon13_Else@3_assertion))
(assert (! (=> anon13_Else@4 (and true 
   (and true
      (forall( (|o_$104| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@8 r) |o_$104|) (InvPr $Heap |o_$104|)))
   )
(or anon13_Else@4_assertion anon13_Else@5)
)) :named ax_anon13_Else@4))
(assert (! (=> anon13_Then@7_assertion (not (and true
   (and true
      (InvPr $Heap@9 this)
   )
))) :named ax_anon13_Then@7_assertion))
(assert (! (=> anon13_Then@8 (and true 
   (and true
      (InvPr $Heap@9 this)
   )
(or anon13_Then@8_assertion anon13_Then@9)
)) :named ax_anon13_Then@8))
(assert (! (=> anon13_Else@4_assertion (not (and true
   (and true
      (forall( (|o_$105| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@8 r) |o_$105|) (forall( (|i_$10| Int))(=> (> |i_$10| 0) (= (MapRead$$@Map@@Int@To@Int@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap |o_$105| Npr) |i_$10|) (Card (FBP $Heap (BBSet $Heap |o_$105|) |i_$10|)))))))
   )
))) :named ax_anon13_Else@4_assertion))
(assert (! (=> anon13_Else@5 (and true 
   (and true
      (forall( (|o_$105| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@8 r) |o_$105|) (forall( (|i_$10| Int))(=> (> |i_$10| 0) (= (MapRead$$@Map@@Int@To@Int@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap |o_$105| Npr) |i_$10|) (Card (FBP $Heap (BBSet $Heap |o_$105|) |i_$10|)))))))
   )
(or anon13_Else@5_assertion anon13_Else@6)
)) :named ax_anon13_Else@5))
(assert (! (=> anon13_Then@8_assertion (not (and true
   (and true
      (forall( (|o_$102| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@9 r) |o_$102|) (InvPr $Heap@9 |o_$102|)))
   )
))) :named ax_anon13_Then@8_assertion))
(assert (! (=> anon13_Then@9 (and true 
   (and true
      (= $Heap@10 $Heap@9)
      (forall( (|o_$102| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@9 r) |o_$102|) (InvPr $Heap@9 |o_$102|)))
   )
anon9
)) :named ax_anon13_Then@9))
(assert (! (=> anon13_Else@5_assertion (not (and true
   (and true
      (forall( (|o_$106| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@8 r) |o_$106|) (forall( (|i_$11| Int))(=> (> |i_$11| 0) (= (MapRead$$@Map@@Int@To@Int@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@8 |o_$106| Npr) |i_$11|) (Card (FBP $Heap@8 (BBSet $Heap@8 |o_$106|) |i_$11|)))))))
   )
))) :named ax_anon13_Else@5_assertion))
(assert (! (=> anon13_Else@6 (and true 
   (and true
      (forall( (|o_$106| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@8 r) |o_$106|) (forall( (|i_$11| Int))(=> (> |i_$11| 0) (= (MapRead$$@Map@@Int@To@Int@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@8 |o_$106| Npr) |i_$11|) (Card (FBP $Heap@8 (BBSet $Heap@8 |o_$106|) |i_$11|)))))))
   )
(or anon13_Else@6_assertion anon13_Else@7)
)) :named ax_anon13_Else@6))
(assert (! (=> anon13_Else@6_assertion (not (and true
   (and true
      (forall( (|o_$107| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@8 r) |o_$107|) (InvPr $Heap@8 |o_$107|)))
   )
))) :named ax_anon13_Else@6_assertion))
(assert (! (=> anon13_Else@7 (and true 
   (and true
      (= $Heap@10 $Heap@8)
      (forall( (|o_$107| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@8 r) |o_$107|) (InvPr $Heap@8 |o_$107|)))
   )
anon9
)) :named ax_anon13_Else@7))
(assert (! (=> anon9 (and true 
   (and true
   )
(or anon9@1 anon9_assertion)
)) :named ax_anon9))
(assert (! (=> anon9@1 (and true 
   (and true
      (= $Heap@12 $Heap@10)
      (forall( (|o_$108| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@10 r) |o_$108|) (InvPr $Heap@10 |o_$108|)))
   )
GeneratedUnifiedExit
)) :named ax_anon9@1))
(assert (! (=> anon9_assertion (not (and true
   (and true
      (forall( (|o_$108| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@10 r) |o_$108|) (InvPr $Heap@10 |o_$108|)))
   )
))) :named ax_anon9_assertion))
(assert (! (=> GeneratedUnifiedExit (and true 
   (and true
   )
(or GeneratedUnifiedExit@1 GeneratedUnifiedExit_assertion)
)) :named ax_GeneratedUnifiedExit))
(assert (! (=> GeneratedUnifiedExit@1 (and true 
   (and true
      (InvStruct $Heap@12)
   )
(or GeneratedUnifiedExit@1_assertion GeneratedUnifiedExit@2)
)) :named ax_GeneratedUnifiedExit@1))
(assert (! (=> GeneratedUnifiedExit_assertion (not (and true
   (and true
      (InvStruct $Heap@12)
   )
))) :named ax_GeneratedUnifiedExit_assertion))
(assert (! (=> GeneratedUnifiedExit@1_assertion (not (and true
   (and true
      (InvPr $Heap@12 this)
   )
))) :named ax_GeneratedUnifiedExit@1_assertion))
(assert (! (=> GeneratedUnifiedExit@2 (and true 
   (and true
      (InvPr $Heap@12 this)
   )
(or GeneratedUnifiedExit@2_assertion GeneratedUnifiedExit@3)
)) :named ax_GeneratedUnifiedExit@2))
(assert (! (=> GeneratedUnifiedExit@2_assertion (not (and true
   (and true
      (forall( (|o_$109| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@12 r) |o_$109|) (InvPr $Heap@12 |o_$109|)))
   )
))) :named ax_GeneratedUnifiedExit@2_assertion))
(assert (! (=> GeneratedUnifiedExit@3 (and true 
   (and true
      (forall( (|o_$109| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@12 r) |o_$109|) (InvPr $Heap@12 |o_$109|)))
   )
(or GeneratedUnifiedExit@3_assertion GeneratedUnifiedExit@4)
)) :named ax_GeneratedUnifiedExit@3))
(assert (! (=> GeneratedUnifiedExit@3_assertion (not (and true
   (and true
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@12 this NSt) StF))
   )
))) :named ax_GeneratedUnifiedExit@3_assertion))
(assert (! (=> GeneratedUnifiedExit@4 (and true 
   (and true
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@12 this NSt) StF))
   )
(or GeneratedUnifiedExit@4_assertion GeneratedUnifiedExit@5)
)) :named ax_GeneratedUnifiedExit@4))
(assert (! (=> GeneratedUnifiedExit@4_assertion (not (and true
   (and true
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@12 r NSt) StL))
   )
))) :named ax_GeneratedUnifiedExit@4_assertion))
(assert (! (=> GeneratedUnifiedExit@5 (and true 
   (and true
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@12 r NSt) StL))
   )
(or GeneratedUnifiedExit@5_assertion GeneratedUnifiedExit@6)
)) :named ax_GeneratedUnifiedExit@5))
(assert (! (=> GeneratedUnifiedExit@5_assertion (not (and true
   (and true
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF) (and (and (and (and (forall( (|o_$110_$0| ref) (|f_$9_$0| field$ref$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 |o_$110_$0| |f_$9_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap |o_$110_$0| |f_$9_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap this) |o_$110_$0|) (or false false))) (and (= |o_$110_$0| r) (= |f_$9_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$110_$0|) (= |f_$9_$0| Nt))) (and (= |o_$110_$0| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this NA) this) |o_$110_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$110_$0|) false)) (and (= |o_$110_$0| r) (= |f_$9_$0| Nbb))) (and (= |o_$110_$0| r) false))) (forall( (|o_$110_$1| ref) (|f_$9_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 |o_$110_$1| |f_$9_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$110_$1| |f_$9_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap this) |o_$110_$1|) (or false false))) (and (= |o_$110_$1| r) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$110_$1|) false)) (and (= |o_$110_$1| this) (= |f_$9_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this NA) this) |o_$110_$1|) (= |f_$9_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$110_$1|) (= |f_$9_$1| NA))) (and (= |o_$110_$1| r) false)) (and (= |o_$110_$1| r) false)))) (forall( (|o_$110_$2| ref) (|f_$9_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@12 |o_$110_$2| |f_$9_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap |o_$110_$2| |f_$9_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap this) |o_$110_$2|) (or (= |f_$9_$2| Npr) false))) (and (= |o_$110_$2| r) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$110_$2|) false)) (and (= |o_$110_$2| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this NA) this) |o_$110_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$110_$2|) false)) (and (= |o_$110_$2| r) false)) (and (= |o_$110_$2| r) false)))) (forall( (|o_$110_$3| ref) (|f_$9_$3| field$Int$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@12 |o_$110_$3| |f_$9_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap |o_$110_$3| |f_$9_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap this) |o_$110_$3|) (or false (= |f_$9_$3| Ncpr)))) (and (= |o_$110_$3| r) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$110_$3|) false)) (and (= |o_$110_$3| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this NA) this) |o_$110_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$110_$3|) false)) (and (= |o_$110_$3| r) false)) (and (= |o_$110_$3| r) false)))) (forall( (|o_$110_$4| ref) (|f_$9_$4| field$TNodeState$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@12 |o_$110_$4| |f_$9_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap |o_$110_$4| |f_$9_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap this) |o_$110_$4|) (or false false))) (and (= |o_$110_$4| r) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$110_$4|) false)) (and (= |o_$110_$4| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this NA) this) |o_$110_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$110_$4|) false)) (and (= |o_$110_$4| r) false)) (and (= |o_$110_$4| r) (= |f_$9_$4| NSt))))))
   )
))) :named ax_GeneratedUnifiedExit@5_assertion))
(assert (! (=> GeneratedUnifiedExit@6 (and true 
   (and true
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF) (and (and (and (and (forall( (|o_$110_$0| ref) (|f_$9_$0| field$ref$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 |o_$110_$0| |f_$9_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap |o_$110_$0| |f_$9_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap this) |o_$110_$0|) (or false false))) (and (= |o_$110_$0| r) (= |f_$9_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$110_$0|) (= |f_$9_$0| Nt))) (and (= |o_$110_$0| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this NA) this) |o_$110_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$110_$0|) false)) (and (= |o_$110_$0| r) (= |f_$9_$0| Nbb))) (and (= |o_$110_$0| r) false))) (forall( (|o_$110_$1| ref) (|f_$9_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 |o_$110_$1| |f_$9_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$110_$1| |f_$9_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap this) |o_$110_$1|) (or false false))) (and (= |o_$110_$1| r) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$110_$1|) false)) (and (= |o_$110_$1| this) (= |f_$9_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this NA) this) |o_$110_$1|) (= |f_$9_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$110_$1|) (= |f_$9_$1| NA))) (and (= |o_$110_$1| r) false)) (and (= |o_$110_$1| r) false)))) (forall( (|o_$110_$2| ref) (|f_$9_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@12 |o_$110_$2| |f_$9_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap |o_$110_$2| |f_$9_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap this) |o_$110_$2|) (or (= |f_$9_$2| Npr) false))) (and (= |o_$110_$2| r) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$110_$2|) false)) (and (= |o_$110_$2| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this NA) this) |o_$110_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$110_$2|) false)) (and (= |o_$110_$2| r) false)) (and (= |o_$110_$2| r) false)))) (forall( (|o_$110_$3| ref) (|f_$9_$3| field$Int$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@12 |o_$110_$3| |f_$9_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap |o_$110_$3| |f_$9_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap this) |o_$110_$3|) (or false (= |f_$9_$3| Ncpr)))) (and (= |o_$110_$3| r) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$110_$3|) false)) (and (= |o_$110_$3| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this NA) this) |o_$110_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$110_$3|) false)) (and (= |o_$110_$3| r) false)) (and (= |o_$110_$3| r) false)))) (forall( (|o_$110_$4| ref) (|f_$9_$4| field$TNodeState$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@12 |o_$110_$4| |f_$9_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap |o_$110_$4| |f_$9_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap this) |o_$110_$4|) (or false false))) (and (= |o_$110_$4| r) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$110_$4|) false)) (and (= |o_$110_$4| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this NA) this) |o_$110_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$110_$4|) false)) (and (= |o_$110_$4| r) false)) (and (= |o_$110_$4| r) (= |f_$9_$4| NSt))))))
   )
(or GeneratedUnifiedExit@6_assertion GeneratedUnifiedExit@7)
)) :named ax_GeneratedUnifiedExit@6))
(assert (! (=> GeneratedUnifiedExit@6_assertion (not (and true
   (and true
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF) (forall( (|o_$111| ref))(=> (not (= |o_$111| this)) (Equal (BBSet $Heap@12 |o_$111|) (BBSet $Heap |o_$111|)))))
   )
))) :named ax_GeneratedUnifiedExit@6_assertion))
(assert (! (=> GeneratedUnifiedExit@7 (and true 
   (and true
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF) (forall( (|o_$111| ref))(=> (not (= |o_$111| this)) (Equal (BBSet $Heap@12 |o_$111|) (BBSet $Heap |o_$111|)))))
   )
(or GeneratedUnifiedExit@7_assertion GeneratedUnifiedExit@8)
)) :named ax_GeneratedUnifiedExit@7))
(assert (! (=> GeneratedUnifiedExit@7_assertion (not (and true
   (and true
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 r Np) this))
   )
))) :named ax_GeneratedUnifiedExit@7_assertion))
(assert (! (=> GeneratedUnifiedExit@8 (and true 
   (and true
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 r Np) this))
   )
(or GeneratedUnifiedExit@8_assertion GeneratedUnifiedExit@9)
)) :named ax_GeneratedUnifiedExit@8))
(assert (! (=> GeneratedUnifiedExit@8_assertion (not (and true
   (and true
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF) (forall( (|o_$112| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 r ND) r) |o_$112|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 |o_$112| Nt) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap this Nt)))))
   )
))) :named ax_GeneratedUnifiedExit@8_assertion))
(assert (! (=> GeneratedUnifiedExit@9 (and true 
   (and true
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF) (forall( (|o_$112| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 r ND) r) |o_$112|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 |o_$112| Nt) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap this Nt)))))
   )
(or GeneratedUnifiedExit@10 GeneratedUnifiedExit@9_assertion)
)) :named ax_GeneratedUnifiedExit@9))
(assert (! (=> GeneratedUnifiedExit@10 (and true 
   (and true
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 this NC) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this NC) r)))
   )
(or GeneratedUnifiedExit@10_assertion GeneratedUnifiedExit@11)
)) :named ax_GeneratedUnifiedExit@10))
(assert (! (=> GeneratedUnifiedExit@9_assertion (not (and true
   (and true
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 this NC) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this NC) r)))
   )
))) :named ax_GeneratedUnifiedExit@9_assertion))
(assert (! (=> GeneratedUnifiedExit@10_assertion (not (and true
   (and true
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF) (forall( (|o_$113| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 this NA) this) |o_$113|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 |o_$113| ND) (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$113| ND) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 r ND) r))))))
   )
))) :named ax_GeneratedUnifiedExit@10_assertion))
(assert (! (=> GeneratedUnifiedExit@11 (and true 
   (and true
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF) (forall( (|o_$113| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 this NA) this) |o_$113|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 |o_$113| ND) (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$113| ND) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 r ND) r))))))
   )
(or GeneratedUnifiedExit@11_assertion GeneratedUnifiedExit@12)
)) :named ax_GeneratedUnifiedExit@11))
(assert (! (=> GeneratedUnifiedExit@11_assertion (not (and true
   (and true
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF) (forall( (|o_$114| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$114|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 |o_$114| NA) (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$114| NA) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 this NA) this))))))
   )
))) :named ax_GeneratedUnifiedExit@11_assertion))
(assert (! (=> GeneratedUnifiedExit@12 (and true 
   (and true
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF) (forall( (|o_$114| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r ND) r) |o_$114|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 |o_$114| NA) (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$114| NA) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 this NA) this))))))
   )
(or GeneratedUnifiedExit@12_assertion GeneratedUnifiedExit@13)
)) :named ax_GeneratedUnifiedExit@12))
(assert (! (=> GeneratedUnifiedExit@12_assertion (not (and true
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@12 this NSt) StL))
   )
))) :named ax_GeneratedUnifiedExit@12_assertion))
(assert (! (=> GeneratedUnifiedExit@13 (and true 
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@12 this NSt) StL))
   )
(or GeneratedUnifiedExit@13_assertion GeneratedUnifiedExit@14)
)) :named ax_GeneratedUnifiedExit@13))
(assert (! (=> GeneratedUnifiedExit@13_assertion (not (and true
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@12 r NSt) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt)))
   )
))) :named ax_GeneratedUnifiedExit@13_assertion))
(assert (! (=> GeneratedUnifiedExit@14 (and true 
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@12 r NSt) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt)))
   )
(or GeneratedUnifiedExit@14_assertion GeneratedUnifiedExit@15)
)) :named ax_GeneratedUnifiedExit@14))
(assert (! (=> GeneratedUnifiedExit@14_assertion (not (and true
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r))) (and (and (and (and (forall( (|o_$115_$0| ref) (|f_$10_$0| field$ref$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 |o_$115_$0| |f_$10_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap |o_$115_$0| |f_$10_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap r) |o_$115_$0|) (or false false))) (and (= |o_$115_$0| this) (= |f_$10_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) this) |o_$115_$0|) (= |f_$10_$0| Nt))) (and (= |o_$115_$0| r) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$115_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) this) |o_$115_$0|) false)) (and (= |o_$115_$0| this) (= |f_$10_$0| Nbb))) (and (= |o_$115_$0| this) false))) (forall( (|o_$115_$1| ref) (|f_$10_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 |o_$115_$1| |f_$10_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$115_$1| |f_$10_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap r) |o_$115_$1|) (or false false))) (and (= |o_$115_$1| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) this) |o_$115_$1|) false)) (and (= |o_$115_$1| r) (= |f_$10_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$115_$1|) (= |f_$10_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) this) |o_$115_$1|) (= |f_$10_$1| NA))) (and (= |o_$115_$1| this) false)) (and (= |o_$115_$1| this) false)))) (forall( (|o_$115_$2| ref) (|f_$10_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@12 |o_$115_$2| |f_$10_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap |o_$115_$2| |f_$10_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap r) |o_$115_$2|) (or (= |f_$10_$2| Npr) false))) (and (= |o_$115_$2| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) this) |o_$115_$2|) false)) (and (= |o_$115_$2| r) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$115_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) this) |o_$115_$2|) false)) (and (= |o_$115_$2| this) false)) (and (= |o_$115_$2| this) false)))) (forall( (|o_$115_$3| ref) (|f_$10_$3| field$Int$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@12 |o_$115_$3| |f_$10_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap |o_$115_$3| |f_$10_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap r) |o_$115_$3|) (or false (= |f_$10_$3| Ncpr)))) (and (= |o_$115_$3| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) this) |o_$115_$3|) false)) (and (= |o_$115_$3| r) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$115_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) this) |o_$115_$3|) false)) (and (= |o_$115_$3| this) false)) (and (= |o_$115_$3| this) false)))) (forall( (|o_$115_$4| ref) (|f_$10_$4| field$TNodeState$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@12 |o_$115_$4| |f_$10_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap |o_$115_$4| |f_$10_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap r) |o_$115_$4|) (or false false))) (and (= |o_$115_$4| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) this) |o_$115_$4|) false)) (and (= |o_$115_$4| r) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$115_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) this) |o_$115_$4|) false)) (and (= |o_$115_$4| this) false)) (and (= |o_$115_$4| this) (= |f_$10_$4| NSt))))))
   )
))) :named ax_GeneratedUnifiedExit@14_assertion))
(assert (! (=> GeneratedUnifiedExit@15 (and true 
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r))) (and (and (and (and (forall( (|o_$115_$0| ref) (|f_$10_$0| field$ref$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 |o_$115_$0| |f_$10_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap |o_$115_$0| |f_$10_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap r) |o_$115_$0|) (or false false))) (and (= |o_$115_$0| this) (= |f_$10_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) this) |o_$115_$0|) (= |f_$10_$0| Nt))) (and (= |o_$115_$0| r) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$115_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) this) |o_$115_$0|) false)) (and (= |o_$115_$0| this) (= |f_$10_$0| Nbb))) (and (= |o_$115_$0| this) false))) (forall( (|o_$115_$1| ref) (|f_$10_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 |o_$115_$1| |f_$10_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$115_$1| |f_$10_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap r) |o_$115_$1|) (or false false))) (and (= |o_$115_$1| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) this) |o_$115_$1|) false)) (and (= |o_$115_$1| r) (= |f_$10_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$115_$1|) (= |f_$10_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) this) |o_$115_$1|) (= |f_$10_$1| NA))) (and (= |o_$115_$1| this) false)) (and (= |o_$115_$1| this) false)))) (forall( (|o_$115_$2| ref) (|f_$10_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@12 |o_$115_$2| |f_$10_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap |o_$115_$2| |f_$10_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap r) |o_$115_$2|) (or (= |f_$10_$2| Npr) false))) (and (= |o_$115_$2| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) this) |o_$115_$2|) false)) (and (= |o_$115_$2| r) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$115_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) this) |o_$115_$2|) false)) (and (= |o_$115_$2| this) false)) (and (= |o_$115_$2| this) false)))) (forall( (|o_$115_$3| ref) (|f_$10_$3| field$Int$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@12 |o_$115_$3| |f_$10_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap |o_$115_$3| |f_$10_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap r) |o_$115_$3|) (or false (= |f_$10_$3| Ncpr)))) (and (= |o_$115_$3| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) this) |o_$115_$3|) false)) (and (= |o_$115_$3| r) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$115_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) this) |o_$115_$3|) false)) (and (= |o_$115_$3| this) false)) (and (= |o_$115_$3| this) false)))) (forall( (|o_$115_$4| ref) (|f_$10_$4| field$TNodeState$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@12 |o_$115_$4| |f_$10_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap |o_$115_$4| |f_$10_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap r) |o_$115_$4|) (or false false))) (and (= |o_$115_$4| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) this) |o_$115_$4|) false)) (and (= |o_$115_$4| r) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$115_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) this) |o_$115_$4|) false)) (and (= |o_$115_$4| this) false)) (and (= |o_$115_$4| this) (= |f_$10_$4| NSt))))))
   )
(or GeneratedUnifiedExit@15_assertion GeneratedUnifiedExit@16)
)) :named ax_GeneratedUnifiedExit@15))
(assert (! (=> GeneratedUnifiedExit@15_assertion (not (and true
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r))) (forall( (|o_$116| ref))(=> (not (= |o_$116| r)) (Equal (BBSet $Heap@12 |o_$116|) (BBSet $Heap |o_$116|)))))
   )
))) :named ax_GeneratedUnifiedExit@15_assertion))
(assert (! (=> GeneratedUnifiedExit@16 (and true 
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r)) (InvStruct $Heap@12))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r))) (forall( (|o_$116| ref))(=> (not (= |o_$116| r)) (Equal (BBSet $Heap@12 |o_$116|) (BBSet $Heap |o_$116|)))))
   )
(or GeneratedUnifiedExit@17_assertion GeneratedUnifiedExit@18)
)) :named ax_GeneratedUnifiedExit@16))
(assert (! (=> GeneratedUnifiedExit@17_assertion (not (and true
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r)) (forall( (|o_$117| ref))(!(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 r NA) r) |o_$117|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@12 |o_$117| NSt) StD))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 r NA) r) |o_$117|)))))
   )
))) :named ax_GeneratedUnifiedExit@17_assertion))
(assert (! (=> GeneratedUnifiedExit@18 (and true 
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r)) (forall( (|o_$117| ref))(!(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 r NA) r) |o_$117|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@12 |o_$117| NSt) StD))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 r NA) r) |o_$117|)))))
   )
(or GeneratedUnifiedExit@18_assertion GeneratedUnifiedExit@19)
)) :named ax_GeneratedUnifiedExit@18))
(assert (! (=> GeneratedUnifiedExit@18_assertion (not (and true
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r)) (and (and (and (and (forall( (|o_$118_$0| ref) (|f_$11_$0| field$ref$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 |o_$118_$0| |f_$11_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap |o_$118_$0| |f_$11_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap r) |o_$118_$0|) (or false false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$0|) (= |f_$11_$0| Lb))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$0|) (= |f_$11_$0| Le))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$0|) (= |f_$11_$0| Lp))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$0|) (= |f_$11_$0| Ln))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) this) |o_$118_$0|) (= |f_$11_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp)) |o_$118_$0|) (= |f_$11_$0| Nt))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) this) r) |o_$118_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp)) |o_$118_$0|) false)) (and (= |o_$118_$0| this) (= |f_$11_$0| Nbb))) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 this LL) |o_$118_$0|) false))) (forall( (|o_$118_$1| ref) (|f_$11_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 |o_$118_$1| |f_$11_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$118_$1| |f_$11_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap r) |o_$118_$1|) (or false false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$1|) (= |f_$11_$1| LL))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) this) |o_$118_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp)) |o_$118_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) this) r) |o_$118_$1|) (= |f_$11_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$1|) (= |f_$11_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp)) |o_$118_$1|) (= |f_$11_$1| NA))) (and (= |o_$118_$1| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 this LL) |o_$118_$1|) false)))) (forall( (|o_$118_$2| ref) (|f_$11_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@12 |o_$118_$2| |f_$11_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap |o_$118_$2| |f_$11_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap r) |o_$118_$2|) (or (= |f_$11_$2| Npr) false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) this) |o_$118_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp)) |o_$118_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) this) r) |o_$118_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp)) |o_$118_$2|) false)) (and (= |o_$118_$2| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 this LL) |o_$118_$2|) false)))) (forall( (|o_$118_$3| ref) (|f_$11_$3| field$Int$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@12 |o_$118_$3| |f_$11_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap |o_$118_$3| |f_$11_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap r) |o_$118_$3|) (or false (= |f_$11_$3| Ncpr)))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) this) |o_$118_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp)) |o_$118_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) this) r) |o_$118_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp)) |o_$118_$3|) false)) (and (= |o_$118_$3| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 this LL) |o_$118_$3|) false)))) (forall( (|o_$118_$4| ref) (|f_$11_$4| field$TNodeState$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@12 |o_$118_$4| |f_$11_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap |o_$118_$4| |f_$11_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap r) |o_$118_$4|) (or false false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) this) |o_$118_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp)) |o_$118_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) this) r) |o_$118_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp)) |o_$118_$4|) false)) (and (= |o_$118_$4| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 this LL) |o_$118_$4|) (= |f_$11_$4| NSt))))))
   )
))) :named ax_GeneratedUnifiedExit@18_assertion))
(assert (! (=> GeneratedUnifiedExit@19 (and true 
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r)) (and (and (and (and (forall( (|o_$118_$0| ref) (|f_$11_$0| field$ref$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 |o_$118_$0| |f_$11_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap |o_$118_$0| |f_$11_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap r) |o_$118_$0|) (or false false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$0|) (= |f_$11_$0| Lb))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$0|) (= |f_$11_$0| Le))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$0|) (= |f_$11_$0| Lp))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$0|) (= |f_$11_$0| Ln))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) this) |o_$118_$0|) (= |f_$11_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp)) |o_$118_$0|) (= |f_$11_$0| Nt))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) this) r) |o_$118_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp)) |o_$118_$0|) false)) (and (= |o_$118_$0| this) (= |f_$11_$0| Nbb))) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 this LL) |o_$118_$0|) false))) (forall( (|o_$118_$1| ref) (|f_$11_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 |o_$118_$1| |f_$11_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$118_$1| |f_$11_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap r) |o_$118_$1|) (or false false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$1|) (= |f_$11_$1| LL))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) this) |o_$118_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp)) |o_$118_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) this) r) |o_$118_$1|) (= |f_$11_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$1|) (= |f_$11_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp)) |o_$118_$1|) (= |f_$11_$1| NA))) (and (= |o_$118_$1| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 this LL) |o_$118_$1|) false)))) (forall( (|o_$118_$2| ref) (|f_$11_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@12 |o_$118_$2| |f_$11_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap |o_$118_$2| |f_$11_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap r) |o_$118_$2|) (or (= |f_$11_$2| Npr) false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) this) |o_$118_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp)) |o_$118_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) this) r) |o_$118_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp)) |o_$118_$2|) false)) (and (= |o_$118_$2| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 this LL) |o_$118_$2|) false)))) (forall( (|o_$118_$3| ref) (|f_$11_$3| field$Int$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@12 |o_$118_$3| |f_$11_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap |o_$118_$3| |f_$11_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap r) |o_$118_$3|) (or false (= |f_$11_$3| Ncpr)))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) this) |o_$118_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp)) |o_$118_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) this) r) |o_$118_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp)) |o_$118_$3|) false)) (and (= |o_$118_$3| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 this LL) |o_$118_$3|) false)))) (forall( (|o_$118_$4| ref) (|f_$11_$4| field$TNodeState$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@12 |o_$118_$4| |f_$11_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap |o_$118_$4| |f_$11_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap r) |o_$118_$4|) (or false false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) this) |o_$118_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp)) |o_$118_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) this) r) |o_$118_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$118_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Lp)) |o_$118_$4|) false)) (and (= |o_$118_$4| this) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 this LL) |o_$118_$4|) (= |f_$11_$4| NSt))))))
   )
(or GeneratedUnifiedExit@19_assertion GeneratedUnifiedExit@20)
)) :named ax_GeneratedUnifiedExit@19))
(assert (! (=> GeneratedUnifiedExit@19_assertion (not (and true
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r)) (forall( (|o_$119| ref))(=> (not (= |o_$119| r)) (Equal (BBSet $Heap@12 |o_$119|) (BBSet $Heap |o_$119|)))))
   )
))) :named ax_GeneratedUnifiedExit@19_assertion))
(assert (! (=> GeneratedUnifiedExit@20 (and true 
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r)) (forall( (|o_$119| ref))(=> (not (= |o_$119| r)) (Equal (BBSet $Heap@12 |o_$119|) (BBSet $Heap |o_$119|)))))
   )
(or GeneratedUnifiedExit@20_assertion GeneratedUnifiedExit@21)
)) :named ax_GeneratedUnifiedExit@20))
(assert (! (=> GeneratedUnifiedExit@20_assertion (not (and true
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Ln) null))
   )
))) :named ax_GeneratedUnifiedExit@20_assertion))
(assert (! (=> GeneratedUnifiedExit@21 (and true 
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 this Ln) null))
   )
(or GeneratedUnifiedExit@21_assertion GeneratedUnifiedExit@22)
)) :named ax_GeneratedUnifiedExit@21))
(assert (! (=> GeneratedUnifiedExit@21_assertion (not (and true
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r)) (forall( (|o_$120| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$120|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 |o_$120| LL) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r)))))
   )
))) :named ax_GeneratedUnifiedExit@21_assertion))
(assert (! (=> GeneratedUnifiedExit@22 (and true 
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r)) (forall( (|o_$120| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$120|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 |o_$120| LL) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r)))))
   )
(or GeneratedUnifiedExit@22_assertion GeneratedUnifiedExit@23)
)) :named ax_GeneratedUnifiedExit@22))
(assert (! (=> GeneratedUnifiedExit@22_assertion (not (and true
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r)) (forall( (|o_$121| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$121|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 |o_$121| Lb) r))))
   )
))) :named ax_GeneratedUnifiedExit@22_assertion))
(assert (! (=> GeneratedUnifiedExit@23 (and true 
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r)) (forall( (|o_$121| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$121|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 |o_$121| Lb) r))))
   )
(or GeneratedUnifiedExit@23_assertion GeneratedUnifiedExit@24)
)) :named ax_GeneratedUnifiedExit@23))
(assert (! (=> GeneratedUnifiedExit@23_assertion (not (and true
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r)) (forall( (|o_$122| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$122|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 |o_$122| Le) this))))
   )
))) :named ax_GeneratedUnifiedExit@23_assertion))
(assert (! (=> GeneratedUnifiedExit@24 (and true 
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r)) (forall( (|o_$122| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$122|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 |o_$122| Le) this))))
   )
(or GeneratedUnifiedExit@24_assertion GeneratedUnifiedExit@25)
)) :named ax_GeneratedUnifiedExit@24))
(assert (! (=> GeneratedUnifiedExit@24_assertion (not (and true
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r)) (forall( (|o_$123| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) this) |o_$123|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap |o_$123| Np) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 |o_$123| Ln)))))
   )
))) :named ax_GeneratedUnifiedExit@24_assertion))
(assert (! (=> GeneratedUnifiedExit@25 (and true 
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r)) (forall( (|o_$123| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) this) |o_$123|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap |o_$123| Np) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 |o_$123| Ln)))))
   )
(or GeneratedUnifiedExit@25_assertion GeneratedUnifiedExit@26)
)) :named ax_GeneratedUnifiedExit@25))
(assert (! (=> GeneratedUnifiedExit@25_assertion (not (and true
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r)) (forall( (|o_$124| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$124|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 |o_$124| Np) null))))
   )
))) :named ax_GeneratedUnifiedExit@25_assertion))
(assert (! (=> GeneratedUnifiedExit@26 (and true 
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r)) (forall( (|o_$124| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$124|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 |o_$124| Np) null))))
   )
(or GeneratedUnifiedExit@26_assertion GeneratedUnifiedExit@27)
)) :named ax_GeneratedUnifiedExit@26))
(assert (! (=> GeneratedUnifiedExit@26_assertion (not (and true
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r)) (forall( (|o_$125| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) this) r) |o_$125|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 |o_$125| NC) (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$125| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 |o_$125| Lp))))))
   )
))) :named ax_GeneratedUnifiedExit@26_assertion))
(assert (! (=> GeneratedUnifiedExit@27 (and true 
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r)) (forall( (|o_$125| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) this) r) |o_$125|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 |o_$125| NC) (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$125| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 |o_$125| Lp))))))
   )
(or GeneratedUnifiedExit@27_assertion GeneratedUnifiedExit@28)
)) :named ax_GeneratedUnifiedExit@27))
(assert (! (=> GeneratedUnifiedExit@27_assertion (not (and true
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r)) (forall( (|o_$126| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) this) r) |o_$126|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 |o_$126| ND) (Minus (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$126| ND) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 |o_$126| Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 |o_$126| Lp)))))))
   )
))) :named ax_GeneratedUnifiedExit@27_assertion))
(assert (! (=> GeneratedUnifiedExit@28 (and true 
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r)) (forall( (|o_$126| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) this) r) |o_$126|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 |o_$126| ND) (Minus (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap |o_$126| ND) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 |o_$126| Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@12 |o_$126| Lp)))))))
   )
GeneratedUnifiedExit@28_assertion
)) :named ax_GeneratedUnifiedExit@28))
(assert (! (=> GeneratedUnifiedExit@28_assertion (not (and true
   (and true
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap r NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap this ND) r)) (forall( (|o_$127| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap r NA) r) |o_$127|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@12 |o_$127| NA) Empty))))
   )
))) :named ax_GeneratedUnifiedExit@28_assertion))
(assert (=> false (not (and
   anon10_Then@3_assertion
   anon10_Then@4_assertion
   anon10_Then@5_assertion
   anon10_Then@6_assertion
   anon11_Then@1_assertion
   anon11_Then@4_assertion
   anon11_Then@5_assertion
   anon11_Then@6_assertion
   anon12_Else@2_assertion
   anon12_Else@4_assertion
   anon12_Else@5_assertion
   anon12_Else@6_assertion
   anon12_Then@4_assertion
   anon12_Then@5_assertion
   anon12_Then@6_assertion
   anon13_Else@1_assertion
   anon13_Else@3_assertion
   anon13_Else@4_assertion
   anon13_Else@5_assertion
   anon13_Else@6_assertion
   anon13_Then@1_assertion
   anon13_Then@5_assertion
   anon13_Then@6_assertion
   anon13_Then@7_assertion
   anon13_Then@8_assertion
   anon6@1_assertion
   anon6_assertion
   anon9_assertion
   GeneratedUnifiedExit@1_assertion
   GeneratedUnifiedExit@10_assertion
   GeneratedUnifiedExit@11_assertion
   GeneratedUnifiedExit@12_assertion
   GeneratedUnifiedExit@13_assertion
   GeneratedUnifiedExit@14_assertion
   GeneratedUnifiedExit@15_assertion
   GeneratedUnifiedExit@17_assertion
   GeneratedUnifiedExit@18_assertion
   GeneratedUnifiedExit@19_assertion
   GeneratedUnifiedExit@2_assertion
   GeneratedUnifiedExit@20_assertion
   GeneratedUnifiedExit@21_assertion
   GeneratedUnifiedExit@22_assertion
   GeneratedUnifiedExit@23_assertion
   GeneratedUnifiedExit@24_assertion
   GeneratedUnifiedExit@25_assertion
   GeneratedUnifiedExit@26_assertion
   GeneratedUnifiedExit@27_assertion
   GeneratedUnifiedExit@28_assertion
   GeneratedUnifiedExit@3_assertion
   GeneratedUnifiedExit@4_assertion
   GeneratedUnifiedExit@5_assertion
   GeneratedUnifiedExit@6_assertion
   GeneratedUnifiedExit@7_assertion
   GeneratedUnifiedExit@8_assertion
   GeneratedUnifiedExit@9_assertion
   GeneratedUnifiedExit_assertion
))))

;Commands
   (check-sat)
   ;(get-unsat-core)
