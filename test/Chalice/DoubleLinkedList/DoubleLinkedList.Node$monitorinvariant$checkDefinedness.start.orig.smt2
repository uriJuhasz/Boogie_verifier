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
(declare-sort $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ 0)
(declare-sort $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ 0)
(declare-sort $@Map@@PermissionComponent@To@Int@@ 0)
(declare-sort $@Map@@ref@To@Int@@ 0)
(declare-sort Field$Bool$ 0)
(declare-sort Field$Int$ 0)
(declare-sort Field$Mu$ 0)
(declare-sort Field$ref$ 0)
(declare-sort Mu 0)
(declare-sort PartialHeapType 0)
(declare-sort PermissionComponent 0)
(declare-sort ref 0)
(declare-sort TypeName 0)

;Functions
(declare-fun $@bf_16 ( ) Bool)
(declare-fun $@bf_17 ( ) Bool)
(declare-fun $@bf_18 ( ) Bool)
(declare-fun $@bf_19 ( ) Bool)
(declare-fun $@bf_20 ( ) Bool)
(declare-fun $@bf_21 ( ) Bool)
(declare-fun $@bf_22 ( ) Bool)
(declare-fun $@bf_23 ( ) Bool)
(declare-fun $LockBottom ( ) Mu)
(declare-fun channelK ( ) Int)
(declare-fun DecPerm$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Bool$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun DecPerm$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun DecPerm$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun DecPerm$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun dtype ( ref ) TypeName)
(declare-fun emptyPartialHeap ( ) PartialHeapType)
(declare-fun forkK ( ) Field$Int$)
(declare-fun Fractions ( Int ) Int)
(declare-fun h0@_0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun h1@_4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun h1@_4@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun heapFragment$Mu$ ( Mu ) PartialHeapType)
(declare-fun heapFragment$ref$ ( ref ) PartialHeapType)
(declare-fun held ( ) Field$Int$)
(declare-fun IncPerm$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Bool$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun IncPerm$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun IncPerm$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun IncPerm$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ ( Bool $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( Bool $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun ite$$@Map@@PermissionComponent@To@Int@@$ ( Bool $@Map@@PermissionComponent@To@Int@@ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun ite$$@Map@@ref@To@Int@@$ ( Bool $@Map@@ref@To@Int@@ $@Map@@ref@To@Int@@ ) $@Map@@ref@To@Int@@)
(declare-fun ite$Field$Bool$$ ( Bool Field$Bool$ Field$Bool$ ) Field$Bool$)
(declare-fun ite$Field$Int$$ ( Bool Field$Int$ Field$Int$ ) Field$Int$)
(declare-fun ite$Field$Mu$$ ( Bool Field$Mu$ Field$Mu$ ) Field$Mu$)
(declare-fun ite$Field$ref$$ ( Bool Field$ref$ Field$ref$ ) Field$ref$)
(declare-fun ite$Int$ ( Bool Int Int ) Int)
(declare-fun ite$Mu$ ( Bool Mu Mu ) Mu)
(declare-fun ite$PartialHeapType$ ( Bool PartialHeapType PartialHeapType ) PartialHeapType)
(declare-fun ite$PermissionComponent$ ( Bool PermissionComponent PermissionComponent ) PermissionComponent)
(declare-fun ite$ref$ ( Bool ref ref ) ref)
(declare-fun ite$TypeName$ ( Bool TypeName TypeName ) TypeName)
(declare-fun joinable ( ) Field$Int$)
(declare-fun m0@_1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun m1@_5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun m1@_5@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun m1@_5@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun m1@_5@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun m1@_5@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun m1@_5@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun m1@_5@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun m1@_5@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun m1@_5@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun m1@_5@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun m1@_5@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun m1@_5@18 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun m1@_5@19 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun m1@_5@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun m1@_5@20 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun m1@_5@21 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun m1@_5@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun m1@_5@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun m1@_5@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun m1@_5@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun m1@_5@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun m1@_5@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun m1@_5@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Bool$ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Int$ ) Int)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Mu$ ) Mu)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$ref$ ) ref)
(declare-fun MapRead$$@Map@@PermissionComponent@To@Int@@$ ( $@Map@@PermissionComponent@To@Int@@ PermissionComponent ) Int)
(declare-fun MapRead$$@Map@@ref@To@Int@@$ ( $@Map@@ref@To@Int@@ ref ) Int)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun MapWrite$$@Map@@PermissionComponent@To@Int@@$ ( $@Map@@PermissionComponent@To@Int@@ PermissionComponent Int ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun Mask ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@18 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@19 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@20 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@21 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun methodK@_9 ( ) Int)
(declare-fun monitorK ( ) Int)
(declare-fun mu ( ) Field$Mu$)
(declare-fun Node.inv ( ) Field$Int$)
(declare-fun Node.invLeft ( ) Field$Int$)
(declare-fun Node.invRight ( ) Field$Int$)
(declare-fun Node.next ( ) Field$ref$)
(declare-fun Node.prev ( ) Field$ref$)
(declare-fun Node@t ( ) TypeName)
(declare-fun null ( ) ref)
(declare-fun perm$N ( ) PermissionComponent)
(declare-fun perm$R ( ) PermissionComponent)
(declare-fun Permission$denominator ( ) Int)
(declare-fun Permission$Full ( ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun Permission$FullFraction ( ) Int)
(declare-fun Permission$Zero ( ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun predicateK ( ) Int)
(declare-fun rdheld ( ) Field$Bool$)
(declare-fun SecMask ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun sm0@_2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun sm1@_6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun this ( ) ref)
(declare-fun ZeroCredits ( ) $@Map@@ref@To@Int@@)
(declare-fun ZeroMask ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)

;Predicates
(declare-fun $@condition ( ) Bool)
(declare-fun $@condition_$0 ( ) Bool)
(declare-fun $@condition_$10 ( ) Bool)
(declare-fun $@condition_$12 ( ) Bool)
(declare-fun $@condition_$14 ( ) Bool)
(declare-fun $@condition_$15 ( ) Bool)
(declare-fun $@condition_$16 ( ) Bool)
(declare-fun $@condition_$17 ( ) Bool)
(declare-fun $@condition_$18 ( ) Bool)
(declare-fun $@condition_$19 ( ) Bool)
(declare-fun $@condition_$2 ( ) Bool)
(declare-fun $@condition_$20 ( ) Bool)
(declare-fun $@condition_$21 ( ) Bool)
(declare-fun $@condition_$4 ( ) Bool)
(declare-fun $@condition_$6 ( ) Bool)
(declare-fun $@condition_$8 ( ) Bool)
(declare-fun $branchMerge_0 ( ) Bool)
(declare-fun $branchMerge_1 ( ) Bool)
(declare-fun $branchMerge_2 ( ) Bool)
(declare-fun $branchMerge_3 ( ) Bool)
(declare-fun $branchMerge_4 ( ) Bool)
(declare-fun $branchMerge_5 ( ) Bool)
(declare-fun $branchMerge_6 ( ) Bool)
(declare-fun $start ( ) Bool)
(declare-fun anon0 ( ) Bool)
(declare-fun anon16 ( ) Bool)
(declare-fun anon16@1 ( ) Bool)
(declare-fun anon16@1_assertion ( ) Bool)
(declare-fun anon16@2 ( ) Bool)
(declare-fun anon16_assertion ( ) Bool)
(declare-fun anon18 ( ) Bool)
(declare-fun anon18@1 ( ) Bool)
(declare-fun anon18@1_assertion ( ) Bool)
(declare-fun anon18@2 ( ) Bool)
(declare-fun anon18_assertion ( ) Bool)
(declare-fun anon20 ( ) Bool)
(declare-fun anon20@1 ( ) Bool)
(declare-fun anon20@1_assertion ( ) Bool)
(declare-fun anon20@2 ( ) Bool)
(declare-fun anon20_assertion ( ) Bool)
(declare-fun anon22 ( ) Bool)
(declare-fun anon22@1 ( ) Bool)
(declare-fun anon22@1_assertion ( ) Bool)
(declare-fun anon22@2 ( ) Bool)
(declare-fun anon22_assertion ( ) Bool)
(declare-fun anon24 ( ) Bool)
(declare-fun anon24@1 ( ) Bool)
(declare-fun anon24@1_assertion ( ) Bool)
(declare-fun anon24@2 ( ) Bool)
(declare-fun anon24_assertion ( ) Bool)
(declare-fun anon26 ( ) Bool)
(declare-fun anon26@1 ( ) Bool)
(declare-fun anon26@1_assertion ( ) Bool)
(declare-fun anon26@2 ( ) Bool)
(declare-fun anon26_assertion ( ) Bool)
(declare-fun anon28 ( ) Bool)
(declare-fun anon28@1 ( ) Bool)
(declare-fun anon28@1_assertion ( ) Bool)
(declare-fun anon28@2 ( ) Bool)
(declare-fun anon28_assertion ( ) Bool)
(declare-fun anon30 ( ) Bool)
(declare-fun anon30@1 ( ) Bool)
(declare-fun anon30@1_assertion ( ) Bool)
(declare-fun anon30@2 ( ) Bool)
(declare-fun anon30_assertion ( ) Bool)
(declare-fun anon49_Else ( ) Bool)
(declare-fun anon49_Then ( ) Bool)
(declare-fun anon50_Else ( ) Bool)
(declare-fun anon50_Then ( ) Bool)
(declare-fun anon51_Else ( ) Bool)
(declare-fun anon51_Then ( ) Bool)
(declare-fun anon52_Else ( ) Bool)
(declare-fun anon52_Then ( ) Bool)
(declare-fun anon53_Else ( ) Bool)
(declare-fun anon53_Then ( ) Bool)
(declare-fun anon54_Else ( ) Bool)
(declare-fun anon54_Then ( ) Bool)
(declare-fun anon55_Else ( ) Bool)
(declare-fun anon55_Then ( ) Bool)
(declare-fun anon56_Else ( ) Bool)
(declare-fun anon56_Then ( ) Bool)
(declare-fun anon57_Else ( ) Bool)
(declare-fun anon57_Then ( ) Bool)
(declare-fun anon58_Else ( ) Bool)
(declare-fun anon58_Then ( ) Bool)
(declare-fun anon58_Then@1 ( ) Bool)
(declare-fun anon58_Then@1_assertion ( ) Bool)
(declare-fun anon58_Then@2 ( ) Bool)
(declare-fun anon58_Then@2_assertion ( ) Bool)
(declare-fun anon58_Then@3 ( ) Bool)
(declare-fun anon58_Then@3_assertion ( ) Bool)
(declare-fun anon58_Then@4 ( ) Bool)
(declare-fun anon58_Then@4_assertion ( ) Bool)
(declare-fun anon58_Then@5 ( ) Bool)
(declare-fun anon58_Then@5_assertion ( ) Bool)
(declare-fun anon58_Then@6 ( ) Bool)
(declare-fun anon58_Then_assertion ( ) Bool)
(declare-fun anon59_Else ( ) Bool)
(declare-fun anon59_Then ( ) Bool)
(declare-fun anon60_Else ( ) Bool)
(declare-fun anon60_Then ( ) Bool)
(declare-fun anon60_Then@1 ( ) Bool)
(declare-fun anon60_Then@1_assertion ( ) Bool)
(declare-fun anon60_Then@2 ( ) Bool)
(declare-fun anon60_Then@2_assertion ( ) Bool)
(declare-fun anon60_Then@3 ( ) Bool)
(declare-fun anon60_Then@3_assertion ( ) Bool)
(declare-fun anon60_Then@4 ( ) Bool)
(declare-fun anon60_Then@4_assertion ( ) Bool)
(declare-fun anon60_Then@5 ( ) Bool)
(declare-fun anon60_Then@5_assertion ( ) Bool)
(declare-fun anon60_Then@6 ( ) Bool)
(declare-fun anon60_Then_assertion ( ) Bool)
(declare-fun anon61_Else ( ) Bool)
(declare-fun anon61_Then ( ) Bool)
(declare-fun anon61_Then@1 ( ) Bool)
(declare-fun anon61_Then@1_assertion ( ) Bool)
(declare-fun anon61_Then@2 ( ) Bool)
(declare-fun anon61_Then@2_assertion ( ) Bool)
(declare-fun anon61_Then@3 ( ) Bool)
(declare-fun anon61_Then@3_assertion ( ) Bool)
(declare-fun anon61_Then@4 ( ) Bool)
(declare-fun anon61_Then@4_assertion ( ) Bool)
(declare-fun anon61_Then@5 ( ) Bool)
(declare-fun anon61_Then@5_assertion ( ) Bool)
(declare-fun anon61_Then@6 ( ) Bool)
(declare-fun anon61_Then@6_assertion ( ) Bool)
(declare-fun anon61_Then@7 ( ) Bool)
(declare-fun anon61_Then@7_assertion ( ) Bool)
(declare-fun anon61_Then@8 ( ) Bool)
(declare-fun anon61_Then_assertion ( ) Bool)
(declare-fun anon62_Else ( ) Bool)
(declare-fun anon62_Then ( ) Bool)
(declare-fun anon62_Then@1 ( ) Bool)
(declare-fun anon62_Then@1_assertion ( ) Bool)
(declare-fun anon62_Then@2 ( ) Bool)
(declare-fun anon62_Then@2_assertion ( ) Bool)
(declare-fun anon62_Then@3 ( ) Bool)
(declare-fun anon62_Then@3_assertion ( ) Bool)
(declare-fun anon62_Then@4 ( ) Bool)
(declare-fun anon62_Then@4_assertion ( ) Bool)
(declare-fun anon62_Then@5 ( ) Bool)
(declare-fun anon62_Then@5_assertion ( ) Bool)
(declare-fun anon62_Then@6 ( ) Bool)
(declare-fun anon62_Then@6_assertion ( ) Bool)
(declare-fun anon62_Then@7 ( ) Bool)
(declare-fun anon62_Then@7_assertion ( ) Bool)
(declare-fun anon62_Then@8 ( ) Bool)
(declare-fun anon62_Then_assertion ( ) Bool)
(declare-fun anon63_Else ( ) Bool)
(declare-fun anon63_Then ( ) Bool)
(declare-fun anon63_Then@1 ( ) Bool)
(declare-fun anon63_Then@1_assertion ( ) Bool)
(declare-fun anon63_Then@2 ( ) Bool)
(declare-fun anon63_Then@2_assertion ( ) Bool)
(declare-fun anon63_Then@3 ( ) Bool)
(declare-fun anon63_Then@3_assertion ( ) Bool)
(declare-fun anon63_Then@4 ( ) Bool)
(declare-fun anon63_Then@4_assertion ( ) Bool)
(declare-fun anon63_Then@5 ( ) Bool)
(declare-fun anon63_Then@5_assertion ( ) Bool)
(declare-fun anon63_Then@6 ( ) Bool)
(declare-fun anon63_Then_assertion ( ) Bool)
(declare-fun anon64_Then ( ) Bool)
(declare-fun anon64_Then@1 ( ) Bool)
(declare-fun anon64_Then@1_assertion ( ) Bool)
(declare-fun anon64_Then@2 ( ) Bool)
(declare-fun anon64_Then@2_assertion ( ) Bool)
(declare-fun anon64_Then@3 ( ) Bool)
(declare-fun anon64_Then@3_assertion ( ) Bool)
(declare-fun anon64_Then@4 ( ) Bool)
(declare-fun anon64_Then@4_assertion ( ) Bool)
(declare-fun anon64_Then@5 ( ) Bool)
(declare-fun anon64_Then@5_assertion ( ) Bool)
(declare-fun anon64_Then_assertion ( ) Bool)
(declare-fun CanRead$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Bool$ ) Bool)
(declare-fun CanRead$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ ) Bool)
(declare-fun CanRead$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ ) Bool)
(declare-fun CanRead$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ ) Bool)
(declare-fun IsGoodExhaleState ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ) Bool)
(declare-fun IsGoodMask ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ) Bool)
(declare-fun IsGoodState ( PartialHeapType ) Bool)
(declare-fun ite$Bool$ ( Bool Bool Bool ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Bool$ ) Bool)
(declare-fun MuBelow ( Mu Mu ) Bool)
(declare-fun NonPredicateField$Bool$ ( Field$Bool$ ) Bool)
(declare-fun NonPredicateField$Int$ ( Field$Int$ ) Bool)
(declare-fun NonPredicateField$Mu$ ( Field$Mu$ ) Bool)
(declare-fun NonPredicateField$ref$ ( Field$ref$ ) Bool)
(declare-fun PreconditionGeneratedEntry ( ) Bool)
(declare-fun PredicateField$Bool$ ( Field$Bool$ ) Bool)
(declare-fun PredicateField$Int$ ( Field$Int$ ) Bool)
(declare-fun PredicateField$Mu$ ( Field$Mu$ ) Bool)
(declare-fun PredicateField$ref$ ( Field$ref$ ) Bool)
(declare-fun wf ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ) Bool)

;Axioms
   (assert (! (forall ((|i_1| Field$ref$)(|i| ref)(|m_1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_1| $@Map@@PermissionComponent@To@Int@@))(!(= v_1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_1 i i_1 v_1) i i_1)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_1 i i_1 v_1) i i_1)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_0))
   (assert (! (forall ((|i_10| PermissionComponent)(|m_6| $@Map@@PermissionComponent@To@Int@@)(|v_6| Int))(!(= v_6 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_6 i_10 v_6) i_10)):pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_6 i_10 v_6) i_10)) :qid map_1_$@Map@@PermissionComponent@To@Int@@ :weight 0 )) :named ax_1))
   (assert (! (forall ((|i_13| Field$Mu$)(|i_12| ref)(|m_8| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_8| $@Map@@PermissionComponent@To@Int@@))(!(= v_8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_8 i_12 i_13 v_8) i_12 i_13)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_8 i_12 i_13 v_8) i_12 i_13)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_2))
   (assert (! (forall ((|v_10| $@Map@@PermissionComponent@To@Int@@)(|i_17| Field$Mu$)(|i_16| ref)(|j_12| Field$Bool$)(|j_11| ref)(|m_10| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_10 j_11 j_12) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_10 i_16 i_17 v_10) j_11 j_12)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_10 i_16 i_17 v_10) j_11 j_12)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__Mu :weight 0 )) :named ax_3))
   (assert (! (forall ((|v_11| $@Map@@PermissionComponent@To@Int@@)(|i_19| Field$Mu$)(|i_18| ref)(|j_14| Field$Int$)(|j_13| ref)(|m_11| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_11 j_13 j_14) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_11 i_18 i_19 v_11) j_13 j_14)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_11 i_18 i_19 v_11) j_13 j_14)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Int__Mu :weight 0 )) :named ax_4))
   (assert (! (forall ((|v_12| $@Map@@PermissionComponent@To@Int@@)(|i_21| Field$Mu$)(|i_20| ref)(|j_16| Field$ref$)(|j_15| ref)(|m_12| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_12 j_15 j_16) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_12 i_20 i_21 v_12) j_15 j_16)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_12 i_20 i_21 v_12) j_15 j_16)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__ref__Mu :weight 0 )) :named ax_5))
   (assert (! (forall ((|v_2| $@Map@@PermissionComponent@To@Int@@)(|m_2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_3| Field$ref$)(|j_1| Field$ref$)(|i_2| ref)(|j| ref))(!(=> (or (not (= j_1 i_3)) (not (= j i_2))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_2 j j_1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_2 i_2 i_3 v_2) j j_1))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_2 i_2 i_3 v_2) j j_1)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_6))
   (assert (! (forall ((|v_3| $@Map@@PermissionComponent@To@Int@@)(|i_5| Field$ref$)(|i_4| ref)(|j_3| Field$Bool$)(|j_2| ref)(|m_3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_3 j_2 j_3) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_3 i_4 i_5 v_3) j_2 j_3)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_3 i_4 i_5 v_3) j_2 j_3)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__ref :weight 0 )) :named ax_7))
   (assert (! (forall ((|v_4| $@Map@@PermissionComponent@To@Int@@)(|i_7| Field$ref$)(|i_6| ref)(|j_5| Field$Int$)(|j_4| ref)(|m_4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_4 j_4 j_5) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_4 i_6 i_7 v_4) j_4 j_5)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_4 i_6 i_7 v_4) j_4 j_5)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Int__ref :weight 0 )) :named ax_8))
   (assert (! (forall ((|v_5| $@Map@@PermissionComponent@To@Int@@)(|i_9| Field$ref$)(|i_8| ref)(|j_7| Field$Mu$)(|j_6| ref)(|m_5| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_5 j_6 j_7) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_5 i_8 i_9 v_5) j_6 j_7)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_5 i_8 i_9 v_5) j_6 j_7)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Mu__ref :weight 0 )) :named ax_9))
   (assert (! (forall ((|v_7| Int)(|m_7| $@Map@@PermissionComponent@To@Int@@)(|i_11| PermissionComponent)(|j_8| PermissionComponent))(!(=> (not (= j_8 i_11)) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ m_7 j_8) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_7 i_11 v_7) j_8))):pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_7 i_11 v_7) j_8)) :qid map_2_$@Map@@PermissionComponent@To@Int@@ :weight 0 )) :named ax_10))
   (assert (! (forall ((|v_9| $@Map@@PermissionComponent@To@Int@@)(|m_9| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_15| Field$Mu$)(|j_10| Field$Mu$)(|i_14| ref)(|j_9| ref))(!(=> (or (not (= j_9 i_14)) (not (= j_10 i_15))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_9 j_9 j_10) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_9 i_14 i_15 v_9) j_9 j_10))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_9 i_14 i_15 v_9) j_9 j_10)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_11))
   (assert (! (not (= forkK held)) :named ax_12))
   (assert (! (not (= forkK Node.inv)) :named ax_13))
   (assert (! (not (= forkK Node.invLeft)) :named ax_14))
   (assert (! (not (= forkK Node.invRight)) :named ax_15))
   (assert (! (not (= held forkK)) :named ax_16))
   (assert (! (not (= held Node.inv)) :named ax_17))
   (assert (! (not (= held Node.invLeft)) :named ax_18))
   (assert (! (not (= held Node.invRight)) :named ax_19))
   (assert (! (not (= joinable forkK)) :named ax_20))
   (assert (! (not (= joinable forkK)) :named ax_21))
   (assert (! (not (= joinable held)) :named ax_22))
   (assert (! (not (= joinable held)) :named ax_23))
   (assert (! (not (= joinable Node.inv)) :named ax_24))
   (assert (! (not (= joinable Node.invLeft)) :named ax_25))
   (assert (! (not (= joinable Node.invRight)) :named ax_26))
   (assert (! (not (= Node.inv forkK)) :named ax_27))
   (assert (! (not (= Node.inv held)) :named ax_28))
   (assert (! (not (= Node.inv joinable)) :named ax_29))
   (assert (! (not (= Node.inv Node.invLeft)) :named ax_30))
   (assert (! (not (= Node.inv Node.invRight)) :named ax_31))
   (assert (! (not (= Node.invLeft forkK)) :named ax_32))
   (assert (! (not (= Node.invLeft held)) :named ax_33))
   (assert (! (not (= Node.invLeft joinable)) :named ax_34))
   (assert (! (not (= Node.invLeft Node.inv)) :named ax_35))
   (assert (! (not (= Node.invLeft Node.invRight)) :named ax_36))
   (assert (! (not (= Node.invRight forkK)) :named ax_37))
   (assert (! (not (= Node.invRight held)) :named ax_38))
   (assert (! (not (= Node.invRight joinable)) :named ax_39))
   (assert (! (not (= Node.invRight Node.inv)) :named ax_40))
   (assert (! (not (= Node.invRight Node.invLeft)) :named ax_41))
   (assert (! (not (= Node.next Node.prev)) :named ax_42))
   (assert (! (not (= Node.prev Node.next)) :named ax_43))
   (assert (! (not (= perm$R perm$N)) :named ax_44))
   (assert (! (not (= perm$R perm$N)) :named ax_45))

;Program
(assert (! (and true
$start
) :named ax_true))
(assert (! (=> $start (and true 
   (and true
      (< (* 1000 channelK) (Fractions 1))
      (< (* 1000 monitorK) (Fractions 1))
      (< (* 1000 predicateK) (Fractions 1))
      (< 0 channelK)
      (< 0 monitorK)
      (< 0 predicateK)
      (= (= true $@bf_16) (ite$Bool$ true true true))
      (= (= true $@bf_17) (ite$Bool$ true true false))
      (= (= true $@bf_18) (ite$Bool$ true false true))
      (= (= true $@bf_19) (ite$Bool$ true false false))
      (= (= true $@bf_20) (ite$Bool$ false true true))
      (= (= true $@bf_21) (ite$Bool$ false true false))
      (= (= true $@bf_22) (ite$Bool$ false false true))
      (= (= true $@bf_23) (ite$Bool$ false false false))
      (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ Permission$Full perm$N) 0)
      (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ Permission$Full perm$R) Permission$FullFraction)
      (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ Permission$Zero perm$N) 0)
      (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ Permission$Zero perm$R) 0)
      (= channelK monitorK)
      (= Permission$FullFraction (Fractions 100))
      (= predicateK channelK)
      (> Permission$denominator 0)
      (forall( (|a_$2| Int) (|b_$2| Int) (|d| Int))(!(=> (and (and (<= 2 |d|) (= (mod |a_$2| |d|) (mod |b_$2| |d|))) (< |a_$2| |b_$2|)) (<= (+ |a_$2| |d|) |b_$2|))  :pattern ( (mod |a_$2| |d|) (mod |b_$2| |d|))))
      (forall( (|con_$0_$0| Bool) (|a_$1_$0| Bool) (|b_$1_$0| Bool))(!(=> (not |con_$0_$0|) (= (ite$Bool$ |con_$0_$0| |a_$1_$0| |b_$1_$0|) |b_$1_$0|))  :pattern ( (ite$Bool$ |con_$0_$0| |a_$1_$0| |b_$1_$0|))))
      (forall( (|con_$0_$1| Bool) (|a_$1_$1| Int) (|b_$1_$1| Int))(!(=> (not |con_$0_$1|) (= (ite$Int$ |con_$0_$1| |a_$1_$1| |b_$1_$1|) |b_$1_$1|))  :pattern ( (ite$Int$ |con_$0_$1| |a_$1_$1| |b_$1_$1|))))
      (forall( (|con_$0_$10| Bool) (|a_$1_$10| Field$Bool$) (|b_$1_$10| Field$Bool$))(!(=> (not |con_$0_$10|) (= (ite$Field$Bool$$ |con_$0_$10| |a_$1_$10| |b_$1_$10|) |b_$1_$10|))  :pattern ( (ite$Field$Bool$$ |con_$0_$10| |a_$1_$10| |b_$1_$10|))))
      (forall( (|con_$0_$11| Bool) (|a_$1_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|b_$1_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (not |con_$0_$11|) (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$0_$11| |a_$1_$11| |b_$1_$11|) |b_$1_$11|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$0_$11| |a_$1_$11| |b_$1_$11|))))
      (forall( (|con_$0_$12| Bool) (|a_$1_$12| $@Map@@ref@To@Int@@) (|b_$1_$12| $@Map@@ref@To@Int@@))(!(=> (not |con_$0_$12|) (= (ite$$@Map@@ref@To@Int@@$ |con_$0_$12| |a_$1_$12| |b_$1_$12|) |b_$1_$12|))  :pattern ( (ite$$@Map@@ref@To@Int@@$ |con_$0_$12| |a_$1_$12| |b_$1_$12|))))
      (forall( (|con_$0_$13| Bool) (|a_$1_$13| Field$ref$) (|b_$1_$13| Field$ref$))(!(=> (not |con_$0_$13|) (= (ite$Field$ref$$ |con_$0_$13| |a_$1_$13| |b_$1_$13|) |b_$1_$13|))  :pattern ( (ite$Field$ref$$ |con_$0_$13| |a_$1_$13| |b_$1_$13|))))
      (forall( (|con_$0_$14| Bool) (|a_$1_$14| TypeName) (|b_$1_$14| TypeName))(!(=> (not |con_$0_$14|) (= (ite$TypeName$ |con_$0_$14| |a_$1_$14| |b_$1_$14|) |b_$1_$14|))  :pattern ( (ite$TypeName$ |con_$0_$14| |a_$1_$14| |b_$1_$14|))))
      (forall( (|con_$0_$2| Bool) (|a_$1_$2| $@Map@@PermissionComponent@To@Int@@) (|b_$1_$2| $@Map@@PermissionComponent@To@Int@@))(!(=> (not |con_$0_$2|) (= (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$0_$2| |a_$1_$2| |b_$1_$2|) |b_$1_$2|))  :pattern ( (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$0_$2| |a_$1_$2| |b_$1_$2|))))
      (forall( (|con_$0_$3| Bool) (|a_$1_$3| PermissionComponent) (|b_$1_$3| PermissionComponent))(!(=> (not |con_$0_$3|) (= (ite$PermissionComponent$ |con_$0_$3| |a_$1_$3| |b_$1_$3|) |b_$1_$3|))  :pattern ( (ite$PermissionComponent$ |con_$0_$3| |a_$1_$3| |b_$1_$3|))))
      (forall( (|con_$0_$4| Bool) (|a_$1_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|b_$1_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(=> (not |con_$0_$4|) (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$0_$4| |a_$1_$4| |b_$1_$4|) |b_$1_$4|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$0_$4| |a_$1_$4| |b_$1_$4|))))
      (forall( (|con_$0_$5| Bool) (|a_$1_$5| ref) (|b_$1_$5| ref))(!(=> (not |con_$0_$5|) (= (ite$ref$ |con_$0_$5| |a_$1_$5| |b_$1_$5|) |b_$1_$5|))  :pattern ( (ite$ref$ |con_$0_$5| |a_$1_$5| |b_$1_$5|))))
      (forall( (|con_$0_$6| Bool) (|a_$1_$6| Field$Int$) (|b_$1_$6| Field$Int$))(!(=> (not |con_$0_$6|) (= (ite$Field$Int$$ |con_$0_$6| |a_$1_$6| |b_$1_$6|) |b_$1_$6|))  :pattern ( (ite$Field$Int$$ |con_$0_$6| |a_$1_$6| |b_$1_$6|))))
      (forall( (|con_$0_$7| Bool) (|a_$1_$7| PartialHeapType) (|b_$1_$7| PartialHeapType))(!(=> (not |con_$0_$7|) (= (ite$PartialHeapType$ |con_$0_$7| |a_$1_$7| |b_$1_$7|) |b_$1_$7|))  :pattern ( (ite$PartialHeapType$ |con_$0_$7| |a_$1_$7| |b_$1_$7|))))
      (forall( (|con_$0_$8| Bool) (|a_$1_$8| Field$Mu$) (|b_$1_$8| Field$Mu$))(!(=> (not |con_$0_$8|) (= (ite$Field$Mu$$ |con_$0_$8| |a_$1_$8| |b_$1_$8|) |b_$1_$8|))  :pattern ( (ite$Field$Mu$$ |con_$0_$8| |a_$1_$8| |b_$1_$8|))))
      (forall( (|con_$0_$9| Bool) (|a_$1_$9| Mu) (|b_$1_$9| Mu))(!(=> (not |con_$0_$9|) (= (ite$Mu$ |con_$0_$9| |a_$1_$9| |b_$1_$9|) |b_$1_$9|))  :pattern ( (ite$Mu$ |con_$0_$9| |a_$1_$9| |b_$1_$9|))))
      (forall( (|con_$1| Bool) (|a_$0_$0| Bool) (|b_$0_$0| Bool))(!(=> |con_$1| (= (ite$Bool$ |con_$1| |a_$0_$0| |b_$0_$0|) |a_$0_$0|))  :pattern ( (ite$Bool$ |con_$1| |a_$0_$0| |b_$0_$0|))))
      (forall( (|con_$10| Bool) (|a_$0_$9| Mu) (|b_$0_$9| Mu))(!(=> |con_$10| (= (ite$Mu$ |con_$10| |a_$0_$9| |b_$0_$9|) |a_$0_$9|))  :pattern ( (ite$Mu$ |con_$10| |a_$0_$9| |b_$0_$9|))))
      (forall( (|con_$11| Bool) (|a_$0_$10| Field$Bool$) (|b_$0_$10| Field$Bool$))(!(=> |con_$11| (= (ite$Field$Bool$$ |con_$11| |a_$0_$10| |b_$0_$10|) |a_$0_$10|))  :pattern ( (ite$Field$Bool$$ |con_$11| |a_$0_$10| |b_$0_$10|))))
      (forall( (|con_$12| Bool) (|a_$0_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|b_$0_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> |con_$12| (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$12| |a_$0_$11| |b_$0_$11|) |a_$0_$11|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$12| |a_$0_$11| |b_$0_$11|))))
      (forall( (|con_$13| Bool) (|a_$0_$12| $@Map@@ref@To@Int@@) (|b_$0_$12| $@Map@@ref@To@Int@@))(!(=> |con_$13| (= (ite$$@Map@@ref@To@Int@@$ |con_$13| |a_$0_$12| |b_$0_$12|) |a_$0_$12|))  :pattern ( (ite$$@Map@@ref@To@Int@@$ |con_$13| |a_$0_$12| |b_$0_$12|))))
      (forall( (|con_$14| Bool) (|a_$0_$13| Field$ref$) (|b_$0_$13| Field$ref$))(!(=> |con_$14| (= (ite$Field$ref$$ |con_$14| |a_$0_$13| |b_$0_$13|) |a_$0_$13|))  :pattern ( (ite$Field$ref$$ |con_$14| |a_$0_$13| |b_$0_$13|))))
      (forall( (|con_$15| Bool) (|a_$0_$14| TypeName) (|b_$0_$14| TypeName))(!(=> |con_$15| (= (ite$TypeName$ |con_$15| |a_$0_$14| |b_$0_$14|) |a_$0_$14|))  :pattern ( (ite$TypeName$ |con_$15| |a_$0_$14| |b_$0_$14|))))
      (forall( (|con_$2| Bool) (|a_$0_$1| Int) (|b_$0_$1| Int))(!(=> |con_$2| (= (ite$Int$ |con_$2| |a_$0_$1| |b_$0_$1|) |a_$0_$1|))  :pattern ( (ite$Int$ |con_$2| |a_$0_$1| |b_$0_$1|))))
      (forall( (|con_$3| Bool) (|a_$0_$2| $@Map@@PermissionComponent@To@Int@@) (|b_$0_$2| $@Map@@PermissionComponent@To@Int@@))(!(=> |con_$3| (= (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$3| |a_$0_$2| |b_$0_$2|) |a_$0_$2|))  :pattern ( (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$3| |a_$0_$2| |b_$0_$2|))))
      (forall( (|con_$4| Bool) (|a_$0_$3| PermissionComponent) (|b_$0_$3| PermissionComponent))(!(=> |con_$4| (= (ite$PermissionComponent$ |con_$4| |a_$0_$3| |b_$0_$3|) |a_$0_$3|))  :pattern ( (ite$PermissionComponent$ |con_$4| |a_$0_$3| |b_$0_$3|))))
      (forall( (|con_$5| Bool) (|a_$0_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|b_$0_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(=> |con_$5| (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$5| |a_$0_$4| |b_$0_$4|) |a_$0_$4|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$5| |a_$0_$4| |b_$0_$4|))))
      (forall( (|con_$6| Bool) (|a_$0_$5| ref) (|b_$0_$5| ref))(!(=> |con_$6| (= (ite$ref$ |con_$6| |a_$0_$5| |b_$0_$5|) |a_$0_$5|))  :pattern ( (ite$ref$ |con_$6| |a_$0_$5| |b_$0_$5|))))
      (forall( (|con_$7| Bool) (|a_$0_$6| Field$Int$) (|b_$0_$6| Field$Int$))(!(=> |con_$7| (= (ite$Field$Int$$ |con_$7| |a_$0_$6| |b_$0_$6|) |a_$0_$6|))  :pattern ( (ite$Field$Int$$ |con_$7| |a_$0_$6| |b_$0_$6|))))
      (forall( (|con_$8| Bool) (|a_$0_$7| PartialHeapType) (|b_$0_$7| PartialHeapType))(!(=> |con_$8| (= (ite$PartialHeapType$ |con_$8| |a_$0_$7| |b_$0_$7|) |a_$0_$7|))  :pattern ( (ite$PartialHeapType$ |con_$8| |a_$0_$7| |b_$0_$7|))))
      (forall( (|con_$9| Bool) (|a_$0_$8| Field$Mu$) (|b_$0_$8| Field$Mu$))(!(=> |con_$9| (= (ite$Field$Mu$$ |con_$9| |a_$0_$8| |b_$0_$8|) |a_$0_$8|))  :pattern ( (ite$Field$Mu$$ |con_$9| |a_$0_$8| |b_$0_$8|))))
      (forall( (|eh| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|h_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|m_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (IsGoodExhaleState |eh| |h_$0| |m_$3| |sm_$0|) (and (and (and (and (and (and (and (and (and (and (forall( (|o_$6_$0| ref) (|f_$1_$0| Field$Bool$))(!(=> (CanRead$Bool$ |m_$3| |sm_$0| |o_$6_$0| |f_$1_$0|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |eh| |o_$6_$0| |f_$1_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$0| |o_$6_$0| |f_$1_$0|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |eh| |o_$6_$0| |f_$1_$0|)))) (forall( (|o_$6_$1| ref) (|f_$1_$1| Field$Int$))(!(=> (CanRead$Int$ |m_$3| |sm_$0| |o_$6_$1| |f_$1_$1|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$6_$1| |f_$1_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$6_$1| |f_$1_$1|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$6_$1| |f_$1_$1|))))) (forall( (|o_$6_$2| ref) (|f_$1_$2| Field$ref$))(!(=> (CanRead$ref$ |m_$3| |sm_$0| |o_$6_$2| |f_$1_$2|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |eh| |o_$6_$2| |f_$1_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |h_$0| |o_$6_$2| |f_$1_$2|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |eh| |o_$6_$2| |f_$1_$2|))))) (forall( (|o_$6_$3| ref) (|f_$1_$3| Field$Mu$))(!(=> (CanRead$Mu$ |m_$3| |sm_$0| |o_$6_$3| |f_$1_$3|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |eh| |o_$6_$3| |f_$1_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$0| |o_$6_$3| |f_$1_$3|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |eh| |o_$6_$3| |f_$1_$3|))))) (forall( (|o_$7| ref))(!(= (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$7| held)) (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$7| held)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$7| held))))) (forall( (|o_$8| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |eh| |o_$8| rdheld) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$0| |o_$8| rdheld))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |eh| |o_$8| rdheld))))) (forall( (|o_$9| ref))(!(=> (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$9| held)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |eh| |o_$9| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$0| |o_$9| mu)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$9| held))))) (forall( (|o_$10| ref))(!(=> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$0| |o_$10| rdheld) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |eh| |o_$10| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$0| |o_$10| mu)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$0| |o_$10| rdheld))))) (forall( (|o_$11| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$11| forkK) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$11| forkK))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$11| forkK)) :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$11| forkK))))) (forall( (|o_$12| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$12| held) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$12| held))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$12| held)) :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$12| held))))) (forall( (|o_$13| ref) (|f_$2| Field$Int$))(!(=> (PredicateField$Int$ |f_$2|) (<= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$13| |f_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$13| |f_$2|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$13| |f_$2|) (PredicateField$Int$ |f_$2|))))))  :pattern ( (IsGoodExhaleState |eh| |h_$0| |m_$3| |sm_$0|))))
      (forall( (|f_$13_$0| Field$Bool$))(=> (NonPredicateField$Bool$ |f_$13_$0|) (not (PredicateField$Bool$ |f_$13_$0|))))
      (forall( (|f_$13_$1| Field$Int$))(=> (NonPredicateField$Int$ |f_$13_$1|) (not (PredicateField$Int$ |f_$13_$1|))))
      (forall( (|f_$13_$2| Field$ref$))(=> (NonPredicateField$ref$ |f_$13_$2|) (not (PredicateField$ref$ |f_$13_$2|))))
      (forall( (|f_$13_$3| Field$Mu$))(=> (NonPredicateField$Mu$ |f_$13_$3|) (not (PredicateField$Mu$ |f_$13_$3|))))
      (forall( (|f_$14_$0| Field$Bool$))(=> (PredicateField$Bool$ |f_$14_$0|) (not (NonPredicateField$Bool$ |f_$14_$0|))))
      (forall( (|f_$14_$1| Field$Int$))(=> (PredicateField$Int$ |f_$14_$1|) (not (NonPredicateField$Int$ |f_$14_$1|))))
      (forall( (|f_$14_$2| Field$ref$))(=> (PredicateField$ref$ |f_$14_$2|) (not (NonPredicateField$ref$ |f_$14_$2|))))
      (forall( (|f_$14_$3| Field$Mu$))(=> (PredicateField$Mu$ |f_$14_$3|) (not (NonPredicateField$Mu$ |f_$14_$3|))))
      (forall( (|h_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|m_$8| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$15| ref) (|q| ref))(!(=> (and (and (and (wf |h_$1| |m_$8| |sm_$2|) (not (= |o_$15| |q|))) (or (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$1| |o_$15| held)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$1| |o_$15| rdheld))) (or (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$1| |q| held)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$1| |q| rdheld))) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$1| |o_$15| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$1| |q| mu))))  :pattern ( (wf |h_$1| |m_$8| |sm_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$1| |o_$15| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$1| |q| mu))))
      (forall( (|m_$0| Mu) (|n_$1| Mu) (|o_$0| Mu))(!(=> (and (MuBelow |m_$0| |n_$1|) (MuBelow |n_$1| |o_$0|)) (MuBelow |m_$0| |o_$0|))  :pattern ( (MuBelow |m_$0| |n_$1|) (MuBelow |n_$1| |o_$0|))))
      (forall( (|m_$1| Mu) (|n_$2| Mu))(=> (MuBelow |m_$1| |n_$2|) (not (= |n_$2| $LockBottom))))
      (forall( (|m_$11_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$0| ref) (|f_$9_$0| Field$Bool$) (|howMuch_$1_$0| Int) (|q_$2_$0| ref) (|g_$1_$0| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Bool$ |m_$11_$0| |o_$18_$0| |f_$9_$0| |howMuch_$1_$0|) |q_$2_$0| |g_$1_$0|) perm$R) (ite$Int$ (and (= |o_$18_$0| |q_$2_$0|) (= |f_$9_$0| |g_$1_$0|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$0| |q_$2_$0| |g_$1_$0|) perm$R) |howMuch_$1_$0|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$0| |q_$2_$0| |g_$1_$0|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Bool$ |m_$11_$0| |o_$18_$0| |f_$9_$0| |howMuch_$1_$0|) |q_$2_$0| |g_$1_$0|) perm$R))))
      (forall( (|m_$11_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$1| ref) (|f_$9_$1| Field$Int$) (|howMuch_$1_$1| Int) (|q_$2_$1| ref) (|g_$1_$1| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Int$ |m_$11_$1| |o_$18_$1| |f_$9_$1| |howMuch_$1_$1|) |q_$2_$1| |g_$1_$1|) perm$R) (ite$Int$ (and (= |o_$18_$1| |q_$2_$1|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$1| |q_$2_$1| |g_$1_$1|) perm$R) |howMuch_$1_$1|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$1| |q_$2_$1| |g_$1_$1|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Int$ |m_$11_$1| |o_$18_$1| |f_$9_$1| |howMuch_$1_$1|) |q_$2_$1| |g_$1_$1|) perm$R))))
      (forall( (|m_$11_$10| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$10| ref) (|f_$9_$10| Field$ref$) (|howMuch_$1_$10| Int) (|q_$2_$10| ref) (|g_$1_$10| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$ref$ |m_$11_$10| |o_$18_$10| |f_$9_$10| |howMuch_$1_$10|) |q_$2_$10| |g_$1_$10|) perm$R) (ite$Int$ (and (= |o_$18_$10| |q_$2_$10|) (= |f_$9_$10| |g_$1_$10|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$10| |q_$2_$10| |g_$1_$10|) perm$R) |howMuch_$1_$10|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$10| |q_$2_$10| |g_$1_$10|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$ref$ |m_$11_$10| |o_$18_$10| |f_$9_$10| |howMuch_$1_$10|) |q_$2_$10| |g_$1_$10|) perm$R))))
      (forall( (|m_$11_$11| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$11| ref) (|f_$9_$11| Field$Mu$) (|howMuch_$1_$11| Int) (|q_$2_$11| ref) (|g_$1_$11| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Mu$ |m_$11_$11| |o_$18_$11| |f_$9_$11| |howMuch_$1_$11|) |q_$2_$11| |g_$1_$11|) perm$R) (ite$Int$ (and (= |o_$18_$11| |q_$2_$11|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$11| |q_$2_$11| |g_$1_$11|) perm$R) |howMuch_$1_$11|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$11| |q_$2_$11| |g_$1_$11|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Mu$ |m_$11_$11| |o_$18_$11| |f_$9_$11| |howMuch_$1_$11|) |q_$2_$11| |g_$1_$11|) perm$R))))
      (forall( (|m_$11_$12| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$12| ref) (|f_$9_$12| Field$Bool$) (|howMuch_$1_$12| Int) (|q_$2_$12| ref) (|g_$1_$12| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Bool$ |m_$11_$12| |o_$18_$12| |f_$9_$12| |howMuch_$1_$12|) |q_$2_$12| |g_$1_$12|) perm$R) (ite$Int$ (and (= |o_$18_$12| |q_$2_$12|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$12| |q_$2_$12| |g_$1_$12|) perm$R) |howMuch_$1_$12|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$12| |q_$2_$12| |g_$1_$12|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Bool$ |m_$11_$12| |o_$18_$12| |f_$9_$12| |howMuch_$1_$12|) |q_$2_$12| |g_$1_$12|) perm$R))))
      (forall( (|m_$11_$13| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$13| ref) (|f_$9_$13| Field$Int$) (|howMuch_$1_$13| Int) (|q_$2_$13| ref) (|g_$1_$13| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Int$ |m_$11_$13| |o_$18_$13| |f_$9_$13| |howMuch_$1_$13|) |q_$2_$13| |g_$1_$13|) perm$R) (ite$Int$ (and (= |o_$18_$13| |q_$2_$13|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$13| |q_$2_$13| |g_$1_$13|) perm$R) |howMuch_$1_$13|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$13| |q_$2_$13| |g_$1_$13|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Int$ |m_$11_$13| |o_$18_$13| |f_$9_$13| |howMuch_$1_$13|) |q_$2_$13| |g_$1_$13|) perm$R))))
      (forall( (|m_$11_$14| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$14| ref) (|f_$9_$14| Field$ref$) (|howMuch_$1_$14| Int) (|q_$2_$14| ref) (|g_$1_$14| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$ref$ |m_$11_$14| |o_$18_$14| |f_$9_$14| |howMuch_$1_$14|) |q_$2_$14| |g_$1_$14|) perm$R) (ite$Int$ (and (= |o_$18_$14| |q_$2_$14|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$14| |q_$2_$14| |g_$1_$14|) perm$R) |howMuch_$1_$14|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$14| |q_$2_$14| |g_$1_$14|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$ref$ |m_$11_$14| |o_$18_$14| |f_$9_$14| |howMuch_$1_$14|) |q_$2_$14| |g_$1_$14|) perm$R))))
      (forall( (|m_$11_$15| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$15| ref) (|f_$9_$15| Field$Mu$) (|howMuch_$1_$15| Int) (|q_$2_$15| ref) (|g_$1_$15| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Mu$ |m_$11_$15| |o_$18_$15| |f_$9_$15| |howMuch_$1_$15|) |q_$2_$15| |g_$1_$15|) perm$R) (ite$Int$ (and (= |o_$18_$15| |q_$2_$15|) (= |f_$9_$15| |g_$1_$15|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$15| |q_$2_$15| |g_$1_$15|) perm$R) |howMuch_$1_$15|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$15| |q_$2_$15| |g_$1_$15|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Mu$ |m_$11_$15| |o_$18_$15| |f_$9_$15| |howMuch_$1_$15|) |q_$2_$15| |g_$1_$15|) perm$R))))
      (forall( (|m_$11_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$2| ref) (|f_$9_$2| Field$ref$) (|howMuch_$1_$2| Int) (|q_$2_$2| ref) (|g_$1_$2| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$ref$ |m_$11_$2| |o_$18_$2| |f_$9_$2| |howMuch_$1_$2|) |q_$2_$2| |g_$1_$2|) perm$R) (ite$Int$ (and (= |o_$18_$2| |q_$2_$2|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$2| |q_$2_$2| |g_$1_$2|) perm$R) |howMuch_$1_$2|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$2| |q_$2_$2| |g_$1_$2|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$ref$ |m_$11_$2| |o_$18_$2| |f_$9_$2| |howMuch_$1_$2|) |q_$2_$2| |g_$1_$2|) perm$R))))
      (forall( (|m_$11_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$3| ref) (|f_$9_$3| Field$Mu$) (|howMuch_$1_$3| Int) (|q_$2_$3| ref) (|g_$1_$3| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Mu$ |m_$11_$3| |o_$18_$3| |f_$9_$3| |howMuch_$1_$3|) |q_$2_$3| |g_$1_$3|) perm$R) (ite$Int$ (and (= |o_$18_$3| |q_$2_$3|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$3| |q_$2_$3| |g_$1_$3|) perm$R) |howMuch_$1_$3|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$3| |q_$2_$3| |g_$1_$3|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Mu$ |m_$11_$3| |o_$18_$3| |f_$9_$3| |howMuch_$1_$3|) |q_$2_$3| |g_$1_$3|) perm$R))))
      (forall( (|m_$11_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$4| ref) (|f_$9_$4| Field$Bool$) (|howMuch_$1_$4| Int) (|q_$2_$4| ref) (|g_$1_$4| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Bool$ |m_$11_$4| |o_$18_$4| |f_$9_$4| |howMuch_$1_$4|) |q_$2_$4| |g_$1_$4|) perm$R) (ite$Int$ (and (= |o_$18_$4| |q_$2_$4|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$4| |q_$2_$4| |g_$1_$4|) perm$R) |howMuch_$1_$4|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$4| |q_$2_$4| |g_$1_$4|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Bool$ |m_$11_$4| |o_$18_$4| |f_$9_$4| |howMuch_$1_$4|) |q_$2_$4| |g_$1_$4|) perm$R))))
      (forall( (|m_$11_$5| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$5| ref) (|f_$9_$5| Field$Int$) (|howMuch_$1_$5| Int) (|q_$2_$5| ref) (|g_$1_$5| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Int$ |m_$11_$5| |o_$18_$5| |f_$9_$5| |howMuch_$1_$5|) |q_$2_$5| |g_$1_$5|) perm$R) (ite$Int$ (and (= |o_$18_$5| |q_$2_$5|) (= |f_$9_$5| |g_$1_$5|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$5| |q_$2_$5| |g_$1_$5|) perm$R) |howMuch_$1_$5|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$5| |q_$2_$5| |g_$1_$5|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Int$ |m_$11_$5| |o_$18_$5| |f_$9_$5| |howMuch_$1_$5|) |q_$2_$5| |g_$1_$5|) perm$R))))
      (forall( (|m_$11_$6| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$6| ref) (|f_$9_$6| Field$ref$) (|howMuch_$1_$6| Int) (|q_$2_$6| ref) (|g_$1_$6| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$ref$ |m_$11_$6| |o_$18_$6| |f_$9_$6| |howMuch_$1_$6|) |q_$2_$6| |g_$1_$6|) perm$R) (ite$Int$ (and (= |o_$18_$6| |q_$2_$6|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$6| |q_$2_$6| |g_$1_$6|) perm$R) |howMuch_$1_$6|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$6| |q_$2_$6| |g_$1_$6|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$ref$ |m_$11_$6| |o_$18_$6| |f_$9_$6| |howMuch_$1_$6|) |q_$2_$6| |g_$1_$6|) perm$R))))
      (forall( (|m_$11_$7| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$7| ref) (|f_$9_$7| Field$Mu$) (|howMuch_$1_$7| Int) (|q_$2_$7| ref) (|g_$1_$7| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Mu$ |m_$11_$7| |o_$18_$7| |f_$9_$7| |howMuch_$1_$7|) |q_$2_$7| |g_$1_$7|) perm$R) (ite$Int$ (and (= |o_$18_$7| |q_$2_$7|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$7| |q_$2_$7| |g_$1_$7|) perm$R) |howMuch_$1_$7|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$7| |q_$2_$7| |g_$1_$7|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Mu$ |m_$11_$7| |o_$18_$7| |f_$9_$7| |howMuch_$1_$7|) |q_$2_$7| |g_$1_$7|) perm$R))))
      (forall( (|m_$11_$8| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$8| ref) (|f_$9_$8| Field$Bool$) (|howMuch_$1_$8| Int) (|q_$2_$8| ref) (|g_$1_$8| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Bool$ |m_$11_$8| |o_$18_$8| |f_$9_$8| |howMuch_$1_$8|) |q_$2_$8| |g_$1_$8|) perm$R) (ite$Int$ (and (= |o_$18_$8| |q_$2_$8|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$8| |q_$2_$8| |g_$1_$8|) perm$R) |howMuch_$1_$8|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$8| |q_$2_$8| |g_$1_$8|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Bool$ |m_$11_$8| |o_$18_$8| |f_$9_$8| |howMuch_$1_$8|) |q_$2_$8| |g_$1_$8|) perm$R))))
      (forall( (|m_$11_$9| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$9| ref) (|f_$9_$9| Field$Int$) (|howMuch_$1_$9| Int) (|q_$2_$9| ref) (|g_$1_$9| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Int$ |m_$11_$9| |o_$18_$9| |f_$9_$9| |howMuch_$1_$9|) |q_$2_$9| |g_$1_$9|) perm$R) (ite$Int$ (and (= |o_$18_$9| |q_$2_$9|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$9| |q_$2_$9| |g_$1_$9|) perm$R) |howMuch_$1_$9|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$9| |q_$2_$9| |g_$1_$9|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Int$ |m_$11_$9| |o_$18_$9| |f_$9_$9| |howMuch_$1_$9|) |q_$2_$9| |g_$1_$9|) perm$R))))
      (forall( (|m_$4_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$2| ref) (|f_$3_$0| Field$Bool$))(!(= (CanRead$Bool$ |m_$4_$0| |sm_$1_$0| |obj_$2| |f_$3_$0|) (or (or (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$4_$0| |obj_$2| |f_$3_$0|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$4_$0| |obj_$2| |f_$3_$0|) perm$N))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |sm_$1_$0| |obj_$2| |f_$3_$0|) perm$R))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |sm_$1_$0| |obj_$2| |f_$3_$0|) perm$N))))  :expand  false :pattern ( (CanRead$Bool$ |m_$4_$0| |sm_$1_$0| |obj_$2| |f_$3_$0|))))
      (forall( (|m_$4_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$3| ref) (|f_$3_$1| Field$Int$))(!(= (CanRead$Int$ |m_$4_$1| |sm_$1_$1| |obj_$3| |f_$3_$1|) (or (or (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$4_$1| |obj_$3| |f_$3_$1|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$4_$1| |obj_$3| |f_$3_$1|) perm$N))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |sm_$1_$1| |obj_$3| |f_$3_$1|) perm$R))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |sm_$1_$1| |obj_$3| |f_$3_$1|) perm$N))))  :expand  false :pattern ( (CanRead$Int$ |m_$4_$1| |sm_$1_$1| |obj_$3| |f_$3_$1|))))
      (forall( (|m_$4_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$4| ref) (|f_$3_$2| Field$ref$))(!(= (CanRead$ref$ |m_$4_$2| |sm_$1_$2| |obj_$4| |f_$3_$2|) (or (or (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$4_$2| |obj_$4| |f_$3_$2|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$4_$2| |obj_$4| |f_$3_$2|) perm$N))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |sm_$1_$2| |obj_$4| |f_$3_$2|) perm$R))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |sm_$1_$2| |obj_$4| |f_$3_$2|) perm$N))))  :expand  false :pattern ( (CanRead$ref$ |m_$4_$2| |sm_$1_$2| |obj_$4| |f_$3_$2|))))
      (forall( (|m_$4_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$5| ref) (|f_$3_$3| Field$Mu$))(!(= (CanRead$Mu$ |m_$4_$3| |sm_$1_$3| |obj_$5| |f_$3_$3|) (or (or (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$4_$3| |obj_$5| |f_$3_$3|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$4_$3| |obj_$5| |f_$3_$3|) perm$N))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |sm_$1_$3| |obj_$5| |f_$3_$3|) perm$R))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |sm_$1_$3| |obj_$5| |f_$3_$3|) perm$N))))  :expand  false :pattern ( (CanRead$Mu$ |m_$4_$3| |sm_$1_$3| |obj_$5| |f_$3_$3|))))
      (forall( (|m_$7| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (IsGoodMask |m_$7|) (and (and (and (forall( (|o_$14_$0| ref) (|f_$6_$0| Field$Bool$))(and (and (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$R)) (=> (NonPredicateField$Bool$ |f_$6_$0|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$R) Permission$FullFraction))))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$R))))) (forall( (|o_$14_$1| ref) (|f_$6_$1| Field$Int$))(and (and (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$R)) (=> (NonPredicateField$Int$ |f_$6_$1|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$R) Permission$FullFraction))))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$R)))))) (forall( (|o_$14_$2| ref) (|f_$6_$2| Field$ref$))(and (and (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$R)) (=> (NonPredicateField$ref$ |f_$6_$2|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$R) Permission$FullFraction))))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$R)))))) (forall( (|o_$14_$3| ref) (|f_$6_$3| Field$Mu$))(and (and (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$R)) (=> (NonPredicateField$Mu$ |f_$6_$3|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$R) Permission$FullFraction))))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$R)))))))  :expand  true :pattern ( (IsGoodMask |m_$7|))))
      (forall( (|m_$9_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$0| ref) (|f_$7_$0| Field$Bool$) (|howMuch_$3| Int) (|q_$0_$0| ref) (|g_$4| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Bool$ |m_$9_$0| |o_$16_$0| |f_$7_$0| |howMuch_$3|) |q_$0_$0| |g_$4|) perm$R) (ite$Int$ (and (= |o_$16_$0| |q_$0_$0|) (= |f_$7_$0| |g_$4|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$0| |q_$0_$0| |g_$4|) perm$R) |howMuch_$3|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$0| |q_$0_$0| |g_$4|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Bool$ |m_$9_$0| |o_$16_$0| |f_$7_$0| |howMuch_$3|) |q_$0_$0| |g_$4|) perm$R))))
      (forall( (|m_$9_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$1| ref) (|f_$7_$1| Field$Int$) (|howMuch_$4| Int) (|q_$0_$1| ref) (|g_$5| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Int$ |m_$9_$1| |o_$16_$1| |f_$7_$1| |howMuch_$4|) |q_$0_$1| |g_$5|) perm$R) (ite$Int$ (and (= |o_$16_$1| |q_$0_$1|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$1| |q_$0_$1| |g_$5|) perm$R) |howMuch_$4|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$1| |q_$0_$1| |g_$5|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Int$ |m_$9_$1| |o_$16_$1| |f_$7_$1| |howMuch_$4|) |q_$0_$1| |g_$5|) perm$R))))
      (forall( (|m_$9_$10| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$10| ref) (|f_$7_$10| Field$ref$) (|howMuch_$13| Int) (|q_$0_$10| ref) (|g_$14| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$ref$ |m_$9_$10| |o_$16_$10| |f_$7_$10| |howMuch_$13|) |q_$0_$10| |g_$14|) perm$R) (ite$Int$ (and (= |o_$16_$10| |q_$0_$10|) (= |f_$7_$10| |g_$14|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$10| |q_$0_$10| |g_$14|) perm$R) |howMuch_$13|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$10| |q_$0_$10| |g_$14|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$ref$ |m_$9_$10| |o_$16_$10| |f_$7_$10| |howMuch_$13|) |q_$0_$10| |g_$14|) perm$R))))
      (forall( (|m_$9_$11| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$11| ref) (|f_$7_$11| Field$Mu$) (|howMuch_$14| Int) (|q_$0_$11| ref) (|g_$15| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Mu$ |m_$9_$11| |o_$16_$11| |f_$7_$11| |howMuch_$14|) |q_$0_$11| |g_$15|) perm$R) (ite$Int$ (and (= |o_$16_$11| |q_$0_$11|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$11| |q_$0_$11| |g_$15|) perm$R) |howMuch_$14|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$11| |q_$0_$11| |g_$15|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Mu$ |m_$9_$11| |o_$16_$11| |f_$7_$11| |howMuch_$14|) |q_$0_$11| |g_$15|) perm$R))))
      (forall( (|m_$9_$12| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$12| ref) (|f_$7_$12| Field$Bool$) (|howMuch_$15| Int) (|q_$0_$12| ref) (|g_$16| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Bool$ |m_$9_$12| |o_$16_$12| |f_$7_$12| |howMuch_$15|) |q_$0_$12| |g_$16|) perm$R) (ite$Int$ (and (= |o_$16_$12| |q_$0_$12|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$12| |q_$0_$12| |g_$16|) perm$R) |howMuch_$15|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$12| |q_$0_$12| |g_$16|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Bool$ |m_$9_$12| |o_$16_$12| |f_$7_$12| |howMuch_$15|) |q_$0_$12| |g_$16|) perm$R))))
      (forall( (|m_$9_$13| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$13| ref) (|f_$7_$13| Field$Int$) (|howMuch_$16| Int) (|q_$0_$13| ref) (|g_$17| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Int$ |m_$9_$13| |o_$16_$13| |f_$7_$13| |howMuch_$16|) |q_$0_$13| |g_$17|) perm$R) (ite$Int$ (and (= |o_$16_$13| |q_$0_$13|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$13| |q_$0_$13| |g_$17|) perm$R) |howMuch_$16|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$13| |q_$0_$13| |g_$17|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Int$ |m_$9_$13| |o_$16_$13| |f_$7_$13| |howMuch_$16|) |q_$0_$13| |g_$17|) perm$R))))
      (forall( (|m_$9_$14| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$14| ref) (|f_$7_$14| Field$ref$) (|howMuch_$17| Int) (|q_$0_$14| ref) (|g_$18| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$ref$ |m_$9_$14| |o_$16_$14| |f_$7_$14| |howMuch_$17|) |q_$0_$14| |g_$18|) perm$R) (ite$Int$ (and (= |o_$16_$14| |q_$0_$14|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$14| |q_$0_$14| |g_$18|) perm$R) |howMuch_$17|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$14| |q_$0_$14| |g_$18|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$ref$ |m_$9_$14| |o_$16_$14| |f_$7_$14| |howMuch_$17|) |q_$0_$14| |g_$18|) perm$R))))
      (forall( (|m_$9_$15| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$15| ref) (|f_$7_$15| Field$Mu$) (|howMuch_$18| Int) (|q_$0_$15| ref) (|g_$19| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Mu$ |m_$9_$15| |o_$16_$15| |f_$7_$15| |howMuch_$18|) |q_$0_$15| |g_$19|) perm$R) (ite$Int$ (and (= |o_$16_$15| |q_$0_$15|) (= |f_$7_$15| |g_$19|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$15| |q_$0_$15| |g_$19|) perm$R) |howMuch_$18|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$15| |q_$0_$15| |g_$19|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Mu$ |m_$9_$15| |o_$16_$15| |f_$7_$15| |howMuch_$18|) |q_$0_$15| |g_$19|) perm$R))))
      (forall( (|m_$9_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$2| ref) (|f_$7_$2| Field$ref$) (|howMuch_$5| Int) (|q_$0_$2| ref) (|g_$6| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$ref$ |m_$9_$2| |o_$16_$2| |f_$7_$2| |howMuch_$5|) |q_$0_$2| |g_$6|) perm$R) (ite$Int$ (and (= |o_$16_$2| |q_$0_$2|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$2| |q_$0_$2| |g_$6|) perm$R) |howMuch_$5|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$2| |q_$0_$2| |g_$6|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$ref$ |m_$9_$2| |o_$16_$2| |f_$7_$2| |howMuch_$5|) |q_$0_$2| |g_$6|) perm$R))))
      (forall( (|m_$9_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$3| ref) (|f_$7_$3| Field$Mu$) (|howMuch_$6| Int) (|q_$0_$3| ref) (|g_$7| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Mu$ |m_$9_$3| |o_$16_$3| |f_$7_$3| |howMuch_$6|) |q_$0_$3| |g_$7|) perm$R) (ite$Int$ (and (= |o_$16_$3| |q_$0_$3|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$3| |q_$0_$3| |g_$7|) perm$R) |howMuch_$6|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$3| |q_$0_$3| |g_$7|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Mu$ |m_$9_$3| |o_$16_$3| |f_$7_$3| |howMuch_$6|) |q_$0_$3| |g_$7|) perm$R))))
      (forall( (|m_$9_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$4| ref) (|f_$7_$4| Field$Bool$) (|howMuch_$7| Int) (|q_$0_$4| ref) (|g_$8| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Bool$ |m_$9_$4| |o_$16_$4| |f_$7_$4| |howMuch_$7|) |q_$0_$4| |g_$8|) perm$R) (ite$Int$ (and (= |o_$16_$4| |q_$0_$4|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$4| |q_$0_$4| |g_$8|) perm$R) |howMuch_$7|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$4| |q_$0_$4| |g_$8|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Bool$ |m_$9_$4| |o_$16_$4| |f_$7_$4| |howMuch_$7|) |q_$0_$4| |g_$8|) perm$R))))
      (forall( (|m_$9_$5| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$5| ref) (|f_$7_$5| Field$Int$) (|howMuch_$8| Int) (|q_$0_$5| ref) (|g_$9| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Int$ |m_$9_$5| |o_$16_$5| |f_$7_$5| |howMuch_$8|) |q_$0_$5| |g_$9|) perm$R) (ite$Int$ (and (= |o_$16_$5| |q_$0_$5|) (= |f_$7_$5| |g_$9|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$5| |q_$0_$5| |g_$9|) perm$R) |howMuch_$8|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$5| |q_$0_$5| |g_$9|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Int$ |m_$9_$5| |o_$16_$5| |f_$7_$5| |howMuch_$8|) |q_$0_$5| |g_$9|) perm$R))))
      (forall( (|m_$9_$6| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$6| ref) (|f_$7_$6| Field$ref$) (|howMuch_$9| Int) (|q_$0_$6| ref) (|g_$10| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$ref$ |m_$9_$6| |o_$16_$6| |f_$7_$6| |howMuch_$9|) |q_$0_$6| |g_$10|) perm$R) (ite$Int$ (and (= |o_$16_$6| |q_$0_$6|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$6| |q_$0_$6| |g_$10|) perm$R) |howMuch_$9|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$6| |q_$0_$6| |g_$10|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$ref$ |m_$9_$6| |o_$16_$6| |f_$7_$6| |howMuch_$9|) |q_$0_$6| |g_$10|) perm$R))))
      (forall( (|m_$9_$7| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$7| ref) (|f_$7_$7| Field$Mu$) (|howMuch_$10| Int) (|q_$0_$7| ref) (|g_$11| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Mu$ |m_$9_$7| |o_$16_$7| |f_$7_$7| |howMuch_$10|) |q_$0_$7| |g_$11|) perm$R) (ite$Int$ (and (= |o_$16_$7| |q_$0_$7|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$7| |q_$0_$7| |g_$11|) perm$R) |howMuch_$10|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$7| |q_$0_$7| |g_$11|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Mu$ |m_$9_$7| |o_$16_$7| |f_$7_$7| |howMuch_$10|) |q_$0_$7| |g_$11|) perm$R))))
      (forall( (|m_$9_$8| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$8| ref) (|f_$7_$8| Field$Bool$) (|howMuch_$11| Int) (|q_$0_$8| ref) (|g_$12| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Bool$ |m_$9_$8| |o_$16_$8| |f_$7_$8| |howMuch_$11|) |q_$0_$8| |g_$12|) perm$R) (ite$Int$ (and (= |o_$16_$8| |q_$0_$8|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$8| |q_$0_$8| |g_$12|) perm$R) |howMuch_$11|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$8| |q_$0_$8| |g_$12|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Bool$ |m_$9_$8| |o_$16_$8| |f_$7_$8| |howMuch_$11|) |q_$0_$8| |g_$12|) perm$R))))
      (forall( (|m_$9_$9| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$9| ref) (|f_$7_$9| Field$Int$) (|howMuch_$12| Int) (|q_$0_$9| ref) (|g_$13| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Int$ |m_$9_$9| |o_$16_$9| |f_$7_$9| |howMuch_$12|) |q_$0_$9| |g_$13|) perm$R) (ite$Int$ (and (= |o_$16_$9| |q_$0_$9|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$9| |q_$0_$9| |g_$13|) perm$R) |howMuch_$12|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$9| |q_$0_$9| |g_$13|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Int$ |m_$9_$9| |o_$16_$9| |f_$7_$9| |howMuch_$12|) |q_$0_$9| |g_$13|) perm$R))))
      (forall( (|m| Mu) (|n_$0| Mu))(!(not (and (MuBelow |m| |n_$0|) (MuBelow |n_$0| |m|)))  :pattern ( (MuBelow |m| |n_$0|) (MuBelow |n_$0| |m|))))
      (forall( (|n| Int))(!(= (Fractions |n|) (* |n| Permission$denominator))  :pattern ( (Fractions |n|))))
      (forall( (|o_$22| ref))(= (MapRead$$@Map@@ref@To@Int@@$ ZeroCredits |o_$22|) 0))
      (forall( (|o_$25| ref) (|f_$16| Field$Bool$) (|pc_$0| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ ZeroMask |o_$25| |f_$16|) |pc_$0|) 0))
      (forall( (|o_$26| ref) (|f_$17| Field$Int$) (|pc_$1| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask |o_$26| |f_$17|) |pc_$1|) 0))
      (forall( (|o_$27| ref) (|f_$18| Field$ref$) (|pc_$2| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask |o_$27| |f_$18|) |pc_$2|) 0))
      (forall( (|o_$28| ref) (|f_$19| Field$Mu$) (|pc_$3| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ ZeroMask |o_$28| |f_$19|) |pc_$3|) 0))
      (forall( (|x_$0| Int) (|y_$0| Int))(!(= (mod |x_$0| |y_$0|) (- |x_$0| (* (div |x_$0| |y_$0|) |y_$0|)))  :pattern ( (mod |x_$0| |y_$0|)) :pattern ( (div |x_$0| |y_$0|))))
      (forall( (|x_$1| Int) (|y_$1| Int))(!(=> (< 0 |y_$1|) (and (<= 0 (mod |x_$1| |y_$1|)) (< (mod |x_$1| |y_$1|) |y_$1|)))  :pattern ( (mod |x_$1| |y_$1|))))
      (forall( (|x_$2| Int) (|y_$2| Int))(!(=> (< |y_$2| 0) (and (< |y_$2| (mod |x_$2| |y_$2|)) (<= (mod |x_$2| |y_$2|) 0)))  :pattern ( (mod |x_$2| |y_$2|))))
      (forall( (|x| Int) (|y| Int))(=> (and (<= 0 |x|) (<= |x| |y|)) (<= (Fractions |x|) (Fractions |y|))))
      (IsGoodMask ZeroMask)
      (IsGoodState emptyPartialHeap)
      (NonPredicateField$Bool$ rdheld)
      (NonPredicateField$Int$ forkK)
      (NonPredicateField$Int$ held)
      (NonPredicateField$Int$ joinable)
      (NonPredicateField$Mu$ mu)
      (NonPredicateField$ref$ Node.next)
      (NonPredicateField$ref$ Node.prev)
      (PredicateField$Int$ Node.inv)
      (PredicateField$Int$ Node.invLeft)
      (PredicateField$Int$ Node.invRight)
   )
PreconditionGeneratedEntry
)) :named ax_$start))
(assert (! (=> PreconditionGeneratedEntry (and true 
   (and true
      (IsGoodMask Mask)
      (IsGoodMask SecMask)
      (not (= this null))
      (or (= this null) (= (dtype this) Node@t))
      (wf Heap Mask SecMask)
   )
anon0
)) :named ax_PreconditionGeneratedEntry))
(assert (! (=> anon0 (and true 
   (and true
      (< (* 1000 methodK@_9) (Fractions 1))
      (< 0 methodK@_9)
      (= m1@_5@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask this Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask this Node.prev) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask this Node.prev) perm$R) (- (Fractions 50) 0)))))
      (= m1@_5@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@0 this Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@0 this Node.prev) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@0 this Node.prev) perm$N) (- 0 1)))))
      (= m1@_5@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@1 this Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@1 this Node.next) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@1 this Node.next) perm$R) (- (Fractions 50) 0)))))
      (= m1@_5@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@2 this Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@2 this Node.next) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@2 this Node.next) perm$N) (- 0 1)))))
      (= m1@_5@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m1@_5@3 this mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m1@_5@3 this mu) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m1@_5@3 this mu) perm$R) (- (Fractions 50) 0)))))
      (= m1@_5@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m1@_5@4 this mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m1@_5@4 this mu) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m1@_5@4 this mu) perm$N) (- 0 1)))))
      (IsGoodMask m1@_5@1)
      (IsGoodMask m1@_5@3)
      (IsGoodMask m1@_5@5)
      (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ h1@_4@0 this mu)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev)))
      (not (= this null))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next)) Node@t))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev)) Node@t))
      (or (> (- (Fractions 50) 0) 0) (and false (> (- 0 1) 0)))
      (wf h0@_0 m0@_1 sm0@_2)
      (wf h1@_4 m1@_5 sm1@_6)
      (wf h1@_4@0 m1@_5@1 ZeroMask)
      (wf h1@_4@0 m1@_5@3 ZeroMask)
      (wf h1@_4@0 m1@_5@5 ZeroMask)
      (wf h1@_4@0 ZeroMask ZeroMask)
   )
(or anon49_Else anon49_Then)
)) :named ax_anon0))
(assert (! (=> anon49_Else (and true 
   (and true
      (= $@condition (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) null))
      (= m1@_5@9 m1@_5@5)
      (not $@condition)
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) null))
   )
$branchMerge_0
)) :named ax_anon49_Else))
(assert (! (=> anon49_Then (and true 
   (and true
      $@condition
      (= $@condition (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) null))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) null)
      (= m1@_5@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@5 this Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@5 this Node.prev) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@5 this Node.prev) perm$R) (Fractions 25)))))
      (= m1@_5@7 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@6 this Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@6 this Node.next) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@6 this Node.next) perm$R) (Fractions 25)))))
      (= m1@_5@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m1@_5@7 this mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m1@_5@7 this mu) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m1@_5@7 this mu) perm$R) (Fractions 25)))))
      (= m1@_5@9 m1@_5@8)
      (> (Fractions 25) 0)
      (IsGoodMask m1@_5@6)
      (IsGoodMask m1@_5@7)
      (IsGoodMask m1@_5@8)
      (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ h1@_4@0 this mu)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev)))
      (not (= this null))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next)) Node@t))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev)) Node@t))
      (wf h1@_4@0 m1@_5@5 ZeroMask)
      (wf h1@_4@0 m1@_5@6 ZeroMask)
      (wf h1@_4@0 m1@_5@7 ZeroMask)
      (wf h1@_4@0 m1@_5@8 ZeroMask)
   )
$branchMerge_0
)) :named ax_anon49_Then))
(assert (! (=> $branchMerge_0 (and true 
   (and true
   )
(or anon50_Else anon50_Then)
)) :named ax_$branchMerge_0))
(assert (! (=> anon50_Else (and true 
   (and true
      (= $@condition_$0 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) null)
      (= m1@_5@13 m1@_5@9)
      (not $@condition_$0)
   )
$branchMerge_1
)) :named ax_anon50_Else))
(assert (! (=> anon50_Then (and true 
   (and true
      $@condition_$0
      (= $@condition_$0 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) null)))
      (= m1@_5@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) Node.next) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) Node.next) perm$R) (Fractions 25)))))
      (= m1@_5@11 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) Node.prev) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) Node.prev) perm$R) (Fractions 25)))))
      (= m1@_5@12 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m1@_5@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m1@_5@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) mu) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m1@_5@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) mu) perm$R) (Fractions 25)))))
      (= m1@_5@13 m1@_5@12)
      (> (Fractions 25) 0)
      (IsGoodMask m1@_5@10)
      (IsGoodMask m1@_5@11)
      (IsGoodMask m1@_5@12)
      (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ h1@_4@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) mu)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) Node.next)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) Node.prev)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) null))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) Node.next)) Node@t))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) Node.prev)) Node@t))
      (wf h1@_4@0 m1@_5@10 ZeroMask)
      (wf h1@_4@0 m1@_5@11 ZeroMask)
      (wf h1@_4@0 m1@_5@12 ZeroMask)
      (wf h1@_4@0 m1@_5@9 ZeroMask)
   )
$branchMerge_1
)) :named ax_anon50_Then))
(assert (! (=> $branchMerge_1 (and true 
   (and true
   )
(or anon51_Else anon51_Then)
)) :named ax_$branchMerge_1))
(assert (! (=> anon51_Else (and true 
   (and true
      (= $@condition_$2 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) null))
      (= m1@_5@17 m1@_5@13)
      (not $@condition_$2)
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) null))
   )
$branchMerge_2
)) :named ax_anon51_Else))
(assert (! (=> anon51_Then (and true 
   (and true
      $@condition_$2
      (= $@condition_$2 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) null))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) null)
      (= m1@_5@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@13 this Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@13 this Node.prev) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@13 this Node.prev) perm$R) (Fractions 25)))))
      (= m1@_5@15 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@14 this Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@14 this Node.next) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@14 this Node.next) perm$R) (Fractions 25)))))
      (= m1@_5@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m1@_5@15 this mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m1@_5@15 this mu) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m1@_5@15 this mu) perm$R) (Fractions 25)))))
      (= m1@_5@17 m1@_5@16)
      (> (Fractions 25) 0)
      (IsGoodMask m1@_5@14)
      (IsGoodMask m1@_5@15)
      (IsGoodMask m1@_5@16)
      (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ h1@_4@0 this mu)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev)))
      (not (= this null))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next)) Node@t))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev)) Node@t))
      (wf h1@_4@0 m1@_5@13 ZeroMask)
      (wf h1@_4@0 m1@_5@14 ZeroMask)
      (wf h1@_4@0 m1@_5@15 ZeroMask)
      (wf h1@_4@0 m1@_5@16 ZeroMask)
   )
$branchMerge_2
)) :named ax_anon51_Then))
(assert (! (=> $branchMerge_2 (and true 
   (and true
   )
(or anon52_Else anon52_Then)
)) :named ax_$branchMerge_2))
(assert (! (=> anon52_Else (and true 
   (and true
      (= $@condition_$4 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) null)
      (= m1@_5@21 m1@_5@17)
      (not $@condition_$4)
   )
$branchMerge_3
)) :named ax_anon52_Else))
(assert (! (=> anon52_Then (and true 
   (and true
      $@condition_$4
      (= $@condition_$4 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) null)))
      (= m1@_5@18 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) Node.next) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) Node.next) perm$R) (Fractions 25)))))
      (= m1@_5@19 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) Node.prev) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m1@_5@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) Node.prev) perm$R) (Fractions 25)))))
      (= m1@_5@20 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m1@_5@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m1@_5@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) mu) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m1@_5@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) mu) perm$R) (Fractions 25)))))
      (= m1@_5@21 m1@_5@20)
      (> (Fractions 25) 0)
      (IsGoodMask m1@_5@18)
      (IsGoodMask m1@_5@19)
      (IsGoodMask m1@_5@20)
      (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ h1@_4@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) mu)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) Node.next)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) Node.prev)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) null))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) Node.next)) Node@t))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) Node.prev)) Node@t))
      (wf h1@_4@0 m1@_5@17 ZeroMask)
      (wf h1@_4@0 m1@_5@18 ZeroMask)
      (wf h1@_4@0 m1@_5@19 ZeroMask)
      (wf h1@_4@0 m1@_5@20 ZeroMask)
   )
$branchMerge_3
)) :named ax_anon52_Then))
(assert (! (=> $branchMerge_3 (and true 
   (and true
   )
(or anon53_Else anon53_Then)
)) :named ax_$branchMerge_3))
(assert (! (=> anon53_Else (and true 
   (and true
      (= $@condition_$6 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) null)
      (not $@condition_$6)
   )
$branchMerge_4
)) :named ax_anon53_Else))
(assert (! (=> anon53_Then (and true 
   (and true
      $@condition_$6
      (= $@condition_$6 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) Node.prev) this)
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) Node.prev) null))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) null))
   )
$branchMerge_4
)) :named ax_anon53_Then))
(assert (! (=> $branchMerge_4 (and true 
   (and true
   )
(or anon54_Else anon54_Then)
)) :named ax_$branchMerge_4))
(assert (! (=> anon54_Else (and true 
   (and true
      (= $@condition_$8 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) null)
      (not $@condition_$8)
   )
$branchMerge_5
)) :named ax_anon54_Else))
(assert (! (=> anon54_Then (and true 
   (and true
      $@condition_$8
      (= $@condition_$8 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) Node.next) this)
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) Node.next) null))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) null))
   )
$branchMerge_5
)) :named ax_anon54_Then))
(assert (! (=> $branchMerge_5 (and true 
   (and true
   )
(or anon55_Else anon55_Then)
)) :named ax_$branchMerge_5))
(assert (! (=> anon55_Else (and true 
   (and true
      (= $@condition_$10 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) null)
      (not $@condition_$10)
   )
$branchMerge_6
)) :named ax_anon55_Else))
(assert (! (=> anon55_Then (and true 
   (and true
      $@condition_$10
      (= $@condition_$10 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) null)))
      (MuBelow (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ h1@_4@0 this mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ h1@_4@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) mu))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.next) null))
   )
$branchMerge_6
)) :named ax_anon55_Then))
(assert (! (=> $branchMerge_6 (and true 
   (and true
   )
(or anon56_Else anon56_Then)
)) :named ax_$branchMerge_6))
(assert (! (=> anon56_Else (and true 
   (and true
      (= $@condition_$12 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) null)
      (not $@condition_$12)
   )
anon16
)) :named ax_anon56_Else))
(assert (! (=> anon56_Then (and true 
   (and true
      $@condition_$12
      (= $@condition_$12 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) null)))
      (MuBelow (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ h1@_4@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ h1@_4@0 this mu))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ h1@_4@0 this Node.prev) null))
   )
anon16
)) :named ax_anon56_Then))
(assert (! (=> anon16 (and true 
   (and true
      (= Mask@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask this Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask this Node.prev) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask this Node.prev) perm$R) (- (Fractions 50) 0)))))
      (= Mask@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@0 this Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@0 this Node.prev) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@0 this Node.prev) perm$N) (- 0 1)))))
      (= Mask@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@1 this Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@1 this Node.next) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@1 this Node.next) perm$R) (- (Fractions 50) 0)))))
      (= Mask@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@2 this Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@2 this Node.next) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@2 this Node.next) perm$N) (- 0 1)))))
      (= Mask@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@3 this mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@3 this mu) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@3 this mu) perm$R) (- (Fractions 50) 0)))))
      (= Mask@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@4 this mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@4 this mu) perm$N (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@4 this mu) perm$N) (- 0 1)))))
      (IsGoodMask m1@_5@21)
      (IsGoodMask Mask@1)
      (IsGoodMask Mask@3)
      (IsGoodMask Mask@5)
      (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap@0 this mu)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev)))
      (not (= this null))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next)) Node@t))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev)) Node@t))
      (or (> (- (Fractions 50) 0) 0) (and false (> (- 0 1) 0)))
      (wf h1@_4@0 m1@_5@21 ZeroMask)
      (wf Heap@0 Mask@1 ZeroMask)
      (wf Heap@0 Mask@3 ZeroMask)
      (wf Heap@0 Mask@5 ZeroMask)
      (wf Heap@0 ZeroMask ZeroMask)
   )
(or anon16@1 anon16_assertion)
)) :named ax_anon16))
(assert (! (=> anon16@1 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon16@1_assertion anon16@2)
)) :named ax_anon16@1))
(assert (! (=> anon16_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon16_assertion))
(assert (! (=> anon16@1_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@5 ZeroMask this Node.next))
   )
))) :named ax_anon16@1_assertion))
(assert (! (=> anon16@2 (and true 
   (and true
      (=> true (CanRead$ref$ Mask@5 ZeroMask this Node.next))
   )
(or anon57_Else anon57_Then)
)) :named ax_anon16@2))
(assert (! (=> anon57_Else (and true 
   (and true
      (= $@condition_$14 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null))
      (= Mask@9 Mask@5)
      (not $@condition_$14)
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null))
   )
anon18
)) :named ax_anon57_Else))
(assert (! (=> anon57_Then (and true 
   (and true
      $@condition_$14
      (= $@condition_$14 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null)
      (= Mask@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@5 this Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@5 this Node.prev) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@5 this Node.prev) perm$R) (Fractions 25)))))
      (= Mask@7 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@6 this Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@6 this Node.next) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@6 this Node.next) perm$R) (Fractions 25)))))
      (= Mask@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@7 this mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@7 this mu) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@7 this mu) perm$R) (Fractions 25)))))
      (= Mask@9 Mask@8)
      (> (Fractions 25) 0)
      (IsGoodMask Mask@6)
      (IsGoodMask Mask@7)
      (IsGoodMask Mask@8)
      (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap@0 this mu)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev)))
      (not (= this null))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next)) Node@t))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev)) Node@t))
      (wf Heap@0 Mask@5 ZeroMask)
      (wf Heap@0 Mask@6 ZeroMask)
      (wf Heap@0 Mask@7 ZeroMask)
      (wf Heap@0 Mask@8 ZeroMask)
   )
anon18
)) :named ax_anon57_Then))
(assert (! (=> anon18 (and true 
   (and true
   )
(or anon18@1 anon18_assertion)
)) :named ax_anon18))
(assert (! (=> anon18@1 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon18@1_assertion anon18@2)
)) :named ax_anon18@1))
(assert (! (=> anon18_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon18_assertion))
(assert (! (=> anon18@1_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@9 ZeroMask this Node.next))
   )
))) :named ax_anon18@1_assertion))
(assert (! (=> anon18@2 (and true 
   (and true
      (=> true (CanRead$ref$ Mask@9 ZeroMask this Node.next))
   )
(or anon58_Else anon58_Then)
)) :named ax_anon18@2))
(assert (! (=> anon58_Else (and true 
   (and true
      (= $@condition_$15 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null)
      (= Mask@13 Mask@9)
      (not $@condition_$15)
   )
anon20
)) :named ax_anon58_Else))
(assert (! (=> anon58_Then (and true 
   (and true
      $@condition_$15
      (= $@condition_$15 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null))
   )
(or anon58_Then@1 anon58_Then_assertion)
)) :named ax_anon58_Then))
(assert (! (=> anon58_Then@1 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon58_Then@1_assertion anon58_Then@2)
)) :named ax_anon58_Then@1))
(assert (! (=> anon58_Then_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon58_Then_assertion))
(assert (! (=> anon58_Then@1_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@9 ZeroMask this Node.next))
   )
))) :named ax_anon58_Then@1_assertion))
(assert (! (=> anon58_Then@2 (and true 
   (and true
      (= Mask@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) Node.next) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) Node.next) perm$R) (Fractions 25)))))
      (=> true (CanRead$ref$ Mask@9 ZeroMask this Node.next))
      (> (Fractions 25) 0)
      (IsGoodMask Mask@10)
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) Node.next)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) Node.next)) Node@t))
      (wf Heap@0 Mask@10 ZeroMask)
      (wf Heap@0 Mask@9 ZeroMask)
   )
(or anon58_Then@2_assertion anon58_Then@3)
)) :named ax_anon58_Then@2))
(assert (! (=> anon58_Then@2_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon58_Then@2_assertion))
(assert (! (=> anon58_Then@3 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon58_Then@3_assertion anon58_Then@4)
)) :named ax_anon58_Then@3))
(assert (! (=> anon58_Then@3_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@10 ZeroMask this Node.next))
   )
))) :named ax_anon58_Then@3_assertion))
(assert (! (=> anon58_Then@4 (and true 
   (and true
      (= Mask@11 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) Node.prev) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) Node.prev) perm$R) (Fractions 25)))))
      (=> true (CanRead$ref$ Mask@10 ZeroMask this Node.next))
      (> (Fractions 25) 0)
      (IsGoodMask Mask@11)
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) Node.prev)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) Node.prev)) Node@t))
      (wf Heap@0 Mask@10 ZeroMask)
      (wf Heap@0 Mask@11 ZeroMask)
   )
(or anon58_Then@4_assertion anon58_Then@5)
)) :named ax_anon58_Then@4))
(assert (! (=> anon58_Then@4_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon58_Then@4_assertion))
(assert (! (=> anon58_Then@5 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon58_Then@5_assertion anon58_Then@6)
)) :named ax_anon58_Then@5))
(assert (! (=> anon58_Then@5_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@11 ZeroMask this Node.next))
   )
))) :named ax_anon58_Then@5_assertion))
(assert (! (=> anon58_Then@6 (and true 
   (and true
      (= Mask@12 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) mu) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) mu) perm$R) (Fractions 25)))))
      (= Mask@13 Mask@12)
      (=> true (CanRead$ref$ Mask@11 ZeroMask this Node.next))
      (> (Fractions 25) 0)
      (IsGoodMask Mask@12)
      (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) mu)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null))
      (wf Heap@0 Mask@11 ZeroMask)
      (wf Heap@0 Mask@12 ZeroMask)
   )
anon20
)) :named ax_anon58_Then@6))
(assert (! (=> anon20 (and true 
   (and true
   )
(or anon20@1 anon20_assertion)
)) :named ax_anon20))
(assert (! (=> anon20@1 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon20@1_assertion anon20@2)
)) :named ax_anon20@1))
(assert (! (=> anon20_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon20_assertion))
(assert (! (=> anon20@1_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@13 ZeroMask this Node.prev))
   )
))) :named ax_anon20@1_assertion))
(assert (! (=> anon20@2 (and true 
   (and true
      (=> true (CanRead$ref$ Mask@13 ZeroMask this Node.prev))
   )
(or anon59_Else anon59_Then)
)) :named ax_anon20@2))
(assert (! (=> anon59_Else (and true 
   (and true
      (= $@condition_$16 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null))
      (= Mask@17 Mask@13)
      (not $@condition_$16)
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null))
   )
anon22
)) :named ax_anon59_Else))
(assert (! (=> anon59_Then (and true 
   (and true
      $@condition_$16
      (= $@condition_$16 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null)
      (= Mask@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@13 this Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@13 this Node.prev) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@13 this Node.prev) perm$R) (Fractions 25)))))
      (= Mask@15 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@14 this Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@14 this Node.next) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@14 this Node.next) perm$R) (Fractions 25)))))
      (= Mask@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@15 this mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@15 this mu) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@15 this mu) perm$R) (Fractions 25)))))
      (= Mask@17 Mask@16)
      (> (Fractions 25) 0)
      (IsGoodMask Mask@14)
      (IsGoodMask Mask@15)
      (IsGoodMask Mask@16)
      (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap@0 this mu)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next)))
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev)))
      (not (= this null))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next)) Node@t))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev)) Node@t))
      (wf Heap@0 Mask@13 ZeroMask)
      (wf Heap@0 Mask@14 ZeroMask)
      (wf Heap@0 Mask@15 ZeroMask)
      (wf Heap@0 Mask@16 ZeroMask)
   )
anon22
)) :named ax_anon59_Then))
(assert (! (=> anon22 (and true 
   (and true
   )
(or anon22@1 anon22_assertion)
)) :named ax_anon22))
(assert (! (=> anon22@1 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon22@1_assertion anon22@2)
)) :named ax_anon22@1))
(assert (! (=> anon22_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon22_assertion))
(assert (! (=> anon22@1_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@17 ZeroMask this Node.prev))
   )
))) :named ax_anon22@1_assertion))
(assert (! (=> anon22@2 (and true 
   (and true
      (=> true (CanRead$ref$ Mask@17 ZeroMask this Node.prev))
   )
(or anon60_Else anon60_Then)
)) :named ax_anon22@2))
(assert (! (=> anon60_Else (and true 
   (and true
      (= $@condition_$17 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null)
      (= Mask@21 Mask@17)
      (not $@condition_$17)
   )
anon24
)) :named ax_anon60_Else))
(assert (! (=> anon60_Then (and true 
   (and true
      $@condition_$17
      (= $@condition_$17 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null))
   )
(or anon60_Then@1 anon60_Then_assertion)
)) :named ax_anon60_Then))
(assert (! (=> anon60_Then@1 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon60_Then@1_assertion anon60_Then@2)
)) :named ax_anon60_Then@1))
(assert (! (=> anon60_Then_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon60_Then_assertion))
(assert (! (=> anon60_Then@1_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@17 ZeroMask this Node.prev))
   )
))) :named ax_anon60_Then@1_assertion))
(assert (! (=> anon60_Then@2 (and true 
   (and true
      (= Mask@18 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) Node.next (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) Node.next) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) Node.next) perm$R) (Fractions 25)))))
      (=> true (CanRead$ref$ Mask@17 ZeroMask this Node.prev))
      (> (Fractions 25) 0)
      (IsGoodMask Mask@18)
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) Node.next)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) Node.next) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) Node.next)) Node@t))
      (wf Heap@0 Mask@17 ZeroMask)
      (wf Heap@0 Mask@18 ZeroMask)
   )
(or anon60_Then@2_assertion anon60_Then@3)
)) :named ax_anon60_Then@2))
(assert (! (=> anon60_Then@2_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon60_Then@2_assertion))
(assert (! (=> anon60_Then@3 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon60_Then@3_assertion anon60_Then@4)
)) :named ax_anon60_Then@3))
(assert (! (=> anon60_Then@3_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@18 ZeroMask this Node.prev))
   )
))) :named ax_anon60_Then@3_assertion))
(assert (! (=> anon60_Then@4 (and true 
   (and true
      (= Mask@19 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) Node.prev (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) Node.prev) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) Node.prev) perm$R) (Fractions 25)))))
      (=> true (CanRead$ref$ Mask@18 ZeroMask this Node.prev))
      (> (Fractions 25) 0)
      (IsGoodMask Mask@19)
      (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) Node.prev)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null))
      (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) Node.prev) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) Node.prev)) Node@t))
      (wf Heap@0 Mask@18 ZeroMask)
      (wf Heap@0 Mask@19 ZeroMask)
   )
(or anon60_Then@4_assertion anon60_Then@5)
)) :named ax_anon60_Then@4))
(assert (! (=> anon60_Then@4_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon60_Then@4_assertion))
(assert (! (=> anon60_Then@5 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon60_Then@5_assertion anon60_Then@6)
)) :named ax_anon60_Then@5))
(assert (! (=> anon60_Then@5_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@19 ZeroMask this Node.prev))
   )
))) :named ax_anon60_Then@5_assertion))
(assert (! (=> anon60_Then@6 (and true 
   (and true
      (= Mask@20 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) mu) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) mu) perm$R) (Fractions 25)))))
      (= Mask@21 Mask@20)
      (=> true (CanRead$ref$ Mask@19 ZeroMask this Node.prev))
      (> (Fractions 25) 0)
      (IsGoodMask Mask@20)
      (IsGoodState (heapFragment$Mu$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) mu)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null))
      (wf Heap@0 Mask@19 ZeroMask)
      (wf Heap@0 Mask@20 ZeroMask)
   )
anon24
)) :named ax_anon60_Then@6))
(assert (! (=> anon24 (and true 
   (and true
   )
(or anon24@1 anon24_assertion)
)) :named ax_anon24))
(assert (! (=> anon24@1 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon24@1_assertion anon24@2)
)) :named ax_anon24@1))
(assert (! (=> anon24_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon24_assertion))
(assert (! (=> anon24@1_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask this Node.next))
   )
))) :named ax_anon24@1_assertion))
(assert (! (=> anon24@2 (and true 
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask this Node.next))
   )
(or anon61_Else anon61_Then)
)) :named ax_anon24@2))
(assert (! (=> anon61_Else (and true 
   (and true
      (= $@condition_$18 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null)
      (not $@condition_$18)
   )
anon26
)) :named ax_anon61_Else))
(assert (! (=> anon61_Then (and true 
   (and true
      $@condition_$18
      (= $@condition_$18 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null))
   )
(or anon61_Then@1 anon61_Then_assertion)
)) :named ax_anon61_Then))
(assert (! (=> anon61_Then@1 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon61_Then@1_assertion anon61_Then@2)
)) :named ax_anon61_Then@1))
(assert (! (=> anon61_Then_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon61_Then_assertion))
(assert (! (=> anon61_Then@1_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask this Node.next))
   )
))) :named ax_anon61_Then@1_assertion))
(assert (! (=> anon61_Then@2 (and true 
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask this Node.next))
   )
(or anon61_Then@2_assertion anon61_Then@3)
)) :named ax_anon61_Then@2))
(assert (! (=> anon61_Then@2_assertion (not (and true
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null)))
   )
))) :named ax_anon61_Then@2_assertion))
(assert (! (=> anon61_Then@3 (and true 
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null)))
   )
(or anon61_Then@3_assertion anon61_Then@4)
)) :named ax_anon61_Then@3))
(assert (! (=> anon61_Then@3_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) Node.prev))
   )
))) :named ax_anon61_Then@3_assertion))
(assert (! (=> anon61_Then@4 (and true 
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) Node.prev))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) Node.prev) null))
   )
(or anon61_Then@4_assertion anon61_Then@5)
)) :named ax_anon61_Then@4))
(assert (! (=> anon61_Then@4_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon61_Then@4_assertion))
(assert (! (=> anon61_Then@5 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon61_Then@5_assertion anon61_Then@6)
)) :named ax_anon61_Then@5))
(assert (! (=> anon61_Then@5_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask this Node.next))
   )
))) :named ax_anon61_Then@5_assertion))
(assert (! (=> anon61_Then@6 (and true 
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask this Node.next))
   )
(or anon61_Then@6_assertion anon61_Then@7)
)) :named ax_anon61_Then@6))
(assert (! (=> anon61_Then@6_assertion (not (and true
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null)))
   )
))) :named ax_anon61_Then@6_assertion))
(assert (! (=> anon61_Then@7 (and true 
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null)))
   )
(or anon61_Then@7_assertion anon61_Then@8)
)) :named ax_anon61_Then@7))
(assert (! (=> anon61_Then@7_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) Node.prev))
   )
))) :named ax_anon61_Then@7_assertion))
(assert (! (=> anon61_Then@8 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) Node.prev) this)
      (=> true (CanRead$ref$ Mask@21 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) Node.prev))
   )
anon26
)) :named ax_anon61_Then@8))
(assert (! (=> anon26 (and true 
   (and true
   )
(or anon26@1 anon26_assertion)
)) :named ax_anon26))
(assert (! (=> anon26@1 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon26@1_assertion anon26@2)
)) :named ax_anon26@1))
(assert (! (=> anon26_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon26_assertion))
(assert (! (=> anon26@1_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask this Node.prev))
   )
))) :named ax_anon26@1_assertion))
(assert (! (=> anon26@2 (and true 
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask this Node.prev))
   )
(or anon62_Else anon62_Then)
)) :named ax_anon26@2))
(assert (! (=> anon62_Else (and true 
   (and true
      (= $@condition_$19 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null)
      (not $@condition_$19)
   )
anon28
)) :named ax_anon62_Else))
(assert (! (=> anon62_Then (and true 
   (and true
      $@condition_$19
      (= $@condition_$19 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null))
   )
(or anon62_Then@1 anon62_Then_assertion)
)) :named ax_anon62_Then))
(assert (! (=> anon62_Then@1 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon62_Then@1_assertion anon62_Then@2)
)) :named ax_anon62_Then@1))
(assert (! (=> anon62_Then_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon62_Then_assertion))
(assert (! (=> anon62_Then@1_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask this Node.prev))
   )
))) :named ax_anon62_Then@1_assertion))
(assert (! (=> anon62_Then@2 (and true 
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask this Node.prev))
   )
(or anon62_Then@2_assertion anon62_Then@3)
)) :named ax_anon62_Then@2))
(assert (! (=> anon62_Then@2_assertion (not (and true
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null)))
   )
))) :named ax_anon62_Then@2_assertion))
(assert (! (=> anon62_Then@3 (and true 
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null)))
   )
(or anon62_Then@3_assertion anon62_Then@4)
)) :named ax_anon62_Then@3))
(assert (! (=> anon62_Then@3_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) Node.next))
   )
))) :named ax_anon62_Then@3_assertion))
(assert (! (=> anon62_Then@4 (and true 
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) Node.next))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) Node.next) null))
   )
(or anon62_Then@4_assertion anon62_Then@5)
)) :named ax_anon62_Then@4))
(assert (! (=> anon62_Then@4_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon62_Then@4_assertion))
(assert (! (=> anon62_Then@5 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon62_Then@5_assertion anon62_Then@6)
)) :named ax_anon62_Then@5))
(assert (! (=> anon62_Then@5_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask this Node.prev))
   )
))) :named ax_anon62_Then@5_assertion))
(assert (! (=> anon62_Then@6 (and true 
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask this Node.prev))
   )
(or anon62_Then@6_assertion anon62_Then@7)
)) :named ax_anon62_Then@6))
(assert (! (=> anon62_Then@6_assertion (not (and true
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null)))
   )
))) :named ax_anon62_Then@6_assertion))
(assert (! (=> anon62_Then@7 (and true 
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null)))
   )
(or anon62_Then@7_assertion anon62_Then@8)
)) :named ax_anon62_Then@7))
(assert (! (=> anon62_Then@7_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) Node.next))
   )
))) :named ax_anon62_Then@7_assertion))
(assert (! (=> anon62_Then@8 (and true 
   (and true
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) Node.next) this)
      (=> true (CanRead$ref$ Mask@21 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) Node.next))
   )
anon28
)) :named ax_anon62_Then@8))
(assert (! (=> anon28 (and true 
   (and true
   )
(or anon28@1 anon28_assertion)
)) :named ax_anon28))
(assert (! (=> anon28@1 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon28@1_assertion anon28@2)
)) :named ax_anon28@1))
(assert (! (=> anon28_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon28_assertion))
(assert (! (=> anon28@1_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask this Node.next))
   )
))) :named ax_anon28@1_assertion))
(assert (! (=> anon28@2 (and true 
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask this Node.next))
   )
(or anon63_Else anon63_Then)
)) :named ax_anon28@2))
(assert (! (=> anon63_Else (and true 
   (and true
      (= $@condition_$20 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null)))
      (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null)
      (not $@condition_$20)
   )
anon30
)) :named ax_anon63_Else))
(assert (! (=> anon63_Then (and true 
   (and true
      $@condition_$20
      (= $@condition_$20 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null))
   )
(or anon63_Then@1 anon63_Then_assertion)
)) :named ax_anon63_Then))
(assert (! (=> anon63_Then@1 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon63_Then@1_assertion anon63_Then@2)
)) :named ax_anon63_Then@1))
(assert (! (=> anon63_Then_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon63_Then_assertion))
(assert (! (=> anon63_Then@1_assertion (not (and true
   (and true
      (=> true (CanRead$Mu$ Mask@21 ZeroMask this mu))
   )
))) :named ax_anon63_Then@1_assertion))
(assert (! (=> anon63_Then@2 (and true 
   (and true
      (=> true (CanRead$Mu$ Mask@21 ZeroMask this mu))
   )
(or anon63_Then@2_assertion anon63_Then@3)
)) :named ax_anon63_Then@2))
(assert (! (=> anon63_Then@2_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon63_Then@2_assertion))
(assert (! (=> anon63_Then@3 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon63_Then@3_assertion anon63_Then@4)
)) :named ax_anon63_Then@3))
(assert (! (=> anon63_Then@3_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask this Node.next))
   )
))) :named ax_anon63_Then@3_assertion))
(assert (! (=> anon63_Then@4 (and true 
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask this Node.next))
   )
(or anon63_Then@4_assertion anon63_Then@5)
)) :named ax_anon63_Then@4))
(assert (! (=> anon63_Then@4_assertion (not (and true
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null)))
   )
))) :named ax_anon63_Then@4_assertion))
(assert (! (=> anon63_Then@5 (and true 
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) null)))
   )
(or anon63_Then@5_assertion anon63_Then@6)
)) :named ax_anon63_Then@5))
(assert (! (=> anon63_Then@5_assertion (not (and true
   (and true
      (=> true (CanRead$Mu$ Mask@21 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) mu))
   )
))) :named ax_anon63_Then@5_assertion))
(assert (! (=> anon63_Then@6 (and true 
   (and true
      (=> true (CanRead$Mu$ Mask@21 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) mu))
      (MuBelow (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap@0 this mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.next) mu))
   )
anon30
)) :named ax_anon63_Then@6))
(assert (! (=> anon30 (and true 
   (and true
   )
(or anon30@1 anon30_assertion)
)) :named ax_anon30))
(assert (! (=> anon30@1 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon30@1_assertion anon30@2)
)) :named ax_anon30@1))
(assert (! (=> anon30_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon30_assertion))
(assert (! (=> anon30@1_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask this Node.prev))
   )
))) :named ax_anon30@1_assertion))
(assert (! (=> anon30@2 (and true 
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask this Node.prev))
   )
anon64_Then
)) :named ax_anon30@2))
(assert (! (=> anon64_Then (and true 
   (and true
      $@condition_$21
      (= $@condition_$21 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null)))
      (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null))
   )
(or anon64_Then@1 anon64_Then_assertion)
)) :named ax_anon64_Then))
(assert (! (=> anon64_Then@1 (and true 
   (and true
      (=> true (not (= this null)))
   )
(or anon64_Then@1_assertion anon64_Then@2)
)) :named ax_anon64_Then@1))
(assert (! (=> anon64_Then_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon64_Then_assertion))
(assert (! (=> anon64_Then@1_assertion (not (and true
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask this Node.prev))
   )
))) :named ax_anon64_Then@1_assertion))
(assert (! (=> anon64_Then@2 (and true 
   (and true
      (=> true (CanRead$ref$ Mask@21 ZeroMask this Node.prev))
   )
(or anon64_Then@2_assertion anon64_Then@3)
)) :named ax_anon64_Then@2))
(assert (! (=> anon64_Then@2_assertion (not (and true
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null)))
   )
))) :named ax_anon64_Then@2_assertion))
(assert (! (=> anon64_Then@3 (and true 
   (and true
      (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) null)))
   )
(or anon64_Then@3_assertion anon64_Then@4)
)) :named ax_anon64_Then@3))
(assert (! (=> anon64_Then@3_assertion (not (and true
   (and true
      (=> true (CanRead$Mu$ Mask@21 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) mu))
   )
))) :named ax_anon64_Then@3_assertion))
(assert (! (=> anon64_Then@4 (and true 
   (and true
      (=> true (CanRead$Mu$ Mask@21 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this Node.prev) mu))
   )
(or anon64_Then@4_assertion anon64_Then@5)
)) :named ax_anon64_Then@4))
(assert (! (=> anon64_Then@4_assertion (not (and true
   (and true
      (=> true (not (= this null)))
   )
))) :named ax_anon64_Then@4_assertion))
(assert (! (=> anon64_Then@5 (and true 
   (and true
      (=> true (not (= this null)))
   )
anon64_Then@5_assertion
)) :named ax_anon64_Then@5))
(assert (! (=> anon64_Then@5_assertion (not (and true
   (and true
      (=> true (CanRead$Mu$ Mask@21 ZeroMask this mu))
   )
))) :named ax_anon64_Then@5_assertion))
(assert (=> false (not (and
   anon16@1_assertion
   anon16_assertion
   anon18@1_assertion
   anon18_assertion
   anon20@1_assertion
   anon20_assertion
   anon22@1_assertion
   anon22_assertion
   anon24@1_assertion
   anon24_assertion
   anon26@1_assertion
   anon26_assertion
   anon28@1_assertion
   anon28_assertion
   anon30@1_assertion
   anon30_assertion
   anon58_Then@1_assertion
   anon58_Then@2_assertion
   anon58_Then@3_assertion
   anon58_Then@4_assertion
   anon58_Then@5_assertion
   anon58_Then_assertion
   anon60_Then@1_assertion
   anon60_Then@2_assertion
   anon60_Then@3_assertion
   anon60_Then@4_assertion
   anon60_Then@5_assertion
   anon60_Then_assertion
   anon61_Then@1_assertion
   anon61_Then@2_assertion
   anon61_Then@3_assertion
   anon61_Then@4_assertion
   anon61_Then@5_assertion
   anon61_Then@6_assertion
   anon61_Then@7_assertion
   anon61_Then_assertion
   anon62_Then@1_assertion
   anon62_Then@2_assertion
   anon62_Then@3_assertion
   anon62_Then@4_assertion
   anon62_Then@5_assertion
   anon62_Then@6_assertion
   anon62_Then@7_assertion
   anon62_Then_assertion
   anon63_Then@1_assertion
   anon63_Then@2_assertion
   anon63_Then@3_assertion
   anon63_Then@4_assertion
   anon63_Then@5_assertion
   anon63_Then_assertion
   anon64_Then@1_assertion
   anon64_Then@2_assertion
   anon64_Then@3_assertion
   anon64_Then@4_assertion
   anon64_Then@5_assertion
   anon64_Then_assertion
))))

;Commands
   (check-sat)
   ;(get-unsat-core)
