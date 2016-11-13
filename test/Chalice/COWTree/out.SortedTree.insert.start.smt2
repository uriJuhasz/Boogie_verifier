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
(declare-sort Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ 0)
(declare-sort Field$Bool$ 0)
(declare-sort Field$Int$ 0)
(declare-sort Field$Mu$ 0)
(declare-sort Field$ref$ 0)
(declare-sort Field$Seq$Int$$ 0)
(declare-sort ModuleName 0)
(declare-sort Mu 0)
(declare-sort PermissionComponent 0)
(declare-sort ref 0)
(declare-sort Seq$Int$ 0)
(declare-sort Seq$ref$ 0)
(declare-sort TypeName 0)

;Functions
(declare-fun $LockBottom ( ) Mu)
(declare-fun channelK ( ) Int)
(declare-fun Credits ( ) $@Map@@ref@To@Int@@)
(declare-fun CurrentModule ( ) ModuleName)
(declare-fun DecPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun DecPerm$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Bool$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun DecPerm$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun DecPerm$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun DecPerm$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun DecPerm$Seq$Int$$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Seq$Int$$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun dtype ( ref ) TypeName)
(declare-fun exhaleMask@_102@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_102@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_63@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_71@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_71@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_71@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_71@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_71@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_84@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_84@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_84@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_84@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_84@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_84@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_84@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_84@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_84@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_84@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_95@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_95@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_95@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_95@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_95@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_95@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_95@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun foldK@_94 ( ) Int)
(declare-fun forkK ( ) Field$Int$)
(declare-fun Fractions ( Int ) Int)
(declare-fun Heap ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@18 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun held ( ) Field$Int$)
(declare-fun IncPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun IncPerm$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Bool$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun IncPerm$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun IncPerm$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun IncPerm$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun IncPerm$Seq$Int$$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Seq$Int$$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun inhaleHeap@_101@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun inhaleHeap@_61@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun inhaleHeap@_65@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun inhaleHeap@_79@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun inhaleHeap@_93@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ ( Bool $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( Bool $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun ite$$@Map@@PermissionComponent@To@Int@@$ ( Bool $@Map@@PermissionComponent@To@Int@@ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun ite$$@Map@@ref@To@Int@@$ ( Bool $@Map@@ref@To@Int@@ $@Map@@ref@To@Int@@ ) $@Map@@ref@To@Int@@)
(declare-fun ite$Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$ ( Bool Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ) Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)
(declare-fun ite$Field$Bool$$ ( Bool Field$Bool$ Field$Bool$ ) Field$Bool$)
(declare-fun ite$Field$Int$$ ( Bool Field$Int$ Field$Int$ ) Field$Int$)
(declare-fun ite$Field$Mu$$ ( Bool Field$Mu$ Field$Mu$ ) Field$Mu$)
(declare-fun ite$Field$ref$$ ( Bool Field$ref$ Field$ref$ ) Field$ref$)
(declare-fun ite$Field$Seq$Int$$$ ( Bool Field$Seq$Int$$ Field$Seq$Int$$ ) Field$Seq$Int$$)
(declare-fun ite$Int$ ( Bool Int Int ) Int)
(declare-fun ite$ModuleName$ ( Bool ModuleName ModuleName ) ModuleName)
(declare-fun ite$Mu$ ( Bool Mu Mu ) Mu)
(declare-fun ite$PermissionComponent$ ( Bool PermissionComponent PermissionComponent ) PermissionComponent)
(declare-fun ite$ref$ ( Bool ref ref ) ref)
(declare-fun ite$Seq$Int$$ ( Bool Seq$Int$ Seq$Int$ ) Seq$Int$)
(declare-fun ite$Seq$ref$$ ( Bool Seq$ref$ Seq$ref$ ) Seq$ref$)
(declare-fun ite$TypeName$ ( Bool TypeName TypeName ) TypeName)
(declare-fun joinable ( ) Field$Int$)
(declare-fun k@1 ( ) Int)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Bool$ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Seq$Int$$ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Bool$ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Int$ ) Int)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Mu$ ) Mu)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$ref$ ) ref)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Seq$Int$$ ) Seq$Int$)
(declare-fun MapRead$$@Map@@PermissionComponent@To@Int@@$ ( $@Map@@PermissionComponent@To@Int@@ PermissionComponent ) Int)
(declare-fun MapRead$$@Map@@ref@To@Int@@$ ( $@Map@@ref@To@Int@@ ref ) Int)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Bool$ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Seq$Int$$ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Bool$ Bool ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Int$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$ref$ ref ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Seq$Int$$ Seq$Int$ ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
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
(declare-fun Mask@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun methodCallK@_70 ( ) Int)
(declare-fun methodCallK@_83 ( ) Int)
(declare-fun methodK@_58 ( ) Int)
(declare-fun module@default ( ) ModuleName)
(declare-fun monitorK ( ) Int)
(declare-fun mu ( ) Field$Mu$)
(declare-fun n@3 ( ) ref)
(declare-fun nostate ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun null ( ) ref)
(declare-fun nw@_66@0 ( ) ref)
(declare-fun perm$N ( ) PermissionComponent)
(declare-fun perm$R ( ) PermissionComponent)
(declare-fun Permission$denominator ( ) Int)
(declare-fun Permission$Full ( ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun Permission$FullFraction ( ) Int)
(declare-fun Permission$Zero ( ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun predicateK ( ) Int)
(declare-fun r@20 ( ) ref)
(declare-fun r@45 ( ) ref)
(declare-fun r@45@0 ( ) ref)
(declare-fun r@5 ( ) ref)
(declare-fun rdheld ( ) Field$Bool$)
(declare-fun Seq@Append$Int$ ( Seq$Int$ Seq$Int$ ) Seq$Int$)
(declare-fun Seq@Append$ref$ ( Seq$ref$ Seq$ref$ ) Seq$ref$)
(declare-fun Seq@Build$Int$ ( Seq$Int$ Int Int Int ) Seq$Int$)
(declare-fun Seq@Build$ref$ ( Seq$ref$ Int ref Int ) Seq$ref$)
(declare-fun Seq@Drop$Int$ ( Seq$Int$ Int ) Seq$Int$)
(declare-fun Seq@Drop$ref$ ( Seq$ref$ Int ) Seq$ref$)
(declare-fun Seq@Empty$Int$ ( ) Seq$Int$)
(declare-fun Seq@Empty$ref$ ( ) Seq$ref$)
(declare-fun Seq@Index$Int$ ( Seq$Int$ Int ) Int)
(declare-fun Seq@Index$ref$ ( Seq$ref$ Int ) ref)
(declare-fun Seq@Length$Int$ ( Seq$Int$ ) Int)
(declare-fun Seq@Length$ref$ ( Seq$ref$ ) Int)
(declare-fun Seq@Range ( Int Int ) Seq$Int$)
(declare-fun Seq@Singleton$Int$ ( Int ) Seq$Int$)
(declare-fun Seq@Singleton$ref$ ( ref ) Seq$ref$)
(declare-fun Seq@Take$Int$ ( Seq$Int$ Int ) Seq$Int$)
(declare-fun Seq@Take$ref$ ( Seq$ref$ Int ) Seq$ref$)
(declare-fun SortedTree.keys ( ) Field$Seq$Int$$)
(declare-fun SortedTree.numClones ( ) Field$Int$)
(declare-fun SortedTree.root ( ) Field$ref$)
(declare-fun SortedTree.valid ( ) Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)
(declare-fun SortedTree@t ( ) TypeName)
(declare-fun SortedTreeNode.key ( ) Field$Int$)
(declare-fun SortedTreeNode.keys ( ) Field$Seq$Int$$)
(declare-fun SortedTreeNode.left ( ) Field$ref$)
(declare-fun SortedTreeNode.right ( ) Field$ref$)
(declare-fun SortedTreeNode.shared ( ) Field$Bool$)
(declare-fun SortedTreeNode.valid ( ) Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)
(declare-fun SortedTreeNode@t ( ) TypeName)
(declare-fun SortedTreeSnapshot.keys ( ) Field$Seq$Int$$)
(declare-fun SortedTreeSnapshot.root ( ) Field$ref$)
(declare-fun SortedTreeSnapshot.valid ( ) Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)
(declare-fun this ( ) ref)
(declare-fun this@40 ( ) ref)
(declare-fun this@42 ( ) ref)
(declare-fun this@42@0 ( ) ref)
(declare-fun unfoldK@_62 ( ) Int)
(declare-fun ZeroCredits ( ) $@Map@@ref@To@Int@@)
(declare-fun ZeroMask ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)

;Predicates
(declare-fun CanAssumeFunctionDefs ( ) Bool)
(declare-fun CanRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ) Bool)
(declare-fun CanRead$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Bool$ ) Bool)
(declare-fun CanRead$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ ) Bool)
(declare-fun CanRead$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ ) Bool)
(declare-fun CanRead$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ ) Bool)
(declare-fun CanRead$Seq$Int$$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Seq$Int$$ ) Bool)
(declare-fun CanWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ) Bool)
(declare-fun CanWrite$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Bool$ ) Bool)
(declare-fun CanWrite$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ ) Bool)
(declare-fun CanWrite$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ ) Bool)
(declare-fun CanWrite$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ ) Bool)
(declare-fun CanWrite$Seq$Int$$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Seq$Int$$ ) Bool)
(declare-fun hasClones@44@0 ( ) Bool)
(declare-fun IsGoodInhaleState ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ) Bool)
(declare-fun IsGoodMask ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ) Bool)
(declare-fun IsGoodState$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) Bool)
(declare-fun IsGoodState$Bool$ ( Bool ) Bool)
(declare-fun IsGoodState$Int$ ( Int ) Bool)
(declare-fun IsGoodState$ref$ ( ref ) Bool)
(declare-fun IsGoodState$Seq$Int$$ ( Seq$Int$ ) Bool)
(declare-fun ite$Bool$ ( Bool Bool Bool ) Bool)
(declare-fun MuBelow ( Mu Mu ) Bool)
(declare-fun NonPredicateField$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ) Bool)
(declare-fun NonPredicateField$Bool$ ( Field$Bool$ ) Bool)
(declare-fun NonPredicateField$Int$ ( Field$Int$ ) Bool)
(declare-fun NonPredicateField$Mu$ ( Field$Mu$ ) Bool)
(declare-fun NonPredicateField$ref$ ( Field$ref$ ) Bool)
(declare-fun NonPredicateField$Seq$Int$$ ( Field$Seq$Int$$ ) Bool)
(declare-fun PredicateField$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ) Bool)
(declare-fun PredicateField$Bool$ ( Field$Bool$ ) Bool)
(declare-fun PredicateField$Int$ ( Field$Int$ ) Bool)
(declare-fun PredicateField$Mu$ ( Field$Mu$ ) Bool)
(declare-fun PredicateField$ref$ ( Field$ref$ ) Bool)
(declare-fun PredicateField$Seq$Int$$ ( Field$Seq$Int$$ ) Bool)
(declare-fun Seq@Contains$Int$ ( Seq$Int$ Int ) Bool)
(declare-fun Seq@Contains$ref$ ( Seq$ref$ ref ) Bool)
(declare-fun Seq@Equal$Int$ ( Seq$Int$ Seq$Int$ ) Bool)
(declare-fun Seq@Equal$ref$ ( Seq$ref$ Seq$ref$ ) Bool)
(declare-fun wf ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ) Bool)

;Axioms
   (assert (! (forall ((|i_1| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i| ref)(|m_1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= v (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_1 i i_1 v) i i_1)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_1 i i_1 v) i i_1)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_0))
   (assert (! (forall ((|i_101| Field$Int$)(|i_100| ref)(|m_52| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_51| $@Map@@PermissionComponent@To@Int@@))(!(= v_51 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_52 i_100 i_101 v_51) i_100 i_101)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_52 i_100 i_101 v_51) i_100 i_101)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_1))
   (assert (! (forall ((|i_115| Field$Bool$)(|i_114| ref)(|m_59| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_58| $@Map@@PermissionComponent@To@Int@@))(!(= v_58 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_59 i_114 i_115 v_58) i_114 i_115)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_59 i_114 i_115 v_58) i_114 i_115)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_2))
   (assert (! (forall ((|i_129| Field$Mu$)(|i_128| ref)(|m_66| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_65| $@Map@@PermissionComponent@To@Int@@))(!(= v_65 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_66 i_128 i_129 v_65) i_128 i_129)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_66 i_128 i_129 v_65) i_128 i_129)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_3))
   (assert (! (forall ((|i_143| Field$Bool$)(|i_142| ref)(|m_73| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_72| Bool))(!(= v_72 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_73 i_142 i_143 v_72) i_142 i_143)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_73 i_142 i_143 v_72) i_142 i_143)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_4))
   (assert (! (forall ((|i_15| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_14| ref)(|m_8| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_7| $@Map@@PermissionComponent@To@Int@@))(!(= v_7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_8 i_14 i_15 v_7) i_14 i_15)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_8 i_14 i_15 v_7) i_14 i_15)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_5))
   (assert (! (forall ((|i_28| PermissionComponent)(|m_15| $@Map@@PermissionComponent@To@Int@@)(|v_14| Int))(!(= v_14 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_15 i_28 v_14) i_28)):pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_15 i_28 v_14) i_28)) :qid map_1_$@Map@@PermissionComponent@To@Int@@ :weight 0 )) :named ax_6))
   (assert (! (forall ((|i_31| Field$Seq$Int$$)(|i_30| ref)(|m_17| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_16| Seq$Int$))(!(= v_16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_17 i_30 i_31 v_16) i_30 i_31)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_17 i_30 i_31 v_16) i_30 i_31)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_7))
   (assert (! (forall ((|i_45| Field$Seq$Int$$)(|i_44| ref)(|m_24| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_23| $@Map@@PermissionComponent@To@Int@@))(!(= v_23 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_24 i_44 i_45 v_23) i_44 i_45)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_24 i_44 i_45 v_23) i_44 i_45)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_8))
   (assert (! (forall ((|i_59| Field$ref$)(|i_58| ref)(|m_31| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_30| ref))(!(= v_30 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_31 i_58 i_59 v_30) i_58 i_59)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_31 i_58 i_59 v_30) i_58 i_59)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_9))
   (assert (! (forall ((|i_73| Field$ref$)(|i_72| ref)(|m_38| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_37| $@Map@@PermissionComponent@To@Int@@))(!(= v_37 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_38 i_72 i_73 v_37) i_72 i_73)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_38 i_72 i_73 v_37) i_72 i_73)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_10))
   (assert (! (forall ((|i_87| Field$Int$)(|i_86| ref)(|m_45| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_44| Int))(!(= v_44 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_45 i_86 i_87 v_44) i_86 i_87)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_45 i_86 i_87 v_44) i_86 i_87)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_11))
   (assert (! (forall ((|v_1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|m_2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_3| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|j_1| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_2| ref)(|j| ref))(!(=> (or (not (= j_1 i_3)) (not (= j i_2))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_2 j j_1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_2 i_2 i_3 v_1) j j_1))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_2 i_2 i_3 v_1) j j_1)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_12))
   (assert (! (forall ((|v_10| $@Map@@PermissionComponent@To@Int@@)(|i_21| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_20| ref)(|j_17| Field$Int$)(|j_16| ref)(|m_11| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_11 j_16 j_17) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_11 i_20 i_21 v_10) j_16 j_17)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_11 i_20 i_21 v_10) j_16 j_17)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Int__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_13))
   (assert (! (forall ((|v_11| $@Map@@PermissionComponent@To@Int@@)(|i_23| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_22| ref)(|j_19| Field$ref$)(|j_18| ref)(|m_12| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_12 j_18 j_19) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_12 i_22 i_23 v_11) j_18 j_19)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_12 i_22 i_23 v_11) j_18 j_19)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__ref__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_14))
   (assert (! (forall ((|v_12| $@Map@@PermissionComponent@To@Int@@)(|i_25| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_24| ref)(|j_21| Field$Mu$)(|j_20| ref)(|m_13| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_13 j_20 j_21) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_13 i_24 i_25 v_12) j_20 j_21)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_13 i_24 i_25 v_12) j_20 j_21)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Mu__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_15))
   (assert (! (forall ((|v_13| $@Map@@PermissionComponent@To@Int@@)(|i_27| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_26| ref)(|j_23| Field$Seq$Int$$)(|j_22| ref)(|m_14| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_14 j_22 j_23) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_14 i_26 i_27 v_13) j_22 j_23)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_14 i_26 i_27 v_13) j_22 j_23)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Seq$Int$__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_16))
   (assert (! (forall ((|v_15| Int)(|m_16| $@Map@@PermissionComponent@To@Int@@)(|i_29| PermissionComponent)(|j_24| PermissionComponent))(!(=> (not (= j_24 i_29)) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ m_16 j_24) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_16 i_29 v_15) j_24))):pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_16 i_29 v_15) j_24)) :qid map_2_$@Map@@PermissionComponent@To@Int@@ :weight 0 )) :named ax_17))
   (assert (! (forall ((|v_17| Seq$Int$)(|m_18| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_33| Field$Seq$Int$$)(|j_26| Field$Seq$Int$$)(|i_32| ref)(|j_25| ref))(!(=> (or (not (= j_26 i_33)) (not (= j_25 i_32))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_18 j_25 j_26) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_18 i_32 i_33 v_17) j_25 j_26))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_18 i_32 i_33 v_17) j_25 j_26)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_18))
   (assert (! (forall ((|v_18| Seq$Int$)(|i_35| Field$Seq$Int$$)(|i_34| ref)(|j_28| Field$Bool$)(|j_27| ref)(|m_19| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_19 j_27 j_28) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_19 i_34 i_35 v_18) j_27 j_28)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_19 i_34 i_35 v_18) j_27 j_28)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__Seq$Int$ :weight 0 )) :named ax_19))
   (assert (! (forall ((|v_19| Seq$Int$)(|i_37| Field$Seq$Int$$)(|i_36| ref)(|j_30| Field$Int$)(|j_29| ref)(|m_20| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_20 j_29 j_30) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_20 i_36 i_37 v_19) j_29 j_30)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_20 i_36 i_37 v_19) j_29 j_30)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Int__Seq$Int$ :weight 0 )) :named ax_20))
   (assert (! (forall ((|v_2| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_5| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_4| ref)(|j_3| Field$Bool$)(|j_2| ref)(|m_3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_3 j_2 j_3) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_3 i_4 i_5 v_2) j_2 j_3)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_3 i_4 i_5 v_2) j_2 j_3)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_21))
   (assert (! (forall ((|v_20| Seq$Int$)(|i_39| Field$Seq$Int$$)(|i_38| ref)(|j_32| Field$ref$)(|j_31| ref)(|m_21| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_21 j_31 j_32) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_21 i_38 i_39 v_20) j_31 j_32)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_21 i_38 i_39 v_20) j_31 j_32)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__Seq$Int$ :weight 0 )) :named ax_22))
   (assert (! (forall ((|v_21| Seq$Int$)(|i_41| Field$Seq$Int$$)(|i_40| ref)(|j_34| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|j_33| ref)(|m_22| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_22 j_33 j_34) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_22 i_40 i_41 v_21) j_33 j_34)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_22 i_40 i_41 v_21) j_33 j_34)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$Int$ :weight 0 )) :named ax_23))
   (assert (! (forall ((|v_22| Seq$Int$)(|i_43| Field$Seq$Int$$)(|i_42| ref)(|j_36| Field$Mu$)(|j_35| ref)(|m_23| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ m_23 j_35 j_36) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_23 i_42 i_43 v_22) j_35 j_36)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_23 i_42 i_43 v_22) j_35 j_36)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Mu__Seq$Int$ :weight 0 )) :named ax_24))
   (assert (! (forall ((|v_24| $@Map@@PermissionComponent@To@Int@@)(|m_25| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_47| Field$Seq$Int$$)(|j_38| Field$Seq$Int$$)(|i_46| ref)(|j_37| ref))(!(=> (or (not (= j_38 i_47)) (not (= j_37 i_46))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_25 j_37 j_38) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_25 i_46 i_47 v_24) j_37 j_38))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_25 i_46 i_47 v_24) j_37 j_38)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_25))
   (assert (! (forall ((|v_25| $@Map@@PermissionComponent@To@Int@@)(|i_49| Field$Seq$Int$$)(|i_48| ref)(|j_40| Field$Bool$)(|j_39| ref)(|m_26| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_26 j_39 j_40) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_26 i_48 i_49 v_25) j_39 j_40)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_26 i_48 i_49 v_25) j_39 j_40)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__Seq$Int$ :weight 0 )) :named ax_26))
   (assert (! (forall ((|v_26| $@Map@@PermissionComponent@To@Int@@)(|i_51| Field$Seq$Int$$)(|i_50| ref)(|j_42| Field$Int$)(|j_41| ref)(|m_27| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_27 j_41 j_42) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_27 i_50 i_51 v_26) j_41 j_42)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_27 i_50 i_51 v_26) j_41 j_42)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Int__Seq$Int$ :weight 0 )) :named ax_27))
   (assert (! (forall ((|v_27| $@Map@@PermissionComponent@To@Int@@)(|i_53| Field$Seq$Int$$)(|i_52| ref)(|j_44| Field$ref$)(|j_43| ref)(|m_28| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_28 j_43 j_44) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_28 i_52 i_53 v_27) j_43 j_44)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_28 i_52 i_53 v_27) j_43 j_44)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__ref__Seq$Int$ :weight 0 )) :named ax_28))
   (assert (! (forall ((|v_28| $@Map@@PermissionComponent@To@Int@@)(|i_55| Field$Seq$Int$$)(|i_54| ref)(|j_46| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|j_45| ref)(|m_29| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_29 j_45 j_46) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_29 i_54 i_55 v_28) j_45 j_46)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_29 i_54 i_55 v_28) j_45 j_46)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$Int$ :weight 0 )) :named ax_29))
   (assert (! (forall ((|v_29| $@Map@@PermissionComponent@To@Int@@)(|i_57| Field$Seq$Int$$)(|i_56| ref)(|j_48| Field$Mu$)(|j_47| ref)(|m_30| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_30 j_47 j_48) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_30 i_56 i_57 v_29) j_47 j_48)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_30 i_56 i_57 v_29) j_47 j_48)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Mu__Seq$Int$ :weight 0 )) :named ax_30))
   (assert (! (forall ((|v_3| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_7| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_6| ref)(|j_5| Field$Int$)(|j_4| ref)(|m_4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_4 j_4 j_5) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_4 i_6 i_7 v_3) j_4 j_5)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_4 i_6 i_7 v_3) j_4 j_5)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Int__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_31))
   (assert (! (forall ((|v_31| ref)(|m_32| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_61| Field$ref$)(|j_50| Field$ref$)(|i_60| ref)(|j_49| ref))(!(=> (or (not (= j_50 i_61)) (not (= j_49 i_60))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_32 j_49 j_50) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_32 i_60 i_61 v_31) j_49 j_50))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_32 i_60 i_61 v_31) j_49 j_50)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_32))
   (assert (! (forall ((|v_32| ref)(|i_63| Field$ref$)(|i_62| ref)(|j_52| Field$Bool$)(|j_51| ref)(|m_33| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_33 j_51 j_52) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_33 i_62 i_63 v_32) j_51 j_52)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_33 i_62 i_63 v_32) j_51 j_52)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__ref :weight 0 )) :named ax_33))
   (assert (! (forall ((|v_33| ref)(|i_65| Field$ref$)(|i_64| ref)(|j_54| Field$Int$)(|j_53| ref)(|m_34| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_34 j_53 j_54) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_34 i_64 i_65 v_33) j_53 j_54)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_34 i_64 i_65 v_33) j_53 j_54)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Int__ref :weight 0 )) :named ax_34))
   (assert (! (forall ((|v_34| ref)(|i_67| Field$ref$)(|i_66| ref)(|j_56| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|j_55| ref)(|m_35| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_35 j_55 j_56) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_35 i_66 i_67 v_34) j_55 j_56)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_35 i_66 i_67 v_34) j_55 j_56)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref :weight 0 )) :named ax_35))
   (assert (! (forall ((|v_35| ref)(|i_69| Field$ref$)(|i_68| ref)(|j_58| Field$Mu$)(|j_57| ref)(|m_36| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ m_36 j_57 j_58) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_36 i_68 i_69 v_35) j_57 j_58)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_36 i_68 i_69 v_35) j_57 j_58)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Mu__ref :weight 0 )) :named ax_36))
   (assert (! (forall ((|v_36| ref)(|i_71| Field$ref$)(|i_70| ref)(|j_60| Field$Seq$Int$$)(|j_59| ref)(|m_37| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_37 j_59 j_60) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_37 i_70 i_71 v_36) j_59 j_60)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_37 i_70 i_71 v_36) j_59 j_60)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$Int$__ref :weight 0 )) :named ax_37))
   (assert (! (forall ((|v_38| $@Map@@PermissionComponent@To@Int@@)(|m_39| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_75| Field$ref$)(|j_62| Field$ref$)(|i_74| ref)(|j_61| ref))(!(=> (or (not (= j_62 i_75)) (not (= j_61 i_74))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_39 j_61 j_62) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_39 i_74 i_75 v_38) j_61 j_62))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_39 i_74 i_75 v_38) j_61 j_62)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_38))
   (assert (! (forall ((|v_39| $@Map@@PermissionComponent@To@Int@@)(|i_77| Field$ref$)(|i_76| ref)(|j_64| Field$Bool$)(|j_63| ref)(|m_40| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_40 j_63 j_64) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_40 i_76 i_77 v_39) j_63 j_64)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_40 i_76 i_77 v_39) j_63 j_64)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__ref :weight 0 )) :named ax_39))
   (assert (! (forall ((|v_4| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_9| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_8| ref)(|j_7| Field$ref$)(|j_6| ref)(|m_5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_5 j_6 j_7) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_5 i_8 i_9 v_4) j_6 j_7)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_5 i_8 i_9 v_4) j_6 j_7)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_40))
   (assert (! (forall ((|v_40| $@Map@@PermissionComponent@To@Int@@)(|i_79| Field$ref$)(|i_78| ref)(|j_66| Field$Int$)(|j_65| ref)(|m_41| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_41 j_65 j_66) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_41 i_78 i_79 v_40) j_65 j_66)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_41 i_78 i_79 v_40) j_65 j_66)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Int__ref :weight 0 )) :named ax_41))
   (assert (! (forall ((|v_41| $@Map@@PermissionComponent@To@Int@@)(|i_81| Field$ref$)(|i_80| ref)(|j_68| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|j_67| ref)(|m_42| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_42 j_67 j_68) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_42 i_80 i_81 v_41) j_67 j_68)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_42 i_80 i_81 v_41) j_67 j_68)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref :weight 0 )) :named ax_42))
   (assert (! (forall ((|v_42| $@Map@@PermissionComponent@To@Int@@)(|i_83| Field$ref$)(|i_82| ref)(|j_70| Field$Mu$)(|j_69| ref)(|m_43| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_43 j_69 j_70) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_43 i_82 i_83 v_42) j_69 j_70)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_43 i_82 i_83 v_42) j_69 j_70)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Mu__ref :weight 0 )) :named ax_43))
   (assert (! (forall ((|v_43| $@Map@@PermissionComponent@To@Int@@)(|i_85| Field$ref$)(|i_84| ref)(|j_72| Field$Seq$Int$$)(|j_71| ref)(|m_44| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_44 j_71 j_72) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_44 i_84 i_85 v_43) j_71 j_72)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_44 i_84 i_85 v_43) j_71 j_72)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Seq$Int$__ref :weight 0 )) :named ax_44))
   (assert (! (forall ((|v_45| Int)(|m_46| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_89| Field$Int$)(|j_74| Field$Int$)(|i_88| ref)(|j_73| ref))(!(=> (or (not (= j_74 i_89)) (not (= j_73 i_88))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_46 j_73 j_74) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_46 i_88 i_89 v_45) j_73 j_74))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_46 i_88 i_89 v_45) j_73 j_74)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_45))
   (assert (! (forall ((|v_46| Int)(|i_91| Field$Int$)(|i_90| ref)(|j_76| Field$Bool$)(|j_75| ref)(|m_47| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_47 j_75 j_76) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_47 i_90 i_91 v_46) j_75 j_76)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_47 i_90 i_91 v_46) j_75 j_76)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__Int :weight 0 )) :named ax_46))
   (assert (! (forall ((|v_47| Int)(|i_93| Field$Int$)(|i_92| ref)(|j_78| Field$ref$)(|j_77| ref)(|m_48| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_48 j_77 j_78) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_48 i_92 i_93 v_47) j_77 j_78)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_48 i_92 i_93 v_47) j_77 j_78)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__Int :weight 0 )) :named ax_47))
   (assert (! (forall ((|v_48| Int)(|i_95| Field$Int$)(|i_94| ref)(|j_80| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|j_79| ref)(|m_49| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_49 j_79 j_80) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_49 i_94 i_95 v_48) j_79 j_80)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_49 i_94 i_95 v_48) j_79 j_80)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Int :weight 0 )) :named ax_48))
   (assert (! (forall ((|v_49| Int)(|i_97| Field$Int$)(|i_96| ref)(|j_82| Field$Mu$)(|j_81| ref)(|m_50| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ m_50 j_81 j_82) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_50 i_96 i_97 v_49) j_81 j_82)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_50 i_96 i_97 v_49) j_81 j_82)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Mu__Int :weight 0 )) :named ax_49))
   (assert (! (forall ((|v_5| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_11| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_10| ref)(|j_9| Field$Mu$)(|j_8| ref)(|m_6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ m_6 j_8 j_9) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_6 i_10 i_11 v_5) j_8 j_9)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_6 i_10 i_11 v_5) j_8 j_9)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Mu__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_50))
   (assert (! (forall ((|v_50| Int)(|i_99| Field$Int$)(|i_98| ref)(|j_84| Field$Seq$Int$$)(|j_83| ref)(|m_51| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_51 j_83 j_84) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_51 i_98 i_99 v_50) j_83 j_84)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_51 i_98 i_99 v_50) j_83 j_84)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$Int$__Int :weight 0 )) :named ax_51))
   (assert (! (forall ((|v_52| $@Map@@PermissionComponent@To@Int@@)(|m_53| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_103| Field$Int$)(|j_86| Field$Int$)(|i_102| ref)(|j_85| ref))(!(=> (or (not (= j_86 i_103)) (not (= j_85 i_102))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_53 j_85 j_86) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_53 i_102 i_103 v_52) j_85 j_86))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_53 i_102 i_103 v_52) j_85 j_86)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_52))
   (assert (! (forall ((|v_53| $@Map@@PermissionComponent@To@Int@@)(|i_105| Field$Int$)(|i_104| ref)(|j_88| Field$Bool$)(|j_87| ref)(|m_54| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_54 j_87 j_88) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_54 i_104 i_105 v_53) j_87 j_88)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_54 i_104 i_105 v_53) j_87 j_88)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__Int :weight 0 )) :named ax_53))
   (assert (! (forall ((|v_54| $@Map@@PermissionComponent@To@Int@@)(|i_107| Field$Int$)(|i_106| ref)(|j_90| Field$ref$)(|j_89| ref)(|m_55| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_55 j_89 j_90) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_55 i_106 i_107 v_54) j_89 j_90)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_55 i_106 i_107 v_54) j_89 j_90)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__ref__Int :weight 0 )) :named ax_54))
   (assert (! (forall ((|v_55| $@Map@@PermissionComponent@To@Int@@)(|i_109| Field$Int$)(|i_108| ref)(|j_92| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|j_91| ref)(|m_56| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_56 j_91 j_92) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_56 i_108 i_109 v_55) j_91 j_92)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_56 i_108 i_109 v_55) j_91 j_92)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Int :weight 0 )) :named ax_55))
   (assert (! (forall ((|v_56| $@Map@@PermissionComponent@To@Int@@)(|i_111| Field$Int$)(|i_110| ref)(|j_94| Field$Mu$)(|j_93| ref)(|m_57| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_57 j_93 j_94) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_57 i_110 i_111 v_56) j_93 j_94)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_57 i_110 i_111 v_56) j_93 j_94)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Mu__Int :weight 0 )) :named ax_56))
   (assert (! (forall ((|v_57| $@Map@@PermissionComponent@To@Int@@)(|i_113| Field$Int$)(|i_112| ref)(|j_96| Field$Seq$Int$$)(|j_95| ref)(|m_58| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_58 j_95 j_96) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_58 i_112 i_113 v_57) j_95 j_96)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_58 i_112 i_113 v_57) j_95 j_96)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Seq$Int$__Int :weight 0 )) :named ax_57))
   (assert (! (forall ((|v_59| $@Map@@PermissionComponent@To@Int@@)(|m_60| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_117| Field$Bool$)(|j_98| Field$Bool$)(|i_116| ref)(|j_97| ref))(!(=> (or (not (= j_98 i_117)) (not (= j_97 i_116))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_60 j_97 j_98) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_60 i_116 i_117 v_59) j_97 j_98))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_60 i_116 i_117 v_59) j_97 j_98)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_58))
   (assert (! (forall ((|v_6| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_13| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_12| ref)(|j_11| Field$Seq$Int$$)(|j_10| ref)(|m_7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_7 j_10 j_11) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_7 i_12 i_13 v_6) j_10 j_11)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_7 i_12 i_13 v_6) j_10 j_11)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$Int$__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_59))
   (assert (! (forall ((|v_60| $@Map@@PermissionComponent@To@Int@@)(|i_119| Field$Bool$)(|i_118| ref)(|j_100| Field$Int$)(|j_99| ref)(|m_61| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_61 j_99 j_100) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_61 i_118 i_119 v_60) j_99 j_100)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_61 i_118 i_119 v_60) j_99 j_100)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Int__Bool :weight 0 )) :named ax_60))
   (assert (! (forall ((|v_61| $@Map@@PermissionComponent@To@Int@@)(|i_121| Field$Bool$)(|i_120| ref)(|j_102| Field$ref$)(|j_101| ref)(|m_62| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_62 j_101 j_102) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_62 i_120 i_121 v_61) j_101 j_102)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_62 i_120 i_121 v_61) j_101 j_102)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__ref__Bool :weight 0 )) :named ax_61))
   (assert (! (forall ((|v_62| $@Map@@PermissionComponent@To@Int@@)(|i_123| Field$Bool$)(|i_122| ref)(|j_104| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|j_103| ref)(|m_63| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_63 j_103 j_104) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_63 i_122 i_123 v_62) j_103 j_104)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_63 i_122 i_123 v_62) j_103 j_104)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool :weight 0 )) :named ax_62))
   (assert (! (forall ((|v_63| $@Map@@PermissionComponent@To@Int@@)(|i_125| Field$Bool$)(|i_124| ref)(|j_106| Field$Mu$)(|j_105| ref)(|m_64| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_64 j_105 j_106) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_64 i_124 i_125 v_63) j_105 j_106)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_64 i_124 i_125 v_63) j_105 j_106)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Mu__Bool :weight 0 )) :named ax_63))
   (assert (! (forall ((|v_64| $@Map@@PermissionComponent@To@Int@@)(|i_127| Field$Bool$)(|i_126| ref)(|j_108| Field$Seq$Int$$)(|j_107| ref)(|m_65| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_65 j_107 j_108) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_65 i_126 i_127 v_64) j_107 j_108)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_65 i_126 i_127 v_64) j_107 j_108)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Seq$Int$__Bool :weight 0 )) :named ax_64))
   (assert (! (forall ((|v_66| $@Map@@PermissionComponent@To@Int@@)(|m_67| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_131| Field$Mu$)(|j_110| Field$Mu$)(|i_130| ref)(|j_109| ref))(!(=> (or (not (= j_110 i_131)) (not (= j_109 i_130))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_67 j_109 j_110) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_67 i_130 i_131 v_66) j_109 j_110))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_67 i_130 i_131 v_66) j_109 j_110)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_65))
   (assert (! (forall ((|v_67| $@Map@@PermissionComponent@To@Int@@)(|i_133| Field$Mu$)(|i_132| ref)(|j_112| Field$Bool$)(|j_111| ref)(|m_68| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_68 j_111 j_112) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_68 i_132 i_133 v_67) j_111 j_112)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_68 i_132 i_133 v_67) j_111 j_112)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__Mu :weight 0 )) :named ax_66))
   (assert (! (forall ((|v_68| $@Map@@PermissionComponent@To@Int@@)(|i_135| Field$Mu$)(|i_134| ref)(|j_114| Field$Int$)(|j_113| ref)(|m_69| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_69 j_113 j_114) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_69 i_134 i_135 v_68) j_113 j_114)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_69 i_134 i_135 v_68) j_113 j_114)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Int__Mu :weight 0 )) :named ax_67))
   (assert (! (forall ((|v_69| $@Map@@PermissionComponent@To@Int@@)(|i_137| Field$Mu$)(|i_136| ref)(|j_116| Field$ref$)(|j_115| ref)(|m_70| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_70 j_115 j_116) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_70 i_136 i_137 v_69) j_115 j_116)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_70 i_136 i_137 v_69) j_115 j_116)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__ref__Mu :weight 0 )) :named ax_68))
   (assert (! (forall ((|v_70| $@Map@@PermissionComponent@To@Int@@)(|i_139| Field$Mu$)(|i_138| ref)(|j_118| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|j_117| ref)(|m_71| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_71 j_117 j_118) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_71 i_138 i_139 v_70) j_117 j_118)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_71 i_138 i_139 v_70) j_117 j_118)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Mu :weight 0 )) :named ax_69))
   (assert (! (forall ((|v_71| $@Map@@PermissionComponent@To@Int@@)(|i_141| Field$Mu$)(|i_140| ref)(|j_120| Field$Seq$Int$$)(|j_119| ref)(|m_72| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_72 j_119 j_120) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_72 i_140 i_141 v_71) j_119 j_120)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_72 i_140 i_141 v_71) j_119 j_120)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Seq$Int$__Mu :weight 0 )) :named ax_70))
   (assert (! (forall ((|v_73| Bool)(|m_74| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_145| Field$Bool$)(|j_122| Field$Bool$)(|i_144| ref)(|j_121| ref))(!(=> (or (not (= j_122 i_145)) (not (= j_121 i_144))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_74 j_121 j_122) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_74 i_144 i_145 v_73) j_121 j_122))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_74 i_144 i_145 v_73) j_121 j_122)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_71))
   (assert (! (forall ((|v_74| Bool)(|i_147| Field$Bool$)(|i_146| ref)(|j_124| Field$Int$)(|j_123| ref)(|m_75| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_75 j_123 j_124) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_75 i_146 i_147 v_74) j_123 j_124)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_75 i_146 i_147 v_74) j_123 j_124)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Int__Bool :weight 0 )) :named ax_72))
   (assert (! (forall ((|v_75| Bool)(|i_149| Field$Bool$)(|i_148| ref)(|j_126| Field$ref$)(|j_125| ref)(|m_76| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_76 j_125 j_126) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_76 i_148 i_149 v_75) j_125 j_126)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_76 i_148 i_149 v_75) j_125 j_126)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__Bool :weight 0 )) :named ax_73))
   (assert (! (forall ((|v_76| Bool)(|i_151| Field$Bool$)(|i_150| ref)(|j_128| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|j_127| ref)(|m_77| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_77 j_127 j_128) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_77 i_150 i_151 v_76) j_127 j_128)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_77 i_150 i_151 v_76) j_127 j_128)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool :weight 0 )) :named ax_74))
   (assert (! (forall ((|v_77| Bool)(|i_153| Field$Bool$)(|i_152| ref)(|j_130| Field$Mu$)(|j_129| ref)(|m_78| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ m_78 j_129 j_130) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_78 i_152 i_153 v_77) j_129 j_130)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_78 i_152 i_153 v_77) j_129 j_130)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Mu__Bool :weight 0 )) :named ax_75))
   (assert (! (forall ((|v_78| Bool)(|i_155| Field$Bool$)(|i_154| ref)(|j_132| Field$Seq$Int$$)(|j_131| ref)(|m_79| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_79 j_131 j_132) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_79 i_154 i_155 v_78) j_131 j_132)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_79 i_154 i_155 v_78) j_131 j_132)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$Int$__Bool :weight 0 )) :named ax_76))
   (assert (! (forall ((|v_8| $@Map@@PermissionComponent@To@Int@@)(|m_9| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_17| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|j_13| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_16| ref)(|j_12| ref))(!(=> (or (not (= j_13 i_17)) (not (= j_12 i_16))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_9 j_12 j_13) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_9 i_16 i_17 v_8) j_12 j_13))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_9 i_16 i_17 v_8) j_12 j_13)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_77))
   (assert (! (forall ((|v_9| $@Map@@PermissionComponent@To@Int@@)(|i_19| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$)(|i_18| ref)(|j_15| Field$Bool$)(|j_14| ref)(|m_10| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_10 j_14 j_15) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_10 i_18 i_19 v_9) j_14 j_15)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ m_10 i_18 i_19 v_9) j_14 j_15)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_78))
   (assert (! (not (= forkK held)) :named ax_79))
   (assert (! (not (= forkK SortedTree.numClones)) :named ax_80))
   (assert (! (not (= forkK SortedTreeNode.key)) :named ax_81))
   (assert (! (not (= held forkK)) :named ax_82))
   (assert (! (not (= held SortedTree.numClones)) :named ax_83))
   (assert (! (not (= held SortedTreeNode.key)) :named ax_84))
   (assert (! (not (= joinable forkK)) :named ax_85))
   (assert (! (not (= joinable forkK)) :named ax_86))
   (assert (! (not (= joinable held)) :named ax_87))
   (assert (! (not (= joinable held)) :named ax_88))
   (assert (! (not (= joinable SortedTree.numClones)) :named ax_89))
   (assert (! (not (= joinable SortedTreeNode.key)) :named ax_90))
   (assert (! (not (= perm$R perm$N)) :named ax_91))
   (assert (! (not (= perm$R perm$N)) :named ax_92))
   (assert (! (not (= rdheld SortedTreeNode.shared)) :named ax_93))
   (assert (! (not (= SortedTree.keys SortedTreeNode.keys)) :named ax_94))
   (assert (! (not (= SortedTree.keys SortedTreeSnapshot.keys)) :named ax_95))
   (assert (! (not (= SortedTree.numClones forkK)) :named ax_96))
   (assert (! (not (= SortedTree.numClones held)) :named ax_97))
   (assert (! (not (= SortedTree.numClones joinable)) :named ax_98))
   (assert (! (not (= SortedTree.numClones SortedTreeNode.key)) :named ax_99))
   (assert (! (not (= SortedTree.root SortedTreeNode.left)) :named ax_100))
   (assert (! (not (= SortedTree.root SortedTreeNode.right)) :named ax_101))
   (assert (! (not (= SortedTree.root SortedTreeSnapshot.root)) :named ax_102))
   (assert (! (not (= SortedTree.valid SortedTreeNode.valid)) :named ax_103))
   (assert (! (not (= SortedTree.valid SortedTreeSnapshot.valid)) :named ax_104))
   (assert (! (not (= SortedTree@t SortedTreeNode@t)) :named ax_105))
   (assert (! (not (= SortedTreeNode.key forkK)) :named ax_106))
   (assert (! (not (= SortedTreeNode.key held)) :named ax_107))
   (assert (! (not (= SortedTreeNode.key joinable)) :named ax_108))
   (assert (! (not (= SortedTreeNode.key SortedTree.numClones)) :named ax_109))
   (assert (! (not (= SortedTreeNode.keys SortedTree.keys)) :named ax_110))
   (assert (! (not (= SortedTreeNode.left SortedTree.root)) :named ax_111))
   (assert (! (not (= SortedTreeNode.left SortedTreeNode.right)) :named ax_112))
   (assert (! (not (= SortedTreeNode.right SortedTree.root)) :named ax_113))
   (assert (! (not (= SortedTreeNode.right SortedTreeNode.left)) :named ax_114))
   (assert (! (not (= SortedTreeNode.shared rdheld)) :named ax_115))
   (assert (! (not (= SortedTreeNode.valid SortedTree.valid)) :named ax_116))
   (assert (! (not (= SortedTreeNode@t SortedTree@t)) :named ax_117))
   (assert (! (not (= SortedTreeSnapshot.keys SortedTree.keys)) :named ax_118))
   (assert (! (not (= SortedTreeSnapshot.keys SortedTreeNode.keys)) :named ax_119))
   (assert (! (not (= SortedTreeSnapshot.keys SortedTreeNode.keys)) :named ax_120))
   (assert (! (not (= SortedTreeSnapshot.root SortedTree.root)) :named ax_121))
   (assert (! (not (= SortedTreeSnapshot.root SortedTreeNode.left)) :named ax_122))
   (assert (! (not (= SortedTreeSnapshot.root SortedTreeNode.left)) :named ax_123))
   (assert (! (not (= SortedTreeSnapshot.root SortedTreeNode.right)) :named ax_124))
   (assert (! (not (= SortedTreeSnapshot.root SortedTreeNode.right)) :named ax_125))
   (assert (! (not (= SortedTreeSnapshot.valid SortedTree.valid)) :named ax_126))
   (assert (! (not (= SortedTreeSnapshot.valid SortedTreeNode.valid)) :named ax_127))
   (assert (! (not (= SortedTreeSnapshot.valid SortedTreeNode.valid)) :named ax_128))

;Program
(assert (not
(let ((anon20_assertion (and
    (= hasClones@44@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap@8 this@42@0 SortedTreeNode.shared))
)))
(let ((anon69@7_assertion (and
    (forall( (|lk#_105| ref))(!(or (and (= (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@18 |lk#_105| held)) (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap |lk#_105| held))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap@18 |lk#_105| rdheld) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap |lk#_105| rdheld))) false)  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@18 |lk#_105| held)) :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap@18 |lk#_105| rdheld))))
)))
(let ((anon69@1_assertion (and
    (forall( (|j#25#48| Int))(=> (and (<= 0 |j#25#48|) (< |j#25#48| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this SortedTree.keys)))) (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@18 this SortedTree.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this SortedTree.keys) |j#25#48|))))
)))
(let ((anon69@2_assertion (and
    (forall( (|j#26#49| Int))(=> (and (<= 0 |j#26#49|) (< |j#26#49| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@18 this SortedTree.keys)))) (or (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this SortedTree.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@18 this SortedTree.keys) |j#26#49|)) (= (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@18 this SortedTree.keys) |j#26#49|) k@1))))
)))
(let ((anon89_Then_assertion (and
    (> (- (Fractions 100) (Fractions (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@16 this SortedTree.numClones))) 0)
)))
(let ((anon32@2_assertion (and
    (> (Fractions (- 50 (ite$Int$ hasClones@44@0 49 0))) 0)
)))
(let ((anon32_assertion (and
    (> (Fractions (- 50 (ite$Int$ hasClones@44@0 49 0))) 0)
)))
(let ((anon90_Then_assertion (and
    (> (Fractions (- 50 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@16 this SortedTree.numClones))) 0)
)))
(let ((anon80_Then_assertion (and
    (> (Fractions 1) 0)
)))
(let ((anon82_Then_assertion (and
    (> (Fractions 1) 0)
)))
(let ((anon0@1_assertion (and
    (> (Fractions 100) 0)
)))
(let ((anon57@4_assertion (and
    (> (Fractions 100) 0)
)))
(let ((anon57_assertion (and
    (> (Fractions 100) 0)
)))
(let ((anon69@3_assertion (and
    (> (Fractions 100) 0)
)))
(let ((anon74_Then@1_assertion (and
    (> (Fractions 100) 0)
)))
(let ((anon74_Then@3_assertion (and
    (> (Fractions 100) 0)
)))
(let ((anon74_Then@5_assertion (and
    (> (Fractions 100) 0)
)))
(let ((anon74_Then@7_assertion (and
    (> (Fractions 100) 0)
)))
(let ((anon74_Then@9_assertion (and
    (> (Fractions 100) 0)
)))
(let ((anon79_Then_assertion (and
    (> (Fractions 100) 0)
)))
(let ((anon81_Then_assertion (and
    (> (Fractions 100) 0)
)))
(let ((anon57@2_assertion (and
    (> (Fractions 50) 0)
)))
(let ((anon69@5_assertion (and
    (> (Fractions 50) 0)
)))
(let ((anon45@7_assertion (and
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@16 this SortedTree.numClones) 50)
)))
(let ((anon12@1_assertion (and
    (=> true (CanRead$ref$ Mask@8 this SortedTree.root))
)))
(let ((anon44_assertion (and
    (CanWrite$ref$ Mask@18 this SortedTree.root)
)))
(let ((anon45@2_assertion (and
    (=> true (CanRead$ref$ Mask@19 this SortedTree.root))
)))
(let ((anon45@4_assertion (and
    (=> true (CanRead$Seq$Int$$ Mask@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@15 this SortedTree.root) SortedTreeNode.keys))
)))
(let ((anon45_assertion (and
    (CanWrite$Seq$Int$$ Mask@19 this SortedTree.keys)
)))
(let ((anon69@8_assertion (and
    (forall( (|ch| ref))(or (= |ch| null) (<= 0 (MapRead$$@Map@@ref@To@Int@@$ ZeroCredits |ch|))))
)))
(let ((anon69_assertion (and
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@18 this SortedTree.keys) k@1)
)))
(let ((anon74_Else@1_assertion (and
    (=> true (CanRead$ref$ Mask@8 this SortedTree.root))
)))
(let ((anon74_Else@4_assertion (and
    (=> true (CanRead$Int$ Mask@8 this SortedTree.numClones))
)))
(let ((anon74_Then@11_assertion (and
    (CanWrite$ref$ Mask@17 this SortedTree.root)
)))
(let ((anon87_Then_assertion (and
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@16 this SortedTree.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) SortedTreeNode.keys))
)))
(let ((anon88_Then_assertion (and
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@16 this SortedTree.keys) Seq@Empty$Int$)
)))
(let ((anon45@6_assertion (and
    (>= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@16 this SortedTree.numClones) 0)
)))
(let ((anon80_Then@1_assertion (and
    (<= (Fractions 1) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@1 this@42@0 SortedTreeNode.valid) perm$R))
    (=> (= (Fractions 1) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@1 this@42@0 SortedTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@1 this@42@0 SortedTreeNode.valid) perm$N)))
)))
(let ((anon32@1_assertion (and
    (<= (Fractions (- 50 (ite$Int$ hasClones@44@0 49 0))) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@3 this@42@0 SortedTreeNode.valid) perm$R))
    (=> (= (Fractions (- 50 (ite$Int$ hasClones@44@0 49 0))) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@3 this@42@0 SortedTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@3 this@42@0 SortedTreeNode.valid) perm$N)))
)))
(let ((anon81_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@5 r@20 SortedTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@5 r@20 SortedTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@5 r@20 SortedTreeNode.valid) perm$N)))
)))
(let ((anon82_Then@1_assertion (and
    (<= (Fractions 1) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@7 r@20 SortedTreeNode.valid) perm$R))
    (=> (= (Fractions 1) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@7 r@20 SortedTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@7 r@20 SortedTreeNode.valid) perm$N)))
)))
(let ((anon89_Then@1_assertion (and
    (<= (- (Fractions 100) (Fractions (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@16 this SortedTree.numClones))) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_95@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) SortedTreeNode.valid) perm$R))
    (=> (= (- (Fractions 100) (Fractions (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@16 this SortedTree.numClones))) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_95@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) SortedTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_95@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) SortedTreeNode.valid) perm$N)))
)))
(let ((anon0@2_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@1 this SortedTree.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@1 this SortedTree.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@1 this SortedTree.valid) perm$N)))
)))
(let ((anon69@4_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@20 this SortedTree.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@20 this SortedTree.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@20 this SortedTree.valid) perm$N)))
)))
(let ((anon79_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@8 this@42@0 SortedTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@8 this@42@0 SortedTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@8 this@42@0 SortedTreeNode.valid) perm$N)))
)))
(let ((anon74_Then@10_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ exhaleMask@_71@3 nw@_66@0 SortedTreeNode.shared) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ exhaleMask@_71@3 nw@_66@0 SortedTreeNode.shared) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ exhaleMask@_71@3 nw@_66@0 SortedTreeNode.shared) perm$N)))
)))
(let ((anon57@5_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_95@1 this SortedTree.numClones) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_95@1 this SortedTree.numClones) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_95@1 this SortedTree.numClones) perm$N)))
)))
(let ((anon74_Then@2_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@14 nw@_66@0 SortedTreeNode.key) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@14 nw@_66@0 SortedTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@14 nw@_66@0 SortedTreeNode.key) perm$N)))
)))
(let ((anon74_Then@4_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_71@0 nw@_66@0 SortedTreeNode.left) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_71@0 nw@_66@0 SortedTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_71@0 nw@_66@0 SortedTreeNode.left) perm$N)))
)))
(let ((anon74_Then@6_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_71@1 nw@_66@0 SortedTreeNode.right) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_71@1 nw@_66@0 SortedTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_71@1 nw@_66@0 SortedTreeNode.right) perm$N)))
)))
(let ((anon57@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@19 this SortedTree.root) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@19 this SortedTree.root) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@19 this SortedTree.root) perm$N)))
)))
(let ((anon69@6_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_102@0 this SortedTree.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_102@0 this SortedTree.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_102@0 this SortedTree.keys) perm$N)))
)))
(let ((anon74_Then@8_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_71@2 nw@_66@0 SortedTreeNode.keys) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_71@2 nw@_66@0 SortedTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_71@2 nw@_66@0 SortedTreeNode.keys) perm$N)))
)))
(let ((anon32@3_assertion (and
    (<= (Fractions (- 50 (ite$Int$ hasClones@44@0 49 0))) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_84@4 this@42@0 SortedTreeNode.keys) perm$R))
    (=> (= (Fractions (- 50 (ite$Int$ hasClones@44@0 49 0))) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_84@4 this@42@0 SortedTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_84@4 this@42@0 SortedTreeNode.keys) perm$N)))
)))
(let ((anon57@3_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@0 this SortedTree.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@0 this SortedTree.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@0 this SortedTree.keys) perm$N)))
)))
(let ((anon90_Then@1_assertion (and
    (<= (Fractions (- 50 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@16 this SortedTree.numClones))) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) SortedTreeNode.keys) perm$R))
    (=> (= (Fractions (- 50 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@16 this SortedTree.numClones))) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) SortedTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) SortedTreeNode.keys) perm$N)))
)))
(let ((anon0_assertion (and
    (not (= this null))
)))
(let ((anon12_assertion (and
    (=> true (not (= this null)))
)))
(let ((anon45@1_assertion (and
    (=> true (not (= this null)))
)))
(let ((anon45@3_assertion (and
    (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@15 this SortedTree.root) null)))
)))
(let ((anon45@5_assertion (and
    (not (= this null))
)))
(let ((anon74_Else_assertion (and
    (=> true (not (= this null)))
)))
(let ((anon74_Else@2_assertion (and
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTree.root) null))
)))
(let ((anon74_Else@3_assertion (and
    (=> true (not (= this null)))
)))
(let ((anon74_Then_assertion (and
    (not (= nw@_66@0 null))
)))
(let ((anon69@8 (=> (and true
    (forall( (|lk#_105| ref))(!(or (and (= (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@18 |lk#_105| held)) (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap |lk#_105| held))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap@18 |lk#_105| rdheld) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap |lk#_105| rdheld))) false)  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@18 |lk#_105| held)) :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap@18 |lk#_105| rdheld))))
  )
    anon69@8_assertion
)))
(let ((anon69@7 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_102@0 this SortedTree.keys) perm$R))
    (= exhaleMask@_102@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_102@0 this SortedTree.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_102@0 this SortedTree.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_102@0 this SortedTree.keys) perm$R) (Fractions 50)))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_102@0 this SortedTree.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_102@0 this SortedTree.keys) perm$N)))
    (IsGoodMask Mask@20)
    (wf Heap@18 exhaleMask@_102@1)
    (wf Heap@18 exhaleMask@_102@1)
    (wf Heap@18 Mask@20)
  )(and 
    anon69@7_assertion
    anon69@8
))))
(let ((anon69@6 (=> (and true
    (> (Fractions 50) 0)
  )(and 
    anon69@6_assertion
    anon69@7
))))
(let ((anon69@5 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@20 this SortedTree.valid) perm$R))
    (= exhaleMask@_102@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@20 this SortedTree.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@20 this SortedTree.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@20 this SortedTree.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@20 this SortedTree.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@20 this SortedTree.valid) perm$N)))
    (IsGoodMask Mask@20)
    (wf Heap@18 exhaleMask@_102@0)
    (wf Heap@18 Mask@20)
  )(and 
    anon69@5_assertion
    anon69@6
))))
(let ((anon69@4 (=> (and true
    (> (Fractions 100) 0)
  )(and 
    anon69@4_assertion
    anon69@5
))))
(let ((anon69@3 (=> (and true
    (forall( (|j#26#49| Int))(=> (and (<= 0 |j#26#49|) (< |j#26#49| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@18 this SortedTree.keys)))) (or (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this SortedTree.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@18 this SortedTree.keys) |j#26#49|)) (= (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@18 this SortedTree.keys) |j#26#49|) k@1))))
  )(and 
    anon69@3_assertion
    anon69@4
))))
(let ((anon69@2 (=> (and true
    (forall( (|j#25#48| Int))(=> (and (<= 0 |j#25#48|) (< |j#25#48| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this SortedTree.keys)))) (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@18 this SortedTree.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this SortedTree.keys) |j#25#48|))))
  )(and 
    anon69@2_assertion
    anon69@3
))))
(let ((anon69@1 (=> (and true
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@18 this SortedTree.keys) k@1)
  )(and 
    anon69@1_assertion
    anon69@2
))))
(let ((anon69 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ inhaleHeap@_101@0 this SortedTree.valid) Heap@17)
    (= Heap@17 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Heap@16 this SortedTree.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ inhaleHeap@_101@0 this SortedTree.valid)))
    (= Heap@18 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Heap@17 this SortedTree.valid Heap@17))
    (= Mask@20 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_95@6 this SortedTree.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_95@6 this SortedTree.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_95@6 this SortedTree.valid) perm$R) (Fractions 100)))))
    (> (Fractions 100) 0)
    (IsGoodInhaleState inhaleHeap@_101@0 Heap@16 exhaleMask@_95@6)
    (IsGoodMask Mask@20)
    (IsGoodMask Mask@20)
    (IsGoodState$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ inhaleHeap@_101@0 this SortedTree.valid))
    (not (= this null))
    (wf Heap@16 exhaleMask@_95@6)
    (wf Heap@17 exhaleMask@_95@6)
    (wf Heap@17 Mask@20)
    (wf Heap@17 Mask@20)
    (wf Heap@18 Mask@20)
    (wf inhaleHeap@_101@0 Mask@20)
  )(and 
    anon69_assertion
    anon69@1
))))
(let ((anon92_Else (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) null))
  )
    anon69
)))
(let ((anon92_Then (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) null)
  )
    anon69
)))
(let (($branchMerge_14 (=> (and true
  )
    (and anon92_Else anon92_Then)
)))
(let ((anon91_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) null)
  )
    $branchMerge_14
)))
(let ((anon91_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) null))
  )
    $branchMerge_14
)))
(let (($branchMerge_13 (=> (and true
  )
    (and anon91_Else anon91_Then)
)))
(let ((anon90_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) null)
    (= exhaleMask@_95@6 exhaleMask@_95@4)
  )
    $branchMerge_13
)))
(let ((anon90_Then@2 (=> (and true
    (<= (Fractions (- 50 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@16 this SortedTree.numClones))) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) SortedTreeNode.keys) perm$R))
    (= exhaleMask@_95@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) SortedTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) SortedTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) SortedTreeNode.keys) perm$R) (Fractions (- 50 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@16 this SortedTree.numClones)))))))
    (= exhaleMask@_95@6 exhaleMask@_95@5)
    (=> (= (Fractions (- 50 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@16 this SortedTree.numClones))) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) SortedTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) SortedTreeNode.keys) perm$N)))
    (IsGoodMask Mask@19)
    (wf Heap@16 exhaleMask@_95@5)
    (wf Heap@16 Mask@19)
  )
    $branchMerge_13
)))
(let ((anon90_Then@1 (=> (and true
    (> (Fractions (- 50 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@16 this SortedTree.numClones))) 0)
  )(and 
    anon90_Then@1_assertion
    anon90_Then@2
))))
(let ((anon90_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) null))
  )(and 
    anon90_Then_assertion
    anon90_Then@1
))))
(let (($branchMerge_12 (=> (and true
  )
    (and anon90_Else anon90_Then)
)))
(let ((anon89_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) null)
    (= exhaleMask@_95@4 exhaleMask@_95@2)
  )
    $branchMerge_12
)))
(let ((anon89_Then@2 (=> (and true
    (<= (- (Fractions 100) (Fractions (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@16 this SortedTree.numClones))) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_95@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) SortedTreeNode.valid) perm$R))
    (= exhaleMask@_95@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_95@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) SortedTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_95@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) SortedTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_95@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) SortedTreeNode.valid) perm$R) (- (Fractions 100) (Fractions (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@16 this SortedTree.numClones)))))))
    (= exhaleMask@_95@4 exhaleMask@_95@3)
    (=> (= (- (Fractions 100) (Fractions (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@16 this SortedTree.numClones))) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_95@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) SortedTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_95@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) SortedTreeNode.valid) perm$N)))
    (IsGoodMask Mask@19)
    (wf Heap@16 exhaleMask@_95@3)
    (wf Heap@16 Mask@19)
  )
    $branchMerge_12
)))
(let ((anon89_Then@1 (=> (and true
    (> (- (Fractions 100) (Fractions (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@16 this SortedTree.numClones))) 0)
  )(and 
    anon89_Then@1_assertion
    anon89_Then@2
))))
(let ((anon89_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) null))
  )(and 
    anon89_Then_assertion
    anon89_Then@1
))))
(let ((anon57@6 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_95@1 this SortedTree.numClones) perm$R))
    (= exhaleMask@_95@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_95@1 this SortedTree.numClones (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_95@1 this SortedTree.numClones) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_95@1 this SortedTree.numClones) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_95@1 this SortedTree.numClones) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_95@1 this SortedTree.numClones) perm$N)))
    (IsGoodMask Mask@19)
    (wf Heap@16 exhaleMask@_95@2)
    (wf Heap@16 Mask@19)
  )
    (and anon89_Else anon89_Then)
)))
(let ((anon57@5 (=> (and true
    (> (Fractions 100) 0)
  )(and 
    anon57@5_assertion
    anon57@6
))))
(let ((anon57@4 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@0 this SortedTree.keys) perm$R))
    (= exhaleMask@_95@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@0 this SortedTree.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@0 this SortedTree.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@0 this SortedTree.keys) perm$R) (Fractions 50)))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@0 this SortedTree.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@0 this SortedTree.keys) perm$N)))
    (IsGoodMask Mask@19)
    (wf Heap@16 exhaleMask@_95@1)
    (wf Heap@16 Mask@19)
  )(and 
    anon57@4_assertion
    anon57@5
))))
(let ((anon57@3 (=> (and true
    (> (Fractions 50) 0)
  )(and 
    anon57@3_assertion
    anon57@4
))))
(let ((anon57@2 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@19 this SortedTree.root) perm$R))
    (= exhaleMask@_95@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@19 this SortedTree.root (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@19 this SortedTree.root) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@19 this SortedTree.root) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@19 this SortedTree.root) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@19 this SortedTree.root) perm$N)))
    (IsGoodMask Mask@19)
    (wf Heap@16 exhaleMask@_95@0)
    (wf Heap@16 Mask@19)
  )(and 
    anon57@2_assertion
    anon57@3
))))
(let ((anon57@1 (=> (and true
    (> (Fractions 100) 0)
  )(and 
    anon57@1_assertion
    anon57@2
))))
(let ((anon57 (=> (and true
  )(and 
    anon57_assertion
    anon57@1
))))
(let ((anon88_Else (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) null))
  )
    anon57
)))
(let ((anon88_Then@1 (=> (and true
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@16 this SortedTree.keys) Seq@Empty$Int$)
  )
    anon57
)))
(let ((anon88_Then (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) null)
  )(and 
    anon88_Then_assertion
    anon88_Then@1
))))
(let (($branchMerge_11 (=> (and true
  )
    (and anon88_Else anon88_Then)
)))
(let ((anon87_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) null)
  )
    $branchMerge_11
)))
(let ((anon87_Then@1 (=> (and true
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@16 this SortedTree.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) SortedTreeNode.keys))
  )
    $branchMerge_11
)))
(let ((anon87_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) null))
  )(and 
    anon87_Then_assertion
    anon87_Then@1
))))
(let (($branchMerge_10 (=> (and true
  )
    (and anon87_Else anon87_Then)
)))
(let ((anon86_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) null)
  )
    $branchMerge_10
)))
(let ((anon86_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) null))
  )
    $branchMerge_10
)))
(let (($branchMerge_9 (=> (and true
  )
    (and anon86_Else anon86_Then)
)))
(let ((anon85_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) null)
  )
    $branchMerge_9
)))
(let ((anon85_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@16 this SortedTree.root) null))
  )
    $branchMerge_9
)))
(let ((anon45@8 (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@16 this SortedTree.numClones) 50)
  )
    (and anon85_Else anon85_Then)
)))
(let ((anon45@7 (=> (and true
    (>= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@16 this SortedTree.numClones) 0)
  )(and 
    anon45@7_assertion
    anon45@8
))))
(let ((anon45@6 (=> (and true
    (not (= this null))
  )(and 
    anon45@6_assertion
    anon45@7
))))
(let ((anon45@5 (=> (and true
    (< (* 1000 foldK@_94) (Fractions 1))
    (< (* 1000 foldK@_94) methodK@_58)
    (< 0 foldK@_94)
    (= Heap@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@15 this SortedTree.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@15 this SortedTree.root) SortedTreeNode.keys)))
    (=> true (CanRead$Seq$Int$$ Mask@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@15 this SortedTree.root) SortedTreeNode.keys))
    (wf Heap@16 Mask@19)
  )(and 
    anon45@5_assertion
    anon45@6
))))
(let ((anon45@4 (=> (and true
    (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@15 this SortedTree.root) null)))
  )(and 
    anon45@4_assertion
    anon45@5
))))
(let ((anon45@3 (=> (and true
    (=> true (CanRead$ref$ Mask@19 this SortedTree.root))
  )(and 
    anon45@3_assertion
    anon45@4
))))
(let ((anon45@2 (=> (and true
    (=> true (not (= this null)))
  )(and 
    anon45@2_assertion
    anon45@3
))))
(let ((anon45@1 (=> (and true
    (CanWrite$Seq$Int$$ Mask@19 this SortedTree.keys)
  )(and 
    anon45@1_assertion
    anon45@2
))))
(let ((anon45 (=> (and true
  )(and 
    anon45_assertion
    anon45@1
))))
(let ((anon44@1 (=> (and true
    (= Heap@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@13 this SortedTree.root r@45@0))
    (= Heap@15 Heap@14)
    (= Mask@19 Mask@18)
    (CanWrite$ref$ Mask@18 this SortedTree.root)
    (wf Heap@14 Mask@18)
  )
    anon45
)))
(let ((anon74_Then@12 (=> (and true
    (= Heap@12 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@11 this SortedTree.root nw@_66@0))
    (= Heap@15 Heap@12)
    (= Mask@19 Mask@17)
    (CanWrite$ref$ Mask@17 this SortedTree.root)
    (wf Heap@12 Mask@17)
  )
    anon45
)))
(let ((anon44 (=> (and true
    (IsGoodMask Mask@18)
    (wf Heap@13 Mask@18)
  )(and 
    anon44_assertion
    anon44@1
))))
(let ((anon74_Then@11 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ exhaleMask@_71@3 nw@_66@0 SortedTreeNode.shared) perm$R))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ inhaleHeap@_79@0 nw@_66@0 SortedTreeNode.valid) Heap@9)
    (= exhaleMask@_71@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ exhaleMask@_71@3 nw@_66@0 SortedTreeNode.shared (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ exhaleMask@_71@3 nw@_66@0 SortedTreeNode.shared) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ exhaleMask@_71@3 nw@_66@0 SortedTreeNode.shared) perm$R) (Fractions 100)))))
    (= Heap@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@9 nw@_66@0 SortedTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ inhaleHeap@_79@0 nw@_66@0 SortedTreeNode.keys)))
    (= Heap@11 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap@10 nw@_66@0 SortedTreeNode.shared (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ inhaleHeap@_79@0 nw@_66@0 SortedTreeNode.shared)))
    (= Heap@9 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Heap@8 nw@_66@0 SortedTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ inhaleHeap@_79@0 nw@_66@0 SortedTreeNode.valid)))
    (= Mask@15 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_71@4 nw@_66@0 SortedTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_71@4 nw@_66@0 SortedTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_71@4 nw@_66@0 SortedTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@15 nw@_66@0 SortedTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@15 nw@_66@0 SortedTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@15 nw@_66@0 SortedTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@17 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ Mask@16 nw@_66@0 SortedTreeNode.shared (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ Mask@16 nw@_66@0 SortedTreeNode.shared) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ Mask@16 nw@_66@0 SortedTreeNode.shared) perm$R) (Fractions 50)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ exhaleMask@_71@3 nw@_66@0 SortedTreeNode.shared) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ exhaleMask@_71@3 nw@_66@0 SortedTreeNode.shared) perm$N)))
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (IsGoodInhaleState inhaleHeap@_79@0 Heap@8 exhaleMask@_71@4)
    (IsGoodMask Mask@14)
    (IsGoodMask Mask@15)
    (IsGoodMask Mask@16)
    (IsGoodMask Mask@17)
    (IsGoodMask Mask@17)
    (IsGoodState$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ inhaleHeap@_79@0 nw@_66@0 SortedTreeNode.valid))
    (IsGoodState$Bool$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ inhaleHeap@_79@0 nw@_66@0 SortedTreeNode.shared))
    (IsGoodState$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ inhaleHeap@_79@0 nw@_66@0 SortedTreeNode.keys))
    (not (= nw@_66@0 null))
    (not (= nw@_66@0 null))
    (not (= nw@_66@0 null))
    (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap@11 nw@_66@0 SortedTreeNode.shared))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@11 nw@_66@0 SortedTreeNode.keys) k@1)
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@11 nw@_66@0 SortedTreeNode.keys) (Seq@Singleton$Int$ k@1))
    (wf Heap@10 Mask@15)
    (wf Heap@10 Mask@16)
    (wf Heap@11 Mask@16)
    (wf Heap@11 Mask@17)
    (wf Heap@11 Mask@17)
    (wf Heap@8 exhaleMask@_71@4)
    (wf Heap@8 exhaleMask@_71@4)
    (wf Heap@8 Mask@14)
    (wf Heap@9 exhaleMask@_71@4)
    (wf Heap@9 Mask@15)
    (wf inhaleHeap@_79@0 Mask@15)
    (wf inhaleHeap@_79@0 Mask@16)
    (wf inhaleHeap@_79@0 Mask@17)
  )(and 
    anon74_Then@11_assertion
    anon74_Then@12
))))
(let ((anon84_Else (=> (and true
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 this@42@0 SortedTreeNode.keys) k@1)
  )
    anon44
)))
(let ((anon84_Then (=> (and true
    (= (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@13 r@45@0 SortedTreeNode.keys)) (+ (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 this@42@0 SortedTreeNode.keys)) 1))
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 this@42@0 SortedTreeNode.keys) k@1))
  )
    anon44
)))
(let ((anon74_Then@10 (=> (and true
    (> (Fractions 100) 0)
  )(and 
    anon74_Then@10_assertion
    anon74_Then@11
))))
(let (($branchMerge_8 (=> (and true
  )
    (and anon84_Else anon84_Then)
)))
(let ((anon74_Then@9 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_71@2 nw@_66@0 SortedTreeNode.keys) perm$R))
    (= exhaleMask@_71@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_71@2 nw@_66@0 SortedTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_71@2 nw@_66@0 SortedTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_71@2 nw@_66@0 SortedTreeNode.keys) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_71@2 nw@_66@0 SortedTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_71@2 nw@_66@0 SortedTreeNode.keys) perm$N)))
    (IsGoodMask Mask@14)
    (wf Heap@8 exhaleMask@_71@3)
    (wf Heap@8 Mask@14)
  )(and 
    anon74_Then@9_assertion
    anon74_Then@10
))))
(let ((anon83_Else (=> (and true
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 this@42@0 SortedTreeNode.keys) k@1))
  )
    $branchMerge_8
)))
(let ((anon83_Then (=> (and true
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 this@42@0 SortedTreeNode.keys) k@1)
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@13 r@45@0 SortedTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 this@42@0 SortedTreeNode.keys))
  )
    $branchMerge_8
)))
(let ((anon74_Then@8 (=> (and true
    (> (Fractions 100) 0)
  )(and 
    anon74_Then@8_assertion
    anon74_Then@9
))))
(let ((anon38 (=> (and true
    (= Heap@13 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 r@45@0 SortedTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ inhaleHeap@_93@0 r@45@0 SortedTreeNode.keys)))
    (= Mask@18 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_84@9 r@45@0 SortedTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_84@9 r@45@0 SortedTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_84@9 r@45@0 SortedTreeNode.keys) perm$R) (Fractions (- 50 (ite$Int$ hasClones@44@0 49 0)))))))
    (> (Fractions (- 50 (ite$Int$ hasClones@44@0 49 0))) 0)
    (forall( (|i#32#46| Int))(=> (and (<= 0 |i#32#46|) (< |i#32#46| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 this@42@0 SortedTreeNode.keys)))) (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@13 r@45@0 SortedTreeNode.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 this@42@0 SortedTreeNode.keys) |i#32#46|))))
    (forall( (|i#33#47| Int))(=> (and (<= 0 |i#33#47|) (< |i#33#47| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@13 r@45@0 SortedTreeNode.keys)))) (or (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 this@42@0 SortedTreeNode.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@13 r@45@0 SortedTreeNode.keys) |i#33#47|)) (= (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@13 r@45@0 SortedTreeNode.keys) |i#33#47|) k@1))))
    (IsGoodInhaleState inhaleHeap@_93@0 Heap@8 exhaleMask@_84@9)
    (IsGoodMask Mask@18)
    (IsGoodState$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ inhaleHeap@_93@0 r@45@0 SortedTreeNode.keys))
    (not (= r@45@0 null))
    (not (= r@45@0 null))
    (or (= r@45@0 null) (= (dtype r@45@0) SortedTreeNode@t))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@13 r@45@0 SortedTreeNode.keys) k@1)
    (wf Heap@13 exhaleMask@_84@9)
    (wf Heap@13 Mask@18)
    (wf Heap@8 exhaleMask@_84@9)
    (wf inhaleHeap@_93@0 Mask@18)
  )
    (and anon83_Else anon83_Then)
)))
(let ((anon74_Then@7 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_71@1 nw@_66@0 SortedTreeNode.right) perm$R))
    (= exhaleMask@_71@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_71@1 nw@_66@0 SortedTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_71@1 nw@_66@0 SortedTreeNode.right) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_71@1 nw@_66@0 SortedTreeNode.right) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_71@1 nw@_66@0 SortedTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_71@1 nw@_66@0 SortedTreeNode.right) perm$N)))
    (IsGoodMask Mask@14)
    (wf Heap@8 exhaleMask@_71@2)
    (wf Heap@8 Mask@14)
  )(and 
    anon74_Then@7_assertion
    anon74_Then@8
))))
(let ((anon82_Else (=> (and true
    (= exhaleMask@_84@9 exhaleMask@_84@7)
    (not hasClones@44@0)
  )
    anon38
)))
(let ((anon82_Then@2 (=> (and true
    (<= (Fractions 1) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@7 r@20 SortedTreeNode.valid) perm$R))
    (= exhaleMask@_84@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@7 r@20 SortedTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@7 r@20 SortedTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@7 r@20 SortedTreeNode.valid) perm$R) (Fractions 1)))))
    (= exhaleMask@_84@9 exhaleMask@_84@8)
    (=> (= (Fractions 1) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@7 r@20 SortedTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@7 r@20 SortedTreeNode.valid) perm$N)))
    (IsGoodMask Mask@8)
    (wf Heap@8 exhaleMask@_84@8)
    (wf Heap@8 Mask@8)
  )
    anon38
)))
(let ((anon74_Then@6 (=> (and true
    (> (Fractions 100) 0)
  )(and 
    anon74_Then@6_assertion
    anon74_Then@7
))))
(let ((anon82_Then@1 (=> (and true
    (> (Fractions 1) 0)
  )(and 
    anon82_Then@1_assertion
    anon82_Then@2
))))
(let ((anon74_Then@5 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_71@0 nw@_66@0 SortedTreeNode.left) perm$R))
    (= exhaleMask@_71@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_71@0 nw@_66@0 SortedTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_71@0 nw@_66@0 SortedTreeNode.left) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_71@0 nw@_66@0 SortedTreeNode.left) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_71@0 nw@_66@0 SortedTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_71@0 nw@_66@0 SortedTreeNode.left) perm$N)))
    (IsGoodMask Mask@14)
    (wf Heap@8 exhaleMask@_71@1)
    (wf Heap@8 Mask@14)
  )(and 
    anon74_Then@5_assertion
    anon74_Then@6
))))
(let ((anon82_Then (=> (and true
    hasClones@44@0
  )(and 
    anon82_Then_assertion
    anon82_Then@1
))))
(let ((anon74_Then@4 (=> (and true
    (> (Fractions 100) 0)
  )(and 
    anon74_Then@4_assertion
    anon74_Then@5
))))
(let (($branchMerge_7 (=> (and true
  )
    (and anon82_Else anon82_Then)
)))
(let ((anon74_Then@3 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@14 nw@_66@0 SortedTreeNode.key) perm$R))
    (= exhaleMask@_71@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@14 nw@_66@0 SortedTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@14 nw@_66@0 SortedTreeNode.key) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@14 nw@_66@0 SortedTreeNode.key) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@14 nw@_66@0 SortedTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@14 nw@_66@0 SortedTreeNode.key) perm$N)))
    (IsGoodMask Mask@14)
    (wf Heap@8 exhaleMask@_71@0)
    (wf Heap@8 Mask@14)
  )(and 
    anon74_Then@3_assertion
    anon74_Then@4
))))
(let ((anon81_Else (=> (and true
    (= exhaleMask@_84@7 exhaleMask@_84@5)
    hasClones@44@0
  )
    $branchMerge_7
)))
(let ((anon81_Then@2 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@5 r@20 SortedTreeNode.valid) perm$R))
    (= exhaleMask@_84@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@5 r@20 SortedTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@5 r@20 SortedTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@5 r@20 SortedTreeNode.valid) perm$R) (Fractions 100)))))
    (= exhaleMask@_84@7 exhaleMask@_84@6)
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@5 r@20 SortedTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@5 r@20 SortedTreeNode.valid) perm$N)))
    (IsGoodMask Mask@8)
    (wf Heap@8 exhaleMask@_84@6)
    (wf Heap@8 Mask@8)
  )
    $branchMerge_7
)))
(let ((anon74_Then@2 (=> (and true
    (> (Fractions 100) 0)
  )(and 
    anon74_Then@2_assertion
    anon74_Then@3
))))
(let ((anon81_Then@1 (=> (and true
    (> (Fractions 100) 0)
  )(and 
    anon81_Then@1_assertion
    anon81_Then@2
))))
(let ((anon74_Then@1 (=> (and true
    (not (= nw@_66@0 null))
  )(and 
    anon74_Then@1_assertion
    anon74_Then@2
))))
(let ((anon81_Then (=> (and true
    (not hasClones@44@0)
  )(and 
    anon81_Then_assertion
    anon81_Then@1
))))
(let ((anon74_Then (=> (and true
    (< (* 1000 methodCallK@_70) (Fractions 1))
    (< (* 1000 methodCallK@_70) methodK@_58)
    (< 0 methodCallK@_70)
    (<= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@8 nw@_66@0 held) 0)
    (= (dtype nw@_66@0) SortedTreeNode@t)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap@8 nw@_66@0 rdheld) false)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap@8 nw@_66@0 mu) $LockBottom)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTree.root) null)
    (= Mask@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@9 nw@_66@0 SortedTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@9 nw@_66@0 SortedTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@9 nw@_66@0 SortedTreeNode.left) perm$R) (Fractions 100)))))
    (= Mask@11 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@10 nw@_66@0 SortedTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@10 nw@_66@0 SortedTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@10 nw@_66@0 SortedTreeNode.right) perm$R) (Fractions 100)))))
    (= Mask@12 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@11 nw@_66@0 SortedTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@11 nw@_66@0 SortedTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@11 nw@_66@0 SortedTreeNode.keys) perm$R) (Fractions 100)))))
    (= Mask@13 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ Mask@12 nw@_66@0 SortedTreeNode.shared (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ Mask@12 nw@_66@0 SortedTreeNode.shared) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ Mask@12 nw@_66@0 SortedTreeNode.shared) perm$R) (Fractions 100)))))
    (= Mask@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@13 nw@_66@0 mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@13 nw@_66@0 mu) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@13 nw@_66@0 mu) perm$R) (Fractions 100)))))
    (= Mask@9 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@8 nw@_66@0 SortedTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@8 nw@_66@0 SortedTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@8 nw@_66@0 SortedTreeNode.key) perm$R) (Fractions 100)))))
    (forall( (|f_$13_$0| Field$Bool$))(and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ Mask@8 nw@_66@0 |f_$13_$0|) perm$R) 0) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ Mask@8 nw@_66@0 |f_$13_$0|) perm$N) 0)))
    (forall( (|f_$13_$1| Field$Int$))(and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@8 nw@_66@0 |f_$13_$1|) perm$R) 0) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@8 nw@_66@0 |f_$13_$1|) perm$N) 0)))
    (forall( (|f_$13_$2| Field$ref$))(and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@8 nw@_66@0 |f_$13_$2|) perm$R) 0) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@8 nw@_66@0 |f_$13_$2|) perm$N) 0)))
    (forall( (|f_$13_$3| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$))(and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@8 nw@_66@0 |f_$13_$3|) perm$R) 0) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@8 nw@_66@0 |f_$13_$3|) perm$N) 0)))
    (forall( (|f_$13_$4| Field$Mu$))(and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@8 nw@_66@0 |f_$13_$4|) perm$R) 0) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@8 nw@_66@0 |f_$13_$4|) perm$N) 0)))
    (forall( (|f_$13_$5| Field$Seq$Int$$))(and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@8 nw@_66@0 |f_$13_$5|) perm$R) 0) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@8 nw@_66@0 |f_$13_$5|) perm$N) 0)))
    (not (= nw@_66@0 null))
  )(and 
    anon74_Then_assertion
    anon74_Then@1
))))
(let ((anon32@4 (=> (and true
    (<= (Fractions (- 50 (ite$Int$ hasClones@44@0 49 0))) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_84@4 this@42@0 SortedTreeNode.keys) perm$R))
    (= exhaleMask@_84@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_84@4 this@42@0 SortedTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_84@4 this@42@0 SortedTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_84@4 this@42@0 SortedTreeNode.keys) perm$R) (Fractions (- 50 (ite$Int$ hasClones@44@0 49 0)))))))
    (=> (= (Fractions (- 50 (ite$Int$ hasClones@44@0 49 0))) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_84@4 this@42@0 SortedTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_84@4 this@42@0 SortedTreeNode.keys) perm$N)))
    (IsGoodMask Mask@8)
    (wf Heap@8 exhaleMask@_84@5)
    (wf Heap@8 Mask@8)
  )
    (and anon81_Else anon81_Then)
)))
(let ((anon32@3 (=> (and true
    (> (Fractions (- 50 (ite$Int$ hasClones@44@0 49 0))) 0)
  )(and 
    anon32@3_assertion
    anon32@4
))))
(let ((anon32@2 (=> (and true
    (<= (Fractions (- 50 (ite$Int$ hasClones@44@0 49 0))) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@3 this@42@0 SortedTreeNode.valid) perm$R))
    (= exhaleMask@_84@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@3 this@42@0 SortedTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@3 this@42@0 SortedTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@3 this@42@0 SortedTreeNode.valid) perm$R) (Fractions (- 50 (ite$Int$ hasClones@44@0 49 0)))))))
    (=> (= (Fractions (- 50 (ite$Int$ hasClones@44@0 49 0))) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@3 this@42@0 SortedTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@3 this@42@0 SortedTreeNode.valid) perm$N)))
    (IsGoodMask Mask@8)
    (wf Heap@8 exhaleMask@_84@4)
    (wf Heap@8 Mask@8)
  )(and 
    anon32@2_assertion
    anon32@3
))))
(let ((anon32@1 (=> (and true
    (> (Fractions (- 50 (ite$Int$ hasClones@44@0 49 0))) 0)
  )(and 
    anon32@1_assertion
    anon32@2
))))
(let ((anon32 (=> (and true
  )(and 
    anon32_assertion
    anon32@1
))))
(let ((anon80_Else (=> (and true
    (= exhaleMask@_84@3 exhaleMask@_84@1)
    (not hasClones@44@0)
  )
    anon32
)))
(let ((anon80_Then@2 (=> (and true
    (<= (Fractions 1) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@1 this@42@0 SortedTreeNode.valid) perm$R))
    (= exhaleMask@_84@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@1 this@42@0 SortedTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@1 this@42@0 SortedTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@1 this@42@0 SortedTreeNode.valid) perm$R) (Fractions 1)))))
    (= exhaleMask@_84@3 exhaleMask@_84@2)
    (=> (= (Fractions 1) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@1 this@42@0 SortedTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ exhaleMask@_84@1 this@42@0 SortedTreeNode.valid) perm$N)))
    (IsGoodMask Mask@8)
    (wf Heap@8 exhaleMask@_84@2)
    (wf Heap@8 Mask@8)
  )
    anon32
)))
(let ((anon80_Then@1 (=> (and true
    (> (Fractions 1) 0)
  )(and 
    anon80_Then@1_assertion
    anon80_Then@2
))))
(let ((anon80_Then (=> (and true
    hasClones@44@0
  )(and 
    anon80_Then_assertion
    anon80_Then@1
))))
(let (($branchMerge_6 (=> (and true
  )
    (and anon80_Else anon80_Then)
)))
(let ((anon79_Else (=> (and true
    (= exhaleMask@_84@1 Mask@8)
    hasClones@44@0
  )
    $branchMerge_6
)))
(let ((anon79_Then@2 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@8 this@42@0 SortedTreeNode.valid) perm$R))
    (= exhaleMask@_84@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@8 this@42@0 SortedTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@8 this@42@0 SortedTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@8 this@42@0 SortedTreeNode.valid) perm$R) (Fractions 100)))))
    (= exhaleMask@_84@1 exhaleMask@_84@0)
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@8 this@42@0 SortedTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@8 this@42@0 SortedTreeNode.valid) perm$N)))
    (IsGoodMask Mask@8)
    (wf Heap@8 exhaleMask@_84@0)
    (wf Heap@8 Mask@8)
  )
    $branchMerge_6
)))
(let ((anon79_Then@1 (=> (and true
    (> (Fractions 100) 0)
  )(and 
    anon79_Then@1_assertion
    anon79_Then@2
))))
(let ((anon79_Then (=> (and true
    (not hasClones@44@0)
  )(and 
    anon79_Then_assertion
    anon79_Then@1
))))
(let (($branchMerge_5 (=> (and true
  )
    (and anon79_Else anon79_Then)
)))
(let ((anon78_Else (=> (and true
    (not hasClones@44@0)
  )
    $branchMerge_5
)))
(let ((anon78_Then (=> (and true
    hasClones@44@0
  )
    $branchMerge_5
)))
(let (($branchMerge_4 (=> (and true
  )
    (and anon78_Else anon78_Then)
)))
(let ((anon77_Else (=> (and true
    hasClones@44@0
  )
    $branchMerge_4
)))
(let ((anon77_Then (=> (and true
    (not hasClones@44@0)
  )
    $branchMerge_4
)))
(let ((anon20@1 (=> (and true
    (= hasClones@44@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap@8 this@42@0 SortedTreeNode.shared))
  )
    (and anon77_Else anon77_Then)
)))
(let ((anon20 (=> (and true
  )(and 
    anon20_assertion
    anon20@1
))))
(let ((anon76_Else (=> (and true
    (not hasClones@44@0)
  )
    anon20
)))
(let ((anon76_Then (=> (and true
    hasClones@44@0
  )
    anon20
)))
(let (($branchMerge_3 (=> (and true
  )
    (and anon76_Else anon76_Then)
)))
(let ((anon75_Else (=> (and true
    hasClones@44@0
  )
    $branchMerge_3
)))
(let ((anon75_Then (=> (and true
    (not hasClones@44@0)
  )
    $branchMerge_3
)))
(let ((anon74_Else@5 (=> (and true
    (= hasClones@44@0 (> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@8 this SortedTree.numClones) 0))
    (= this@42@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTree.root))
    (=> true (CanRead$Int$ Mask@8 this SortedTree.numClones))
  )
    (and anon75_Else anon75_Then)
)))
(let ((anon74_Else@4 (=> (and true
    (=> true (not (= this null)))
  )(and 
    anon74_Else@4_assertion
    anon74_Else@5
))))
(let ((anon74_Else@3 (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTree.root) null))
  )(and 
    anon74_Else@3_assertion
    anon74_Else@4
))))
(let ((anon74_Else@2 (=> (and true
    (=> true (CanRead$ref$ Mask@8 this SortedTree.root))
  )(and 
    anon74_Else@2_assertion
    anon74_Else@3
))))
(let ((anon74_Else@1 (=> (and true
    (=> true (not (= this null)))
  )(and 
    anon74_Else@1_assertion
    anon74_Else@2
))))
(let ((anon74_Else (=> (and true
    (< (* 1000 methodCallK@_83) (Fractions 1))
    (< (* 1000 methodCallK@_83) methodK@_58)
    (< 0 methodCallK@_83)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTree.root) null))
  )(and 
    anon74_Else_assertion
    anon74_Else@1
))))
(let ((anon12@2 (=> (and true
    (=> true (CanRead$ref$ Mask@8 this SortedTree.root))
  )
    (and anon74_Else anon74_Then)
)))
(let ((anon12@1 (=> (and true
    (=> true (not (= this null)))
  )(and 
    anon12@1_assertion
    anon12@2
))))
(let ((anon12 (=> (and true
    (IsGoodMask Mask@8)
    (wf Heap@8 Mask@8)
  )(and 
    anon12_assertion
    anon12@1
))))
(let ((anon73_Else (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTree.root) null))
  )
    anon12
)))
(let ((anon73_Then (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTree.root) null)
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 this SortedTree.keys) Seq@Empty$Int$)
  )
    anon12
)))
(let (($branchMerge_2 (=> (and true
  )
    (and anon73_Else anon73_Then)
)))
(let ((anon72_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTree.root) null)
  )
    $branchMerge_2
)))
(let ((anon72_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTree.root) null))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 this SortedTree.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 this SortedTree.root) SortedTreeNode.keys))
  )
    $branchMerge_2
)))
(let (($branchMerge_1 (=> (and true
  )
    (and anon72_Else anon72_Then)
)))
(let ((anon71_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this SortedTree.root) null)
    (= Heap@8 Heap@6)
    (= Mask@8 Mask@6)
  )
    $branchMerge_1
)))
(let ((anon71_Then (=> (and true
    (= Heap@7 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this SortedTree.root) SortedTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ inhaleHeap@_65@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this SortedTree.root) SortedTreeNode.keys)))
    (= Heap@8 Heap@7)
    (= Mask@7 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTree.root) SortedTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTree.root) SortedTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTree.root) SortedTreeNode.keys) perm$R) (Fractions (- 50 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 this SortedTree.numClones)))))))
    (= Mask@8 Mask@7)
    (> (Fractions (- 50 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 this SortedTree.numClones))) 0)
    (IsGoodMask Mask@7)
    (IsGoodState$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ inhaleHeap@_65@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 this SortedTree.root) SortedTreeNode.keys))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this SortedTree.root) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this SortedTree.root) null))
    (wf Heap@7 Mask@6)
    (wf Heap@7 Mask@7)
    (wf inhaleHeap@_65@0 Mask@7)
  )
    $branchMerge_1
)))
(let (($branchMerge_0 (=> (and true
  )
    (and anon71_Else anon71_Then)
)))
(let ((anon70_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this SortedTree.root) null)
    (= Heap@6 Heap@4)
    (= Mask@6 Mask@4)
  )
    $branchMerge_0
)))
(let ((anon70_Then (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ inhaleHeap@_65@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this SortedTree.root) SortedTreeNode.valid) Heap@5)
    (= Heap@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this SortedTree.root) SortedTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ inhaleHeap@_65@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this SortedTree.root) SortedTreeNode.valid)))
    (= Heap@6 Heap@5)
    (= Mask@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this SortedTree.root) SortedTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this SortedTree.root) SortedTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this SortedTree.root) SortedTreeNode.valid) perm$R) (- (Fractions 100) (Fractions (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@5 this SortedTree.numClones)))))))
    (= Mask@6 Mask@5)
    (> (- (Fractions 100) (Fractions (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@5 this SortedTree.numClones))) 0)
    (IsGoodMask Mask@5)
    (IsGoodState$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ inhaleHeap@_65@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this SortedTree.root) SortedTreeNode.valid))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this SortedTree.root) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this SortedTree.root) null))
    (wf Heap@5 Mask@4)
    (wf Heap@5 Mask@5)
    (wf inhaleHeap@_65@0 Mask@5)
  )
    $branchMerge_0
)))
(let ((anon0@3 (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 this SortedTree.numClones) 50)
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@1 this SortedTree.valid) perm$R))
    (= exhaleMask@_63@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@1 this SortedTree.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@1 this SortedTree.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@1 this SortedTree.valid) perm$R) (Fractions 100)))))
    (= Heap@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this SortedTree.root (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ inhaleHeap@_65@0 this SortedTree.root)))
    (= Heap@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@2 this SortedTree.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ inhaleHeap@_65@0 this SortedTree.keys)))
    (= Heap@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 this SortedTree.numClones (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ inhaleHeap@_65@0 this SortedTree.numClones)))
    (= inhaleHeap@_65@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Heap@1 this SortedTree.valid))
    (= Mask@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_63@0 this SortedTree.root (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_63@0 this SortedTree.root) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_63@0 this SortedTree.root) perm$R) (Fractions 100)))))
    (= Mask@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@2 this SortedTree.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@2 this SortedTree.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@2 this SortedTree.keys) perm$R) (Fractions 50)))))
    (= Mask@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@3 this SortedTree.numClones (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@3 this SortedTree.numClones) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@3 this SortedTree.numClones) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@1 this SortedTree.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Mask@1 this SortedTree.valid) perm$N)))
    (> (Fractions 100) 0)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (>= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 this SortedTree.numClones) 0)
    (IsGoodInhaleState inhaleHeap@_65@0 Heap@1 exhaleMask@_63@0)
    (IsGoodMask Mask@1)
    (IsGoodMask Mask@2)
    (IsGoodMask Mask@3)
    (IsGoodMask Mask@4)
    (IsGoodState$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ inhaleHeap@_65@0 this SortedTree.numClones))
    (IsGoodState$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ inhaleHeap@_65@0 this SortedTree.root))
    (IsGoodState$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ inhaleHeap@_65@0 this SortedTree.keys))
    (not (= this null))
    (not (= this null))
    (not (= this null))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this SortedTree.root) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this SortedTree.root)) SortedTreeNode@t))
    (wf Heap@1 exhaleMask@_63@0)
    (wf Heap@1 exhaleMask@_63@0)
    (wf Heap@1 Mask@1)
    (wf Heap@2 exhaleMask@_63@0)
    (wf Heap@2 Mask@2)
    (wf Heap@3 Mask@2)
    (wf Heap@3 Mask@3)
    (wf Heap@4 Mask@3)
    (wf Heap@4 Mask@4)
    (wf inhaleHeap@_65@0 Mask@2)
    (wf inhaleHeap@_65@0 Mask@3)
    (wf inhaleHeap@_65@0 Mask@4)
  )
    (and anon70_Else anon70_Then)
)))
(let ((anon0@2 (=> (and true
    (> (Fractions 100) 0)
  )(and 
    anon0@2_assertion
    anon0@3
))))
(let ((anon0@1 (=> (and true
    (not (= this null))
  )(and 
    anon0@1_assertion
    anon0@2
))))
(let ((anon0 (=> (and true
    (< (* 1000 methodK@_58) (Fractions 1))
    (< (* 1000 unfoldK@_62) methodK@_58)
    (< 0 methodK@_58)
    (< 0 unfoldK@_62)
    (< unfoldK@_62 (Fractions 1))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ inhaleHeap@_61@0 this SortedTree.valid) Heap@0)
    (= CurrentModule module@default)
    (= Heap@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ Heap this SortedTree.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ inhaleHeap@_61@0 this SortedTree.valid)))
    (= Heap@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@0 this SortedTree.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ inhaleHeap@_61@0 this SortedTree.keys)))
    (= Heap@1 Heap)
    (= Mask@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ZeroMask this SortedTree.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ZeroMask this SortedTree.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ZeroMask this SortedTree.valid) perm$R) (Fractions 100)))))
    (= Mask@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@0 this SortedTree.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@0 this SortedTree.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@0 this SortedTree.keys) perm$R) (Fractions 50)))))
    (= Mask@1 Mask)
    (= ZeroCredits Credits)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (IsGoodInhaleState inhaleHeap@_61@0 Heap ZeroMask)
    (IsGoodMask Mask@0)
    (IsGoodMask Mask@1)
    (IsGoodMask Mask@1)
    (IsGoodState$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ inhaleHeap@_61@0 this SortedTree.valid))
    (IsGoodState$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ inhaleHeap@_61@0 this SortedTree.keys))
    (not (= this null))
    (not (= this null))
    (wf Heap@0 Mask@0)
    (wf Heap@0 ZeroMask)
    (wf Heap@1 Mask@0)
    (wf Heap@1 Mask@1)
    (wf Heap@1 Mask@1)
    (wf inhaleHeap@_61@0 Mask@0)
    (wf inhaleHeap@_61@0 Mask@1)
    CanAssumeFunctionDefs
  )(and 
    anon0_assertion
    anon0@1
))))
(let ((PreconditionGeneratedEntry (=> (and true
    (IsGoodMask Mask)
    (not (= this null))
    (or (= n@3 null) (= (dtype n@3) SortedTreeNode@t))
    (or (= r@45 null) (= (dtype r@45) SortedTreeNode@t))
    (or (= r@5 null) (= (dtype r@5) SortedTreeNode@t))
    (or (= r@5 null) (= (dtype r@5) SortedTreeNode@t))
    (or (= this null) (= (dtype this) SortedTree@t))
    (or (= this@40 null) (= (dtype this@40) SortedTreeNode@t))
    (or (= this@42 null) (= (dtype this@42) SortedTreeNode@t))
    (wf Heap Mask)
  )
    anon0
)))
(let (($start (=> (and true
    (< (* 1000 channelK) (Fractions 1))
    (< (* 1000 monitorK) (Fractions 1))
    (< (* 1000 predicateK) (Fractions 1))
    (< 0 channelK)
    (< 0 monitorK)
    (< 0 predicateK)
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ Permission$Full perm$N) 0)
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ Permission$Full perm$R) Permission$FullFraction)
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ Permission$Zero perm$N) 0)
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ Permission$Zero perm$R) 0)
    (= (Seq@Length$Int$ Seq@Empty$Int$) 0)
    (= (Seq@Length$ref$ Seq@Empty$ref$) 0)
    (= channelK monitorK)
    (= Permission$FullFraction (Fractions 100))
    (= predicateK channelK)
    (> Permission$denominator 0)
    (forall( (|a_$2| Int) (|b_$2| Int) (|d| Int))(!(=> (and (and (<= 2 |d|) (= (mod |a_$2| |d|) (mod |b_$2| |d|))) (< |a_$2| |b_$2|)) (<= (+ |a_$2| |d|) |b_$2|))  :pattern ( (mod |a_$2| |d|) (mod |b_$2| |d|))))
    (forall( (|a_$3_$0| Seq$Int$) (|b_$3_$0| Seq$Int$))(!(=> (Seq@Equal$Int$ |a_$3_$0| |b_$3_$0|) (= |a_$3_$0| |b_$3_$0|))  :pattern ( (Seq@Equal$Int$ |a_$3_$0| |b_$3_$0|))))
    (forall( (|a_$3_$1| Seq$ref$) (|b_$3_$1| Seq$ref$))(!(=> (Seq@Equal$ref$ |a_$3_$1| |b_$3_$1|) (= |a_$3_$1| |b_$3_$1|))  :pattern ( (Seq@Equal$ref$ |a_$3_$1| |b_$3_$1|))))
    (forall( (|con_$0_$0| Bool) (|a_$1_$0| Bool) (|b_$1_$0| Bool))(!(=> (not |con_$0_$0|) (= (ite$Bool$ |con_$0_$0| |a_$1_$0| |b_$1_$0|) |b_$1_$0|))  :pattern ( (ite$Bool$ |con_$0_$0| |a_$1_$0| |b_$1_$0|))))
    (forall( (|con_$0_$1| Bool) (|a_$1_$1| Int) (|b_$1_$1| Int))(!(=> (not |con_$0_$1|) (= (ite$Int$ |con_$0_$1| |a_$1_$1| |b_$1_$1|) |b_$1_$1|))  :pattern ( (ite$Int$ |con_$0_$1| |a_$1_$1| |b_$1_$1|))))
    (forall( (|con_$0_$10| Bool) (|a_$1_$10| Field$Bool$) (|b_$1_$10| Field$Bool$))(!(=> (not |con_$0_$10|) (= (ite$Field$Bool$$ |con_$0_$10| |a_$1_$10| |b_$1_$10|) |b_$1_$10|))  :pattern ( (ite$Field$Bool$$ |con_$0_$10| |a_$1_$10| |b_$1_$10|))))
    (forall( (|con_$0_$11| Bool) (|a_$1_$11| $@Map@@ref@To@Int@@) (|b_$1_$11| $@Map@@ref@To@Int@@))(!(=> (not |con_$0_$11|) (= (ite$$@Map@@ref@To@Int@@$ |con_$0_$11| |a_$1_$11| |b_$1_$11|) |b_$1_$11|))  :pattern ( (ite$$@Map@@ref@To@Int@@$ |con_$0_$11| |a_$1_$11| |b_$1_$11|))))
    (forall( (|con_$0_$12| Bool) (|a_$1_$12| Seq$ref$) (|b_$1_$12| Seq$ref$))(!(=> (not |con_$0_$12|) (= (ite$Seq$ref$$ |con_$0_$12| |a_$1_$12| |b_$1_$12|) |b_$1_$12|))  :pattern ( (ite$Seq$ref$$ |con_$0_$12| |a_$1_$12| |b_$1_$12|))))
    (forall( (|con_$0_$13| Bool) (|a_$1_$13| Seq$Int$) (|b_$1_$13| Seq$Int$))(!(=> (not |con_$0_$13|) (= (ite$Seq$Int$$ |con_$0_$13| |a_$1_$13| |b_$1_$13|) |b_$1_$13|))  :pattern ( (ite$Seq$Int$$ |con_$0_$13| |a_$1_$13| |b_$1_$13|))))
    (forall( (|con_$0_$14| Bool) (|a_$1_$14| Field$ref$) (|b_$1_$14| Field$ref$))(!(=> (not |con_$0_$14|) (= (ite$Field$ref$$ |con_$0_$14| |a_$1_$14| |b_$1_$14|) |b_$1_$14|))  :pattern ( (ite$Field$ref$$ |con_$0_$14| |a_$1_$14| |b_$1_$14|))))
    (forall( (|con_$0_$15| Bool) (|a_$1_$15| Field$Seq$Int$$) (|b_$1_$15| Field$Seq$Int$$))(!(=> (not |con_$0_$15|) (= (ite$Field$Seq$Int$$$ |con_$0_$15| |a_$1_$15| |b_$1_$15|) |b_$1_$15|))  :pattern ( (ite$Field$Seq$Int$$$ |con_$0_$15| |a_$1_$15| |b_$1_$15|))))
    (forall( (|con_$0_$16| Bool) (|a_$1_$16| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$) (|b_$1_$16| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$))(!(=> (not |con_$0_$16|) (= (ite$Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$ |con_$0_$16| |a_$1_$16| |b_$1_$16|) |b_$1_$16|))  :pattern ( (ite$Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$ |con_$0_$16| |a_$1_$16| |b_$1_$16|))))
    (forall( (|con_$0_$17| Bool) (|a_$1_$17| TypeName) (|b_$1_$17| TypeName))(!(=> (not |con_$0_$17|) (= (ite$TypeName$ |con_$0_$17| |a_$1_$17| |b_$1_$17|) |b_$1_$17|))  :pattern ( (ite$TypeName$ |con_$0_$17| |a_$1_$17| |b_$1_$17|))))
    (forall( (|con_$0_$18| Bool) (|a_$1_$18| ModuleName) (|b_$1_$18| ModuleName))(!(=> (not |con_$0_$18|) (= (ite$ModuleName$ |con_$0_$18| |a_$1_$18| |b_$1_$18|) |b_$1_$18|))  :pattern ( (ite$ModuleName$ |con_$0_$18| |a_$1_$18| |b_$1_$18|))))
    (forall( (|con_$0_$2| Bool) (|a_$1_$2| $@Map@@PermissionComponent@To@Int@@) (|b_$1_$2| $@Map@@PermissionComponent@To@Int@@))(!(=> (not |con_$0_$2|) (= (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$0_$2| |a_$1_$2| |b_$1_$2|) |b_$1_$2|))  :pattern ( (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$0_$2| |a_$1_$2| |b_$1_$2|))))
    (forall( (|con_$0_$3| Bool) (|a_$1_$3| PermissionComponent) (|b_$1_$3| PermissionComponent))(!(=> (not |con_$0_$3|) (= (ite$PermissionComponent$ |con_$0_$3| |a_$1_$3| |b_$1_$3|) |b_$1_$3|))  :pattern ( (ite$PermissionComponent$ |con_$0_$3| |a_$1_$3| |b_$1_$3|))))
    (forall( (|con_$0_$4| Bool) (|a_$1_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|b_$1_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(=> (not |con_$0_$4|) (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$0_$4| |a_$1_$4| |b_$1_$4|) |b_$1_$4|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$0_$4| |a_$1_$4| |b_$1_$4|))))
    (forall( (|con_$0_$5| Bool) (|a_$1_$5| ref) (|b_$1_$5| ref))(!(=> (not |con_$0_$5|) (= (ite$ref$ |con_$0_$5| |a_$1_$5| |b_$1_$5|) |b_$1_$5|))  :pattern ( (ite$ref$ |con_$0_$5| |a_$1_$5| |b_$1_$5|))))
    (forall( (|con_$0_$6| Bool) (|a_$1_$6| Field$Int$) (|b_$1_$6| Field$Int$))(!(=> (not |con_$0_$6|) (= (ite$Field$Int$$ |con_$0_$6| |a_$1_$6| |b_$1_$6|) |b_$1_$6|))  :pattern ( (ite$Field$Int$$ |con_$0_$6| |a_$1_$6| |b_$1_$6|))))
    (forall( (|con_$0_$7| Bool) (|a_$1_$7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|b_$1_$7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (not |con_$0_$7|) (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$0_$7| |a_$1_$7| |b_$1_$7|) |b_$1_$7|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$0_$7| |a_$1_$7| |b_$1_$7|))))
    (forall( (|con_$0_$8| Bool) (|a_$1_$8| Field$Mu$) (|b_$1_$8| Field$Mu$))(!(=> (not |con_$0_$8|) (= (ite$Field$Mu$$ |con_$0_$8| |a_$1_$8| |b_$1_$8|) |b_$1_$8|))  :pattern ( (ite$Field$Mu$$ |con_$0_$8| |a_$1_$8| |b_$1_$8|))))
    (forall( (|con_$0_$9| Bool) (|a_$1_$9| Mu) (|b_$1_$9| Mu))(!(=> (not |con_$0_$9|) (= (ite$Mu$ |con_$0_$9| |a_$1_$9| |b_$1_$9|) |b_$1_$9|))  :pattern ( (ite$Mu$ |con_$0_$9| |a_$1_$9| |b_$1_$9|))))
    (forall( (|con_$1| Bool) (|a_$0_$0| Bool) (|b_$0_$0| Bool))(!(=> |con_$1| (= (ite$Bool$ |con_$1| |a_$0_$0| |b_$0_$0|) |a_$0_$0|))  :pattern ( (ite$Bool$ |con_$1| |a_$0_$0| |b_$0_$0|))))
    (forall( (|con_$10| Bool) (|a_$0_$9| Mu) (|b_$0_$9| Mu))(!(=> |con_$10| (= (ite$Mu$ |con_$10| |a_$0_$9| |b_$0_$9|) |a_$0_$9|))  :pattern ( (ite$Mu$ |con_$10| |a_$0_$9| |b_$0_$9|))))
    (forall( (|con_$11| Bool) (|a_$0_$10| Field$Bool$) (|b_$0_$10| Field$Bool$))(!(=> |con_$11| (= (ite$Field$Bool$$ |con_$11| |a_$0_$10| |b_$0_$10|) |a_$0_$10|))  :pattern ( (ite$Field$Bool$$ |con_$11| |a_$0_$10| |b_$0_$10|))))
    (forall( (|con_$12| Bool) (|a_$0_$11| $@Map@@ref@To@Int@@) (|b_$0_$11| $@Map@@ref@To@Int@@))(!(=> |con_$12| (= (ite$$@Map@@ref@To@Int@@$ |con_$12| |a_$0_$11| |b_$0_$11|) |a_$0_$11|))  :pattern ( (ite$$@Map@@ref@To@Int@@$ |con_$12| |a_$0_$11| |b_$0_$11|))))
    (forall( (|con_$13| Bool) (|a_$0_$12| Seq$ref$) (|b_$0_$12| Seq$ref$))(!(=> |con_$13| (= (ite$Seq$ref$$ |con_$13| |a_$0_$12| |b_$0_$12|) |a_$0_$12|))  :pattern ( (ite$Seq$ref$$ |con_$13| |a_$0_$12| |b_$0_$12|))))
    (forall( (|con_$14| Bool) (|a_$0_$13| Seq$Int$) (|b_$0_$13| Seq$Int$))(!(=> |con_$14| (= (ite$Seq$Int$$ |con_$14| |a_$0_$13| |b_$0_$13|) |a_$0_$13|))  :pattern ( (ite$Seq$Int$$ |con_$14| |a_$0_$13| |b_$0_$13|))))
    (forall( (|con_$15| Bool) (|a_$0_$14| Field$ref$) (|b_$0_$14| Field$ref$))(!(=> |con_$15| (= (ite$Field$ref$$ |con_$15| |a_$0_$14| |b_$0_$14|) |a_$0_$14|))  :pattern ( (ite$Field$ref$$ |con_$15| |a_$0_$14| |b_$0_$14|))))
    (forall( (|con_$16| Bool) (|a_$0_$15| Field$Seq$Int$$) (|b_$0_$15| Field$Seq$Int$$))(!(=> |con_$16| (= (ite$Field$Seq$Int$$$ |con_$16| |a_$0_$15| |b_$0_$15|) |a_$0_$15|))  :pattern ( (ite$Field$Seq$Int$$$ |con_$16| |a_$0_$15| |b_$0_$15|))))
    (forall( (|con_$17| Bool) (|a_$0_$16| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$) (|b_$0_$16| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$))(!(=> |con_$17| (= (ite$Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$ |con_$17| |a_$0_$16| |b_$0_$16|) |a_$0_$16|))  :pattern ( (ite$Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$ |con_$17| |a_$0_$16| |b_$0_$16|))))
    (forall( (|con_$18| Bool) (|a_$0_$17| TypeName) (|b_$0_$17| TypeName))(!(=> |con_$18| (= (ite$TypeName$ |con_$18| |a_$0_$17| |b_$0_$17|) |a_$0_$17|))  :pattern ( (ite$TypeName$ |con_$18| |a_$0_$17| |b_$0_$17|))))
    (forall( (|con_$19| Bool) (|a_$0_$18| ModuleName) (|b_$0_$18| ModuleName))(!(=> |con_$19| (= (ite$ModuleName$ |con_$19| |a_$0_$18| |b_$0_$18|) |a_$0_$18|))  :pattern ( (ite$ModuleName$ |con_$19| |a_$0_$18| |b_$0_$18|))))
    (forall( (|con_$2| Bool) (|a_$0_$1| Int) (|b_$0_$1| Int))(!(=> |con_$2| (= (ite$Int$ |con_$2| |a_$0_$1| |b_$0_$1|) |a_$0_$1|))  :pattern ( (ite$Int$ |con_$2| |a_$0_$1| |b_$0_$1|))))
    (forall( (|con_$3| Bool) (|a_$0_$2| $@Map@@PermissionComponent@To@Int@@) (|b_$0_$2| $@Map@@PermissionComponent@To@Int@@))(!(=> |con_$3| (= (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$3| |a_$0_$2| |b_$0_$2|) |a_$0_$2|))  :pattern ( (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$3| |a_$0_$2| |b_$0_$2|))))
    (forall( (|con_$4| Bool) (|a_$0_$3| PermissionComponent) (|b_$0_$3| PermissionComponent))(!(=> |con_$4| (= (ite$PermissionComponent$ |con_$4| |a_$0_$3| |b_$0_$3|) |a_$0_$3|))  :pattern ( (ite$PermissionComponent$ |con_$4| |a_$0_$3| |b_$0_$3|))))
    (forall( (|con_$5| Bool) (|a_$0_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|b_$0_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(=> |con_$5| (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$5| |a_$0_$4| |b_$0_$4|) |a_$0_$4|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$5| |a_$0_$4| |b_$0_$4|))))
    (forall( (|con_$6| Bool) (|a_$0_$5| ref) (|b_$0_$5| ref))(!(=> |con_$6| (= (ite$ref$ |con_$6| |a_$0_$5| |b_$0_$5|) |a_$0_$5|))  :pattern ( (ite$ref$ |con_$6| |a_$0_$5| |b_$0_$5|))))
    (forall( (|con_$7| Bool) (|a_$0_$6| Field$Int$) (|b_$0_$6| Field$Int$))(!(=> |con_$7| (= (ite$Field$Int$$ |con_$7| |a_$0_$6| |b_$0_$6|) |a_$0_$6|))  :pattern ( (ite$Field$Int$$ |con_$7| |a_$0_$6| |b_$0_$6|))))
    (forall( (|con_$8| Bool) (|a_$0_$7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|b_$0_$7| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> |con_$8| (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$8| |a_$0_$7| |b_$0_$7|) |a_$0_$7|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$8| |a_$0_$7| |b_$0_$7|))))
    (forall( (|con_$9| Bool) (|a_$0_$8| Field$Mu$) (|b_$0_$8| Field$Mu$))(!(=> |con_$9| (= (ite$Field$Mu$$ |con_$9| |a_$0_$8| |b_$0_$8|) |a_$0_$8|))  :pattern ( (ite$Field$Mu$$ |con_$9| |a_$0_$8| |b_$0_$8|))))
    (forall( (|f_$10_$0| Field$Bool$))(=> (NonPredicateField$Bool$ |f_$10_$0|) (not (PredicateField$Bool$ |f_$10_$0|))))
    (forall( (|f_$10_$1| Field$Int$))(=> (NonPredicateField$Int$ |f_$10_$1|) (not (PredicateField$Int$ |f_$10_$1|))))
    (forall( (|f_$10_$2| Field$ref$))(=> (NonPredicateField$ref$ |f_$10_$2|) (not (PredicateField$ref$ |f_$10_$2|))))
    (forall( (|f_$10_$3| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$))(=> (NonPredicateField$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |f_$10_$3|) (not (PredicateField$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |f_$10_$3|))))
    (forall( (|f_$10_$4| Field$Mu$))(=> (NonPredicateField$Mu$ |f_$10_$4|) (not (PredicateField$Mu$ |f_$10_$4|))))
    (forall( (|f_$10_$5| Field$Seq$Int$$))(=> (NonPredicateField$Seq$Int$$ |f_$10_$5|) (not (PredicateField$Seq$Int$$ |f_$10_$5|))))
    (forall( (|f_$11_$0| Field$Bool$))(=> (PredicateField$Bool$ |f_$11_$0|) (not (NonPredicateField$Bool$ |f_$11_$0|))))
    (forall( (|f_$11_$1| Field$Int$))(=> (PredicateField$Int$ |f_$11_$1|) (not (NonPredicateField$Int$ |f_$11_$1|))))
    (forall( (|f_$11_$2| Field$ref$))(=> (PredicateField$ref$ |f_$11_$2|) (not (NonPredicateField$ref$ |f_$11_$2|))))
    (forall( (|f_$11_$3| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$))(=> (PredicateField$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |f_$11_$3|) (not (NonPredicateField$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |f_$11_$3|))))
    (forall( (|f_$11_$4| Field$Mu$))(=> (PredicateField$Mu$ |f_$11_$4|) (not (NonPredicateField$Mu$ |f_$11_$4|))))
    (forall( (|f_$11_$5| Field$Seq$Int$$))(=> (PredicateField$Seq$Int$$ |f_$11_$5|) (not (NonPredicateField$Seq$Int$$ |f_$11_$5|))))
    (forall( (|h_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|m_$6| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$7| ref) (|q| ref))(!(=> (and (and (and (wf |h_$0| |m_$6|) (not (= |o_$7| |q|))) (or (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$7| held)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$0| |o_$7| rdheld))) (or (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |q| held)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$0| |q| rdheld))) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$0| |o_$7| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$0| |q| mu))))  :pattern ( (wf |h_$0| |m_$6|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$0| |o_$7| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$0| |q| mu))))
    (forall( (|ih| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|h| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|m_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (IsGoodInhaleState |ih| |h| |m_$2|) (and (and (and (and (and (and (and (and (and (forall( (|o_$1_$0| ref) (|f_$0_$0| Field$Bool$))(!(=> (CanRead$Bool$ |m_$2| |o_$1_$0| |f_$0_$0|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |ih| |o_$1_$0| |f_$0_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h| |o_$1_$0| |f_$0_$0|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |ih| |o_$1_$0| |f_$0_$0|)))) (forall( (|o_$1_$1| ref) (|f_$0_$1| Field$Int$))(!(=> (CanRead$Int$ |m_$2| |o_$1_$1| |f_$0_$1|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |ih| |o_$1_$1| |f_$0_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h| |o_$1_$1| |f_$0_$1|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |ih| |o_$1_$1| |f_$0_$1|))))) (forall( (|o_$1_$2| ref) (|f_$0_$2| Field$ref$))(!(=> (CanRead$ref$ |m_$2| |o_$1_$2| |f_$0_$2|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |ih| |o_$1_$2| |f_$0_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |h| |o_$1_$2| |f_$0_$2|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |ih| |o_$1_$2| |f_$0_$2|))))) (forall( (|o_$1_$3| ref) (|f_$0_$3| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$))(!(=> (CanRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$2| |o_$1_$3| |f_$0_$3|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |ih| |o_$1_$3| |f_$0_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |h| |o_$1_$3| |f_$0_$3|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |ih| |o_$1_$3| |f_$0_$3|))))) (forall( (|o_$1_$4| ref) (|f_$0_$4| Field$Mu$))(!(=> (CanRead$Mu$ |m_$2| |o_$1_$4| |f_$0_$4|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |ih| |o_$1_$4| |f_$0_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h| |o_$1_$4| |f_$0_$4|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |ih| |o_$1_$4| |f_$0_$4|))))) (forall( (|o_$1_$5| ref) (|f_$0_$5| Field$Seq$Int$$))(!(=> (CanRead$Seq$Int$$ |m_$2| |o_$1_$5| |f_$0_$5|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ |ih| |o_$1_$5| |f_$0_$5|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ |h| |o_$1_$5| |f_$0_$5|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ |ih| |o_$1_$5| |f_$0_$5|))))) (forall( (|o_$2| ref))(!(= (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |ih| |o_$2| held)) (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h| |o_$2| held)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |ih| |o_$2| held))))) (forall( (|o_$3| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |ih| |o_$3| rdheld) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h| |o_$3| rdheld))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |ih| |o_$3| rdheld))))) (forall( (|o_$4| ref))(!(=> (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h| |o_$4| held)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |ih| |o_$4| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h| |o_$4| mu)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h| |o_$4| held))))) (forall( (|o_$5| ref))(!(=> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h| |o_$5| rdheld) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |ih| |o_$5| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h| |o_$5| mu)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h| |o_$5| rdheld))))))  :pattern ( (IsGoodInhaleState |ih| |h| |m_$2|))))
    (forall( (|m_$0| Mu) (|n_$1| Mu) (|o_$0| Mu))(!(=> (and (MuBelow |m_$0| |n_$1|) (MuBelow |n_$1| |o_$0|)) (MuBelow |m_$0| |o_$0|))  :pattern ( (MuBelow |m_$0| |n_$1|) (MuBelow |n_$1| |o_$0|))))
    (forall( (|m_$1| Mu) (|n_$2| Mu))(=> (MuBelow |m_$1| |n_$2|) (not (= |n_$2| $LockBottom))))
    (forall( (|m_$3_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$1| ref) (|f_$1_$0| Field$Bool$))(!(= (CanRead$Bool$ |m_$3_$0| |obj_$1| |f_$1_$0|) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$3_$0| |obj_$1| |f_$1_$0|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$3_$0| |obj_$1| |f_$1_$0|) perm$N))))  :expand  false :pattern ( (CanRead$Bool$ |m_$3_$0| |obj_$1| |f_$1_$0|))))
    (forall( (|m_$3_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$2| ref) (|f_$1_$1| Field$Int$))(!(= (CanRead$Int$ |m_$3_$1| |obj_$2| |f_$1_$1|) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$3_$1| |obj_$2| |f_$1_$1|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$3_$1| |obj_$2| |f_$1_$1|) perm$N))))  :expand  false :pattern ( (CanRead$Int$ |m_$3_$1| |obj_$2| |f_$1_$1|))))
    (forall( (|m_$3_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$3| ref) (|f_$1_$2| Field$ref$))(!(= (CanRead$ref$ |m_$3_$2| |obj_$3| |f_$1_$2|) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$3_$2| |obj_$3| |f_$1_$2|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$3_$2| |obj_$3| |f_$1_$2|) perm$N))))  :expand  false :pattern ( (CanRead$ref$ |m_$3_$2| |obj_$3| |f_$1_$2|))))
    (forall( (|m_$3_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$4| ref) (|f_$1_$3| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$))(!(= (CanRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$3_$3| |obj_$4| |f_$1_$3|) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$3_$3| |obj_$4| |f_$1_$3|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$3_$3| |obj_$4| |f_$1_$3|) perm$N))))  :expand  false :pattern ( (CanRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$3_$3| |obj_$4| |f_$1_$3|))))
    (forall( (|m_$3_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$5| ref) (|f_$1_$4| Field$Mu$))(!(= (CanRead$Mu$ |m_$3_$4| |obj_$5| |f_$1_$4|) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$3_$4| |obj_$5| |f_$1_$4|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$3_$4| |obj_$5| |f_$1_$4|) perm$N))))  :expand  false :pattern ( (CanRead$Mu$ |m_$3_$4| |obj_$5| |f_$1_$4|))))
    (forall( (|m_$3_$5| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$6| ref) (|f_$1_$5| Field$Seq$Int$$))(!(= (CanRead$Seq$Int$$ |m_$3_$5| |obj_$6| |f_$1_$5|) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$3_$5| |obj_$6| |f_$1_$5|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$3_$5| |obj_$6| |f_$1_$5|) perm$N))))  :expand  false :pattern ( (CanRead$Seq$Int$$ |m_$3_$5| |obj_$6| |f_$1_$5|))))
    (forall( (|m_$4_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$0_$0| ref) (|f_$2_$0| Field$Bool$))(!(= (CanWrite$Bool$ |m_$4_$0| |obj_$0_$0| |f_$2_$0|) (and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$4_$0| |obj_$0_$0| |f_$2_$0|) perm$R) Permission$FullFraction) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$4_$0| |obj_$0_$0| |f_$2_$0|) perm$N) 0)))  :expand  false :pattern ( (CanWrite$Bool$ |m_$4_$0| |obj_$0_$0| |f_$2_$0|))))
    (forall( (|m_$4_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$0_$1| ref) (|f_$2_$1| Field$Int$))(!(= (CanWrite$Int$ |m_$4_$1| |obj_$0_$1| |f_$2_$1|) (and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$4_$1| |obj_$0_$1| |f_$2_$1|) perm$R) Permission$FullFraction) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$4_$1| |obj_$0_$1| |f_$2_$1|) perm$N) 0)))  :expand  false :pattern ( (CanWrite$Int$ |m_$4_$1| |obj_$0_$1| |f_$2_$1|))))
    (forall( (|m_$4_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$0_$2| ref) (|f_$2_$2| Field$ref$))(!(= (CanWrite$ref$ |m_$4_$2| |obj_$0_$2| |f_$2_$2|) (and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$4_$2| |obj_$0_$2| |f_$2_$2|) perm$R) Permission$FullFraction) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$4_$2| |obj_$0_$2| |f_$2_$2|) perm$N) 0)))  :expand  false :pattern ( (CanWrite$ref$ |m_$4_$2| |obj_$0_$2| |f_$2_$2|))))
    (forall( (|m_$4_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$0_$3| ref) (|f_$2_$3| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$))(!(= (CanWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$4_$3| |obj_$0_$3| |f_$2_$3|) (and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$4_$3| |obj_$0_$3| |f_$2_$3|) perm$R) Permission$FullFraction) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$4_$3| |obj_$0_$3| |f_$2_$3|) perm$N) 0)))  :expand  false :pattern ( (CanWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$4_$3| |obj_$0_$3| |f_$2_$3|))))
    (forall( (|m_$4_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$0_$4| ref) (|f_$2_$4| Field$Mu$))(!(= (CanWrite$Mu$ |m_$4_$4| |obj_$0_$4| |f_$2_$4|) (and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$4_$4| |obj_$0_$4| |f_$2_$4|) perm$R) Permission$FullFraction) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$4_$4| |obj_$0_$4| |f_$2_$4|) perm$N) 0)))  :expand  false :pattern ( (CanWrite$Mu$ |m_$4_$4| |obj_$0_$4| |f_$2_$4|))))
    (forall( (|m_$4_$5| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$0_$5| ref) (|f_$2_$5| Field$Seq$Int$$))(!(= (CanWrite$Seq$Int$$ |m_$4_$5| |obj_$0_$5| |f_$2_$5|) (and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$4_$5| |obj_$0_$5| |f_$2_$5|) perm$R) Permission$FullFraction) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$4_$5| |obj_$0_$5| |f_$2_$5|) perm$N) 0)))  :expand  false :pattern ( (CanWrite$Seq$Int$$ |m_$4_$5| |obj_$0_$5| |f_$2_$5|))))
    (forall( (|m_$5| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (IsGoodMask |m_$5|) (and (and (and (and (and (forall( (|o_$6_$0| ref) (|f_$3_$0| Field$Bool$))(and (and (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$5| |o_$6_$0| |f_$3_$0|) perm$R)) (=> (NonPredicateField$Bool$ |f_$3_$0|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$5| |o_$6_$0| |f_$3_$0|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$5| |o_$6_$0| |f_$3_$0|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$5| |o_$6_$0| |f_$3_$0|) perm$R) Permission$FullFraction))))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$5| |o_$6_$0| |f_$3_$0|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$5| |o_$6_$0| |f_$3_$0|) perm$R))))) (forall( (|o_$6_$1| ref) (|f_$3_$1| Field$Int$))(and (and (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$5| |o_$6_$1| |f_$3_$1|) perm$R)) (=> (NonPredicateField$Int$ |f_$3_$1|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$5| |o_$6_$1| |f_$3_$1|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$5| |o_$6_$1| |f_$3_$1|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$5| |o_$6_$1| |f_$3_$1|) perm$R) Permission$FullFraction))))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$5| |o_$6_$1| |f_$3_$1|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$5| |o_$6_$1| |f_$3_$1|) perm$R)))))) (forall( (|o_$6_$2| ref) (|f_$3_$2| Field$ref$))(and (and (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$5| |o_$6_$2| |f_$3_$2|) perm$R)) (=> (NonPredicateField$ref$ |f_$3_$2|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$5| |o_$6_$2| |f_$3_$2|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$5| |o_$6_$2| |f_$3_$2|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$5| |o_$6_$2| |f_$3_$2|) perm$R) Permission$FullFraction))))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$5| |o_$6_$2| |f_$3_$2|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$5| |o_$6_$2| |f_$3_$2|) perm$R)))))) (forall( (|o_$6_$3| ref) (|f_$3_$3| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$))(and (and (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$5| |o_$6_$3| |f_$3_$3|) perm$R)) (=> (NonPredicateField$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |f_$3_$3|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$5| |o_$6_$3| |f_$3_$3|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$5| |o_$6_$3| |f_$3_$3|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$5| |o_$6_$3| |f_$3_$3|) perm$R) Permission$FullFraction))))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$5| |o_$6_$3| |f_$3_$3|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$5| |o_$6_$3| |f_$3_$3|) perm$R)))))) (forall( (|o_$6_$4| ref) (|f_$3_$4| Field$Mu$))(and (and (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$5| |o_$6_$4| |f_$3_$4|) perm$R)) (=> (NonPredicateField$Mu$ |f_$3_$4|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$5| |o_$6_$4| |f_$3_$4|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$5| |o_$6_$4| |f_$3_$4|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$5| |o_$6_$4| |f_$3_$4|) perm$R) Permission$FullFraction))))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$5| |o_$6_$4| |f_$3_$4|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$5| |o_$6_$4| |f_$3_$4|) perm$R)))))) (forall( (|o_$6_$5| ref) (|f_$3_$5| Field$Seq$Int$$))(and (and (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$5| |o_$6_$5| |f_$3_$5|) perm$R)) (=> (NonPredicateField$Seq$Int$$ |f_$3_$5|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$5| |o_$6_$5| |f_$3_$5|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$5| |o_$6_$5| |f_$3_$5|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$5| |o_$6_$5| |f_$3_$5|) perm$R) Permission$FullFraction))))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$5| |o_$6_$5| |f_$3_$5|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$5| |o_$6_$5| |f_$3_$5|) perm$R)))))))  :expand  true :pattern ( (IsGoodMask |m_$5|))))
    (forall( (|m_$7_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$0| ref) (|f_$4_$0| Field$Bool$) (|howMuch_$3| Int) (|q_$0_$0| ref) (|g_$4| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Bool$ |m_$7_$0| |o_$8_$0| |f_$4_$0| |howMuch_$3|) |q_$0_$0| |g_$4|) perm$R) (ite$Int$ (and (= |o_$8_$0| |q_$0_$0|) (= |f_$4_$0| |g_$4|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7_$0| |q_$0_$0| |g_$4|) perm$R) |howMuch_$3|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7_$0| |q_$0_$0| |g_$4|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Bool$ |m_$7_$0| |o_$8_$0| |f_$4_$0| |howMuch_$3|) |q_$0_$0| |g_$4|) perm$R))))
    (forall( (|m_$7_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$1| ref) (|f_$4_$1| Field$Int$) (|howMuch_$4| Int) (|q_$0_$1| ref) (|g_$5| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Int$ |m_$7_$1| |o_$8_$1| |f_$4_$1| |howMuch_$4|) |q_$0_$1| |g_$5|) perm$R) (ite$Int$ (and (= |o_$8_$1| |q_$0_$1|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7_$1| |q_$0_$1| |g_$5|) perm$R) |howMuch_$4|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7_$1| |q_$0_$1| |g_$5|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Int$ |m_$7_$1| |o_$8_$1| |f_$4_$1| |howMuch_$4|) |q_$0_$1| |g_$5|) perm$R))))
    (forall( (|m_$7_$10| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$10| ref) (|f_$4_$10| Field$Mu$) (|howMuch_$13| Int) (|q_$0_$10| ref) (|g_$14| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Mu$ |m_$7_$10| |o_$8_$10| |f_$4_$10| |howMuch_$13|) |q_$0_$10| |g_$14|) perm$R) (ite$Int$ (and (= |o_$8_$10| |q_$0_$10|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7_$10| |q_$0_$10| |g_$14|) perm$R) |howMuch_$13|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7_$10| |q_$0_$10| |g_$14|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Mu$ |m_$7_$10| |o_$8_$10| |f_$4_$10| |howMuch_$13|) |q_$0_$10| |g_$14|) perm$R))))
    (forall( (|m_$7_$11| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$11| ref) (|f_$4_$11| Field$Seq$Int$$) (|howMuch_$14| Int) (|q_$0_$11| ref) (|g_$15| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Seq$Int$$ |m_$7_$11| |o_$8_$11| |f_$4_$11| |howMuch_$14|) |q_$0_$11| |g_$15|) perm$R) (ite$Int$ (and (= |o_$8_$11| |q_$0_$11|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7_$11| |q_$0_$11| |g_$15|) perm$R) |howMuch_$14|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7_$11| |q_$0_$11| |g_$15|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Seq$Int$$ |m_$7_$11| |o_$8_$11| |f_$4_$11| |howMuch_$14|) |q_$0_$11| |g_$15|) perm$R))))
    (forall( (|m_$7_$12| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$12| ref) (|f_$4_$12| Field$Bool$) (|howMuch_$15| Int) (|q_$0_$12| ref) (|g_$16| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Bool$ |m_$7_$12| |o_$8_$12| |f_$4_$12| |howMuch_$15|) |q_$0_$12| |g_$16|) perm$R) (ite$Int$ (and (= |o_$8_$12| |q_$0_$12|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7_$12| |q_$0_$12| |g_$16|) perm$R) |howMuch_$15|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7_$12| |q_$0_$12| |g_$16|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Bool$ |m_$7_$12| |o_$8_$12| |f_$4_$12| |howMuch_$15|) |q_$0_$12| |g_$16|) perm$R))))
    (forall( (|m_$7_$13| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$13| ref) (|f_$4_$13| Field$Int$) (|howMuch_$16| Int) (|q_$0_$13| ref) (|g_$17| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Int$ |m_$7_$13| |o_$8_$13| |f_$4_$13| |howMuch_$16|) |q_$0_$13| |g_$17|) perm$R) (ite$Int$ (and (= |o_$8_$13| |q_$0_$13|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7_$13| |q_$0_$13| |g_$17|) perm$R) |howMuch_$16|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7_$13| |q_$0_$13| |g_$17|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Int$ |m_$7_$13| |o_$8_$13| |f_$4_$13| |howMuch_$16|) |q_$0_$13| |g_$17|) perm$R))))
    (forall( (|m_$7_$14| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$14| ref) (|f_$4_$14| Field$ref$) (|howMuch_$17| Int) (|q_$0_$14| ref) (|g_$18| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$ref$ |m_$7_$14| |o_$8_$14| |f_$4_$14| |howMuch_$17|) |q_$0_$14| |g_$18|) perm$R) (ite$Int$ (and (= |o_$8_$14| |q_$0_$14|) (= |f_$4_$14| |g_$18|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7_$14| |q_$0_$14| |g_$18|) perm$R) |howMuch_$17|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7_$14| |q_$0_$14| |g_$18|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$ref$ |m_$7_$14| |o_$8_$14| |f_$4_$14| |howMuch_$17|) |q_$0_$14| |g_$18|) perm$R))))
    (forall( (|m_$7_$15| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$15| ref) (|f_$4_$15| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$) (|howMuch_$18| Int) (|q_$0_$15| ref) (|g_$19| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$7_$15| |o_$8_$15| |f_$4_$15| |howMuch_$18|) |q_$0_$15| |g_$19|) perm$R) (ite$Int$ (and (= |o_$8_$15| |q_$0_$15|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7_$15| |q_$0_$15| |g_$19|) perm$R) |howMuch_$18|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7_$15| |q_$0_$15| |g_$19|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$7_$15| |o_$8_$15| |f_$4_$15| |howMuch_$18|) |q_$0_$15| |g_$19|) perm$R))))
    (forall( (|m_$7_$16| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$16| ref) (|f_$4_$16| Field$Mu$) (|howMuch_$19| Int) (|q_$0_$16| ref) (|g_$20| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Mu$ |m_$7_$16| |o_$8_$16| |f_$4_$16| |howMuch_$19|) |q_$0_$16| |g_$20|) perm$R) (ite$Int$ (and (= |o_$8_$16| |q_$0_$16|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7_$16| |q_$0_$16| |g_$20|) perm$R) |howMuch_$19|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7_$16| |q_$0_$16| |g_$20|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Mu$ |m_$7_$16| |o_$8_$16| |f_$4_$16| |howMuch_$19|) |q_$0_$16| |g_$20|) perm$R))))
    (forall( (|m_$7_$17| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$17| ref) (|f_$4_$17| Field$Seq$Int$$) (|howMuch_$20| Int) (|q_$0_$17| ref) (|g_$21| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Seq$Int$$ |m_$7_$17| |o_$8_$17| |f_$4_$17| |howMuch_$20|) |q_$0_$17| |g_$21|) perm$R) (ite$Int$ (and (= |o_$8_$17| |q_$0_$17|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7_$17| |q_$0_$17| |g_$21|) perm$R) |howMuch_$20|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7_$17| |q_$0_$17| |g_$21|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Seq$Int$$ |m_$7_$17| |o_$8_$17| |f_$4_$17| |howMuch_$20|) |q_$0_$17| |g_$21|) perm$R))))
    (forall( (|m_$7_$18| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$18| ref) (|f_$4_$18| Field$Bool$) (|howMuch_$21| Int) (|q_$0_$18| ref) (|g_$22| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (DecPerm$Bool$ |m_$7_$18| |o_$8_$18| |f_$4_$18| |howMuch_$21|) |q_$0_$18| |g_$22|) perm$R) (ite$Int$ (and (= |o_$8_$18| |q_$0_$18|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$7_$18| |q_$0_$18| |g_$22|) perm$R) |howMuch_$21|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$7_$18| |q_$0_$18| |g_$22|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (DecPerm$Bool$ |m_$7_$18| |o_$8_$18| |f_$4_$18| |howMuch_$21|) |q_$0_$18| |g_$22|) perm$R))))
    (forall( (|m_$7_$19| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$19| ref) (|f_$4_$19| Field$Int$) (|howMuch_$22| Int) (|q_$0_$19| ref) (|g_$23| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (DecPerm$Int$ |m_$7_$19| |o_$8_$19| |f_$4_$19| |howMuch_$22|) |q_$0_$19| |g_$23|) perm$R) (ite$Int$ (and (= |o_$8_$19| |q_$0_$19|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$7_$19| |q_$0_$19| |g_$23|) perm$R) |howMuch_$22|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$7_$19| |q_$0_$19| |g_$23|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (DecPerm$Int$ |m_$7_$19| |o_$8_$19| |f_$4_$19| |howMuch_$22|) |q_$0_$19| |g_$23|) perm$R))))
    (forall( (|m_$7_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$2| ref) (|f_$4_$2| Field$ref$) (|howMuch_$5| Int) (|q_$0_$2| ref) (|g_$6| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$ref$ |m_$7_$2| |o_$8_$2| |f_$4_$2| |howMuch_$5|) |q_$0_$2| |g_$6|) perm$R) (ite$Int$ (and (= |o_$8_$2| |q_$0_$2|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7_$2| |q_$0_$2| |g_$6|) perm$R) |howMuch_$5|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7_$2| |q_$0_$2| |g_$6|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$ref$ |m_$7_$2| |o_$8_$2| |f_$4_$2| |howMuch_$5|) |q_$0_$2| |g_$6|) perm$R))))
    (forall( (|m_$7_$20| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$20| ref) (|f_$4_$20| Field$ref$) (|howMuch_$23| Int) (|q_$0_$20| ref) (|g_$24| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (DecPerm$ref$ |m_$7_$20| |o_$8_$20| |f_$4_$20| |howMuch_$23|) |q_$0_$20| |g_$24|) perm$R) (ite$Int$ (and (= |o_$8_$20| |q_$0_$20|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$7_$20| |q_$0_$20| |g_$24|) perm$R) |howMuch_$23|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$7_$20| |q_$0_$20| |g_$24|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (DecPerm$ref$ |m_$7_$20| |o_$8_$20| |f_$4_$20| |howMuch_$23|) |q_$0_$20| |g_$24|) perm$R))))
    (forall( (|m_$7_$21| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$21| ref) (|f_$4_$21| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$) (|howMuch_$24| Int) (|q_$0_$21| ref) (|g_$25| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (DecPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$7_$21| |o_$8_$21| |f_$4_$21| |howMuch_$24|) |q_$0_$21| |g_$25|) perm$R) (ite$Int$ (and (= |o_$8_$21| |q_$0_$21|) (= |f_$4_$21| |g_$25|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$7_$21| |q_$0_$21| |g_$25|) perm$R) |howMuch_$24|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$7_$21| |q_$0_$21| |g_$25|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (DecPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$7_$21| |o_$8_$21| |f_$4_$21| |howMuch_$24|) |q_$0_$21| |g_$25|) perm$R))))
    (forall( (|m_$7_$22| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$22| ref) (|f_$4_$22| Field$Mu$) (|howMuch_$25| Int) (|q_$0_$22| ref) (|g_$26| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (DecPerm$Mu$ |m_$7_$22| |o_$8_$22| |f_$4_$22| |howMuch_$25|) |q_$0_$22| |g_$26|) perm$R) (ite$Int$ (and (= |o_$8_$22| |q_$0_$22|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$7_$22| |q_$0_$22| |g_$26|) perm$R) |howMuch_$25|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$7_$22| |q_$0_$22| |g_$26|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (DecPerm$Mu$ |m_$7_$22| |o_$8_$22| |f_$4_$22| |howMuch_$25|) |q_$0_$22| |g_$26|) perm$R))))
    (forall( (|m_$7_$23| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$23| ref) (|f_$4_$23| Field$Seq$Int$$) (|howMuch_$26| Int) (|q_$0_$23| ref) (|g_$27| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (DecPerm$Seq$Int$$ |m_$7_$23| |o_$8_$23| |f_$4_$23| |howMuch_$26|) |q_$0_$23| |g_$27|) perm$R) (ite$Int$ (and (= |o_$8_$23| |q_$0_$23|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$7_$23| |q_$0_$23| |g_$27|) perm$R) |howMuch_$26|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$7_$23| |q_$0_$23| |g_$27|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (DecPerm$Seq$Int$$ |m_$7_$23| |o_$8_$23| |f_$4_$23| |howMuch_$26|) |q_$0_$23| |g_$27|) perm$R))))
    (forall( (|m_$7_$24| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$24| ref) (|f_$4_$24| Field$Bool$) (|howMuch_$27| Int) (|q_$0_$24| ref) (|g_$28| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Bool$ |m_$7_$24| |o_$8_$24| |f_$4_$24| |howMuch_$27|) |q_$0_$24| |g_$28|) perm$R) (ite$Int$ (and (= |o_$8_$24| |q_$0_$24|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7_$24| |q_$0_$24| |g_$28|) perm$R) |howMuch_$27|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7_$24| |q_$0_$24| |g_$28|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Bool$ |m_$7_$24| |o_$8_$24| |f_$4_$24| |howMuch_$27|) |q_$0_$24| |g_$28|) perm$R))))
    (forall( (|m_$7_$25| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$25| ref) (|f_$4_$25| Field$Int$) (|howMuch_$28| Int) (|q_$0_$25| ref) (|g_$29| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Int$ |m_$7_$25| |o_$8_$25| |f_$4_$25| |howMuch_$28|) |q_$0_$25| |g_$29|) perm$R) (ite$Int$ (and (= |o_$8_$25| |q_$0_$25|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7_$25| |q_$0_$25| |g_$29|) perm$R) |howMuch_$28|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7_$25| |q_$0_$25| |g_$29|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Int$ |m_$7_$25| |o_$8_$25| |f_$4_$25| |howMuch_$28|) |q_$0_$25| |g_$29|) perm$R))))
    (forall( (|m_$7_$26| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$26| ref) (|f_$4_$26| Field$ref$) (|howMuch_$29| Int) (|q_$0_$26| ref) (|g_$30| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$ref$ |m_$7_$26| |o_$8_$26| |f_$4_$26| |howMuch_$29|) |q_$0_$26| |g_$30|) perm$R) (ite$Int$ (and (= |o_$8_$26| |q_$0_$26|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7_$26| |q_$0_$26| |g_$30|) perm$R) |howMuch_$29|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7_$26| |q_$0_$26| |g_$30|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$ref$ |m_$7_$26| |o_$8_$26| |f_$4_$26| |howMuch_$29|) |q_$0_$26| |g_$30|) perm$R))))
    (forall( (|m_$7_$27| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$27| ref) (|f_$4_$27| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$) (|howMuch_$30| Int) (|q_$0_$27| ref) (|g_$31| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$7_$27| |o_$8_$27| |f_$4_$27| |howMuch_$30|) |q_$0_$27| |g_$31|) perm$R) (ite$Int$ (and (= |o_$8_$27| |q_$0_$27|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7_$27| |q_$0_$27| |g_$31|) perm$R) |howMuch_$30|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7_$27| |q_$0_$27| |g_$31|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$7_$27| |o_$8_$27| |f_$4_$27| |howMuch_$30|) |q_$0_$27| |g_$31|) perm$R))))
    (forall( (|m_$7_$28| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$28| ref) (|f_$4_$28| Field$Mu$) (|howMuch_$31| Int) (|q_$0_$28| ref) (|g_$32| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Mu$ |m_$7_$28| |o_$8_$28| |f_$4_$28| |howMuch_$31|) |q_$0_$28| |g_$32|) perm$R) (ite$Int$ (and (= |o_$8_$28| |q_$0_$28|) (= |f_$4_$28| |g_$32|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7_$28| |q_$0_$28| |g_$32|) perm$R) |howMuch_$31|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7_$28| |q_$0_$28| |g_$32|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Mu$ |m_$7_$28| |o_$8_$28| |f_$4_$28| |howMuch_$31|) |q_$0_$28| |g_$32|) perm$R))))
    (forall( (|m_$7_$29| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$29| ref) (|f_$4_$29| Field$Seq$Int$$) (|howMuch_$32| Int) (|q_$0_$29| ref) (|g_$33| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Seq$Int$$ |m_$7_$29| |o_$8_$29| |f_$4_$29| |howMuch_$32|) |q_$0_$29| |g_$33|) perm$R) (ite$Int$ (and (= |o_$8_$29| |q_$0_$29|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7_$29| |q_$0_$29| |g_$33|) perm$R) |howMuch_$32|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7_$29| |q_$0_$29| |g_$33|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Seq$Int$$ |m_$7_$29| |o_$8_$29| |f_$4_$29| |howMuch_$32|) |q_$0_$29| |g_$33|) perm$R))))
    (forall( (|m_$7_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$3| ref) (|f_$4_$3| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$) (|howMuch_$6| Int) (|q_$0_$3| ref) (|g_$7| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$7_$3| |o_$8_$3| |f_$4_$3| |howMuch_$6|) |q_$0_$3| |g_$7|) perm$R) (ite$Int$ (and (= |o_$8_$3| |q_$0_$3|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7_$3| |q_$0_$3| |g_$7|) perm$R) |howMuch_$6|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7_$3| |q_$0_$3| |g_$7|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$7_$3| |o_$8_$3| |f_$4_$3| |howMuch_$6|) |q_$0_$3| |g_$7|) perm$R))))
    (forall( (|m_$7_$30| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$30| ref) (|f_$4_$30| Field$Bool$) (|howMuch_$33| Int) (|q_$0_$30| ref) (|g_$34| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Bool$ |m_$7_$30| |o_$8_$30| |f_$4_$30| |howMuch_$33|) |q_$0_$30| |g_$34|) perm$R) (ite$Int$ (and (= |o_$8_$30| |q_$0_$30|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7_$30| |q_$0_$30| |g_$34|) perm$R) |howMuch_$33|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7_$30| |q_$0_$30| |g_$34|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Bool$ |m_$7_$30| |o_$8_$30| |f_$4_$30| |howMuch_$33|) |q_$0_$30| |g_$34|) perm$R))))
    (forall( (|m_$7_$31| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$31| ref) (|f_$4_$31| Field$Int$) (|howMuch_$34| Int) (|q_$0_$31| ref) (|g_$35| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Int$ |m_$7_$31| |o_$8_$31| |f_$4_$31| |howMuch_$34|) |q_$0_$31| |g_$35|) perm$R) (ite$Int$ (and (= |o_$8_$31| |q_$0_$31|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7_$31| |q_$0_$31| |g_$35|) perm$R) |howMuch_$34|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7_$31| |q_$0_$31| |g_$35|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Int$ |m_$7_$31| |o_$8_$31| |f_$4_$31| |howMuch_$34|) |q_$0_$31| |g_$35|) perm$R))))
    (forall( (|m_$7_$32| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$32| ref) (|f_$4_$32| Field$ref$) (|howMuch_$35| Int) (|q_$0_$32| ref) (|g_$36| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$ref$ |m_$7_$32| |o_$8_$32| |f_$4_$32| |howMuch_$35|) |q_$0_$32| |g_$36|) perm$R) (ite$Int$ (and (= |o_$8_$32| |q_$0_$32|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7_$32| |q_$0_$32| |g_$36|) perm$R) |howMuch_$35|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7_$32| |q_$0_$32| |g_$36|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$ref$ |m_$7_$32| |o_$8_$32| |f_$4_$32| |howMuch_$35|) |q_$0_$32| |g_$36|) perm$R))))
    (forall( (|m_$7_$33| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$33| ref) (|f_$4_$33| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$) (|howMuch_$36| Int) (|q_$0_$33| ref) (|g_$37| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$7_$33| |o_$8_$33| |f_$4_$33| |howMuch_$36|) |q_$0_$33| |g_$37|) perm$R) (ite$Int$ (and (= |o_$8_$33| |q_$0_$33|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7_$33| |q_$0_$33| |g_$37|) perm$R) |howMuch_$36|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7_$33| |q_$0_$33| |g_$37|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$7_$33| |o_$8_$33| |f_$4_$33| |howMuch_$36|) |q_$0_$33| |g_$37|) perm$R))))
    (forall( (|m_$7_$34| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$34| ref) (|f_$4_$34| Field$Mu$) (|howMuch_$37| Int) (|q_$0_$34| ref) (|g_$38| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Mu$ |m_$7_$34| |o_$8_$34| |f_$4_$34| |howMuch_$37|) |q_$0_$34| |g_$38|) perm$R) (ite$Int$ (and (= |o_$8_$34| |q_$0_$34|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7_$34| |q_$0_$34| |g_$38|) perm$R) |howMuch_$37|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7_$34| |q_$0_$34| |g_$38|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Mu$ |m_$7_$34| |o_$8_$34| |f_$4_$34| |howMuch_$37|) |q_$0_$34| |g_$38|) perm$R))))
    (forall( (|m_$7_$35| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$35| ref) (|f_$4_$35| Field$Seq$Int$$) (|howMuch_$38| Int) (|q_$0_$35| ref) (|g_$39| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Seq$Int$$ |m_$7_$35| |o_$8_$35| |f_$4_$35| |howMuch_$38|) |q_$0_$35| |g_$39|) perm$R) (ite$Int$ (and (= |o_$8_$35| |q_$0_$35|) (= |f_$4_$35| |g_$39|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7_$35| |q_$0_$35| |g_$39|) perm$R) |howMuch_$38|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7_$35| |q_$0_$35| |g_$39|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Seq$Int$$ |m_$7_$35| |o_$8_$35| |f_$4_$35| |howMuch_$38|) |q_$0_$35| |g_$39|) perm$R))))
    (forall( (|m_$7_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$4| ref) (|f_$4_$4| Field$Mu$) (|howMuch_$7| Int) (|q_$0_$4| ref) (|g_$8| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Mu$ |m_$7_$4| |o_$8_$4| |f_$4_$4| |howMuch_$7|) |q_$0_$4| |g_$8|) perm$R) (ite$Int$ (and (= |o_$8_$4| |q_$0_$4|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7_$4| |q_$0_$4| |g_$8|) perm$R) |howMuch_$7|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7_$4| |q_$0_$4| |g_$8|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Mu$ |m_$7_$4| |o_$8_$4| |f_$4_$4| |howMuch_$7|) |q_$0_$4| |g_$8|) perm$R))))
    (forall( (|m_$7_$5| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$5| ref) (|f_$4_$5| Field$Seq$Int$$) (|howMuch_$8| Int) (|q_$0_$5| ref) (|g_$9| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Seq$Int$$ |m_$7_$5| |o_$8_$5| |f_$4_$5| |howMuch_$8|) |q_$0_$5| |g_$9|) perm$R) (ite$Int$ (and (= |o_$8_$5| |q_$0_$5|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7_$5| |q_$0_$5| |g_$9|) perm$R) |howMuch_$8|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7_$5| |q_$0_$5| |g_$9|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Seq$Int$$ |m_$7_$5| |o_$8_$5| |f_$4_$5| |howMuch_$8|) |q_$0_$5| |g_$9|) perm$R))))
    (forall( (|m_$7_$6| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$6| ref) (|f_$4_$6| Field$Bool$) (|howMuch_$9| Int) (|q_$0_$6| ref) (|g_$10| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Bool$ |m_$7_$6| |o_$8_$6| |f_$4_$6| |howMuch_$9|) |q_$0_$6| |g_$10|) perm$R) (ite$Int$ (and (= |o_$8_$6| |q_$0_$6|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7_$6| |q_$0_$6| |g_$10|) perm$R) |howMuch_$9|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7_$6| |q_$0_$6| |g_$10|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Bool$ |m_$7_$6| |o_$8_$6| |f_$4_$6| |howMuch_$9|) |q_$0_$6| |g_$10|) perm$R))))
    (forall( (|m_$7_$7| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$7| ref) (|f_$4_$7| Field$Int$) (|howMuch_$10| Int) (|q_$0_$7| ref) (|g_$11| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Int$ |m_$7_$7| |o_$8_$7| |f_$4_$7| |howMuch_$10|) |q_$0_$7| |g_$11|) perm$R) (ite$Int$ (and (= |o_$8_$7| |q_$0_$7|) (= |f_$4_$7| |g_$11|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7_$7| |q_$0_$7| |g_$11|) perm$R) |howMuch_$10|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7_$7| |q_$0_$7| |g_$11|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Int$ |m_$7_$7| |o_$8_$7| |f_$4_$7| |howMuch_$10|) |q_$0_$7| |g_$11|) perm$R))))
    (forall( (|m_$7_$8| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$8| ref) (|f_$4_$8| Field$ref$) (|howMuch_$11| Int) (|q_$0_$8| ref) (|g_$12| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$ref$ |m_$7_$8| |o_$8_$8| |f_$4_$8| |howMuch_$11|) |q_$0_$8| |g_$12|) perm$R) (ite$Int$ (and (= |o_$8_$8| |q_$0_$8|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7_$8| |q_$0_$8| |g_$12|) perm$R) |howMuch_$11|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7_$8| |q_$0_$8| |g_$12|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$ref$ |m_$7_$8| |o_$8_$8| |f_$4_$8| |howMuch_$11|) |q_$0_$8| |g_$12|) perm$R))))
    (forall( (|m_$7_$9| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$8_$9| ref) (|f_$4_$9| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$) (|howMuch_$12| Int) (|q_$0_$9| ref) (|g_$13| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$7_$9| |o_$8_$9| |f_$4_$9| |howMuch_$12|) |q_$0_$9| |g_$13|) perm$R) (ite$Int$ (and (= |o_$8_$9| |q_$0_$9|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7_$9| |q_$0_$9| |g_$13|) perm$R) |howMuch_$12|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7_$9| |q_$0_$9| |g_$13|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$7_$9| |o_$8_$9| |f_$4_$9| |howMuch_$12|) |q_$0_$9| |g_$13|) perm$R))))
    (forall( (|m_$9_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$0| ref) (|f_$6_$0| Field$Bool$) (|howMuch_$1_$0| Int) (|q_$2_$0| ref) (|g_$1_$0| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Bool$ |m_$9_$0| |o_$10_$0| |f_$6_$0| |howMuch_$1_$0|) |q_$2_$0| |g_$1_$0|) perm$R) (ite$Int$ (and (= |o_$10_$0| |q_$2_$0|) (= |f_$6_$0| |g_$1_$0|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$0| |q_$2_$0| |g_$1_$0|) perm$R) |howMuch_$1_$0|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$0| |q_$2_$0| |g_$1_$0|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Bool$ |m_$9_$0| |o_$10_$0| |f_$6_$0| |howMuch_$1_$0|) |q_$2_$0| |g_$1_$0|) perm$R))))
    (forall( (|m_$9_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$1| ref) (|f_$6_$1| Field$Int$) (|howMuch_$1_$1| Int) (|q_$2_$1| ref) (|g_$1_$1| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Int$ |m_$9_$1| |o_$10_$1| |f_$6_$1| |howMuch_$1_$1|) |q_$2_$1| |g_$1_$1|) perm$R) (ite$Int$ (and (= |o_$10_$1| |q_$2_$1|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$1| |q_$2_$1| |g_$1_$1|) perm$R) |howMuch_$1_$1|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$1| |q_$2_$1| |g_$1_$1|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Int$ |m_$9_$1| |o_$10_$1| |f_$6_$1| |howMuch_$1_$1|) |q_$2_$1| |g_$1_$1|) perm$R))))
    (forall( (|m_$9_$10| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$10| ref) (|f_$6_$10| Field$Mu$) (|howMuch_$1_$10| Int) (|q_$2_$10| ref) (|g_$1_$10| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Mu$ |m_$9_$10| |o_$10_$10| |f_$6_$10| |howMuch_$1_$10|) |q_$2_$10| |g_$1_$10|) perm$R) (ite$Int$ (and (= |o_$10_$10| |q_$2_$10|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$10| |q_$2_$10| |g_$1_$10|) perm$R) |howMuch_$1_$10|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$10| |q_$2_$10| |g_$1_$10|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Mu$ |m_$9_$10| |o_$10_$10| |f_$6_$10| |howMuch_$1_$10|) |q_$2_$10| |g_$1_$10|) perm$R))))
    (forall( (|m_$9_$11| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$11| ref) (|f_$6_$11| Field$Seq$Int$$) (|howMuch_$1_$11| Int) (|q_$2_$11| ref) (|g_$1_$11| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Seq$Int$$ |m_$9_$11| |o_$10_$11| |f_$6_$11| |howMuch_$1_$11|) |q_$2_$11| |g_$1_$11|) perm$R) (ite$Int$ (and (= |o_$10_$11| |q_$2_$11|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$11| |q_$2_$11| |g_$1_$11|) perm$R) |howMuch_$1_$11|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$11| |q_$2_$11| |g_$1_$11|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Seq$Int$$ |m_$9_$11| |o_$10_$11| |f_$6_$11| |howMuch_$1_$11|) |q_$2_$11| |g_$1_$11|) perm$R))))
    (forall( (|m_$9_$12| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$12| ref) (|f_$6_$12| Field$Bool$) (|howMuch_$1_$12| Int) (|q_$2_$12| ref) (|g_$1_$12| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Bool$ |m_$9_$12| |o_$10_$12| |f_$6_$12| |howMuch_$1_$12|) |q_$2_$12| |g_$1_$12|) perm$R) (ite$Int$ (and (= |o_$10_$12| |q_$2_$12|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$12| |q_$2_$12| |g_$1_$12|) perm$R) |howMuch_$1_$12|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$12| |q_$2_$12| |g_$1_$12|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Bool$ |m_$9_$12| |o_$10_$12| |f_$6_$12| |howMuch_$1_$12|) |q_$2_$12| |g_$1_$12|) perm$R))))
    (forall( (|m_$9_$13| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$13| ref) (|f_$6_$13| Field$Int$) (|howMuch_$1_$13| Int) (|q_$2_$13| ref) (|g_$1_$13| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Int$ |m_$9_$13| |o_$10_$13| |f_$6_$13| |howMuch_$1_$13|) |q_$2_$13| |g_$1_$13|) perm$R) (ite$Int$ (and (= |o_$10_$13| |q_$2_$13|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$13| |q_$2_$13| |g_$1_$13|) perm$R) |howMuch_$1_$13|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$13| |q_$2_$13| |g_$1_$13|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Int$ |m_$9_$13| |o_$10_$13| |f_$6_$13| |howMuch_$1_$13|) |q_$2_$13| |g_$1_$13|) perm$R))))
    (forall( (|m_$9_$14| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$14| ref) (|f_$6_$14| Field$ref$) (|howMuch_$1_$14| Int) (|q_$2_$14| ref) (|g_$1_$14| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$ref$ |m_$9_$14| |o_$10_$14| |f_$6_$14| |howMuch_$1_$14|) |q_$2_$14| |g_$1_$14|) perm$R) (ite$Int$ (and (= |o_$10_$14| |q_$2_$14|) (= |f_$6_$14| |g_$1_$14|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$14| |q_$2_$14| |g_$1_$14|) perm$R) |howMuch_$1_$14|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$14| |q_$2_$14| |g_$1_$14|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$ref$ |m_$9_$14| |o_$10_$14| |f_$6_$14| |howMuch_$1_$14|) |q_$2_$14| |g_$1_$14|) perm$R))))
    (forall( (|m_$9_$15| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$15| ref) (|f_$6_$15| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$) (|howMuch_$1_$15| Int) (|q_$2_$15| ref) (|g_$1_$15| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$9_$15| |o_$10_$15| |f_$6_$15| |howMuch_$1_$15|) |q_$2_$15| |g_$1_$15|) perm$R) (ite$Int$ (and (= |o_$10_$15| |q_$2_$15|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$15| |q_$2_$15| |g_$1_$15|) perm$R) |howMuch_$1_$15|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$15| |q_$2_$15| |g_$1_$15|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$9_$15| |o_$10_$15| |f_$6_$15| |howMuch_$1_$15|) |q_$2_$15| |g_$1_$15|) perm$R))))
    (forall( (|m_$9_$16| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$16| ref) (|f_$6_$16| Field$Mu$) (|howMuch_$1_$16| Int) (|q_$2_$16| ref) (|g_$1_$16| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Mu$ |m_$9_$16| |o_$10_$16| |f_$6_$16| |howMuch_$1_$16|) |q_$2_$16| |g_$1_$16|) perm$R) (ite$Int$ (and (= |o_$10_$16| |q_$2_$16|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$16| |q_$2_$16| |g_$1_$16|) perm$R) |howMuch_$1_$16|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$16| |q_$2_$16| |g_$1_$16|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Mu$ |m_$9_$16| |o_$10_$16| |f_$6_$16| |howMuch_$1_$16|) |q_$2_$16| |g_$1_$16|) perm$R))))
    (forall( (|m_$9_$17| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$17| ref) (|f_$6_$17| Field$Seq$Int$$) (|howMuch_$1_$17| Int) (|q_$2_$17| ref) (|g_$1_$17| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Seq$Int$$ |m_$9_$17| |o_$10_$17| |f_$6_$17| |howMuch_$1_$17|) |q_$2_$17| |g_$1_$17|) perm$R) (ite$Int$ (and (= |o_$10_$17| |q_$2_$17|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$17| |q_$2_$17| |g_$1_$17|) perm$R) |howMuch_$1_$17|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$17| |q_$2_$17| |g_$1_$17|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Seq$Int$$ |m_$9_$17| |o_$10_$17| |f_$6_$17| |howMuch_$1_$17|) |q_$2_$17| |g_$1_$17|) perm$R))))
    (forall( (|m_$9_$18| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$18| ref) (|f_$6_$18| Field$Bool$) (|howMuch_$1_$18| Int) (|q_$2_$18| ref) (|g_$1_$18| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (IncPerm$Bool$ |m_$9_$18| |o_$10_$18| |f_$6_$18| |howMuch_$1_$18|) |q_$2_$18| |g_$1_$18|) perm$R) (ite$Int$ (and (= |o_$10_$18| |q_$2_$18|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$9_$18| |q_$2_$18| |g_$1_$18|) perm$R) |howMuch_$1_$18|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$9_$18| |q_$2_$18| |g_$1_$18|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (IncPerm$Bool$ |m_$9_$18| |o_$10_$18| |f_$6_$18| |howMuch_$1_$18|) |q_$2_$18| |g_$1_$18|) perm$R))))
    (forall( (|m_$9_$19| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$19| ref) (|f_$6_$19| Field$Int$) (|howMuch_$1_$19| Int) (|q_$2_$19| ref) (|g_$1_$19| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (IncPerm$Int$ |m_$9_$19| |o_$10_$19| |f_$6_$19| |howMuch_$1_$19|) |q_$2_$19| |g_$1_$19|) perm$R) (ite$Int$ (and (= |o_$10_$19| |q_$2_$19|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$9_$19| |q_$2_$19| |g_$1_$19|) perm$R) |howMuch_$1_$19|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$9_$19| |q_$2_$19| |g_$1_$19|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (IncPerm$Int$ |m_$9_$19| |o_$10_$19| |f_$6_$19| |howMuch_$1_$19|) |q_$2_$19| |g_$1_$19|) perm$R))))
    (forall( (|m_$9_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$2| ref) (|f_$6_$2| Field$ref$) (|howMuch_$1_$2| Int) (|q_$2_$2| ref) (|g_$1_$2| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$ref$ |m_$9_$2| |o_$10_$2| |f_$6_$2| |howMuch_$1_$2|) |q_$2_$2| |g_$1_$2|) perm$R) (ite$Int$ (and (= |o_$10_$2| |q_$2_$2|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$2| |q_$2_$2| |g_$1_$2|) perm$R) |howMuch_$1_$2|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$2| |q_$2_$2| |g_$1_$2|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$ref$ |m_$9_$2| |o_$10_$2| |f_$6_$2| |howMuch_$1_$2|) |q_$2_$2| |g_$1_$2|) perm$R))))
    (forall( (|m_$9_$20| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$20| ref) (|f_$6_$20| Field$ref$) (|howMuch_$1_$20| Int) (|q_$2_$20| ref) (|g_$1_$20| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (IncPerm$ref$ |m_$9_$20| |o_$10_$20| |f_$6_$20| |howMuch_$1_$20|) |q_$2_$20| |g_$1_$20|) perm$R) (ite$Int$ (and (= |o_$10_$20| |q_$2_$20|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$9_$20| |q_$2_$20| |g_$1_$20|) perm$R) |howMuch_$1_$20|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$9_$20| |q_$2_$20| |g_$1_$20|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (IncPerm$ref$ |m_$9_$20| |o_$10_$20| |f_$6_$20| |howMuch_$1_$20|) |q_$2_$20| |g_$1_$20|) perm$R))))
    (forall( (|m_$9_$21| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$21| ref) (|f_$6_$21| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$) (|howMuch_$1_$21| Int) (|q_$2_$21| ref) (|g_$1_$21| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (IncPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$9_$21| |o_$10_$21| |f_$6_$21| |howMuch_$1_$21|) |q_$2_$21| |g_$1_$21|) perm$R) (ite$Int$ (and (= |o_$10_$21| |q_$2_$21|) (= |f_$6_$21| |g_$1_$21|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$9_$21| |q_$2_$21| |g_$1_$21|) perm$R) |howMuch_$1_$21|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$9_$21| |q_$2_$21| |g_$1_$21|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (IncPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$9_$21| |o_$10_$21| |f_$6_$21| |howMuch_$1_$21|) |q_$2_$21| |g_$1_$21|) perm$R))))
    (forall( (|m_$9_$22| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$22| ref) (|f_$6_$22| Field$Mu$) (|howMuch_$1_$22| Int) (|q_$2_$22| ref) (|g_$1_$22| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (IncPerm$Mu$ |m_$9_$22| |o_$10_$22| |f_$6_$22| |howMuch_$1_$22|) |q_$2_$22| |g_$1_$22|) perm$R) (ite$Int$ (and (= |o_$10_$22| |q_$2_$22|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$9_$22| |q_$2_$22| |g_$1_$22|) perm$R) |howMuch_$1_$22|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$9_$22| |q_$2_$22| |g_$1_$22|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (IncPerm$Mu$ |m_$9_$22| |o_$10_$22| |f_$6_$22| |howMuch_$1_$22|) |q_$2_$22| |g_$1_$22|) perm$R))))
    (forall( (|m_$9_$23| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$23| ref) (|f_$6_$23| Field$Seq$Int$$) (|howMuch_$1_$23| Int) (|q_$2_$23| ref) (|g_$1_$23| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (IncPerm$Seq$Int$$ |m_$9_$23| |o_$10_$23| |f_$6_$23| |howMuch_$1_$23|) |q_$2_$23| |g_$1_$23|) perm$R) (ite$Int$ (and (= |o_$10_$23| |q_$2_$23|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$9_$23| |q_$2_$23| |g_$1_$23|) perm$R) |howMuch_$1_$23|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$9_$23| |q_$2_$23| |g_$1_$23|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ (IncPerm$Seq$Int$$ |m_$9_$23| |o_$10_$23| |f_$6_$23| |howMuch_$1_$23|) |q_$2_$23| |g_$1_$23|) perm$R))))
    (forall( (|m_$9_$24| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$24| ref) (|f_$6_$24| Field$Bool$) (|howMuch_$1_$24| Int) (|q_$2_$24| ref) (|g_$1_$24| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Bool$ |m_$9_$24| |o_$10_$24| |f_$6_$24| |howMuch_$1_$24|) |q_$2_$24| |g_$1_$24|) perm$R) (ite$Int$ (and (= |o_$10_$24| |q_$2_$24|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$24| |q_$2_$24| |g_$1_$24|) perm$R) |howMuch_$1_$24|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$24| |q_$2_$24| |g_$1_$24|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Bool$ |m_$9_$24| |o_$10_$24| |f_$6_$24| |howMuch_$1_$24|) |q_$2_$24| |g_$1_$24|) perm$R))))
    (forall( (|m_$9_$25| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$25| ref) (|f_$6_$25| Field$Int$) (|howMuch_$1_$25| Int) (|q_$2_$25| ref) (|g_$1_$25| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Int$ |m_$9_$25| |o_$10_$25| |f_$6_$25| |howMuch_$1_$25|) |q_$2_$25| |g_$1_$25|) perm$R) (ite$Int$ (and (= |o_$10_$25| |q_$2_$25|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$25| |q_$2_$25| |g_$1_$25|) perm$R) |howMuch_$1_$25|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$25| |q_$2_$25| |g_$1_$25|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Int$ |m_$9_$25| |o_$10_$25| |f_$6_$25| |howMuch_$1_$25|) |q_$2_$25| |g_$1_$25|) perm$R))))
    (forall( (|m_$9_$26| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$26| ref) (|f_$6_$26| Field$ref$) (|howMuch_$1_$26| Int) (|q_$2_$26| ref) (|g_$1_$26| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$ref$ |m_$9_$26| |o_$10_$26| |f_$6_$26| |howMuch_$1_$26|) |q_$2_$26| |g_$1_$26|) perm$R) (ite$Int$ (and (= |o_$10_$26| |q_$2_$26|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$26| |q_$2_$26| |g_$1_$26|) perm$R) |howMuch_$1_$26|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$26| |q_$2_$26| |g_$1_$26|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$ref$ |m_$9_$26| |o_$10_$26| |f_$6_$26| |howMuch_$1_$26|) |q_$2_$26| |g_$1_$26|) perm$R))))
    (forall( (|m_$9_$27| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$27| ref) (|f_$6_$27| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$) (|howMuch_$1_$27| Int) (|q_$2_$27| ref) (|g_$1_$27| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$9_$27| |o_$10_$27| |f_$6_$27| |howMuch_$1_$27|) |q_$2_$27| |g_$1_$27|) perm$R) (ite$Int$ (and (= |o_$10_$27| |q_$2_$27|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$27| |q_$2_$27| |g_$1_$27|) perm$R) |howMuch_$1_$27|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$27| |q_$2_$27| |g_$1_$27|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$9_$27| |o_$10_$27| |f_$6_$27| |howMuch_$1_$27|) |q_$2_$27| |g_$1_$27|) perm$R))))
    (forall( (|m_$9_$28| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$28| ref) (|f_$6_$28| Field$Mu$) (|howMuch_$1_$28| Int) (|q_$2_$28| ref) (|g_$1_$28| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Mu$ |m_$9_$28| |o_$10_$28| |f_$6_$28| |howMuch_$1_$28|) |q_$2_$28| |g_$1_$28|) perm$R) (ite$Int$ (and (= |o_$10_$28| |q_$2_$28|) (= |f_$6_$28| |g_$1_$28|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$28| |q_$2_$28| |g_$1_$28|) perm$R) |howMuch_$1_$28|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$28| |q_$2_$28| |g_$1_$28|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Mu$ |m_$9_$28| |o_$10_$28| |f_$6_$28| |howMuch_$1_$28|) |q_$2_$28| |g_$1_$28|) perm$R))))
    (forall( (|m_$9_$29| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$29| ref) (|f_$6_$29| Field$Seq$Int$$) (|howMuch_$1_$29| Int) (|q_$2_$29| ref) (|g_$1_$29| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Seq$Int$$ |m_$9_$29| |o_$10_$29| |f_$6_$29| |howMuch_$1_$29|) |q_$2_$29| |g_$1_$29|) perm$R) (ite$Int$ (and (= |o_$10_$29| |q_$2_$29|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$29| |q_$2_$29| |g_$1_$29|) perm$R) |howMuch_$1_$29|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$29| |q_$2_$29| |g_$1_$29|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Seq$Int$$ |m_$9_$29| |o_$10_$29| |f_$6_$29| |howMuch_$1_$29|) |q_$2_$29| |g_$1_$29|) perm$R))))
    (forall( (|m_$9_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$3| ref) (|f_$6_$3| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$) (|howMuch_$1_$3| Int) (|q_$2_$3| ref) (|g_$1_$3| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$9_$3| |o_$10_$3| |f_$6_$3| |howMuch_$1_$3|) |q_$2_$3| |g_$1_$3|) perm$R) (ite$Int$ (and (= |o_$10_$3| |q_$2_$3|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$3| |q_$2_$3| |g_$1_$3|) perm$R) |howMuch_$1_$3|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$3| |q_$2_$3| |g_$1_$3|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$9_$3| |o_$10_$3| |f_$6_$3| |howMuch_$1_$3|) |q_$2_$3| |g_$1_$3|) perm$R))))
    (forall( (|m_$9_$30| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$30| ref) (|f_$6_$30| Field$Bool$) (|howMuch_$1_$30| Int) (|q_$2_$30| ref) (|g_$1_$30| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Bool$ |m_$9_$30| |o_$10_$30| |f_$6_$30| |howMuch_$1_$30|) |q_$2_$30| |g_$1_$30|) perm$R) (ite$Int$ (and (= |o_$10_$30| |q_$2_$30|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$30| |q_$2_$30| |g_$1_$30|) perm$R) |howMuch_$1_$30|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$30| |q_$2_$30| |g_$1_$30|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Bool$ |m_$9_$30| |o_$10_$30| |f_$6_$30| |howMuch_$1_$30|) |q_$2_$30| |g_$1_$30|) perm$R))))
    (forall( (|m_$9_$31| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$31| ref) (|f_$6_$31| Field$Int$) (|howMuch_$1_$31| Int) (|q_$2_$31| ref) (|g_$1_$31| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Int$ |m_$9_$31| |o_$10_$31| |f_$6_$31| |howMuch_$1_$31|) |q_$2_$31| |g_$1_$31|) perm$R) (ite$Int$ (and (= |o_$10_$31| |q_$2_$31|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$31| |q_$2_$31| |g_$1_$31|) perm$R) |howMuch_$1_$31|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$31| |q_$2_$31| |g_$1_$31|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Int$ |m_$9_$31| |o_$10_$31| |f_$6_$31| |howMuch_$1_$31|) |q_$2_$31| |g_$1_$31|) perm$R))))
    (forall( (|m_$9_$32| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$32| ref) (|f_$6_$32| Field$ref$) (|howMuch_$1_$32| Int) (|q_$2_$32| ref) (|g_$1_$32| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$ref$ |m_$9_$32| |o_$10_$32| |f_$6_$32| |howMuch_$1_$32|) |q_$2_$32| |g_$1_$32|) perm$R) (ite$Int$ (and (= |o_$10_$32| |q_$2_$32|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$32| |q_$2_$32| |g_$1_$32|) perm$R) |howMuch_$1_$32|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$32| |q_$2_$32| |g_$1_$32|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$ref$ |m_$9_$32| |o_$10_$32| |f_$6_$32| |howMuch_$1_$32|) |q_$2_$32| |g_$1_$32|) perm$R))))
    (forall( (|m_$9_$33| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$33| ref) (|f_$6_$33| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$) (|howMuch_$1_$33| Int) (|q_$2_$33| ref) (|g_$1_$33| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$9_$33| |o_$10_$33| |f_$6_$33| |howMuch_$1_$33|) |q_$2_$33| |g_$1_$33|) perm$R) (ite$Int$ (and (= |o_$10_$33| |q_$2_$33|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$33| |q_$2_$33| |g_$1_$33|) perm$R) |howMuch_$1_$33|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$33| |q_$2_$33| |g_$1_$33|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$9_$33| |o_$10_$33| |f_$6_$33| |howMuch_$1_$33|) |q_$2_$33| |g_$1_$33|) perm$R))))
    (forall( (|m_$9_$34| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$34| ref) (|f_$6_$34| Field$Mu$) (|howMuch_$1_$34| Int) (|q_$2_$34| ref) (|g_$1_$34| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Mu$ |m_$9_$34| |o_$10_$34| |f_$6_$34| |howMuch_$1_$34|) |q_$2_$34| |g_$1_$34|) perm$R) (ite$Int$ (and (= |o_$10_$34| |q_$2_$34|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$34| |q_$2_$34| |g_$1_$34|) perm$R) |howMuch_$1_$34|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$34| |q_$2_$34| |g_$1_$34|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Mu$ |m_$9_$34| |o_$10_$34| |f_$6_$34| |howMuch_$1_$34|) |q_$2_$34| |g_$1_$34|) perm$R))))
    (forall( (|m_$9_$35| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$35| ref) (|f_$6_$35| Field$Seq$Int$$) (|howMuch_$1_$35| Int) (|q_$2_$35| ref) (|g_$1_$35| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Seq$Int$$ |m_$9_$35| |o_$10_$35| |f_$6_$35| |howMuch_$1_$35|) |q_$2_$35| |g_$1_$35|) perm$R) (ite$Int$ (and (= |o_$10_$35| |q_$2_$35|) (= |f_$6_$35| |g_$1_$35|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$35| |q_$2_$35| |g_$1_$35|) perm$R) |howMuch_$1_$35|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$35| |q_$2_$35| |g_$1_$35|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Seq$Int$$ |m_$9_$35| |o_$10_$35| |f_$6_$35| |howMuch_$1_$35|) |q_$2_$35| |g_$1_$35|) perm$R))))
    (forall( (|m_$9_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$4| ref) (|f_$6_$4| Field$Mu$) (|howMuch_$1_$4| Int) (|q_$2_$4| ref) (|g_$1_$4| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Mu$ |m_$9_$4| |o_$10_$4| |f_$6_$4| |howMuch_$1_$4|) |q_$2_$4| |g_$1_$4|) perm$R) (ite$Int$ (and (= |o_$10_$4| |q_$2_$4|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$4| |q_$2_$4| |g_$1_$4|) perm$R) |howMuch_$1_$4|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$4| |q_$2_$4| |g_$1_$4|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Mu$ |m_$9_$4| |o_$10_$4| |f_$6_$4| |howMuch_$1_$4|) |q_$2_$4| |g_$1_$4|) perm$R))))
    (forall( (|m_$9_$5| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$5| ref) (|f_$6_$5| Field$Seq$Int$$) (|howMuch_$1_$5| Int) (|q_$2_$5| ref) (|g_$1_$5| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Seq$Int$$ |m_$9_$5| |o_$10_$5| |f_$6_$5| |howMuch_$1_$5|) |q_$2_$5| |g_$1_$5|) perm$R) (ite$Int$ (and (= |o_$10_$5| |q_$2_$5|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$5| |q_$2_$5| |g_$1_$5|) perm$R) |howMuch_$1_$5|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$5| |q_$2_$5| |g_$1_$5|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Seq$Int$$ |m_$9_$5| |o_$10_$5| |f_$6_$5| |howMuch_$1_$5|) |q_$2_$5| |g_$1_$5|) perm$R))))
    (forall( (|m_$9_$6| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$6| ref) (|f_$6_$6| Field$Bool$) (|howMuch_$1_$6| Int) (|q_$2_$6| ref) (|g_$1_$6| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Bool$ |m_$9_$6| |o_$10_$6| |f_$6_$6| |howMuch_$1_$6|) |q_$2_$6| |g_$1_$6|) perm$R) (ite$Int$ (and (= |o_$10_$6| |q_$2_$6|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$6| |q_$2_$6| |g_$1_$6|) perm$R) |howMuch_$1_$6|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$6| |q_$2_$6| |g_$1_$6|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Bool$ |m_$9_$6| |o_$10_$6| |f_$6_$6| |howMuch_$1_$6|) |q_$2_$6| |g_$1_$6|) perm$R))))
    (forall( (|m_$9_$7| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$7| ref) (|f_$6_$7| Field$Int$) (|howMuch_$1_$7| Int) (|q_$2_$7| ref) (|g_$1_$7| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Int$ |m_$9_$7| |o_$10_$7| |f_$6_$7| |howMuch_$1_$7|) |q_$2_$7| |g_$1_$7|) perm$R) (ite$Int$ (and (= |o_$10_$7| |q_$2_$7|) (= |f_$6_$7| |g_$1_$7|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$7| |q_$2_$7| |g_$1_$7|) perm$R) |howMuch_$1_$7|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$7| |q_$2_$7| |g_$1_$7|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Int$ |m_$9_$7| |o_$10_$7| |f_$6_$7| |howMuch_$1_$7|) |q_$2_$7| |g_$1_$7|) perm$R))))
    (forall( (|m_$9_$8| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$8| ref) (|f_$6_$8| Field$ref$) (|howMuch_$1_$8| Int) (|q_$2_$8| ref) (|g_$1_$8| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$ref$ |m_$9_$8| |o_$10_$8| |f_$6_$8| |howMuch_$1_$8|) |q_$2_$8| |g_$1_$8|) perm$R) (ite$Int$ (and (= |o_$10_$8| |q_$2_$8|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$8| |q_$2_$8| |g_$1_$8|) perm$R) |howMuch_$1_$8|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$8| |q_$2_$8| |g_$1_$8|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$ref$ |m_$9_$8| |o_$10_$8| |f_$6_$8| |howMuch_$1_$8|) |q_$2_$8| |g_$1_$8|) perm$R))))
    (forall( (|m_$9_$9| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$10_$9| ref) (|f_$6_$9| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$) (|howMuch_$1_$9| Int) (|q_$2_$9| ref) (|g_$1_$9| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$9_$9| |o_$10_$9| |f_$6_$9| |howMuch_$1_$9|) |q_$2_$9| |g_$1_$9|) perm$R) (ite$Int$ (and (= |o_$10_$9| |q_$2_$9|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$9| |q_$2_$9| |g_$1_$9|) perm$R) |howMuch_$1_$9|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$9| |q_$2_$9| |g_$1_$9|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |m_$9_$9| |o_$10_$9| |f_$6_$9| |howMuch_$1_$9|) |q_$2_$9| |g_$1_$9|) perm$R))))
    (forall( (|m| Mu) (|n_$0| Mu))(!(not (and (MuBelow |m| |n_$0|) (MuBelow |n_$0| |m|)))  :pattern ( (MuBelow |m| |n_$0|) (MuBelow |n_$0| |m|))))
    (forall( (|min_$0| Int) (|max_$0| Int) (|j_$4| Int))(!(=> (and (<= 0 |j_$4|) (< |j_$4| (- |max_$0| |min_$0|))) (= (Seq@Index$Int$ (Seq@Range |min_$0| |max_$0|) |j_$4|) (+ |min_$0| |j_$4|)))  :pattern ( (Seq@Index$Int$ (Seq@Range |min_$0| |max_$0|) |j_$4|))))
    (forall( (|min| Int) (|max| Int))(!(and (=> (< |min| |max|) (= (Seq@Length$Int$ (Seq@Range |min| |max|)) (- |max| |min|))) (=> (<= |max| |min|) (= (Seq@Length$Int$ (Seq@Range |min| |max|)) 0)))  :pattern ( (Seq@Length$Int$ (Seq@Range |min| |max|)))))
    (forall( (|n| Int))(!(= (Fractions |n|) (* |n| Permission$denominator))  :pattern ( (Fractions |n|))))
    (forall( (|o_$14| ref))(= (MapRead$$@Map@@ref@To@Int@@$ ZeroCredits |o_$14|) 0))
    (forall( (|o_$17| ref) (|f_$14| Field$Bool$) (|pc_$0| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ ZeroMask |o_$17| |f_$14|) |pc_$0|) 0))
    (forall( (|o_$18| ref) (|f_$15| Field$Int$) (|pc_$1| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask |o_$18| |f_$15|) |pc_$1|) 0))
    (forall( (|o_$19| ref) (|f_$16| Field$ref$) (|pc_$2| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask |o_$19| |f_$16|) |pc_$2|) 0))
    (forall( (|o_$20| ref) (|f_$17| Field$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$) (|pc_$3| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ZeroMask |o_$20| |f_$17|) |pc_$3|) 0))
    (forall( (|o_$21| ref) (|f_$18| Field$Mu$) (|pc_$4| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ ZeroMask |o_$21| |f_$18|) |pc_$4|) 0))
    (forall( (|o_$22| ref) (|f_$19| Field$Seq$Int$$) (|pc_$5| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ ZeroMask |o_$22| |f_$19|) |pc_$5|) 0))
    (forall( (|s_$0_$0| Seq$Int$))(!(=> (= (Seq@Length$Int$ |s_$0_$0|) 0) (= |s_$0_$0| Seq@Empty$Int$))  :pattern ( (Seq@Length$Int$ |s_$0_$0|))))
    (forall( (|s_$0_$1| Seq$ref$))(!(=> (= (Seq@Length$ref$ |s_$0_$1|) 0) (= |s_$0_$1| Seq@Empty$ref$))  :pattern ( (Seq@Length$ref$ |s_$0_$1|))))
    (forall( (|s_$1_$0| Seq$Int$) (|i_$5| Int) (|v_$2| Int) (|len_$2| Int))(!(=> (<= 0 |len_$2|) (= (Seq@Length$Int$ (Seq@Build$Int$ |s_$1_$0| |i_$5| |v_$2| |len_$2|)) |len_$2|))  :pattern ( (Seq@Length$Int$ (Seq@Build$Int$ |s_$1_$0| |i_$5| |v_$2| |len_$2|)))))
    (forall( (|s_$1_$1| Seq$ref$) (|i_$6| Int) (|v_$3| ref) (|len_$3| Int))(!(=> (<= 0 |len_$3|) (= (Seq@Length$ref$ (Seq@Build$ref$ |s_$1_$1| |i_$6| |v_$3| |len_$3|)) |len_$3|))  :pattern ( (Seq@Length$ref$ (Seq@Build$ref$ |s_$1_$1| |i_$6| |v_$3| |len_$3|)))))
    (forall( (|s_$10_$0| Seq$Int$) (|n_$11_$0| Int) (|j_$3_$0| Int))(!(=> (and (and (<= 0 |n_$11_$0|) (<= 0 |j_$3_$0|)) (< |j_$3_$0| (- (Seq@Length$Int$ |s_$10_$0|) |n_$11_$0|))) (= (Seq@Index$Int$ (Seq@Drop$Int$ |s_$10_$0| |n_$11_$0|) |j_$3_$0|) (Seq@Index$Int$ |s_$10_$0| (+ |j_$3_$0| |n_$11_$0|))))  :weight  25 :pattern ( (Seq@Index$Int$ (Seq@Drop$Int$ |s_$10_$0| |n_$11_$0|) |j_$3_$0|))))
    (forall( (|s_$10_$1| Seq$ref$) (|n_$11_$1| Int) (|j_$3_$1| Int))(!(=> (and (and (<= 0 |n_$11_$1|) (<= 0 |j_$3_$1|)) (< |j_$3_$1| (- (Seq@Length$ref$ |s_$10_$1|) |n_$11_$1|))) (= (Seq@Index$ref$ (Seq@Drop$ref$ |s_$10_$1| |n_$11_$1|) |j_$3_$1|) (Seq@Index$ref$ |s_$10_$1| (+ |j_$3_$1| |n_$11_$1|))))  :weight  25 :pattern ( (Seq@Index$ref$ (Seq@Drop$ref$ |s_$10_$1| |n_$11_$1|) |j_$3_$1|))))
    (forall( (|s_$11_$0| Seq$Int$) (|t_$1_$0| Seq$Int$))(!(and (= (Seq@Take$Int$ (Seq@Append$Int$ |s_$11_$0| |t_$1_$0|) (Seq@Length$Int$ |s_$11_$0|)) |s_$11_$0|) (= (Seq@Drop$Int$ (Seq@Append$Int$ |s_$11_$0| |t_$1_$0|) (Seq@Length$Int$ |s_$11_$0|)) |t_$1_$0|))  :pattern ( (Seq@Append$Int$ |s_$11_$0| |t_$1_$0|))))
    (forall( (|s_$11_$1| Seq$ref$) (|t_$1_$1| Seq$ref$))(!(and (= (Seq@Take$ref$ (Seq@Append$ref$ |s_$11_$1| |t_$1_$1|) (Seq@Length$ref$ |s_$11_$1|)) |s_$11_$1|) (= (Seq@Drop$ref$ (Seq@Append$ref$ |s_$11_$1| |t_$1_$1|) (Seq@Length$ref$ |s_$11_$1|)) |t_$1_$1|))  :pattern ( (Seq@Append$ref$ |s_$11_$1| |t_$1_$1|))))
    (forall( (|s_$12| Seq$Int$))(!(<= 0 (Seq@Length$Int$ |s_$12|))  :pattern ( (Seq@Length$Int$ |s_$12|))))
    (forall( (|s_$13| Seq$ref$))(!(<= 0 (Seq@Length$ref$ |s_$13|))  :pattern ( (Seq@Length$ref$ |s_$13|))))
    (forall( (|s_$2_$0| Seq$Int$) (|i_$0_$0| Int) (|v_$0_$0| Int) (|len_$0_$0| Int) (|n_$4_$0| Int))(!(=> (and (<= 0 |n_$4_$0|) (< |n_$4_$0| |len_$0_$0|)) (and (=> (= |i_$0_$0| |n_$4_$0|) (= (Seq@Index$Int$ (Seq@Build$Int$ |s_$2_$0| |i_$0_$0| |v_$0_$0| |len_$0_$0|) |n_$4_$0|) |v_$0_$0|)) (=> (not (= |i_$0_$0| |n_$4_$0|)) (= (Seq@Index$Int$ (Seq@Build$Int$ |s_$2_$0| |i_$0_$0| |v_$0_$0| |len_$0_$0|) |n_$4_$0|) (Seq@Index$Int$ |s_$2_$0| |n_$4_$0|)))))  :pattern ( (Seq@Index$Int$ (Seq@Build$Int$ |s_$2_$0| |i_$0_$0| |v_$0_$0| |len_$0_$0|) |n_$4_$0|))))
    (forall( (|s_$2_$1| Seq$ref$) (|i_$0_$1| Int) (|v_$0_$1| ref) (|len_$0_$1| Int) (|n_$4_$1| Int))(!(=> (and (<= 0 |n_$4_$1|) (< |n_$4_$1| |len_$0_$1|)) (and (=> (= |i_$0_$1| |n_$4_$1|) (= (Seq@Index$ref$ (Seq@Build$ref$ |s_$2_$1| |i_$0_$1| |v_$0_$1| |len_$0_$1|) |n_$4_$1|) |v_$0_$1|)) (=> (not (= |i_$0_$1| |n_$4_$1|)) (= (Seq@Index$ref$ (Seq@Build$ref$ |s_$2_$1| |i_$0_$1| |v_$0_$1| |len_$0_$1|) |n_$4_$1|) (Seq@Index$ref$ |s_$2_$1| |n_$4_$1|)))))  :pattern ( (Seq@Index$ref$ (Seq@Build$ref$ |s_$2_$1| |i_$0_$1| |v_$0_$1| |len_$0_$1|) |n_$4_$1|))))
    (forall( (|s_$3_$0| Seq$Int$) (|x_$3_$0| Int))(!(= (Seq@Contains$Int$ |s_$3_$0| |x_$3_$0|) (exists( (|i_$1_$1| Int))(!(and (and (<= 0 |i_$1_$1|) (< |i_$1_$1| (Seq@Length$Int$ |s_$3_$0|))) (= (Seq@Index$Int$ |s_$3_$0| |i_$1_$1|) |x_$3_$0|))  :pattern ( (Seq@Index$Int$ |s_$3_$0| |i_$1_$1|)))))  :pattern ( (Seq@Contains$Int$ |s_$3_$0| |x_$3_$0|))))
    (forall( (|s_$3_$1| Seq$ref$) (|x_$3_$1| ref))(!(= (Seq@Contains$ref$ |s_$3_$1| |x_$3_$1|) (exists( (|i_$1_$3| Int))(!(and (and (<= 0 |i_$1_$3|) (< |i_$1_$3| (Seq@Length$ref$ |s_$3_$1|))) (= (Seq@Index$ref$ |s_$3_$1| |i_$1_$3|) |x_$3_$1|))  :pattern ( (Seq@Index$ref$ |s_$3_$1| |i_$1_$3|)))))  :pattern ( (Seq@Contains$ref$ |s_$3_$1| |x_$3_$1|))))
    (forall( (|s_$4_$0| Seq$Int$) (|i_$2_$0| Int) (|v_$1_$0| Int) (|len_$1_$0| Int) (|x_$6_$0| Int))(!(= (Seq@Contains$Int$ (Seq@Build$Int$ |s_$4_$0| |i_$2_$0| |v_$1_$0| |len_$1_$0|) |x_$6_$0|) (or (and (and (<= 0 |i_$2_$0|) (< |i_$2_$0| |len_$1_$0|)) (= |x_$6_$0| |v_$1_$0|)) (exists( (|j_$6| Int))(!(and (and (and (and (<= 0 |j_$6|) (< |j_$6| (Seq@Length$Int$ |s_$4_$0|))) (< |j_$6| |len_$1_$0|)) (not (= |j_$6| |i_$2_$0|))) (= (Seq@Index$Int$ |s_$4_$0| |j_$6|) |x_$6_$0|))  :pattern ( (Seq@Index$Int$ |s_$4_$0| |j_$6|))))))  :pattern ( (Seq@Contains$Int$ (Seq@Build$Int$ |s_$4_$0| |i_$2_$0| |v_$1_$0| |len_$1_$0|) |x_$6_$0|))))
    (forall( (|s_$4_$1| Seq$ref$) (|i_$2_$1| Int) (|v_$1_$1| ref) (|len_$1_$1| Int) (|x_$6_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Build$ref$ |s_$4_$1| |i_$2_$1| |v_$1_$1| |len_$1_$1|) |x_$6_$1|) (or (and (and (<= 0 |i_$2_$1|) (< |i_$2_$1| |len_$1_$1|)) (= |x_$6_$1| |v_$1_$1|)) (exists( (|j_$8| Int))(!(and (and (and (and (<= 0 |j_$8|) (< |j_$8| (Seq@Length$ref$ |s_$4_$1|))) (< |j_$8| |len_$1_$1|)) (not (= |j_$8| |i_$2_$1|))) (= (Seq@Index$ref$ |s_$4_$1| |j_$8|) |x_$6_$1|))  :pattern ( (Seq@Index$ref$ |s_$4_$1| |j_$8|))))))  :pattern ( (Seq@Contains$ref$ (Seq@Build$ref$ |s_$4_$1| |i_$2_$1| |v_$1_$1| |len_$1_$1|) |x_$6_$1|))))
    (forall( (|s_$5_$0| Seq$Int$) (|n_$5_$0| Int) (|x_$7_$0| Int))(!(= (Seq@Contains$Int$ (Seq@Take$Int$ |s_$5_$0| |n_$5_$0|) |x_$7_$0|) (exists( (|i_$3_$1| Int))(!(and (and (and (<= 0 |i_$3_$1|) (< |i_$3_$1| |n_$5_$0|)) (< |i_$3_$1| (Seq@Length$Int$ |s_$5_$0|))) (= (Seq@Index$Int$ |s_$5_$0| |i_$3_$1|) |x_$7_$0|))  :pattern ( (Seq@Index$Int$ |s_$5_$0| |i_$3_$1|)))))  :pattern ( (Seq@Contains$Int$ (Seq@Take$Int$ |s_$5_$0| |n_$5_$0|) |x_$7_$0|))))
    (forall( (|s_$5_$1| Seq$ref$) (|n_$5_$1| Int) (|x_$7_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Take$ref$ |s_$5_$1| |n_$5_$1|) |x_$7_$1|) (exists( (|i_$3_$3| Int))(!(and (and (and (<= 0 |i_$3_$3|) (< |i_$3_$3| |n_$5_$1|)) (< |i_$3_$3| (Seq@Length$ref$ |s_$5_$1|))) (= (Seq@Index$ref$ |s_$5_$1| |i_$3_$3|) |x_$7_$1|))  :pattern ( (Seq@Index$ref$ |s_$5_$1| |i_$3_$3|)))))  :pattern ( (Seq@Contains$ref$ (Seq@Take$ref$ |s_$5_$1| |n_$5_$1|) |x_$7_$1|))))
    (forall( (|s_$6_$0| Seq$Int$) (|n_$6_$0| Int) (|x_$8_$0| Int))(!(= (Seq@Contains$Int$ (Seq@Drop$Int$ |s_$6_$0| |n_$6_$0|) |x_$8_$0|) (exists( (|i_$4_$1| Int))(!(and (and (and (<= 0 |n_$6_$0|) (<= |n_$6_$0| |i_$4_$1|)) (< |i_$4_$1| (Seq@Length$Int$ |s_$6_$0|))) (= (Seq@Index$Int$ |s_$6_$0| |i_$4_$1|) |x_$8_$0|))  :pattern ( (Seq@Index$Int$ |s_$6_$0| |i_$4_$1|)))))  :pattern ( (Seq@Contains$Int$ (Seq@Drop$Int$ |s_$6_$0| |n_$6_$0|) |x_$8_$0|))))
    (forall( (|s_$6_$1| Seq$ref$) (|n_$6_$1| Int) (|x_$8_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Drop$ref$ |s_$6_$1| |n_$6_$1|) |x_$8_$1|) (exists( (|i_$4_$3| Int))(!(and (and (and (<= 0 |n_$6_$1|) (<= |n_$6_$1| |i_$4_$3|)) (< |i_$4_$3| (Seq@Length$ref$ |s_$6_$1|))) (= (Seq@Index$ref$ |s_$6_$1| |i_$4_$3|) |x_$8_$1|))  :pattern ( (Seq@Index$ref$ |s_$6_$1| |i_$4_$3|)))))  :pattern ( (Seq@Contains$ref$ (Seq@Drop$ref$ |s_$6_$1| |n_$6_$1|) |x_$8_$1|))))
    (forall( (|s_$7_$0| Seq$Int$) (|n_$8_$0| Int))(!(=> (<= 0 |n_$8_$0|) (and (=> (<= |n_$8_$0| (Seq@Length$Int$ |s_$7_$0|)) (= (Seq@Length$Int$ (Seq@Take$Int$ |s_$7_$0| |n_$8_$0|)) |n_$8_$0|)) (=> (< (Seq@Length$Int$ |s_$7_$0|) |n_$8_$0|) (= (Seq@Length$Int$ (Seq@Take$Int$ |s_$7_$0| |n_$8_$0|)) (Seq@Length$Int$ |s_$7_$0|)))))  :pattern ( (Seq@Length$Int$ (Seq@Take$Int$ |s_$7_$0| |n_$8_$0|)))))
    (forall( (|s_$7_$1| Seq$ref$) (|n_$8_$1| Int))(!(=> (<= 0 |n_$8_$1|) (and (=> (<= |n_$8_$1| (Seq@Length$ref$ |s_$7_$1|)) (= (Seq@Length$ref$ (Seq@Take$ref$ |s_$7_$1| |n_$8_$1|)) |n_$8_$1|)) (=> (< (Seq@Length$ref$ |s_$7_$1|) |n_$8_$1|) (= (Seq@Length$ref$ (Seq@Take$ref$ |s_$7_$1| |n_$8_$1|)) (Seq@Length$ref$ |s_$7_$1|)))))  :pattern ( (Seq@Length$ref$ (Seq@Take$ref$ |s_$7_$1| |n_$8_$1|)))))
    (forall( (|s_$8_$0| Seq$Int$) (|n_$9_$0| Int) (|j_$2_$0| Int))(!(=> (and (and (<= 0 |j_$2_$0|) (< |j_$2_$0| |n_$9_$0|)) (< |j_$2_$0| (Seq@Length$Int$ |s_$8_$0|))) (= (Seq@Index$Int$ (Seq@Take$Int$ |s_$8_$0| |n_$9_$0|) |j_$2_$0|) (Seq@Index$Int$ |s_$8_$0| |j_$2_$0|)))  :weight  25 :pattern ( (Seq@Index$Int$ (Seq@Take$Int$ |s_$8_$0| |n_$9_$0|) |j_$2_$0|))))
    (forall( (|s_$8_$1| Seq$ref$) (|n_$9_$1| Int) (|j_$2_$1| Int))(!(=> (and (and (<= 0 |j_$2_$1|) (< |j_$2_$1| |n_$9_$1|)) (< |j_$2_$1| (Seq@Length$ref$ |s_$8_$1|))) (= (Seq@Index$ref$ (Seq@Take$ref$ |s_$8_$1| |n_$9_$1|) |j_$2_$1|) (Seq@Index$ref$ |s_$8_$1| |j_$2_$1|)))  :weight  25 :pattern ( (Seq@Index$ref$ (Seq@Take$ref$ |s_$8_$1| |n_$9_$1|) |j_$2_$1|))))
    (forall( (|s_$9_$0| Seq$Int$) (|n_$10_$0| Int))(!(=> (<= 0 |n_$10_$0|) (and (=> (<= |n_$10_$0| (Seq@Length$Int$ |s_$9_$0|)) (= (Seq@Length$Int$ (Seq@Drop$Int$ |s_$9_$0| |n_$10_$0|)) (- (Seq@Length$Int$ |s_$9_$0|) |n_$10_$0|))) (=> (< (Seq@Length$Int$ |s_$9_$0|) |n_$10_$0|) (= (Seq@Length$Int$ (Seq@Drop$Int$ |s_$9_$0| |n_$10_$0|)) 0))))  :pattern ( (Seq@Length$Int$ (Seq@Drop$Int$ |s_$9_$0| |n_$10_$0|)))))
    (forall( (|s_$9_$1| Seq$ref$) (|n_$10_$1| Int))(!(=> (<= 0 |n_$10_$1|) (and (=> (<= |n_$10_$1| (Seq@Length$ref$ |s_$9_$1|)) (= (Seq@Length$ref$ (Seq@Drop$ref$ |s_$9_$1| |n_$10_$1|)) (- (Seq@Length$ref$ |s_$9_$1|) |n_$10_$1|))) (=> (< (Seq@Length$ref$ |s_$9_$1|) |n_$10_$1|) (= (Seq@Length$ref$ (Seq@Drop$ref$ |s_$9_$1| |n_$10_$1|)) 0))))  :pattern ( (Seq@Length$ref$ (Seq@Drop$ref$ |s_$9_$1| |n_$10_$1|)))))
    (forall( (|s0_$0_$0| Seq$Int$) (|s1_$0_$0| Seq$Int$) (|n_$3_$0| Int))(!(and (=> (< |n_$3_$0| (Seq@Length$Int$ |s0_$0_$0|)) (= (Seq@Index$Int$ (Seq@Append$Int$ |s0_$0_$0| |s1_$0_$0|) |n_$3_$0|) (Seq@Index$Int$ |s0_$0_$0| |n_$3_$0|))) (=> (<= (Seq@Length$Int$ |s0_$0_$0|) |n_$3_$0|) (= (Seq@Index$Int$ (Seq@Append$Int$ |s0_$0_$0| |s1_$0_$0|) |n_$3_$0|) (Seq@Index$Int$ |s1_$0_$0| (- |n_$3_$0| (Seq@Length$Int$ |s0_$0_$0|))))))  :pattern ( (Seq@Index$Int$ (Seq@Append$Int$ |s0_$0_$0| |s1_$0_$0|) |n_$3_$0|))))
    (forall( (|s0_$0_$1| Seq$ref$) (|s1_$0_$1| Seq$ref$) (|n_$3_$1| Int))(!(and (=> (< |n_$3_$1| (Seq@Length$ref$ |s0_$0_$1|)) (= (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$1| |s1_$0_$1|) |n_$3_$1|) (Seq@Index$ref$ |s0_$0_$1| |n_$3_$1|))) (=> (<= (Seq@Length$ref$ |s0_$0_$1|) |n_$3_$1|) (= (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$1| |s1_$0_$1|) |n_$3_$1|) (Seq@Index$ref$ |s1_$0_$1| (- |n_$3_$1| (Seq@Length$ref$ |s0_$0_$1|))))))  :pattern ( (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$1| |s1_$0_$1|) |n_$3_$1|))))
    (forall( (|s0_$1_$0| Seq$Int$) (|s1_$1_$0| Seq$Int$) (|x_$5_$0| Int))(!(= (Seq@Contains$Int$ (Seq@Append$Int$ |s0_$1_$0| |s1_$1_$0|) |x_$5_$0|) (or (Seq@Contains$Int$ |s0_$1_$0| |x_$5_$0|) (Seq@Contains$Int$ |s1_$1_$0| |x_$5_$0|)))  :pattern ( (Seq@Contains$Int$ (Seq@Append$Int$ |s0_$1_$0| |s1_$1_$0|) |x_$5_$0|))))
    (forall( (|s0_$1_$1| Seq$ref$) (|s1_$1_$1| Seq$ref$) (|x_$5_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Append$ref$ |s0_$1_$1| |s1_$1_$1|) |x_$5_$1|) (or (Seq@Contains$ref$ |s0_$1_$1| |x_$5_$1|) (Seq@Contains$ref$ |s1_$1_$1| |x_$5_$1|)))  :pattern ( (Seq@Contains$ref$ (Seq@Append$ref$ |s0_$1_$1| |s1_$1_$1|) |x_$5_$1|))))
    (forall( (|s0_$2_$0| Seq$Int$) (|s1_$2_$0| Seq$Int$))(!(= (Seq@Equal$Int$ |s0_$2_$0| |s1_$2_$0|) (and (= (Seq@Length$Int$ |s0_$2_$0|) (Seq@Length$Int$ |s1_$2_$0|)) (forall( (|j_$0_$1| Int))(!(=> (and (<= 0 |j_$0_$1|) (< |j_$0_$1| (Seq@Length$Int$ |s0_$2_$0|))) (= (Seq@Index$Int$ |s0_$2_$0| |j_$0_$1|) (Seq@Index$Int$ |s1_$2_$0| |j_$0_$1|)))  :pattern ( (Seq@Index$Int$ |s0_$2_$0| |j_$0_$1|)) :pattern ( (Seq@Index$Int$ |s1_$2_$0| |j_$0_$1|))))))  :pattern ( (Seq@Equal$Int$ |s0_$2_$0| |s1_$2_$0|))))
    (forall( (|s0_$2_$1| Seq$ref$) (|s1_$2_$1| Seq$ref$))(!(= (Seq@Equal$ref$ |s0_$2_$1| |s1_$2_$1|) (and (= (Seq@Length$ref$ |s0_$2_$1|) (Seq@Length$ref$ |s1_$2_$1|)) (forall( (|j_$0_$3| Int))(!(=> (and (<= 0 |j_$0_$3|) (< |j_$0_$3| (Seq@Length$ref$ |s0_$2_$1|))) (= (Seq@Index$ref$ |s0_$2_$1| |j_$0_$3|) (Seq@Index$ref$ |s1_$2_$1| |j_$0_$3|)))  :pattern ( (Seq@Index$ref$ |s0_$2_$1| |j_$0_$3|)) :pattern ( (Seq@Index$ref$ |s1_$2_$1| |j_$0_$3|))))))  :pattern ( (Seq@Equal$ref$ |s0_$2_$1| |s1_$2_$1|))))
    (forall( (|s0_$4| Seq$Int$) (|s1_$4| Seq$Int$))(!(= (Seq@Length$Int$ (Seq@Append$Int$ |s0_$4| |s1_$4|)) (+ (Seq@Length$Int$ |s0_$4|) (Seq@Length$Int$ |s1_$4|)))  :pattern ( (Seq@Length$Int$ (Seq@Append$Int$ |s0_$4| |s1_$4|)))))
    (forall( (|s0_$5| Seq$ref$) (|s1_$5| Seq$ref$))(!(= (Seq@Length$ref$ (Seq@Append$ref$ |s0_$5| |s1_$5|)) (+ (Seq@Length$ref$ |s0_$5|) (Seq@Length$ref$ |s1_$5|)))  :pattern ( (Seq@Length$ref$ (Seq@Append$ref$ |s0_$5| |s1_$5|)))))
    (forall( (|t_$0_$0| Int))(!(= (Seq@Index$Int$ (Seq@Singleton$Int$ |t_$0_$0|) 0) |t_$0_$0|)  :pattern ( (Seq@Index$Int$ (Seq@Singleton$Int$ |t_$0_$0|) 0))))
    (forall( (|t_$0_$1| ref))(!(= (Seq@Index$ref$ (Seq@Singleton$ref$ |t_$0_$1|) 0) |t_$0_$1|)  :pattern ( (Seq@Index$ref$ (Seq@Singleton$ref$ |t_$0_$1|) 0))))
    (forall( (|t_$2| Int))(!(= (Seq@Length$Int$ (Seq@Singleton$Int$ |t_$2|)) 1)  :pattern ( (Seq@Length$Int$ (Seq@Singleton$Int$ |t_$2|)))))
    (forall( (|t_$3| ref))(!(= (Seq@Length$ref$ (Seq@Singleton$ref$ |t_$3|)) 1)  :pattern ( (Seq@Length$ref$ (Seq@Singleton$ref$ |t_$3|)))))
    (forall( (|x_$0| Int) (|y_$0| Int))(!(= (mod |x_$0| |y_$0|) (- |x_$0| (* (div |x_$0| |y_$0|) |y_$0|)))  :pattern ( (mod |x_$0| |y_$0|)) :pattern ( (div |x_$0| |y_$0|))))
    (forall( (|x_$1| Int) (|y_$1| Int))(!(=> (< 0 |y_$1|) (and (<= 0 (mod |x_$1| |y_$1|)) (< (mod |x_$1| |y_$1|) |y_$1|)))  :pattern ( (mod |x_$1| |y_$1|))))
    (forall( (|x_$2| Int) (|y_$2| Int))(!(=> (< |y_$2| 0) (and (< |y_$2| (mod |x_$2| |y_$2|)) (<= (mod |x_$2| |y_$2|) 0)))  :pattern ( (mod |x_$2| |y_$2|))))
    (forall( (|x_$4| ref))(!(not (Seq@Contains$ref$ Seq@Empty$ref$ |x_$4|))  :pattern ( (Seq@Contains$ref$ Seq@Empty$ref$ |x_$4|))))
    (forall( (|x_$9_$0| Int) (|y_$3_$0| Int))(!(= (Seq@Contains$Int$ (Seq@Singleton$Int$ |x_$9_$0|) |y_$3_$0|) (= |x_$9_$0| |y_$3_$0|))  :pattern ( (Seq@Contains$Int$ (Seq@Singleton$Int$ |x_$9_$0|) |y_$3_$0|))))
    (forall( (|x_$9_$1| ref) (|y_$3_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Singleton$ref$ |x_$9_$1|) |y_$3_$1|) (= |x_$9_$1| |y_$3_$1|))  :pattern ( (Seq@Contains$ref$ (Seq@Singleton$ref$ |x_$9_$1|) |y_$3_$1|))))
    (forall( (|x| Int) (|y| Int))(=> (and (<= 0 |x|) (<= |x| |y|)) (<= (Fractions |x|) (Fractions |y|))))
    (IsGoodMask ZeroMask)
    (IsGoodState$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ nostate)
    (NonPredicateField$Bool$ rdheld)
    (NonPredicateField$Bool$ SortedTreeNode.shared)
    (NonPredicateField$Int$ forkK)
    (NonPredicateField$Int$ held)
    (NonPredicateField$Int$ joinable)
    (NonPredicateField$Int$ SortedTree.numClones)
    (NonPredicateField$Int$ SortedTreeNode.key)
    (NonPredicateField$Mu$ mu)
    (NonPredicateField$ref$ SortedTree.root)
    (NonPredicateField$ref$ SortedTreeNode.left)
    (NonPredicateField$ref$ SortedTreeNode.right)
    (NonPredicateField$ref$ SortedTreeSnapshot.root)
    (NonPredicateField$Seq$Int$$ SortedTree.keys)
    (NonPredicateField$Seq$Int$$ SortedTreeNode.keys)
    (NonPredicateField$Seq$Int$$ SortedTreeSnapshot.keys)
    (PredicateField$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ SortedTree.valid)
    (PredicateField$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ SortedTreeNode.valid)
    (PredicateField$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ SortedTreeSnapshot.valid)
  )
    PreconditionGeneratedEntry
)))
(let (($root (=> (and true
  )
    $start
)))
   $root
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))

;Commands
   (check-sat)
   ;(get-unsat-core)
