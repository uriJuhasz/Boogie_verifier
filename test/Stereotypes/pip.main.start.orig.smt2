;Analysis time until now:     1s
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
(declare-fun $Heap ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@0 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@1 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@2 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@3 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@4 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@5 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun $Heap@6 ( ) $@Map@@$T0@@ref@field$$T0$@To@$T0@@)
(declare-fun AddEl ( $@Map@@ref@To@Bool@@ ref ) $@Map@@ref@To@Bool@@)
(declare-fun AddMSet ( $@Map@@Int@To@Int@@ Int ) $@Map@@Int@To@Int@@)
(declare-fun BBSet ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) $@Map@@ref@To@Bool@@)
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
(declare-fun p1 ( ) ref)
(declare-fun p2 ( ) ref)
(declare-fun r1 ( ) ref)
(declare-fun r2 ( ) ref)
(declare-fun RemEl ( $@Map@@ref@To@Bool@@ ref ) $@Map@@ref@To@Bool@@)
(declare-fun RemoveMSet ( $@Map@@Int@To@Int@@ Int ) $@Map@@Int@To@Int@@)
(declare-fun Singleton ( ref ) $@Map@@ref@To@Bool@@)
(declare-fun StD ( ) TNodeState)
(declare-fun StF ( ) TNodeState)
(declare-fun StL ( ) TNodeState)
(declare-fun Union ( $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) $@Map@@ref@To@Bool@@)

;Predicates
(declare-fun $start ( ) Bool)
(declare-fun anon0 ( ) Bool)
(declare-fun anon0@1 ( ) Bool)
(declare-fun anon0@1_assertion ( ) Bool)
(declare-fun anon0@10 ( ) Bool)
(declare-fun anon0@10_assertion ( ) Bool)
(declare-fun anon0@100 ( ) Bool)
(declare-fun anon0@100_assertion ( ) Bool)
(declare-fun anon0@101 ( ) Bool)
(declare-fun anon0@101_assertion ( ) Bool)
(declare-fun anon0@102 ( ) Bool)
(declare-fun anon0@102_assertion ( ) Bool)
(declare-fun anon0@103 ( ) Bool)
(declare-fun anon0@103_assertion ( ) Bool)
(declare-fun anon0@104 ( ) Bool)
(declare-fun anon0@104_assertion ( ) Bool)
(declare-fun anon0@105 ( ) Bool)
(declare-fun anon0@105_assertion ( ) Bool)
(declare-fun anon0@106 ( ) Bool)
(declare-fun anon0@106_assertion ( ) Bool)
(declare-fun anon0@107 ( ) Bool)
(declare-fun anon0@107_assertion ( ) Bool)
(declare-fun anon0@108 ( ) Bool)
(declare-fun anon0@108_assertion ( ) Bool)
(declare-fun anon0@109 ( ) Bool)
(declare-fun anon0@109_assertion ( ) Bool)
(declare-fun anon0@11 ( ) Bool)
(declare-fun anon0@11_assertion ( ) Bool)
(declare-fun anon0@110 ( ) Bool)
(declare-fun anon0@110_assertion ( ) Bool)
(declare-fun anon0@12 ( ) Bool)
(declare-fun anon0@12_assertion ( ) Bool)
(declare-fun anon0@13 ( ) Bool)
(declare-fun anon0@13_assertion ( ) Bool)
(declare-fun anon0@14 ( ) Bool)
(declare-fun anon0@14_assertion ( ) Bool)
(declare-fun anon0@15 ( ) Bool)
(declare-fun anon0@15_assertion ( ) Bool)
(declare-fun anon0@16 ( ) Bool)
(declare-fun anon0@16_assertion ( ) Bool)
(declare-fun anon0@17 ( ) Bool)
(declare-fun anon0@17_assertion ( ) Bool)
(declare-fun anon0@18 ( ) Bool)
(declare-fun anon0@18_assertion ( ) Bool)
(declare-fun anon0@19 ( ) Bool)
(declare-fun anon0@19_assertion ( ) Bool)
(declare-fun anon0@2 ( ) Bool)
(declare-fun anon0@2_assertion ( ) Bool)
(declare-fun anon0@20 ( ) Bool)
(declare-fun anon0@20_assertion ( ) Bool)
(declare-fun anon0@21 ( ) Bool)
(declare-fun anon0@21_assertion ( ) Bool)
(declare-fun anon0@22 ( ) Bool)
(declare-fun anon0@22_assertion ( ) Bool)
(declare-fun anon0@23 ( ) Bool)
(declare-fun anon0@23_assertion ( ) Bool)
(declare-fun anon0@24 ( ) Bool)
(declare-fun anon0@24_assertion ( ) Bool)
(declare-fun anon0@25 ( ) Bool)
(declare-fun anon0@25_assertion ( ) Bool)
(declare-fun anon0@26 ( ) Bool)
(declare-fun anon0@26_assertion ( ) Bool)
(declare-fun anon0@27 ( ) Bool)
(declare-fun anon0@27_assertion ( ) Bool)
(declare-fun anon0@28 ( ) Bool)
(declare-fun anon0@28_assertion ( ) Bool)
(declare-fun anon0@29 ( ) Bool)
(declare-fun anon0@29_assertion ( ) Bool)
(declare-fun anon0@3 ( ) Bool)
(declare-fun anon0@3_assertion ( ) Bool)
(declare-fun anon0@30 ( ) Bool)
(declare-fun anon0@30_assertion ( ) Bool)
(declare-fun anon0@31 ( ) Bool)
(declare-fun anon0@31_assertion ( ) Bool)
(declare-fun anon0@32 ( ) Bool)
(declare-fun anon0@32_assertion ( ) Bool)
(declare-fun anon0@33 ( ) Bool)
(declare-fun anon0@33_assertion ( ) Bool)
(declare-fun anon0@34 ( ) Bool)
(declare-fun anon0@34_assertion ( ) Bool)
(declare-fun anon0@35 ( ) Bool)
(declare-fun anon0@35_assertion ( ) Bool)
(declare-fun anon0@36 ( ) Bool)
(declare-fun anon0@36_assertion ( ) Bool)
(declare-fun anon0@37 ( ) Bool)
(declare-fun anon0@37_assertion ( ) Bool)
(declare-fun anon0@38 ( ) Bool)
(declare-fun anon0@38_assertion ( ) Bool)
(declare-fun anon0@39 ( ) Bool)
(declare-fun anon0@39_assertion ( ) Bool)
(declare-fun anon0@4 ( ) Bool)
(declare-fun anon0@4_assertion ( ) Bool)
(declare-fun anon0@40 ( ) Bool)
(declare-fun anon0@40_assertion ( ) Bool)
(declare-fun anon0@41 ( ) Bool)
(declare-fun anon0@41_assertion ( ) Bool)
(declare-fun anon0@42 ( ) Bool)
(declare-fun anon0@42_assertion ( ) Bool)
(declare-fun anon0@43 ( ) Bool)
(declare-fun anon0@43_assertion ( ) Bool)
(declare-fun anon0@44 ( ) Bool)
(declare-fun anon0@44_assertion ( ) Bool)
(declare-fun anon0@45 ( ) Bool)
(declare-fun anon0@45_assertion ( ) Bool)
(declare-fun anon0@46 ( ) Bool)
(declare-fun anon0@46_assertion ( ) Bool)
(declare-fun anon0@47 ( ) Bool)
(declare-fun anon0@47_assertion ( ) Bool)
(declare-fun anon0@48 ( ) Bool)
(declare-fun anon0@48_assertion ( ) Bool)
(declare-fun anon0@49 ( ) Bool)
(declare-fun anon0@49_assertion ( ) Bool)
(declare-fun anon0@5 ( ) Bool)
(declare-fun anon0@5_assertion ( ) Bool)
(declare-fun anon0@50 ( ) Bool)
(declare-fun anon0@50_assertion ( ) Bool)
(declare-fun anon0@51 ( ) Bool)
(declare-fun anon0@51_assertion ( ) Bool)
(declare-fun anon0@52 ( ) Bool)
(declare-fun anon0@52_assertion ( ) Bool)
(declare-fun anon0@53 ( ) Bool)
(declare-fun anon0@53_assertion ( ) Bool)
(declare-fun anon0@54 ( ) Bool)
(declare-fun anon0@54_assertion ( ) Bool)
(declare-fun anon0@55 ( ) Bool)
(declare-fun anon0@55_assertion ( ) Bool)
(declare-fun anon0@56 ( ) Bool)
(declare-fun anon0@56_assertion ( ) Bool)
(declare-fun anon0@57 ( ) Bool)
(declare-fun anon0@57_assertion ( ) Bool)
(declare-fun anon0@58 ( ) Bool)
(declare-fun anon0@58_assertion ( ) Bool)
(declare-fun anon0@59 ( ) Bool)
(declare-fun anon0@59_assertion ( ) Bool)
(declare-fun anon0@6 ( ) Bool)
(declare-fun anon0@6_assertion ( ) Bool)
(declare-fun anon0@60 ( ) Bool)
(declare-fun anon0@60_assertion ( ) Bool)
(declare-fun anon0@61 ( ) Bool)
(declare-fun anon0@61_assertion ( ) Bool)
(declare-fun anon0@62 ( ) Bool)
(declare-fun anon0@62_assertion ( ) Bool)
(declare-fun anon0@63 ( ) Bool)
(declare-fun anon0@63_assertion ( ) Bool)
(declare-fun anon0@64 ( ) Bool)
(declare-fun anon0@64_assertion ( ) Bool)
(declare-fun anon0@65 ( ) Bool)
(declare-fun anon0@65_assertion ( ) Bool)
(declare-fun anon0@66 ( ) Bool)
(declare-fun anon0@66_assertion ( ) Bool)
(declare-fun anon0@67 ( ) Bool)
(declare-fun anon0@67_assertion ( ) Bool)
(declare-fun anon0@68 ( ) Bool)
(declare-fun anon0@68_assertion ( ) Bool)
(declare-fun anon0@69 ( ) Bool)
(declare-fun anon0@69_assertion ( ) Bool)
(declare-fun anon0@7 ( ) Bool)
(declare-fun anon0@7_assertion ( ) Bool)
(declare-fun anon0@70 ( ) Bool)
(declare-fun anon0@70_assertion ( ) Bool)
(declare-fun anon0@71 ( ) Bool)
(declare-fun anon0@71_assertion ( ) Bool)
(declare-fun anon0@72 ( ) Bool)
(declare-fun anon0@72_assertion ( ) Bool)
(declare-fun anon0@73 ( ) Bool)
(declare-fun anon0@73_assertion ( ) Bool)
(declare-fun anon0@74 ( ) Bool)
(declare-fun anon0@74_assertion ( ) Bool)
(declare-fun anon0@75 ( ) Bool)
(declare-fun anon0@75_assertion ( ) Bool)
(declare-fun anon0@76 ( ) Bool)
(declare-fun anon0@76_assertion ( ) Bool)
(declare-fun anon0@77 ( ) Bool)
(declare-fun anon0@77_assertion ( ) Bool)
(declare-fun anon0@78 ( ) Bool)
(declare-fun anon0@78_assertion ( ) Bool)
(declare-fun anon0@79 ( ) Bool)
(declare-fun anon0@79_assertion ( ) Bool)
(declare-fun anon0@8 ( ) Bool)
(declare-fun anon0@8_assertion ( ) Bool)
(declare-fun anon0@80 ( ) Bool)
(declare-fun anon0@80_assertion ( ) Bool)
(declare-fun anon0@81 ( ) Bool)
(declare-fun anon0@81_assertion ( ) Bool)
(declare-fun anon0@82 ( ) Bool)
(declare-fun anon0@82_assertion ( ) Bool)
(declare-fun anon0@83 ( ) Bool)
(declare-fun anon0@83_assertion ( ) Bool)
(declare-fun anon0@84 ( ) Bool)
(declare-fun anon0@84_assertion ( ) Bool)
(declare-fun anon0@85 ( ) Bool)
(declare-fun anon0@85_assertion ( ) Bool)
(declare-fun anon0@86 ( ) Bool)
(declare-fun anon0@86_assertion ( ) Bool)
(declare-fun anon0@87 ( ) Bool)
(declare-fun anon0@87_assertion ( ) Bool)
(declare-fun anon0@88 ( ) Bool)
(declare-fun anon0@88_assertion ( ) Bool)
(declare-fun anon0@89 ( ) Bool)
(declare-fun anon0@89_assertion ( ) Bool)
(declare-fun anon0@9 ( ) Bool)
(declare-fun anon0@9_assertion ( ) Bool)
(declare-fun anon0@90 ( ) Bool)
(declare-fun anon0@90_assertion ( ) Bool)
(declare-fun anon0@91 ( ) Bool)
(declare-fun anon0@91_assertion ( ) Bool)
(declare-fun anon0@92 ( ) Bool)
(declare-fun anon0@92_assertion ( ) Bool)
(declare-fun anon0@93 ( ) Bool)
(declare-fun anon0@93_assertion ( ) Bool)
(declare-fun anon0@94 ( ) Bool)
(declare-fun anon0@94_assertion ( ) Bool)
(declare-fun anon0@95 ( ) Bool)
(declare-fun anon0@95_assertion ( ) Bool)
(declare-fun anon0@96 ( ) Bool)
(declare-fun anon0@96_assertion ( ) Bool)
(declare-fun anon0@97 ( ) Bool)
(declare-fun anon0@97_assertion ( ) Bool)
(declare-fun anon0@98 ( ) Bool)
(declare-fun anon0@98_assertion ( ) Bool)
(declare-fun anon0@99 ( ) Bool)
(declare-fun anon0@99_assertion ( ) Bool)
(declare-fun anon0_assertion ( ) Bool)
(declare-fun Disjoint ( $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun Equal ( $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun EqualMSet ( $@Map@@Int@To@Int@@ $@Map@@Int@To@Int@@ ) Bool)
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
(declare-fun InvTreeEx ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun IsEmptyList ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun IsGoodRegion ( $@Map@@ref@To@Bool@@ ) Bool)
(declare-fun IsNotAllocated ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun IsNotAllocatedList ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun IsNotAllocatedTree ( $@Map@@$T0@@ref@field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun MapRead$$@Map@@ref@To@Bool@@$ ( $@Map@@ref@To@Bool@@ ref ) Bool)
(declare-fun PreconditionGeneratedEntry ( ) Bool)
(declare-fun Sub ( $@Map@@ref@To@Bool@@ $@Map@@ref@To@Bool@@ ) Bool)

;Axioms
   (assert (! (not (= Le Lb)) :named ax_0))
   (assert (! (not (= Le Lb)) :named ax_1))
   (assert (! (not (= Ln Lb)) :named ax_2))
   (assert (! (not (= Ln Lb)) :named ax_3))
   (assert (! (not (= Ln Le)) :named ax_4))
   (assert (! (not (= Ln Le)) :named ax_5))
   (assert (! (not (= Lp Lb)) :named ax_6))
   (assert (! (not (= Lp Lb)) :named ax_7))
   (assert (! (not (= Lp Le)) :named ax_8))
   (assert (! (not (= Lp Le)) :named ax_9))
   (assert (! (not (= Lp Ln)) :named ax_10))
   (assert (! (not (= Lp Ln)) :named ax_11))
   (assert (! (not (= NA LL)) :named ax_12))
   (assert (! (not (= NA LL)) :named ax_13))
   (assert (! (not (= Nbb Lb)) :named ax_14))
   (assert (! (not (= Nbb Lb)) :named ax_15))
   (assert (! (not (= Nbb Le)) :named ax_16))
   (assert (! (not (= Nbb Le)) :named ax_17))
   (assert (! (not (= Nbb Ln)) :named ax_18))
   (assert (! (not (= Nbb Ln)) :named ax_19))
   (assert (! (not (= Nbb Lp)) :named ax_20))
   (assert (! (not (= Nbb Lp)) :named ax_21))
   (assert (! (not (= NC LL)) :named ax_22))
   (assert (! (not (= NC LL)) :named ax_23))
   (assert (! (not (= NC NA)) :named ax_24))
   (assert (! (not (= NC NA)) :named ax_25))
   (assert (! (not (= ND LL)) :named ax_26))
   (assert (! (not (= ND LL)) :named ax_27))
   (assert (! (not (= ND NA)) :named ax_28))
   (assert (! (not (= ND NA)) :named ax_29))
   (assert (! (not (= ND NC)) :named ax_30))
   (assert (! (not (= ND NC)) :named ax_31))
   (assert (! (not (= Ndpr Ncpr)) :named ax_32))
   (assert (! (not (= Ndpr Ncpr)) :named ax_33))
   (assert (! (not (= Np Lb)) :named ax_34))
   (assert (! (not (= Np Lb)) :named ax_35))
   (assert (! (not (= Np Le)) :named ax_36))
   (assert (! (not (= Np Le)) :named ax_37))
   (assert (! (not (= Np Ln)) :named ax_38))
   (assert (! (not (= Np Ln)) :named ax_39))
   (assert (! (not (= Np Lp)) :named ax_40))
   (assert (! (not (= Np Lp)) :named ax_41))
   (assert (! (not (= Np Nbb)) :named ax_42))
   (assert (! (not (= Np Nbb)) :named ax_43))
   (assert (! (not (= Nt Lb)) :named ax_44))
   (assert (! (not (= Nt Lb)) :named ax_45))
   (assert (! (not (= Nt Le)) :named ax_46))
   (assert (! (not (= Nt Le)) :named ax_47))
   (assert (! (not (= Nt Ln)) :named ax_48))
   (assert (! (not (= Nt Ln)) :named ax_49))
   (assert (! (not (= Nt Lp)) :named ax_50))
   (assert (! (not (= Nt Lp)) :named ax_51))
   (assert (! (not (= Nt Nbb)) :named ax_52))
   (assert (! (not (= Nt Nbb)) :named ax_53))
   (assert (! (not (= Nt Np)) :named ax_54))
   (assert (! (not (= Nt Np)) :named ax_55))
   (assert (! (not (= p1 null)) :named ax_56))
   (assert (! (not (= p1 null)) :named ax_57))
   (assert (! (not (= p2 null)) :named ax_58))
   (assert (! (not (= p2 null)) :named ax_59))
   (assert (! (not (= p2 p1)) :named ax_60))
   (assert (! (not (= p2 p1)) :named ax_61))
   (assert (! (not (= r1 null)) :named ax_62))
   (assert (! (not (= r1 null)) :named ax_63))
   (assert (! (not (= r1 p1)) :named ax_64))
   (assert (! (not (= r1 p1)) :named ax_65))
   (assert (! (not (= r1 p2)) :named ax_66))
   (assert (! (not (= r1 p2)) :named ax_67))
   (assert (! (not (= r2 null)) :named ax_68))
   (assert (! (not (= r2 null)) :named ax_69))
   (assert (! (not (= r2 p1)) :named ax_70))
   (assert (! (not (= r2 p1)) :named ax_71))
   (assert (! (not (= r2 p2)) :named ax_72))
   (assert (! (not (= r2 p2)) :named ax_73))
   (assert (! (not (= r2 r1)) :named ax_74))
   (assert (! (not (= r2 r1)) :named ax_75))
   (assert (! (not (= StF StD)) :named ax_76))
   (assert (! (not (= StF StD)) :named ax_77))
   (assert (! (not (= StL StD)) :named ax_78))
   (assert (! (not (= StL StD)) :named ax_79))
   (assert (! (not (= StL StF)) :named ax_80))
   (assert (! (not (= StL StF)) :named ax_81))

;Program
(assert (! (and true
$start
) :named ax_true))
(assert (! (=> $start (and true 
   (and true
      (= (Card Empty) 0)
      (= (MaxMSet EmptyMSet) 0)
      (forall( (|$Heap_$0| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$21| ref))(= (IsEmptyList |$Heap_$0| |o_$21|) (and (and (and (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |$Heap_$0| |o_$21| LL) (Singleton |o_$21|)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |$Heap_$0| |o_$21| Ln) null)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |$Heap_$0| |o_$21| Le) |o_$21|)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |$Heap_$0| |o_$21| Lp) null)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |$Heap_$0| |o_$21| Lb) |o_$21|))))
      (forall( (|a_$0| $@Map@@Int@To@Int@@) (|i_$2| Int))(!(= (MapRead$$@Map@@Int@To@Int@@$ (AddMSet |a_$0| |i_$2|) |i_$2|) (+ (MapRead$$@Map@@Int@To@Int@@$ |a_$0| |i_$2|) 1))  :pattern ( (MapRead$$@Map@@Int@To@Int@@$ (AddMSet |a_$0| |i_$2|) |i_$2|))))
      (forall( (|a_$1| $@Map@@Int@To@Int@@) (|i_$3| Int) (|j| Int))(!(=> (not (= |i_$3| |j|)) (= (MapRead$$@Map@@Int@To@Int@@$ (AddMSet |a_$1| |i_$3|) |j|) (MapRead$$@Map@@Int@To@Int@@$ |a_$1| |j|)))  :pattern ( (MapRead$$@Map@@Int@To@Int@@$ (AddMSet |a_$1| |i_$3|) |j|))))
      (forall( (|a_$2| $@Map@@Int@To@Int@@) (|i_$4| Int))(!(= (MapRead$$@Map@@Int@To@Int@@$ (RemoveMSet |a_$2| |i_$4|) |i_$4|) (- (MapRead$$@Map@@Int@To@Int@@$ |a_$2| |i_$4|) 1))  :pattern ( (MapRead$$@Map@@Int@To@Int@@$ (RemoveMSet |a_$2| |i_$4|) |i_$4|))))
      (forall( (|a_$3| $@Map@@Int@To@Int@@) (|i_$5| Int) (|j_$0| Int))(!(=> (not (= |i_$5| |j_$0|)) (= (MapRead$$@Map@@Int@To@Int@@$ (RemoveMSet |a_$3| |i_$5|) |j_$0|) (MapRead$$@Map@@Int@To@Int@@$ |a_$3| |j_$0|)))  :pattern ( (MapRead$$@Map@@Int@To@Int@@$ (RemoveMSet |a_$3| |i_$5|) |j_$0|))))
      (forall( (|a_$4| $@Map@@ref@To@Bool@@) (|b_$0| $@Map@@ref@To@Bool@@) (|o_$4| ref))(!(= (MapRead$$@Map@@ref@To@Bool@@$ (Union |a_$4| |b_$0|) |o_$4|) (or (MapRead$$@Map@@ref@To@Bool@@$ |a_$4| |o_$4|) (MapRead$$@Map@@ref@To@Bool@@$ |b_$0| |o_$4|)))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (Union |a_$4| |b_$0|) |o_$4|))))
      (forall( (|a_$5| $@Map@@ref@To@Bool@@) (|b_$1| $@Map@@ref@To@Bool@@))(!(= (Sub |a_$5| |b_$1|) (forall( (|o_$5| ref))(!(=> (MapRead$$@Map@@ref@To@Bool@@$ |a_$5| |o_$5|) (MapRead$$@Map@@ref@To@Bool@@$ |b_$1| |o_$5|))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |a_$5| |o_$5|)) :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |b_$1| |o_$5|)))))  :pattern ( (Sub |a_$5| |b_$1|))))
      (forall( (|a_$6| $@Map@@ref@To@Bool@@) (|b_$2| $@Map@@ref@To@Bool@@))(!(= (Equal |a_$6| |b_$2|) (forall( (|o_$6| ref))(!(= (MapRead$$@Map@@ref@To@Bool@@$ |a_$6| |o_$6|) (MapRead$$@Map@@ref@To@Bool@@$ |b_$2| |o_$6|))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |a_$6| |o_$6|)) :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |b_$2| |o_$6|)))))  :pattern ( (Equal |a_$6| |b_$2|))))
      (forall( (|a_$7| $@Map@@ref@To@Bool@@) (|b_$3| $@Map@@ref@To@Bool@@))(!(= (Disjoint |a_$7| |b_$3|) (forall( (|o_$7| ref))(!(or (not (MapRead$$@Map@@ref@To@Bool@@$ |a_$7| |o_$7|)) (not (MapRead$$@Map@@ref@To@Bool@@$ |b_$3| |o_$7|)))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |a_$7| |o_$7|)) :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ |b_$3| |o_$7|)))))  :pattern ( (Disjoint |a_$7| |b_$3|))))
      (forall( (|a| $@Map@@Int@To@Int@@) (|b| $@Map@@Int@To@Int@@))(!(= (EqualMSet |a| |b|) (forall( (|i_$1| Int))(!(=> (> |i_$1| 0) (= (MapRead$$@Map@@Int@To@Int@@$ |a| |i_$1|) (MapRead$$@Map@@Int@To@Int@@$ |b| |i_$1|)))  :pattern ( (MapRead$$@Map@@Int@To@Int@@$ |a| |i_$1|)) :pattern ( (MapRead$$@Map@@Int@To@Int@@$ |b| |i_$1|)))))  :pattern ( (EqualMSet |a| |b|))))
      (forall( (|h_$0| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$0| ref))(!(= (IsNotAllocatedList |h_$0| |o_$0|) (forall( (|o'_$0| ref))(and (and (and (and (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$0| |o'_$0| LL) |o_$0|)) (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$0| |o'_$0| Ln) |o_$0|))) (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$0| |o'_$0| Le) |o_$0|))) (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$0| |o'_$0| Lp) |o_$0|))) (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$0| |o'_$0| Lb) |o_$0|)))))  :pattern ( (IsNotAllocatedList |h_$0| |o_$0|))))
      (forall( (|h_$1| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$1| ref))(!(= (IsNotAllocated |h_$1| |o_$1|) (and (and (forall( (|o'_$1| ref))(not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$1| |o'_$1| Nbb) |o_$1|))) (IsNotAllocatedTree |h_$1| |o_$1|)) (IsNotAllocatedList |h_$1| |o_$1|)))  :pattern ( (IsNotAllocated |h_$1| |o_$1|))))
      (forall( (|h_$10| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$22| ref))(Equal (NACCoSet |h_$10| |o_$22|) (AddEl (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$10| |o_$22| NA) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$10| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$10| |o_$22| Nt) LL)) |o_$22|)))
      (forall( (|h_$100| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld_$2| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|this_$2| ref) (|child_$0| ref))(=> (and (and (and (and (and (and (and (InvPr |hOld_$2| |this_$2|) (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |hOld_$2| |this_$2|) |child_$0|)) (not (= |child_$0| null))) (Equal (BBSet |h_$100| |this_$2|) (RemEl (BBSet |hOld_$2| |this_$2|) |child_$0|))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$100| |this_$2| Npr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$2| |this_$2| Npr))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$100| |this_$2| Ndpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$2| |this_$2| Ndpr))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$100| |this_$2| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$2| |this_$2| Ncpr))) (forall( (|o_$68| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |h_$100| |this_$2|) |o_$68|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$100| |o_$68| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$2| |o_$68| Ncpr))))) (and (InvPrSt |h_$100| |this_$2| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$2| |child_$0| Ncpr) 0) (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$2| |child_$0| Ncpr) 0) (InvPr |h_$100| |this_$2|)))))
      (forall( (|h_$101| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld_$3| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|this_$3| ref) (|child_$1| ref))(=> (and (and (and (and (and (and (and (InvPr |hOld_$3| |this_$3|) (not (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |hOld_$3| |this_$3|) |child_$1|))) (not (= |child_$1| null))) (Equal (BBSet |h_$101| |this_$3|) (AddEl (BBSet |hOld_$3| |this_$3|) |child_$1|))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$101| |this_$3| Npr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$3| |this_$3| Npr))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$101| |this_$3| Ndpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$3| |this_$3| Ndpr))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$101| |this_$3| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$3| |this_$3| Ncpr))) (forall( (|o_$69| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |h_$101| |this_$3|) |o_$69|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$101| |o_$69| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$3| |o_$69| Ncpr))))) (and (InvPrSt |h_$101| |this_$3| 0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$3| |child_$1| Ncpr)) (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$3| |child_$1| Ncpr) 0) (InvPr |h_$101| |this_$3|)))))
      (forall( (|h_$102| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld_$4| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|from_$0| Int) (|to_$0| Int) (|this_$4| ref))(=> (and (and (and (and (and (InvPrSt |hOld_$4| |this_$4| |from_$0| |to_$0|) (Equal (BBSet |h_$102| |this_$4|) (BBSet |hOld_$4| |this_$4|))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$102| |this_$4| Npr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$4| |this_$4| Npr))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$102| |this_$4| Ndpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$4| |this_$4| Ndpr))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$102| |this_$4| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$4| |this_$4| Ncpr))) (forall( (|o_$70| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |h_$102| |this_$4|) |o_$70|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$102| |o_$70| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$4| |o_$70| Ncpr))))) (InvPrSt |h_$102| |this_$4| |from_$0| |to_$0|)))
      (forall( (|h_$103| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld_$5| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|from_$1| Int) (|to_$1| Int) (|this_$5| ref))(=> (and (and (and (and (and (and (InvPrSt |hOld_$5| |this_$5| |from_$1| |to_$1|) (Equal (BBSet |h_$103| |this_$5|) (BBSet |hOld_$5| |this_$5|))) (=> (<= |from_$1| 0) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$103| |this_$5| Npr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$5| |this_$5| Npr)))) (=> (> |from_$1| 0) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$103| |this_$5| Npr) (RemoveMSet (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$5| |this_$5| Npr) |from_$1|)))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$103| |this_$5| Ndpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$5| |this_$5| Ndpr))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$103| |this_$5| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$5| |this_$5| Ncpr))) (forall( (|o_$71| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |h_$103| |this_$5|) |o_$71|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$103| |o_$71| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$5| |o_$71| Ncpr))))) (InvPrSt |h_$103| |this_$5| 0 |to_$1|)))
      (forall( (|h_$104| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld_$6| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|from_$2| Int) (|to_$2| Int) (|this_$6| ref))(=> (and (and (and (and (and (and (InvPrSt |hOld_$6| |this_$6| |from_$2| |to_$2|) (Equal (BBSet |h_$104| |this_$6|) (BBSet |hOld_$6| |this_$6|))) (=> (<= |to_$2| 0) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$104| |this_$6| Npr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$6| |this_$6| Npr)))) (=> (> |to_$2| 0) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$104| |this_$6| Npr) (AddMSet (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$6| |this_$6| Npr) |to_$2|)))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$104| |this_$6| Ndpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$6| |this_$6| Ndpr))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$104| |this_$6| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$6| |this_$6| Ncpr))) (forall( (|o_$72| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |h_$104| |this_$6|) |o_$72|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$104| |o_$72| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$6| |o_$72| Ncpr))))) (InvPrSt |h_$104| |this_$6| |from_$2| 0)))
      (forall( (|h_$105| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld_$7| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|this_$7| ref))(=> (and (and (and (InvPrSt |hOld_$7| |this_$7| 0 0) (not (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |hOld_$7| |this_$7|) |this_$7|))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$105| |this_$7| Ncpr) (Max (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$7| |this_$7| Ndpr) (MaxMSet (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$7| |this_$7| Npr))))) (and (and (and (and (forall( (|o_$73_$0| ref) (|f_$2_$0| field$ref$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$105| |o_$73_$0| |f_$2_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |hOld_$7| |o_$73_$0| |f_$2_$0|)) (and (= |o_$73_$0| |this_$7|) false))) (forall( (|o_$73_$1| ref) (|f_$2_$1| field$$@Map@@ref@To@Bool@@$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$105| |o_$73_$1| |f_$2_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |hOld_$7| |o_$73_$1| |f_$2_$1|)) (and (= |o_$73_$1| |this_$7|) false)))) (forall( (|o_$73_$2| ref) (|f_$2_$2| field$$@Map@@Int@To@Int@@$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$105| |o_$73_$2| |f_$2_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$7| |o_$73_$2| |f_$2_$2|)) (and (= |o_$73_$2| |this_$7|) false)))) (forall( (|o_$73_$3| ref) (|f_$2_$3| field$Int$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$105| |o_$73_$3| |f_$2_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$7| |o_$73_$3| |f_$2_$3|)) (and (= |o_$73_$3| |this_$7|) (= |f_$2_$3| Ncpr))))) (forall( (|o_$73_$4| ref) (|f_$2_$4| field$TNodeState$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$105| |o_$73_$4| |f_$2_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |hOld_$7| |o_$73_$4| |f_$2_$4|)) (and (= |o_$73_$4| |this_$7|) false))))) (InvPr |h_$105| |this_$7|)))
      (forall( (|h_$11| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$23| ref))(Equal (NACCSet |h_$11| |o_$23|) (RemEl (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$11| |o_$23| NA) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$11| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$11| |o_$23| Nt) LL)) |o_$23|)))
      (forall( (|h_$12| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$24| ref))(and (=> (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$12| |o_$24| NSt) StD)) (Equal (BBSet |h_$12| |o_$24|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$12| |o_$24| NC))) (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$12| |o_$24| NSt) StD) (Equal (BBSet |h_$12| |o_$24|) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$12| |o_$24| NC) (CLp |h_$12| |o_$24|))))))
      (forall( (|h_$13| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1| $@Map@@ref@To@Bool@@))(= (InvIsGoodRegionsTreeEx |h_$13| |Ex1|) (forall( (|o_$25| ref))(and (and (IsGoodRegion (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$13| |o_$25| NC)) (IsGoodRegion (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$13| |o_$25| ND))) (IsGoodRegion (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$13| |o_$25| NA))))))
      (forall( (|h_$14| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$0| $@Map@@ref@To@Bool@@) (|Ex2| $@Map@@ref@To@Bool@@))(= (InvCpEx |h_$14| |Ex1_$0| |Ex2|) (forall( (|o_$26| ref) (|o'_$4| ref))(!(=> (and (and (and (not (= |o_$26| null)) (not (= |o'_$4| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$0| |o_$26|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2| |o'_$4|))) (= (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$14| |o_$26| NC) |o'_$4|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$14| |o'_$4| Np) |o_$26|)))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$14| |o_$26| NC) |o'_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$14| |o'_$4| Np))))))
      (forall( (|h_$15| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$1| $@Map@@ref@To@Bool@@) (|Ex2_$0| $@Map@@ref@To@Bool@@))(= (InvCCEx |h_$15| |Ex1_$1| |Ex2_$0|) (forall( (|o_$27| ref) (|o'_$5| ref))(=> (and (and (and (not (= |o_$27| null)) (not (= |o'_$5| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$1| |o_$27|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$0| |o'_$5|))) (=> (not (= |o_$27| |o'_$5|)) (Disjoint (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$15| |o_$27| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$15| |o'_$5| NC)))))))
      (forall( (|h_$16| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$2| $@Map@@ref@To@Bool@@))(= (InvDEx |h_$16| |Ex1_$2|) (forall( (|o_$28| ref))(=> (and (not (= |o_$28| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$2| |o_$28|))) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$16| |o_$28| ND) |o_$28|))))))
      (forall( (|h_$17| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$3| $@Map@@ref@To@Bool@@))(= (InvAEx |h_$17| |Ex1_$3|) (forall( (|o_$29| ref))(=> (and (not (= |o_$29| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$3| |o_$29|))) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$17| |o_$29| NA) |o_$29|))))))
      (forall( (|h_$18| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$4| $@Map@@ref@To@Bool@@))(= (InvCD1Ex |h_$18| |Ex1_$4|) (forall( (|o_$30| ref))(=> (and (not (= |o_$30| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$4| |o_$30|))) (Sub (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$18| |o_$30| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$18| |o_$30| ND))))))
      (forall( (|h_$19| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$5| $@Map@@ref@To@Bool@@) (|Ex2_$1| $@Map@@ref@To@Bool@@))(= (InvCD2Ex |h_$19| |Ex1_$5| |Ex2_$1|) (forall( (|o_$31| ref) (|o'_$6| ref))(=> (and (and (and (not (= |o_$31| null)) (not (= |o'_$6| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$5| |o_$31|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$1| |o'_$6|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$19| |o_$31| ND) |o'_$6|) (Disjoint (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$19| |o_$31| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$19| |o'_$6| ND)))))))
      (forall( (|h_$20| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$6| $@Map@@ref@To@Bool@@) (|Ex2_$2| $@Map@@ref@To@Bool@@))(= (InvAD1Ex |h_$20| |Ex1_$6| |Ex2_$2|) (forall( (|o_$32| ref) (|o'_$7| ref))(!(=> (and (and (and (not (= |o_$32| null)) (not (= |o'_$7| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$6| |o_$32|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$2| |o'_$7|))) (= (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$20| |o_$32| ND) |o'_$7|) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$20| |o'_$7| NA) |o_$32|)))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$20| |o_$32| ND) |o'_$7|)) :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$20| |o'_$7| NA) |o_$32|))))))
      (forall( (|h_$21| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$7| $@Map@@ref@To@Bool@@) (|Ex2_$3| $@Map@@ref@To@Bool@@))(= (InvAD2Ex |h_$21| |Ex1_$7| |Ex2_$3|) (forall( (|o_$33| ref) (|o'_$8| ref))(!(=> (and (and (and (not (= |o_$33| null)) (not (= |o'_$8| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$7| |o_$33|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$3| |o'_$8|))) (=> (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$21| |o_$33| ND) |o'_$8|)) (Disjoint (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$21| |o'_$8| NA) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$21| |o_$33| ND) |o_$33|))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$21| |o_$33| ND) |o'_$8|))))))
      (forall( (|h_$22| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$8| $@Map@@ref@To@Bool@@) (|Ex2_$4| $@Map@@ref@To@Bool@@))(= (InvAD3Ex |h_$22| |Ex1_$8| |Ex2_$4|) (forall( (|o_$34| ref) (|o'_$9| ref))(!(=> (and (and (and (not (= |o_$34| null)) (not (= |o'_$9| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$8| |o_$34|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$4| |o'_$9|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$22| |o_$34| ND) |o'_$9|) (Equal (Minus (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$22| |o'_$9| NA) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$22| |o_$34| ND)) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$22| |o_$34| NA) |o_$34|))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$22| |o_$34| ND) |o'_$9|))))))
      (forall( (|h_$23| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$9| $@Map@@ref@To@Bool@@) (|Ex2_$5| $@Map@@ref@To@Bool@@))(= (InvDD1Ex |h_$23| |Ex1_$9| |Ex2_$5|) (forall( (|o_$35| ref) (|o'_$10| ref))(!(=> (and (and (and (not (= |o_$35| null)) (not (= |o'_$10| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$9| |o_$35|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$5| |o'_$10|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$23| |o_$35| ND) |o'_$10|) (Sub (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$23| |o'_$10| ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$23| |o_$35| ND))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$23| |o_$35| ND) |o'_$10|))))))
      (forall( (|h_$24| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$10| $@Map@@ref@To@Bool@@) (|Ex2_$6| $@Map@@ref@To@Bool@@))(= (InvDD2Ex |h_$24| |Ex1_$10| |Ex2_$6|) (forall( (|o_$36| ref) (|o'_$11| ref))(!(=> (and (and (and (not (= |o_$36| null)) (not (= |o'_$11| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$10| |o_$36|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$6| |o'_$11|))) (=> (and (and (not (= |o_$36| |o'_$11|)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$24| |o_$36| ND) |o'_$11|))) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$24| |o'_$11| ND) |o_$36|))) (Disjoint (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$24| |o_$36| ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$24| |o'_$11| ND))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$24| |o_$36| ND) |o'_$11|) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$24| |o'_$11| ND) |o_$36|))))))
      (forall( (|h_$25| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$11| $@Map@@ref@To@Bool@@) (|Ex2_$7| $@Map@@ref@To@Bool@@))(= (InvAAEx |h_$25| |Ex1_$11| |Ex2_$7|) (forall( (|o_$37| ref) (|o'_$12| ref))(!(=> (and (and (and (not (= |o_$37| null)) (not (= |o'_$12| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$11| |o_$37|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$7| |o'_$12|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$25| |o_$37| NA) |o'_$12|) (Sub (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$25| |o'_$12| NA) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$25| |o_$37| NA))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$25| |o_$37| NA) |o'_$12|))))))
      (forall( (|h_$26| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$12| $@Map@@ref@To@Bool@@))(= (InvAp1Ex |h_$26| |Ex1_$12|) (forall( (|o_$38| ref))(!(=> (and (not (= |o_$38| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$12| |o_$38|))) (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$26| |o_$38| Np) null) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$26| |o_$38| NA) Empty)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$26| |o_$38| Np))))))
      (forall( (|h_$27| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$13| $@Map@@ref@To@Bool@@))(= (InvAp2Ex |h_$27| |Ex1_$13|) (forall( (|o_$39| ref))(!(=> (and (not (= |o_$39| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$13| |o_$39|))) (=> (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$27| |o_$39| Np) null)) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$27| |o_$39| NA) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$27| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$27| |o_$39| Np) NA) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$27| |o_$39| Np)))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$27| |o_$39| Np))))))
      (forall( (|h_$28| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$14| $@Map@@ref@To@Bool@@))(= (InvAt1Ex |h_$28| |Ex1_$14|) (forall( (|o_$40| ref))(!(=> (and (not (= |o_$40| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$14| |o_$40|))) (=> (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$28| |o_$40| Np) null)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$28| |o_$40| NA) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$28| |o_$40| Nt))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$28| |o_$40| Nt))))))
      (forall( (|h_$29| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$15| $@Map@@ref@To@Bool@@))(= (InvAt2Ex |h_$29| |Ex1_$15|) (forall( (|o_$41| ref))(!(=> (and (not (= |o_$41| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$15| |o_$41|))) (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$29| |o_$41| Np) null) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$29| |o_$41| Nt) |o_$41|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$29| |o_$41| Nt))))))
      (forall( (|h_$30| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$16| $@Map@@ref@To@Bool@@) (|Ex2_$8| $@Map@@ref@To@Bool@@))(= (InvAt3Ex |h_$30| |Ex1_$16| |Ex2_$8|) (forall( (|o_$42| ref) (|o'_$13| ref))(!(=> (and (and (and (not (= |o_$42| null)) (not (= |o'_$13| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$16| |o_$42|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$8| |o'_$13|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$30| |o_$42| NA) |o'_$13|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$30| |o_$42| Nt) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$30| |o'_$13| Nt))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$30| |o_$42| NA) |o'_$13|))))))
      (forall( (|h_$4| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|r_$4| $@Map@@ref@To@Bool@@) (|i_$7| Int) (|o_$15| ref))(= (MapRead$$@Map@@ref@To@Bool@@$ (FBP |h_$4| |r_$4| |i_$7|) |o_$15|) (and (and (MapRead$$@Map@@ref@To@Bool@@$ |r_$4| |o_$15|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$4| |o_$15| Ncpr) |i_$7|)) (not (= |o_$15| null)))))
      (forall( (|h_$49| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex| $@Map@@ref@To@Bool@@))(!(= (InvTreeEx |h_$49| |Ex|) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (InvIsGoodRegionsTreeEx |h_$49| |Ex|) (InvCpEx |h_$49| |Ex| |Ex|)) (InvCCEx |h_$49| |Ex| |Ex|)) (InvDEx |h_$49| |Ex|)) (InvAEx |h_$49| |Ex|)) (InvCD1Ex |h_$49| |Ex|)) (InvCD2Ex |h_$49| |Ex| |Ex|)) (InvAD1Ex |h_$49| |Ex| |Ex|)) (InvAD2Ex |h_$49| |Ex| |Ex|)) (InvAD3Ex |h_$49| |Ex| |Ex|)) (InvDD1Ex |h_$49| |Ex| |Ex|)) (InvDD2Ex |h_$49| |Ex| |Ex|)) (InvAAEx |h_$49| |Ex| |Ex|)) (InvAp1Ex |h_$49| |Ex|)) (InvAp2Ex |h_$49| |Ex|)) (InvAt1Ex |h_$49| |Ex|)) (InvAt2Ex |h_$49| |Ex|)) (InvAt3Ex |h_$49| |Ex| |Ex|)))  :pattern ( (InvTreeEx |h_$49| |Ex|))))
      (forall( (|h_$5| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$16| ref))(=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$5| |o_$16| Ln) null) (= (CLn |h_$5| |o_$16|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$5| |o_$16| Lb))))
      (forall( (|h_$51| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$17| $@Map@@ref@To@Bool@@))(= (InvIsGoodRegionsListEx |h_$51| |Ex1_$17|) (forall( (|o_$43| ref))(IsGoodRegion (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$51| |o_$43| LL)))))
      (forall( (|h_$52| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$18| $@Map@@ref@To@Bool@@))(= (InvLEx |h_$52| |Ex1_$18|) (forall( (|o_$44| ref))(!(=> (and (not (= |o_$44| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$18| |o_$44|))) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$52| |o_$44| LL) |o_$44|))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$52| |o_$44| LL))))))
      (forall( (|h_$53| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$19| $@Map@@ref@To@Bool@@))(= (Inve1Ex |h_$53| |Ex1_$19|) (forall( (|o_$45| ref))(!(=> (and (not (= |o_$45| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$19| |o_$45|))) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$53| |o_$45| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$53| |o_$45| Le)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$53| |o_$45| Le))))))
      (forall( (|h_$54| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$20| $@Map@@ref@To@Bool@@))(= (Inve2Ex |h_$54| |Ex1_$20|) (forall( (|o_$46| ref))(!(=> (and (not (= |o_$46| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$20| |o_$46|))) (= (= |o_$46| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$54| |o_$46| Le)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$54| |o_$46| Ln) null)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$54| |o_$46| Le) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$54| |o_$46| Ln))))))
      (forall( (|h_$55| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$21| $@Map@@ref@To@Bool@@))(= (Invb1Ex |h_$55| |Ex1_$21|) (forall( (|o_$47| ref))(!(=> (and (not (= |o_$47| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$21| |o_$47|))) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$55| |o_$47| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$55| |o_$47| Lb)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$55| |o_$47| Lb))))))
      (forall( (|h_$56| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$22| $@Map@@ref@To@Bool@@))(= (Invb2Ex |h_$56| |Ex1_$22|) (forall( (|o_$48| ref))(!(=> (and (not (= |o_$48| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$22| |o_$48|))) (= (= |o_$48| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$56| |o_$48| Lb)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$56| |o_$48| Lp) null)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$56| |o_$48| Lb) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$56| |o_$48| Lp))))))
      (forall( (|h_$57| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$23| $@Map@@ref@To@Bool@@))(= (InvnEx |h_$57| |Ex1_$23|) (forall( (|o_$49| ref))(!(=> (and (not (= |o_$49| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$23| |o_$49|))) (=> (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$57| |o_$49| Ln) null)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$57| |o_$49| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$57| |o_$49| Ln))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$57| |o_$49| Ln))))))
      (forall( (|h_$58| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$24| $@Map@@ref@To@Bool@@))(= (InvpEx |h_$58| |Ex1_$24|) (forall( (|o_$50| ref))(!(=> (and (not (= |o_$50| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$24| |o_$50|))) (=> (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$58| |o_$50| Lp) null)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$58| |o_$50| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$58| |o_$50| Lp))))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$58| |o_$50| Lp))))))
      (forall( (|h_$59| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$25| $@Map@@ref@To@Bool@@))(= (InvnpEx |h_$59| |Ex1_$25|) (forall( (|o_$51| ref))(!(=> (and (not (= |o_$51| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$25| |o_$51|))) (=> (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$59| |o_$51| Ln) null)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$59| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$59| |o_$51| Ln) Lp) |o_$51|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$59| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$59| |o_$51| Ln) Lp))))))
      (forall( (|h_$6| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$17| ref))(=> (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$6| |o_$17| Ln) null)) (= (CLn |h_$6| |o_$17|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$6| |o_$17| Ln))))
      (forall( (|h_$60| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$26| $@Map@@ref@To@Bool@@))(= (InvpnEx |h_$60| |Ex1_$26|) (forall( (|o_$52| ref))(!(=> (and (not (= |o_$52| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$26| |o_$52|))) (=> (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$60| |o_$52| Lp) null)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$60| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$60| |o_$52| Lp) Ln) |o_$52|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$60| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$60| |o_$52| Lp) Ln))))))
      (forall( (|h_$61| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$27| $@Map@@ref@To@Bool@@) (|Ex2_$9| $@Map@@ref@To@Bool@@))(= (InvLbEx |h_$61| |Ex1_$27| |Ex2_$9|) (forall( (|o_$53| ref) (|o'_$14| ref))(!(=> (and (and (and (not (= |o_$53| null)) (not (= |o'_$14| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$27| |o_$53|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$9| |o'_$14|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$61| |o_$53| LL) |o'_$14|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$61| |o_$53| Lb) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$61| |o'_$14| Lb))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$61| |o_$53| LL) |o'_$14|))))))
      (forall( (|h_$62| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$28| $@Map@@ref@To@Bool@@) (|Ex2_$10| $@Map@@ref@To@Bool@@))(= (InvLeEx |h_$62| |Ex1_$28| |Ex2_$10|) (forall( (|o_$54| ref) (|o'_$15| ref))(!(=> (and (and (and (not (= |o_$54| null)) (not (= |o'_$15| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$28| |o_$54|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$10| |o'_$15|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$62| |o_$54| LL) |o'_$15|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$62| |o_$54| Le) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$62| |o'_$15| Le))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$62| |o_$54| LL) |o'_$15|))))))
      (forall( (|h_$63| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$29| $@Map@@ref@To@Bool@@) (|Ex2_$11| $@Map@@ref@To@Bool@@))(= (InvLL1Ex |h_$63| |Ex1_$29| |Ex2_$11|) (forall( (|o_$55| ref) (|o'_$16| ref))(!(=> (and (and (and (not (= |o_$55| null)) (not (= |o'_$16| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$29| |o_$55|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$11| |o'_$16|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$63| |o_$55| LL) |o'_$16|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$63| |o_$55| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$63| |o'_$16| LL))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$63| |o_$55| LL) |o'_$16|))))))
      (forall( (|h_$64| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$30| $@Map@@ref@To@Bool@@) (|Ex2_$12| $@Map@@ref@To@Bool@@))(= (InvLL2Ex |h_$64| |Ex1_$30| |Ex2_$12|) (forall( (|o_$56| ref) (|o'_$17| ref))(!(=> (and (and (and (not (= |o_$56| null)) (not (= |o'_$17| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$30| |o_$56|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$12| |o'_$17|))) (=> (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$64| |o_$56| LL) |o'_$17|)) (Disjoint (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$64| |o_$56| LL) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$64| |o'_$17| LL))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$64| |o_$56| LL) |o'_$17|))))))
      (forall( (|h_$7| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$18| ref))(=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$7| |o_$18| Lp) null) (= (CLp |h_$7| |o_$18|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$7| |o_$18| Le))))
      (forall( (|h_$79| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex_$0| $@Map@@ref@To@Bool@@))(!(= (InvListEx |h_$79| |Ex_$0|) (and (and (and (and (and (and (and (and (and (and (and (and (and (InvIsGoodRegionsListEx |h_$79| |Ex_$0|) (InvLEx |h_$79| |Ex_$0|)) (Inve1Ex |h_$79| |Ex_$0|)) (Inve2Ex |h_$79| |Ex_$0|)) (Invb1Ex |h_$79| |Ex_$0|)) (Invb2Ex |h_$79| |Ex_$0|)) (InvnEx |h_$79| |Ex_$0|)) (InvpEx |h_$79| |Ex_$0|)) (InvpnEx |h_$79| |Ex_$0|)) (InvnpEx |h_$79| |Ex_$0|)) (InvLbEx |h_$79| |Ex_$0| |Ex_$0|)) (InvLeEx |h_$79| |Ex_$0| |Ex_$0|)) (InvLL1Ex |h_$79| |Ex_$0| |Ex_$0|)) (InvLL2Ex |h_$79| |Ex_$0| |Ex_$0|)))  :pattern ( (InvListEx |h_$79| |Ex_$0|))))
      (forall( (|h_$8| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$19| ref))(=> (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$8| |o_$19| Lp) null)) (= (CLp |h_$8| |o_$19|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$8| |o_$19| Lp))))
      (forall( (|h_$81| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$31| $@Map@@ref@To@Bool@@))(= (InvStFEx |h_$81| |Ex1_$31|) (forall( (|o_$57| ref))(=> (and (not (= |o_$57| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$31| |o_$57|))) (= (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$81| |o_$57| NSt) StF) (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$81| |o_$57| Nbb) null) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$81| |o_$57| Np) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$81| |o_$57| Nbb))))))))
      (forall( (|h_$82| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$32| $@Map@@ref@To@Bool@@))(= (InvStLEx |h_$82| |Ex1_$32|) (forall( (|o_$58| ref))(=> (and (not (= |o_$58| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$32| |o_$58|))) (= (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$82| |o_$58| NSt) StL) (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$82| |o_$58| Nbb) null)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$82| |o_$58| Np) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$82| |o_$58| Nbb))))))))
      (forall( (|h_$83| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$33| $@Map@@ref@To@Bool@@))(= (InvStDEx |h_$83| |Ex1_$33|) (forall( (|o_$59| ref))(=> (and (not (= |o_$59| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$33| |o_$59|))) (= (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$83| |o_$59| NSt) StD) (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$83| |o_$59| Nbb) null)) (= (CLn |h_$83| |o_$59|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$83| |o_$59| Nbb))))))))
      (forall( (|h_$84| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$34| $@Map@@ref@To@Bool@@))(= (InvStNDLEx |h_$84| |Ex1_$34|) (forall( (|o_$60| ref))(=> (and (not (= |o_$60| null)) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$34| |o_$60|))) (=> (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$84| |o_$60| NSt) StD)) (IsEmptyList |h_$84| |o_$60|))))))
      (forall( (|h_$85| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$35| $@Map@@ref@To@Bool@@) (|Ex2_$13| $@Map@@ref@To@Bool@@))(= (InvStDCCEx |h_$85| |Ex1_$35| |Ex2_$13|) (forall( (|o_$61| ref) (|o'_$18| ref))(=> (and (and (and (not (= |o_$61| null)) (not (= |o'_$18| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$35| |o_$61|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$13| |o'_$18|))) (=> (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$85| |o_$61| NSt) StD) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$85| |o_$61| LL) |o'_$18|)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$85| |o'_$18| NSt) StD))))))
      (forall( (|h_$86| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex1_$36| $@Map@@ref@To@Bool@@) (|Ex2_$14| $@Map@@ref@To@Bool@@))(= (InvStADEx |h_$86| |Ex1_$36| |Ex2_$14|) (forall( (|o_$62| ref) (|o'_$19| ref))(=> (and (and (and (not (= |o_$62| null)) (not (= |o'_$19| null))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex1_$36| |o_$62|))) (not (MapRead$$@Map@@ref@To@Bool@@$ |Ex2_$14| |o'_$19|))) (=> (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$86| |o_$62| ND) |o'_$19|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$86| |o'_$19| NSt) StL))))))
      (forall( (|h_$93| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|Ex_$1| $@Map@@ref@To@Bool@@))(= (InvStructEx |h_$93| |Ex_$1|) (and (and (and (and (and (and (and (InvTreeEx |h_$93| |Ex_$1|) (InvListEx |h_$93| |Ex_$1|)) (InvStFEx |h_$93| |Ex_$1|)) (InvStLEx |h_$93| |Ex_$1|)) (InvStDEx |h_$93| |Ex_$1|)) (InvStNDLEx |h_$93| |Ex_$1|)) (InvStDCCEx |h_$93| |Ex_$1| |Ex_$1|)) (InvStADEx |h_$93| |Ex_$1| |Ex_$1|))))
      (forall( (|h_$94| $@Map@@$T0@@ref@field$$T0$@To@$T0@@))(= (InvStruct |h_$94|) (InvStructEx |h_$94| Empty)))
      (forall( (|h_$95| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$63| ref))(= (InvPr |h_$95| |o_$63|) (and (and (and (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$95| |o_$63| Ncpr) (Max (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$95| |o_$63| Ndpr) (MaxMSet (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$95| |o_$63| Npr)))) (>= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$95| |o_$63| Ncpr) 0)) (>= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$95| |o_$63| Ndpr) 0)) (forall( (|i_$8| Int))(=> (> |i_$8| 0) (= (MapRead$$@Map@@Int@To@Int@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$95| |o_$63| Npr) |i_$8|) (Card (FBP |h_$95| (BBSet |h_$95| |o_$63|) |i_$8|))))))))
      (forall( (|h_$96| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o_$64| ref) (|from| Int) (|to| Int))(= (InvPrSt |h_$96| |o_$64| |from| |to|) (and (and (and (and (forall( (|i_$9| Int))(=> (and (and (> |i_$9| 0) (not (= |i_$9| |from|))) (not (= |i_$9| |to|))) (= (MapRead$$@Map@@Int@To@Int@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$96| |o_$64| Npr) |i_$9|) (Card (FBP |h_$96| (BBSet |h_$96| |o_$64|) |i_$9|))))) (=> (> |from| 0) (= (MapRead$$@Map@@Int@To@Int@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$96| |o_$64| Npr) |from|) (+ (Card (FBP |h_$96| (BBSet |h_$96| |o_$64|) |from|)) 1)))) (=> (> |to| 0) (= (MapRead$$@Map@@Int@To@Int@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$96| |o_$64| Npr) |to|) (- (Card (FBP |h_$96| (BBSet |h_$96| |o_$64|) |to|)) 1)))) (>= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$96| |o_$64| Ncpr) 0)) (>= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$96| |o_$64| Ndpr) 0))))
      (forall( (|h_$97| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|this| ref))(=> (and (and (and (and (and (InvPr |hOld| |this|) (Equal (BBSet |h_$97| |this|) (BBSet |hOld| |this|))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$97| |this| Npr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld| |this| Npr))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$97| |this| Ndpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld| |this| Ndpr))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$97| |this| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld| |this| Ncpr))) (forall( (|o_$65| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |h_$97| |this|) |o_$65|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$97| |o_$65| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld| |o_$65| Ncpr))))) (InvPr |h_$97| |this|)))
      (forall( (|h_$98| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld_$0| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|this_$0| ref))(=> (and (and (and (and (and (and (and (and (InvPr |hOld_$0| |this_$0|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$98| |this_$0| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |hOld_$0| |this_$0| NC))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$98| |this_$0| Lp) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |hOld_$0| |this_$0| Lp))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$98| |this_$0| Le) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |hOld_$0| |this_$0| Le))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$98| |this_$0| NSt) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |hOld_$0| |this_$0| NSt))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$98| |this_$0| Npr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$0| |this_$0| Npr))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$98| |this_$0| Ndpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$0| |this_$0| Ndpr))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$98| |this_$0| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$0| |this_$0| Ncpr))) (forall( (|o_$66| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |h_$98| |this_$0|) |o_$66|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$98| |o_$66| Ncpr) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$0| |o_$66| Ncpr))))) (InvPr |h_$98| |this_$0|)))
      (forall( (|h_$99| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|hOld_$1| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|this_$1| ref) (|child| ref) (|newNcpr| Int))(=> (and (and (and (and (and (and (InvPr |hOld_$1| |this_$1|) (MapRead$$@Map@@ref@To@Bool@@$ (BBSet |hOld_$1| |this_$1|) |child|)) (>= |newNcpr| 0)) (not (= |child| null))) (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$1| |child| Ncpr) |newNcpr|))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$99| |child| Ncpr) |newNcpr|)) (and (and (and (and (forall( (|o_$67_$0| ref) (|f_$1_$0| field$ref$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h_$99| |o_$67_$0| |f_$1_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |hOld_$1| |o_$67_$0| |f_$1_$0|)) (and (= |o_$67_$0| |child|) false))) (forall( (|o_$67_$1| ref) (|f_$1_$1| field$$@Map@@ref@To@Bool@@$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h_$99| |o_$67_$1| |f_$1_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |hOld_$1| |o_$67_$1| |f_$1_$1|)) (and (= |o_$67_$1| |child|) false)))) (forall( (|o_$67_$2| ref) (|f_$1_$2| field$$@Map@@Int@To@Int@@$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |h_$99| |o_$67_$2| |f_$1_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ |hOld_$1| |o_$67_$2| |f_$1_$2|)) (and (= |o_$67_$2| |child|) false)))) (forall( (|o_$67_$3| ref) (|f_$1_$3| field$Int$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |h_$99| |o_$67_$3| |f_$1_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$1| |o_$67_$3| |f_$1_$3|)) (and (= |o_$67_$3| |child|) (= |f_$1_$3| Ncpr))))) (forall( (|o_$67_$4| ref) (|f_$1_$4| field$TNodeState$))(or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |h_$99| |o_$67_$4| |f_$1_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ |hOld_$1| |o_$67_$4| |f_$1_$4|)) (and (= |o_$67_$4| |child|) false))))) (InvPrSt |h_$99| |this_$1| (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ |hOld_$1| |child| Ncpr) |newNcpr|)))
      (forall( (|h| $@Map@@$T0@@ref@field$$T0$@To@$T0@@) (|o| ref))(!(= (IsNotAllocatedTree |h| |o|) (forall( (|o'| ref))(and (and (and (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h| |o'| Np) |o|)) (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ |h| |o'| Nt) |o|))) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h| |o'| NA) |o|))) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h| |o'| NC) |o|))) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ |h| |o'| ND) |o|)))))  :pattern ( (IsNotAllocatedTree |h| |o|))))
      (forall( (|i_$0| Int))(!(not (InMSet EmptyMSet |i_$0|))  :pattern ( (MapRead$$@Map@@Int@To@Int@@$ EmptyMSet |i_$0|))))
      (forall( (|i_$6| Int) (|j_$1| Int))(!(and (and (>= (Max |i_$6| |j_$1|) |i_$6|) (>= (Max |i_$6| |j_$1|) |j_$1|)) (or (= (Max |i_$6| |j_$1|) |i_$6|) (= (Max |i_$6| |j_$1|) |j_$1|)))  :pattern ( (Max |i_$6| |j_$1|))))
      (forall( (|m| $@Map@@Int@To@Int@@) (|i| Int))(!(= (InMSet |m| |i|) (not (= (MapRead$$@Map@@Int@To@Int@@$ |m| |i|) 0)))  :pattern ( (InMSet |m| |i|))))
      (forall( (|o_$2| ref))(!(not (MapRead$$@Map@@ref@To@Bool@@$ Empty |o_$2|))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ Empty |o_$2|))))
      (forall( (|r_$0| $@Map@@ref@To@Bool@@) (|o_$8| ref) (|o'_$2| ref))(!(= (MapRead$$@Map@@ref@To@Bool@@$ (AddEl |r_$0| |o_$8|) |o'_$2|) (or (= |o_$8| |o'_$2|) (MapRead$$@Map@@ref@To@Bool@@$ |r_$0| |o'_$2|)))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (AddEl |r_$0| |o_$8|) |o'_$2|))))
      (forall( (|r_$1| $@Map@@ref@To@Bool@@) (|o_$9| ref) (|o'_$3| ref))(!(= (MapRead$$@Map@@ref@To@Bool@@$ (RemEl |r_$1| |o_$9|) |o'_$3|) (and (not (= |o_$9| |o'_$3|)) (MapRead$$@Map@@ref@To@Bool@@$ |r_$1| |o'_$3|)))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (RemEl |r_$1| |o_$9|) |o'_$3|))))
      (forall( (|r_$3| $@Map@@ref@To@Bool@@))(!(= (IsGoodRegion |r_$3|) (not (MapRead$$@Map@@ref@To@Bool@@$ |r_$3| null)))  :pattern ( (IsGoodRegion |r_$3|))))
      (forall( (|r| ref) (|o_$3| ref))(!(= (MapRead$$@Map@@ref@To@Bool@@$ (Singleton |r|) |o_$3|) (= |r| |o_$3|))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (Singleton |r|) |o_$3|))))
      (forall( (|s_$0| $@Map@@ref@To@Bool@@) (|r_$2| $@Map@@ref@To@Bool@@) (|o_$10| ref))(!(= (MapRead$$@Map@@ref@To@Bool@@$ (Minus |s_$0| |r_$2|) |o_$10|) (and (MapRead$$@Map@@ref@To@Bool@@$ |s_$0| |o_$10|) (not (MapRead$$@Map@@ref@To@Bool@@$ |r_$2| |o_$10|))))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (Minus |s_$0| |r_$2|) |o_$10|))))
      (forall( (|s_$1| $@Map@@ref@To@Bool@@) (|o_$11| ref))(=> (not (MapRead$$@Map@@ref@To@Bool@@$ |s_$1| |o_$11|)) (= (Card (AddEl |s_$1| |o_$11|)) (+ (Card |s_$1|) 1))))
      (forall( (|s_$2| $@Map@@ref@To@Bool@@) (|o_$12| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ |s_$2| |o_$12|) (= (Card (RemEl |s_$2| |o_$12|)) (- (Card |s_$2|) 1))))
      (forall( (|s_$3| $@Map@@ref@To@Bool@@) (|t_$0| $@Map@@ref@To@Bool@@))(=> (Equal |s_$3| |t_$0|) (= (Card |s_$3|) (Card |t_$0|))))
      (forall( (|s_$4| $@Map@@ref@To@Bool@@) (|t_$1| $@Map@@ref@To@Bool@@))(=> (Equal |s_$4| |t_$1|) (= |s_$4| |t_$1|)))
      (forall( (|s| $@Map@@Int@To@Int@@) (|t| $@Map@@Int@To@Int@@))(!(=> (EqualMSet |s| |t|) (= (MaxMSet |s|) (MaxMSet |t|)))  :pattern ( (EqualMSet |s| |t|))))
      (forall( (|St| TNodeState))(or (or (= |St| StF) (= |St| StL)) (= |St| StD)))
   )
PreconditionGeneratedEntry
)) :named ax_$start))
(assert (! (=> PreconditionGeneratedEntry (and true 
   (and true
      (InvStructEx $Heap (AddEl (AddEl (AddEl (Singleton r1) r2) p1) p2))
      (IsNotAllocated $Heap p1)
      (IsNotAllocated $Heap p2)
      (IsNotAllocated $Heap r1)
      (IsNotAllocated $Heap r2)
      (not (= p1 null))
      (not (= p2 null))
      (not (= r1 null))
      (not (= r2 null))
   )
anon0
)) :named ax_PreconditionGeneratedEntry))
(assert (! (=> anon0 (and true 
   (and true
   )
(or anon0@1 anon0_assertion)
)) :named ax_anon0))
(assert (! (=> anon0@1 (and true 
   (and true
      (not (= r1 null))
   )
(or anon0@1_assertion anon0@2)
)) :named ax_anon0@1))
(assert (! (=> anon0_assertion (not (and true
   (and true
      (not (= r1 null))
   )
))) :named ax_anon0_assertion))
(assert (! (=> anon0@1_assertion (not (and true
   (and true
      (IsNotAllocated $Heap r1)
   )
))) :named ax_anon0@1_assertion))
(assert (! (=> anon0@2 (and true 
   (and true
      (IsNotAllocated $Heap r1)
   )
(or anon0@2_assertion anon0@3)
)) :named ax_anon0@2))
(assert (! (=> anon0@2_assertion (not (and true
   (and true
      (not (= r2 null))
   )
))) :named ax_anon0@2_assertion))
(assert (! (=> anon0@3 (and true 
   (and true
      (not (= r2 null))
   )
(or anon0@3_assertion anon0@4)
)) :named ax_anon0@3))
(assert (! (=> anon0@3_assertion (not (and true
   (and true
      (IsNotAllocated $Heap r2)
   )
))) :named ax_anon0@3_assertion))
(assert (! (=> anon0@4 (and true 
   (and true
      (IsNotAllocated $Heap r2)
   )
(or anon0@4_assertion anon0@5)
)) :named ax_anon0@4))
(assert (! (=> anon0@4_assertion (not (and true
   (and true
      (not (= p1 null))
   )
))) :named ax_anon0@4_assertion))
(assert (! (=> anon0@5 (and true 
   (and true
      (not (= p1 null))
   )
(or anon0@5_assertion anon0@6)
)) :named ax_anon0@5))
(assert (! (=> anon0@5_assertion (not (and true
   (and true
      (IsNotAllocated $Heap p1)
   )
))) :named ax_anon0@5_assertion))
(assert (! (=> anon0@6 (and true 
   (and true
      (IsNotAllocated $Heap p1)
   )
(or anon0@6_assertion anon0@7)
)) :named ax_anon0@6))
(assert (! (=> anon0@6_assertion (not (and true
   (and true
      (not (= p2 null))
   )
))) :named ax_anon0@6_assertion))
(assert (! (=> anon0@7 (and true 
   (and true
      (not (= p2 null))
   )
(or anon0@7_assertion anon0@8)
)) :named ax_anon0@7))
(assert (! (=> anon0@7_assertion (not (and true
   (and true
      (IsNotAllocated $Heap p2)
   )
))) :named ax_anon0@7_assertion))
(assert (! (=> anon0@8 (and true 
   (and true
      (IsNotAllocated $Heap p2)
   )
(or anon0@8_assertion anon0@9)
)) :named ax_anon0@8))
(assert (! (=> anon0@8_assertion (not (and true
   (and true
      (InvStructEx $Heap (AddEl (AddEl (AddEl (Singleton r1) r2) p1) p2))
   )
))) :named ax_anon0@8_assertion))
(assert (! (=> anon0@9 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 p1 NSt) StF)
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 p2 NSt) StF)
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r1 NSt) StF)
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF)
      (InvPr $Heap@0 p1)
      (InvPr $Heap@0 p2)
      (InvPr $Heap@0 r1)
      (InvPr $Heap@0 r2)
      (InvStruct $Heap@0)
      (InvStructEx $Heap (AddEl (AddEl (AddEl (Singleton r1) r2) p1) p2))
   )
(or anon0@10 anon0@9_assertion)
)) :named ax_anon0@9))
(assert (! (=> anon0@10 (and true 
   (and true
      (not (= p1 r2))
   )
(or anon0@10_assertion anon0@11)
)) :named ax_anon0@10))
(assert (! (=> anon0@9_assertion (not (and true
   (and true
      (not (= p1 r2))
   )
))) :named ax_anon0@9_assertion))
(assert (! (=> anon0@10_assertion (not (and true
   (and true
      (not (= p1 null))
   )
))) :named ax_anon0@10_assertion))
(assert (! (=> anon0@11 (and true 
   (and true
      (not (= p1 null))
   )
(or anon0@11_assertion anon0@12)
)) :named ax_anon0@11))
(assert (! (=> anon0@11_assertion (not (and true
   (and true
      (not (= r2 null))
   )
))) :named ax_anon0@11_assertion))
(assert (! (=> anon0@12 (and true 
   (and true
      (not (= r2 null))
   )
(or anon0@12_assertion anon0@13)
)) :named ax_anon0@12))
(assert (! (=> anon0@12_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 p1 NSt) StF)
   )
))) :named ax_anon0@12_assertion))
(assert (! (=> anon0@13 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 p1 NSt) StF)
   )
(or anon0@13_assertion anon0@14)
)) :named ax_anon0@13))
(assert (! (=> anon0@13_assertion (not (and true
   (and true
      (InvStruct $Heap@0)
   )
))) :named ax_anon0@13_assertion))
(assert (! (=> anon0@14 (and true 
   (and true
      (InvStruct $Heap@0)
   )
(or anon0@14_assertion anon0@15)
)) :named ax_anon0@14))
(assert (! (=> anon0@14_assertion (not (and true
   (and true
      (InvPr $Heap@0 p1)
   )
))) :named ax_anon0@14_assertion))
(assert (! (=> anon0@15 (and true 
   (and true
      (InvPr $Heap@0 p1)
   )
(or anon0@15_assertion anon0@16)
)) :named ax_anon0@15))
(assert (! (=> anon0@15_assertion (not (and true
   (and true
      (forall( (|o_$74| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@0 r2) |o_$74|) (InvPr $Heap@0 |o_$74|)))
   )
))) :named ax_anon0@15_assertion))
(assert (! (=> anon0@16 (and true 
   (and true
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 NC) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 NC) r2)))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 r2 Np) p1))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 p1 NSt) StF))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r2 NSt) StL))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF) (and (and (and (and (forall( (|o_$76_$0| ref) (|f_$3_$0| field$ref$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$76_$0| |f_$3_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 |o_$76_$0| |f_$3_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@0 p1) |o_$76_$0|) (or false false))) (and (= |o_$76_$0| r2) (= |f_$3_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 ND) r2) |o_$76_$0|) (= |f_$3_$0| Nt))) (and (= |o_$76_$0| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 NA) p1) |o_$76_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 ND) r2) |o_$76_$0|) false)) (and (= |o_$76_$0| r2) (= |f_$3_$0| Nbb))) (and (= |o_$76_$0| r2) false))) (forall( (|o_$76_$1| ref) (|f_$3_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$76_$1| |f_$3_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 |o_$76_$1| |f_$3_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@0 p1) |o_$76_$1|) (or false false))) (and (= |o_$76_$1| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 ND) r2) |o_$76_$1|) false)) (and (= |o_$76_$1| p1) (= |f_$3_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 NA) p1) |o_$76_$1|) (= |f_$3_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 ND) r2) |o_$76_$1|) (= |f_$3_$1| NA))) (and (= |o_$76_$1| r2) false)) (and (= |o_$76_$1| r2) false)))) (forall( (|o_$76_$2| ref) (|f_$3_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@1 |o_$76_$2| |f_$3_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@0 |o_$76_$2| |f_$3_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@0 p1) |o_$76_$2|) (or (= |f_$3_$2| Npr) false))) (and (= |o_$76_$2| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 ND) r2) |o_$76_$2|) false)) (and (= |o_$76_$2| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 NA) p1) |o_$76_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 ND) r2) |o_$76_$2|) false)) (and (= |o_$76_$2| r2) false)) (and (= |o_$76_$2| r2) false)))) (forall( (|o_$76_$3| ref) (|f_$3_$3| field$Int$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@1 |o_$76_$3| |f_$3_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@0 |o_$76_$3| |f_$3_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@0 p1) |o_$76_$3|) (or false (= |f_$3_$3| Ncpr)))) (and (= |o_$76_$3| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 ND) r2) |o_$76_$3|) false)) (and (= |o_$76_$3| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 NA) p1) |o_$76_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 ND) r2) |o_$76_$3|) false)) (and (= |o_$76_$3| r2) false)) (and (= |o_$76_$3| r2) false)))) (forall( (|o_$76_$4| ref) (|f_$3_$4| field$TNodeState$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 |o_$76_$4| |f_$3_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 |o_$76_$4| |f_$3_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@0 p1) |o_$76_$4|) (or false false))) (and (= |o_$76_$4| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 ND) r2) |o_$76_$4|) false)) (and (= |o_$76_$4| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 NA) p1) |o_$76_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 ND) r2) |o_$76_$4|) false)) (and (= |o_$76_$4| r2) false)) (and (= |o_$76_$4| r2) (= |f_$3_$4| NSt))))))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF) (forall( (|o_$77| ref))(=> (not (= |o_$77| p1)) (Equal (BBSet $Heap@1 |o_$77|) (BBSet $Heap@0 |o_$77|)))))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF) (forall( (|o_$78| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r2 ND) r2) |o_$78|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$78| Nt) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 p1 Nt)))))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF) (forall( (|o_$79| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 NA) p1) |o_$79|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$79| ND) (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 |o_$79| ND) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r2 ND) r2))))))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF) (forall( (|o_$80| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 ND) r2) |o_$80|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$80| NA) (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 |o_$80| NA) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 NA) p1))))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) r2)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 p1 Ln) null))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) r2)) (and (and (and (and (forall( (|o_$84_$0| ref) (|f_$5_$0| field$ref$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$84_$0| |f_$5_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 |o_$84_$0| |f_$5_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@0 r2) |o_$84_$0|) (or false false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$0|) (= |f_$5_$0| Lb))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$0|) (= |f_$5_$0| Le))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$0|) (= |f_$5_$0| Lp))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$0|) (= |f_$5_$0| Ln))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) p1) |o_$84_$0|) (= |f_$5_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 p1 Lp)) |o_$84_$0|) (= |f_$5_$0| Nt))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) p1) r2) |o_$84_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 p1 Lp)) |o_$84_$0|) false)) (and (= |o_$84_$0| p1) (= |f_$5_$0| Nbb))) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 LL) |o_$84_$0|) false))) (forall( (|o_$84_$1| ref) (|f_$5_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$84_$1| |f_$5_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 |o_$84_$1| |f_$5_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@0 r2) |o_$84_$1|) (or false false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$1|) (= |f_$5_$1| LL))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) p1) |o_$84_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 p1 Lp)) |o_$84_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) p1) r2) |o_$84_$1|) (= |f_$5_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$1|) (= |f_$5_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 p1 Lp)) |o_$84_$1|) (= |f_$5_$1| NA))) (and (= |o_$84_$1| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 LL) |o_$84_$1|) false)))) (forall( (|o_$84_$2| ref) (|f_$5_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@1 |o_$84_$2| |f_$5_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@0 |o_$84_$2| |f_$5_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@0 r2) |o_$84_$2|) (or (= |f_$5_$2| Npr) false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) p1) |o_$84_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 p1 Lp)) |o_$84_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) p1) r2) |o_$84_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 p1 Lp)) |o_$84_$2|) false)) (and (= |o_$84_$2| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 LL) |o_$84_$2|) false)))) (forall( (|o_$84_$3| ref) (|f_$5_$3| field$Int$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@1 |o_$84_$3| |f_$5_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@0 |o_$84_$3| |f_$5_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@0 r2) |o_$84_$3|) (or false (= |f_$5_$3| Ncpr)))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) p1) |o_$84_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 p1 Lp)) |o_$84_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) p1) r2) |o_$84_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 p1 Lp)) |o_$84_$3|) false)) (and (= |o_$84_$3| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 LL) |o_$84_$3|) false)))) (forall( (|o_$84_$4| ref) (|f_$5_$4| field$TNodeState$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 |o_$84_$4| |f_$5_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 |o_$84_$4| |f_$5_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@0 r2) |o_$84_$4|) (or false false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) p1) |o_$84_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 p1 Lp)) |o_$84_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) p1) r2) |o_$84_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$84_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 p1 Lp)) |o_$84_$4|) false)) (and (= |o_$84_$4| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 LL) |o_$84_$4|) (= |f_$5_$4| NSt))))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) r2)) (forall( (|o_$83| ref))(!(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r2 NA) r2) |o_$83|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 |o_$83| NSt) StD))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r2 NA) r2) |o_$83|)))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) r2)) (forall( (|o_$85| ref))(=> (not (= |o_$85| r2)) (Equal (BBSet $Heap@1 |o_$85|) (BBSet $Heap@0 |o_$85|)))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) r2)) (forall( (|o_$86| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$86|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$86| LL) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2)))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) r2)) (forall( (|o_$87| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$87|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$87| Lb) r2))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) r2)) (forall( (|o_$88| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$88|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$88| Le) p1))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) r2)) (forall( (|o_$89| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) p1) |o_$89|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 |o_$89| Np) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$89| Ln)))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) r2)) (forall( (|o_$90| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$90|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$90| Np) null))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) r2)) (forall( (|o_$91| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) p1) r2) |o_$91|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$91| NC) (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 |o_$91| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$91| Lp))))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) r2)) (forall( (|o_$92| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) p1) r2) |o_$92|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$92| ND) (Minus (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 |o_$92| ND) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$92| Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$92| Lp)))))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) r2)) (forall( (|o_$93| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$93|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$93| NA) Empty))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) r2)) (InvStruct $Heap@1))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) r2))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 p1 NSt) StL))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) r2))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r2 NSt) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt)))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) r2))) (and (and (and (and (forall( (|o_$81_$0| ref) (|f_$4_$0| field$ref$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$81_$0| |f_$4_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@0 |o_$81_$0| |f_$4_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@0 r2) |o_$81_$0|) (or false false))) (and (= |o_$81_$0| p1) (= |f_$4_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) p1) |o_$81_$0|) (= |f_$4_$0| Nt))) (and (= |o_$81_$0| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$81_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) p1) |o_$81_$0|) false)) (and (= |o_$81_$0| p1) (= |f_$4_$0| Nbb))) (and (= |o_$81_$0| p1) false))) (forall( (|o_$81_$1| ref) (|f_$4_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$81_$1| |f_$4_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 |o_$81_$1| |f_$4_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@0 r2) |o_$81_$1|) (or false false))) (and (= |o_$81_$1| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) p1) |o_$81_$1|) false)) (and (= |o_$81_$1| r2) (= |f_$4_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$81_$1|) (= |f_$4_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) p1) |o_$81_$1|) (= |f_$4_$1| NA))) (and (= |o_$81_$1| p1) false)) (and (= |o_$81_$1| p1) false)))) (forall( (|o_$81_$2| ref) (|f_$4_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@1 |o_$81_$2| |f_$4_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@0 |o_$81_$2| |f_$4_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@0 r2) |o_$81_$2|) (or (= |f_$4_$2| Npr) false))) (and (= |o_$81_$2| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) p1) |o_$81_$2|) false)) (and (= |o_$81_$2| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$81_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) p1) |o_$81_$2|) false)) (and (= |o_$81_$2| p1) false)) (and (= |o_$81_$2| p1) false)))) (forall( (|o_$81_$3| ref) (|f_$4_$3| field$Int$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@1 |o_$81_$3| |f_$4_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@0 |o_$81_$3| |f_$4_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@0 r2) |o_$81_$3|) (or false (= |f_$4_$3| Ncpr)))) (and (= |o_$81_$3| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) p1) |o_$81_$3|) false)) (and (= |o_$81_$3| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$81_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) p1) |o_$81_$3|) false)) (and (= |o_$81_$3| p1) false)) (and (= |o_$81_$3| p1) false)))) (forall( (|o_$81_$4| ref) (|f_$4_$4| field$TNodeState$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 |o_$81_$4| |f_$4_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 |o_$81_$4| |f_$4_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@0 r2) |o_$81_$4|) (or false false))) (and (= |o_$81_$4| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) p1) |o_$81_$4|) false)) (and (= |o_$81_$4| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 r2 NA) r2) |o_$81_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) p1) |o_$81_$4|) false)) (and (= |o_$81_$4| p1) false)) (and (= |o_$81_$4| p1) (= |f_$4_$4| NSt))))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@0 r2 NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@0 p1 ND) r2))) (forall( (|o_$82| ref))(=> (not (= |o_$82| r2)) (Equal (BBSet $Heap@1 |o_$82|) (BBSet $Heap@0 |o_$82|)))))
      (forall( (|o_$74| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@0 r2) |o_$74|) (InvPr $Heap@0 |o_$74|)))
      (forall( (|o_$75| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@1 r2) |o_$75|) (InvPr $Heap@1 |o_$75|)))
      (InvPr $Heap@1 p1)
      (InvStruct $Heap@1)
   )
(or anon0@16_assertion anon0@17)
)) :named ax_anon0@16))
(assert (! (=> anon0@16_assertion (not (and true
   (and true
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 NC) r2)
   )
))) :named ax_anon0@16_assertion))
(assert (! (=> anon0@17 (and true 
   (and true
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 NC) r2)
   )
(or anon0@17_assertion anon0@18)
)) :named ax_anon0@17))
(assert (! (=> anon0@17_assertion (not (and true
   (and true
      (not (= p1 r1))
   )
))) :named ax_anon0@17_assertion))
(assert (! (=> anon0@18 (and true 
   (and true
      (not (= p1 r1))
   )
(or anon0@18_assertion anon0@19)
)) :named ax_anon0@18))
(assert (! (=> anon0@18_assertion (not (and true
   (and true
      (not (= p1 null))
   )
))) :named ax_anon0@18_assertion))
(assert (! (=> anon0@19 (and true 
   (and true
      (not (= p1 null))
   )
(or anon0@19_assertion anon0@20)
)) :named ax_anon0@19))
(assert (! (=> anon0@19_assertion (not (and true
   (and true
      (not (= r1 null))
   )
))) :named ax_anon0@19_assertion))
(assert (! (=> anon0@20 (and true 
   (and true
      (not (= r1 null))
   )
(or anon0@20_assertion anon0@21)
)) :named ax_anon0@20))
(assert (! (=> anon0@20_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 p1 NSt) StF)
   )
))) :named ax_anon0@20_assertion))
(assert (! (=> anon0@21 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 p1 NSt) StF)
   )
(or anon0@21_assertion anon0@22)
)) :named ax_anon0@21))
(assert (! (=> anon0@21_assertion (not (and true
   (and true
      (InvStruct $Heap@1)
   )
))) :named ax_anon0@21_assertion))
(assert (! (=> anon0@22 (and true 
   (and true
      (InvStruct $Heap@1)
   )
(or anon0@22_assertion anon0@23)
)) :named ax_anon0@22))
(assert (! (=> anon0@22_assertion (not (and true
   (and true
      (InvPr $Heap@1 p1)
   )
))) :named ax_anon0@22_assertion))
(assert (! (=> anon0@23 (and true 
   (and true
      (InvPr $Heap@1 p1)
   )
(or anon0@23_assertion anon0@24)
)) :named ax_anon0@23))
(assert (! (=> anon0@23_assertion (not (and true
   (and true
      (forall( (|o_$94| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@1 r1) |o_$94|) (InvPr $Heap@1 |o_$94|)))
   )
))) :named ax_anon0@23_assertion))
(assert (! (=> anon0@24 (and true 
   (and true
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 p1 NC) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 NC) r1)))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 r1 Np) p1))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@2 p1 NSt) StF))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@2 r1 NSt) StL))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF) (and (and (and (and (forall( (|o_$96_$0| ref) (|f_$6_$0| field$ref$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 |o_$96_$0| |f_$6_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$96_$0| |f_$6_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@1 p1) |o_$96_$0|) (or false false))) (and (= |o_$96_$0| r1) (= |f_$6_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 ND) r1) |o_$96_$0|) (= |f_$6_$0| Nt))) (and (= |o_$96_$0| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 NA) p1) |o_$96_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 ND) r1) |o_$96_$0|) false)) (and (= |o_$96_$0| r1) (= |f_$6_$0| Nbb))) (and (= |o_$96_$0| r1) false))) (forall( (|o_$96_$1| ref) (|f_$6_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 |o_$96_$1| |f_$6_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$96_$1| |f_$6_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@1 p1) |o_$96_$1|) (or false false))) (and (= |o_$96_$1| r1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 ND) r1) |o_$96_$1|) false)) (and (= |o_$96_$1| p1) (= |f_$6_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 NA) p1) |o_$96_$1|) (= |f_$6_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 ND) r1) |o_$96_$1|) (= |f_$6_$1| NA))) (and (= |o_$96_$1| r1) false)) (and (= |o_$96_$1| r1) false)))) (forall( (|o_$96_$2| ref) (|f_$6_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@2 |o_$96_$2| |f_$6_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@1 |o_$96_$2| |f_$6_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@1 p1) |o_$96_$2|) (or (= |f_$6_$2| Npr) false))) (and (= |o_$96_$2| r1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 ND) r1) |o_$96_$2|) false)) (and (= |o_$96_$2| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 NA) p1) |o_$96_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 ND) r1) |o_$96_$2|) false)) (and (= |o_$96_$2| r1) false)) (and (= |o_$96_$2| r1) false)))) (forall( (|o_$96_$3| ref) (|f_$6_$3| field$Int$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@2 |o_$96_$3| |f_$6_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@1 |o_$96_$3| |f_$6_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@1 p1) |o_$96_$3|) (or false (= |f_$6_$3| Ncpr)))) (and (= |o_$96_$3| r1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 ND) r1) |o_$96_$3|) false)) (and (= |o_$96_$3| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 NA) p1) |o_$96_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 ND) r1) |o_$96_$3|) false)) (and (= |o_$96_$3| r1) false)) (and (= |o_$96_$3| r1) false)))) (forall( (|o_$96_$4| ref) (|f_$6_$4| field$TNodeState$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@2 |o_$96_$4| |f_$6_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 |o_$96_$4| |f_$6_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@1 p1) |o_$96_$4|) (or false false))) (and (= |o_$96_$4| r1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 ND) r1) |o_$96_$4|) false)) (and (= |o_$96_$4| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 NA) p1) |o_$96_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 ND) r1) |o_$96_$4|) false)) (and (= |o_$96_$4| r1) false)) (and (= |o_$96_$4| r1) (= |f_$6_$4| NSt))))))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF) (forall( (|o_$100| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 ND) r1) |o_$100|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 |o_$100| NA) (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$100| NA) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 p1 NA) p1))))))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF) (forall( (|o_$97| ref))(=> (not (= |o_$97| p1)) (Equal (BBSet $Heap@2 |o_$97|) (BBSet $Heap@1 |o_$97|)))))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF) (forall( (|o_$98| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 r1 ND) r1) |o_$98|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 |o_$98| Nt) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 p1 Nt)))))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF) (forall( (|o_$99| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 p1 NA) p1) |o_$99|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 |o_$99| ND) (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$99| ND) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 r1 ND) r1))))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) r1)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 p1 Ln) null))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) r1)) (and (and (and (and (forall( (|o_$104_$0| ref) (|f_$8_$0| field$ref$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 |o_$104_$0| |f_$8_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$104_$0| |f_$8_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@1 r1) |o_$104_$0|) (or false false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$0|) (= |f_$8_$0| Lb))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$0|) (= |f_$8_$0| Le))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$0|) (= |f_$8_$0| Lp))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$0|) (= |f_$8_$0| Ln))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) p1) |o_$104_$0|) (= |f_$8_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 p1 Lp)) |o_$104_$0|) (= |f_$8_$0| Nt))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) p1) r1) |o_$104_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 p1 Lp)) |o_$104_$0|) false)) (and (= |o_$104_$0| p1) (= |f_$8_$0| Nbb))) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 p1 LL) |o_$104_$0|) false))) (forall( (|o_$104_$1| ref) (|f_$8_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 |o_$104_$1| |f_$8_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$104_$1| |f_$8_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@1 r1) |o_$104_$1|) (or false false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$1|) (= |f_$8_$1| LL))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) p1) |o_$104_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 p1 Lp)) |o_$104_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) p1) r1) |o_$104_$1|) (= |f_$8_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$1|) (= |f_$8_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 p1 Lp)) |o_$104_$1|) (= |f_$8_$1| NA))) (and (= |o_$104_$1| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 p1 LL) |o_$104_$1|) false)))) (forall( (|o_$104_$2| ref) (|f_$8_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@2 |o_$104_$2| |f_$8_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@1 |o_$104_$2| |f_$8_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@1 r1) |o_$104_$2|) (or (= |f_$8_$2| Npr) false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) p1) |o_$104_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 p1 Lp)) |o_$104_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) p1) r1) |o_$104_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 p1 Lp)) |o_$104_$2|) false)) (and (= |o_$104_$2| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 p1 LL) |o_$104_$2|) false)))) (forall( (|o_$104_$3| ref) (|f_$8_$3| field$Int$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@2 |o_$104_$3| |f_$8_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@1 |o_$104_$3| |f_$8_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@1 r1) |o_$104_$3|) (or false (= |f_$8_$3| Ncpr)))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) p1) |o_$104_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 p1 Lp)) |o_$104_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) p1) r1) |o_$104_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 p1 Lp)) |o_$104_$3|) false)) (and (= |o_$104_$3| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 p1 LL) |o_$104_$3|) false)))) (forall( (|o_$104_$4| ref) (|f_$8_$4| field$TNodeState$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@2 |o_$104_$4| |f_$8_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 |o_$104_$4| |f_$8_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@1 r1) |o_$104_$4|) (or false false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) p1) |o_$104_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 p1 Lp)) |o_$104_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) p1) r1) |o_$104_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$104_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 p1 Lp)) |o_$104_$4|) false)) (and (= |o_$104_$4| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 p1 LL) |o_$104_$4|) (= |f_$8_$4| NSt))))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) r1)) (forall( (|o_$103| ref))(!(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 r1 NA) r1) |o_$103|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@2 |o_$103| NSt) StD))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 r1 NA) r1) |o_$103|)))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) r1)) (forall( (|o_$105| ref))(=> (not (= |o_$105| r1)) (Equal (BBSet $Heap@2 |o_$105|) (BBSet $Heap@1 |o_$105|)))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) r1)) (forall( (|o_$106| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$106|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 |o_$106| LL) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1)))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) r1)) (forall( (|o_$107| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$107|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 |o_$107| Lb) r1))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) r1)) (forall( (|o_$108| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$108|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 |o_$108| Le) p1))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) r1)) (forall( (|o_$109| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) p1) |o_$109|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$109| Np) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 |o_$109| Ln)))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) r1)) (forall( (|o_$110| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$110|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 |o_$110| Np) null))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) r1)) (forall( (|o_$111| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) p1) r1) |o_$111|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 |o_$111| NC) (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$111| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 |o_$111| Lp))))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) r1)) (forall( (|o_$112| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) p1) r1) |o_$112|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 |o_$112| ND) (Minus (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$112| ND) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 |o_$112| Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 |o_$112| Lp)))))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) r1)) (forall( (|o_$113| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$113|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 |o_$113| NA) Empty))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) r1)) (InvStruct $Heap@2))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) r1))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@2 p1 NSt) StL))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) r1))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@2 r1 NSt) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt)))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) r1))) (and (and (and (and (forall( (|o_$101_$0| ref) (|f_$7_$0| field$ref$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 |o_$101_$0| |f_$7_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@1 |o_$101_$0| |f_$7_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@1 r1) |o_$101_$0|) (or false false))) (and (= |o_$101_$0| p1) (= |f_$7_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) p1) |o_$101_$0|) (= |f_$7_$0| Nt))) (and (= |o_$101_$0| r1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$101_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) p1) |o_$101_$0|) false)) (and (= |o_$101_$0| p1) (= |f_$7_$0| Nbb))) (and (= |o_$101_$0| p1) false))) (forall( (|o_$101_$1| ref) (|f_$7_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 |o_$101_$1| |f_$7_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 |o_$101_$1| |f_$7_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@1 r1) |o_$101_$1|) (or false false))) (and (= |o_$101_$1| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) p1) |o_$101_$1|) false)) (and (= |o_$101_$1| r1) (= |f_$7_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$101_$1|) (= |f_$7_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) p1) |o_$101_$1|) (= |f_$7_$1| NA))) (and (= |o_$101_$1| p1) false)) (and (= |o_$101_$1| p1) false)))) (forall( (|o_$101_$2| ref) (|f_$7_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@2 |o_$101_$2| |f_$7_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@1 |o_$101_$2| |f_$7_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@1 r1) |o_$101_$2|) (or (= |f_$7_$2| Npr) false))) (and (= |o_$101_$2| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) p1) |o_$101_$2|) false)) (and (= |o_$101_$2| r1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$101_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) p1) |o_$101_$2|) false)) (and (= |o_$101_$2| p1) false)) (and (= |o_$101_$2| p1) false)))) (forall( (|o_$101_$3| ref) (|f_$7_$3| field$Int$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@2 |o_$101_$3| |f_$7_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@1 |o_$101_$3| |f_$7_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@1 r1) |o_$101_$3|) (or false (= |f_$7_$3| Ncpr)))) (and (= |o_$101_$3| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) p1) |o_$101_$3|) false)) (and (= |o_$101_$3| r1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$101_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) p1) |o_$101_$3|) false)) (and (= |o_$101_$3| p1) false)) (and (= |o_$101_$3| p1) false)))) (forall( (|o_$101_$4| ref) (|f_$7_$4| field$TNodeState$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@2 |o_$101_$4| |f_$7_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 |o_$101_$4| |f_$7_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@1 r1) |o_$101_$4|) (or false false))) (and (= |o_$101_$4| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) p1) |o_$101_$4|) false)) (and (= |o_$101_$4| r1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 r1 NA) r1) |o_$101_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) p1) |o_$101_$4|) false)) (and (= |o_$101_$4| p1) false)) (and (= |o_$101_$4| p1) (= |f_$7_$4| NSt))))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@1 r1 NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@1 p1 ND) r1))) (forall( (|o_$102| ref))(=> (not (= |o_$102| r1)) (Equal (BBSet $Heap@2 |o_$102|) (BBSet $Heap@1 |o_$102|)))))
      (forall( (|o_$94| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@1 r1) |o_$94|) (InvPr $Heap@1 |o_$94|)))
      (forall( (|o_$95| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@2 r1) |o_$95|) (InvPr $Heap@2 |o_$95|)))
      (InvPr $Heap@2 p1)
      (InvStruct $Heap@2)
   )
(or anon0@24_assertion anon0@25)
)) :named ax_anon0@24))
(assert (! (=> anon0@24_assertion (not (and true
   (and true
      (InvStruct $Heap@2)
   )
))) :named ax_anon0@24_assertion))
(assert (! (=> anon0@25 (and true 
   (and true
      (InvStruct $Heap@2)
   )
(or anon0@25_assertion anon0@26)
)) :named ax_anon0@25))
(assert (! (=> anon0@25_assertion (not (and true
   (and true
      (InvPr $Heap@2 r1)
   )
))) :named ax_anon0@25_assertion))
(assert (! (=> anon0@26 (and true 
   (and true
      (InvPr $Heap@2 r1)
   )
(or anon0@26_assertion anon0@27)
)) :named ax_anon0@26))
(assert (! (=> anon0@26_assertion (not (and true
   (and true
      (InvPr $Heap@2 r2)
   )
))) :named ax_anon0@26_assertion))
(assert (! (=> anon0@27 (and true 
   (and true
      (InvPr $Heap@2 r2)
   )
(or anon0@27_assertion anon0@28)
)) :named ax_anon0@27))
(assert (! (=> anon0@27_assertion (not (and true
   (and true
      (InvPr $Heap@2 p1)
   )
))) :named ax_anon0@27_assertion))
(assert (! (=> anon0@28 (and true 
   (and true
      (InvPr $Heap@2 p1)
   )
(or anon0@28_assertion anon0@29)
)) :named ax_anon0@28))
(assert (! (=> anon0@28_assertion (not (and true
   (and true
      (InvPr $Heap@2 p2)
   )
))) :named ax_anon0@28_assertion))
(assert (! (=> anon0@29 (and true 
   (and true
      (InvPr $Heap@2 p2)
   )
(or anon0@29_assertion anon0@30)
)) :named ax_anon0@29))
(assert (! (=> anon0@29_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@2 r1 NSt) StL)
   )
))) :named ax_anon0@29_assertion))
(assert (! (=> anon0@30 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@2 r1 NSt) StL)
   )
(or anon0@30_assertion anon0@31)
)) :named ax_anon0@30))
(assert (! (=> anon0@30_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@2 r2 NSt) StL)
   )
))) :named ax_anon0@30_assertion))
(assert (! (=> anon0@31 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@2 r2 NSt) StL)
   )
(or anon0@31_assertion anon0@32)
)) :named ax_anon0@31))
(assert (! (=> anon0@31_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@2 p1 NSt) StF)
   )
))) :named ax_anon0@31_assertion))
(assert (! (=> anon0@32 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@2 p1 NSt) StF)
   )
(or anon0@32_assertion anon0@33)
)) :named ax_anon0@32))
(assert (! (=> anon0@32_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@2 p2 NSt) StF)
   )
))) :named ax_anon0@32_assertion))
(assert (! (=> anon0@33 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@2 p2 NSt) StF)
   )
(or anon0@33_assertion anon0@34)
)) :named ax_anon0@33))
(assert (! (=> anon0@33_assertion (not (and true
   (and true
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 p1 NC) r1)
   )
))) :named ax_anon0@33_assertion))
(assert (! (=> anon0@34 (and true 
   (and true
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 p1 NC) r1)
   )
(or anon0@34_assertion anon0@35)
)) :named ax_anon0@34))
(assert (! (=> anon0@34_assertion (not (and true
   (and true
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 p1 NC) r2)
   )
))) :named ax_anon0@34_assertion))
(assert (! (=> anon0@35 (and true 
   (and true
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 p1 NC) r2)
   )
(or anon0@35_assertion anon0@36)
)) :named ax_anon0@35))
(assert (! (=> anon0@35_assertion (not (and true
   (and true
      (not (= p1 r2))
   )
))) :named ax_anon0@35_assertion))
(assert (! (=> anon0@36 (and true 
   (and true
      (not (= p1 r2))
   )
(or anon0@36_assertion anon0@37)
)) :named ax_anon0@36))
(assert (! (=> anon0@36_assertion (not (and true
   (and true
      (not (= p1 null))
   )
))) :named ax_anon0@36_assertion))
(assert (! (=> anon0@37 (and true 
   (and true
      (not (= p1 null))
   )
(or anon0@37_assertion anon0@38)
)) :named ax_anon0@37))
(assert (! (=> anon0@37_assertion (not (and true
   (and true
      (not (= r2 null))
   )
))) :named ax_anon0@37_assertion))
(assert (! (=> anon0@38 (and true 
   (and true
      (not (= r2 null))
   )
(or anon0@38_assertion anon0@39)
)) :named ax_anon0@38))
(assert (! (=> anon0@38_assertion (not (and true
   (and true
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 p1 NC) r2)
   )
))) :named ax_anon0@38_assertion))
(assert (! (=> anon0@39 (and true 
   (and true
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 p1 NC) r2)
   )
(or anon0@39_assertion anon0@40)
)) :named ax_anon0@39))
(assert (! (=> anon0@39_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@2 p1 NSt) StF)
   )
))) :named ax_anon0@39_assertion))
(assert (! (=> anon0@40 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@2 p1 NSt) StF)
   )
(or anon0@40_assertion anon0@41)
)) :named ax_anon0@40))
(assert (! (=> anon0@40_assertion (not (and true
   (and true
      (InvStruct $Heap@2)
   )
))) :named ax_anon0@40_assertion))
(assert (! (=> anon0@41 (and true 
   (and true
      (InvStruct $Heap@2)
   )
(or anon0@41_assertion anon0@42)
)) :named ax_anon0@41))
(assert (! (=> anon0@41_assertion (not (and true
   (and true
      (InvPr $Heap@2 r2)
   )
))) :named ax_anon0@41_assertion))
(assert (! (=> anon0@42 (and true 
   (and true
      (InvPr $Heap@2 r2)
   )
(or anon0@42_assertion anon0@43)
)) :named ax_anon0@42))
(assert (! (=> anon0@42_assertion (not (and true
   (and true
      (forall( (|o_$114| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@2 p1) |o_$114|) (InvPr $Heap@2 |o_$114|)))
   )
))) :named ax_anon0@42_assertion))
(assert (! (=> anon0@43 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@3 r2 Np) null)
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 p1 NSt) StF)
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF)
      (forall( (|o_$114| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@2 p1) |o_$114|) (InvPr $Heap@2 |o_$114|)))
      (forall( (|o_$115| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@2 p1) |o_$115|) (InvPr $Heap@3 |o_$115|)))
      (forall( (|o_$116_$0| ref) (|f_$9_$0| field$ref$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@3 |o_$116_$0| |f_$9_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@2 |o_$116_$0| |f_$9_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@2 p1) |o_$116_$0|) (or false false))) (and (= |o_$116_$0| r2) (= |f_$9_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 r2 ND) r2) |o_$116_$0|) (= |f_$9_$0| Nt))) (and (= |o_$116_$0| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 p1 NA) p1) |o_$116_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 r2 ND) r2) |o_$116_$0|) false)) (and (= |o_$116_$0| r2) (= |f_$9_$0| Nbb))) (and (= |o_$116_$0| r2) false)))
      (forall( (|o_$116_$1| ref) (|f_$9_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 |o_$116_$1| |f_$9_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 |o_$116_$1| |f_$9_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@2 p1) |o_$116_$1|) (or false false))) (and (= |o_$116_$1| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 r2 ND) r2) |o_$116_$1|) false)) (and (= |o_$116_$1| p1) (= |f_$9_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 p1 NA) p1) |o_$116_$1|) (= |f_$9_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 r2 ND) r2) |o_$116_$1|) (= |f_$9_$1| NA))) (and (= |o_$116_$1| r2) false)) (and (= |o_$116_$1| r2) false)))
      (forall( (|o_$116_$2| ref) (|f_$9_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@3 |o_$116_$2| |f_$9_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@2 |o_$116_$2| |f_$9_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@2 p1) |o_$116_$2|) (or (= |f_$9_$2| Npr) false))) (and (= |o_$116_$2| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 r2 ND) r2) |o_$116_$2|) false)) (and (= |o_$116_$2| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 p1 NA) p1) |o_$116_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 r2 ND) r2) |o_$116_$2|) false)) (and (= |o_$116_$2| r2) false)) (and (= |o_$116_$2| r2) false)))
      (forall( (|o_$116_$3| ref) (|f_$9_$3| field$Int$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@3 |o_$116_$3| |f_$9_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@2 |o_$116_$3| |f_$9_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@2 p1) |o_$116_$3|) (or false (= |f_$9_$3| Ncpr)))) (and (= |o_$116_$3| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 r2 ND) r2) |o_$116_$3|) false)) (and (= |o_$116_$3| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 p1 NA) p1) |o_$116_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 r2 ND) r2) |o_$116_$3|) false)) (and (= |o_$116_$3| r2) false)) (and (= |o_$116_$3| r2) false)))
      (forall( (|o_$116_$4| ref) (|f_$9_$4| field$TNodeState$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 |o_$116_$4| |f_$9_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@2 |o_$116_$4| |f_$9_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@2 p1) |o_$116_$4|) (or false false))) (and (= |o_$116_$4| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 r2 ND) r2) |o_$116_$4|) false)) (and (= |o_$116_$4| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 p1 NA) p1) |o_$116_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@2 r2 ND) r2) |o_$116_$4|) false)) (and (= |o_$116_$4| r2) false)) (and (= |o_$116_$4| r2) (= |f_$9_$4| NSt))))
      (forall( (|o_$117| ref))(=> (not (= |o_$117| p1)) (Equal (BBSet $Heap@3 |o_$117|) (BBSet $Heap@2 |o_$117|))))
      (InvPr $Heap@3 r2)
      (InvStruct $Heap@3)
   )
(or anon0@43_assertion anon0@44)
)) :named ax_anon0@43))
(assert (! (=> anon0@43_assertion (not (and true
   (and true
      (InvStruct $Heap@3)
   )
))) :named ax_anon0@43_assertion))
(assert (! (=> anon0@44 (and true 
   (and true
      (InvStruct $Heap@3)
   )
(or anon0@44_assertion anon0@45)
)) :named ax_anon0@44))
(assert (! (=> anon0@44_assertion (not (and true
   (and true
      (InvPr $Heap@3 r1)
   )
))) :named ax_anon0@44_assertion))
(assert (! (=> anon0@45 (and true 
   (and true
      (InvPr $Heap@3 r1)
   )
(or anon0@45_assertion anon0@46)
)) :named ax_anon0@45))
(assert (! (=> anon0@45_assertion (not (and true
   (and true
      (InvPr $Heap@3 r2)
   )
))) :named ax_anon0@45_assertion))
(assert (! (=> anon0@46 (and true 
   (and true
      (InvPr $Heap@3 r2)
   )
(or anon0@46_assertion anon0@47)
)) :named ax_anon0@46))
(assert (! (=> anon0@46_assertion (not (and true
   (and true
      (InvPr $Heap@3 p1)
   )
))) :named ax_anon0@46_assertion))
(assert (! (=> anon0@47 (and true 
   (and true
      (InvPr $Heap@3 p1)
   )
(or anon0@47_assertion anon0@48)
)) :named ax_anon0@47))
(assert (! (=> anon0@47_assertion (not (and true
   (and true
      (InvPr $Heap@3 p2)
   )
))) :named ax_anon0@47_assertion))
(assert (! (=> anon0@48 (and true 
   (and true
      (InvPr $Heap@3 p2)
   )
(or anon0@48_assertion anon0@49)
)) :named ax_anon0@48))
(assert (! (=> anon0@48_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r1 NSt) StL)
   )
))) :named ax_anon0@48_assertion))
(assert (! (=> anon0@49 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r1 NSt) StL)
   )
(or anon0@49_assertion anon0@50)
)) :named ax_anon0@49))
(assert (! (=> anon0@49_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF)
   )
))) :named ax_anon0@49_assertion))
(assert (! (=> anon0@50 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF)
   )
(or anon0@50_assertion anon0@51)
)) :named ax_anon0@50))
(assert (! (=> anon0@50_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 p1 NSt) StF)
   )
))) :named ax_anon0@50_assertion))
(assert (! (=> anon0@51 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 p1 NSt) StF)
   )
(or anon0@51_assertion anon0@52)
)) :named ax_anon0@51))
(assert (! (=> anon0@51_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 p2 NSt) StF)
   )
))) :named ax_anon0@51_assertion))
(assert (! (=> anon0@52 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 p2 NSt) StF)
   )
(or anon0@52_assertion anon0@53)
)) :named ax_anon0@52))
(assert (! (=> anon0@52_assertion (not (and true
   (and true
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p1 NC) r1)
   )
))) :named ax_anon0@52_assertion))
(assert (! (=> anon0@53 (and true 
   (and true
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p1 NC) r1)
   )
(or anon0@53_assertion anon0@54)
)) :named ax_anon0@53))
(assert (! (=> anon0@53_assertion (not (and true
   (and true
      (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p1 NC) r2))
   )
))) :named ax_anon0@53_assertion))
(assert (! (=> anon0@54 (and true 
   (and true
      (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p1 NC) r2))
   )
(or anon0@54_assertion anon0@55)
)) :named ax_anon0@54))
(assert (! (=> anon0@54_assertion (not (and true
   (and true
      (not (= p2 r2))
   )
))) :named ax_anon0@54_assertion))
(assert (! (=> anon0@55 (and true 
   (and true
      (not (= p2 r2))
   )
(or anon0@55_assertion anon0@56)
)) :named ax_anon0@55))
(assert (! (=> anon0@55_assertion (not (and true
   (and true
      (not (= p2 null))
   )
))) :named ax_anon0@55_assertion))
(assert (! (=> anon0@56 (and true 
   (and true
      (not (= p2 null))
   )
(or anon0@56_assertion anon0@57)
)) :named ax_anon0@56))
(assert (! (=> anon0@56_assertion (not (and true
   (and true
      (not (= r2 null))
   )
))) :named ax_anon0@56_assertion))
(assert (! (=> anon0@57 (and true 
   (and true
      (not (= r2 null))
   )
(or anon0@57_assertion anon0@58)
)) :named ax_anon0@57))
(assert (! (=> anon0@57_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 p2 NSt) StF)
   )
))) :named ax_anon0@57_assertion))
(assert (! (=> anon0@58 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 p2 NSt) StF)
   )
(or anon0@58_assertion anon0@59)
)) :named ax_anon0@58))
(assert (! (=> anon0@58_assertion (not (and true
   (and true
      (InvStruct $Heap@3)
   )
))) :named ax_anon0@58_assertion))
(assert (! (=> anon0@59 (and true 
   (and true
      (InvStruct $Heap@3)
   )
(or anon0@59_assertion anon0@60)
)) :named ax_anon0@59))
(assert (! (=> anon0@59_assertion (not (and true
   (and true
      (InvPr $Heap@3 p2)
   )
))) :named ax_anon0@59_assertion))
(assert (! (=> anon0@60 (and true 
   (and true
      (InvPr $Heap@3 p2)
   )
(or anon0@60_assertion anon0@61)
)) :named ax_anon0@60))
(assert (! (=> anon0@60_assertion (not (and true
   (and true
      (forall( (|o_$118| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@3 r2) |o_$118|) (InvPr $Heap@3 |o_$118|)))
   )
))) :named ax_anon0@60_assertion))
(assert (! (=> anon0@61 (and true 
   (and true
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p2 NC) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 NC) r2)))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 r2 Np) p2))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 p2 NSt) StF))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StL))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF) (and (and (and (and (forall( (|o_$120_$0| ref) (|f_$10_$0| field$ref$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 |o_$120_$0| |f_$10_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@3 |o_$120_$0| |f_$10_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@3 p2) |o_$120_$0|) (or false false))) (and (= |o_$120_$0| r2) (= |f_$10_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 ND) r2) |o_$120_$0|) (= |f_$10_$0| Nt))) (and (= |o_$120_$0| p2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 NA) p2) |o_$120_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 ND) r2) |o_$120_$0|) false)) (and (= |o_$120_$0| r2) (= |f_$10_$0| Nbb))) (and (= |o_$120_$0| r2) false))) (forall( (|o_$120_$1| ref) (|f_$10_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 |o_$120_$1| |f_$10_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 |o_$120_$1| |f_$10_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@3 p2) |o_$120_$1|) (or false false))) (and (= |o_$120_$1| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 ND) r2) |o_$120_$1|) false)) (and (= |o_$120_$1| p2) (= |f_$10_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 NA) p2) |o_$120_$1|) (= |f_$10_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 ND) r2) |o_$120_$1|) (= |f_$10_$1| NA))) (and (= |o_$120_$1| r2) false)) (and (= |o_$120_$1| r2) false)))) (forall( (|o_$120_$2| ref) (|f_$10_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@4 |o_$120_$2| |f_$10_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@3 |o_$120_$2| |f_$10_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@3 p2) |o_$120_$2|) (or (= |f_$10_$2| Npr) false))) (and (= |o_$120_$2| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 ND) r2) |o_$120_$2|) false)) (and (= |o_$120_$2| p2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 NA) p2) |o_$120_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 ND) r2) |o_$120_$2|) false)) (and (= |o_$120_$2| r2) false)) (and (= |o_$120_$2| r2) false)))) (forall( (|o_$120_$3| ref) (|f_$10_$3| field$Int$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@4 |o_$120_$3| |f_$10_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@3 |o_$120_$3| |f_$10_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@3 p2) |o_$120_$3|) (or false (= |f_$10_$3| Ncpr)))) (and (= |o_$120_$3| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 ND) r2) |o_$120_$3|) false)) (and (= |o_$120_$3| p2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 NA) p2) |o_$120_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 ND) r2) |o_$120_$3|) false)) (and (= |o_$120_$3| r2) false)) (and (= |o_$120_$3| r2) false)))) (forall( (|o_$120_$4| ref) (|f_$10_$4| field$TNodeState$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 |o_$120_$4| |f_$10_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 |o_$120_$4| |f_$10_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@3 p2) |o_$120_$4|) (or false false))) (and (= |o_$120_$4| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 ND) r2) |o_$120_$4|) false)) (and (= |o_$120_$4| p2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 NA) p2) |o_$120_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 ND) r2) |o_$120_$4|) false)) (and (= |o_$120_$4| r2) false)) (and (= |o_$120_$4| r2) (= |f_$10_$4| NSt))))))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF) (forall( (|o_$121| ref))(=> (not (= |o_$121| p2)) (Equal (BBSet $Heap@4 |o_$121|) (BBSet $Heap@3 |o_$121|)))))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF) (forall( (|o_$122| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 ND) r2) |o_$122|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 |o_$122| Nt) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@3 p2 Nt)))))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF) (forall( (|o_$123| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p2 NA) p2) |o_$123|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 |o_$123| ND) (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 |o_$123| ND) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 ND) r2))))))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF) (forall( (|o_$124| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 ND) r2) |o_$124|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 |o_$124| NA) (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 |o_$124| NA) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p2 NA) p2))))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) r2)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 p2 Ln) null))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) r2)) (and (and (and (and (forall( (|o_$128_$0| ref) (|f_$12_$0| field$ref$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 |o_$128_$0| |f_$12_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@3 |o_$128_$0| |f_$12_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@3 r2) |o_$128_$0|) (or false false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$0|) (= |f_$12_$0| Lb))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$0|) (= |f_$12_$0| Le))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$0|) (= |f_$12_$0| Lp))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$0|) (= |f_$12_$0| Ln))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) p2) |o_$128_$0|) (= |f_$12_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 p2 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 p2 Lp)) |o_$128_$0|) (= |f_$12_$0| Nt))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) p2) r2) |o_$128_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 p2 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 p2 Lp)) |o_$128_$0|) false)) (and (= |o_$128_$0| p2) (= |f_$12_$0| Nbb))) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p2 LL) |o_$128_$0|) false))) (forall( (|o_$128_$1| ref) (|f_$12_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 |o_$128_$1| |f_$12_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 |o_$128_$1| |f_$12_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@3 r2) |o_$128_$1|) (or false false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$1|) (= |f_$12_$1| LL))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) p2) |o_$128_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 p2 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 p2 Lp)) |o_$128_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) p2) r2) |o_$128_$1|) (= |f_$12_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$1|) (= |f_$12_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 p2 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 p2 Lp)) |o_$128_$1|) (= |f_$12_$1| NA))) (and (= |o_$128_$1| p2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p2 LL) |o_$128_$1|) false)))) (forall( (|o_$128_$2| ref) (|f_$12_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@4 |o_$128_$2| |f_$12_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@3 |o_$128_$2| |f_$12_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@3 r2) |o_$128_$2|) (or (= |f_$12_$2| Npr) false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) p2) |o_$128_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 p2 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 p2 Lp)) |o_$128_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) p2) r2) |o_$128_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 p2 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 p2 Lp)) |o_$128_$2|) false)) (and (= |o_$128_$2| p2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p2 LL) |o_$128_$2|) false)))) (forall( (|o_$128_$3| ref) (|f_$12_$3| field$Int$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@4 |o_$128_$3| |f_$12_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@3 |o_$128_$3| |f_$12_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@3 r2) |o_$128_$3|) (or false (= |f_$12_$3| Ncpr)))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) p2) |o_$128_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 p2 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 p2 Lp)) |o_$128_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) p2) r2) |o_$128_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 p2 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 p2 Lp)) |o_$128_$3|) false)) (and (= |o_$128_$3| p2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p2 LL) |o_$128_$3|) false)))) (forall( (|o_$128_$4| ref) (|f_$12_$4| field$TNodeState$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 |o_$128_$4| |f_$12_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 |o_$128_$4| |f_$12_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@3 r2) |o_$128_$4|) (or false false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) p2) |o_$128_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 p2 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 p2 Lp)) |o_$128_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) p2) r2) |o_$128_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$128_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 p2 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 p2 Lp)) |o_$128_$4|) false)) (and (= |o_$128_$4| p2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p2 LL) |o_$128_$4|) (= |f_$12_$4| NSt))))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) r2)) (forall( (|o_$127| ref))(!(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$127|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 |o_$127| NSt) StD))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$127|)))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) r2)) (forall( (|o_$129| ref))(=> (not (= |o_$129| r2)) (Equal (BBSet $Heap@4 |o_$129|) (BBSet $Heap@3 |o_$129|)))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) r2)) (forall( (|o_$130| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$130|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 |o_$130| LL) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2)))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) r2)) (forall( (|o_$131| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$131|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 |o_$131| Lb) r2))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) r2)) (forall( (|o_$132| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$132|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 |o_$132| Le) p2))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) r2)) (forall( (|o_$133| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) p2) |o_$133|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@3 |o_$133| Np) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 |o_$133| Ln)))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) r2)) (forall( (|o_$134| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$134|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 |o_$134| Np) null))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) r2)) (forall( (|o_$135| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) p2) r2) |o_$135|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 |o_$135| NC) (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 |o_$135| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 |o_$135| Lp))))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) r2)) (forall( (|o_$136| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) p2) r2) |o_$136|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 |o_$136| ND) (Minus (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 |o_$136| ND) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 |o_$136| Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 |o_$136| Lp)))))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) r2)) (forall( (|o_$137| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$137|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 |o_$137| NA) Empty))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) r2)) (InvStruct $Heap@4))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) r2))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 p2 NSt) StL))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) r2))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt)))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) r2))) (and (and (and (and (forall( (|o_$125_$0| ref) (|f_$11_$0| field$ref$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 |o_$125_$0| |f_$11_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@3 |o_$125_$0| |f_$11_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@3 r2) |o_$125_$0|) (or false false))) (and (= |o_$125_$0| p2) (= |f_$11_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) p2) |o_$125_$0|) (= |f_$11_$0| Nt))) (and (= |o_$125_$0| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$125_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) p2) |o_$125_$0|) false)) (and (= |o_$125_$0| p2) (= |f_$11_$0| Nbb))) (and (= |o_$125_$0| p2) false))) (forall( (|o_$125_$1| ref) (|f_$11_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 |o_$125_$1| |f_$11_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 |o_$125_$1| |f_$11_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@3 r2) |o_$125_$1|) (or false false))) (and (= |o_$125_$1| p2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) p2) |o_$125_$1|) false)) (and (= |o_$125_$1| r2) (= |f_$11_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$125_$1|) (= |f_$11_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) p2) |o_$125_$1|) (= |f_$11_$1| NA))) (and (= |o_$125_$1| p2) false)) (and (= |o_$125_$1| p2) false)))) (forall( (|o_$125_$2| ref) (|f_$11_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@4 |o_$125_$2| |f_$11_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@3 |o_$125_$2| |f_$11_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@3 r2) |o_$125_$2|) (or (= |f_$11_$2| Npr) false))) (and (= |o_$125_$2| p2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) p2) |o_$125_$2|) false)) (and (= |o_$125_$2| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$125_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) p2) |o_$125_$2|) false)) (and (= |o_$125_$2| p2) false)) (and (= |o_$125_$2| p2) false)))) (forall( (|o_$125_$3| ref) (|f_$11_$3| field$Int$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@4 |o_$125_$3| |f_$11_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@3 |o_$125_$3| |f_$11_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@3 r2) |o_$125_$3|) (or false (= |f_$11_$3| Ncpr)))) (and (= |o_$125_$3| p2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) p2) |o_$125_$3|) false)) (and (= |o_$125_$3| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$125_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) p2) |o_$125_$3|) false)) (and (= |o_$125_$3| p2) false)) (and (= |o_$125_$3| p2) false)))) (forall( (|o_$125_$4| ref) (|f_$11_$4| field$TNodeState$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 |o_$125_$4| |f_$11_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 |o_$125_$4| |f_$11_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@3 r2) |o_$125_$4|) (or false false))) (and (= |o_$125_$4| p2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) p2) |o_$125_$4|) false)) (and (= |o_$125_$4| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 r2 NA) r2) |o_$125_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) p2) |o_$125_$4|) false)) (and (= |o_$125_$4| p2) false)) (and (= |o_$125_$4| p2) (= |f_$11_$4| NSt))))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@3 r2 NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@3 p2 ND) r2))) (forall( (|o_$126| ref))(=> (not (= |o_$126| r2)) (Equal (BBSet $Heap@4 |o_$126|) (BBSet $Heap@3 |o_$126|)))))
      (forall( (|o_$118| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@3 r2) |o_$118|) (InvPr $Heap@3 |o_$118|)))
      (forall( (|o_$119| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@4 r2) |o_$119|) (InvPr $Heap@4 |o_$119|)))
      (InvPr $Heap@4 p2)
      (InvStruct $Heap@4)
   )
(or anon0@61_assertion anon0@62)
)) :named ax_anon0@61))
(assert (! (=> anon0@61_assertion (not (and true
   (and true
      (InvStruct $Heap@4)
   )
))) :named ax_anon0@61_assertion))
(assert (! (=> anon0@62 (and true 
   (and true
      (InvStruct $Heap@4)
   )
(or anon0@62_assertion anon0@63)
)) :named ax_anon0@62))
(assert (! (=> anon0@62_assertion (not (and true
   (and true
      (InvPr $Heap@4 r1)
   )
))) :named ax_anon0@62_assertion))
(assert (! (=> anon0@63 (and true 
   (and true
      (InvPr $Heap@4 r1)
   )
(or anon0@63_assertion anon0@64)
)) :named ax_anon0@63))
(assert (! (=> anon0@63_assertion (not (and true
   (and true
      (InvPr $Heap@4 r2)
   )
))) :named ax_anon0@63_assertion))
(assert (! (=> anon0@64 (and true 
   (and true
      (InvPr $Heap@4 r2)
   )
(or anon0@64_assertion anon0@65)
)) :named ax_anon0@64))
(assert (! (=> anon0@64_assertion (not (and true
   (and true
      (InvPr $Heap@4 p1)
   )
))) :named ax_anon0@64_assertion))
(assert (! (=> anon0@65 (and true 
   (and true
      (InvPr $Heap@4 p1)
   )
(or anon0@65_assertion anon0@66)
)) :named ax_anon0@65))
(assert (! (=> anon0@65_assertion (not (and true
   (and true
      (InvPr $Heap@4 p2)
   )
))) :named ax_anon0@65_assertion))
(assert (! (=> anon0@66 (and true 
   (and true
      (InvPr $Heap@4 p2)
   )
(or anon0@66_assertion anon0@67)
)) :named ax_anon0@66))
(assert (! (=> anon0@66_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r1 NSt) StL)
   )
))) :named ax_anon0@66_assertion))
(assert (! (=> anon0@67 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r1 NSt) StL)
   )
(or anon0@67_assertion anon0@68)
)) :named ax_anon0@67))
(assert (! (=> anon0@67_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StL)
   )
))) :named ax_anon0@67_assertion))
(assert (! (=> anon0@68 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StL)
   )
(or anon0@68_assertion anon0@69)
)) :named ax_anon0@68))
(assert (! (=> anon0@68_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 p1 NSt) StF)
   )
))) :named ax_anon0@68_assertion))
(assert (! (=> anon0@69 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 p1 NSt) StF)
   )
(or anon0@69_assertion anon0@70)
)) :named ax_anon0@69))
(assert (! (=> anon0@69_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 p2 NSt) StF)
   )
))) :named ax_anon0@69_assertion))
(assert (! (=> anon0@70 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 p2 NSt) StF)
   )
(or anon0@70_assertion anon0@71)
)) :named ax_anon0@70))
(assert (! (=> anon0@70_assertion (not (and true
   (and true
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 NC) r1)
   )
))) :named ax_anon0@70_assertion))
(assert (! (=> anon0@71 (and true 
   (and true
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 NC) r1)
   )
(or anon0@71_assertion anon0@72)
)) :named ax_anon0@71))
(assert (! (=> anon0@71_assertion (not (and true
   (and true
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p2 NC) r2)
   )
))) :named ax_anon0@71_assertion))
(assert (! (=> anon0@72 (and true 
   (and true
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p2 NC) r2)
   )
(or anon0@72_assertion anon0@73)
)) :named ax_anon0@72))
(assert (! (=> anon0@72_assertion (not (and true
   (and true
      (not (= p1 r2))
   )
))) :named ax_anon0@72_assertion))
(assert (! (=> anon0@73 (and true 
   (and true
      (not (= p1 r2))
   )
(or anon0@73_assertion anon0@74)
)) :named ax_anon0@73))
(assert (! (=> anon0@73_assertion (not (and true
   (and true
      (not (= p1 null))
   )
))) :named ax_anon0@73_assertion))
(assert (! (=> anon0@74 (and true 
   (and true
      (not (= p1 null))
   )
(or anon0@74_assertion anon0@75)
)) :named ax_anon0@74))
(assert (! (=> anon0@74_assertion (not (and true
   (and true
      (not (= r2 null))
   )
))) :named ax_anon0@74_assertion))
(assert (! (=> anon0@75 (and true 
   (and true
      (not (= r2 null))
   )
(or anon0@75_assertion anon0@76)
)) :named ax_anon0@75))
(assert (! (=> anon0@75_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 p1 NSt) StF)
   )
))) :named ax_anon0@75_assertion))
(assert (! (=> anon0@76 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 p1 NSt) StF)
   )
(or anon0@76_assertion anon0@77)
)) :named ax_anon0@76))
(assert (! (=> anon0@76_assertion (not (and true
   (and true
      (InvStruct $Heap@4)
   )
))) :named ax_anon0@76_assertion))
(assert (! (=> anon0@77 (and true 
   (and true
      (InvStruct $Heap@4)
   )
(or anon0@77_assertion anon0@78)
)) :named ax_anon0@77))
(assert (! (=> anon0@77_assertion (not (and true
   (and true
      (InvPr $Heap@4 p1)
   )
))) :named ax_anon0@77_assertion))
(assert (! (=> anon0@78 (and true 
   (and true
      (InvPr $Heap@4 p1)
   )
(or anon0@78_assertion anon0@79)
)) :named ax_anon0@78))
(assert (! (=> anon0@78_assertion (not (and true
   (and true
      (forall( (|o_$138| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@4 r2) |o_$138|) (InvPr $Heap@4 |o_$138|)))
   )
))) :named ax_anon0@78_assertion))
(assert (! (=> anon0@79 (and true 
   (and true
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p1 NC) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 NC) r2)))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 r2 Np) p1))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 p1 NSt) StF))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r2 NSt) StL))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF) (and (and (and (and (forall( (|o_$140_$0| ref) (|f_$13_$0| field$ref$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 |o_$140_$0| |f_$13_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 |o_$140_$0| |f_$13_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@4 p1) |o_$140_$0|) (or false false))) (and (= |o_$140_$0| r2) (= |f_$13_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 ND) r2) |o_$140_$0|) (= |f_$13_$0| Nt))) (and (= |o_$140_$0| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 NA) p1) |o_$140_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 ND) r2) |o_$140_$0|) false)) (and (= |o_$140_$0| r2) (= |f_$13_$0| Nbb))) (and (= |o_$140_$0| r2) false))) (forall( (|o_$140_$1| ref) (|f_$13_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 |o_$140_$1| |f_$13_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 |o_$140_$1| |f_$13_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@4 p1) |o_$140_$1|) (or false false))) (and (= |o_$140_$1| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 ND) r2) |o_$140_$1|) false)) (and (= |o_$140_$1| p1) (= |f_$13_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 NA) p1) |o_$140_$1|) (= |f_$13_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 ND) r2) |o_$140_$1|) (= |f_$13_$1| NA))) (and (= |o_$140_$1| r2) false)) (and (= |o_$140_$1| r2) false)))) (forall( (|o_$140_$2| ref) (|f_$13_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@5 |o_$140_$2| |f_$13_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@4 |o_$140_$2| |f_$13_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@4 p1) |o_$140_$2|) (or (= |f_$13_$2| Npr) false))) (and (= |o_$140_$2| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 ND) r2) |o_$140_$2|) false)) (and (= |o_$140_$2| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 NA) p1) |o_$140_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 ND) r2) |o_$140_$2|) false)) (and (= |o_$140_$2| r2) false)) (and (= |o_$140_$2| r2) false)))) (forall( (|o_$140_$3| ref) (|f_$13_$3| field$Int$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@5 |o_$140_$3| |f_$13_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@4 |o_$140_$3| |f_$13_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@4 p1) |o_$140_$3|) (or false (= |f_$13_$3| Ncpr)))) (and (= |o_$140_$3| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 ND) r2) |o_$140_$3|) false)) (and (= |o_$140_$3| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 NA) p1) |o_$140_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 ND) r2) |o_$140_$3|) false)) (and (= |o_$140_$3| r2) false)) (and (= |o_$140_$3| r2) false)))) (forall( (|o_$140_$4| ref) (|f_$13_$4| field$TNodeState$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 |o_$140_$4| |f_$13_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 |o_$140_$4| |f_$13_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@4 p1) |o_$140_$4|) (or false false))) (and (= |o_$140_$4| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 ND) r2) |o_$140_$4|) false)) (and (= |o_$140_$4| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 NA) p1) |o_$140_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 ND) r2) |o_$140_$4|) false)) (and (= |o_$140_$4| r2) false)) (and (= |o_$140_$4| r2) (= |f_$13_$4| NSt))))))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF) (forall( (|o_$141| ref))(=> (not (= |o_$141| p1)) (Equal (BBSet $Heap@5 |o_$141|) (BBSet $Heap@4 |o_$141|)))))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF) (forall( (|o_$142| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r2 ND) r2) |o_$142|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 |o_$142| Nt) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 p1 Nt)))))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF) (forall( (|o_$143| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p1 NA) p1) |o_$143|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 |o_$143| ND) (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 |o_$143| ND) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r2 ND) r2))))))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF) (forall( (|o_$144| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 ND) r2) |o_$144|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 |o_$144| NA) (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 |o_$144| NA) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p1 NA) p1))))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) r2)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 p1 Ln) null))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) r2)) (and (and (and (and (forall( (|o_$148_$0| ref) (|f_$15_$0| field$ref$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 |o_$148_$0| |f_$15_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 |o_$148_$0| |f_$15_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@4 r2) |o_$148_$0|) (or false false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$0|) (= |f_$15_$0| Lb))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$0|) (= |f_$15_$0| Le))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$0|) (= |f_$15_$0| Lp))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$0|) (= |f_$15_$0| Ln))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) p1) |o_$148_$0|) (= |f_$15_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 p1 Lp)) |o_$148_$0|) (= |f_$15_$0| Nt))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) p1) r2) |o_$148_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 p1 Lp)) |o_$148_$0|) false)) (and (= |o_$148_$0| p1) (= |f_$15_$0| Nbb))) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p1 LL) |o_$148_$0|) false))) (forall( (|o_$148_$1| ref) (|f_$15_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 |o_$148_$1| |f_$15_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 |o_$148_$1| |f_$15_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@4 r2) |o_$148_$1|) (or false false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$1|) (= |f_$15_$1| LL))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) p1) |o_$148_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 p1 Lp)) |o_$148_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) p1) r2) |o_$148_$1|) (= |f_$15_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$1|) (= |f_$15_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 p1 Lp)) |o_$148_$1|) (= |f_$15_$1| NA))) (and (= |o_$148_$1| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p1 LL) |o_$148_$1|) false)))) (forall( (|o_$148_$2| ref) (|f_$15_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@5 |o_$148_$2| |f_$15_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@4 |o_$148_$2| |f_$15_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@4 r2) |o_$148_$2|) (or (= |f_$15_$2| Npr) false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) p1) |o_$148_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 p1 Lp)) |o_$148_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) p1) r2) |o_$148_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 p1 Lp)) |o_$148_$2|) false)) (and (= |o_$148_$2| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p1 LL) |o_$148_$2|) false)))) (forall( (|o_$148_$3| ref) (|f_$15_$3| field$Int$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@5 |o_$148_$3| |f_$15_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@4 |o_$148_$3| |f_$15_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@4 r2) |o_$148_$3|) (or false (= |f_$15_$3| Ncpr)))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) p1) |o_$148_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 p1 Lp)) |o_$148_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) p1) r2) |o_$148_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 p1 Lp)) |o_$148_$3|) false)) (and (= |o_$148_$3| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p1 LL) |o_$148_$3|) false)))) (forall( (|o_$148_$4| ref) (|f_$15_$4| field$TNodeState$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 |o_$148_$4| |f_$15_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 |o_$148_$4| |f_$15_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@4 r2) |o_$148_$4|) (or false false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) p1) |o_$148_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 p1 Lp)) |o_$148_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) p1) r2) |o_$148_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$148_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 p1 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 p1 Lp)) |o_$148_$4|) false)) (and (= |o_$148_$4| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p1 LL) |o_$148_$4|) (= |f_$15_$4| NSt))))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) r2)) (forall( (|o_$147| ref))(!(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r2 NA) r2) |o_$147|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 |o_$147| NSt) StD))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r2 NA) r2) |o_$147|)))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) r2)) (forall( (|o_$149| ref))(=> (not (= |o_$149| r2)) (Equal (BBSet $Heap@5 |o_$149|) (BBSet $Heap@4 |o_$149|)))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) r2)) (forall( (|o_$150| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$150|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 |o_$150| LL) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2)))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) r2)) (forall( (|o_$151| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$151|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 |o_$151| Lb) r2))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) r2)) (forall( (|o_$152| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$152|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 |o_$152| Le) p1))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) r2)) (forall( (|o_$153| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) p1) |o_$153|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 |o_$153| Np) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 |o_$153| Ln)))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) r2)) (forall( (|o_$154| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$154|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 |o_$154| Np) null))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) r2)) (forall( (|o_$155| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) p1) r2) |o_$155|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 |o_$155| NC) (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 |o_$155| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 |o_$155| Lp))))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) r2)) (forall( (|o_$156| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) p1) r2) |o_$156|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 |o_$156| ND) (Minus (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 |o_$156| ND) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 |o_$156| Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 |o_$156| Lp)))))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) r2)) (forall( (|o_$157| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$157|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 |o_$157| NA) Empty))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) r2)) (InvStruct $Heap@5))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) r2))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 p1 NSt) StL))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) r2))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r2 NSt) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt)))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) r2))) (and (and (and (and (forall( (|o_$145_$0| ref) (|f_$14_$0| field$ref$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 |o_$145_$0| |f_$14_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@4 |o_$145_$0| |f_$14_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@4 r2) |o_$145_$0|) (or false false))) (and (= |o_$145_$0| p1) (= |f_$14_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) p1) |o_$145_$0|) (= |f_$14_$0| Nt))) (and (= |o_$145_$0| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$145_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) p1) |o_$145_$0|) false)) (and (= |o_$145_$0| p1) (= |f_$14_$0| Nbb))) (and (= |o_$145_$0| p1) false))) (forall( (|o_$145_$1| ref) (|f_$14_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 |o_$145_$1| |f_$14_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 |o_$145_$1| |f_$14_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@4 r2) |o_$145_$1|) (or false false))) (and (= |o_$145_$1| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) p1) |o_$145_$1|) false)) (and (= |o_$145_$1| r2) (= |f_$14_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$145_$1|) (= |f_$14_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) p1) |o_$145_$1|) (= |f_$14_$1| NA))) (and (= |o_$145_$1| p1) false)) (and (= |o_$145_$1| p1) false)))) (forall( (|o_$145_$2| ref) (|f_$14_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@5 |o_$145_$2| |f_$14_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@4 |o_$145_$2| |f_$14_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@4 r2) |o_$145_$2|) (or (= |f_$14_$2| Npr) false))) (and (= |o_$145_$2| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) p1) |o_$145_$2|) false)) (and (= |o_$145_$2| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$145_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) p1) |o_$145_$2|) false)) (and (= |o_$145_$2| p1) false)) (and (= |o_$145_$2| p1) false)))) (forall( (|o_$145_$3| ref) (|f_$14_$3| field$Int$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@5 |o_$145_$3| |f_$14_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@4 |o_$145_$3| |f_$14_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@4 r2) |o_$145_$3|) (or false (= |f_$14_$3| Ncpr)))) (and (= |o_$145_$3| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) p1) |o_$145_$3|) false)) (and (= |o_$145_$3| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$145_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) p1) |o_$145_$3|) false)) (and (= |o_$145_$3| p1) false)) (and (= |o_$145_$3| p1) false)))) (forall( (|o_$145_$4| ref) (|f_$14_$4| field$TNodeState$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 |o_$145_$4| |f_$14_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 |o_$145_$4| |f_$14_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@4 r2) |o_$145_$4|) (or false false))) (and (= |o_$145_$4| p1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) p1) |o_$145_$4|) false)) (and (= |o_$145_$4| r2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 r2 NA) r2) |o_$145_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) p1) |o_$145_$4|) false)) (and (= |o_$145_$4| p1) false)) (and (= |o_$145_$4| p1) (= |f_$14_$4| NSt))))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@4 r2 NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@4 p1 ND) r2))) (forall( (|o_$146| ref))(=> (not (= |o_$146| r2)) (Equal (BBSet $Heap@5 |o_$146|) (BBSet $Heap@4 |o_$146|)))))
      (forall( (|o_$138| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@4 r2) |o_$138|) (InvPr $Heap@4 |o_$138|)))
      (forall( (|o_$139| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@5 r2) |o_$139|) (InvPr $Heap@5 |o_$139|)))
      (InvPr $Heap@5 p1)
      (InvStruct $Heap@5)
   )
(or anon0@79_assertion anon0@80)
)) :named ax_anon0@79))
(assert (! (=> anon0@79_assertion (not (and true
   (and true
      (InvStruct $Heap@5)
   )
))) :named ax_anon0@79_assertion))
(assert (! (=> anon0@80 (and true 
   (and true
      (InvStruct $Heap@5)
   )
(or anon0@80_assertion anon0@81)
)) :named ax_anon0@80))
(assert (! (=> anon0@80_assertion (not (and true
   (and true
      (InvPr $Heap@5 r1)
   )
))) :named ax_anon0@80_assertion))
(assert (! (=> anon0@81 (and true 
   (and true
      (InvPr $Heap@5 r1)
   )
(or anon0@81_assertion anon0@82)
)) :named ax_anon0@81))
(assert (! (=> anon0@81_assertion (not (and true
   (and true
      (InvPr $Heap@5 r2)
   )
))) :named ax_anon0@81_assertion))
(assert (! (=> anon0@82 (and true 
   (and true
      (InvPr $Heap@5 r2)
   )
(or anon0@82_assertion anon0@83)
)) :named ax_anon0@82))
(assert (! (=> anon0@82_assertion (not (and true
   (and true
      (InvPr $Heap@5 p1)
   )
))) :named ax_anon0@82_assertion))
(assert (! (=> anon0@83 (and true 
   (and true
      (InvPr $Heap@5 p1)
   )
(or anon0@83_assertion anon0@84)
)) :named ax_anon0@83))
(assert (! (=> anon0@83_assertion (not (and true
   (and true
      (InvPr $Heap@5 p2)
   )
))) :named ax_anon0@83_assertion))
(assert (! (=> anon0@84 (and true 
   (and true
      (InvPr $Heap@5 p2)
   )
(or anon0@84_assertion anon0@85)
)) :named ax_anon0@84))
(assert (! (=> anon0@84_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StL)
   )
))) :named ax_anon0@84_assertion))
(assert (! (=> anon0@85 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StL)
   )
(or anon0@85_assertion anon0@86)
)) :named ax_anon0@85))
(assert (! (=> anon0@85_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r2 NSt) StL)
   )
))) :named ax_anon0@85_assertion))
(assert (! (=> anon0@86 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r2 NSt) StL)
   )
(or anon0@86_assertion anon0@87)
)) :named ax_anon0@86))
(assert (! (=> anon0@86_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 p1 NSt) StL)
   )
))) :named ax_anon0@86_assertion))
(assert (! (=> anon0@87 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 p1 NSt) StL)
   )
(or anon0@87_assertion anon0@88)
)) :named ax_anon0@87))
(assert (! (=> anon0@87_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 p2 NSt) StF)
   )
))) :named ax_anon0@87_assertion))
(assert (! (=> anon0@88 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 p2 NSt) StF)
   )
(or anon0@88_assertion anon0@89)
)) :named ax_anon0@88))
(assert (! (=> anon0@88_assertion (not (and true
   (and true
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r2 NC) p1)
   )
))) :named ax_anon0@88_assertion))
(assert (! (=> anon0@89 (and true 
   (and true
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r2 NC) p1)
   )
(or anon0@89_assertion anon0@90)
)) :named ax_anon0@89))
(assert (! (=> anon0@89_assertion (not (and true
   (and true
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p1 NC) r1)
   )
))) :named ax_anon0@89_assertion))
(assert (! (=> anon0@90 (and true 
   (and true
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p1 NC) r1)
   )
(or anon0@90_assertion anon0@91)
)) :named ax_anon0@90))
(assert (! (=> anon0@90_assertion (not (and true
   (and true
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 NC) r2)
   )
))) :named ax_anon0@90_assertion))
(assert (! (=> anon0@91 (and true 
   (and true
      (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 NC) r2)
   )
(or anon0@91_assertion anon0@92)
)) :named ax_anon0@91))
(assert (! (=> anon0@91_assertion (not (and true
   (and true
      (not (= p2 r1))
   )
))) :named ax_anon0@91_assertion))
(assert (! (=> anon0@92 (and true 
   (and true
      (not (= p2 r1))
   )
(or anon0@92_assertion anon0@93)
)) :named ax_anon0@92))
(assert (! (=> anon0@92_assertion (not (and true
   (and true
      (not (= p2 null))
   )
))) :named ax_anon0@92_assertion))
(assert (! (=> anon0@93 (and true 
   (and true
      (not (= p2 null))
   )
(or anon0@93_assertion anon0@94)
)) :named ax_anon0@93))
(assert (! (=> anon0@93_assertion (not (and true
   (and true
      (not (= r1 null))
   )
))) :named ax_anon0@93_assertion))
(assert (! (=> anon0@94 (and true 
   (and true
      (not (= r1 null))
   )
(or anon0@94_assertion anon0@95)
)) :named ax_anon0@94))
(assert (! (=> anon0@94_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 p2 NSt) StF)
   )
))) :named ax_anon0@94_assertion))
(assert (! (=> anon0@95 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 p2 NSt) StF)
   )
(or anon0@95_assertion anon0@96)
)) :named ax_anon0@95))
(assert (! (=> anon0@95_assertion (not (and true
   (and true
      (InvStruct $Heap@5)
   )
))) :named ax_anon0@95_assertion))
(assert (! (=> anon0@96 (and true 
   (and true
      (InvStruct $Heap@5)
   )
(or anon0@96_assertion anon0@97)
)) :named ax_anon0@96))
(assert (! (=> anon0@96_assertion (not (and true
   (and true
      (InvPr $Heap@5 p2)
   )
))) :named ax_anon0@96_assertion))
(assert (! (=> anon0@97 (and true 
   (and true
      (InvPr $Heap@5 p2)
   )
(or anon0@97_assertion anon0@98)
)) :named ax_anon0@97))
(assert (! (=> anon0@97_assertion (not (and true
   (and true
      (forall( (|o_$158| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@5 r1) |o_$158|) (InvPr $Heap@5 |o_$158|)))
   )
))) :named ax_anon0@97_assertion))
(assert (! (=> anon0@98 (and true 
   (and true
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 p2 NC) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 NC) r1)))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 r1 Np) p2))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@6 p2 NSt) StF))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@6 r1 NSt) StL))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF) (and (and (and (and (forall( (|o_$160_$0| ref) (|f_$16_$0| field$ref$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 |o_$160_$0| |f_$16_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 |o_$160_$0| |f_$16_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@5 p2) |o_$160_$0|) (or false false))) (and (= |o_$160_$0| r1) (= |f_$16_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 ND) r1) |o_$160_$0|) (= |f_$16_$0| Nt))) (and (= |o_$160_$0| p2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 NA) p2) |o_$160_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 ND) r1) |o_$160_$0|) false)) (and (= |o_$160_$0| r1) (= |f_$16_$0| Nbb))) (and (= |o_$160_$0| r1) false))) (forall( (|o_$160_$1| ref) (|f_$16_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 |o_$160_$1| |f_$16_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 |o_$160_$1| |f_$16_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@5 p2) |o_$160_$1|) (or false false))) (and (= |o_$160_$1| r1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 ND) r1) |o_$160_$1|) false)) (and (= |o_$160_$1| p2) (= |f_$16_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 NA) p2) |o_$160_$1|) (= |f_$16_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 ND) r1) |o_$160_$1|) (= |f_$16_$1| NA))) (and (= |o_$160_$1| r1) false)) (and (= |o_$160_$1| r1) false)))) (forall( (|o_$160_$2| ref) (|f_$16_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@6 |o_$160_$2| |f_$16_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@5 |o_$160_$2| |f_$16_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@5 p2) |o_$160_$2|) (or (= |f_$16_$2| Npr) false))) (and (= |o_$160_$2| r1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 ND) r1) |o_$160_$2|) false)) (and (= |o_$160_$2| p2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 NA) p2) |o_$160_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 ND) r1) |o_$160_$2|) false)) (and (= |o_$160_$2| r1) false)) (and (= |o_$160_$2| r1) false)))) (forall( (|o_$160_$3| ref) (|f_$16_$3| field$Int$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@6 |o_$160_$3| |f_$16_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@5 |o_$160_$3| |f_$16_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@5 p2) |o_$160_$3|) (or false (= |f_$16_$3| Ncpr)))) (and (= |o_$160_$3| r1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 ND) r1) |o_$160_$3|) false)) (and (= |o_$160_$3| p2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 NA) p2) |o_$160_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 ND) r1) |o_$160_$3|) false)) (and (= |o_$160_$3| r1) false)) (and (= |o_$160_$3| r1) false)))) (forall( (|o_$160_$4| ref) (|f_$16_$4| field$TNodeState$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@6 |o_$160_$4| |f_$16_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 |o_$160_$4| |f_$16_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@5 p2) |o_$160_$4|) (or false false))) (and (= |o_$160_$4| r1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 ND) r1) |o_$160_$4|) false)) (and (= |o_$160_$4| p2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 NA) p2) |o_$160_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 ND) r1) |o_$160_$4|) false)) (and (= |o_$160_$4| r1) false)) (and (= |o_$160_$4| r1) (= |f_$16_$4| NSt))))))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF) (forall( (|o_$161| ref))(=> (not (= |o_$161| p2)) (Equal (BBSet $Heap@6 |o_$161|) (BBSet $Heap@5 |o_$161|)))))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF) (forall( (|o_$162| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 r1 ND) r1) |o_$162|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 |o_$162| Nt) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 p2 Nt)))))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF) (forall( (|o_$163| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 p2 NA) p2) |o_$163|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 |o_$163| ND) (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 |o_$163| ND) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 r1 ND) r1))))))
      (=> (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF) (forall( (|o_$164| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 ND) r1) |o_$164|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 |o_$164| NA) (Union (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 |o_$164| NA) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 p2 NA) p2))))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) r1)) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 p2 Ln) null))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) r1)) (and (and (and (and (forall( (|o_$168_$0| ref) (|f_$18_$0| field$ref$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 |o_$168_$0| |f_$18_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 |o_$168_$0| |f_$18_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@5 r1) |o_$168_$0|) (or false false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$0|) (= |f_$18_$0| Lb))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$0|) (= |f_$18_$0| Le))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$0|) (= |f_$18_$0| Lp))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$0|) (= |f_$18_$0| Ln))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) p2) |o_$168_$0|) (= |f_$18_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 p2 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 p2 Lp)) |o_$168_$0|) (= |f_$18_$0| Nt))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) p2) r1) |o_$168_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 p2 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 p2 Lp)) |o_$168_$0|) false)) (and (= |o_$168_$0| p2) (= |f_$18_$0| Nbb))) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 p2 LL) |o_$168_$0|) false))) (forall( (|o_$168_$1| ref) (|f_$18_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 |o_$168_$1| |f_$18_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 |o_$168_$1| |f_$18_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@5 r1) |o_$168_$1|) (or false false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$1|) (= |f_$18_$1| LL))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) p2) |o_$168_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 p2 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 p2 Lp)) |o_$168_$1|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) p2) r1) |o_$168_$1|) (= |f_$18_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$1|) (= |f_$18_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 p2 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 p2 Lp)) |o_$168_$1|) (= |f_$18_$1| NA))) (and (= |o_$168_$1| p2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 p2 LL) |o_$168_$1|) false)))) (forall( (|o_$168_$2| ref) (|f_$18_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@6 |o_$168_$2| |f_$18_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@5 |o_$168_$2| |f_$18_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@5 r1) |o_$168_$2|) (or (= |f_$18_$2| Npr) false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) p2) |o_$168_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 p2 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 p2 Lp)) |o_$168_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) p2) r1) |o_$168_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 p2 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 p2 Lp)) |o_$168_$2|) false)) (and (= |o_$168_$2| p2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 p2 LL) |o_$168_$2|) false)))) (forall( (|o_$168_$3| ref) (|f_$18_$3| field$Int$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@6 |o_$168_$3| |f_$18_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@5 |o_$168_$3| |f_$18_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@5 r1) |o_$168_$3|) (or false (= |f_$18_$3| Ncpr)))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) p2) |o_$168_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 p2 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 p2 Lp)) |o_$168_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) p2) r1) |o_$168_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 p2 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 p2 Lp)) |o_$168_$3|) false)) (and (= |o_$168_$3| p2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 p2 LL) |o_$168_$3|) false)))) (forall( (|o_$168_$4| ref) (|f_$18_$4| field$TNodeState$))(or (or (or (or (or (or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@6 |o_$168_$4| |f_$18_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 |o_$168_$4| |f_$18_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@5 r1) |o_$168_$4|) (or false false))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) p2) |o_$168_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 p2 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 p2 Lp)) |o_$168_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) p2) r1) |o_$168_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$168_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 p2 Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 p2 Lp)) |o_$168_$4|) false)) (and (= |o_$168_$4| p2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 p2 LL) |o_$168_$4|) (= |f_$18_$4| NSt))))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) r1)) (forall( (|o_$167| ref))(!(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 r1 NA) r1) |o_$167|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@6 |o_$167| NSt) StD))  :pattern ( (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 r1 NA) r1) |o_$167|)))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) r1)) (forall( (|o_$169| ref))(=> (not (= |o_$169| r1)) (Equal (BBSet $Heap@6 |o_$169|) (BBSet $Heap@5 |o_$169|)))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) r1)) (forall( (|o_$170| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$170|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 |o_$170| LL) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1)))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) r1)) (forall( (|o_$171| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$171|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 |o_$171| Lb) r1))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) r1)) (forall( (|o_$172| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$172|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 |o_$172| Le) p2))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) r1)) (forall( (|o_$173| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) p2) |o_$173|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 |o_$173| Np) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 |o_$173| Ln)))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) r1)) (forall( (|o_$174| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$174|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 |o_$174| Np) null))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) r1)) (forall( (|o_$175| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) p2) r1) |o_$175|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 |o_$175| NC) (RemEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 |o_$175| NC) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 |o_$175| Lp))))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) r1)) (forall( (|o_$176| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (RemEl (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) p2) r1) |o_$176|) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 |o_$176| ND) (Minus (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 |o_$176| ND) (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 |o_$176| Lp) ND) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 |o_$176| Lp)))))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) r1)) (forall( (|o_$177| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$177|) (Equal (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 |o_$177| NA) Empty))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF)) (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) r1)) (InvStruct $Heap@6))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) r1))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@6 p2 NSt) StL))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) r1))) (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@6 r1 NSt) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt)))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) r1))) (and (and (and (and (forall( (|o_$165_$0| ref) (|f_$17_$0| field$ref$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@6 |o_$165_$0| |f_$17_$0|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$ref$ $Heap@5 |o_$165_$0| |f_$17_$0|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@5 r1) |o_$165_$0|) (or false false))) (and (= |o_$165_$0| p2) (= |f_$17_$0| Np))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) p2) |o_$165_$0|) (= |f_$17_$0| Nt))) (and (= |o_$165_$0| r1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$165_$0|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) p2) |o_$165_$0|) false)) (and (= |o_$165_$0| p2) (= |f_$17_$0| Nbb))) (and (= |o_$165_$0| p2) false))) (forall( (|o_$165_$1| ref) (|f_$17_$1| field$$@Map@@ref@To@Bool@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@6 |o_$165_$1| |f_$17_$1|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 |o_$165_$1| |f_$17_$1|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@5 r1) |o_$165_$1|) (or false false))) (and (= |o_$165_$1| p2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) p2) |o_$165_$1|) false)) (and (= |o_$165_$1| r1) (= |f_$17_$1| NC))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$165_$1|) (= |f_$17_$1| ND))) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) p2) |o_$165_$1|) (= |f_$17_$1| NA))) (and (= |o_$165_$1| p2) false)) (and (= |o_$165_$1| p2) false)))) (forall( (|o_$165_$2| ref) (|f_$17_$2| field$$@Map@@Int@To@Int@@$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@6 |o_$165_$2| |f_$17_$2|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@Int@To@Int@@$ $Heap@5 |o_$165_$2| |f_$17_$2|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@5 r1) |o_$165_$2|) (or (= |f_$17_$2| Npr) false))) (and (= |o_$165_$2| p2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) p2) |o_$165_$2|) false)) (and (= |o_$165_$2| r1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$165_$2|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) p2) |o_$165_$2|) false)) (and (= |o_$165_$2| p2) false)) (and (= |o_$165_$2| p2) false)))) (forall( (|o_$165_$3| ref) (|f_$17_$3| field$Int$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@6 |o_$165_$3| |f_$17_$3|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$Int$ $Heap@5 |o_$165_$3| |f_$17_$3|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@5 r1) |o_$165_$3|) (or false (= |f_$17_$3| Ncpr)))) (and (= |o_$165_$3| p2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) p2) |o_$165_$3|) false)) (and (= |o_$165_$3| r1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$165_$3|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) p2) |o_$165_$3|) false)) (and (= |o_$165_$3| p2) false)) (and (= |o_$165_$3| p2) false)))) (forall( (|o_$165_$4| ref) (|f_$17_$4| field$TNodeState$))(or (or (or (or (or (or (or (or (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@6 |o_$165_$4| |f_$17_$4|) (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 |o_$165_$4| |f_$17_$4|)) (and (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@5 r1) |o_$165_$4|) (or false false))) (and (= |o_$165_$4| p2) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) p2) |o_$165_$4|) false)) (and (= |o_$165_$4| r1) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 r1 NA) r1) |o_$165_$4|) false)) (and (MapRead$$@Map@@ref@To@Bool@@$ (AddEl (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) p2) |o_$165_$4|) false)) (and (= |o_$165_$4| p2) false)) (and (= |o_$165_$4| p2) (= |f_$17_$4| NSt))))))
      (=> (and (not (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@5 r1 NSt) StF)) (not (MapRead$$@Map@@ref@To@Bool@@$ (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$$@Map@@ref@To@Bool@@$ $Heap@5 p2 ND) r1))) (forall( (|o_$166| ref))(=> (not (= |o_$166| r1)) (Equal (BBSet $Heap@6 |o_$166|) (BBSet $Heap@5 |o_$166|)))))
      (forall( (|o_$158| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@5 r1) |o_$158|) (InvPr $Heap@5 |o_$158|)))
      (forall( (|o_$159| ref))(=> (MapRead$$@Map@@ref@To@Bool@@$ (NACCoSet $Heap@6 r1) |o_$159|) (InvPr $Heap@6 |o_$159|)))
      (InvPr $Heap@6 p2)
      (InvStruct $Heap@6)
   )
(or anon0@98_assertion anon0@99)
)) :named ax_anon0@98))
(assert (! (=> anon0@98_assertion (not (and true
   (and true
      (InvStruct $Heap@6)
   )
))) :named ax_anon0@98_assertion))
(assert (! (=> anon0@99 (and true 
   (and true
      (InvStruct $Heap@6)
   )
(or anon0@100 anon0@99_assertion)
)) :named ax_anon0@99))
(assert (! (=> anon0@100 (and true 
   (and true
      (InvPr $Heap@6 r1)
   )
(or anon0@100_assertion anon0@101)
)) :named ax_anon0@100))
(assert (! (=> anon0@99_assertion (not (and true
   (and true
      (InvPr $Heap@6 r1)
   )
))) :named ax_anon0@99_assertion))
(assert (! (=> anon0@100_assertion (not (and true
   (and true
      (InvPr $Heap@6 r2)
   )
))) :named ax_anon0@100_assertion))
(assert (! (=> anon0@101 (and true 
   (and true
      (InvPr $Heap@6 r2)
   )
(or anon0@101_assertion anon0@102)
)) :named ax_anon0@101))
(assert (! (=> anon0@101_assertion (not (and true
   (and true
      (InvPr $Heap@6 p1)
   )
))) :named ax_anon0@101_assertion))
(assert (! (=> anon0@102 (and true 
   (and true
      (InvPr $Heap@6 p1)
   )
(or anon0@102_assertion anon0@103)
)) :named ax_anon0@102))
(assert (! (=> anon0@102_assertion (not (and true
   (and true
      (InvPr $Heap@6 p2)
   )
))) :named ax_anon0@102_assertion))
(assert (! (=> anon0@103 (and true 
   (and true
      (InvPr $Heap@6 p2)
   )
(or anon0@103_assertion anon0@104)
)) :named ax_anon0@103))
(assert (! (=> anon0@103_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@6 r1 NSt) StD)
   )
))) :named ax_anon0@103_assertion))
(assert (! (=> anon0@104 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@6 r1 NSt) StD)
   )
(or anon0@104_assertion anon0@105)
)) :named ax_anon0@104))
(assert (! (=> anon0@104_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@6 r2 NSt) StD)
   )
))) :named ax_anon0@104_assertion))
(assert (! (=> anon0@105 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@6 r2 NSt) StD)
   )
(or anon0@105_assertion anon0@106)
)) :named ax_anon0@105))
(assert (! (=> anon0@105_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@6 p1 NSt) StD)
   )
))) :named ax_anon0@105_assertion))
(assert (! (=> anon0@106 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@6 p1 NSt) StD)
   )
(or anon0@106_assertion anon0@107)
)) :named ax_anon0@106))
(assert (! (=> anon0@106_assertion (not (and true
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@6 p2 NSt) StD)
   )
))) :named ax_anon0@106_assertion))
(assert (! (=> anon0@107 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@field$$T0$@To@$T0@@$TNodeState$ $Heap@6 p2 NSt) StD)
   )
(or anon0@107_assertion anon0@108)
)) :named ax_anon0@107))
(assert (! (=> anon0@107_assertion (not (and true
   (and true
      (= (CLp $Heap@6 r2) p1)
   )
))) :named ax_anon0@107_assertion))
(assert (! (=> anon0@108 (and true 
   (and true
      (= (CLp $Heap@6 r2) p1)
   )
(or anon0@108_assertion anon0@109)
)) :named ax_anon0@108))
(assert (! (=> anon0@108_assertion (not (and true
   (and true
      (= (CLp $Heap@6 p1) r1)
   )
))) :named ax_anon0@108_assertion))
(assert (! (=> anon0@109 (and true 
   (and true
      (= (CLp $Heap@6 p1) r1)
   )
(or anon0@109_assertion anon0@110)
)) :named ax_anon0@109))
(assert (! (=> anon0@109_assertion (not (and true
   (and true
      (= (CLp $Heap@6 r1) p2)
   )
))) :named ax_anon0@109_assertion))
(assert (! (=> anon0@110 (and true 
   (and true
      (= (CLp $Heap@6 r1) p2)
   )
anon0@110_assertion
)) :named ax_anon0@110))
(assert (! (=> anon0@110_assertion (not (and true
   (and true
      (= (CLp $Heap@6 p2) r2)
   )
))) :named ax_anon0@110_assertion))
(assert (=> false (not (and
   anon0@1_assertion
   anon0@10_assertion
   anon0@100_assertion
   anon0@101_assertion
   anon0@102_assertion
   anon0@103_assertion
   anon0@104_assertion
   anon0@105_assertion
   anon0@106_assertion
   anon0@107_assertion
   anon0@108_assertion
   anon0@109_assertion
   anon0@11_assertion
   anon0@110_assertion
   anon0@12_assertion
   anon0@13_assertion
   anon0@14_assertion
   anon0@15_assertion
   anon0@16_assertion
   anon0@17_assertion
   anon0@18_assertion
   anon0@19_assertion
   anon0@2_assertion
   anon0@20_assertion
   anon0@21_assertion
   anon0@22_assertion
   anon0@23_assertion
   anon0@24_assertion
   anon0@25_assertion
   anon0@26_assertion
   anon0@27_assertion
   anon0@28_assertion
   anon0@29_assertion
   anon0@3_assertion
   anon0@30_assertion
   anon0@31_assertion
   anon0@32_assertion
   anon0@33_assertion
   anon0@34_assertion
   anon0@35_assertion
   anon0@36_assertion
   anon0@37_assertion
   anon0@38_assertion
   anon0@39_assertion
   anon0@4_assertion
   anon0@40_assertion
   anon0@41_assertion
   anon0@42_assertion
   anon0@43_assertion
   anon0@44_assertion
   anon0@45_assertion
   anon0@46_assertion
   anon0@47_assertion
   anon0@48_assertion
   anon0@49_assertion
   anon0@5_assertion
   anon0@50_assertion
   anon0@51_assertion
   anon0@52_assertion
   anon0@53_assertion
   anon0@54_assertion
   anon0@55_assertion
   anon0@56_assertion
   anon0@57_assertion
   anon0@58_assertion
   anon0@59_assertion
   anon0@6_assertion
   anon0@60_assertion
   anon0@61_assertion
   anon0@62_assertion
   anon0@63_assertion
   anon0@64_assertion
   anon0@65_assertion
   anon0@66_assertion
   anon0@67_assertion
   anon0@68_assertion
   anon0@69_assertion
   anon0@7_assertion
   anon0@70_assertion
   anon0@71_assertion
   anon0@72_assertion
   anon0@73_assertion
   anon0@74_assertion
   anon0@75_assertion
   anon0@76_assertion
   anon0@77_assertion
   anon0@78_assertion
   anon0@79_assertion
   anon0@8_assertion
   anon0@80_assertion
   anon0@81_assertion
   anon0@82_assertion
   anon0@83_assertion
   anon0@84_assertion
   anon0@85_assertion
   anon0@86_assertion
   anon0@87_assertion
   anon0@88_assertion
   anon0@89_assertion
   anon0@9_assertion
   anon0@90_assertion
   anon0@91_assertion
   anon0@92_assertion
   anon0@93_assertion
   anon0@94_assertion
   anon0@95_assertion
   anon0@96_assertion
   anon0@97_assertion
   anon0@98_assertion
   anon0@99_assertion
   anon0_assertion
))))

;Commands
   (check-sat)
   ;(get-unsat-core)
