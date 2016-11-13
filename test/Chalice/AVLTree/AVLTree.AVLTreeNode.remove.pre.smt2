;Analysis time until now:     9s
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
(declare-sort Field$Seq$Int$$ 0)
(declare-sort ModuleName 0)
(declare-sort Mu 0)
(declare-sort PartialHeapType 0)
(declare-sort PermissionComponent 0)
(declare-sort ref 0)
(declare-sort Seq$Int$ 0)
(declare-sort Seq$ref$ 0)
(declare-sort TypeName 0)

;Functions
(declare-fun $LockBottom ( ) Mu)
(declare-fun assertSecMask@_533@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_533@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_533@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_533@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_533@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_533@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_533@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_533@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_533@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_533@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_533@18 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_533@19 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_533@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_533@20 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_533@21 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_533@22 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_533@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_533@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_533@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_533@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_533@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_533@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_533@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_582@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_582@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_582@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_582@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_582@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_582@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_582@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_582@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_582@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_582@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_582@18 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_582@19 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_582@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_582@20 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_582@21 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_582@22 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_582@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_582@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_582@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_582@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_582@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_582@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun assertSecMask@_582@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun AVLTree.keys ( ) Field$Seq$Int$$)
(declare-fun AVLTree.root ( ) Field$ref$)
(declare-fun AVLTree.valid ( ) Field$Int$)
(declare-fun AVLTreeNode.balanceFactor ( ) Field$Int$)
(declare-fun AVLTreeNode.height ( ) Field$Int$)
(declare-fun AVLTreeNode.key ( ) Field$Int$)
(declare-fun AVLTreeNode.keys ( ) Field$Seq$Int$$)
(declare-fun AVLTreeNode.left ( ) Field$ref$)
(declare-fun AVLTreeNode.right ( ) Field$ref$)
(declare-fun AVLTreeNode.valid ( ) Field$Int$)
(declare-fun AVLTreeNode@t ( ) TypeName)
(declare-fun bf@249@0 ( ) Int)
(declare-fun bf@275@0 ( ) Int)
(declare-fun bf@298@0 ( ) Int)
(declare-fun channelK ( ) Int)
(declare-fun Credits ( ) $@Map@@ref@To@Int@@)
(declare-fun CurrentModule ( ) ModuleName)
(declare-fun DecPerm$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Bool$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun DecPerm$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun DecPerm$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun DecPerm$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun DecPerm$Seq$Int$$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Seq$Int$$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun dtype ( ref ) TypeName)
(declare-fun emptyPartialHeap ( ) PartialHeapType)
(declare-fun exhaleHeap@_535@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_584@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_635@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_651@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_664@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_699@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_724@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_737@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_753@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_776@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_799@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_823@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_836@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_852@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_875@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_898@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_916@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleMask@_636@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_636@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_636@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_636@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_636@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_636@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_636@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_636@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_636@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_636@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_652@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_652@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_652@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_652@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_665@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_665@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_665@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_665@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_700@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_700@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_700@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_700@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_700@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_700@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_700@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_700@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_700@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_700@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_700@18 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_700@19 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_700@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_700@20 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_700@21 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_700@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_700@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_700@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_700@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_700@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_700@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_700@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_725@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_725@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_725@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_725@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_738@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_738@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_738@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_738@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_738@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_738@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_738@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_738@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_738@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_738@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_754@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_754@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_754@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_754@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_754@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_754@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_754@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_754@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_754@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_754@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_754@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_754@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_754@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_754@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_754@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_754@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_754@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_754@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_777@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_777@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_777@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_777@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_777@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_777@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_777@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_777@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_777@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_777@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_777@18 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_777@19 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_777@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_777@20 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_777@21 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_777@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_777@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_777@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_777@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_777@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_777@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_777@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_800@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_800@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_800@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_800@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_800@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_800@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_800@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_800@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_800@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_800@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_800@18 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_800@19 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_800@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_800@20 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_800@21 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_800@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_800@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_800@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_800@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_800@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_800@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_800@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_824@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_824@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_824@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_824@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_837@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_837@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_837@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_837@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_837@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_837@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_837@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_837@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_837@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_837@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_853@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_853@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_853@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_853@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_853@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_853@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_853@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_853@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_853@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_853@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_853@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_853@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_853@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_853@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_853@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_853@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_853@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_853@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_876@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_876@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_876@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_876@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_876@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_876@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_876@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_876@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_876@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_876@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_876@18 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_876@19 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_876@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_876@20 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_876@21 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_876@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_876@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_876@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_876@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_876@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_876@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_876@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_899@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_899@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_899@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_899@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_899@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_899@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_899@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_899@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_899@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_899@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_899@18 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_899@19 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_899@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_899@20 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_899@21 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_899@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_899@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_899@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_899@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_899@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_899@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_899@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_917@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_917@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_917@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_917@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_917@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_917@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_917@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_917@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun forkK ( ) Field$Int$)
(declare-fun Fractions ( Int ) Int)
(declare-fun Heap ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun heapFragment$Int$ ( Int ) PartialHeapType)
(declare-fun heapFragment$ref$ ( ref ) PartialHeapType)
(declare-fun heapFragment$Seq$Int$$ ( Seq$Int$ ) PartialHeapType)
(declare-fun held ( ) Field$Int$)
(declare-fun IncPerm$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Bool$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun IncPerm$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun IncPerm$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun IncPerm$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun IncPerm$Seq$Int$$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Seq$Int$$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ ( Bool $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ ( Bool $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun ite$$@Map@@PermissionComponent@To@Int@@$ ( Bool $@Map@@PermissionComponent@To@Int@@ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun ite$$@Map@@ref@To@Int@@$ ( Bool $@Map@@ref@To@Int@@ $@Map@@ref@To@Int@@ ) $@Map@@ref@To@Int@@)
(declare-fun ite$Field$Bool$$ ( Bool Field$Bool$ Field$Bool$ ) Field$Bool$)
(declare-fun ite$Field$Int$$ ( Bool Field$Int$ Field$Int$ ) Field$Int$)
(declare-fun ite$Field$Mu$$ ( Bool Field$Mu$ Field$Mu$ ) Field$Mu$)
(declare-fun ite$Field$ref$$ ( Bool Field$ref$ Field$ref$ ) Field$ref$)
(declare-fun ite$Field$Seq$Int$$$ ( Bool Field$Seq$Int$$ Field$Seq$Int$$ ) Field$Seq$Int$$)
(declare-fun ite$Int$ ( Bool Int Int ) Int)
(declare-fun ite$ModuleName$ ( Bool ModuleName ModuleName ) ModuleName)
(declare-fun ite$Mu$ ( Bool Mu Mu ) Mu)
(declare-fun ite$PartialHeapType$ ( Bool PartialHeapType PartialHeapType ) PartialHeapType)
(declare-fun ite$PermissionComponent$ ( Bool PermissionComponent PermissionComponent ) PermissionComponent)
(declare-fun ite$ref$ ( Bool ref ref ) ref)
(declare-fun ite$Seq$Int$$ ( Bool Seq$Int$ Seq$Int$ ) Seq$Int$)
(declare-fun ite$Seq$ref$$ ( Bool Seq$ref$ Seq$ref$ ) Seq$ref$)
(declare-fun ite$TypeName$ ( Bool TypeName TypeName ) TypeName)
(declare-fun joinable ( ) Field$Int$)
(declare-fun k@19 ( ) Int)
(declare-fun m@252 ( ) ref)
(declare-fun m@252@0 ( ) ref)
(declare-fun m@256 ( ) ref)
(declare-fun m@256@0 ( ) ref)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Bool$ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Seq$Int$$ ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Bool$ ) Bool)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Int$ ) Int)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Mu$ ) Mu)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$ref$ ) ref)
(declare-fun MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Seq$Int$$ ) Seq$Int$)
(declare-fun MapRead$$@Map@@PermissionComponent@To@Int@@$ ( $@Map@@PermissionComponent@To@Int@@ PermissionComponent ) Int)
(declare-fun MapRead$$@Map@@ref@To@Int@@$ ( $@Map@@ref@To@Int@@ ref ) Int)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Seq$Int$$ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Int$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$ref$ ref ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@PermissionComponent@To@Int@@$ ( $@Map@@PermissionComponent@To@Int@@ PermissionComponent Int ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun Mask ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@100 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@101 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@102 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@103 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@104 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@105 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@106 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@107 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@108 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@109 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@110 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@111 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@112 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@113 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@114 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@115 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@116 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@117 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@118 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@119 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@120 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@121 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@122 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@123 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@124 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@125 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@126 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@127 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@128 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@129 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@130 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@131 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@132 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@133 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@134 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@135 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@136 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@137 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@138 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@139 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@140 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@141 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@142 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@143 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@144 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@145 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@146 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@147 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@148 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@149 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@18 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@19 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@20 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@21 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@22 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@23 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@24 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@25 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@26 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@27 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@28 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@29 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@30 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@31 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@32 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@33 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@34 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@35 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@36 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@37 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@38 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@39 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@40 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@41 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@42 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@43 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@44 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@45 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@46 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@47 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@48 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@49 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@50 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@51 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@52 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@53 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@54 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@55 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@56 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@57 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@58 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@59 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@60 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@61 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@62 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@63 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@64 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@65 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@66 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@67 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@68 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@69 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@70 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@71 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@72 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@73 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@74 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@75 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@76 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@77 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@78 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@79 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@80 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@81 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@82 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@83 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@84 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@85 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@86 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@87 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@88 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@89 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@90 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@91 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@92 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@93 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@94 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@95 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@96 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@97 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@98 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@99 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun methodCallK@_634 ( ) Int)
(declare-fun methodCallK@_650 ( ) Int)
(declare-fun methodCallK@_663 ( ) Int)
(declare-fun methodCallK@_698 ( ) Int)
(declare-fun methodCallK@_723 ( ) Int)
(declare-fun methodCallK@_736 ( ) Int)
(declare-fun methodCallK@_752 ( ) Int)
(declare-fun methodCallK@_775 ( ) Int)
(declare-fun methodCallK@_798 ( ) Int)
(declare-fun methodCallK@_822 ( ) Int)
(declare-fun methodCallK@_835 ( ) Int)
(declare-fun methodCallK@_851 ( ) Int)
(declare-fun methodCallK@_874 ( ) Int)
(declare-fun methodCallK@_897 ( ) Int)
(declare-fun methodK@_506 ( ) Int)
(declare-fun module@default ( ) ModuleName)
(declare-fun monitorK ( ) Int)
(declare-fun mu ( ) Field$Mu$)
(declare-fun newVers@_528@0 ( ) Int)
(declare-fun newVers@_563@0 ( ) Int)
(declare-fun newVers@_612@0 ( ) Int)
(declare-fun newVers@_693@0 ( ) Int)
(declare-fun nl@24 ( ) ref)
(declare-fun nl@24@0 ( ) ref)
(declare-fun nl@24@1 ( ) ref)
(declare-fun nl@28 ( ) ref)
(declare-fun nr@26 ( ) ref)
(declare-fun nr@26@0 ( ) ref)
(declare-fun nr@26@1 ( ) ref)
(declare-fun nr@32 ( ) ref)
(declare-fun null ( ) ref)
(declare-fun oldVers@_527@0 ( ) Int)
(declare-fun oldVers@_562@0 ( ) Int)
(declare-fun oldVers@_611@0 ( ) Int)
(declare-fun oldVers@_692@0 ( ) Int)
(declare-fun perm$N ( ) PermissionComponent)
(declare-fun perm$R ( ) PermissionComponent)
(declare-fun Permission$denominator ( ) Int)
(declare-fun Permission$Full ( ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun Permission$FullFraction ( ) Int)
(declare-fun Permission$Zero ( ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun predicateK ( ) Int)
(declare-fun r@20 ( ) ref)
(declare-fun r@20@0 ( ) ref)
(declare-fun r@20@1 ( ) ref)
(declare-fun r@20@2 ( ) ref)
(declare-fun r@20@3 ( ) ref)
(declare-fun r@251 ( ) ref)
(declare-fun r@251@0 ( ) ref)
(declare-fun r@255 ( ) ref)
(declare-fun r@255@0 ( ) ref)
(declare-fun r@271 ( ) ref)
(declare-fun r@271@0 ( ) ref)
(declare-fun r@277 ( ) ref)
(declare-fun r@277@0 ( ) ref)
(declare-fun r@294 ( ) ref)
(declare-fun r@294@0 ( ) ref)
(declare-fun r@300 ( ) ref)
(declare-fun r@300@0 ( ) ref)
(declare-fun rdheld ( ) Field$Bool$)
(declare-fun SecMask ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
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
(declare-fun this ( ) ref)
(declare-fun this@248 ( ) ref)
(declare-fun this@250 ( ) ref)
(declare-fun this@250@0 ( ) ref)
(declare-fun this@254 ( ) ref)
(declare-fun this@254@0 ( ) ref)
(declare-fun this@264 ( ) ref)
(declare-fun this@269 ( ) ref)
(declare-fun this@269@0 ( ) ref)
(declare-fun this@274 ( ) ref)
(declare-fun this@276 ( ) ref)
(declare-fun this@282 ( ) ref)
(declare-fun this@287 ( ) ref)
(declare-fun this@292 ( ) ref)
(declare-fun this@292@0 ( ) ref)
(declare-fun this@297 ( ) ref)
(declare-fun this@299 ( ) ref)
(declare-fun this@305 ( ) ref)
(declare-fun this@310 ( ) ref)
(declare-fun unfoldingHeap@_537@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun unfoldingHeap@_537@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun unfoldingHeap@_586@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun unfoldingHeap@_586@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun unfoldingK@_542 ( ) Int)
(declare-fun unfoldingK@_591 ( ) Int)
(declare-fun unfoldingMask@_538@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_538@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_538@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_538@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_538@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_538@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_538@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_538@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_538@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_538@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_538@18 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_538@19 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_538@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_538@20 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_538@21 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_538@22 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_538@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_538@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_538@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_538@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_538@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_538@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_538@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_587@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_587@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_587@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_587@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_587@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_587@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_587@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_587@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_587@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_587@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_587@18 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_587@19 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_587@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_587@20 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_587@21 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_587@22 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_587@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_587@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_587@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_587@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_587@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_587@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldingMask@_587@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun unfoldK@_507 ( ) Int)
(declare-fun unfoldK@_672 ( ) Int)
(declare-fun ZeroCredits ( ) $@Map@@ref@To@Int@@)
(declare-fun ZeroMask ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)

;Predicates
(declare-fun $@AVLTreeNode.valid@trigger ( ref ) Bool)
(declare-fun CanAssumeFunctionDefs ( ) Bool)
(declare-fun CanRead$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Bool$ ) Bool)
(declare-fun CanRead$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ ) Bool)
(declare-fun CanRead$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ ) Bool)
(declare-fun CanRead$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ ) Bool)
(declare-fun CanRead$Seq$Int$$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Seq$Int$$ ) Bool)
(declare-fun CanWrite$Bool$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Bool$ ) Bool)
(declare-fun CanWrite$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ ) Bool)
(declare-fun CanWrite$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ ) Bool)
(declare-fun CanWrite$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ ) Bool)
(declare-fun CanWrite$Seq$Int$$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Seq$Int$$ ) Bool)
(declare-fun cond@_529@0 ( ) Bool)
(declare-fun cond@_530@0 ( ) Bool)
(declare-fun cond@_629@0 ( ) Bool)
(declare-fun cond@_645@0 ( ) Bool)
(declare-fun cond@_717@0 ( ) Bool)
(declare-fun cond@_718@0 ( ) Bool)
(declare-fun cond@_747@0 ( ) Bool)
(declare-fun cond@_817@0 ( ) Bool)
(declare-fun cond@_846@0 ( ) Bool)
(declare-fun IsGoodExhaleState ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ) Bool)
(declare-fun IsGoodMask ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ) Bool)
(declare-fun IsGoodState ( PartialHeapType ) Bool)
(declare-fun ite$Bool$ ( Bool Bool Bool ) Bool)
(declare-fun MuBelow ( Mu Mu ) Bool)
(declare-fun NonPredicateField$Bool$ ( Field$Bool$ ) Bool)
(declare-fun NonPredicateField$Int$ ( Field$Int$ ) Bool)
(declare-fun NonPredicateField$Mu$ ( Field$Mu$ ) Bool)
(declare-fun NonPredicateField$ref$ ( Field$ref$ ) Bool)
(declare-fun NonPredicateField$Seq$Int$$ ( Field$Seq$Int$$ ) Bool)
(declare-fun PredicateField$Bool$ ( Field$Bool$ ) Bool)
(declare-fun PredicateField$Int$ ( Field$Int$ ) Bool)
(declare-fun PredicateField$Mu$ ( Field$Mu$ ) Bool)
(declare-fun PredicateField$ref$ ( Field$ref$ ) Bool)
(declare-fun PredicateField$Seq$Int$$ ( Field$Seq$Int$$ ) Bool)
(declare-fun Seq@Contains$Int$ ( Seq$Int$ Int ) Bool)
(declare-fun Seq@Contains$ref$ ( Seq$ref$ ref ) Bool)
(declare-fun Seq@Equal$Int$ ( Seq$Int$ Seq$Int$ ) Bool)
(declare-fun Seq@Equal$ref$ ( Seq$ref$ Seq$ref$ ) Bool)
(declare-fun wf ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ) Bool)

;Axioms
   (assert (! ($@AVLTreeNode.valid@trigger this) :named ax_0))
   (assert (! (< (* 1000 channelK) (Fractions 1)) :named ax_1))
   (assert (! (< (* 1000 methodK@_506) (Fractions 1)) :named ax_2))
   (assert (! (< (* 1000 monitorK) (Fractions 1)) :named ax_3))
   (assert (! (< (* 1000 predicateK) (Fractions 1)) :named ax_4))
   (assert (! (< (* 1000 unfoldK@_507) methodK@_506) :named ax_5))
   (assert (! (< 0 channelK) :named ax_6))
   (assert (! (< 0 methodK@_506) :named ax_7))
   (assert (! (< 0 monitorK) :named ax_8))
   (assert (! (< 0 predicateK) :named ax_9))
   (assert (! (< 0 unfoldK@_507) :named ax_10))
   (assert (! (< unfoldK@_507 (Fractions 1)) :named ax_11))
   (assert (! (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ Permission$Full perm$N) 0) :named ax_12))
   (assert (! (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ Permission$Full perm$R) Permission$FullFraction) :named ax_13))
   (assert (! (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ Permission$Zero perm$N) 0) :named ax_14))
   (assert (! (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ Permission$Zero perm$R) 0) :named ax_15))
   (assert (! (= (Seq@Length$Int$ Seq@Empty$Int$) 0) :named ax_16))
   (assert (! (= (Seq@Length$ref$ Seq@Empty$ref$) 0) :named ax_17))
   (assert (! (= channelK monitorK) :named ax_18))
   (assert (! (= CurrentModule module@default) :named ax_19))
   (assert (! (= Heap Heap) :named ax_20))
   (assert (! (= Mask@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask this AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask this AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask this AVLTreeNode.valid) perm$R) (Fractions 100))))) :named ax_21))
   (assert (! (= Mask@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@0 this AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@0 this AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@0 this AVLTreeNode.keys) perm$R) (Fractions 50))))) :named ax_22))
   (assert (! (= Mask@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@1 this AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@1 this AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@1 this AVLTreeNode.height) perm$R) (Fractions 50))))) :named ax_23))
   (assert (! (= Mask@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@2 this AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@2 this AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@2 this AVLTreeNode.balanceFactor) perm$R) (Fractions 50))))) :named ax_24))
   (assert (! (= Mask@3 Mask) :named ax_25))
   (assert (! (= Permission$FullFraction (Fractions 100)) :named ax_26))
   (assert (! (= predicateK channelK) :named ax_27))
   (assert (! (= ZeroCredits Credits) :named ax_28))
   (assert (! (= ZeroMask SecMask) :named ax_29))
   (assert (! (> (Fractions 100) 0) :named ax_30))
   (assert (! (> (Fractions 100) 0) :named ax_31))
   (assert (! (> (Fractions 50) 0) :named ax_32))
   (assert (! (> (Fractions 50) 0) :named ax_33))
   (assert (! (> (Fractions 50) 0) :named ax_34))
   (assert (! (> Permission$denominator 0) :named ax_35))
   (assert (! (forall ((|i_1| Field$Int$)(|i| ref)(|m_1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v| $@Map@@PermissionComponent@To@Int@@))(!(= v (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_1 i i_1 v) i i_1)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_1 i i_1 v) i i_1)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_36))
   (assert (! (forall ((|i_12| PermissionComponent)(|m_7| $@Map@@PermissionComponent@To@Int@@)(|v_6| Int))(!(= v_6 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_7 i_12 v_6) i_12)):pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_7 i_12 v_6) i_12)) :qid map_1_$@Map@@PermissionComponent@To@Int@@ :weight 0 )) :named ax_37))
   (assert (! (forall ((|i_15| Field$Seq$Int$$)(|i_14| ref)(|m_9| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_8| $@Map@@PermissionComponent@To@Int@@))(!(= v_8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_9 i_14 i_15 v_8) i_14 i_15)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_9 i_14 i_15 v_8) i_14 i_15)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_38))
   (assert (! (forall ((|i_27| Field$Int$)(|i_26| ref)(|m_15| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_14| Int))(!(= v_14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_15 i_26 i_27 v_14) i_26 i_27)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_15 i_26 i_27 v_14) i_26 i_27)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_39))
   (assert (! (forall ((|i_39| Field$ref$)(|i_38| ref)(|m_21| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_20| $@Map@@PermissionComponent@To@Int@@))(!(= v_20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_21 i_38 i_39 v_20) i_38 i_39)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_21 i_38 i_39 v_20) i_38 i_39)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_40))
   (assert (! (forall ((|i_51| Field$ref$)(|i_50| ref)(|m_27| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_26| ref))(!(= v_26 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_27 i_50 i_51 v_26) i_50 i_51)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_27 i_50 i_51 v_26) i_50 i_51)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_41))
   (assert (! (forall ((|v_1| $@Map@@PermissionComponent@To@Int@@)(|m_2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_3| Field$Int$)(|j_1| Field$Int$)(|i_2| ref)(|j| ref))(!(=> (or (not (= j_1 i_3)) (not (= j i_2))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_2 j j_1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_2 i_2 i_3 v_1) j j_1))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_2 i_2 i_3 v_1) j j_1)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_42))
   (assert (! (forall ((|v_10| $@Map@@PermissionComponent@To@Int@@)(|i_19| Field$Seq$Int$$)(|i_18| ref)(|j_14| Field$Bool$)(|j_13| ref)(|m_11| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_11 j_13 j_14) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_11 i_18 i_19 v_10) j_13 j_14)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_11 i_18 i_19 v_10) j_13 j_14)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__Seq$Int$ :weight 0 )) :named ax_43))
   (assert (! (forall ((|v_11| $@Map@@PermissionComponent@To@Int@@)(|i_21| Field$Seq$Int$$)(|i_20| ref)(|j_16| Field$Int$)(|j_15| ref)(|m_12| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_12 j_15 j_16) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_12 i_20 i_21 v_11) j_15 j_16)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_12 i_20 i_21 v_11) j_15 j_16)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Int__Seq$Int$ :weight 0 )) :named ax_44))
   (assert (! (forall ((|v_12| $@Map@@PermissionComponent@To@Int@@)(|i_23| Field$Seq$Int$$)(|i_22| ref)(|j_18| Field$ref$)(|j_17| ref)(|m_13| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_13 j_17 j_18) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_13 i_22 i_23 v_12) j_17 j_18)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_13 i_22 i_23 v_12) j_17 j_18)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__ref__Seq$Int$ :weight 0 )) :named ax_45))
   (assert (! (forall ((|v_13| $@Map@@PermissionComponent@To@Int@@)(|i_25| Field$Seq$Int$$)(|i_24| ref)(|j_20| Field$Mu$)(|j_19| ref)(|m_14| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_14 j_19 j_20) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_14 i_24 i_25 v_13) j_19 j_20)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_14 i_24 i_25 v_13) j_19 j_20)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Mu__Seq$Int$ :weight 0 )) :named ax_46))
   (assert (! (forall ((|v_15| Int)(|m_16| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_29| Field$Int$)(|j_22| Field$Int$)(|i_28| ref)(|j_21| ref))(!(=> (or (not (= j_22 i_29)) (not (= j_21 i_28))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_16 j_21 j_22) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_16 i_28 i_29 v_15) j_21 j_22))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_16 i_28 i_29 v_15) j_21 j_22)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_47))
   (assert (! (forall ((|v_16| Int)(|i_31| Field$Int$)(|i_30| ref)(|j_24| Field$Bool$)(|j_23| ref)(|m_17| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_17 j_23 j_24) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_17 i_30 i_31 v_16) j_23 j_24)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_17 i_30 i_31 v_16) j_23 j_24)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__Int :weight 0 )) :named ax_48))
   (assert (! (forall ((|v_17| Int)(|i_33| Field$Int$)(|i_32| ref)(|j_26| Field$ref$)(|j_25| ref)(|m_18| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_18 j_25 j_26) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_18 i_32 i_33 v_17) j_25 j_26)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_18 i_32 i_33 v_17) j_25 j_26)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__Int :weight 0 )) :named ax_49))
   (assert (! (forall ((|v_18| Int)(|i_35| Field$Int$)(|i_34| ref)(|j_28| Field$Mu$)(|j_27| ref)(|m_19| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ m_19 j_27 j_28) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_19 i_34 i_35 v_18) j_27 j_28)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_19 i_34 i_35 v_18) j_27 j_28)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Mu__Int :weight 0 )) :named ax_50))
   (assert (! (forall ((|v_19| Int)(|i_37| Field$Int$)(|i_36| ref)(|j_30| Field$Seq$Int$$)(|j_29| ref)(|m_20| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_20 j_29 j_30) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_20 i_36 i_37 v_19) j_29 j_30)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_20 i_36 i_37 v_19) j_29 j_30)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$Int$__Int :weight 0 )) :named ax_51))
   (assert (! (forall ((|v_2| $@Map@@PermissionComponent@To@Int@@)(|i_5| Field$Int$)(|i_4| ref)(|j_3| Field$Bool$)(|j_2| ref)(|m_3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_3 j_2 j_3) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_3 i_4 i_5 v_2) j_2 j_3)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_3 i_4 i_5 v_2) j_2 j_3)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__Int :weight 0 )) :named ax_52))
   (assert (! (forall ((|v_21| $@Map@@PermissionComponent@To@Int@@)(|m_22| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_41| Field$ref$)(|j_32| Field$ref$)(|i_40| ref)(|j_31| ref))(!(=> (or (not (= j_32 i_41)) (not (= j_31 i_40))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_22 j_31 j_32) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_22 i_40 i_41 v_21) j_31 j_32))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_22 i_40 i_41 v_21) j_31 j_32)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_53))
   (assert (! (forall ((|v_22| $@Map@@PermissionComponent@To@Int@@)(|i_43| Field$ref$)(|i_42| ref)(|j_34| Field$Bool$)(|j_33| ref)(|m_23| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_23 j_33 j_34) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_23 i_42 i_43 v_22) j_33 j_34)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_23 i_42 i_43 v_22) j_33 j_34)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__ref :weight 0 )) :named ax_54))
   (assert (! (forall ((|v_23| $@Map@@PermissionComponent@To@Int@@)(|i_45| Field$ref$)(|i_44| ref)(|j_36| Field$Int$)(|j_35| ref)(|m_24| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_24 j_35 j_36) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_24 i_44 i_45 v_23) j_35 j_36)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_24 i_44 i_45 v_23) j_35 j_36)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Int__ref :weight 0 )) :named ax_55))
   (assert (! (forall ((|v_24| $@Map@@PermissionComponent@To@Int@@)(|i_47| Field$ref$)(|i_46| ref)(|j_38| Field$Mu$)(|j_37| ref)(|m_25| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_25 j_37 j_38) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_25 i_46 i_47 v_24) j_37 j_38)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_25 i_46 i_47 v_24) j_37 j_38)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Mu__ref :weight 0 )) :named ax_56))
   (assert (! (forall ((|v_25| $@Map@@PermissionComponent@To@Int@@)(|i_49| Field$ref$)(|i_48| ref)(|j_40| Field$Seq$Int$$)(|j_39| ref)(|m_26| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_26 j_39 j_40) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_26 i_48 i_49 v_25) j_39 j_40)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_26 i_48 i_49 v_25) j_39 j_40)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Seq$Int$__ref :weight 0 )) :named ax_57))
   (assert (! (forall ((|v_27| ref)(|m_28| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_53| Field$ref$)(|j_42| Field$ref$)(|i_52| ref)(|j_41| ref))(!(=> (or (not (= j_42 i_53)) (not (= j_41 i_52))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_28 j_41 j_42) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_28 i_52 i_53 v_27) j_41 j_42))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_28 i_52 i_53 v_27) j_41 j_42)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_58))
   (assert (! (forall ((|v_28| ref)(|i_55| Field$ref$)(|i_54| ref)(|j_44| Field$Bool$)(|j_43| ref)(|m_29| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_29 j_43 j_44) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_29 i_54 i_55 v_28) j_43 j_44)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_29 i_54 i_55 v_28) j_43 j_44)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__ref :weight 0 )) :named ax_59))
   (assert (! (forall ((|v_29| ref)(|i_57| Field$ref$)(|i_56| ref)(|j_46| Field$Int$)(|j_45| ref)(|m_30| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_30 j_45 j_46) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_30 i_56 i_57 v_29) j_45 j_46)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_30 i_56 i_57 v_29) j_45 j_46)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Int__ref :weight 0 )) :named ax_60))
   (assert (! (forall ((|v_3| $@Map@@PermissionComponent@To@Int@@)(|i_7| Field$Int$)(|i_6| ref)(|j_5| Field$ref$)(|j_4| ref)(|m_4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_4 j_4 j_5) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_4 i_6 i_7 v_3) j_4 j_5)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_4 i_6 i_7 v_3) j_4 j_5)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__ref__Int :weight 0 )) :named ax_61))
   (assert (! (forall ((|v_30| ref)(|i_59| Field$ref$)(|i_58| ref)(|j_48| Field$Mu$)(|j_47| ref)(|m_31| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ m_31 j_47 j_48) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_31 i_58 i_59 v_30) j_47 j_48)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_31 i_58 i_59 v_30) j_47 j_48)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Mu__ref :weight 0 )) :named ax_62))
   (assert (! (forall ((|v_31| ref)(|i_61| Field$ref$)(|i_60| ref)(|j_50| Field$Seq$Int$$)(|j_49| ref)(|m_32| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_32 j_49 j_50) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_32 i_60 i_61 v_31) j_49 j_50)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_32 i_60 i_61 v_31) j_49 j_50)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$Int$__ref :weight 0 )) :named ax_63))
   (assert (! (forall ((|v_4| $@Map@@PermissionComponent@To@Int@@)(|i_9| Field$Int$)(|i_8| ref)(|j_7| Field$Mu$)(|j_6| ref)(|m_5| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_5 j_6 j_7) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_5 i_8 i_9 v_4) j_6 j_7)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_5 i_8 i_9 v_4) j_6 j_7)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Mu__Int :weight 0 )) :named ax_64))
   (assert (! (forall ((|v_5| $@Map@@PermissionComponent@To@Int@@)(|i_11| Field$Int$)(|i_10| ref)(|j_9| Field$Seq$Int$$)(|j_8| ref)(|m_6| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_6 j_8 j_9) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_6 i_10 i_11 v_5) j_8 j_9)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_6 i_10 i_11 v_5) j_8 j_9)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Seq$Int$__Int :weight 0 )) :named ax_65))
   (assert (! (forall ((|v_7| Int)(|m_8| $@Map@@PermissionComponent@To@Int@@)(|i_13| PermissionComponent)(|j_10| PermissionComponent))(!(=> (not (= j_10 i_13)) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ m_8 j_10) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_8 i_13 v_7) j_10))):pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_8 i_13 v_7) j_10)) :qid map_2_$@Map@@PermissionComponent@To@Int@@ :weight 0 )) :named ax_66))
   (assert (! (forall ((|v_9| $@Map@@PermissionComponent@To@Int@@)(|m_10| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_17| Field$Seq$Int$$)(|j_12| Field$Seq$Int$$)(|i_16| ref)(|j_11| ref))(!(=> (or (not (= j_12 i_17)) (not (= j_11 i_16))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_10 j_11 j_12) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_10 i_16 i_17 v_9) j_11 j_12))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_10 i_16 i_17 v_9) j_11 j_12)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_67))
   (assert (! (forall( (|a_$2_$0| Seq$Int$) (|b_$2_$0| Seq$Int$))(!(=> (Seq@Equal$Int$ |a_$2_$0| |b_$2_$0|) (= |a_$2_$0| |b_$2_$0|))  :pattern ( (Seq@Equal$Int$ |a_$2_$0| |b_$2_$0|)))) :named ax_68))
   (assert (! (forall( (|a_$2_$1| Seq$ref$) (|b_$2_$1| Seq$ref$))(!(=> (Seq@Equal$ref$ |a_$2_$1| |b_$2_$1|) (= |a_$2_$1| |b_$2_$1|))  :pattern ( (Seq@Equal$ref$ |a_$2_$1| |b_$2_$1|)))) :named ax_69))
   (assert (! (forall( (|con_$0_$0| Bool) (|a_$1_$0| Bool) (|b_$1_$0| Bool))(!(=> (not |con_$0_$0|) (= (ite$Bool$ |con_$0_$0| |a_$1_$0| |b_$1_$0|) |b_$1_$0|))  :pattern ( (ite$Bool$ |con_$0_$0| |a_$1_$0| |b_$1_$0|)))) :named ax_70))
   (assert (! (forall( (|con_$0_$1| Bool) (|a_$1_$1| Int) (|b_$1_$1| Int))(!(=> (not |con_$0_$1|) (= (ite$Int$ |con_$0_$1| |a_$1_$1| |b_$1_$1|) |b_$1_$1|))  :pattern ( (ite$Int$ |con_$0_$1| |a_$1_$1| |b_$1_$1|)))) :named ax_71))
   (assert (! (forall( (|con_$0_$10| Bool) (|a_$1_$10| Field$Bool$) (|b_$1_$10| Field$Bool$))(!(=> (not |con_$0_$10|) (= (ite$Field$Bool$$ |con_$0_$10| |a_$1_$10| |b_$1_$10|) |b_$1_$10|))  :pattern ( (ite$Field$Bool$$ |con_$0_$10| |a_$1_$10| |b_$1_$10|)))) :named ax_72))
   (assert (! (forall( (|con_$0_$11| Bool) (|a_$1_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|b_$1_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (not |con_$0_$11|) (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$0_$11| |a_$1_$11| |b_$1_$11|) |b_$1_$11|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$0_$11| |a_$1_$11| |b_$1_$11|)))) :named ax_73))
   (assert (! (forall( (|con_$0_$12| Bool) (|a_$1_$12| $@Map@@ref@To@Int@@) (|b_$1_$12| $@Map@@ref@To@Int@@))(!(=> (not |con_$0_$12|) (= (ite$$@Map@@ref@To@Int@@$ |con_$0_$12| |a_$1_$12| |b_$1_$12|) |b_$1_$12|))  :pattern ( (ite$$@Map@@ref@To@Int@@$ |con_$0_$12| |a_$1_$12| |b_$1_$12|)))) :named ax_74))
   (assert (! (forall( (|con_$0_$13| Bool) (|a_$1_$13| Seq$ref$) (|b_$1_$13| Seq$ref$))(!(=> (not |con_$0_$13|) (= (ite$Seq$ref$$ |con_$0_$13| |a_$1_$13| |b_$1_$13|) |b_$1_$13|))  :pattern ( (ite$Seq$ref$$ |con_$0_$13| |a_$1_$13| |b_$1_$13|)))) :named ax_75))
   (assert (! (forall( (|con_$0_$14| Bool) (|a_$1_$14| Seq$Int$) (|b_$1_$14| Seq$Int$))(!(=> (not |con_$0_$14|) (= (ite$Seq$Int$$ |con_$0_$14| |a_$1_$14| |b_$1_$14|) |b_$1_$14|))  :pattern ( (ite$Seq$Int$$ |con_$0_$14| |a_$1_$14| |b_$1_$14|)))) :named ax_76))
   (assert (! (forall( (|con_$0_$15| Bool) (|a_$1_$15| Field$ref$) (|b_$1_$15| Field$ref$))(!(=> (not |con_$0_$15|) (= (ite$Field$ref$$ |con_$0_$15| |a_$1_$15| |b_$1_$15|) |b_$1_$15|))  :pattern ( (ite$Field$ref$$ |con_$0_$15| |a_$1_$15| |b_$1_$15|)))) :named ax_77))
   (assert (! (forall( (|con_$0_$16| Bool) (|a_$1_$16| Field$Seq$Int$$) (|b_$1_$16| Field$Seq$Int$$))(!(=> (not |con_$0_$16|) (= (ite$Field$Seq$Int$$$ |con_$0_$16| |a_$1_$16| |b_$1_$16|) |b_$1_$16|))  :pattern ( (ite$Field$Seq$Int$$$ |con_$0_$16| |a_$1_$16| |b_$1_$16|)))) :named ax_78))
   (assert (! (forall( (|con_$0_$17| Bool) (|a_$1_$17| TypeName) (|b_$1_$17| TypeName))(!(=> (not |con_$0_$17|) (= (ite$TypeName$ |con_$0_$17| |a_$1_$17| |b_$1_$17|) |b_$1_$17|))  :pattern ( (ite$TypeName$ |con_$0_$17| |a_$1_$17| |b_$1_$17|)))) :named ax_79))
   (assert (! (forall( (|con_$0_$18| Bool) (|a_$1_$18| ModuleName) (|b_$1_$18| ModuleName))(!(=> (not |con_$0_$18|) (= (ite$ModuleName$ |con_$0_$18| |a_$1_$18| |b_$1_$18|) |b_$1_$18|))  :pattern ( (ite$ModuleName$ |con_$0_$18| |a_$1_$18| |b_$1_$18|)))) :named ax_80))
   (assert (! (forall( (|con_$0_$2| Bool) (|a_$1_$2| $@Map@@PermissionComponent@To@Int@@) (|b_$1_$2| $@Map@@PermissionComponent@To@Int@@))(!(=> (not |con_$0_$2|) (= (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$0_$2| |a_$1_$2| |b_$1_$2|) |b_$1_$2|))  :pattern ( (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$0_$2| |a_$1_$2| |b_$1_$2|)))) :named ax_81))
   (assert (! (forall( (|con_$0_$3| Bool) (|a_$1_$3| PermissionComponent) (|b_$1_$3| PermissionComponent))(!(=> (not |con_$0_$3|) (= (ite$PermissionComponent$ |con_$0_$3| |a_$1_$3| |b_$1_$3|) |b_$1_$3|))  :pattern ( (ite$PermissionComponent$ |con_$0_$3| |a_$1_$3| |b_$1_$3|)))) :named ax_82))
   (assert (! (forall( (|con_$0_$4| Bool) (|a_$1_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|b_$1_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(=> (not |con_$0_$4|) (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$0_$4| |a_$1_$4| |b_$1_$4|) |b_$1_$4|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$0_$4| |a_$1_$4| |b_$1_$4|)))) :named ax_83))
   (assert (! (forall( (|con_$0_$5| Bool) (|a_$1_$5| ref) (|b_$1_$5| ref))(!(=> (not |con_$0_$5|) (= (ite$ref$ |con_$0_$5| |a_$1_$5| |b_$1_$5|) |b_$1_$5|))  :pattern ( (ite$ref$ |con_$0_$5| |a_$1_$5| |b_$1_$5|)))) :named ax_84))
   (assert (! (forall( (|con_$0_$6| Bool) (|a_$1_$6| Field$Int$) (|b_$1_$6| Field$Int$))(!(=> (not |con_$0_$6|) (= (ite$Field$Int$$ |con_$0_$6| |a_$1_$6| |b_$1_$6|) |b_$1_$6|))  :pattern ( (ite$Field$Int$$ |con_$0_$6| |a_$1_$6| |b_$1_$6|)))) :named ax_85))
   (assert (! (forall( (|con_$0_$7| Bool) (|a_$1_$7| PartialHeapType) (|b_$1_$7| PartialHeapType))(!(=> (not |con_$0_$7|) (= (ite$PartialHeapType$ |con_$0_$7| |a_$1_$7| |b_$1_$7|) |b_$1_$7|))  :pattern ( (ite$PartialHeapType$ |con_$0_$7| |a_$1_$7| |b_$1_$7|)))) :named ax_86))
   (assert (! (forall( (|con_$0_$8| Bool) (|a_$1_$8| Field$Mu$) (|b_$1_$8| Field$Mu$))(!(=> (not |con_$0_$8|) (= (ite$Field$Mu$$ |con_$0_$8| |a_$1_$8| |b_$1_$8|) |b_$1_$8|))  :pattern ( (ite$Field$Mu$$ |con_$0_$8| |a_$1_$8| |b_$1_$8|)))) :named ax_87))
   (assert (! (forall( (|con_$0_$9| Bool) (|a_$1_$9| Mu) (|b_$1_$9| Mu))(!(=> (not |con_$0_$9|) (= (ite$Mu$ |con_$0_$9| |a_$1_$9| |b_$1_$9|) |b_$1_$9|))  :pattern ( (ite$Mu$ |con_$0_$9| |a_$1_$9| |b_$1_$9|)))) :named ax_88))
   (assert (! (forall( (|con_$1| Bool) (|a_$0_$0| Bool) (|b_$0_$0| Bool))(!(=> |con_$1| (= (ite$Bool$ |con_$1| |a_$0_$0| |b_$0_$0|) |a_$0_$0|))  :pattern ( (ite$Bool$ |con_$1| |a_$0_$0| |b_$0_$0|)))) :named ax_89))
   (assert (! (forall( (|con_$10| Bool) (|a_$0_$9| Mu) (|b_$0_$9| Mu))(!(=> |con_$10| (= (ite$Mu$ |con_$10| |a_$0_$9| |b_$0_$9|) |a_$0_$9|))  :pattern ( (ite$Mu$ |con_$10| |a_$0_$9| |b_$0_$9|)))) :named ax_90))
   (assert (! (forall( (|con_$11| Bool) (|a_$0_$10| Field$Bool$) (|b_$0_$10| Field$Bool$))(!(=> |con_$11| (= (ite$Field$Bool$$ |con_$11| |a_$0_$10| |b_$0_$10|) |a_$0_$10|))  :pattern ( (ite$Field$Bool$$ |con_$11| |a_$0_$10| |b_$0_$10|)))) :named ax_91))
   (assert (! (forall( (|con_$12| Bool) (|a_$0_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|b_$0_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> |con_$12| (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$12| |a_$0_$11| |b_$0_$11|) |a_$0_$11|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$12| |a_$0_$11| |b_$0_$11|)))) :named ax_92))
   (assert (! (forall( (|con_$13| Bool) (|a_$0_$12| $@Map@@ref@To@Int@@) (|b_$0_$12| $@Map@@ref@To@Int@@))(!(=> |con_$13| (= (ite$$@Map@@ref@To@Int@@$ |con_$13| |a_$0_$12| |b_$0_$12|) |a_$0_$12|))  :pattern ( (ite$$@Map@@ref@To@Int@@$ |con_$13| |a_$0_$12| |b_$0_$12|)))) :named ax_93))
   (assert (! (forall( (|con_$14| Bool) (|a_$0_$13| Seq$ref$) (|b_$0_$13| Seq$ref$))(!(=> |con_$14| (= (ite$Seq$ref$$ |con_$14| |a_$0_$13| |b_$0_$13|) |a_$0_$13|))  :pattern ( (ite$Seq$ref$$ |con_$14| |a_$0_$13| |b_$0_$13|)))) :named ax_94))
   (assert (! (forall( (|con_$15| Bool) (|a_$0_$14| Seq$Int$) (|b_$0_$14| Seq$Int$))(!(=> |con_$15| (= (ite$Seq$Int$$ |con_$15| |a_$0_$14| |b_$0_$14|) |a_$0_$14|))  :pattern ( (ite$Seq$Int$$ |con_$15| |a_$0_$14| |b_$0_$14|)))) :named ax_95))
   (assert (! (forall( (|con_$16| Bool) (|a_$0_$15| Field$ref$) (|b_$0_$15| Field$ref$))(!(=> |con_$16| (= (ite$Field$ref$$ |con_$16| |a_$0_$15| |b_$0_$15|) |a_$0_$15|))  :pattern ( (ite$Field$ref$$ |con_$16| |a_$0_$15| |b_$0_$15|)))) :named ax_96))
   (assert (! (forall( (|con_$17| Bool) (|a_$0_$16| Field$Seq$Int$$) (|b_$0_$16| Field$Seq$Int$$))(!(=> |con_$17| (= (ite$Field$Seq$Int$$$ |con_$17| |a_$0_$16| |b_$0_$16|) |a_$0_$16|))  :pattern ( (ite$Field$Seq$Int$$$ |con_$17| |a_$0_$16| |b_$0_$16|)))) :named ax_97))
   (assert (! (forall( (|con_$18| Bool) (|a_$0_$17| TypeName) (|b_$0_$17| TypeName))(!(=> |con_$18| (= (ite$TypeName$ |con_$18| |a_$0_$17| |b_$0_$17|) |a_$0_$17|))  :pattern ( (ite$TypeName$ |con_$18| |a_$0_$17| |b_$0_$17|)))) :named ax_98))
   (assert (! (forall( (|con_$19| Bool) (|a_$0_$18| ModuleName) (|b_$0_$18| ModuleName))(!(=> |con_$19| (= (ite$ModuleName$ |con_$19| |a_$0_$18| |b_$0_$18|) |a_$0_$18|))  :pattern ( (ite$ModuleName$ |con_$19| |a_$0_$18| |b_$0_$18|)))) :named ax_99))
   (assert (! (forall( (|con_$2| Bool) (|a_$0_$1| Int) (|b_$0_$1| Int))(!(=> |con_$2| (= (ite$Int$ |con_$2| |a_$0_$1| |b_$0_$1|) |a_$0_$1|))  :pattern ( (ite$Int$ |con_$2| |a_$0_$1| |b_$0_$1|)))) :named ax_100))
   (assert (! (forall( (|con_$3| Bool) (|a_$0_$2| $@Map@@PermissionComponent@To@Int@@) (|b_$0_$2| $@Map@@PermissionComponent@To@Int@@))(!(=> |con_$3| (= (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$3| |a_$0_$2| |b_$0_$2|) |a_$0_$2|))  :pattern ( (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$3| |a_$0_$2| |b_$0_$2|)))) :named ax_101))
   (assert (! (forall( (|con_$4| Bool) (|a_$0_$3| PermissionComponent) (|b_$0_$3| PermissionComponent))(!(=> |con_$4| (= (ite$PermissionComponent$ |con_$4| |a_$0_$3| |b_$0_$3|) |a_$0_$3|))  :pattern ( (ite$PermissionComponent$ |con_$4| |a_$0_$3| |b_$0_$3|)))) :named ax_102))
   (assert (! (forall( (|con_$5| Bool) (|a_$0_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|b_$0_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(=> |con_$5| (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$5| |a_$0_$4| |b_$0_$4|) |a_$0_$4|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$5| |a_$0_$4| |b_$0_$4|)))) :named ax_103))
   (assert (! (forall( (|con_$6| Bool) (|a_$0_$5| ref) (|b_$0_$5| ref))(!(=> |con_$6| (= (ite$ref$ |con_$6| |a_$0_$5| |b_$0_$5|) |a_$0_$5|))  :pattern ( (ite$ref$ |con_$6| |a_$0_$5| |b_$0_$5|)))) :named ax_104))
   (assert (! (forall( (|con_$7| Bool) (|a_$0_$6| Field$Int$) (|b_$0_$6| Field$Int$))(!(=> |con_$7| (= (ite$Field$Int$$ |con_$7| |a_$0_$6| |b_$0_$6|) |a_$0_$6|))  :pattern ( (ite$Field$Int$$ |con_$7| |a_$0_$6| |b_$0_$6|)))) :named ax_105))
   (assert (! (forall( (|con_$8| Bool) (|a_$0_$7| PartialHeapType) (|b_$0_$7| PartialHeapType))(!(=> |con_$8| (= (ite$PartialHeapType$ |con_$8| |a_$0_$7| |b_$0_$7|) |a_$0_$7|))  :pattern ( (ite$PartialHeapType$ |con_$8| |a_$0_$7| |b_$0_$7|)))) :named ax_106))
   (assert (! (forall( (|con_$9| Bool) (|a_$0_$8| Field$Mu$) (|b_$0_$8| Field$Mu$))(!(=> |con_$9| (= (ite$Field$Mu$$ |con_$9| |a_$0_$8| |b_$0_$8|) |a_$0_$8|))  :pattern ( (ite$Field$Mu$$ |con_$9| |a_$0_$8| |b_$0_$8|)))) :named ax_107))
   (assert (! (forall( (|eh| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|h_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|m_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (IsGoodExhaleState |eh| |h_$0| |m_$3| |sm_$0|) (and (and (and (and (and (and (and (and (and (and (and (forall( (|o_$6_$0| ref) (|f_$1_$0| Field$Bool$))(!(=> (CanRead$Bool$ |m_$3| |sm_$0| |o_$6_$0| |f_$1_$0|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |eh| |o_$6_$0| |f_$1_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$0| |o_$6_$0| |f_$1_$0|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |eh| |o_$6_$0| |f_$1_$0|)))) (forall( (|o_$6_$1| ref) (|f_$1_$1| Field$Int$))(!(=> (CanRead$Int$ |m_$3| |sm_$0| |o_$6_$1| |f_$1_$1|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$6_$1| |f_$1_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$6_$1| |f_$1_$1|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$6_$1| |f_$1_$1|))))) (forall( (|o_$6_$2| ref) (|f_$1_$2| Field$ref$))(!(=> (CanRead$ref$ |m_$3| |sm_$0| |o_$6_$2| |f_$1_$2|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |eh| |o_$6_$2| |f_$1_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |h_$0| |o_$6_$2| |f_$1_$2|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |eh| |o_$6_$2| |f_$1_$2|))))) (forall( (|o_$6_$3| ref) (|f_$1_$3| Field$Mu$))(!(=> (CanRead$Mu$ |m_$3| |sm_$0| |o_$6_$3| |f_$1_$3|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |eh| |o_$6_$3| |f_$1_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$0| |o_$6_$3| |f_$1_$3|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |eh| |o_$6_$3| |f_$1_$3|))))) (forall( (|o_$6_$4| ref) (|f_$1_$4| Field$Seq$Int$$))(!(=> (CanRead$Seq$Int$$ |m_$3| |sm_$0| |o_$6_$4| |f_$1_$4|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ |eh| |o_$6_$4| |f_$1_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ |h_$0| |o_$6_$4| |f_$1_$4|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ |eh| |o_$6_$4| |f_$1_$4|))))) (forall( (|o_$7| ref))(!(= (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$7| held)) (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$7| held)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$7| held))))) (forall( (|o_$8| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |eh| |o_$8| rdheld) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$0| |o_$8| rdheld))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |eh| |o_$8| rdheld))))) (forall( (|o_$9| ref))(!(=> (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$9| held)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |eh| |o_$9| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$0| |o_$9| mu)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$9| held))))) (forall( (|o_$10| ref))(!(=> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$0| |o_$10| rdheld) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |eh| |o_$10| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$0| |o_$10| mu)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$0| |o_$10| rdheld))))) (forall( (|o_$11| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$11| forkK) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$11| forkK))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$11| forkK)) :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$11| forkK))))) (forall( (|o_$12| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$12| held) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$12| held))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$12| held)) :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$12| held))))) (forall( (|o_$13| ref) (|f_$2| Field$Int$))(!(=> (PredicateField$Int$ |f_$2|) (<= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$13| |f_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$13| |f_$2|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$13| |f_$2|) (PredicateField$Int$ |f_$2|))))))  :pattern ( (IsGoodExhaleState |eh| |h_$0| |m_$3| |sm_$0|)))) :named ax_108))
   (assert (! (forall( (|f_$13_$0| Field$Bool$))(=> (NonPredicateField$Bool$ |f_$13_$0|) (not (PredicateField$Bool$ |f_$13_$0|)))) :named ax_109))
   (assert (! (forall( (|f_$13_$1| Field$Int$))(=> (NonPredicateField$Int$ |f_$13_$1|) (not (PredicateField$Int$ |f_$13_$1|)))) :named ax_110))
   (assert (! (forall( (|f_$13_$2| Field$ref$))(=> (NonPredicateField$ref$ |f_$13_$2|) (not (PredicateField$ref$ |f_$13_$2|)))) :named ax_111))
   (assert (! (forall( (|f_$13_$3| Field$Mu$))(=> (NonPredicateField$Mu$ |f_$13_$3|) (not (PredicateField$Mu$ |f_$13_$3|)))) :named ax_112))
   (assert (! (forall( (|f_$13_$4| Field$Seq$Int$$))(=> (NonPredicateField$Seq$Int$$ |f_$13_$4|) (not (PredicateField$Seq$Int$$ |f_$13_$4|)))) :named ax_113))
   (assert (! (forall( (|f_$14_$0| Field$Bool$))(=> (PredicateField$Bool$ |f_$14_$0|) (not (NonPredicateField$Bool$ |f_$14_$0|)))) :named ax_114))
   (assert (! (forall( (|f_$14_$1| Field$Int$))(=> (PredicateField$Int$ |f_$14_$1|) (not (NonPredicateField$Int$ |f_$14_$1|)))) :named ax_115))
   (assert (! (forall( (|f_$14_$2| Field$ref$))(=> (PredicateField$ref$ |f_$14_$2|) (not (NonPredicateField$ref$ |f_$14_$2|)))) :named ax_116))
   (assert (! (forall( (|f_$14_$3| Field$Mu$))(=> (PredicateField$Mu$ |f_$14_$3|) (not (NonPredicateField$Mu$ |f_$14_$3|)))) :named ax_117))
   (assert (! (forall( (|f_$14_$4| Field$Seq$Int$$))(=> (PredicateField$Seq$Int$$ |f_$14_$4|) (not (NonPredicateField$Seq$Int$$ |f_$14_$4|)))) :named ax_118))
   (assert (! (forall( (|h_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|m_$8| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$15| ref) (|q| ref))(!(=> (and (and (and (wf |h_$1| |m_$8| |sm_$2|) (not (= |o_$15| |q|))) (or (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$1| |o_$15| held)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$1| |o_$15| rdheld))) (or (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$1| |q| held)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$1| |q| rdheld))) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$1| |o_$15| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$1| |q| mu))))  :pattern ( (wf |h_$1| |m_$8| |sm_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$1| |o_$15| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$1| |q| mu)))) :named ax_119))
   (assert (! (forall( (|m_$0| Mu) (|n_$1| Mu) (|o_$0| Mu))(!(=> (and (MuBelow |m_$0| |n_$1|) (MuBelow |n_$1| |o_$0|)) (MuBelow |m_$0| |o_$0|))  :pattern ( (MuBelow |m_$0| |n_$1|) (MuBelow |n_$1| |o_$0|)))) :named ax_120))
   (assert (! (forall( (|m_$1| Mu) (|n_$2| Mu))(=> (MuBelow |m_$1| |n_$2|) (not (= |n_$2| $LockBottom)))) :named ax_121))
   (assert (! (forall( (|m_$11_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$0| ref) (|f_$9_$0| Field$Bool$) (|howMuch_$1_$0| Int) (|q_$2_$0| ref) (|g_$1_$0| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Bool$ |m_$11_$0| |o_$18_$0| |f_$9_$0| |howMuch_$1_$0|) |q_$2_$0| |g_$1_$0|) perm$R) (ite$Int$ (and (= |o_$18_$0| |q_$2_$0|) (= |f_$9_$0| |g_$1_$0|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$0| |q_$2_$0| |g_$1_$0|) perm$R) |howMuch_$1_$0|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$0| |q_$2_$0| |g_$1_$0|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Bool$ |m_$11_$0| |o_$18_$0| |f_$9_$0| |howMuch_$1_$0|) |q_$2_$0| |g_$1_$0|) perm$R)))) :named ax_122))
   (assert (! (forall( (|m_$11_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$1| ref) (|f_$9_$1| Field$Int$) (|howMuch_$1_$1| Int) (|q_$2_$1| ref) (|g_$1_$1| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Int$ |m_$11_$1| |o_$18_$1| |f_$9_$1| |howMuch_$1_$1|) |q_$2_$1| |g_$1_$1|) perm$R) (ite$Int$ (and (= |o_$18_$1| |q_$2_$1|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$1| |q_$2_$1| |g_$1_$1|) perm$R) |howMuch_$1_$1|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$1| |q_$2_$1| |g_$1_$1|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Int$ |m_$11_$1| |o_$18_$1| |f_$9_$1| |howMuch_$1_$1|) |q_$2_$1| |g_$1_$1|) perm$R)))) :named ax_123))
   (assert (! (forall( (|m_$11_$10| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$10| ref) (|f_$9_$10| Field$Bool$) (|howMuch_$1_$10| Int) (|q_$2_$10| ref) (|g_$1_$10| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Bool$ |m_$11_$10| |o_$18_$10| |f_$9_$10| |howMuch_$1_$10|) |q_$2_$10| |g_$1_$10|) perm$R) (ite$Int$ (and (= |o_$18_$10| |q_$2_$10|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$10| |q_$2_$10| |g_$1_$10|) perm$R) |howMuch_$1_$10|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$10| |q_$2_$10| |g_$1_$10|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Bool$ |m_$11_$10| |o_$18_$10| |f_$9_$10| |howMuch_$1_$10|) |q_$2_$10| |g_$1_$10|) perm$R)))) :named ax_124))
   (assert (! (forall( (|m_$11_$11| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$11| ref) (|f_$9_$11| Field$Int$) (|howMuch_$1_$11| Int) (|q_$2_$11| ref) (|g_$1_$11| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Int$ |m_$11_$11| |o_$18_$11| |f_$9_$11| |howMuch_$1_$11|) |q_$2_$11| |g_$1_$11|) perm$R) (ite$Int$ (and (= |o_$18_$11| |q_$2_$11|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$11| |q_$2_$11| |g_$1_$11|) perm$R) |howMuch_$1_$11|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$11| |q_$2_$11| |g_$1_$11|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Int$ |m_$11_$11| |o_$18_$11| |f_$9_$11| |howMuch_$1_$11|) |q_$2_$11| |g_$1_$11|) perm$R)))) :named ax_125))
   (assert (! (forall( (|m_$11_$12| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$12| ref) (|f_$9_$12| Field$ref$) (|howMuch_$1_$12| Int) (|q_$2_$12| ref) (|g_$1_$12| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$ref$ |m_$11_$12| |o_$18_$12| |f_$9_$12| |howMuch_$1_$12|) |q_$2_$12| |g_$1_$12|) perm$R) (ite$Int$ (and (= |o_$18_$12| |q_$2_$12|) (= |f_$9_$12| |g_$1_$12|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$12| |q_$2_$12| |g_$1_$12|) perm$R) |howMuch_$1_$12|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$12| |q_$2_$12| |g_$1_$12|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$ref$ |m_$11_$12| |o_$18_$12| |f_$9_$12| |howMuch_$1_$12|) |q_$2_$12| |g_$1_$12|) perm$R)))) :named ax_126))
   (assert (! (forall( (|m_$11_$13| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$13| ref) (|f_$9_$13| Field$Mu$) (|howMuch_$1_$13| Int) (|q_$2_$13| ref) (|g_$1_$13| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Mu$ |m_$11_$13| |o_$18_$13| |f_$9_$13| |howMuch_$1_$13|) |q_$2_$13| |g_$1_$13|) perm$R) (ite$Int$ (and (= |o_$18_$13| |q_$2_$13|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$13| |q_$2_$13| |g_$1_$13|) perm$R) |howMuch_$1_$13|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$13| |q_$2_$13| |g_$1_$13|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Mu$ |m_$11_$13| |o_$18_$13| |f_$9_$13| |howMuch_$1_$13|) |q_$2_$13| |g_$1_$13|) perm$R)))) :named ax_127))
   (assert (! (forall( (|m_$11_$14| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$14| ref) (|f_$9_$14| Field$Seq$Int$$) (|howMuch_$1_$14| Int) (|q_$2_$14| ref) (|g_$1_$14| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Seq$Int$$ |m_$11_$14| |o_$18_$14| |f_$9_$14| |howMuch_$1_$14|) |q_$2_$14| |g_$1_$14|) perm$R) (ite$Int$ (and (= |o_$18_$14| |q_$2_$14|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$14| |q_$2_$14| |g_$1_$14|) perm$R) |howMuch_$1_$14|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$14| |q_$2_$14| |g_$1_$14|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Seq$Int$$ |m_$11_$14| |o_$18_$14| |f_$9_$14| |howMuch_$1_$14|) |q_$2_$14| |g_$1_$14|) perm$R)))) :named ax_128))
   (assert (! (forall( (|m_$11_$15| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$15| ref) (|f_$9_$15| Field$Bool$) (|howMuch_$1_$15| Int) (|q_$2_$15| ref) (|g_$1_$15| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Bool$ |m_$11_$15| |o_$18_$15| |f_$9_$15| |howMuch_$1_$15|) |q_$2_$15| |g_$1_$15|) perm$R) (ite$Int$ (and (= |o_$18_$15| |q_$2_$15|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$15| |q_$2_$15| |g_$1_$15|) perm$R) |howMuch_$1_$15|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$15| |q_$2_$15| |g_$1_$15|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Bool$ |m_$11_$15| |o_$18_$15| |f_$9_$15| |howMuch_$1_$15|) |q_$2_$15| |g_$1_$15|) perm$R)))) :named ax_129))
   (assert (! (forall( (|m_$11_$16| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$16| ref) (|f_$9_$16| Field$Int$) (|howMuch_$1_$16| Int) (|q_$2_$16| ref) (|g_$1_$16| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Int$ |m_$11_$16| |o_$18_$16| |f_$9_$16| |howMuch_$1_$16|) |q_$2_$16| |g_$1_$16|) perm$R) (ite$Int$ (and (= |o_$18_$16| |q_$2_$16|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$16| |q_$2_$16| |g_$1_$16|) perm$R) |howMuch_$1_$16|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$16| |q_$2_$16| |g_$1_$16|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Int$ |m_$11_$16| |o_$18_$16| |f_$9_$16| |howMuch_$1_$16|) |q_$2_$16| |g_$1_$16|) perm$R)))) :named ax_130))
   (assert (! (forall( (|m_$11_$17| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$17| ref) (|f_$9_$17| Field$ref$) (|howMuch_$1_$17| Int) (|q_$2_$17| ref) (|g_$1_$17| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$ref$ |m_$11_$17| |o_$18_$17| |f_$9_$17| |howMuch_$1_$17|) |q_$2_$17| |g_$1_$17|) perm$R) (ite$Int$ (and (= |o_$18_$17| |q_$2_$17|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$17| |q_$2_$17| |g_$1_$17|) perm$R) |howMuch_$1_$17|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$17| |q_$2_$17| |g_$1_$17|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$ref$ |m_$11_$17| |o_$18_$17| |f_$9_$17| |howMuch_$1_$17|) |q_$2_$17| |g_$1_$17|) perm$R)))) :named ax_131))
   (assert (! (forall( (|m_$11_$18| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$18| ref) (|f_$9_$18| Field$Mu$) (|howMuch_$1_$18| Int) (|q_$2_$18| ref) (|g_$1_$18| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Mu$ |m_$11_$18| |o_$18_$18| |f_$9_$18| |howMuch_$1_$18|) |q_$2_$18| |g_$1_$18|) perm$R) (ite$Int$ (and (= |o_$18_$18| |q_$2_$18|) (= |f_$9_$18| |g_$1_$18|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$18| |q_$2_$18| |g_$1_$18|) perm$R) |howMuch_$1_$18|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$18| |q_$2_$18| |g_$1_$18|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Mu$ |m_$11_$18| |o_$18_$18| |f_$9_$18| |howMuch_$1_$18|) |q_$2_$18| |g_$1_$18|) perm$R)))) :named ax_132))
   (assert (! (forall( (|m_$11_$19| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$19| ref) (|f_$9_$19| Field$Seq$Int$$) (|howMuch_$1_$19| Int) (|q_$2_$19| ref) (|g_$1_$19| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Seq$Int$$ |m_$11_$19| |o_$18_$19| |f_$9_$19| |howMuch_$1_$19|) |q_$2_$19| |g_$1_$19|) perm$R) (ite$Int$ (and (= |o_$18_$19| |q_$2_$19|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$19| |q_$2_$19| |g_$1_$19|) perm$R) |howMuch_$1_$19|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$19| |q_$2_$19| |g_$1_$19|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Seq$Int$$ |m_$11_$19| |o_$18_$19| |f_$9_$19| |howMuch_$1_$19|) |q_$2_$19| |g_$1_$19|) perm$R)))) :named ax_133))
   (assert (! (forall( (|m_$11_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$2| ref) (|f_$9_$2| Field$ref$) (|howMuch_$1_$2| Int) (|q_$2_$2| ref) (|g_$1_$2| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$ref$ |m_$11_$2| |o_$18_$2| |f_$9_$2| |howMuch_$1_$2|) |q_$2_$2| |g_$1_$2|) perm$R) (ite$Int$ (and (= |o_$18_$2| |q_$2_$2|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$2| |q_$2_$2| |g_$1_$2|) perm$R) |howMuch_$1_$2|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$2| |q_$2_$2| |g_$1_$2|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$ref$ |m_$11_$2| |o_$18_$2| |f_$9_$2| |howMuch_$1_$2|) |q_$2_$2| |g_$1_$2|) perm$R)))) :named ax_134))
   (assert (! (forall( (|m_$11_$20| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$20| ref) (|f_$9_$20| Field$Bool$) (|howMuch_$1_$20| Int) (|q_$2_$20| ref) (|g_$1_$20| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Bool$ |m_$11_$20| |o_$18_$20| |f_$9_$20| |howMuch_$1_$20|) |q_$2_$20| |g_$1_$20|) perm$R) (ite$Int$ (and (= |o_$18_$20| |q_$2_$20|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$20| |q_$2_$20| |g_$1_$20|) perm$R) |howMuch_$1_$20|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$20| |q_$2_$20| |g_$1_$20|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Bool$ |m_$11_$20| |o_$18_$20| |f_$9_$20| |howMuch_$1_$20|) |q_$2_$20| |g_$1_$20|) perm$R)))) :named ax_135))
   (assert (! (forall( (|m_$11_$21| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$21| ref) (|f_$9_$21| Field$Int$) (|howMuch_$1_$21| Int) (|q_$2_$21| ref) (|g_$1_$21| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Int$ |m_$11_$21| |o_$18_$21| |f_$9_$21| |howMuch_$1_$21|) |q_$2_$21| |g_$1_$21|) perm$R) (ite$Int$ (and (= |o_$18_$21| |q_$2_$21|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$21| |q_$2_$21| |g_$1_$21|) perm$R) |howMuch_$1_$21|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$21| |q_$2_$21| |g_$1_$21|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Int$ |m_$11_$21| |o_$18_$21| |f_$9_$21| |howMuch_$1_$21|) |q_$2_$21| |g_$1_$21|) perm$R)))) :named ax_136))
   (assert (! (forall( (|m_$11_$22| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$22| ref) (|f_$9_$22| Field$ref$) (|howMuch_$1_$22| Int) (|q_$2_$22| ref) (|g_$1_$22| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$ref$ |m_$11_$22| |o_$18_$22| |f_$9_$22| |howMuch_$1_$22|) |q_$2_$22| |g_$1_$22|) perm$R) (ite$Int$ (and (= |o_$18_$22| |q_$2_$22|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$22| |q_$2_$22| |g_$1_$22|) perm$R) |howMuch_$1_$22|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$22| |q_$2_$22| |g_$1_$22|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$ref$ |m_$11_$22| |o_$18_$22| |f_$9_$22| |howMuch_$1_$22|) |q_$2_$22| |g_$1_$22|) perm$R)))) :named ax_137))
   (assert (! (forall( (|m_$11_$23| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$23| ref) (|f_$9_$23| Field$Mu$) (|howMuch_$1_$23| Int) (|q_$2_$23| ref) (|g_$1_$23| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Mu$ |m_$11_$23| |o_$18_$23| |f_$9_$23| |howMuch_$1_$23|) |q_$2_$23| |g_$1_$23|) perm$R) (ite$Int$ (and (= |o_$18_$23| |q_$2_$23|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$23| |q_$2_$23| |g_$1_$23|) perm$R) |howMuch_$1_$23|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$23| |q_$2_$23| |g_$1_$23|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Mu$ |m_$11_$23| |o_$18_$23| |f_$9_$23| |howMuch_$1_$23|) |q_$2_$23| |g_$1_$23|) perm$R)))) :named ax_138))
   (assert (! (forall( (|m_$11_$24| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$24| ref) (|f_$9_$24| Field$Seq$Int$$) (|howMuch_$1_$24| Int) (|q_$2_$24| ref) (|g_$1_$24| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Seq$Int$$ |m_$11_$24| |o_$18_$24| |f_$9_$24| |howMuch_$1_$24|) |q_$2_$24| |g_$1_$24|) perm$R) (ite$Int$ (and (= |o_$18_$24| |q_$2_$24|) (= |f_$9_$24| |g_$1_$24|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$24| |q_$2_$24| |g_$1_$24|) perm$R) |howMuch_$1_$24|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$24| |q_$2_$24| |g_$1_$24|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Seq$Int$$ |m_$11_$24| |o_$18_$24| |f_$9_$24| |howMuch_$1_$24|) |q_$2_$24| |g_$1_$24|) perm$R)))) :named ax_139))
   (assert (! (forall( (|m_$11_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$3| ref) (|f_$9_$3| Field$Mu$) (|howMuch_$1_$3| Int) (|q_$2_$3| ref) (|g_$1_$3| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Mu$ |m_$11_$3| |o_$18_$3| |f_$9_$3| |howMuch_$1_$3|) |q_$2_$3| |g_$1_$3|) perm$R) (ite$Int$ (and (= |o_$18_$3| |q_$2_$3|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$3| |q_$2_$3| |g_$1_$3|) perm$R) |howMuch_$1_$3|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$3| |q_$2_$3| |g_$1_$3|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Mu$ |m_$11_$3| |o_$18_$3| |f_$9_$3| |howMuch_$1_$3|) |q_$2_$3| |g_$1_$3|) perm$R)))) :named ax_140))
   (assert (! (forall( (|m_$11_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$4| ref) (|f_$9_$4| Field$Seq$Int$$) (|howMuch_$1_$4| Int) (|q_$2_$4| ref) (|g_$1_$4| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Seq$Int$$ |m_$11_$4| |o_$18_$4| |f_$9_$4| |howMuch_$1_$4|) |q_$2_$4| |g_$1_$4|) perm$R) (ite$Int$ (and (= |o_$18_$4| |q_$2_$4|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$4| |q_$2_$4| |g_$1_$4|) perm$R) |howMuch_$1_$4|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$4| |q_$2_$4| |g_$1_$4|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Seq$Int$$ |m_$11_$4| |o_$18_$4| |f_$9_$4| |howMuch_$1_$4|) |q_$2_$4| |g_$1_$4|) perm$R)))) :named ax_141))
   (assert (! (forall( (|m_$11_$5| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$5| ref) (|f_$9_$5| Field$Bool$) (|howMuch_$1_$5| Int) (|q_$2_$5| ref) (|g_$1_$5| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Bool$ |m_$11_$5| |o_$18_$5| |f_$9_$5| |howMuch_$1_$5|) |q_$2_$5| |g_$1_$5|) perm$R) (ite$Int$ (and (= |o_$18_$5| |q_$2_$5|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$5| |q_$2_$5| |g_$1_$5|) perm$R) |howMuch_$1_$5|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$5| |q_$2_$5| |g_$1_$5|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Bool$ |m_$11_$5| |o_$18_$5| |f_$9_$5| |howMuch_$1_$5|) |q_$2_$5| |g_$1_$5|) perm$R)))) :named ax_142))
   (assert (! (forall( (|m_$11_$6| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$6| ref) (|f_$9_$6| Field$Int$) (|howMuch_$1_$6| Int) (|q_$2_$6| ref) (|g_$1_$6| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Int$ |m_$11_$6| |o_$18_$6| |f_$9_$6| |howMuch_$1_$6|) |q_$2_$6| |g_$1_$6|) perm$R) (ite$Int$ (and (= |o_$18_$6| |q_$2_$6|) (= |f_$9_$6| |g_$1_$6|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$6| |q_$2_$6| |g_$1_$6|) perm$R) |howMuch_$1_$6|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$6| |q_$2_$6| |g_$1_$6|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Int$ |m_$11_$6| |o_$18_$6| |f_$9_$6| |howMuch_$1_$6|) |q_$2_$6| |g_$1_$6|) perm$R)))) :named ax_143))
   (assert (! (forall( (|m_$11_$7| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$7| ref) (|f_$9_$7| Field$ref$) (|howMuch_$1_$7| Int) (|q_$2_$7| ref) (|g_$1_$7| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$ref$ |m_$11_$7| |o_$18_$7| |f_$9_$7| |howMuch_$1_$7|) |q_$2_$7| |g_$1_$7|) perm$R) (ite$Int$ (and (= |o_$18_$7| |q_$2_$7|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$7| |q_$2_$7| |g_$1_$7|) perm$R) |howMuch_$1_$7|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$7| |q_$2_$7| |g_$1_$7|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$ref$ |m_$11_$7| |o_$18_$7| |f_$9_$7| |howMuch_$1_$7|) |q_$2_$7| |g_$1_$7|) perm$R)))) :named ax_144))
   (assert (! (forall( (|m_$11_$8| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$8| ref) (|f_$9_$8| Field$Mu$) (|howMuch_$1_$8| Int) (|q_$2_$8| ref) (|g_$1_$8| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Mu$ |m_$11_$8| |o_$18_$8| |f_$9_$8| |howMuch_$1_$8|) |q_$2_$8| |g_$1_$8|) perm$R) (ite$Int$ (and (= |o_$18_$8| |q_$2_$8|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$8| |q_$2_$8| |g_$1_$8|) perm$R) |howMuch_$1_$8|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$8| |q_$2_$8| |g_$1_$8|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Mu$ |m_$11_$8| |o_$18_$8| |f_$9_$8| |howMuch_$1_$8|) |q_$2_$8| |g_$1_$8|) perm$R)))) :named ax_145))
   (assert (! (forall( (|m_$11_$9| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$9| ref) (|f_$9_$9| Field$Seq$Int$$) (|howMuch_$1_$9| Int) (|q_$2_$9| ref) (|g_$1_$9| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Seq$Int$$ |m_$11_$9| |o_$18_$9| |f_$9_$9| |howMuch_$1_$9|) |q_$2_$9| |g_$1_$9|) perm$R) (ite$Int$ (and (= |o_$18_$9| |q_$2_$9|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$9| |q_$2_$9| |g_$1_$9|) perm$R) |howMuch_$1_$9|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$9| |q_$2_$9| |g_$1_$9|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Seq$Int$$ |m_$11_$9| |o_$18_$9| |f_$9_$9| |howMuch_$1_$9|) |q_$2_$9| |g_$1_$9|) perm$R)))) :named ax_146))
   (assert (! (forall( (|m_$4_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$2| ref) (|f_$3_$0| Field$Bool$))(!(= (CanRead$Bool$ |m_$4_$0| |sm_$1_$0| |obj_$2| |f_$3_$0|) (or (or (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$4_$0| |obj_$2| |f_$3_$0|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$4_$0| |obj_$2| |f_$3_$0|) perm$N))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |sm_$1_$0| |obj_$2| |f_$3_$0|) perm$R))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |sm_$1_$0| |obj_$2| |f_$3_$0|) perm$N))))  :pattern ( (CanRead$Bool$ |m_$4_$0| |sm_$1_$0| |obj_$2| |f_$3_$0|)))) :named ax_147))
   (assert (! (forall( (|m_$4_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$3| ref) (|f_$3_$1| Field$Int$))(!(= (CanRead$Int$ |m_$4_$1| |sm_$1_$1| |obj_$3| |f_$3_$1|) (or (or (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$4_$1| |obj_$3| |f_$3_$1|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$4_$1| |obj_$3| |f_$3_$1|) perm$N))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |sm_$1_$1| |obj_$3| |f_$3_$1|) perm$R))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |sm_$1_$1| |obj_$3| |f_$3_$1|) perm$N))))  :pattern ( (CanRead$Int$ |m_$4_$1| |sm_$1_$1| |obj_$3| |f_$3_$1|)))) :named ax_148))
   (assert (! (forall( (|m_$4_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$4| ref) (|f_$3_$2| Field$ref$))(!(= (CanRead$ref$ |m_$4_$2| |sm_$1_$2| |obj_$4| |f_$3_$2|) (or (or (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$4_$2| |obj_$4| |f_$3_$2|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$4_$2| |obj_$4| |f_$3_$2|) perm$N))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |sm_$1_$2| |obj_$4| |f_$3_$2|) perm$R))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |sm_$1_$2| |obj_$4| |f_$3_$2|) perm$N))))  :pattern ( (CanRead$ref$ |m_$4_$2| |sm_$1_$2| |obj_$4| |f_$3_$2|)))) :named ax_149))
   (assert (! (forall( (|m_$4_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$5| ref) (|f_$3_$3| Field$Mu$))(!(= (CanRead$Mu$ |m_$4_$3| |sm_$1_$3| |obj_$5| |f_$3_$3|) (or (or (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$4_$3| |obj_$5| |f_$3_$3|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$4_$3| |obj_$5| |f_$3_$3|) perm$N))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |sm_$1_$3| |obj_$5| |f_$3_$3|) perm$R))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |sm_$1_$3| |obj_$5| |f_$3_$3|) perm$N))))  :pattern ( (CanRead$Mu$ |m_$4_$3| |sm_$1_$3| |obj_$5| |f_$3_$3|)))) :named ax_150))
   (assert (! (forall( (|m_$4_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$6| ref) (|f_$3_$4| Field$Seq$Int$$))(!(= (CanRead$Seq$Int$$ |m_$4_$4| |sm_$1_$4| |obj_$6| |f_$3_$4|) (or (or (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$4_$4| |obj_$6| |f_$3_$4|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$4_$4| |obj_$6| |f_$3_$4|) perm$N))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |sm_$1_$4| |obj_$6| |f_$3_$4|) perm$R))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |sm_$1_$4| |obj_$6| |f_$3_$4|) perm$N))))  :pattern ( (CanRead$Seq$Int$$ |m_$4_$4| |sm_$1_$4| |obj_$6| |f_$3_$4|)))) :named ax_151))
   (assert (! (forall( (|m_$6_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$1_$0| ref) (|f_$5_$0| Field$Bool$))(!(= (CanWrite$Bool$ |m_$6_$0| |obj_$1_$0| |f_$5_$0|) (and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$6_$0| |obj_$1_$0| |f_$5_$0|) perm$R) Permission$FullFraction) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$6_$0| |obj_$1_$0| |f_$5_$0|) perm$N) 0)))  :pattern ( (CanWrite$Bool$ |m_$6_$0| |obj_$1_$0| |f_$5_$0|)))) :named ax_152))
   (assert (! (forall( (|m_$6_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$1_$1| ref) (|f_$5_$1| Field$Int$))(!(= (CanWrite$Int$ |m_$6_$1| |obj_$1_$1| |f_$5_$1|) (and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$6_$1| |obj_$1_$1| |f_$5_$1|) perm$R) Permission$FullFraction) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$6_$1| |obj_$1_$1| |f_$5_$1|) perm$N) 0)))  :pattern ( (CanWrite$Int$ |m_$6_$1| |obj_$1_$1| |f_$5_$1|)))) :named ax_153))
   (assert (! (forall( (|m_$6_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$1_$2| ref) (|f_$5_$2| Field$ref$))(!(= (CanWrite$ref$ |m_$6_$2| |obj_$1_$2| |f_$5_$2|) (and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$6_$2| |obj_$1_$2| |f_$5_$2|) perm$R) Permission$FullFraction) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$6_$2| |obj_$1_$2| |f_$5_$2|) perm$N) 0)))  :pattern ( (CanWrite$ref$ |m_$6_$2| |obj_$1_$2| |f_$5_$2|)))) :named ax_154))
   (assert (! (forall( (|m_$6_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$1_$3| ref) (|f_$5_$3| Field$Mu$))(!(= (CanWrite$Mu$ |m_$6_$3| |obj_$1_$3| |f_$5_$3|) (and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$6_$3| |obj_$1_$3| |f_$5_$3|) perm$R) Permission$FullFraction) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$6_$3| |obj_$1_$3| |f_$5_$3|) perm$N) 0)))  :pattern ( (CanWrite$Mu$ |m_$6_$3| |obj_$1_$3| |f_$5_$3|)))) :named ax_155))
   (assert (! (forall( (|m_$6_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$1_$4| ref) (|f_$5_$4| Field$Seq$Int$$))(!(= (CanWrite$Seq$Int$$ |m_$6_$4| |obj_$1_$4| |f_$5_$4|) (and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$6_$4| |obj_$1_$4| |f_$5_$4|) perm$R) Permission$FullFraction) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$6_$4| |obj_$1_$4| |f_$5_$4|) perm$N) 0)))  :pattern ( (CanWrite$Seq$Int$$ |m_$6_$4| |obj_$1_$4| |f_$5_$4|)))) :named ax_156))
   (assert (! (forall( (|m_$7| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (IsGoodMask |m_$7|) (and (and (and (and (forall( (|o_$14_$0| ref) (|f_$6_$0| Field$Bool$))(and (and (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$R)) (=> (NonPredicateField$Bool$ |f_$6_$0|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$R) Permission$FullFraction))))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$R))))) (forall( (|o_$14_$1| ref) (|f_$6_$1| Field$Int$))(and (and (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$R)) (=> (NonPredicateField$Int$ |f_$6_$1|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$R) Permission$FullFraction))))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$R)))))) (forall( (|o_$14_$2| ref) (|f_$6_$2| Field$ref$))(and (and (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$R)) (=> (NonPredicateField$ref$ |f_$6_$2|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$R) Permission$FullFraction))))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$R)))))) (forall( (|o_$14_$3| ref) (|f_$6_$3| Field$Mu$))(and (and (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$R)) (=> (NonPredicateField$Mu$ |f_$6_$3|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$R) Permission$FullFraction))))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$R)))))) (forall( (|o_$14_$4| ref) (|f_$6_$4| Field$Seq$Int$$))(and (and (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7| |o_$14_$4| |f_$6_$4|) perm$R)) (=> (NonPredicateField$Seq$Int$$ |f_$6_$4|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7| |o_$14_$4| |f_$6_$4|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7| |o_$14_$4| |f_$6_$4|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7| |o_$14_$4| |f_$6_$4|) perm$R) Permission$FullFraction))))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7| |o_$14_$4| |f_$6_$4|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7| |o_$14_$4| |f_$6_$4|) perm$R)))))))  :pattern ( (IsGoodMask |m_$7|)))) :named ax_157))
   (assert (! (forall( (|m_$9_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$0| ref) (|f_$7_$0| Field$Bool$) (|howMuch_$3| Int) (|q_$0_$0| ref) (|g_$4| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Bool$ |m_$9_$0| |o_$16_$0| |f_$7_$0| |howMuch_$3|) |q_$0_$0| |g_$4|) perm$R) (ite$Int$ (and (= |o_$16_$0| |q_$0_$0|) (= |f_$7_$0| |g_$4|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$0| |q_$0_$0| |g_$4|) perm$R) |howMuch_$3|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$0| |q_$0_$0| |g_$4|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Bool$ |m_$9_$0| |o_$16_$0| |f_$7_$0| |howMuch_$3|) |q_$0_$0| |g_$4|) perm$R)))) :named ax_158))
   (assert (! (forall( (|m_$9_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$1| ref) (|f_$7_$1| Field$Int$) (|howMuch_$4| Int) (|q_$0_$1| ref) (|g_$5| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Int$ |m_$9_$1| |o_$16_$1| |f_$7_$1| |howMuch_$4|) |q_$0_$1| |g_$5|) perm$R) (ite$Int$ (and (= |o_$16_$1| |q_$0_$1|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$1| |q_$0_$1| |g_$5|) perm$R) |howMuch_$4|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$1| |q_$0_$1| |g_$5|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Int$ |m_$9_$1| |o_$16_$1| |f_$7_$1| |howMuch_$4|) |q_$0_$1| |g_$5|) perm$R)))) :named ax_159))
   (assert (! (forall( (|m_$9_$10| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$10| ref) (|f_$7_$10| Field$Bool$) (|howMuch_$13| Int) (|q_$0_$10| ref) (|g_$14| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Bool$ |m_$9_$10| |o_$16_$10| |f_$7_$10| |howMuch_$13|) |q_$0_$10| |g_$14|) perm$R) (ite$Int$ (and (= |o_$16_$10| |q_$0_$10|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$10| |q_$0_$10| |g_$14|) perm$R) |howMuch_$13|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$10| |q_$0_$10| |g_$14|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Bool$ |m_$9_$10| |o_$16_$10| |f_$7_$10| |howMuch_$13|) |q_$0_$10| |g_$14|) perm$R)))) :named ax_160))
   (assert (! (forall( (|m_$9_$11| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$11| ref) (|f_$7_$11| Field$Int$) (|howMuch_$14| Int) (|q_$0_$11| ref) (|g_$15| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Int$ |m_$9_$11| |o_$16_$11| |f_$7_$11| |howMuch_$14|) |q_$0_$11| |g_$15|) perm$R) (ite$Int$ (and (= |o_$16_$11| |q_$0_$11|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$11| |q_$0_$11| |g_$15|) perm$R) |howMuch_$14|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$11| |q_$0_$11| |g_$15|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Int$ |m_$9_$11| |o_$16_$11| |f_$7_$11| |howMuch_$14|) |q_$0_$11| |g_$15|) perm$R)))) :named ax_161))
   (assert (! (forall( (|m_$9_$12| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$12| ref) (|f_$7_$12| Field$ref$) (|howMuch_$15| Int) (|q_$0_$12| ref) (|g_$16| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$ref$ |m_$9_$12| |o_$16_$12| |f_$7_$12| |howMuch_$15|) |q_$0_$12| |g_$16|) perm$R) (ite$Int$ (and (= |o_$16_$12| |q_$0_$12|) (= |f_$7_$12| |g_$16|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$12| |q_$0_$12| |g_$16|) perm$R) |howMuch_$15|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$12| |q_$0_$12| |g_$16|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$ref$ |m_$9_$12| |o_$16_$12| |f_$7_$12| |howMuch_$15|) |q_$0_$12| |g_$16|) perm$R)))) :named ax_162))
   (assert (! (forall( (|m_$9_$13| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$13| ref) (|f_$7_$13| Field$Mu$) (|howMuch_$16| Int) (|q_$0_$13| ref) (|g_$17| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Mu$ |m_$9_$13| |o_$16_$13| |f_$7_$13| |howMuch_$16|) |q_$0_$13| |g_$17|) perm$R) (ite$Int$ (and (= |o_$16_$13| |q_$0_$13|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$13| |q_$0_$13| |g_$17|) perm$R) |howMuch_$16|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$13| |q_$0_$13| |g_$17|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Mu$ |m_$9_$13| |o_$16_$13| |f_$7_$13| |howMuch_$16|) |q_$0_$13| |g_$17|) perm$R)))) :named ax_163))
   (assert (! (forall( (|m_$9_$14| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$14| ref) (|f_$7_$14| Field$Seq$Int$$) (|howMuch_$17| Int) (|q_$0_$14| ref) (|g_$18| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Seq$Int$$ |m_$9_$14| |o_$16_$14| |f_$7_$14| |howMuch_$17|) |q_$0_$14| |g_$18|) perm$R) (ite$Int$ (and (= |o_$16_$14| |q_$0_$14|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$14| |q_$0_$14| |g_$18|) perm$R) |howMuch_$17|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$14| |q_$0_$14| |g_$18|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Seq$Int$$ |m_$9_$14| |o_$16_$14| |f_$7_$14| |howMuch_$17|) |q_$0_$14| |g_$18|) perm$R)))) :named ax_164))
   (assert (! (forall( (|m_$9_$15| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$15| ref) (|f_$7_$15| Field$Bool$) (|howMuch_$18| Int) (|q_$0_$15| ref) (|g_$19| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Bool$ |m_$9_$15| |o_$16_$15| |f_$7_$15| |howMuch_$18|) |q_$0_$15| |g_$19|) perm$R) (ite$Int$ (and (= |o_$16_$15| |q_$0_$15|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$15| |q_$0_$15| |g_$19|) perm$R) |howMuch_$18|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$15| |q_$0_$15| |g_$19|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Bool$ |m_$9_$15| |o_$16_$15| |f_$7_$15| |howMuch_$18|) |q_$0_$15| |g_$19|) perm$R)))) :named ax_165))
   (assert (! (forall( (|m_$9_$16| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$16| ref) (|f_$7_$16| Field$Int$) (|howMuch_$19| Int) (|q_$0_$16| ref) (|g_$20| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Int$ |m_$9_$16| |o_$16_$16| |f_$7_$16| |howMuch_$19|) |q_$0_$16| |g_$20|) perm$R) (ite$Int$ (and (= |o_$16_$16| |q_$0_$16|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$16| |q_$0_$16| |g_$20|) perm$R) |howMuch_$19|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$16| |q_$0_$16| |g_$20|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Int$ |m_$9_$16| |o_$16_$16| |f_$7_$16| |howMuch_$19|) |q_$0_$16| |g_$20|) perm$R)))) :named ax_166))
   (assert (! (forall( (|m_$9_$17| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$17| ref) (|f_$7_$17| Field$ref$) (|howMuch_$20| Int) (|q_$0_$17| ref) (|g_$21| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$ref$ |m_$9_$17| |o_$16_$17| |f_$7_$17| |howMuch_$20|) |q_$0_$17| |g_$21|) perm$R) (ite$Int$ (and (= |o_$16_$17| |q_$0_$17|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$17| |q_$0_$17| |g_$21|) perm$R) |howMuch_$20|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$17| |q_$0_$17| |g_$21|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$ref$ |m_$9_$17| |o_$16_$17| |f_$7_$17| |howMuch_$20|) |q_$0_$17| |g_$21|) perm$R)))) :named ax_167))
   (assert (! (forall( (|m_$9_$18| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$18| ref) (|f_$7_$18| Field$Mu$) (|howMuch_$21| Int) (|q_$0_$18| ref) (|g_$22| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Mu$ |m_$9_$18| |o_$16_$18| |f_$7_$18| |howMuch_$21|) |q_$0_$18| |g_$22|) perm$R) (ite$Int$ (and (= |o_$16_$18| |q_$0_$18|) (= |f_$7_$18| |g_$22|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$18| |q_$0_$18| |g_$22|) perm$R) |howMuch_$21|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$18| |q_$0_$18| |g_$22|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Mu$ |m_$9_$18| |o_$16_$18| |f_$7_$18| |howMuch_$21|) |q_$0_$18| |g_$22|) perm$R)))) :named ax_168))
   (assert (! (forall( (|m_$9_$19| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$19| ref) (|f_$7_$19| Field$Seq$Int$$) (|howMuch_$22| Int) (|q_$0_$19| ref) (|g_$23| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Seq$Int$$ |m_$9_$19| |o_$16_$19| |f_$7_$19| |howMuch_$22|) |q_$0_$19| |g_$23|) perm$R) (ite$Int$ (and (= |o_$16_$19| |q_$0_$19|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$19| |q_$0_$19| |g_$23|) perm$R) |howMuch_$22|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$19| |q_$0_$19| |g_$23|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Seq$Int$$ |m_$9_$19| |o_$16_$19| |f_$7_$19| |howMuch_$22|) |q_$0_$19| |g_$23|) perm$R)))) :named ax_169))
   (assert (! (forall( (|m_$9_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$2| ref) (|f_$7_$2| Field$ref$) (|howMuch_$5| Int) (|q_$0_$2| ref) (|g_$6| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$ref$ |m_$9_$2| |o_$16_$2| |f_$7_$2| |howMuch_$5|) |q_$0_$2| |g_$6|) perm$R) (ite$Int$ (and (= |o_$16_$2| |q_$0_$2|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$2| |q_$0_$2| |g_$6|) perm$R) |howMuch_$5|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$2| |q_$0_$2| |g_$6|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$ref$ |m_$9_$2| |o_$16_$2| |f_$7_$2| |howMuch_$5|) |q_$0_$2| |g_$6|) perm$R)))) :named ax_170))
   (assert (! (forall( (|m_$9_$20| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$20| ref) (|f_$7_$20| Field$Bool$) (|howMuch_$23| Int) (|q_$0_$20| ref) (|g_$24| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Bool$ |m_$9_$20| |o_$16_$20| |f_$7_$20| |howMuch_$23|) |q_$0_$20| |g_$24|) perm$R) (ite$Int$ (and (= |o_$16_$20| |q_$0_$20|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$20| |q_$0_$20| |g_$24|) perm$R) |howMuch_$23|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$20| |q_$0_$20| |g_$24|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Bool$ |m_$9_$20| |o_$16_$20| |f_$7_$20| |howMuch_$23|) |q_$0_$20| |g_$24|) perm$R)))) :named ax_171))
   (assert (! (forall( (|m_$9_$21| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$21| ref) (|f_$7_$21| Field$Int$) (|howMuch_$24| Int) (|q_$0_$21| ref) (|g_$25| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Int$ |m_$9_$21| |o_$16_$21| |f_$7_$21| |howMuch_$24|) |q_$0_$21| |g_$25|) perm$R) (ite$Int$ (and (= |o_$16_$21| |q_$0_$21|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$21| |q_$0_$21| |g_$25|) perm$R) |howMuch_$24|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$21| |q_$0_$21| |g_$25|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Int$ |m_$9_$21| |o_$16_$21| |f_$7_$21| |howMuch_$24|) |q_$0_$21| |g_$25|) perm$R)))) :named ax_172))
   (assert (! (forall( (|m_$9_$22| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$22| ref) (|f_$7_$22| Field$ref$) (|howMuch_$25| Int) (|q_$0_$22| ref) (|g_$26| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$ref$ |m_$9_$22| |o_$16_$22| |f_$7_$22| |howMuch_$25|) |q_$0_$22| |g_$26|) perm$R) (ite$Int$ (and (= |o_$16_$22| |q_$0_$22|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$22| |q_$0_$22| |g_$26|) perm$R) |howMuch_$25|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$22| |q_$0_$22| |g_$26|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$ref$ |m_$9_$22| |o_$16_$22| |f_$7_$22| |howMuch_$25|) |q_$0_$22| |g_$26|) perm$R)))) :named ax_173))
   (assert (! (forall( (|m_$9_$23| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$23| ref) (|f_$7_$23| Field$Mu$) (|howMuch_$26| Int) (|q_$0_$23| ref) (|g_$27| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Mu$ |m_$9_$23| |o_$16_$23| |f_$7_$23| |howMuch_$26|) |q_$0_$23| |g_$27|) perm$R) (ite$Int$ (and (= |o_$16_$23| |q_$0_$23|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$23| |q_$0_$23| |g_$27|) perm$R) |howMuch_$26|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$23| |q_$0_$23| |g_$27|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Mu$ |m_$9_$23| |o_$16_$23| |f_$7_$23| |howMuch_$26|) |q_$0_$23| |g_$27|) perm$R)))) :named ax_174))
   (assert (! (forall( (|m_$9_$24| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$24| ref) (|f_$7_$24| Field$Seq$Int$$) (|howMuch_$27| Int) (|q_$0_$24| ref) (|g_$28| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Seq$Int$$ |m_$9_$24| |o_$16_$24| |f_$7_$24| |howMuch_$27|) |q_$0_$24| |g_$28|) perm$R) (ite$Int$ (and (= |o_$16_$24| |q_$0_$24|) (= |f_$7_$24| |g_$28|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$24| |q_$0_$24| |g_$28|) perm$R) |howMuch_$27|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$24| |q_$0_$24| |g_$28|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Seq$Int$$ |m_$9_$24| |o_$16_$24| |f_$7_$24| |howMuch_$27|) |q_$0_$24| |g_$28|) perm$R)))) :named ax_175))
   (assert (! (forall( (|m_$9_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$3| ref) (|f_$7_$3| Field$Mu$) (|howMuch_$6| Int) (|q_$0_$3| ref) (|g_$7| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Mu$ |m_$9_$3| |o_$16_$3| |f_$7_$3| |howMuch_$6|) |q_$0_$3| |g_$7|) perm$R) (ite$Int$ (and (= |o_$16_$3| |q_$0_$3|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$3| |q_$0_$3| |g_$7|) perm$R) |howMuch_$6|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$3| |q_$0_$3| |g_$7|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Mu$ |m_$9_$3| |o_$16_$3| |f_$7_$3| |howMuch_$6|) |q_$0_$3| |g_$7|) perm$R)))) :named ax_176))
   (assert (! (forall( (|m_$9_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$4| ref) (|f_$7_$4| Field$Seq$Int$$) (|howMuch_$7| Int) (|q_$0_$4| ref) (|g_$8| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Seq$Int$$ |m_$9_$4| |o_$16_$4| |f_$7_$4| |howMuch_$7|) |q_$0_$4| |g_$8|) perm$R) (ite$Int$ (and (= |o_$16_$4| |q_$0_$4|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$4| |q_$0_$4| |g_$8|) perm$R) |howMuch_$7|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$4| |q_$0_$4| |g_$8|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Seq$Int$$ |m_$9_$4| |o_$16_$4| |f_$7_$4| |howMuch_$7|) |q_$0_$4| |g_$8|) perm$R)))) :named ax_177))
   (assert (! (forall( (|m_$9_$5| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$5| ref) (|f_$7_$5| Field$Bool$) (|howMuch_$8| Int) (|q_$0_$5| ref) (|g_$9| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Bool$ |m_$9_$5| |o_$16_$5| |f_$7_$5| |howMuch_$8|) |q_$0_$5| |g_$9|) perm$R) (ite$Int$ (and (= |o_$16_$5| |q_$0_$5|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$5| |q_$0_$5| |g_$9|) perm$R) |howMuch_$8|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$5| |q_$0_$5| |g_$9|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Bool$ |m_$9_$5| |o_$16_$5| |f_$7_$5| |howMuch_$8|) |q_$0_$5| |g_$9|) perm$R)))) :named ax_178))
   (assert (! (forall( (|m_$9_$6| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$6| ref) (|f_$7_$6| Field$Int$) (|howMuch_$9| Int) (|q_$0_$6| ref) (|g_$10| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Int$ |m_$9_$6| |o_$16_$6| |f_$7_$6| |howMuch_$9|) |q_$0_$6| |g_$10|) perm$R) (ite$Int$ (and (= |o_$16_$6| |q_$0_$6|) (= |f_$7_$6| |g_$10|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$6| |q_$0_$6| |g_$10|) perm$R) |howMuch_$9|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$6| |q_$0_$6| |g_$10|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Int$ |m_$9_$6| |o_$16_$6| |f_$7_$6| |howMuch_$9|) |q_$0_$6| |g_$10|) perm$R)))) :named ax_179))
   (assert (! (forall( (|m_$9_$7| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$7| ref) (|f_$7_$7| Field$ref$) (|howMuch_$10| Int) (|q_$0_$7| ref) (|g_$11| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$ref$ |m_$9_$7| |o_$16_$7| |f_$7_$7| |howMuch_$10|) |q_$0_$7| |g_$11|) perm$R) (ite$Int$ (and (= |o_$16_$7| |q_$0_$7|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$7| |q_$0_$7| |g_$11|) perm$R) |howMuch_$10|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$7| |q_$0_$7| |g_$11|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$ref$ |m_$9_$7| |o_$16_$7| |f_$7_$7| |howMuch_$10|) |q_$0_$7| |g_$11|) perm$R)))) :named ax_180))
   (assert (! (forall( (|m_$9_$8| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$8| ref) (|f_$7_$8| Field$Mu$) (|howMuch_$11| Int) (|q_$0_$8| ref) (|g_$12| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Mu$ |m_$9_$8| |o_$16_$8| |f_$7_$8| |howMuch_$11|) |q_$0_$8| |g_$12|) perm$R) (ite$Int$ (and (= |o_$16_$8| |q_$0_$8|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$8| |q_$0_$8| |g_$12|) perm$R) |howMuch_$11|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$8| |q_$0_$8| |g_$12|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Mu$ |m_$9_$8| |o_$16_$8| |f_$7_$8| |howMuch_$11|) |q_$0_$8| |g_$12|) perm$R)))) :named ax_181))
   (assert (! (forall( (|m_$9_$9| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$9| ref) (|f_$7_$9| Field$Seq$Int$$) (|howMuch_$12| Int) (|q_$0_$9| ref) (|g_$13| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Seq$Int$$ |m_$9_$9| |o_$16_$9| |f_$7_$9| |howMuch_$12|) |q_$0_$9| |g_$13|) perm$R) (ite$Int$ (and (= |o_$16_$9| |q_$0_$9|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$9| |q_$0_$9| |g_$13|) perm$R) |howMuch_$12|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$9| |q_$0_$9| |g_$13|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Seq$Int$$ |m_$9_$9| |o_$16_$9| |f_$7_$9| |howMuch_$12|) |q_$0_$9| |g_$13|) perm$R)))) :named ax_182))
   (assert (! (forall( (|m| Mu) (|n_$0| Mu))(!(not (and (MuBelow |m| |n_$0|) (MuBelow |n_$0| |m|)))  :pattern ( (MuBelow |m| |n_$0|) (MuBelow |n_$0| |m|)))) :named ax_183))
   (assert (! (forall( (|min_$0| Int) (|max_$0| Int) (|j_$4| Int))(!(=> (and (<= 0 |j_$4|) (< |j_$4| (- |max_$0| |min_$0|))) (= (Seq@Index$Int$ (Seq@Range |min_$0| |max_$0|) |j_$4|) (+ |min_$0| |j_$4|)))  :pattern ( (Seq@Index$Int$ (Seq@Range |min_$0| |max_$0|) |j_$4|)))) :named ax_184))
   (assert (! (forall( (|min| Int) (|max| Int))(!(and (=> (< |min| |max|) (= (Seq@Length$Int$ (Seq@Range |min| |max|)) (- |max| |min|))) (=> (<= |max| |min|) (= (Seq@Length$Int$ (Seq@Range |min| |max|)) 0)))  :pattern ( (Seq@Length$Int$ (Seq@Range |min| |max|))))) :named ax_185))
   (assert (! (forall( (|n| Int))(!(= (Fractions |n|) (* |n| Permission$denominator))  :pattern ( (Fractions |n|)))) :named ax_186))
   (assert (! (forall( (|o_$22| ref))(= (MapRead$$@Map@@ref@To@Int@@$ ZeroCredits |o_$22|) 0)) :named ax_187))
   (assert (! (forall( (|o_$25| ref) (|f_$16| Field$Bool$) (|pc_$0| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ ZeroMask |o_$25| |f_$16|) |pc_$0|) 0)) :named ax_188))
   (assert (! (forall( (|o_$26| ref) (|f_$17| Field$Int$) (|pc_$1| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask |o_$26| |f_$17|) |pc_$1|) 0)) :named ax_189))
   (assert (! (forall( (|o_$27| ref) (|f_$18| Field$ref$) (|pc_$2| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask |o_$27| |f_$18|) |pc_$2|) 0)) :named ax_190))
   (assert (! (forall( (|o_$28| ref) (|f_$19| Field$Mu$) (|pc_$3| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ ZeroMask |o_$28| |f_$19|) |pc_$3|) 0)) :named ax_191))
   (assert (! (forall( (|o_$29| ref) (|f_$20| Field$Seq$Int$$) (|pc_$4| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ ZeroMask |o_$29| |f_$20|) |pc_$4|) 0)) :named ax_192))
   (assert (! (forall( (|s_$0_$0| Seq$Int$))(!(=> (= (Seq@Length$Int$ |s_$0_$0|) 0) (= |s_$0_$0| Seq@Empty$Int$))  :pattern ( (Seq@Length$Int$ |s_$0_$0|)))) :named ax_193))
   (assert (! (forall( (|s_$0_$1| Seq$ref$))(!(=> (= (Seq@Length$ref$ |s_$0_$1|) 0) (= |s_$0_$1| Seq@Empty$ref$))  :pattern ( (Seq@Length$ref$ |s_$0_$1|)))) :named ax_194))
   (assert (! (forall( (|s_$1_$0| Seq$Int$) (|i_$5| Int) (|v_$2| Int) (|len_$2| Int))(!(=> (<= 0 |len_$2|) (= (Seq@Length$Int$ (Seq@Build$Int$ |s_$1_$0| |i_$5| |v_$2| |len_$2|)) |len_$2|))  :pattern ( (Seq@Length$Int$ (Seq@Build$Int$ |s_$1_$0| |i_$5| |v_$2| |len_$2|))))) :named ax_195))
   (assert (! (forall( (|s_$1_$1| Seq$ref$) (|i_$6| Int) (|v_$3| ref) (|len_$3| Int))(!(=> (<= 0 |len_$3|) (= (Seq@Length$ref$ (Seq@Build$ref$ |s_$1_$1| |i_$6| |v_$3| |len_$3|)) |len_$3|))  :pattern ( (Seq@Length$ref$ (Seq@Build$ref$ |s_$1_$1| |i_$6| |v_$3| |len_$3|))))) :named ax_196))
   (assert (! (forall( (|s_$10_$0| Seq$Int$) (|n_$11_$0| Int) (|j_$3_$0| Int))(!(=> (and (and (<= 0 |n_$11_$0|) (<= 0 |j_$3_$0|)) (< |j_$3_$0| (- (Seq@Length$Int$ |s_$10_$0|) |n_$11_$0|))) (= (Seq@Index$Int$ (Seq@Drop$Int$ |s_$10_$0| |n_$11_$0|) |j_$3_$0|) (Seq@Index$Int$ |s_$10_$0| (+ |j_$3_$0| |n_$11_$0|))))  :weight  25 :pattern ( (Seq@Index$Int$ (Seq@Drop$Int$ |s_$10_$0| |n_$11_$0|) |j_$3_$0|)))) :named ax_197))
   (assert (! (forall( (|s_$10_$1| Seq$ref$) (|n_$11_$1| Int) (|j_$3_$1| Int))(!(=> (and (and (<= 0 |n_$11_$1|) (<= 0 |j_$3_$1|)) (< |j_$3_$1| (- (Seq@Length$ref$ |s_$10_$1|) |n_$11_$1|))) (= (Seq@Index$ref$ (Seq@Drop$ref$ |s_$10_$1| |n_$11_$1|) |j_$3_$1|) (Seq@Index$ref$ |s_$10_$1| (+ |j_$3_$1| |n_$11_$1|))))  :weight  25 :pattern ( (Seq@Index$ref$ (Seq@Drop$ref$ |s_$10_$1| |n_$11_$1|) |j_$3_$1|)))) :named ax_198))
   (assert (! (forall( (|s_$11_$0| Seq$Int$) (|t_$1_$0| Seq$Int$))(!(and (= (Seq@Take$Int$ (Seq@Append$Int$ |s_$11_$0| |t_$1_$0|) (Seq@Length$Int$ |s_$11_$0|)) |s_$11_$0|) (= (Seq@Drop$Int$ (Seq@Append$Int$ |s_$11_$0| |t_$1_$0|) (Seq@Length$Int$ |s_$11_$0|)) |t_$1_$0|))  :pattern ( (Seq@Append$Int$ |s_$11_$0| |t_$1_$0|)))) :named ax_199))
   (assert (! (forall( (|s_$11_$1| Seq$ref$) (|t_$1_$1| Seq$ref$))(!(and (= (Seq@Take$ref$ (Seq@Append$ref$ |s_$11_$1| |t_$1_$1|) (Seq@Length$ref$ |s_$11_$1|)) |s_$11_$1|) (= (Seq@Drop$ref$ (Seq@Append$ref$ |s_$11_$1| |t_$1_$1|) (Seq@Length$ref$ |s_$11_$1|)) |t_$1_$1|))  :pattern ( (Seq@Append$ref$ |s_$11_$1| |t_$1_$1|)))) :named ax_200))
   (assert (! (forall( (|s_$12| Seq$Int$))(!(<= 0 (Seq@Length$Int$ |s_$12|))  :pattern ( (Seq@Length$Int$ |s_$12|)))) :named ax_201))
   (assert (! (forall( (|s_$13| Seq$ref$))(!(<= 0 (Seq@Length$ref$ |s_$13|))  :pattern ( (Seq@Length$ref$ |s_$13|)))) :named ax_202))
   (assert (! (forall( (|s_$2_$0| Seq$Int$) (|i_$0_$0| Int) (|v_$0_$0| Int) (|len_$0_$0| Int) (|n_$4_$0| Int))(!(=> (and (<= 0 |n_$4_$0|) (< |n_$4_$0| |len_$0_$0|)) (and (=> (= |i_$0_$0| |n_$4_$0|) (= (Seq@Index$Int$ (Seq@Build$Int$ |s_$2_$0| |i_$0_$0| |v_$0_$0| |len_$0_$0|) |n_$4_$0|) |v_$0_$0|)) (=> (not (= |i_$0_$0| |n_$4_$0|)) (= (Seq@Index$Int$ (Seq@Build$Int$ |s_$2_$0| |i_$0_$0| |v_$0_$0| |len_$0_$0|) |n_$4_$0|) (Seq@Index$Int$ |s_$2_$0| |n_$4_$0|)))))  :pattern ( (Seq@Index$Int$ (Seq@Build$Int$ |s_$2_$0| |i_$0_$0| |v_$0_$0| |len_$0_$0|) |n_$4_$0|)))) :named ax_203))
   (assert (! (forall( (|s_$2_$1| Seq$ref$) (|i_$0_$1| Int) (|v_$0_$1| ref) (|len_$0_$1| Int) (|n_$4_$1| Int))(!(=> (and (<= 0 |n_$4_$1|) (< |n_$4_$1| |len_$0_$1|)) (and (=> (= |i_$0_$1| |n_$4_$1|) (= (Seq@Index$ref$ (Seq@Build$ref$ |s_$2_$1| |i_$0_$1| |v_$0_$1| |len_$0_$1|) |n_$4_$1|) |v_$0_$1|)) (=> (not (= |i_$0_$1| |n_$4_$1|)) (= (Seq@Index$ref$ (Seq@Build$ref$ |s_$2_$1| |i_$0_$1| |v_$0_$1| |len_$0_$1|) |n_$4_$1|) (Seq@Index$ref$ |s_$2_$1| |n_$4_$1|)))))  :pattern ( (Seq@Index$ref$ (Seq@Build$ref$ |s_$2_$1| |i_$0_$1| |v_$0_$1| |len_$0_$1|) |n_$4_$1|)))) :named ax_204))
   (assert (! (forall( (|s_$3_$0| Seq$Int$) (|x_$0_$0| Int))(!(= (Seq@Contains$Int$ |s_$3_$0| |x_$0_$0|) (exists( (|i_$1_$1| Int))(!(and (and (<= 0 |i_$1_$1|) (< |i_$1_$1| (Seq@Length$Int$ |s_$3_$0|))) (= (Seq@Index$Int$ |s_$3_$0| |i_$1_$1|) |x_$0_$0|))  :pattern ( (Seq@Index$Int$ |s_$3_$0| |i_$1_$1|)))))  :pattern ( (Seq@Contains$Int$ |s_$3_$0| |x_$0_$0|)))) :named ax_205))
   (assert (! (forall( (|s_$3_$1| Seq$ref$) (|x_$0_$1| ref))(!(= (Seq@Contains$ref$ |s_$3_$1| |x_$0_$1|) (exists( (|i_$1_$3| Int))(!(and (and (<= 0 |i_$1_$3|) (< |i_$1_$3| (Seq@Length$ref$ |s_$3_$1|))) (= (Seq@Index$ref$ |s_$3_$1| |i_$1_$3|) |x_$0_$1|))  :pattern ( (Seq@Index$ref$ |s_$3_$1| |i_$1_$3|)))))  :pattern ( (Seq@Contains$ref$ |s_$3_$1| |x_$0_$1|)))) :named ax_206))
   (assert (! (forall( (|s_$4_$0| Seq$Int$) (|i_$2_$0| Int) (|v_$1_$0| Int) (|len_$1_$0| Int) (|x_$3_$0| Int))(!(= (Seq@Contains$Int$ (Seq@Build$Int$ |s_$4_$0| |i_$2_$0| |v_$1_$0| |len_$1_$0|) |x_$3_$0|) (or (and (and (<= 0 |i_$2_$0|) (< |i_$2_$0| |len_$1_$0|)) (= |x_$3_$0| |v_$1_$0|)) (exists( (|j_$6| Int))(!(and (and (and (and (<= 0 |j_$6|) (< |j_$6| (Seq@Length$Int$ |s_$4_$0|))) (< |j_$6| |len_$1_$0|)) (not (= |j_$6| |i_$2_$0|))) (= (Seq@Index$Int$ |s_$4_$0| |j_$6|) |x_$3_$0|))  :pattern ( (Seq@Index$Int$ |s_$4_$0| |j_$6|))))))  :pattern ( (Seq@Contains$Int$ (Seq@Build$Int$ |s_$4_$0| |i_$2_$0| |v_$1_$0| |len_$1_$0|) |x_$3_$0|)))) :named ax_207))
   (assert (! (forall( (|s_$4_$1| Seq$ref$) (|i_$2_$1| Int) (|v_$1_$1| ref) (|len_$1_$1| Int) (|x_$3_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Build$ref$ |s_$4_$1| |i_$2_$1| |v_$1_$1| |len_$1_$1|) |x_$3_$1|) (or (and (and (<= 0 |i_$2_$1|) (< |i_$2_$1| |len_$1_$1|)) (= |x_$3_$1| |v_$1_$1|)) (exists( (|j_$8| Int))(!(and (and (and (and (<= 0 |j_$8|) (< |j_$8| (Seq@Length$ref$ |s_$4_$1|))) (< |j_$8| |len_$1_$1|)) (not (= |j_$8| |i_$2_$1|))) (= (Seq@Index$ref$ |s_$4_$1| |j_$8|) |x_$3_$1|))  :pattern ( (Seq@Index$ref$ |s_$4_$1| |j_$8|))))))  :pattern ( (Seq@Contains$ref$ (Seq@Build$ref$ |s_$4_$1| |i_$2_$1| |v_$1_$1| |len_$1_$1|) |x_$3_$1|)))) :named ax_208))
   (assert (! (forall( (|s_$5_$0| Seq$Int$) (|n_$5_$0| Int) (|x_$4_$0| Int))(!(= (Seq@Contains$Int$ (Seq@Take$Int$ |s_$5_$0| |n_$5_$0|) |x_$4_$0|) (exists( (|i_$3_$1| Int))(!(and (and (and (<= 0 |i_$3_$1|) (< |i_$3_$1| |n_$5_$0|)) (< |i_$3_$1| (Seq@Length$Int$ |s_$5_$0|))) (= (Seq@Index$Int$ |s_$5_$0| |i_$3_$1|) |x_$4_$0|))  :pattern ( (Seq@Index$Int$ |s_$5_$0| |i_$3_$1|)))))  :pattern ( (Seq@Contains$Int$ (Seq@Take$Int$ |s_$5_$0| |n_$5_$0|) |x_$4_$0|)))) :named ax_209))
   (assert (! (forall( (|s_$5_$1| Seq$ref$) (|n_$5_$1| Int) (|x_$4_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Take$ref$ |s_$5_$1| |n_$5_$1|) |x_$4_$1|) (exists( (|i_$3_$3| Int))(!(and (and (and (<= 0 |i_$3_$3|) (< |i_$3_$3| |n_$5_$1|)) (< |i_$3_$3| (Seq@Length$ref$ |s_$5_$1|))) (= (Seq@Index$ref$ |s_$5_$1| |i_$3_$3|) |x_$4_$1|))  :pattern ( (Seq@Index$ref$ |s_$5_$1| |i_$3_$3|)))))  :pattern ( (Seq@Contains$ref$ (Seq@Take$ref$ |s_$5_$1| |n_$5_$1|) |x_$4_$1|)))) :named ax_210))
   (assert (! (forall( (|s_$6_$0| Seq$Int$) (|n_$6_$0| Int) (|x_$5_$0| Int))(!(= (Seq@Contains$Int$ (Seq@Drop$Int$ |s_$6_$0| |n_$6_$0|) |x_$5_$0|) (exists( (|i_$4_$1| Int))(!(and (and (and (<= 0 |n_$6_$0|) (<= |n_$6_$0| |i_$4_$1|)) (< |i_$4_$1| (Seq@Length$Int$ |s_$6_$0|))) (= (Seq@Index$Int$ |s_$6_$0| |i_$4_$1|) |x_$5_$0|))  :pattern ( (Seq@Index$Int$ |s_$6_$0| |i_$4_$1|)))))  :pattern ( (Seq@Contains$Int$ (Seq@Drop$Int$ |s_$6_$0| |n_$6_$0|) |x_$5_$0|)))) :named ax_211))
   (assert (! (forall( (|s_$6_$1| Seq$ref$) (|n_$6_$1| Int) (|x_$5_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Drop$ref$ |s_$6_$1| |n_$6_$1|) |x_$5_$1|) (exists( (|i_$4_$3| Int))(!(and (and (and (<= 0 |n_$6_$1|) (<= |n_$6_$1| |i_$4_$3|)) (< |i_$4_$3| (Seq@Length$ref$ |s_$6_$1|))) (= (Seq@Index$ref$ |s_$6_$1| |i_$4_$3|) |x_$5_$1|))  :pattern ( (Seq@Index$ref$ |s_$6_$1| |i_$4_$3|)))))  :pattern ( (Seq@Contains$ref$ (Seq@Drop$ref$ |s_$6_$1| |n_$6_$1|) |x_$5_$1|)))) :named ax_212))
   (assert (! (forall( (|s_$7_$0| Seq$Int$) (|n_$8_$0| Int))(!(=> (<= 0 |n_$8_$0|) (and (=> (<= |n_$8_$0| (Seq@Length$Int$ |s_$7_$0|)) (= (Seq@Length$Int$ (Seq@Take$Int$ |s_$7_$0| |n_$8_$0|)) |n_$8_$0|)) (=> (< (Seq@Length$Int$ |s_$7_$0|) |n_$8_$0|) (= (Seq@Length$Int$ (Seq@Take$Int$ |s_$7_$0| |n_$8_$0|)) (Seq@Length$Int$ |s_$7_$0|)))))  :pattern ( (Seq@Length$Int$ (Seq@Take$Int$ |s_$7_$0| |n_$8_$0|))))) :named ax_213))
   (assert (! (forall( (|s_$7_$1| Seq$ref$) (|n_$8_$1| Int))(!(=> (<= 0 |n_$8_$1|) (and (=> (<= |n_$8_$1| (Seq@Length$ref$ |s_$7_$1|)) (= (Seq@Length$ref$ (Seq@Take$ref$ |s_$7_$1| |n_$8_$1|)) |n_$8_$1|)) (=> (< (Seq@Length$ref$ |s_$7_$1|) |n_$8_$1|) (= (Seq@Length$ref$ (Seq@Take$ref$ |s_$7_$1| |n_$8_$1|)) (Seq@Length$ref$ |s_$7_$1|)))))  :pattern ( (Seq@Length$ref$ (Seq@Take$ref$ |s_$7_$1| |n_$8_$1|))))) :named ax_214))
   (assert (! (forall( (|s_$8_$0| Seq$Int$) (|n_$9_$0| Int) (|j_$2_$0| Int))(!(=> (and (and (<= 0 |j_$2_$0|) (< |j_$2_$0| |n_$9_$0|)) (< |j_$2_$0| (Seq@Length$Int$ |s_$8_$0|))) (= (Seq@Index$Int$ (Seq@Take$Int$ |s_$8_$0| |n_$9_$0|) |j_$2_$0|) (Seq@Index$Int$ |s_$8_$0| |j_$2_$0|)))  :weight  25 :pattern ( (Seq@Index$Int$ (Seq@Take$Int$ |s_$8_$0| |n_$9_$0|) |j_$2_$0|)))) :named ax_215))
   (assert (! (forall( (|s_$8_$1| Seq$ref$) (|n_$9_$1| Int) (|j_$2_$1| Int))(!(=> (and (and (<= 0 |j_$2_$1|) (< |j_$2_$1| |n_$9_$1|)) (< |j_$2_$1| (Seq@Length$ref$ |s_$8_$1|))) (= (Seq@Index$ref$ (Seq@Take$ref$ |s_$8_$1| |n_$9_$1|) |j_$2_$1|) (Seq@Index$ref$ |s_$8_$1| |j_$2_$1|)))  :weight  25 :pattern ( (Seq@Index$ref$ (Seq@Take$ref$ |s_$8_$1| |n_$9_$1|) |j_$2_$1|)))) :named ax_216))
   (assert (! (forall( (|s_$9_$0| Seq$Int$) (|n_$10_$0| Int))(!(=> (<= 0 |n_$10_$0|) (and (=> (<= |n_$10_$0| (Seq@Length$Int$ |s_$9_$0|)) (= (Seq@Length$Int$ (Seq@Drop$Int$ |s_$9_$0| |n_$10_$0|)) (- (Seq@Length$Int$ |s_$9_$0|) |n_$10_$0|))) (=> (< (Seq@Length$Int$ |s_$9_$0|) |n_$10_$0|) (= (Seq@Length$Int$ (Seq@Drop$Int$ |s_$9_$0| |n_$10_$0|)) 0))))  :pattern ( (Seq@Length$Int$ (Seq@Drop$Int$ |s_$9_$0| |n_$10_$0|))))) :named ax_217))
   (assert (! (forall( (|s_$9_$1| Seq$ref$) (|n_$10_$1| Int))(!(=> (<= 0 |n_$10_$1|) (and (=> (<= |n_$10_$1| (Seq@Length$ref$ |s_$9_$1|)) (= (Seq@Length$ref$ (Seq@Drop$ref$ |s_$9_$1| |n_$10_$1|)) (- (Seq@Length$ref$ |s_$9_$1|) |n_$10_$1|))) (=> (< (Seq@Length$ref$ |s_$9_$1|) |n_$10_$1|) (= (Seq@Length$ref$ (Seq@Drop$ref$ |s_$9_$1| |n_$10_$1|)) 0))))  :pattern ( (Seq@Length$ref$ (Seq@Drop$ref$ |s_$9_$1| |n_$10_$1|))))) :named ax_218))
   (assert (! (forall( (|s0_$0_$0| Seq$Int$) (|s1_$0_$0| Seq$Int$) (|n_$3_$0| Int))(!(and (=> (< |n_$3_$0| (Seq@Length$Int$ |s0_$0_$0|)) (= (Seq@Index$Int$ (Seq@Append$Int$ |s0_$0_$0| |s1_$0_$0|) |n_$3_$0|) (Seq@Index$Int$ |s0_$0_$0| |n_$3_$0|))) (=> (<= (Seq@Length$Int$ |s0_$0_$0|) |n_$3_$0|) (= (Seq@Index$Int$ (Seq@Append$Int$ |s0_$0_$0| |s1_$0_$0|) |n_$3_$0|) (Seq@Index$Int$ |s1_$0_$0| (- |n_$3_$0| (Seq@Length$Int$ |s0_$0_$0|))))))  :pattern ( (Seq@Index$Int$ (Seq@Append$Int$ |s0_$0_$0| |s1_$0_$0|) |n_$3_$0|)))) :named ax_219))
   (assert (! (forall( (|s0_$0_$1| Seq$ref$) (|s1_$0_$1| Seq$ref$) (|n_$3_$1| Int))(!(and (=> (< |n_$3_$1| (Seq@Length$ref$ |s0_$0_$1|)) (= (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$1| |s1_$0_$1|) |n_$3_$1|) (Seq@Index$ref$ |s0_$0_$1| |n_$3_$1|))) (=> (<= (Seq@Length$ref$ |s0_$0_$1|) |n_$3_$1|) (= (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$1| |s1_$0_$1|) |n_$3_$1|) (Seq@Index$ref$ |s1_$0_$1| (- |n_$3_$1| (Seq@Length$ref$ |s0_$0_$1|))))))  :pattern ( (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$1| |s1_$0_$1|) |n_$3_$1|)))) :named ax_220))
   (assert (! (forall( (|s0_$1_$0| Seq$Int$) (|s1_$1_$0| Seq$Int$) (|x_$2_$0| Int))(!(= (Seq@Contains$Int$ (Seq@Append$Int$ |s0_$1_$0| |s1_$1_$0|) |x_$2_$0|) (or (Seq@Contains$Int$ |s0_$1_$0| |x_$2_$0|) (Seq@Contains$Int$ |s1_$1_$0| |x_$2_$0|)))  :pattern ( (Seq@Contains$Int$ (Seq@Append$Int$ |s0_$1_$0| |s1_$1_$0|) |x_$2_$0|)))) :named ax_221))
   (assert (! (forall( (|s0_$1_$1| Seq$ref$) (|s1_$1_$1| Seq$ref$) (|x_$2_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Append$ref$ |s0_$1_$1| |s1_$1_$1|) |x_$2_$1|) (or (Seq@Contains$ref$ |s0_$1_$1| |x_$2_$1|) (Seq@Contains$ref$ |s1_$1_$1| |x_$2_$1|)))  :pattern ( (Seq@Contains$ref$ (Seq@Append$ref$ |s0_$1_$1| |s1_$1_$1|) |x_$2_$1|)))) :named ax_222))
   (assert (! (forall( (|s0_$2_$0| Seq$Int$) (|s1_$2_$0| Seq$Int$))(!(= (Seq@Equal$Int$ |s0_$2_$0| |s1_$2_$0|) (and (= (Seq@Length$Int$ |s0_$2_$0|) (Seq@Length$Int$ |s1_$2_$0|)) (forall( (|j_$0_$1| Int))(!(=> (and (<= 0 |j_$0_$1|) (< |j_$0_$1| (Seq@Length$Int$ |s0_$2_$0|))) (= (Seq@Index$Int$ |s0_$2_$0| |j_$0_$1|) (Seq@Index$Int$ |s1_$2_$0| |j_$0_$1|)))  :pattern ( (Seq@Index$Int$ |s0_$2_$0| |j_$0_$1|)) :pattern ( (Seq@Index$Int$ |s1_$2_$0| |j_$0_$1|))))))  :pattern ( (Seq@Equal$Int$ |s0_$2_$0| |s1_$2_$0|)))) :named ax_223))
   (assert (! (forall( (|s0_$2_$1| Seq$ref$) (|s1_$2_$1| Seq$ref$))(!(= (Seq@Equal$ref$ |s0_$2_$1| |s1_$2_$1|) (and (= (Seq@Length$ref$ |s0_$2_$1|) (Seq@Length$ref$ |s1_$2_$1|)) (forall( (|j_$0_$3| Int))(!(=> (and (<= 0 |j_$0_$3|) (< |j_$0_$3| (Seq@Length$ref$ |s0_$2_$1|))) (= (Seq@Index$ref$ |s0_$2_$1| |j_$0_$3|) (Seq@Index$ref$ |s1_$2_$1| |j_$0_$3|)))  :pattern ( (Seq@Index$ref$ |s0_$2_$1| |j_$0_$3|)) :pattern ( (Seq@Index$ref$ |s1_$2_$1| |j_$0_$3|))))))  :pattern ( (Seq@Equal$ref$ |s0_$2_$1| |s1_$2_$1|)))) :named ax_224))
   (assert (! (forall( (|s0_$4| Seq$Int$) (|s1_$4| Seq$Int$))(!(= (Seq@Length$Int$ (Seq@Append$Int$ |s0_$4| |s1_$4|)) (+ (Seq@Length$Int$ |s0_$4|) (Seq@Length$Int$ |s1_$4|)))  :pattern ( (Seq@Length$Int$ (Seq@Append$Int$ |s0_$4| |s1_$4|))))) :named ax_225))
   (assert (! (forall( (|s0_$5| Seq$ref$) (|s1_$5| Seq$ref$))(!(= (Seq@Length$ref$ (Seq@Append$ref$ |s0_$5| |s1_$5|)) (+ (Seq@Length$ref$ |s0_$5|) (Seq@Length$ref$ |s1_$5|)))  :pattern ( (Seq@Length$ref$ (Seq@Append$ref$ |s0_$5| |s1_$5|))))) :named ax_226))
   (assert (! (forall( (|t_$0_$0| Int))(!(= (Seq@Index$Int$ (Seq@Singleton$Int$ |t_$0_$0|) 0) |t_$0_$0|)  :pattern ( (Seq@Index$Int$ (Seq@Singleton$Int$ |t_$0_$0|) 0)))) :named ax_227))
   (assert (! (forall( (|t_$0_$1| ref))(!(= (Seq@Index$ref$ (Seq@Singleton$ref$ |t_$0_$1|) 0) |t_$0_$1|)  :pattern ( (Seq@Index$ref$ (Seq@Singleton$ref$ |t_$0_$1|) 0)))) :named ax_228))
   (assert (! (forall( (|t_$2| Int))(!(= (Seq@Length$Int$ (Seq@Singleton$Int$ |t_$2|)) 1)  :pattern ( (Seq@Length$Int$ (Seq@Singleton$Int$ |t_$2|))))) :named ax_229))
   (assert (! (forall( (|t_$3| ref))(!(= (Seq@Length$ref$ (Seq@Singleton$ref$ |t_$3|)) 1)  :pattern ( (Seq@Length$ref$ (Seq@Singleton$ref$ |t_$3|))))) :named ax_230))
   (assert (! (forall( (|x_$1| ref))(!(not (Seq@Contains$ref$ Seq@Empty$ref$ |x_$1|))  :pattern ( (Seq@Contains$ref$ Seq@Empty$ref$ |x_$1|)))) :named ax_231))
   (assert (! (forall( (|x_$6_$0| Int) (|y_$0_$0| Int))(!(= (Seq@Contains$Int$ (Seq@Singleton$Int$ |x_$6_$0|) |y_$0_$0|) (= |x_$6_$0| |y_$0_$0|))  :pattern ( (Seq@Contains$Int$ (Seq@Singleton$Int$ |x_$6_$0|) |y_$0_$0|)))) :named ax_232))
   (assert (! (forall( (|x_$6_$1| ref) (|y_$0_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Singleton$ref$ |x_$6_$1|) |y_$0_$1|) (= |x_$6_$1| |y_$0_$1|))  :pattern ( (Seq@Contains$ref$ (Seq@Singleton$ref$ |x_$6_$1|) |y_$0_$1|)))) :named ax_233))
   (assert (! (forall( (|x| Int) (|y| Int))(=> (and (<= 0 |x|) (<= |x| |y|)) (<= (Fractions |x|) (Fractions |y|)))) :named ax_234))
   (assert (! (IsGoodMask Mask) :named ax_235))
   (assert (! (IsGoodMask Mask@0) :named ax_236))
   (assert (! (IsGoodMask Mask@1) :named ax_237))
   (assert (! (IsGoodMask Mask@2) :named ax_238))
   (assert (! (IsGoodMask Mask@3) :named ax_239))
   (assert (! (IsGoodMask Mask@3) :named ax_240))
   (assert (! (IsGoodMask SecMask) :named ax_241))
   (assert (! (IsGoodMask ZeroMask) :named ax_242))
   (assert (! (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.balanceFactor))) :named ax_243))
   (assert (! (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.height))) :named ax_244))
   (assert (! (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.valid))) :named ax_245))
   (assert (! (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys))) :named ax_246))
   (assert (! (IsGoodState emptyPartialHeap) :named ax_247))
   (assert (! (NonPredicateField$Bool$ rdheld) :named ax_248))
   (assert (! (NonPredicateField$Int$ AVLTreeNode.balanceFactor) :named ax_249))
   (assert (! (NonPredicateField$Int$ AVLTreeNode.height) :named ax_250))
   (assert (! (NonPredicateField$Int$ AVLTreeNode.key) :named ax_251))
   (assert (! (NonPredicateField$Int$ forkK) :named ax_252))
   (assert (! (NonPredicateField$Int$ held) :named ax_253))
   (assert (! (NonPredicateField$Int$ joinable) :named ax_254))
   (assert (! (NonPredicateField$Mu$ mu) :named ax_255))
   (assert (! (NonPredicateField$ref$ AVLTree.root) :named ax_256))
   (assert (! (NonPredicateField$ref$ AVLTreeNode.left) :named ax_257))
   (assert (! (NonPredicateField$ref$ AVLTreeNode.right) :named ax_258))
   (assert (! (NonPredicateField$Seq$Int$$ AVLTree.keys) :named ax_259))
   (assert (! (NonPredicateField$Seq$Int$$ AVLTreeNode.keys) :named ax_260))
   (assert (! (not (= AVLTree.keys AVLTreeNode.keys)) :named ax_261))
   (assert (! (not (= AVLTree.root AVLTreeNode.left)) :named ax_262))
   (assert (! (not (= AVLTree.root AVLTreeNode.right)) :named ax_263))
   (assert (! (not (= AVLTree.valid AVLTreeNode.balanceFactor)) :named ax_264))
   (assert (! (not (= AVLTree.valid AVLTreeNode.height)) :named ax_265))
   (assert (! (not (= AVLTree.valid AVLTreeNode.key)) :named ax_266))
   (assert (! (not (= AVLTree.valid AVLTreeNode.valid)) :named ax_267))
   (assert (! (not (= AVLTreeNode.balanceFactor AVLTree.valid)) :named ax_268))
   (assert (! (not (= AVLTreeNode.balanceFactor AVLTreeNode.valid)) :named ax_269))
   (assert (! (not (= AVLTreeNode.height AVLTree.valid)) :named ax_270))
   (assert (! (not (= AVLTreeNode.height AVLTreeNode.balanceFactor)) :named ax_271))
   (assert (! (not (= AVLTreeNode.height AVLTreeNode.balanceFactor)) :named ax_272))
   (assert (! (not (= AVLTreeNode.height AVLTreeNode.valid)) :named ax_273))
   (assert (! (not (= AVLTreeNode.key AVLTree.valid)) :named ax_274))
   (assert (! (not (= AVLTreeNode.key AVLTreeNode.balanceFactor)) :named ax_275))
   (assert (! (not (= AVLTreeNode.key AVLTreeNode.balanceFactor)) :named ax_276))
   (assert (! (not (= AVLTreeNode.key AVLTreeNode.height)) :named ax_277))
   (assert (! (not (= AVLTreeNode.key AVLTreeNode.height)) :named ax_278))
   (assert (! (not (= AVLTreeNode.key AVLTreeNode.valid)) :named ax_279))
   (assert (! (not (= AVLTreeNode.keys AVLTree.keys)) :named ax_280))
   (assert (! (not (= AVLTreeNode.left AVLTree.root)) :named ax_281))
   (assert (! (not (= AVLTreeNode.left AVLTreeNode.right)) :named ax_282))
   (assert (! (not (= AVLTreeNode.right AVLTree.root)) :named ax_283))
   (assert (! (not (= AVLTreeNode.right AVLTreeNode.left)) :named ax_284))
   (assert (! (not (= AVLTreeNode.valid AVLTree.valid)) :named ax_285))
   (assert (! (not (= AVLTreeNode.valid AVLTreeNode.balanceFactor)) :named ax_286))
   (assert (! (not (= AVLTreeNode.valid AVLTreeNode.height)) :named ax_287))
   (assert (! (not (= AVLTreeNode.valid AVLTreeNode.key)) :named ax_288))
   (assert (! (not (= forkK AVLTree.valid)) :named ax_289))
   (assert (! (not (= forkK AVLTree.valid)) :named ax_290))
   (assert (! (not (= forkK AVLTreeNode.balanceFactor)) :named ax_291))
   (assert (! (not (= forkK AVLTreeNode.balanceFactor)) :named ax_292))
   (assert (! (not (= forkK AVLTreeNode.height)) :named ax_293))
   (assert (! (not (= forkK AVLTreeNode.height)) :named ax_294))
   (assert (! (not (= forkK AVLTreeNode.key)) :named ax_295))
   (assert (! (not (= forkK AVLTreeNode.key)) :named ax_296))
   (assert (! (not (= forkK AVLTreeNode.valid)) :named ax_297))
   (assert (! (not (= forkK AVLTreeNode.valid)) :named ax_298))
   (assert (! (not (= forkK held)) :named ax_299))
   (assert (! (not (= held AVLTree.valid)) :named ax_300))
   (assert (! (not (= held AVLTree.valid)) :named ax_301))
   (assert (! (not (= held AVLTreeNode.balanceFactor)) :named ax_302))
   (assert (! (not (= held AVLTreeNode.balanceFactor)) :named ax_303))
   (assert (! (not (= held AVLTreeNode.height)) :named ax_304))
   (assert (! (not (= held AVLTreeNode.height)) :named ax_305))
   (assert (! (not (= held AVLTreeNode.key)) :named ax_306))
   (assert (! (not (= held AVLTreeNode.key)) :named ax_307))
   (assert (! (not (= held AVLTreeNode.valid)) :named ax_308))
   (assert (! (not (= held AVLTreeNode.valid)) :named ax_309))
   (assert (! (not (= held forkK)) :named ax_310))
   (assert (! (not (= joinable AVLTree.valid)) :named ax_311))
   (assert (! (not (= joinable AVLTree.valid)) :named ax_312))
   (assert (! (not (= joinable AVLTreeNode.balanceFactor)) :named ax_313))
   (assert (! (not (= joinable AVLTreeNode.balanceFactor)) :named ax_314))
   (assert (! (not (= joinable AVLTreeNode.height)) :named ax_315))
   (assert (! (not (= joinable AVLTreeNode.height)) :named ax_316))
   (assert (! (not (= joinable AVLTreeNode.key)) :named ax_317))
   (assert (! (not (= joinable AVLTreeNode.key)) :named ax_318))
   (assert (! (not (= joinable AVLTreeNode.valid)) :named ax_319))
   (assert (! (not (= joinable AVLTreeNode.valid)) :named ax_320))
   (assert (! (not (= joinable forkK)) :named ax_321))
   (assert (! (not (= joinable forkK)) :named ax_322))
   (assert (! (not (= joinable held)) :named ax_323))
   (assert (! (not (= joinable held)) :named ax_324))
   (assert (! (not (= perm$R perm$N)) :named ax_325))
   (assert (! (not (= perm$R perm$N)) :named ax_326))
   (assert (! (not (= this null)) :named ax_327))
   (assert (! (not (= this null)) :named ax_328))
   (assert (! (not (= this null)) :named ax_329))
   (assert (! (not (= this null)) :named ax_330))
   (assert (! (not (= this null)) :named ax_331))
   (assert (! (not (= this null)) :named ax_332))
   (assert (! (or (= m@252 null) (= (dtype m@252) AVLTreeNode@t)) :named ax_333))
   (assert (! (or (= m@256 null) (= (dtype m@256) AVLTreeNode@t)) :named ax_334))
   (assert (! (or (= nl@24 null) (= (dtype nl@24) AVLTreeNode@t)) :named ax_335))
   (assert (! (or (= nl@28 null) (= (dtype nl@28) AVLTreeNode@t)) :named ax_336))
   (assert (! (or (= nr@26 null) (= (dtype nr@26) AVLTreeNode@t)) :named ax_337))
   (assert (! (or (= nr@32 null) (= (dtype nr@32) AVLTreeNode@t)) :named ax_338))
   (assert (! (or (= r@20 null) (= (dtype r@20) AVLTreeNode@t)) :named ax_339))
   (assert (! (or (= r@251 null) (= (dtype r@251) AVLTreeNode@t)) :named ax_340))
   (assert (! (or (= r@255 null) (= (dtype r@255) AVLTreeNode@t)) :named ax_341))
   (assert (! (or (= r@271 null) (= (dtype r@271) AVLTreeNode@t)) :named ax_342))
   (assert (! (or (= r@277 null) (= (dtype r@277) AVLTreeNode@t)) :named ax_343))
   (assert (! (or (= r@294 null) (= (dtype r@294) AVLTreeNode@t)) :named ax_344))
   (assert (! (or (= r@300 null) (= (dtype r@300) AVLTreeNode@t)) :named ax_345))
   (assert (! (or (= this null) (= (dtype this) AVLTreeNode@t)) :named ax_346))
   (assert (! (or (= this@248 null) (= (dtype this@248) AVLTreeNode@t)) :named ax_347))
   (assert (! (or (= this@250 null) (= (dtype this@250) AVLTreeNode@t)) :named ax_348))
   (assert (! (or (= this@254 null) (= (dtype this@254) AVLTreeNode@t)) :named ax_349))
   (assert (! (or (= this@264 null) (= (dtype this@264) AVLTreeNode@t)) :named ax_350))
   (assert (! (or (= this@269 null) (= (dtype this@269) AVLTreeNode@t)) :named ax_351))
   (assert (! (or (= this@274 null) (= (dtype this@274) AVLTreeNode@t)) :named ax_352))
   (assert (! (or (= this@276 null) (= (dtype this@276) AVLTreeNode@t)) :named ax_353))
   (assert (! (or (= this@282 null) (= (dtype this@282) AVLTreeNode@t)) :named ax_354))
   (assert (! (or (= this@287 null) (= (dtype this@287) AVLTreeNode@t)) :named ax_355))
   (assert (! (or (= this@292 null) (= (dtype this@292) AVLTreeNode@t)) :named ax_356))
   (assert (! (or (= this@297 null) (= (dtype this@297) AVLTreeNode@t)) :named ax_357))
   (assert (! (or (= this@299 null) (= (dtype this@299) AVLTreeNode@t)) :named ax_358))
   (assert (! (or (= this@305 null) (= (dtype this@305) AVLTreeNode@t)) :named ax_359))
   (assert (! (or (= this@310 null) (= (dtype this@310) AVLTreeNode@t)) :named ax_360))
   (assert (! (PredicateField$Int$ AVLTree.valid) :named ax_361))
   (assert (! (PredicateField$Int$ AVLTreeNode.valid) :named ax_362))
   (assert (! (wf Heap Mask SecMask) :named ax_363))
   (assert (! (wf Heap Mask@0 ZeroMask) :named ax_364))
   (assert (! (wf Heap Mask@0 ZeroMask) :named ax_365))
   (assert (! (wf Heap Mask@0 ZeroMask) :named ax_366))
   (assert (! (wf Heap Mask@1 ZeroMask) :named ax_367))
   (assert (! (wf Heap Mask@1 ZeroMask) :named ax_368))
   (assert (! (wf Heap Mask@1 ZeroMask) :named ax_369))
   (assert (! (wf Heap Mask@2 ZeroMask) :named ax_370))
   (assert (! (wf Heap Mask@2 ZeroMask) :named ax_371))
   (assert (! (wf Heap Mask@2 ZeroMask) :named ax_372))
   (assert (! (wf Heap Mask@3 ZeroMask) :named ax_373))
   (assert (! (wf Heap Mask@3 ZeroMask) :named ax_374))
   (assert (! (wf Heap Mask@3 ZeroMask) :named ax_375))
   (assert (! (wf Heap ZeroMask ZeroMask) :named ax_376))
   (assert (! CanAssumeFunctionDefs :named ax_377))

;Program
(assert (not
(let ((anon861_assertion (and
    (forall( (|lk#_922| ref))(!(or (and (= (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_916@0 |lk#_922| held)) (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap |lk#_922| held))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ exhaleHeap@_916@0 |lk#_922| rdheld) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap |lk#_922| rdheld))) false)  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_916@0 |lk#_922| held)) :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ exhaleHeap@_916@0 |lk#_922| rdheld))))
)))
(let ((anon1201_Then_assertion (and
    (forall( (|k#92#288| Int))(=> (and (<= 0 |k#92#288|) (< |k#92#288| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) |k#92#288|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key))))
)))
(let ((anon1263_Then_assertion (and
    (forall( (|k#92#311| Int))(=> (and (<= 0 |k#92#311|) (< |k#92#311| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) |k#92#311|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key))))
)))
(let ((anon1202_Then_assertion (and
    (forall( (|k#93#289| Int))(=> (and (<= 0 |k#93#289|) (< |k#93#289| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) |k#93#289|))))
)))
(let ((anon1264_Then_assertion (and
    (forall( (|k#93#312| Int))(=> (and (<= 0 |k#93#312|) (< |k#93#312| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) |k#93#312|))))
)))
(let ((anon1243_Then@2_assertion (and
    (forall( (|k#94#301| Int))(=> (and (<= 0 |k#94#301|) (< |k#94#301| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys) |k#94#301|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 this AVLTreeNode.key))))
)))
(let ((anon1182_Then_assertion (and
    (forall( (|k#104#278| Int))(=> (and (<= 0 |k#104#278|) (< |k#104#278| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys) |k#104#278|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 this AVLTreeNode.key))))
)))
(let ((anon1189_Then_assertion (and
    (forall( (|k#92#283| Int))(=> (and (<= 0 |k#92#283|) (< |k#92#283| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys) |k#92#283|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 this AVLTreeNode.key))))
)))
(let ((anon1244_Then_assertion (and
    (forall( (|k#95#302| Int))(=> (and (<= 0 |k#95#302|) (< |k#95#302| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys) |k#95#302|))))
)))
(let ((anon1251_Then_assertion (and
    (forall( (|k#92#306| Int))(=> (and (<= 0 |k#92#306|) (< |k#92#306| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys) |k#92#306|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 this AVLTreeNode.key))))
)))
(let ((anon639@1_assertion (and
    (forall( (|k#105#279| Int))(=> (and (<= 0 |k#105#279|) (< |k#105#279| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys) |k#105#279|))))
)))
(let ((anon1190_Then_assertion (and
    (forall( (|k#93#284| Int))(=> (and (<= 0 |k#93#284|) (< |k#93#284| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys) |k#93#284|))))
)))
(let ((anon1252_Then_assertion (and
    (forall( (|k#93#307| Int))(=> (and (<= 0 |k#93#307|) (< |k#93#307| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys) |k#93#307|))))
)))
(let ((anon1138_Then_assertion (and
    (forall( (|k#92#265| Int))(=> (and (<= 0 |k#92#265|) (< |k#92#265| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.keys) |k#92#265|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@8 r@20@0 AVLTreeNode.key))))
)))
(let ((anon1139_Then_assertion (and
    (forall( (|k#93#266| Int))(=> (and (<= 0 |k#93#266|) (< |k#93#266| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@8 r@20@0 AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.keys) |k#93#266|))))
)))
(let ((anon1278_Then_assertion (and
    (forall( (|i#84#315| Int))(=> (and (<= 0 |i#84#315|) (< |i#84#315| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys)))) (or (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@9 r@20@3 AVLTreeNode.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) |i#84#315|)) (= (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) |i#84#315|) k@19))))
)))
(let ((anon1279_Then_assertion (and
    (forall( (|i#85#316| Int))(=> (and (<= 0 |i#85#316|) (< |i#85#316| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@9 r@20@3 AVLTreeNode.keys)))) (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@9 r@20@3 AVLTreeNode.keys) |i#85#316|)) (not (= (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@9 r@20@3 AVLTreeNode.keys) |i#85#316|) k@19)))))
)))
(let ((anon1065_Then@1_assertion (and
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R) 0)
)))
(let ((anon1066_Then@1_assertion (and
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R) 0)
)))
(let ((anon1169_Then@1_assertion (and
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.height) perm$R) 0)
)))
(let ((anon1170_Then@1_assertion (and
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.height) perm$R) 0)
)))
(let ((anon1231_Then@1_assertion (and
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.left) AVLTreeNode.height) perm$R) 0)
)))
(let ((anon1232_Then@1_assertion (and
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.right) AVLTreeNode.height) perm$R) 0)
)))
(let ((anon407@1_assertion (and
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_636@2 this AVLTreeNode.right) perm$R) 0)
)))
(let ((anon614@1_assertion (and
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_738@2 this AVLTreeNode.right) perm$R) 0)
)))
(let ((anon738@1_assertion (and
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_837@2 this AVLTreeNode.right) perm$R) 0)
)))
(let ((anon903_Else@6_assertion (and
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@26 this AVLTreeNode.left) perm$R) 0)
)))
(let ((anon736@3_assertion (and
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@38 this AVLTreeNode.left) perm$R) 0)
)))
(let ((anon612@3_assertion (and
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@68 this AVLTreeNode.left) perm$R) 0)
)))
(let ((anon1077_Else@1_assertion (and
    (=> true (CanRead$ref$ Mask@96 ZeroMask this AVLTreeNode.right))
)))
(let ((anon1077_Then@1_assertion (and
    (=> true (CanRead$ref$ Mask@96 ZeroMask this AVLTreeNode.left))
)))
(let ((anon1150_Else@1_assertion (and
    (=> true (CanRead$ref$ Mask@26 ZeroMask this AVLTreeNode.right))
)))
(let ((anon1150_Then@1_assertion (and
    (=> true (CanRead$ref$ Mask@26 ZeroMask this AVLTreeNode.left))
)))
(let ((anon1275_Then_assertion (and
    (= r@20@3 null)
)))
(let ((anon1281_Then_assertion (and
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@9 r@20@3 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys))
)))
(let ((anon1283_Then_assertion (and
    (= (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@9 r@20@3 AVLTreeNode.keys)) (- (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys)) 1))
)))
(let ((anon1285_Then_assertion (and
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@9 r@20@3 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.height)) (= (+ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@9 r@20@3 AVLTreeNode.height) 1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.height)))
)))
(let ((anon1286_Then_assertion (and
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@9 r@20@3 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.height))
)))
(let ((anon241@1_assertion (and
    (=> true (CanRead$ref$ unfoldingMask@_538@22 ZeroMask this AVLTreeNode.right))
)))
(let ((anon241@3_assertion (and
    (=> true (CanRead$Seq$Int$$ unfoldingMask@_538@22 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.keys))
)))
(let ((anon401@1_assertion (and
    (=> true (CanRead$ref$ unfoldingMask@_587@22 ZeroMask this AVLTreeNode.left))
)))
(let ((anon401@3_assertion (and
    (=> true (CanRead$Seq$Int$$ unfoldingMask@_587@22 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.keys))
)))
(let ((anon552@1_assertion (and
    (CanWrite$ref$ Mask@144 r@20@0 AVLTreeNode.right)
)))
(let ((anon552_assertion (and
    (CanWrite$ref$ Mask@144 r@20@0 AVLTreeNode.left)
)))
(let ((anon612_assertion (and
    (CanWrite$ref$ Mask@68 this AVLTreeNode.left)
)))
(let ((anon639@2_assertion (and
    (= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height)) (- 0 2))
)))
(let ((anon736_assertion (and
    (CanWrite$ref$ Mask@38 this AVLTreeNode.right)
)))
(let ((anon763_assertion (and
    (= (- (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height))) 2)
)))
(let ((anon80@1_assertion (and
    (=> true (CanRead$Int$ Mask@26 ZeroMask this AVLTreeNode.key))
)))
(let ((anon861@1_assertion (and
    (forall( (|ch| ref))(or (= |ch| null) (<= 0 (MapRead$$@Map@@ref@To@Int@@$ ZeroCredits |ch|))))
)))
(let ((anon902_Then@1_assertion (and
    (=> true (CanRead$ref$ Mask@26 ZeroMask this AVLTreeNode.left))
)))
(let ((anon902_Then@3_assertion (and
    (=> (and true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))) (CanRead$ref$ Mask@26 ZeroMask this AVLTreeNode.right))
)))
(let ((anon903_Else@3_assertion (and
    (=> true (CanRead$ref$ Mask@26 ZeroMask this AVLTreeNode.right))
)))
(let ((anon903_Then@1_assertion (and
    (=> true (CanRead$ref$ Mask@26 ZeroMask this AVLTreeNode.right))
)))
(let ((anon681@1_assertion (and
    (>= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height))) (- 0 1))
)))
(let ((anon805@1_assertion (and
    (>= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height))) (- 0 1))
)))
(let ((anon656@1_assertion (and
    (>= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height))) (- 0 1))
)))
(let ((anon780@1_assertion (and
    (>= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height))) (- 0 1))
)))
(let ((anon556@1_assertion (and
    (>= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.height))) (- 0 1))
)))
(let ((anon681_assertion (and
    (<= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height))) 1)
)))
(let ((anon805_assertion (and
    (<= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height))) 1)
)))
(let ((anon656_assertion (and
    (<= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height))) 1)
)))
(let ((anon780_assertion (and
    (<= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height))) 1)
)))
(let ((anon556_assertion (and
    (<= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.height))) 1)
)))
(let ((anon1067_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
)))
(let ((anon1069_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
)))
(let ((anon432@3_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_652@1 this@250@0 AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_652@1 this@250@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_652@1 this@250@0 AVLTreeNode.height) perm$N)))
)))
(let ((anon432@5_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_652@2 this@250@0 AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_652@2 this@250@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_652@2 this@250@0 AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon453@3_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_665@1 this@254@0 AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_665@1 this@254@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_665@1 this@254@0 AVLTreeNode.height) perm$N)))
)))
(let ((anon453@5_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_665@2 this@254@0 AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_665@2 this@254@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_665@2 this@254@0 AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon556@5_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@0 r@20@0 AVLTreeNode.height) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@0 r@20@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@0 r@20@0 AVLTreeNode.height) perm$N)))
)))
(let ((anon1144_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon1145_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
)))
(let ((anon1147_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.height) perm$N)))
)))
(let ((anon1149_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon556@13_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@4 r@20@0 AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@4 r@20@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@4 r@20@0 AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon1140_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
)))
(let ((anon1142_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.height) perm$N)))
)))
(let ((anon581@3_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_725@1 this@269@0 AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_725@1 this@269@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_725@1 this@269@0 AVLTreeNode.height) perm$N)))
)))
(let ((anon581@5_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_725@2 this@269@0 AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_725@2 this@269@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_725@2 this@269@0 AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon1171_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
)))
(let ((anon1173_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
)))
(let ((anon639@6_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@0 this AVLTreeNode.height) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@0 this AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@0 this AVLTreeNode.height) perm$N)))
)))
(let ((anon1187_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon649@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
)))
(let ((anon651@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height) perm$N)))
)))
(let ((anon651@5_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon639@14_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@4 this AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@4 this AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@4 this AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon1183_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
)))
(let ((anon1185_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height) perm$N)))
)))
(let ((anon656@5_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@0 this AVLTreeNode.height) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@0 this AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@0 this AVLTreeNode.height) perm$N)))
)))
(let ((anon1195_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon1196_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
)))
(let ((anon1198_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height) perm$N)))
)))
(let ((anon1200_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon656@13_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@4 this AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@4 this AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@4 this AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon1191_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
)))
(let ((anon1193_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height) perm$N)))
)))
(let ((anon681@5_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@0 this AVLTreeNode.height) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@0 this AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@0 this AVLTreeNode.height) perm$N)))
)))
(let ((anon1207_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon1208_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
)))
(let ((anon1210_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$N)))
)))
(let ((anon1212_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon681@13_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@4 this AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@4 this AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@4 this AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon1203_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
)))
(let ((anon1205_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$N)))
)))
(let ((anon705@3_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_824@1 this@292@0 AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_824@1 this@292@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_824@1 this@292@0 AVLTreeNode.height) perm$N)))
)))
(let ((anon705@5_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_824@2 this@292@0 AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_824@2 this@292@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_824@2 this@292@0 AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon1233_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
)))
(let ((anon1235_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
)))
(let ((anon763@4_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@0 this AVLTreeNode.height) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@0 this AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@0 this AVLTreeNode.height) perm$N)))
)))
(let ((anon1248_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height) perm$N)))
)))
(let ((anon1250_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon763@12_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@4 this AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@4 this AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@4 this AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon763@14_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
)))
(let ((anon765@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height) perm$N)))
)))
(let ((anon765@5_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon1246_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
)))
(let ((anon780@5_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@0 this AVLTreeNode.height) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@0 this AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@0 this AVLTreeNode.height) perm$N)))
)))
(let ((anon1257_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon1258_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
)))
(let ((anon1260_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height) perm$N)))
)))
(let ((anon1262_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon780@13_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@4 this AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@4 this AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@4 this AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon1253_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
)))
(let ((anon1255_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height) perm$N)))
)))
(let ((anon805@5_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@0 this AVLTreeNode.height) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@0 this AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@0 this AVLTreeNode.height) perm$N)))
)))
(let ((anon1269_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon1270_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
)))
(let ((anon1272_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$N)))
)))
(let ((anon1274_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon805@13_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@4 this AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@4 this AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@4 this AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon1265_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
)))
(let ((anon1267_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$N)))
)))
(let ((anon1290_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_917@3 r@20@3 AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_917@3 r@20@3 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_917@3 r@20@3 AVLTreeNode.height) perm$N)))
)))
(let ((anon1291_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_917@5 r@20@3 AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_917@5 r@20@3 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_917@5 r@20@3 AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon472@2_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@121 r@20@0 AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@121 r@20@0 AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@121 r@20@0 AVLTreeNode.valid) perm$N)))
)))
(let ((anon556@3_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@144 r@20@0 AVLTreeNode.key) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@144 r@20@0 AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@144 r@20@0 AVLTreeNode.key) perm$N)))
)))
(let ((anon1287_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@149 r@20@3 AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@149 r@20@3 AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@149 r@20@3 AVLTreeNode.valid) perm$N)))
)))
(let ((anon984_Then@4_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
)))
(let ((anon904_Then@4_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
)))
(let ((anon681@3_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this AVLTreeNode.key) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this AVLTreeNode.key) perm$N)))
)))
(let ((anon805@3_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this AVLTreeNode.key) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this AVLTreeNode.key) perm$N)))
)))
(let ((anon1151_Then@4_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@269@0 AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@269@0 AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@269@0 AVLTreeNode.valid) perm$N)))
)))
(let ((anon1213_Then@4_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@292@0 AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@292@0 AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@292@0 AVLTreeNode.valid) perm$N)))
)))
(let ((anon0@2_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@3 this AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@3 this AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@3 this AVLTreeNode.valid) perm$N)))
)))
(let ((anon763@2_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@48 this AVLTreeNode.key) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@48 this AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@48 this AVLTreeNode.key) perm$N)))
)))
(let ((anon780@3_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@48 this AVLTreeNode.key) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@48 this AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@48 this AVLTreeNode.key) perm$N)))
)))
(let ((anon639@4_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@78 this AVLTreeNode.key) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@78 this AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@78 this AVLTreeNode.key) perm$N)))
)))
(let ((anon656@3_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@78 this AVLTreeNode.key) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@78 this AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@78 this AVLTreeNode.key) perm$N)))
)))
(let ((anon1077_Then@4_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@96 this@250@0 AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@96 this@250@0 AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@96 this@250@0 AVLTreeNode.valid) perm$N)))
)))
(let ((anon1077_Else@4_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@96 this@254@0 AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@96 this@254@0 AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@96 this@254@0 AVLTreeNode.valid) perm$N)))
)))
(let ((anon556@7_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_700@1 r@20@0 AVLTreeNode.left) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_700@1 r@20@0 AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_700@1 r@20@0 AVLTreeNode.left) perm$N)))
)))
(let ((anon556@9_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_700@2 r@20@0 AVLTreeNode.right) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_700@2 r@20@0 AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_700@2 r@20@0 AVLTreeNode.right) perm$N)))
)))
(let ((anon639@8_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_754@1 this AVLTreeNode.left) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_754@1 this AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_754@1 this AVLTreeNode.left) perm$N)))
)))
(let ((anon639@10_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_754@2 this AVLTreeNode.right) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_754@2 this AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_754@2 this AVLTreeNode.right) perm$N)))
)))
(let ((anon656@7_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_777@1 this AVLTreeNode.left) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_777@1 this AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_777@1 this AVLTreeNode.left) perm$N)))
)))
(let ((anon656@9_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_777@2 this AVLTreeNode.right) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_777@2 this AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_777@2 this AVLTreeNode.right) perm$N)))
)))
(let ((anon681@7_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_800@1 this AVLTreeNode.left) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_800@1 this AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_800@1 this AVLTreeNode.left) perm$N)))
)))
(let ((anon681@9_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_800@2 this AVLTreeNode.right) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_800@2 this AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_800@2 this AVLTreeNode.right) perm$N)))
)))
(let ((anon763@6_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_853@1 this AVLTreeNode.left) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_853@1 this AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_853@1 this AVLTreeNode.left) perm$N)))
)))
(let ((anon763@8_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_853@2 this AVLTreeNode.right) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_853@2 this AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_853@2 this AVLTreeNode.right) perm$N)))
)))
(let ((anon780@7_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_876@1 this AVLTreeNode.left) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_876@1 this AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_876@1 this AVLTreeNode.left) perm$N)))
)))
(let ((anon780@9_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_876@2 this AVLTreeNode.right) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_876@2 this AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_876@2 this AVLTreeNode.right) perm$N)))
)))
(let ((anon805@7_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_899@1 this AVLTreeNode.left) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_899@1 this AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_899@1 this AVLTreeNode.left) perm$N)))
)))
(let ((anon805@9_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_899@2 this AVLTreeNode.right) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_899@2 this AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_899@2 this AVLTreeNode.right) perm$N)))
)))
(let ((anon432@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_652@0 this@250@0 AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_652@0 this@250@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_652@0 this@250@0 AVLTreeNode.keys) perm$N)))
)))
(let ((anon453@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_665@0 this@254@0 AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_665@0 this@254@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_665@0 this@254@0 AVLTreeNode.keys) perm$N)))
)))
(let ((anon1148_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
)))
(let ((anon556@11_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@3 r@20@0 AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@3 r@20@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@3 r@20@0 AVLTreeNode.keys) perm$N)))
)))
(let ((anon1143_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
)))
(let ((anon581@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_725@0 this@269@0 AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_725@0 this@269@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_725@0 this@269@0 AVLTreeNode.keys) perm$N)))
)))
(let ((anon651@3_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
)))
(let ((anon639@12_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@3 this AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@3 this AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@3 this AVLTreeNode.keys) perm$N)))
)))
(let ((anon1186_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
)))
(let ((anon1199_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
)))
(let ((anon656@11_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@3 this AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@3 this AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@3 this AVLTreeNode.keys) perm$N)))
)))
(let ((anon1194_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
)))
(let ((anon1211_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
)))
(let ((anon681@11_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@3 this AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@3 this AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@3 this AVLTreeNode.keys) perm$N)))
)))
(let ((anon1206_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
)))
(let ((anon705@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_824@0 this@292@0 AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_824@0 this@292@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_824@0 this@292@0 AVLTreeNode.keys) perm$N)))
)))
(let ((anon1249_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
)))
(let ((anon763@10_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@3 this AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@3 this AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@3 this AVLTreeNode.keys) perm$N)))
)))
(let ((anon765@3_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
)))
(let ((anon1261_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
)))
(let ((anon780@11_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@3 this AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@3 this AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@3 this AVLTreeNode.keys) perm$N)))
)))
(let ((anon1256_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
)))
(let ((anon1273_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
)))
(let ((anon805@11_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@3 this AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@3 this AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@3 this AVLTreeNode.keys) perm$N)))
)))
(let ((anon1268_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
)))
(let ((anon1289_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_917@1 r@20@3 AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_917@1 r@20@3 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_917@1 r@20@3 AVLTreeNode.keys) perm$N)))
)))
(let ((anon1077_Else@2_assertion (and
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.right) null))
)))
(let ((anon1077_Then@2_assertion (and
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.left) null))
)))
(let ((anon1151_Then@2_assertion (and
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
)))
(let ((anon1213_Then@2_assertion (and
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
)))
(let ((anon1243_Then@1_assertion (and
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null))
)))
(let ((anon1276_Then_assertion (and
    (not (= r@20@3 null))
)))
(let ((anon1277_Then_assertion (and
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@9 r@20@3 AVLTreeNode.keys) k@19))
)))
(let ((anon1280_Then_assertion (and
    (not (= r@20@3 null))
)))
(let ((anon1284_Then_assertion (and
    (not (= r@20@3 null))
)))
(let ((anon241@4_assertion (and
    (not (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) Seq@Empty$Int$))
)))
(let ((anon401@4_assertion (and
    (not (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) Seq@Empty$Int$))
)))
(let ((anon472_assertion (and
    (not (= r@20@0 null))
)))
(let ((anon639_assertion (and
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null))
)))
(let ((anon861@1 (=> (and true
    (forall( (|lk#_922| ref))(!(or (and (= (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_916@0 |lk#_922| held)) (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap |lk#_922| held))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ exhaleHeap@_916@0 |lk#_922| rdheld) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap |lk#_922| rdheld))) false)  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_916@0 |lk#_922| held)) :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ exhaleHeap@_916@0 |lk#_922| rdheld))))
  )
    anon861@1_assertion
)))
(let ((anon861 (=> (and true
    (IsGoodExhaleState exhaleHeap@_916@0 Heap@9 exhaleMask@_917@7 ZeroMask)
    (IsGoodMask exhaleMask@_917@7)
    (wf exhaleHeap@_916@0 exhaleMask@_917@7 ZeroMask)
  )(and 
    anon861_assertion
    anon861@1
))))
(let ((anon1287_Else (=> (and true
    (= exhaleMask@_917@1 Mask@149)
    (= exhaleMask@_917@3 exhaleMask@_917@1)
    (= exhaleMask@_917@5 exhaleMask@_917@3)
    (= exhaleMask@_917@7 exhaleMask@_917@5)
    (= r@20@3 null)
    (= r@20@3 null)
    (= r@20@3 null)
    (= r@20@3 null)
    (= r@20@3 null)
  )
    anon861
)))
(let ((anon1291_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_917@5 r@20@3 AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_917@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_917@5 r@20@3 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_917@5 r@20@3 AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_917@5 r@20@3 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= exhaleMask@_917@7 exhaleMask@_917@6)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_917@5 r@20@3 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_917@5 r@20@3 AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_917@6)
    (not (= r@20@3 null))
    (wf Heap@9 exhaleMask@_917@6 ZeroMask)
    (wf Heap@9 Mask@149 ZeroMask)
  )
    anon861
)))
(let ((anon1290_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_917@3 r@20@3 AVLTreeNode.height) perm$R))
    (= exhaleMask@_917@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_917@3 r@20@3 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_917@3 r@20@3 AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_917@3 r@20@3 AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= exhaleMask@_917@5 exhaleMask@_917@4)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_917@3 r@20@3 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_917@3 r@20@3 AVLTreeNode.height) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_917@4)
    (not (= r@20@3 null))
    (wf Heap@9 exhaleMask@_917@4 ZeroMask)
    (wf Heap@9 Mask@149 ZeroMask)
  )(and 
    anon1291_Then@1_assertion
    anon1291_Then@2
))))
(let ((anon1289_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_917@1 r@20@3 AVLTreeNode.keys) perm$R))
    (= exhaleMask@_917@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_917@1 r@20@3 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_917@1 r@20@3 AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_917@1 r@20@3 AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= exhaleMask@_917@3 exhaleMask@_917@2)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_917@1 r@20@3 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_917@1 r@20@3 AVLTreeNode.keys) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_917@2)
    (not (= r@20@3 null))
    (wf Heap@9 exhaleMask@_917@2 ZeroMask)
    (wf Heap@9 Mask@149 ZeroMask)
  )(and 
    anon1290_Then@1_assertion
    anon1290_Then@2
))))
(let ((anon852 (=> (and true
    (= exhaleMask@_917@1 exhaleMask@_917@0)
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_917@0)
    (not (= r@20@3 null))
    (wf Heap@9 exhaleMask@_917@0 ZeroMask)
    (wf Heap@9 Mask@149 ZeroMask)
  )(and 
    anon1289_Then@1_assertion
    anon1289_Then@2
))))
(let ((anon1288_Else (=> (and true
    (CanRead$Int$ exhaleMask@_917@0 ZeroMask r@20@3 AVLTreeNode.valid)
  )
    anon852
)))
(let ((anon1288_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@9 r@20@3 AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_916@0 r@20@3 AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_917@0 ZeroMask r@20@3 AVLTreeNode.valid))
  )
    anon852
)))
(let ((anon1287_Then@2 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@149 r@20@3 AVLTreeNode.valid) perm$R))
    (= exhaleMask@_917@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@149 r@20@3 AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@149 r@20@3 AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@149 r@20@3 AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@149 r@20@3 AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@149 r@20@3 AVLTreeNode.valid) perm$N)))
  )
    (and anon1288_Else anon1288_Then)
)))
(let ((anon1287_Then (=> (and true
    (> (Fractions 100) 0)
    (not (= r@20@3 null))
  )(and 
    anon1287_Then@1_assertion
    anon1287_Then@2
))))
(let (($branchMerge_180 (=> (and true
  )
    (and anon1287_Else anon1287_Then)
)))
(let ((anon1286_Else (=> (and true
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) k@19)
  )
    $branchMerge_180
)))
(let ((anon1286_Then@1 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@9 r@20@3 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.height))
  )
    $branchMerge_180
)))
(let ((anon1286_Then (=> (and true
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) k@19))
  )(and 
    anon1286_Then_assertion
    anon1286_Then@1
))))
(let (($branchMerge_179 (=> (and true
  )
    (and anon1286_Else anon1286_Then)
)))
(let ((anon1285_Else (=> (and true
    (= r@20@3 null)
  )
    $branchMerge_179
)))
(let ((anon1285_Then@1 (=> (and true
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@9 r@20@3 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.height)) (= (+ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@9 r@20@3 AVLTreeNode.height) 1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.height)))
  )
    $branchMerge_179
)))
(let ((anon1285_Then (=> (and true
    (not (= r@20@3 null))
  )(and 
    anon1285_Then_assertion
    anon1285_Then@1
))))
(let (($branchMerge_178 (=> (and true
  )
    (and anon1285_Else anon1285_Then)
)))
(let ((anon1284_Else (=> (and true
    (>= 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.height))
  )
    $branchMerge_178
)))
(let ((anon1284_Then@1 (=> (and true
    (not (= r@20@3 null))
  )
    $branchMerge_178
)))
(let ((anon1284_Then (=> (and true
    (> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.height) 1)
  )(and 
    anon1284_Then_assertion
    anon1284_Then@1
))))
(let (($branchMerge_177 (=> (and true
  )
    (and anon1284_Else anon1284_Then)
)))
(let ((anon1282_Else (=> (and true
    (= r@20@3 null)
  )
    $branchMerge_177
)))
(let (($join_2@5 (=> (and true
  )
    $branchMerge_177
)))
(let ((anon1283_Else (=> (and true
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) k@19))
  )
    $join_2@5
)))
(let ((anon1283_Then@1 (=> (and true
    (= (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@9 r@20@3 AVLTreeNode.keys)) (- (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys)) 1))
  )
    $join_2@5
)))
(let ((anon1283_Then (=> (and true
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) k@19)
  )(and 
    anon1283_Then_assertion
    anon1283_Then@1
))))
(let ((anon1282_Then (=> (and true
    (not (= r@20@3 null))
  )
    (and anon1283_Else anon1283_Then)
)))
(let (($branchMerge_176 (=> (and true
  )
    (and anon1282_Else anon1282_Then)
)))
(let ((anon1280_Else (=> (and true
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) k@19)
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) k@19)
  )
    $branchMerge_176
)))
(let ((anon1281_Then@1 (=> (and true
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@9 r@20@3 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys))
  )
    $branchMerge_176
)))
(let ((anon1280_Then@1 (=> (and true
    (not (= r@20@3 null))
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) k@19))
  )(and 
    anon1281_Then_assertion
    anon1281_Then@1
))))
(let ((anon1280_Then (=> (and true
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) k@19))
  )(and 
    anon1280_Then_assertion
    anon1280_Then@1
))))
(let (($branchMerge_174 (=> (and true
  )
    (and anon1280_Else anon1280_Then)
)))
(let ((anon1277_Else (=> (and true
    (= r@20@3 null)
    (= r@20@3 null)
    (= r@20@3 null)
  )
    $branchMerge_174
)))
(let ((anon1279_Then@1 (=> (and true
    (forall( (|i#85#316| Int))(=> (and (<= 0 |i#85#316|) (< |i#85#316| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@9 r@20@3 AVLTreeNode.keys)))) (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@9 r@20@3 AVLTreeNode.keys) |i#85#316|)) (not (= (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@9 r@20@3 AVLTreeNode.keys) |i#85#316|) k@19)))))
  )
    $branchMerge_174
)))
(let ((anon1278_Then@1 (=> (and true
    (forall( (|i#84#315| Int))(=> (and (<= 0 |i#84#315|) (< |i#84#315| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys)))) (or (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@9 r@20@3 AVLTreeNode.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) |i#84#315|)) (= (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) |i#84#315|) k@19))))
    (not (= r@20@3 null))
  )(and 
    anon1279_Then_assertion
    anon1279_Then@1
))))
(let ((anon1277_Then@1 (=> (and true
    (not (= r@20@3 null))
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@9 r@20@3 AVLTreeNode.keys) k@19))
  )(and 
    anon1278_Then_assertion
    anon1278_Then@1
))))
(let ((anon1277_Then (=> (and true
    (not (= r@20@3 null))
  )(and 
    anon1277_Then_assertion
    anon1277_Then@1
))))
(let (($branchMerge_171 (=> (and true
  )
    (and anon1277_Else anon1277_Then)
)))
(let ((anon1276_Else (=> (and true
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) (Seq@Singleton$Int$ k@19))
  )
    $branchMerge_171
)))
(let ((anon1276_Then@1 (=> (and true
    (not (= r@20@3 null))
  )
    $branchMerge_171
)))
(let ((anon1276_Then (=> (and true
    (not (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) (Seq@Singleton$Int$ k@19)))
  )(and 
    anon1276_Then_assertion
    anon1276_Then@1
))))
(let (($branchMerge_71 (=> (and true
  )
    (and anon1276_Else anon1276_Then)
)))
(let ((anon1275_Else (=> (and true
    (not (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) (Seq@Singleton$Int$ k@19)))
  )
    $branchMerge_71
)))
(let ((anon1275_Then@1 (=> (and true
    (= r@20@3 null)
  )
    $branchMerge_71
)))
(let ((anon1275_Then (=> (and true
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) (Seq@Singleton$Int$ k@19))
  )(and 
    anon1275_Then_assertion
    anon1275_Then@1
))))
(let (($branchMerge_69 (=> (and true
  )
    (and anon1275_Else anon1275_Then)
)))
(let (($join_$@condition_$26 (=> (and true
  )
    $branchMerge_69
)))
(let (($join_$@condition_$25 (=> (and true
  )
    $branchMerge_69
)))
(let (($join_$@condition_$30 (=> (and true
  )
    $join_$@condition_$26
)))
(let (($join_$@condition_$29 (=> (and true
  )
    $join_$@condition_$26
)))
(let ((anon576 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_699@0 r@20@0 AVLTreeNode.balanceFactor) (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.height))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_699@0 r@20@0 AVLTreeNode.height) (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= Heap@9 exhaleHeap@_699@0)
    (= Mask@145 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@21 r@20@0 AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@21 r@20@0 AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@21 r@20@0 AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@146 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@145 r@20@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@145 r@20@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@145 r@20@0 AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@147 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@146 r@20@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@146 r@20@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@146 r@20@0 AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@148 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@147 r@20@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@147 r@20@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@147 r@20@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= Mask@149 Mask@148)
    (= r@20@3 r@20@0)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (IsGoodExhaleState exhaleHeap@_699@0 Heap@8 exhaleMask@_700@21 ZeroMask)
    (IsGoodMask exhaleMask@_700@21)
    (IsGoodMask Mask@145)
    (IsGoodMask Mask@146)
    (IsGoodMask Mask@147)
    (IsGoodMask Mask@148)
    (IsGoodMask Mask@148)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_699@0 r@20@0 AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_699@0 r@20@0 AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_699@0 r@20@0 AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_699@0 r@20@0 AVLTreeNode.keys)))
    (not (= r@20@0 null))
    (not (= r@20@0 null))
    (not (= r@20@0 null))
    (not (= r@20@0 null))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_699@0 r@20@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@8 r@20@0 AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.keys))))
    (wf exhaleHeap@_699@0 exhaleMask@_700@21 ZeroMask)
    (wf exhaleHeap@_699@0 exhaleMask@_700@21 ZeroMask)
    (wf exhaleHeap@_699@0 Mask@145 ZeroMask)
    (wf exhaleHeap@_699@0 Mask@145 ZeroMask)
    (wf exhaleHeap@_699@0 Mask@145 ZeroMask)
    (wf exhaleHeap@_699@0 Mask@146 ZeroMask)
    (wf exhaleHeap@_699@0 Mask@146 ZeroMask)
    (wf exhaleHeap@_699@0 Mask@146 ZeroMask)
    (wf exhaleHeap@_699@0 Mask@147 ZeroMask)
    (wf exhaleHeap@_699@0 Mask@147 ZeroMask)
    (wf exhaleHeap@_699@0 Mask@147 ZeroMask)
    (wf exhaleHeap@_699@0 Mask@148 ZeroMask)
    (wf exhaleHeap@_699@0 Mask@148 ZeroMask)
    (wf exhaleHeap@_699@0 Mask@148 ZeroMask)
  )
    $join_$@condition_$25
)))
(let (($join_2@4 (=> (and true
  )
    $join_$@condition_$25
)))
(let ((anon825 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_898@0 this AVLTreeNode.balanceFactor) (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_898@0 this AVLTreeNode.height) (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= Heap@9 exhaleHeap@_898@0)
    (= Mask@149 Mask@30)
    (= Mask@27 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@21 this AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@21 this AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@21 this AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@28 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@27 this AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@27 this AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@27 this AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@29 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@28 this AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@28 this AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@28 this AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@30 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@29 this AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@29 this AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@29 this AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= r@20@3 this)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (IsGoodExhaleState exhaleHeap@_898@0 Heap@1 exhaleMask@_899@21 ZeroMask)
    (IsGoodMask exhaleMask@_899@21)
    (IsGoodMask Mask@27)
    (IsGoodMask Mask@28)
    (IsGoodMask Mask@29)
    (IsGoodMask Mask@30)
    (IsGoodMask Mask@30)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_898@0 this AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_898@0 this AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_898@0 this AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_898@0 this AVLTreeNode.keys)))
    (not (= this null))
    (not (= this null))
    (not (= this null))
    (not (= this null))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_898@0 this AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys))))
    (wf exhaleHeap@_898@0 exhaleMask@_899@21 ZeroMask)
    (wf exhaleHeap@_898@0 exhaleMask@_899@21 ZeroMask)
    (wf exhaleHeap@_898@0 Mask@27 ZeroMask)
    (wf exhaleHeap@_898@0 Mask@27 ZeroMask)
    (wf exhaleHeap@_898@0 Mask@27 ZeroMask)
    (wf exhaleHeap@_898@0 Mask@28 ZeroMask)
    (wf exhaleHeap@_898@0 Mask@28 ZeroMask)
    (wf exhaleHeap@_898@0 Mask@28 ZeroMask)
    (wf exhaleHeap@_898@0 Mask@29 ZeroMask)
    (wf exhaleHeap@_898@0 Mask@29 ZeroMask)
    (wf exhaleHeap@_898@0 Mask@29 ZeroMask)
    (wf exhaleHeap@_898@0 Mask@30 ZeroMask)
    (wf exhaleHeap@_898@0 Mask@30 ZeroMask)
    (wf exhaleHeap@_898@0 Mask@30 ZeroMask)
  )
    $join_$@condition_$30
)))
(let (($join_2@2 (=> (and true
  )
    $join_$@condition_$30
)))
(let ((anon701 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_799@0 this AVLTreeNode.balanceFactor) (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_799@0 this AVLTreeNode.height) (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= Heap@9 exhaleHeap@_799@0)
    (= Mask@149 Mask@60)
    (= Mask@57 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@21 this AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@21 this AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@21 this AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@58 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@57 this AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@57 this AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@57 this AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@59 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@58 this AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@58 this AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@58 this AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@60 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@59 this AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@59 this AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@59 this AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= r@20@3 this)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (IsGoodExhaleState exhaleHeap@_799@0 Heap@1 exhaleMask@_800@21 ZeroMask)
    (IsGoodMask exhaleMask@_800@21)
    (IsGoodMask Mask@57)
    (IsGoodMask Mask@58)
    (IsGoodMask Mask@59)
    (IsGoodMask Mask@60)
    (IsGoodMask Mask@60)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_799@0 this AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_799@0 this AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_799@0 this AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_799@0 this AVLTreeNode.keys)))
    (not (= this null))
    (not (= this null))
    (not (= this null))
    (not (= this null))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_799@0 this AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys))))
    (wf exhaleHeap@_799@0 exhaleMask@_800@21 ZeroMask)
    (wf exhaleHeap@_799@0 exhaleMask@_800@21 ZeroMask)
    (wf exhaleHeap@_799@0 Mask@57 ZeroMask)
    (wf exhaleHeap@_799@0 Mask@57 ZeroMask)
    (wf exhaleHeap@_799@0 Mask@57 ZeroMask)
    (wf exhaleHeap@_799@0 Mask@58 ZeroMask)
    (wf exhaleHeap@_799@0 Mask@58 ZeroMask)
    (wf exhaleHeap@_799@0 Mask@58 ZeroMask)
    (wf exhaleHeap@_799@0 Mask@59 ZeroMask)
    (wf exhaleHeap@_799@0 Mask@59 ZeroMask)
    (wf exhaleHeap@_799@0 Mask@59 ZeroMask)
    (wf exhaleHeap@_799@0 Mask@60 ZeroMask)
    (wf exhaleHeap@_799@0 Mask@60 ZeroMask)
    (wf exhaleHeap@_799@0 Mask@60 ZeroMask)
  )
    $join_$@condition_$29
)))
(let (($join_2@3 (=> (and true
  )
    $join_$@condition_$29
)))
(let ((anon1145_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) null)
    (= exhaleMask@_700@15 exhaleMask@_700@13)
    (= exhaleMask@_700@17 exhaleMask@_700@15)
    (= exhaleMask@_700@19 exhaleMask@_700@17)
    (= exhaleMask@_700@21 exhaleMask@_700@19)
  )
    anon576
)))
(let ((anon1149_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_700@20 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= exhaleMask@_700@21 exhaleMask@_700@20)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_700@20)
    (wf Heap@8 exhaleMask@_700@20 ZeroMask)
    (wf Heap@8 Mask@144 ZeroMask)
  )
    anon576
)))
(let ((anon1064_Else (=> (and true
    (= Heap@9 Heap@1)
    (= Mask@149 Mask@26)
    (= r@20@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left))
    (= r@20@3 r@20@2)
    (=> true (CanRead$ref$ Mask@26 ZeroMask this AVLTreeNode.left))
    (=> true (not (= this null)))
    (not cond@_629@0)
  )
    $join_2@4
)))
(let ((anon1064_Then (=> (and true
    (= Heap@9 Heap@1)
    (= Mask@149 Mask@26)
    (= r@20@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right))
    (= r@20@3 r@20@1)
    (=> true (CanRead$ref$ Mask@26 ZeroMask this AVLTreeNode.right))
    (=> true (not (= this null)))
    cond@_629@0
  )
    $join_2@4
)))
(let ((anon1270_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null)
    (= exhaleMask@_899@15 exhaleMask@_899@13)
    (= exhaleMask@_899@17 exhaleMask@_899@15)
    (= exhaleMask@_899@19 exhaleMask@_899@17)
    (= exhaleMask@_899@21 exhaleMask@_899@19)
  )
    anon825
)))
(let ((anon1274_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_899@20 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= exhaleMask@_899@21 exhaleMask@_899@20)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_899@20)
    (wf Heap@1 exhaleMask@_899@20 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )
    anon825
)))
(let ((anon775 (=> (and true
    (= Heap@9 exhaleHeap@_852@0)
    (= Mask@149 Mask@56)
    (= Mask@53 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@17 r@300@0 AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@17 r@300@0 AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@17 r@300@0 AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@54 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@53 r@300@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@53 r@300@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@53 r@300@0 AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@55 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@54 r@300@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@54 r@300@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@54 r@300@0 AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@56 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@55 r@300@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@55 r@300@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@55 r@300@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= r@20@3 r@300@0)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (IsGoodExhaleState exhaleHeap@_852@0 exhaleHeap@_836@0 exhaleMask@_853@17 ZeroMask)
    (IsGoodMask exhaleMask@_853@17)
    (IsGoodMask Mask@53)
    (IsGoodMask Mask@54)
    (IsGoodMask Mask@55)
    (IsGoodMask Mask@56)
    (IsGoodMask Mask@56)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_852@0 r@300@0 AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_852@0 r@300@0 AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_852@0 r@300@0 AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_852@0 r@300@0 AVLTreeNode.keys)))
    (not (= r@300@0 null))
    (not (= r@300@0 null))
    (not (= r@300@0 null))
    (not (= r@300@0 null))
    (not (= r@300@0 null))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_852@0 r@300@0 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_852@0 r@300@0 AVLTreeNode.height) (+ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height) 1)))
    (or (= r@300@0 null) (= (dtype r@300@0) AVLTreeNode@t))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_852@0 r@300@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 this AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys))))
    (wf exhaleHeap@_852@0 exhaleMask@_853@17 ZeroMask)
    (wf exhaleHeap@_852@0 exhaleMask@_853@17 ZeroMask)
    (wf exhaleHeap@_852@0 Mask@53 ZeroMask)
    (wf exhaleHeap@_852@0 Mask@53 ZeroMask)
    (wf exhaleHeap@_852@0 Mask@53 ZeroMask)
    (wf exhaleHeap@_852@0 Mask@54 ZeroMask)
    (wf exhaleHeap@_852@0 Mask@54 ZeroMask)
    (wf exhaleHeap@_852@0 Mask@54 ZeroMask)
    (wf exhaleHeap@_852@0 Mask@55 ZeroMask)
    (wf exhaleHeap@_852@0 Mask@55 ZeroMask)
    (wf exhaleHeap@_852@0 Mask@55 ZeroMask)
    (wf exhaleHeap@_852@0 Mask@56 ZeroMask)
    (wf exhaleHeap@_852@0 Mask@56 ZeroMask)
    (wf exhaleHeap@_852@0 Mask@56 ZeroMask)
  )
    $join_2@2
)))
(let ((anon800 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_875@0 this AVLTreeNode.balanceFactor) (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_875@0 this AVLTreeNode.height) (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= Heap@9 exhaleHeap@_875@0)
    (= Mask@149 Mask@52)
    (= Mask@49 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@21 this AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@21 this AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@21 this AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@50 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@49 this AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@49 this AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@49 this AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@51 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@50 this AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@50 this AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@50 this AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@52 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@51 this AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@51 this AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@51 this AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= r@20@3 this)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (IsGoodExhaleState exhaleHeap@_875@0 exhaleHeap@_836@0 exhaleMask@_876@21 ZeroMask)
    (IsGoodMask exhaleMask@_876@21)
    (IsGoodMask Mask@49)
    (IsGoodMask Mask@50)
    (IsGoodMask Mask@51)
    (IsGoodMask Mask@52)
    (IsGoodMask Mask@52)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_875@0 this AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_875@0 this AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_875@0 this AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_875@0 this AVLTreeNode.keys)))
    (not (= this null))
    (not (= this null))
    (not (= this null))
    (not (= this null))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_875@0 this AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 this AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys))))
    (wf exhaleHeap@_875@0 exhaleMask@_876@21 ZeroMask)
    (wf exhaleHeap@_875@0 exhaleMask@_876@21 ZeroMask)
    (wf exhaleHeap@_875@0 Mask@49 ZeroMask)
    (wf exhaleHeap@_875@0 Mask@49 ZeroMask)
    (wf exhaleHeap@_875@0 Mask@49 ZeroMask)
    (wf exhaleHeap@_875@0 Mask@50 ZeroMask)
    (wf exhaleHeap@_875@0 Mask@50 ZeroMask)
    (wf exhaleHeap@_875@0 Mask@50 ZeroMask)
    (wf exhaleHeap@_875@0 Mask@51 ZeroMask)
    (wf exhaleHeap@_875@0 Mask@51 ZeroMask)
    (wf exhaleHeap@_875@0 Mask@51 ZeroMask)
    (wf exhaleHeap@_875@0 Mask@52 ZeroMask)
    (wf exhaleHeap@_875@0 Mask@52 ZeroMask)
    (wf exhaleHeap@_875@0 Mask@52 ZeroMask)
  )
    $join_2@2
)))
(let ((anon1208_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null)
    (= exhaleMask@_800@15 exhaleMask@_800@13)
    (= exhaleMask@_800@17 exhaleMask@_800@15)
    (= exhaleMask@_800@19 exhaleMask@_800@17)
    (= exhaleMask@_800@21 exhaleMask@_800@19)
  )
    anon701
)))
(let ((anon1212_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_800@20 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= exhaleMask@_800@21 exhaleMask@_800@20)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_800@20)
    (wf Heap@1 exhaleMask@_800@20 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )
    anon701
)))
(let ((anon651@6 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_754@17 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= Heap@9 exhaleHeap@_753@0)
    (= Mask@149 Mask@86)
    (= Mask@83 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@17 r@277@0 AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@17 r@277@0 AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@17 r@277@0 AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@84 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@83 r@277@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@83 r@277@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@83 r@277@0 AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@85 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@84 r@277@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@84 r@277@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@84 r@277@0 AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@86 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@85 r@277@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@85 r@277@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@85 r@277@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= r@20@3 r@277@0)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (IsGoodExhaleState exhaleHeap@_753@0 exhaleHeap@_737@0 exhaleMask@_754@17 ZeroMask)
    (IsGoodMask exhaleMask@_754@17)
    (IsGoodMask exhaleMask@_754@17)
    (IsGoodMask Mask@83)
    (IsGoodMask Mask@84)
    (IsGoodMask Mask@85)
    (IsGoodMask Mask@86)
    (IsGoodMask Mask@86)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_753@0 r@277@0 AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_753@0 r@277@0 AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_753@0 r@277@0 AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_753@0 r@277@0 AVLTreeNode.keys)))
    (not (= r@277@0 null))
    (not (= r@277@0 null))
    (not (= r@277@0 null))
    (not (= r@277@0 null))
    (not (= r@277@0 null))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_753@0 r@277@0 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_753@0 r@277@0 AVLTreeNode.height) (+ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height) 1)))
    (or (= r@277@0 null) (= (dtype r@277@0) AVLTreeNode@t))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_753@0 r@277@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 this AVLTreeNode.key))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys)))
    (wf exhaleHeap@_737@0 exhaleMask@_754@17 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
    (wf exhaleHeap@_753@0 exhaleMask@_754@17 ZeroMask)
    (wf exhaleHeap@_753@0 exhaleMask@_754@17 ZeroMask)
    (wf exhaleHeap@_753@0 Mask@83 ZeroMask)
    (wf exhaleHeap@_753@0 Mask@83 ZeroMask)
    (wf exhaleHeap@_753@0 Mask@83 ZeroMask)
    (wf exhaleHeap@_753@0 Mask@84 ZeroMask)
    (wf exhaleHeap@_753@0 Mask@84 ZeroMask)
    (wf exhaleHeap@_753@0 Mask@84 ZeroMask)
    (wf exhaleHeap@_753@0 Mask@85 ZeroMask)
    (wf exhaleHeap@_753@0 Mask@85 ZeroMask)
    (wf exhaleHeap@_753@0 Mask@85 ZeroMask)
    (wf exhaleHeap@_753@0 Mask@86 ZeroMask)
    (wf exhaleHeap@_753@0 Mask@86 ZeroMask)
    (wf exhaleHeap@_753@0 Mask@86 ZeroMask)
  )
    $join_2@3
)))
(let ((anon676 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_776@0 this AVLTreeNode.balanceFactor) (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_776@0 this AVLTreeNode.height) (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= Heap@9 exhaleHeap@_776@0)
    (= Mask@149 Mask@82)
    (= Mask@79 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@21 this AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@21 this AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@21 this AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@80 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@79 this AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@79 this AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@79 this AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@81 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@80 this AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@80 this AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@80 this AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@82 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@81 this AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@81 this AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@81 this AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= r@20@3 this)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (IsGoodExhaleState exhaleHeap@_776@0 exhaleHeap@_737@0 exhaleMask@_777@21 ZeroMask)
    (IsGoodMask exhaleMask@_777@21)
    (IsGoodMask Mask@79)
    (IsGoodMask Mask@80)
    (IsGoodMask Mask@81)
    (IsGoodMask Mask@82)
    (IsGoodMask Mask@82)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_776@0 this AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_776@0 this AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_776@0 this AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_776@0 this AVLTreeNode.keys)))
    (not (= this null))
    (not (= this null))
    (not (= this null))
    (not (= this null))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_776@0 this AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 this AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys))))
    (wf exhaleHeap@_776@0 exhaleMask@_777@21 ZeroMask)
    (wf exhaleHeap@_776@0 exhaleMask@_777@21 ZeroMask)
    (wf exhaleHeap@_776@0 Mask@79 ZeroMask)
    (wf exhaleHeap@_776@0 Mask@79 ZeroMask)
    (wf exhaleHeap@_776@0 Mask@79 ZeroMask)
    (wf exhaleHeap@_776@0 Mask@80 ZeroMask)
    (wf exhaleHeap@_776@0 Mask@80 ZeroMask)
    (wf exhaleHeap@_776@0 Mask@80 ZeroMask)
    (wf exhaleHeap@_776@0 Mask@81 ZeroMask)
    (wf exhaleHeap@_776@0 Mask@81 ZeroMask)
    (wf exhaleHeap@_776@0 Mask@81 ZeroMask)
    (wf exhaleHeap@_776@0 Mask@82 ZeroMask)
    (wf exhaleHeap@_776@0 Mask@82 ZeroMask)
    (wf exhaleHeap@_776@0 Mask@82 ZeroMask)
  )
    $join_2@3
)))
(let ((anon1148_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R))
    (= exhaleMask@_700@18 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= exhaleMask@_700@19 exhaleMask@_700@18)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_700@18)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) null))
    (wf Heap@8 exhaleMask@_700@18 ZeroMask)
    (wf Heap@8 Mask@144 ZeroMask)
  )(and 
    anon1149_Then@1_assertion
    anon1149_Then@2
))))
(let ((anon402 (=> (and true
    (= cond@_629@0 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
    (=> true (CanRead$ref$ Mask@26 ZeroMask this AVLTreeNode.left))
    (=> true (not (= this null)))
    (IsGoodExhaleState exhaleHeap@_584@0 Heap@1 Mask@26 assertSecMask@_582@22)
    (IsGoodMask Mask@26)
    (wf exhaleHeap@_584@0 Mask@26 assertSecMask@_582@22)
  )
    (and anon1064_Else anon1064_Then)
)))
(let ((anon1273_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R))
    (= exhaleMask@_899@18 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= exhaleMask@_899@19 exhaleMask@_899@18)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_899@18)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
    (wf Heap@1 exhaleMask@_899@18 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon1274_Then@1_assertion
    anon1274_Then@2
))))
(let ((anon1246_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null)
    (= exhaleMask@_853@11 exhaleMask@_853@9)
    (= exhaleMask@_853@13 exhaleMask@_853@11)
    (= exhaleMask@_853@15 exhaleMask@_853@13)
    (= exhaleMask@_853@17 exhaleMask@_853@15)
  )
    anon775
)))
(let ((anon1250_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_853@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= exhaleMask@_853@17 exhaleMask@_853@16)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_853@16)
    (wf exhaleHeap@_836@0 exhaleMask@_853@16 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )
    anon775
)))
(let ((anon1258_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null)
    (= exhaleMask@_876@15 exhaleMask@_876@13)
    (= exhaleMask@_876@17 exhaleMask@_876@15)
    (= exhaleMask@_876@19 exhaleMask@_876@17)
    (= exhaleMask@_876@21 exhaleMask@_876@19)
  )
    anon800
)))
(let ((anon1262_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_876@20 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= exhaleMask@_876@21 exhaleMask@_876@20)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_876@20)
    (wf exhaleHeap@_836@0 exhaleMask@_876@20 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )
    anon800
)))
(let ((anon1211_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R))
    (= exhaleMask@_800@18 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= exhaleMask@_800@19 exhaleMask@_800@18)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_800@18)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
    (wf Heap@1 exhaleMask@_800@18 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon1212_Then@1_assertion
    anon1212_Then@2
))))
(let ((anon651@4 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R))
    (= exhaleMask@_754@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_754@16)
    (wf exhaleHeap@_737@0 exhaleMask@_754@16 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )(and 
    anon651@5_assertion
    anon651@6
))))
(let ((anon1196_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null)
    (= exhaleMask@_777@15 exhaleMask@_777@13)
    (= exhaleMask@_777@17 exhaleMask@_777@15)
    (= exhaleMask@_777@19 exhaleMask@_777@17)
    (= exhaleMask@_777@21 exhaleMask@_777@19)
  )
    anon676
)))
(let ((anon1200_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_777@20 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= exhaleMask@_777@21 exhaleMask@_777@20)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_777@20)
    (wf exhaleHeap@_737@0 exhaleMask@_777@20 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )
    anon676
)))
(let ((anon1147_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (= exhaleMask@_700@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= exhaleMask@_700@17 exhaleMask@_700@16)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.height) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_700@16)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) null))
    (wf Heap@8 exhaleMask@_700@16 ZeroMask)
    (wf Heap@8 Mask@144 ZeroMask)
  )(and 
    anon1148_Then@1_assertion
    anon1148_Then@2
))))
(let ((anon401@5 (=> (and true
    (= assertSecMask@_582@22 assertSecMask@_582@21)
    (not (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) Seq@Empty$Int$))
  )
    anon402
)))
(let ((anon984_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null)
    (= assertSecMask@_582@22 ZeroMask)
  )
    anon402
)))
(let ((anon1272_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (= exhaleMask@_899@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= exhaleMask@_899@17 exhaleMask@_899@16)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_899@16)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
    (wf Heap@1 exhaleMask@_899@16 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon1273_Then@1_assertion
    anon1273_Then@2
))))
(let ((anon1249_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R))
    (= exhaleMask@_853@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= exhaleMask@_853@15 exhaleMask@_853@14)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_853@14)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null))
    (wf exhaleHeap@_836@0 exhaleMask@_853@14 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )(and 
    anon1250_Then@1_assertion
    anon1250_Then@2
))))
(let ((anon1261_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R))
    (= exhaleMask@_876@18 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= exhaleMask@_876@19 exhaleMask@_876@18)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_876@18)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null))
    (wf exhaleHeap@_836@0 exhaleMask@_876@18 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )(and 
    anon1262_Then@1_assertion
    anon1262_Then@2
))))
(let ((anon1210_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (= exhaleMask@_800@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= exhaleMask@_800@17 exhaleMask@_800@16)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_800@16)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
    (wf Heap@1 exhaleMask@_800@16 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon1211_Then@1_assertion
    anon1211_Then@2
))))
(let ((anon651@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (= exhaleMask@_754@15 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_754@15)
    (wf exhaleHeap@_737@0 exhaleMask@_754@15 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )(and 
    anon651@3_assertion
    anon651@4
))))
(let ((anon1199_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R))
    (= exhaleMask@_777@18 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= exhaleMask@_777@19 exhaleMask@_777@18)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_777@18)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null))
    (wf exhaleHeap@_737@0 exhaleMask@_777@18 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )(and 
    anon1200_Then@1_assertion
    anon1200_Then@2
))))
(let ((anon569 (=> (and true
    (= exhaleMask@_700@15 exhaleMask@_700@14)
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_700@14)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) null))
    (wf Heap@8 exhaleMask@_700@14 ZeroMask)
    (wf Heap@8 Mask@144 ZeroMask)
  )(and 
    anon1147_Then@1_assertion
    anon1147_Then@2
))))
(let ((anon401@4 (=> (and true
    (=> true (CanRead$Seq$Int$$ unfoldingMask@_587@22 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.keys))
  )(and 
    anon401@4_assertion
    anon401@5
))))
(let ((anon818 (=> (and true
    (= exhaleMask@_899@15 exhaleMask@_899@14)
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_899@14)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
    (wf Heap@1 exhaleMask@_899@14 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon1272_Then@1_assertion
    anon1272_Then@2
))))
(let ((anon1248_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (= exhaleMask@_853@12 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= exhaleMask@_853@13 exhaleMask@_853@12)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_853@12)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null))
    (wf exhaleHeap@_836@0 exhaleMask@_853@12 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )(and 
    anon1249_Then@1_assertion
    anon1249_Then@2
))))
(let ((anon1260_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (= exhaleMask@_876@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= exhaleMask@_876@17 exhaleMask@_876@16)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_876@16)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null))
    (wf exhaleHeap@_836@0 exhaleMask@_876@16 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )(and 
    anon1261_Then@1_assertion
    anon1261_Then@2
))))
(let ((anon694 (=> (and true
    (= exhaleMask@_800@15 exhaleMask@_800@14)
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_800@14)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
    (wf Heap@1 exhaleMask@_800@14 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon1210_Then@1_assertion
    anon1210_Then@2
))))
(let ((anon651 (=> (and true
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_754@14)
    (wf exhaleHeap@_737@0 exhaleMask@_754@14 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )(and 
    anon651@1_assertion
    anon651@2
))))
(let ((anon1198_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (= exhaleMask@_777@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= exhaleMask@_777@17 exhaleMask@_777@16)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_777@16)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null))
    (wf exhaleHeap@_737@0 exhaleMask@_777@16 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )(and 
    anon1199_Then@1_assertion
    anon1199_Then@2
))))
(let ((anon1146_Else (=> (and true
    (CanRead$Int$ exhaleMask@_700@14 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.valid)
  )
    anon569
)))
(let ((anon1146_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_699@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_700@14 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.valid))
  )
    anon569
)))
(let ((anon401@2 (=> (and true
    (=> true (CanRead$ref$ unfoldingMask@_587@22 ZeroMask this AVLTreeNode.left))
    (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) null)))
  )(and 
    anon401@3_assertion
    anon401@4
))))
(let ((anon1271_Else (=> (and true
    (CanRead$Int$ exhaleMask@_899@14 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid)
  )
    anon818
)))
(let ((anon1271_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_898@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_899@14 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid))
  )
    anon818
)))
(let ((anon768 (=> (and true
    (= exhaleMask@_853@11 exhaleMask@_853@10)
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_853@10)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null))
    (wf exhaleHeap@_836@0 exhaleMask@_853@10 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )(and 
    anon1248_Then@1_assertion
    anon1248_Then@2
))))
(let ((anon793 (=> (and true
    (= exhaleMask@_876@15 exhaleMask@_876@14)
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_876@14)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null))
    (wf exhaleHeap@_836@0 exhaleMask@_876@14 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )(and 
    anon1260_Then@1_assertion
    anon1260_Then@2
))))
(let ((anon1209_Else (=> (and true
    (CanRead$Int$ exhaleMask@_800@14 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid)
  )
    anon694
)))
(let ((anon1209_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_799@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_800@14 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid))
  )
    anon694
)))
(let ((anon1188_Else (=> (and true
    (CanRead$Int$ exhaleMask@_754@14 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid)
  )
    anon651
)))
(let ((anon1188_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_753@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_754@14 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid))
  )
    anon651
)))
(let ((anon669 (=> (and true
    (= exhaleMask@_777@15 exhaleMask@_777@14)
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_777@14)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null))
    (wf exhaleHeap@_737@0 exhaleMask@_777@14 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )(and 
    anon1198_Then@1_assertion
    anon1198_Then@2
))))
(let ((anon1145_Then@2 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (= exhaleMask@_700@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
  )
    (and anon1146_Else anon1146_Then)
)))
(let ((anon401 (=> (and true
    (<= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) 1)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (=> true (not (= this null)))
    (> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) 0)
    (>= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) (- 0 1))
    (forall( (|kk#81_$4| Int))(= (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) |kk#81_$4|) (or (or (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null)) (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys) |kk#81_$4|)) (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null)) (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys) |kk#81_$4|))) (= |kk#81_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.key)))))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.key))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys))))
  )(and 
    anon401@1_assertion
    anon401@2
))))
(let ((anon1270_Then@2 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (= exhaleMask@_899@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
  )
    (and anon1271_Else anon1271_Then)
)))
(let ((anon1247_Else (=> (and true
    (CanRead$Int$ exhaleMask@_853@10 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid)
  )
    anon768
)))
(let ((anon1247_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_852@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_853@10 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid))
  )
    anon768
)))
(let ((anon1259_Else (=> (and true
    (CanRead$Int$ exhaleMask@_876@14 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid)
  )
    anon793
)))
(let ((anon1259_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_875@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_876@14 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid))
  )
    anon793
)))
(let ((anon1208_Then@2 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (= exhaleMask@_800@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
  )
    (and anon1209_Else anon1209_Then)
)))
(let ((anon649@2 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (= exhaleMask@_754@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
  )
    (and anon1188_Else anon1188_Then)
)))
(let ((anon1197_Else (=> (and true
    (CanRead$Int$ exhaleMask@_777@14 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid)
  )
    anon669
)))
(let ((anon1197_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_776@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_777@14 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid))
  )
    anon669
)))
(let ((anon1145_Then (=> (and true
    (> (Fractions 100) 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) null))
  )(and 
    anon1145_Then@1_assertion
    anon1145_Then@2
))))
(let ((anon1058_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null)
    (= assertSecMask@_582@15 assertSecMask@_582@13)
    (= assertSecMask@_582@17 assertSecMask@_582@15)
    (= assertSecMask@_582@19 assertSecMask@_582@17)
    (= assertSecMask@_582@21 assertSecMask@_582@19)
  )
    anon401
)))
(let ((anon1058_Then (=> (and true
    (= assertSecMask@_582@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_582@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_582@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_582@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= assertSecMask@_582@15 assertSecMask@_582@14)
    (= assertSecMask@_582@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_582@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_582@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_582@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= assertSecMask@_582@17 assertSecMask@_582@16)
    (= assertSecMask@_582@18 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ assertSecMask@_582@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ assertSecMask@_582@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ assertSecMask@_582@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= assertSecMask@_582@19 assertSecMask@_582@18)
    (= assertSecMask@_582@20 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_582@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_582@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_582@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= assertSecMask@_582@21 assertSecMask@_582@20)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height) 0)
    (forall( (|rk#80#247| Int))(=> (and (<= 0 |rk#80#247|) (< |rk#80#247| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys) |rk#80#247|))))
    (IsGoodMask Mask@26)
    (IsGoodMask Mask@26)
    (IsGoodMask Mask@26)
    (IsGoodMask Mask@26)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null))
    (wf Heap@1 Mask@26 assertSecMask@_582@13)
    (wf Heap@1 Mask@26 assertSecMask@_582@14)
    (wf Heap@1 Mask@26 assertSecMask@_582@14)
    (wf Heap@1 Mask@26 assertSecMask@_582@15)
    (wf Heap@1 Mask@26 assertSecMask@_582@16)
    (wf Heap@1 Mask@26 assertSecMask@_582@16)
    (wf Heap@1 Mask@26 assertSecMask@_582@17)
    (wf Heap@1 Mask@26 assertSecMask@_582@18)
    (wf Heap@1 Mask@26 assertSecMask@_582@18)
    (wf Heap@1 Mask@26 assertSecMask@_582@19)
    (wf Heap@1 Mask@26 assertSecMask@_582@20)
    (wf Heap@1 Mask@26 assertSecMask@_582@20)
  )
    anon401
)))
(let ((anon1270_Then (=> (and true
    (> (Fractions 100) 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
  )(and 
    anon1270_Then@1_assertion
    anon1270_Then@2
))))
(let ((anon1246_Then@2 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (= exhaleMask@_853@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
  )
    (and anon1247_Else anon1247_Then)
)))
(let ((anon1258_Then@2 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (= exhaleMask@_876@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
  )
    (and anon1259_Else anon1259_Then)
)))
(let ((anon1208_Then (=> (and true
    (> (Fractions 100) 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
  )(and 
    anon1208_Then@1_assertion
    anon1208_Then@2
))))
(let ((anon649 (=> (and true
    (> (Fractions 100) 0)
  )(and 
    anon649@1_assertion
    anon649@2
))))
(let ((anon1196_Then@2 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (= exhaleMask@_777@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
  )
    (and anon1197_Else anon1197_Then)
)))
(let (($branchMerge_165 (=> (and true
  )
    (and anon1145_Else anon1145_Then)
)))
(let (($branchMerge_160 (=> (and true
  )
    (and anon1058_Else anon1058_Then)
)))
(let (($branchMerge_42 (=> (and true
  )
    (and anon1270_Else anon1270_Then)
)))
(let ((anon1246_Then (=> (and true
    (> (Fractions 100) 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null))
  )(and 
    anon1246_Then@1_assertion
    anon1246_Then@2
))))
(let ((anon1258_Then (=> (and true
    (> (Fractions 100) 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null))
  )(and 
    anon1258_Then@1_assertion
    anon1258_Then@2
))))
(let (($branchMerge_40 (=> (and true
  )
    (and anon1208_Else anon1208_Then)
)))
(let ((anon1183_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null)
    (= exhaleMask@_754@11 exhaleMask@_754@9)
    (= exhaleMask@_754@13 exhaleMask@_754@11)
    (= exhaleMask@_754@7 exhaleMask@_754@5)
    (= exhaleMask@_754@9 exhaleMask@_754@7)
  )
    anon649
)))
(let ((anon1187_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_754@12 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= exhaleMask@_754@13 exhaleMask@_754@12)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_754@12)
    (wf exhaleHeap@_737@0 exhaleMask@_754@12 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )
    anon649
)))
(let ((anon1196_Then (=> (and true
    (> (Fractions 100) 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null))
  )(and 
    anon1196_Then@1_assertion
    anon1196_Then@2
))))
(let ((anon1140_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) null)
    (= exhaleMask@_700@11 exhaleMask@_700@9)
    (= exhaleMask@_700@13 exhaleMask@_700@11)
    (= exhaleMask@_700@7 exhaleMask@_700@5)
    (= exhaleMask@_700@9 exhaleMask@_700@7)
  )
    $branchMerge_165
)))
(let ((anon1144_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_700@12 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= exhaleMask@_700@13 exhaleMask@_700@12)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_700@12)
    (wf Heap@8 exhaleMask@_700@12 ZeroMask)
    (wf Heap@8 Mask@144 ZeroMask)
  )
    $branchMerge_165
)))
(let ((anon1052_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null)
    (= assertSecMask@_582@11 assertSecMask@_582@9)
    (= assertSecMask@_582@13 assertSecMask@_582@11)
    (= assertSecMask@_582@7 assertSecMask@_582@5)
    (= assertSecMask@_582@9 assertSecMask@_582@7)
  )
    $branchMerge_160
)))
(let ((anon1052_Then (=> (and true
    (= assertSecMask@_582@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ assertSecMask@_582@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ assertSecMask@_582@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ assertSecMask@_582@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= assertSecMask@_582@11 assertSecMask@_582@10)
    (= assertSecMask@_582@12 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_582@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_582@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_582@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= assertSecMask@_582@13 assertSecMask@_582@12)
    (= assertSecMask@_582@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_582@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_582@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_582@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= assertSecMask@_582@7 assertSecMask@_582@6)
    (= assertSecMask@_582@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_582@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_582@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_582@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= assertSecMask@_582@9 assertSecMask@_582@8)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height) 0)
    (forall( (|lk#79#246| Int))(=> (and (<= 0 |lk#79#246|) (< |lk#79#246| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys) |lk#79#246|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.key))))
    (IsGoodMask Mask@26)
    (IsGoodMask Mask@26)
    (IsGoodMask Mask@26)
    (IsGoodMask Mask@26)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null))
    (wf Heap@1 Mask@26 assertSecMask@_582@10)
    (wf Heap@1 Mask@26 assertSecMask@_582@10)
    (wf Heap@1 Mask@26 assertSecMask@_582@11)
    (wf Heap@1 Mask@26 assertSecMask@_582@12)
    (wf Heap@1 Mask@26 assertSecMask@_582@12)
    (wf Heap@1 Mask@26 assertSecMask@_582@5)
    (wf Heap@1 Mask@26 assertSecMask@_582@6)
    (wf Heap@1 Mask@26 assertSecMask@_582@6)
    (wf Heap@1 Mask@26 assertSecMask@_582@7)
    (wf Heap@1 Mask@26 assertSecMask@_582@8)
    (wf Heap@1 Mask@26 assertSecMask@_582@8)
    (wf Heap@1 Mask@26 assertSecMask@_582@9)
  )
    $branchMerge_160
)))
(let ((anon1265_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null)
    (= exhaleMask@_899@11 exhaleMask@_899@9)
    (= exhaleMask@_899@13 exhaleMask@_899@11)
    (= exhaleMask@_899@7 exhaleMask@_899@5)
    (= exhaleMask@_899@9 exhaleMask@_899@7)
  )
    $branchMerge_42
)))
(let ((anon1269_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_899@12 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= exhaleMask@_899@13 exhaleMask@_899@12)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_899@12)
    (wf Heap@1 exhaleMask@_899@12 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )
    $branchMerge_42
)))
(let ((anon765@6 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_853@9 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_853@9)
    (wf exhaleHeap@_836@0 exhaleMask@_853@9 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )
    (and anon1246_Else anon1246_Then)
)))
(let (($branchMerge_145 (=> (and true
  )
    (and anon1258_Else anon1258_Then)
)))
(let ((anon1203_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null)
    (= exhaleMask@_800@11 exhaleMask@_800@9)
    (= exhaleMask@_800@13 exhaleMask@_800@11)
    (= exhaleMask@_800@7 exhaleMask@_800@5)
    (= exhaleMask@_800@9 exhaleMask@_800@7)
  )
    $branchMerge_40
)))
(let ((anon1207_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_800@12 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= exhaleMask@_800@13 exhaleMask@_800@12)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_800@12)
    (wf Heap@1 exhaleMask@_800@12 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )
    $branchMerge_40
)))
(let ((anon1186_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R))
    (= exhaleMask@_754@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= exhaleMask@_754@11 exhaleMask@_754@10)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_754@10)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null))
    (wf exhaleHeap@_737@0 exhaleMask@_754@10 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )(and 
    anon1187_Then@1_assertion
    anon1187_Then@2
))))
(let (($branchMerge_143 (=> (and true
  )
    (and anon1196_Else anon1196_Then)
)))
(let ((anon1143_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R))
    (= exhaleMask@_700@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= exhaleMask@_700@11 exhaleMask@_700@10)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_700@10)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) null))
    (wf Heap@8 exhaleMask@_700@10 ZeroMask)
    (wf Heap@8 Mask@144 ZeroMask)
  )(and 
    anon1144_Then@1_assertion
    anon1144_Then@2
))))
(let ((anon323 (=> (and true
    (<= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) 1)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.height) (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= assertSecMask@_582@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.key) perm$R) (Fractions 100)))))
    (= assertSecMask@_582@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_582@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_582@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_582@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= assertSecMask@_582@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ assertSecMask@_582@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ assertSecMask@_582@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ assertSecMask@_582@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) perm$R) (Fractions 100)))))
    (= assertSecMask@_582@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ assertSecMask@_582@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ assertSecMask@_582@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ assertSecMask@_582@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) perm$R) (Fractions 100)))))
    (= assertSecMask@_582@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ assertSecMask@_582@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ assertSecMask@_582@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ assertSecMask@_582@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= assertSecMask@_582@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_582@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_582@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_582@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (> (Fractions 100) 0)
    (> (Fractions 100) 0)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.height) 0)
    (>= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) (- 0 1))
    (forall( (|kk#81_$2| Int))(= (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.keys) |kk#81_$2|) (or (or (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) null)) (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys) |kk#81_$2|)) (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) null)) (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys) |kk#81_$2|))) (= |kk#81_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.key)))))
    (IsGoodMask Mask@26)
    (IsGoodMask Mask@26)
    (IsGoodMask Mask@26)
    (IsGoodMask Mask@26)
    (IsGoodMask Mask@26)
    (IsGoodMask Mask@26)
    (IsGoodMask unfoldingMask@_587@22)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.key)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
    (not false)
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left)) AVLTreeNode@t))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right)) AVLTreeNode@t))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.key))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys))))
    (wf Heap@1 Mask@26 assertSecMask@_582@0)
    (wf Heap@1 Mask@26 assertSecMask@_582@0)
    (wf Heap@1 Mask@26 assertSecMask@_582@0)
    (wf Heap@1 Mask@26 assertSecMask@_582@1)
    (wf Heap@1 Mask@26 assertSecMask@_582@1)
    (wf Heap@1 Mask@26 assertSecMask@_582@1)
    (wf Heap@1 Mask@26 assertSecMask@_582@2)
    (wf Heap@1 Mask@26 assertSecMask@_582@2)
    (wf Heap@1 Mask@26 assertSecMask@_582@2)
    (wf Heap@1 Mask@26 assertSecMask@_582@3)
    (wf Heap@1 Mask@26 assertSecMask@_582@3)
    (wf Heap@1 Mask@26 assertSecMask@_582@3)
    (wf Heap@1 Mask@26 assertSecMask@_582@4)
    (wf Heap@1 Mask@26 assertSecMask@_582@4)
    (wf Heap@1 Mask@26 assertSecMask@_582@4)
    (wf Heap@1 Mask@26 assertSecMask@_582@5)
    (wf Heap@1 Mask@26 assertSecMask@_582@5)
    (wf Heap@1 Mask@26 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@22 ZeroMask)
  )
    (and anon1052_Else anon1052_Then)
)))
(let ((anon1268_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R))
    (= exhaleMask@_899@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= exhaleMask@_899@11 exhaleMask@_899@10)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_899@10)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
    (wf Heap@1 exhaleMask@_899@10 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon1269_Then@1_assertion
    anon1269_Then@2
))))
(let ((anon765@4 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R))
    (= exhaleMask@_853@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_853@8)
    (wf exhaleHeap@_836@0 exhaleMask@_853@8 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )(and 
    anon765@5_assertion
    anon765@6
))))
(let ((anon1253_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null)
    (= exhaleMask@_876@11 exhaleMask@_876@9)
    (= exhaleMask@_876@13 exhaleMask@_876@11)
    (= exhaleMask@_876@7 exhaleMask@_876@5)
    (= exhaleMask@_876@9 exhaleMask@_876@7)
  )
    $branchMerge_145
)))
(let ((anon1257_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_876@12 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= exhaleMask@_876@13 exhaleMask@_876@12)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_876@12)
    (wf exhaleHeap@_836@0 exhaleMask@_876@12 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )
    $branchMerge_145
)))
(let ((anon1206_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R))
    (= exhaleMask@_800@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= exhaleMask@_800@11 exhaleMask@_800@10)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_800@10)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
    (wf Heap@1 exhaleMask@_800@10 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon1207_Then@1_assertion
    anon1207_Then@2
))))
(let ((anon1185_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (= exhaleMask@_754@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= exhaleMask@_754@9 exhaleMask@_754@8)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_754@8)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null))
    (wf exhaleHeap@_737@0 exhaleMask@_754@8 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )(and 
    anon1186_Then@1_assertion
    anon1186_Then@2
))))
(let ((anon1191_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null)
    (= exhaleMask@_777@11 exhaleMask@_777@9)
    (= exhaleMask@_777@13 exhaleMask@_777@11)
    (= exhaleMask@_777@7 exhaleMask@_777@5)
    (= exhaleMask@_777@9 exhaleMask@_777@7)
  )
    $branchMerge_143
)))
(let ((anon1195_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_777@12 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= exhaleMask@_777@13 exhaleMask@_777@12)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_777@12)
    (wf exhaleHeap@_737@0 exhaleMask@_777@12 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )
    $branchMerge_143
)))
(let ((anon1142_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (= exhaleMask@_700@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= exhaleMask@_700@9 exhaleMask@_700@8)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.height) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_700@8)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) null))
    (wf Heap@8 exhaleMask@_700@8 ZeroMask)
    (wf Heap@8 Mask@144 ZeroMask)
  )(and 
    anon1143_Then@1_assertion
    anon1143_Then@2
))))
(let ((anon1019_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) null)
    (= unfoldingMask@_587@16 unfoldingMask@_587@14)
    (= unfoldingMask@_587@18 unfoldingMask@_587@16)
    (= unfoldingMask@_587@20 unfoldingMask@_587@18)
    (= unfoldingMask@_587@22 unfoldingMask@_587@20)
  )
    anon323
)))
(let ((anon1019_Then (=> (and true
    (= unfoldingMask@_587@15 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= unfoldingMask@_587@16 unfoldingMask@_587@15)
    (= unfoldingMask@_587@17 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= unfoldingMask@_587@18 unfoldingMask@_587@17)
    (= unfoldingMask@_587@19 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ unfoldingMask@_587@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ unfoldingMask@_587@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ unfoldingMask@_587@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= unfoldingMask@_587@20 unfoldingMask@_587@19)
    (= unfoldingMask@_587@21 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= unfoldingMask@_587@22 unfoldingMask@_587@21)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height) 0)
    (forall( (|rk#80#241| Int))(=> (and (<= 0 |rk#80#241|) (< |rk#80#241| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys) |rk#80#241|))))
    (IsGoodMask unfoldingMask@_587@15)
    (IsGoodMask unfoldingMask@_587@17)
    (IsGoodMask unfoldingMask@_587@19)
    (IsGoodMask unfoldingMask@_587@21)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) null))
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@14 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@15 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@15 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@16 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@17 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@17 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@18 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@19 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@19 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@20 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@21 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@21 ZeroMask)
  )
    anon323
)))
(let ((anon1267_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (= exhaleMask@_899@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= exhaleMask@_899@9 exhaleMask@_899@8)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_899@8)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
    (wf Heap@1 exhaleMask@_899@8 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon1268_Then@1_assertion
    anon1268_Then@2
))))
(let ((anon765@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (= exhaleMask@_853@7 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_853@7)
    (wf exhaleHeap@_836@0 exhaleMask@_853@7 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )(and 
    anon765@3_assertion
    anon765@4
))))
(let ((anon1256_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R))
    (= exhaleMask@_876@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= exhaleMask@_876@11 exhaleMask@_876@10)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_876@10)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null))
    (wf exhaleHeap@_836@0 exhaleMask@_876@10 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )(and 
    anon1257_Then@1_assertion
    anon1257_Then@2
))))
(let ((anon1205_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (= exhaleMask@_800@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= exhaleMask@_800@9 exhaleMask@_800@8)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_800@8)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
    (wf Heap@1 exhaleMask@_800@8 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon1206_Then@1_assertion
    anon1206_Then@2
))))
(let ((anon642 (=> (and true
    (= exhaleMask@_754@7 exhaleMask@_754@6)
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_754@6)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null))
    (wf exhaleHeap@_737@0 exhaleMask@_754@6 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )(and 
    anon1185_Then@1_assertion
    anon1185_Then@2
))))
(let ((anon1194_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R))
    (= exhaleMask@_777@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= exhaleMask@_777@11 exhaleMask@_777@10)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_777@10)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null))
    (wf exhaleHeap@_737@0 exhaleMask@_777@10 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )(and 
    anon1195_Then@1_assertion
    anon1195_Then@2
))))
(let ((anon559 (=> (and true
    (= exhaleMask@_700@7 exhaleMask@_700@6)
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_700@6)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) null))
    (wf Heap@8 exhaleMask@_700@6 ZeroMask)
    (wf Heap@8 Mask@144 ZeroMask)
  )(and 
    anon1142_Then@1_assertion
    anon1142_Then@2
))))
(let (($branchMerge_119 (=> (and true
  )
    (and anon1019_Else anon1019_Then)
)))
(let ((anon808 (=> (and true
    (= exhaleMask@_899@7 exhaleMask@_899@6)
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_899@6)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
    (wf Heap@1 exhaleMask@_899@6 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon1267_Then@1_assertion
    anon1267_Then@2
))))
(let ((anon765 (=> (and true
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_853@6)
    (wf exhaleHeap@_836@0 exhaleMask@_853@6 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )(and 
    anon765@1_assertion
    anon765@2
))))
(let ((anon1255_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (= exhaleMask@_876@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= exhaleMask@_876@9 exhaleMask@_876@8)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_876@8)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null))
    (wf exhaleHeap@_836@0 exhaleMask@_876@8 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )(and 
    anon1256_Then@1_assertion
    anon1256_Then@2
))))
(let ((anon684 (=> (and true
    (= exhaleMask@_800@7 exhaleMask@_800@6)
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_800@6)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
    (wf Heap@1 exhaleMask@_800@6 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon1205_Then@1_assertion
    anon1205_Then@2
))))
(let ((anon1184_Else (=> (and true
    (CanRead$Int$ exhaleMask@_754@6 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid)
  )
    anon642
)))
(let ((anon1184_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_753@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_754@6 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid))
  )
    anon642
)))
(let ((anon1193_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (= exhaleMask@_777@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= exhaleMask@_777@9 exhaleMask@_777@8)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_777@8)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null))
    (wf exhaleHeap@_737@0 exhaleMask@_777@8 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )(and 
    anon1194_Then@1_assertion
    anon1194_Then@2
))))
(let ((anon1141_Else (=> (and true
    (CanRead$Int$ exhaleMask@_700@6 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.valid)
  )
    anon559
)))
(let ((anon1141_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_699@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_700@6 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.valid))
  )
    anon559
)))
(let ((anon1013_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) null)
    (= unfoldingMask@_587@10 unfoldingMask@_587@8)
    (= unfoldingMask@_587@12 unfoldingMask@_587@10)
    (= unfoldingMask@_587@14 unfoldingMask@_587@12)
    (= unfoldingMask@_587@8 unfoldingMask@_587@6)
  )
    $branchMerge_119
)))
(let ((anon1013_Then (=> (and true
    (= unfoldingMask@_587@10 unfoldingMask@_587@9)
    (= unfoldingMask@_587@11 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ unfoldingMask@_587@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ unfoldingMask@_587@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ unfoldingMask@_587@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= unfoldingMask@_587@12 unfoldingMask@_587@11)
    (= unfoldingMask@_587@13 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= unfoldingMask@_587@14 unfoldingMask@_587@13)
    (= unfoldingMask@_587@7 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= unfoldingMask@_587@8 unfoldingMask@_587@7)
    (= unfoldingMask@_587@9 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height) 0)
    (forall( (|lk#79#240| Int))(=> (and (<= 0 |lk#79#240|) (< |lk#79#240| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys) |lk#79#240|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.key))))
    (IsGoodMask unfoldingMask@_587@11)
    (IsGoodMask unfoldingMask@_587@13)
    (IsGoodMask unfoldingMask@_587@7)
    (IsGoodMask unfoldingMask@_587@9)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) null))
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@10 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@11 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@11 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@12 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@13 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@13 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@6 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@7 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@7 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@8 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@9 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@9 ZeroMask)
  )
    $branchMerge_119
)))
(let ((anon1266_Else (=> (and true
    (CanRead$Int$ exhaleMask@_899@6 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid)
  )
    anon808
)))
(let ((anon1266_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_898@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_899@6 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid))
  )
    anon808
)))
(let ((anon1245_Else (=> (and true
    (CanRead$Int$ exhaleMask@_853@6 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid)
  )
    anon765
)))
(let ((anon1245_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_852@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_853@6 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid))
  )
    anon765
)))
(let ((anon783 (=> (and true
    (= exhaleMask@_876@7 exhaleMask@_876@6)
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_876@6)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null))
    (wf exhaleHeap@_836@0 exhaleMask@_876@6 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )(and 
    anon1255_Then@1_assertion
    anon1255_Then@2
))))
(let ((anon1204_Else (=> (and true
    (CanRead$Int$ exhaleMask@_800@6 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid)
  )
    anon684
)))
(let ((anon1204_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_799@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_800@6 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid))
  )
    anon684
)))
(let ((anon1183_Then@2 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (= exhaleMask@_754@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
  )
    (and anon1184_Else anon1184_Then)
)))
(let ((anon659 (=> (and true
    (= exhaleMask@_777@7 exhaleMask@_777@6)
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_777@6)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null))
    (wf exhaleHeap@_737@0 exhaleMask@_777@6 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )(and 
    anon1193_Then@1_assertion
    anon1193_Then@2
))))
(let ((anon1140_Then@2 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (= exhaleMask@_700@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
  )
    (and anon1141_Else anon1141_Then)
)))
(let ((anon299 (=> (and true
    (= unfoldingMask@_587@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.key) perm$R) (Fractions 100)))))
    (= unfoldingMask@_587@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= unfoldingMask@_587@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_587@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_587@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_587@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) perm$R) (Fractions 100)))))
    (= unfoldingMask@_587@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_587@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_587@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_587@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) perm$R) (Fractions 100)))))
    (= unfoldingMask@_587@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ unfoldingMask@_587@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ unfoldingMask@_587@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ unfoldingMask@_587@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= unfoldingMask@_587@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_587@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (> (Fractions 100) 0)
    (> (Fractions 100) 0)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (IsGoodMask unfoldingMask@_587@0)
    (IsGoodMask unfoldingMask@_587@0)
    (IsGoodMask unfoldingMask@_587@1)
    (IsGoodMask unfoldingMask@_587@2)
    (IsGoodMask unfoldingMask@_587@3)
    (IsGoodMask unfoldingMask@_587@4)
    (IsGoodMask unfoldingMask@_587@5)
    (IsGoodMask unfoldingMask@_587@6)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.key)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) null))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.left)) AVLTreeNode@t))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@1 this AVLTreeNode.left) AVLTreeNode.right)) AVLTreeNode@t))
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@0 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@0 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@0 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@1 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@1 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@1 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@2 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@2 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@2 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@3 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@3 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@3 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@4 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@4 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@4 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@5 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@5 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@5 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@6 ZeroMask)
    (wf unfoldingHeap@_586@1 unfoldingMask@_587@6 ZeroMask)
  )
    (and anon1013_Else anon1013_Then)
)))
(let ((anon1265_Then@2 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (= exhaleMask@_899@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
  )
    (and anon1266_Else anon1266_Then)
)))
(let ((anon763@15 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (= exhaleMask@_853@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
  )
    (and anon1245_Else anon1245_Then)
)))
(let ((anon1254_Else (=> (and true
    (CanRead$Int$ exhaleMask@_876@6 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid)
  )
    anon783
)))
(let ((anon1254_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_875@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_876@6 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid))
  )
    anon783
)))
(let ((anon1203_Then@2 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (= exhaleMask@_800@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
  )
    (and anon1204_Else anon1204_Then)
)))
(let ((anon1183_Then (=> (and true
    (> (Fractions 100) 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null))
  )(and 
    anon1183_Then@1_assertion
    anon1183_Then@2
))))
(let ((anon1192_Else (=> (and true
    (CanRead$Int$ exhaleMask@_777@6 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid)
  )
    anon659
)))
(let ((anon1192_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_776@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_777@6 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid))
  )
    anon659
)))
(let ((anon1140_Then (=> (and true
    (> (Fractions 100) 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) null))
  )(and 
    anon1140_Then@1_assertion
    anon1140_Then@2
))))
(let ((anon1012_Else (=> (and true
    (= unfoldingHeap@_586@1 Heap@1)
    (CanRead$Int$ unfoldingMask@_587@0 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid)
  )
    anon299
)))
(let ((anon1012_Then (=> (and true
    (< oldVers@_611@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_586@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_586@0 this AVLTreeNode.left) AVLTreeNode.valid))
    (= oldVers@_611@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid))
    (= unfoldingHeap@_586@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid newVers@_612@0))
    (= unfoldingHeap@_586@1 unfoldingHeap@_586@0)
    (not (CanRead$Int$ unfoldingMask@_587@0 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid))
  )
    anon299
)))
(let ((anon1265_Then (=> (and true
    (> (Fractions 100) 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
  )(and 
    anon1265_Then@1_assertion
    anon1265_Then@2
))))
(let ((anon763@13 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@4 this AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_853@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@4 this AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@4 this AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@4 this AVLTreeNode.balanceFactor) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@4 this AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@4 this AVLTreeNode.balanceFactor) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_853@5)
    (wf exhaleHeap@_836@0 exhaleMask@_853@5 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )(and 
    anon763@14_assertion
    anon763@15
))))
(let ((anon1253_Then@2 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (= exhaleMask@_876@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
  )
    (and anon1254_Else anon1254_Then)
)))
(let ((anon1203_Then (=> (and true
    (> (Fractions 100) 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
  )(and 
    anon1203_Then@1_assertion
    anon1203_Then@2
))))
(let ((anon639@15 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@4 this AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_754@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@4 this AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@4 this AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@4 this AVLTreeNode.balanceFactor) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@4 this AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@4 this AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_754@5)
    (wf exhaleHeap@_737@0 exhaleMask@_754@5 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )
    (and anon1183_Else anon1183_Then)
)))
(let ((anon1191_Then@2 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (= exhaleMask@_777@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
  )
    (and anon1192_Else anon1192_Then)
)))
(let ((anon556@14 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@4 r@20@0 AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_700@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@4 r@20@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@4 r@20@0 AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@4 r@20@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@4 r@20@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@4 r@20@0 AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_700@5)
    (wf Heap@8 exhaleMask@_700@5 ZeroMask)
    (wf Heap@8 Mask@144 ZeroMask)
  )
    (and anon1140_Else anon1140_Then)
)))
(let ((anon984_Then@5 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (= unfoldingMask@_587@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
    (not false)
  )
    (and anon1012_Else anon1012_Then)
)))
(let ((anon805@14 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@4 this AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_899@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@4 this AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@4 this AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@4 this AVLTreeNode.balanceFactor) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@4 this AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@4 this AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_899@5)
    (wf Heap@1 exhaleMask@_899@5 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )
    (and anon1265_Else anon1265_Then)
)))
(let ((anon763@11 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@3 this AVLTreeNode.keys) perm$R))
    (= exhaleMask@_853@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@3 this AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@3 this AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@3 this AVLTreeNode.keys) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@3 this AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_853@3 this AVLTreeNode.keys) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_853@4)
    (wf exhaleHeap@_836@0 exhaleMask@_853@4 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )(and 
    anon763@12_assertion
    anon763@13
))))
(let ((anon1253_Then (=> (and true
    (> (Fractions 100) 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null))
  )(and 
    anon1253_Then@1_assertion
    anon1253_Then@2
))))
(let ((anon681@14 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@4 this AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_800@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@4 this AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@4 this AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@4 this AVLTreeNode.balanceFactor) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@4 this AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@4 this AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_800@5)
    (wf Heap@1 exhaleMask@_800@5 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )
    (and anon1203_Else anon1203_Then)
)))
(let ((anon639@13 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@3 this AVLTreeNode.keys) perm$R))
    (= exhaleMask@_754@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@3 this AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@3 this AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@3 this AVLTreeNode.keys) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@3 this AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_754@3 this AVLTreeNode.keys) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_754@4)
    (wf exhaleHeap@_737@0 exhaleMask@_754@4 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )(and 
    anon639@14_assertion
    anon639@15
))))
(let ((anon1191_Then (=> (and true
    (> (Fractions 100) 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null))
  )(and 
    anon1191_Then@1_assertion
    anon1191_Then@2
))))
(let ((anon556@12 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@3 r@20@0 AVLTreeNode.keys) perm$R))
    (= exhaleMask@_700@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@3 r@20@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@3 r@20@0 AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@3 r@20@0 AVLTreeNode.keys) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@3 r@20@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_700@3 r@20@0 AVLTreeNode.keys) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_700@4)
    (wf Heap@8 exhaleMask@_700@4 ZeroMask)
    (wf Heap@8 Mask@144 ZeroMask)
  )(and 
    anon556@13_assertion
    anon556@14
))))
(let ((anon984_Then (=> (and true
    (< (* 1000 unfoldingK@_591) (Fractions 1))
    (< 0 unfoldingK@_591)
    (=> true (CanRead$ref$ Mask@26 ZeroMask this AVLTreeNode.left))
    (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null)))
    (=> true (not (= this null)))
    (> (Fractions 100) 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon984_Then@4_assertion
    anon984_Then@5
))))
(let ((anon805@12 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@3 this AVLTreeNode.keys) perm$R))
    (= exhaleMask@_899@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@3 this AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@3 this AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@3 this AVLTreeNode.keys) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@3 this AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_899@3 this AVLTreeNode.keys) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_899@4)
    (wf Heap@1 exhaleMask@_899@4 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon805@13_assertion
    anon805@14
))))
(let ((anon763@9 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_853@2 this AVLTreeNode.right) perm$R))
    (= exhaleMask@_853@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_853@2 this AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_853@2 this AVLTreeNode.right) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_853@2 this AVLTreeNode.right) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_853@2 this AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_853@2 this AVLTreeNode.right) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_853@3)
    (wf exhaleHeap@_836@0 exhaleMask@_853@3 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )(and 
    anon763@10_assertion
    anon763@11
))))
(let ((anon780@14 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@4 this AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_876@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@4 this AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@4 this AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@4 this AVLTreeNode.balanceFactor) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@4 this AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@4 this AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_876@5)
    (wf exhaleHeap@_836@0 exhaleMask@_876@5 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )
    (and anon1253_Else anon1253_Then)
)))
(let ((anon681@12 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@3 this AVLTreeNode.keys) perm$R))
    (= exhaleMask@_800@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@3 this AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@3 this AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@3 this AVLTreeNode.keys) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@3 this AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_800@3 this AVLTreeNode.keys) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_800@4)
    (wf Heap@1 exhaleMask@_800@4 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon681@13_assertion
    anon681@14
))))
(let ((anon639@11 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_754@2 this AVLTreeNode.right) perm$R))
    (= exhaleMask@_754@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_754@2 this AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_754@2 this AVLTreeNode.right) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_754@2 this AVLTreeNode.right) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_754@2 this AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_754@2 this AVLTreeNode.right) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_754@3)
    (wf exhaleHeap@_737@0 exhaleMask@_754@3 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )(and 
    anon639@12_assertion
    anon639@13
))))
(let ((anon656@14 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@4 this AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_777@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@4 this AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@4 this AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@4 this AVLTreeNode.balanceFactor) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@4 this AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@4 this AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_777@5)
    (wf exhaleHeap@_737@0 exhaleMask@_777@5 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )
    (and anon1191_Else anon1191_Then)
)))
(let ((anon556@10 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_700@2 r@20@0 AVLTreeNode.right) perm$R))
    (= exhaleMask@_700@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_700@2 r@20@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_700@2 r@20@0 AVLTreeNode.right) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_700@2 r@20@0 AVLTreeNode.right) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_700@2 r@20@0 AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_700@2 r@20@0 AVLTreeNode.right) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_700@3)
    (wf Heap@8 exhaleMask@_700@3 ZeroMask)
    (wf Heap@8 Mask@144 ZeroMask)
  )(and 
    anon556@11_assertion
    anon556@12
))))
(let ((anon242 (=> (and true
    (=> true (CanRead$ref$ Mask@26 ZeroMask this AVLTreeNode.left))
    (=> true (not (= this null)))
    (IsGoodExhaleState exhaleHeap@_535@0 Heap@1 Mask@26 assertSecMask@_533@22)
    (IsGoodMask Mask@26)
    (wf exhaleHeap@_535@0 Mask@26 assertSecMask@_533@22)
    (wf Heap@1 Mask@26 ZeroMask)
  )
    (and anon984_Else anon984_Then)
)))
(let ((anon805@10 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_899@2 this AVLTreeNode.right) perm$R))
    (= exhaleMask@_899@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_899@2 this AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_899@2 this AVLTreeNode.right) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_899@2 this AVLTreeNode.right) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_899@2 this AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_899@2 this AVLTreeNode.right) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_899@3)
    (wf Heap@1 exhaleMask@_899@3 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon805@11_assertion
    anon805@12
))))
(let ((anon763@7 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_853@1 this AVLTreeNode.left) perm$R))
    (= exhaleMask@_853@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_853@1 this AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_853@1 this AVLTreeNode.left) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_853@1 this AVLTreeNode.left) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_853@1 this AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_853@1 this AVLTreeNode.left) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_853@2)
    (wf exhaleHeap@_836@0 exhaleMask@_853@2 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )(and 
    anon763@8_assertion
    anon763@9
))))
(let ((anon780@12 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@3 this AVLTreeNode.keys) perm$R))
    (= exhaleMask@_876@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@3 this AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@3 this AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@3 this AVLTreeNode.keys) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@3 this AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_876@3 this AVLTreeNode.keys) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_876@4)
    (wf exhaleHeap@_836@0 exhaleMask@_876@4 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )(and 
    anon780@13_assertion
    anon780@14
))))
(let ((anon681@10 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_800@2 this AVLTreeNode.right) perm$R))
    (= exhaleMask@_800@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_800@2 this AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_800@2 this AVLTreeNode.right) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_800@2 this AVLTreeNode.right) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_800@2 this AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_800@2 this AVLTreeNode.right) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_800@3)
    (wf Heap@1 exhaleMask@_800@3 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon681@11_assertion
    anon681@12
))))
(let ((anon639@9 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_754@1 this AVLTreeNode.left) perm$R))
    (= exhaleMask@_754@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_754@1 this AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_754@1 this AVLTreeNode.left) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_754@1 this AVLTreeNode.left) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_754@1 this AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_754@1 this AVLTreeNode.left) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_754@2)
    (wf exhaleHeap@_737@0 exhaleMask@_754@2 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )(and 
    anon639@10_assertion
    anon639@11
))))
(let ((anon656@12 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@3 this AVLTreeNode.keys) perm$R))
    (= exhaleMask@_777@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@3 this AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@3 this AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@3 this AVLTreeNode.keys) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@3 this AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_777@3 this AVLTreeNode.keys) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_777@4)
    (wf exhaleHeap@_737@0 exhaleMask@_777@4 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )(and 
    anon656@13_assertion
    anon656@14
))))
(let ((anon556@8 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_700@1 r@20@0 AVLTreeNode.left) perm$R))
    (= exhaleMask@_700@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_700@1 r@20@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_700@1 r@20@0 AVLTreeNode.left) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_700@1 r@20@0 AVLTreeNode.left) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_700@1 r@20@0 AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_700@1 r@20@0 AVLTreeNode.left) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_700@2)
    (wf Heap@8 exhaleMask@_700@2 ZeroMask)
    (wf Heap@8 Mask@144 ZeroMask)
  )(and 
    anon556@9_assertion
    anon556@10
))))
(let ((anon241@5 (=> (and true
    (= assertSecMask@_533@22 assertSecMask@_533@21)
    (not (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) Seq@Empty$Int$))
  )
    anon242
)))
(let ((anon904_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null)
    (= assertSecMask@_533@22 ZeroMask)
  )
    anon242
)))
(let ((anon805@8 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_899@1 this AVLTreeNode.left) perm$R))
    (= exhaleMask@_899@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_899@1 this AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_899@1 this AVLTreeNode.left) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_899@1 this AVLTreeNode.left) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_899@1 this AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_899@1 this AVLTreeNode.left) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_899@2)
    (wf Heap@1 exhaleMask@_899@2 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon805@9_assertion
    anon805@10
))))
(let ((anon763@5 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@0 this AVLTreeNode.height) perm$R))
    (= exhaleMask@_853@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@0 this AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@0 this AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@0 this AVLTreeNode.height) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@0 this AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_853@0 this AVLTreeNode.height) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_853@1)
    (wf exhaleHeap@_836@0 exhaleMask@_853@1 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )(and 
    anon763@6_assertion
    anon763@7
))))
(let ((anon780@10 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_876@2 this AVLTreeNode.right) perm$R))
    (= exhaleMask@_876@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_876@2 this AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_876@2 this AVLTreeNode.right) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_876@2 this AVLTreeNode.right) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_876@2 this AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_876@2 this AVLTreeNode.right) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_876@3)
    (wf exhaleHeap@_836@0 exhaleMask@_876@3 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )(and 
    anon780@11_assertion
    anon780@12
))))
(let ((anon681@8 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_800@1 this AVLTreeNode.left) perm$R))
    (= exhaleMask@_800@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_800@1 this AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_800@1 this AVLTreeNode.left) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_800@1 this AVLTreeNode.left) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_800@1 this AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_800@1 this AVLTreeNode.left) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_800@2)
    (wf Heap@1 exhaleMask@_800@2 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon681@9_assertion
    anon681@10
))))
(let ((anon639@7 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@0 this AVLTreeNode.height) perm$R))
    (= exhaleMask@_754@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@0 this AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@0 this AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@0 this AVLTreeNode.height) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@0 this AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_754@0 this AVLTreeNode.height) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_754@1)
    (wf exhaleHeap@_737@0 exhaleMask@_754@1 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )(and 
    anon639@8_assertion
    anon639@9
))))
(let ((anon656@10 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_777@2 this AVLTreeNode.right) perm$R))
    (= exhaleMask@_777@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_777@2 this AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_777@2 this AVLTreeNode.right) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_777@2 this AVLTreeNode.right) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_777@2 this AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_777@2 this AVLTreeNode.right) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_777@3)
    (wf exhaleHeap@_737@0 exhaleMask@_777@3 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )(and 
    anon656@11_assertion
    anon656@12
))))
(let ((anon556@6 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@0 r@20@0 AVLTreeNode.height) perm$R))
    (= exhaleMask@_700@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@0 r@20@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@0 r@20@0 AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@0 r@20@0 AVLTreeNode.height) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@0 r@20@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_700@0 r@20@0 AVLTreeNode.height) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_700@1)
    (wf Heap@8 exhaleMask@_700@1 ZeroMask)
    (wf Heap@8 Mask@144 ZeroMask)
  )(and 
    anon556@7_assertion
    anon556@8
))))
(let ((anon241@4 (=> (and true
    (=> true (CanRead$Seq$Int$$ unfoldingMask@_538@22 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.keys))
  )(and 
    anon241@4_assertion
    anon241@5
))))
(let ((anon805@6 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@0 this AVLTreeNode.height) perm$R))
    (= exhaleMask@_899@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@0 this AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@0 this AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@0 this AVLTreeNode.height) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@0 this AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_899@0 this AVLTreeNode.height) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_899@1)
    (wf Heap@1 exhaleMask@_899@1 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon805@7_assertion
    anon805@8
))))
(let ((anon763@3 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@48 this AVLTreeNode.key) perm$R))
    (= exhaleMask@_853@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@48 this AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@48 this AVLTreeNode.key) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@48 this AVLTreeNode.key) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@48 this AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@48 this AVLTreeNode.key) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_853@0)
    (wf exhaleHeap@_836@0 exhaleMask@_853@0 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )(and 
    anon763@4_assertion
    anon763@5
))))
(let ((anon780@8 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_876@1 this AVLTreeNode.left) perm$R))
    (= exhaleMask@_876@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_876@1 this AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_876@1 this AVLTreeNode.left) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_876@1 this AVLTreeNode.left) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_876@1 this AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_876@1 this AVLTreeNode.left) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_876@2)
    (wf exhaleHeap@_836@0 exhaleMask@_876@2 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )(and 
    anon780@9_assertion
    anon780@10
))))
(let ((anon681@6 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@0 this AVLTreeNode.height) perm$R))
    (= exhaleMask@_800@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@0 this AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@0 this AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@0 this AVLTreeNode.height) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@0 this AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_800@0 this AVLTreeNode.height) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_800@1)
    (wf Heap@1 exhaleMask@_800@1 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon681@7_assertion
    anon681@8
))))
(let ((anon639@5 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@78 this AVLTreeNode.key) perm$R))
    (= exhaleMask@_754@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@78 this AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@78 this AVLTreeNode.key) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@78 this AVLTreeNode.key) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@78 this AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@78 this AVLTreeNode.key) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_754@0)
    (wf exhaleHeap@_737@0 exhaleMask@_754@0 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )(and 
    anon639@6_assertion
    anon639@7
))))
(let ((anon656@8 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_777@1 this AVLTreeNode.left) perm$R))
    (= exhaleMask@_777@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_777@1 this AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_777@1 this AVLTreeNode.left) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_777@1 this AVLTreeNode.left) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_777@1 this AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_777@1 this AVLTreeNode.left) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_777@2)
    (wf exhaleHeap@_737@0 exhaleMask@_777@2 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )(and 
    anon656@9_assertion
    anon656@10
))))
(let ((anon556@4 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@144 r@20@0 AVLTreeNode.key) perm$R))
    (= exhaleMask@_700@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@144 r@20@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@144 r@20@0 AVLTreeNode.key) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@144 r@20@0 AVLTreeNode.key) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@144 r@20@0 AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@144 r@20@0 AVLTreeNode.key) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_700@0)
    (wf Heap@8 exhaleMask@_700@0 ZeroMask)
    (wf Heap@8 Mask@144 ZeroMask)
  )(and 
    anon556@5_assertion
    anon556@6
))))
(let ((anon241@2 (=> (and true
    (=> true (CanRead$ref$ unfoldingMask@_538@22 ZeroMask this AVLTreeNode.right))
    (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) null)))
  )(and 
    anon241@3_assertion
    anon241@4
))))
(let ((anon805@4 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this AVLTreeNode.key) perm$R))
    (= exhaleMask@_899@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this AVLTreeNode.key) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this AVLTreeNode.key) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this AVLTreeNode.key) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_899@0)
    (wf Heap@1 exhaleMask@_899@0 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon805@5_assertion
    anon805@6
))))
(let ((anon763@1 (=> (and true
    (= (- (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height))) 2)
    (> (Fractions 100) 0)
  )(and 
    anon763@2_assertion
    anon763@3
))))
(let ((anon780@6 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@0 this AVLTreeNode.height) perm$R))
    (= exhaleMask@_876@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@0 this AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@0 this AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@0 this AVLTreeNode.height) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@0 this AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_876@0 this AVLTreeNode.height) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_876@1)
    (wf exhaleHeap@_836@0 exhaleMask@_876@1 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )(and 
    anon780@7_assertion
    anon780@8
))))
(let ((anon681@4 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this AVLTreeNode.key) perm$R))
    (= exhaleMask@_800@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this AVLTreeNode.key) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this AVLTreeNode.key) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this AVLTreeNode.key) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_800@0)
    (wf Heap@1 exhaleMask@_800@0 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon681@5_assertion
    anon681@6
))))
(let ((anon639@3 (=> (and true
    (= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height)) (- 0 2))
    (> (Fractions 100) 0)
  )(and 
    anon639@4_assertion
    anon639@5
))))
(let ((anon656@6 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@0 this AVLTreeNode.height) perm$R))
    (= exhaleMask@_777@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@0 this AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@0 this AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@0 this AVLTreeNode.height) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@0 this AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_777@0 this AVLTreeNode.height) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_777@1)
    (wf exhaleHeap@_737@0 exhaleMask@_777@1 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )(and 
    anon656@7_assertion
    anon656@8
))))
(let ((anon556@2 (=> (and true
    (> (Fractions 100) 0)
    (>= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.height))) (- 0 1))
  )(and 
    anon556@3_assertion
    anon556@4
))))
(let ((anon241 (=> (and true
    (<= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) 1)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (=> true (not (= this null)))
    (> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) 0)
    (>= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) (- 0 1))
    (forall( (|kk#81_$1| Int))(= (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) |kk#81_$1|) (or (or (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) null)) (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys) |kk#81_$1|)) (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) null)) (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys) |kk#81_$1|))) (= |kk#81_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.key)))))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.key))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys))))
  )(and 
    anon241@1_assertion
    anon241@2
))))
(let ((anon805@2 (=> (and true
    (> (Fractions 100) 0)
    (>= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height))) (- 0 1))
  )(and 
    anon805@3_assertion
    anon805@4
))))
(let ((anon763 (=> (and true
  )(and 
    anon763_assertion
    anon763@1
))))
(let ((anon780@4 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@48 this AVLTreeNode.key) perm$R))
    (= exhaleMask@_876@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@48 this AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@48 this AVLTreeNode.key) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@48 this AVLTreeNode.key) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@48 this AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@48 this AVLTreeNode.key) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_876@0)
    (wf exhaleHeap@_836@0 exhaleMask@_876@0 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )(and 
    anon780@5_assertion
    anon780@6
))))
(let ((anon681@2 (=> (and true
    (> (Fractions 100) 0)
    (>= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height))) (- 0 1))
  )(and 
    anon681@3_assertion
    anon681@4
))))
(let ((anon639@2 (=> (and true
    (forall( (|k#105#279| Int))(=> (and (<= 0 |k#105#279|) (< |k#105#279| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys) |k#105#279|))))
  )(and 
    anon639@2_assertion
    anon639@3
))))
(let ((anon656@4 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@78 this AVLTreeNode.key) perm$R))
    (= exhaleMask@_777@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@78 this AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@78 this AVLTreeNode.key) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@78 this AVLTreeNode.key) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@78 this AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@78 this AVLTreeNode.key) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_777@0)
    (wf exhaleHeap@_737@0 exhaleMask@_777@0 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )(and 
    anon656@5_assertion
    anon656@6
))))
(let ((anon556@1 (=> (and true
    (<= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.height))) 1)
  )(and 
    anon556@1_assertion
    anon556@2
))))
(let ((anon978_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) null)
    (= assertSecMask@_533@15 assertSecMask@_533@13)
    (= assertSecMask@_533@17 assertSecMask@_533@15)
    (= assertSecMask@_533@19 assertSecMask@_533@17)
    (= assertSecMask@_533@21 assertSecMask@_533@19)
  )
    anon241
)))
(let ((anon978_Then (=> (and true
    (= assertSecMask@_533@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_533@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_533@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_533@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= assertSecMask@_533@15 assertSecMask@_533@14)
    (= assertSecMask@_533@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_533@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_533@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_533@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= assertSecMask@_533@17 assertSecMask@_533@16)
    (= assertSecMask@_533@18 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ assertSecMask@_533@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ assertSecMask@_533@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ assertSecMask@_533@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= assertSecMask@_533@19 assertSecMask@_533@18)
    (= assertSecMask@_533@20 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_533@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_533@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_533@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= assertSecMask@_533@21 assertSecMask@_533@20)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height) 0)
    (forall( (|rk#80#235| Int))(=> (and (<= 0 |rk#80#235|) (< |rk#80#235| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys) |rk#80#235|))))
    (IsGoodMask Mask@26)
    (IsGoodMask Mask@26)
    (IsGoodMask Mask@26)
    (IsGoodMask Mask@26)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) null))
    (wf Heap@1 Mask@26 assertSecMask@_533@13)
    (wf Heap@1 Mask@26 assertSecMask@_533@14)
    (wf Heap@1 Mask@26 assertSecMask@_533@14)
    (wf Heap@1 Mask@26 assertSecMask@_533@15)
    (wf Heap@1 Mask@26 assertSecMask@_533@16)
    (wf Heap@1 Mask@26 assertSecMask@_533@16)
    (wf Heap@1 Mask@26 assertSecMask@_533@17)
    (wf Heap@1 Mask@26 assertSecMask@_533@18)
    (wf Heap@1 Mask@26 assertSecMask@_533@18)
    (wf Heap@1 Mask@26 assertSecMask@_533@19)
    (wf Heap@1 Mask@26 assertSecMask@_533@20)
    (wf Heap@1 Mask@26 assertSecMask@_533@20)
  )
    anon241
)))
(let ((anon805@1 (=> (and true
    (<= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height))) 1)
  )(and 
    anon805@1_assertion
    anon805@2
))))
(let ((anon1244_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null)
  )
    anon763
)))
(let ((anon1244_Then@1 (=> (and true
    (forall( (|k#95#302| Int))(=> (and (<= 0 |k#95#302|) (< |k#95#302| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys) |k#95#302|))))
  )
    anon763
)))
(let ((anon780@2 (=> (and true
    (> (Fractions 100) 0)
    (>= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height))) (- 0 1))
  )(and 
    anon780@3_assertion
    anon780@4
))))
(let ((anon681@1 (=> (and true
    (<= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height))) 1)
  )(and 
    anon681@1_assertion
    anon681@2
))))
(let ((anon639@1 (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null))
  )(and 
    anon639@1_assertion
    anon639@2
))))
(let ((anon656@2 (=> (and true
    (> (Fractions 100) 0)
    (>= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height))) (- 0 1))
  )(and 
    anon656@3_assertion
    anon656@4
))))
(let ((anon556 (=> (and true
  )(and 
    anon556_assertion
    anon556@1
))))
(let (($branchMerge_82 (=> (and true
  )
    (and anon978_Else anon978_Then)
)))
(let ((anon805 (=> (and true
  )(and 
    anon805_assertion
    anon805@1
))))
(let ((anon1244_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null))
  )(and 
    anon1244_Then_assertion
    anon1244_Then@1
))))
(let ((anon780@1 (=> (and true
    (<= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height))) 1)
  )(and 
    anon780@1_assertion
    anon780@2
))))
(let ((anon681 (=> (and true
  )(and 
    anon681_assertion
    anon681@1
))))
(let ((anon639 (=> (and true
  )(and 
    anon639_assertion
    anon639@1
))))
(let ((anon656@1 (=> (and true
    (<= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height))) 1)
  )(and 
    anon656@1_assertion
    anon656@2
))))
(let ((anon1139_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) null)
  )
    anon556
)))
(let ((anon1139_Then@1 (=> (and true
    (forall( (|k#93#266| Int))(=> (and (<= 0 |k#93#266|) (< |k#93#266| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@8 r@20@0 AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) AVLTreeNode.keys) |k#93#266|))))
  )
    anon556
)))
(let ((anon972_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) null)
    (= assertSecMask@_533@11 assertSecMask@_533@9)
    (= assertSecMask@_533@13 assertSecMask@_533@11)
    (= assertSecMask@_533@7 assertSecMask@_533@5)
    (= assertSecMask@_533@9 assertSecMask@_533@7)
  )
    $branchMerge_82
)))
(let ((anon972_Then (=> (and true
    (= assertSecMask@_533@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ assertSecMask@_533@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ assertSecMask@_533@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ assertSecMask@_533@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= assertSecMask@_533@11 assertSecMask@_533@10)
    (= assertSecMask@_533@12 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_533@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_533@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_533@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= assertSecMask@_533@13 assertSecMask@_533@12)
    (= assertSecMask@_533@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_533@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_533@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_533@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= assertSecMask@_533@7 assertSecMask@_533@6)
    (= assertSecMask@_533@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_533@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_533@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_533@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= assertSecMask@_533@9 assertSecMask@_533@8)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height) 0)
    (forall( (|lk#79#234| Int))(=> (and (<= 0 |lk#79#234|) (< |lk#79#234| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys) |lk#79#234|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.key))))
    (IsGoodMask Mask@26)
    (IsGoodMask Mask@26)
    (IsGoodMask Mask@26)
    (IsGoodMask Mask@26)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) null))
    (wf Heap@1 Mask@26 assertSecMask@_533@10)
    (wf Heap@1 Mask@26 assertSecMask@_533@10)
    (wf Heap@1 Mask@26 assertSecMask@_533@11)
    (wf Heap@1 Mask@26 assertSecMask@_533@12)
    (wf Heap@1 Mask@26 assertSecMask@_533@12)
    (wf Heap@1 Mask@26 assertSecMask@_533@5)
    (wf Heap@1 Mask@26 assertSecMask@_533@6)
    (wf Heap@1 Mask@26 assertSecMask@_533@6)
    (wf Heap@1 Mask@26 assertSecMask@_533@7)
    (wf Heap@1 Mask@26 assertSecMask@_533@8)
    (wf Heap@1 Mask@26 assertSecMask@_533@8)
    (wf Heap@1 Mask@26 assertSecMask@_533@9)
  )
    $branchMerge_82
)))
(let ((anon1264_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null)
  )
    anon805
)))
(let ((anon1264_Then@1 (=> (and true
    (forall( (|k#93#312| Int))(=> (and (<= 0 |k#93#312|) (< |k#93#312| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) |k#93#312|))))
  )
    anon805
)))
(let ((anon1243_Then@3 (=> (and true
    (forall( (|k#94#301| Int))(=> (and (<= 0 |k#94#301|) (< |k#94#301| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys) |k#94#301|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 this AVLTreeNode.key))))
  )
    (and anon1244_Else anon1244_Then)
)))
(let ((anon780 (=> (and true
  )(and 
    anon780_assertion
    anon780@1
))))
(let ((anon1202_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null)
  )
    anon681
)))
(let ((anon1202_Then@1 (=> (and true
    (forall( (|k#93#289| Int))(=> (and (<= 0 |k#93#289|) (< |k#93#289| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) |k#93#289|))))
  )
    anon681
)))
(let ((anon1182_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null)
  )
    anon639
)))
(let ((anon1182_Then@1 (=> (and true
    (forall( (|k#104#278| Int))(=> (and (<= 0 |k#104#278|) (< |k#104#278| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys) |k#104#278|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 this AVLTreeNode.key))))
  )
    anon639
)))
(let ((anon656 (=> (and true
  )(and 
    anon656_assertion
    anon656@1
))))
(let ((anon1139_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.right) null))
  )(and 
    anon1139_Then_assertion
    anon1139_Then@1
))))
(let ((anon163 (=> (and true
    (<= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) 1)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.height) (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= assertSecMask@_533@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.key) perm$R) (Fractions 100)))))
    (= assertSecMask@_533@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_533@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_533@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_533@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= assertSecMask@_533@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ assertSecMask@_533@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ assertSecMask@_533@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ assertSecMask@_533@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) perm$R) (Fractions 100)))))
    (= assertSecMask@_533@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ assertSecMask@_533@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ assertSecMask@_533@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ assertSecMask@_533@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) perm$R) (Fractions 100)))))
    (= assertSecMask@_533@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ assertSecMask@_533@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ assertSecMask@_533@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ assertSecMask@_533@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= assertSecMask@_533@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_533@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_533@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ assertSecMask@_533@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (> (Fractions 100) 0)
    (> (Fractions 100) 0)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.height) 0)
    (>= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) (- 0 1))
    (forall( (|kk#81_$0| Int))(= (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.keys) |kk#81_$0|) (or (or (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) null)) (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys) |kk#81_$0|)) (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) null)) (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys) |kk#81_$0|))) (= |kk#81_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.key)))))
    (IsGoodMask Mask@26)
    (IsGoodMask Mask@26)
    (IsGoodMask Mask@26)
    (IsGoodMask Mask@26)
    (IsGoodMask Mask@26)
    (IsGoodMask Mask@26)
    (IsGoodMask unfoldingMask@_538@22)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.key)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
    (not false)
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.left)) AVLTreeNode@t))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.right)) AVLTreeNode@t))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.key))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys))))
    (wf Heap@1 Mask@26 assertSecMask@_533@0)
    (wf Heap@1 Mask@26 assertSecMask@_533@0)
    (wf Heap@1 Mask@26 assertSecMask@_533@0)
    (wf Heap@1 Mask@26 assertSecMask@_533@1)
    (wf Heap@1 Mask@26 assertSecMask@_533@1)
    (wf Heap@1 Mask@26 assertSecMask@_533@1)
    (wf Heap@1 Mask@26 assertSecMask@_533@2)
    (wf Heap@1 Mask@26 assertSecMask@_533@2)
    (wf Heap@1 Mask@26 assertSecMask@_533@2)
    (wf Heap@1 Mask@26 assertSecMask@_533@3)
    (wf Heap@1 Mask@26 assertSecMask@_533@3)
    (wf Heap@1 Mask@26 assertSecMask@_533@3)
    (wf Heap@1 Mask@26 assertSecMask@_533@4)
    (wf Heap@1 Mask@26 assertSecMask@_533@4)
    (wf Heap@1 Mask@26 assertSecMask@_533@4)
    (wf Heap@1 Mask@26 assertSecMask@_533@5)
    (wf Heap@1 Mask@26 assertSecMask@_533@5)
    (wf Heap@1 Mask@26 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@22 ZeroMask)
  )
    (and anon972_Else anon972_Then)
)))
(let ((anon1264_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
  )(and 
    anon1264_Then_assertion
    anon1264_Then@1
))))
(let ((anon1243_Then@2 (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null))
  )(and 
    anon1243_Then@2_assertion
    anon1243_Then@3
))))
(let ((anon1252_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null)
  )
    anon780
)))
(let ((anon1252_Then@1 (=> (and true
    (forall( (|k#93#307| Int))(=> (and (<= 0 |k#93#307|) (< |k#93#307| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.keys) |k#93#307|))))
  )
    anon780
)))
(let ((anon1202_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
  )(and 
    anon1202_Then_assertion
    anon1202_Then@1
))))
(let ((anon1182_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null))
  )(and 
    anon1182_Then_assertion
    anon1182_Then@1
))))
(let ((anon1190_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null)
  )
    anon656
)))
(let ((anon1190_Then@1 (=> (and true
    (forall( (|k#93#284| Int))(=> (and (<= 0 |k#93#284|) (< |k#93#284| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.keys) |k#93#284|))))
  )
    anon656
)))
(let (($branchMerge_149 (=> (and true
  )
    (and anon1139_Else anon1139_Then)
)))
(let ((anon939_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) null)
    (= unfoldingMask@_538@16 unfoldingMask@_538@14)
    (= unfoldingMask@_538@18 unfoldingMask@_538@16)
    (= unfoldingMask@_538@20 unfoldingMask@_538@18)
    (= unfoldingMask@_538@22 unfoldingMask@_538@20)
  )
    anon163
)))
(let ((anon939_Then (=> (and true
    (= unfoldingMask@_538@15 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= unfoldingMask@_538@16 unfoldingMask@_538@15)
    (= unfoldingMask@_538@17 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= unfoldingMask@_538@18 unfoldingMask@_538@17)
    (= unfoldingMask@_538@19 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ unfoldingMask@_538@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ unfoldingMask@_538@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ unfoldingMask@_538@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= unfoldingMask@_538@20 unfoldingMask@_538@19)
    (= unfoldingMask@_538@21 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= unfoldingMask@_538@22 unfoldingMask@_538@21)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height) 0)
    (forall( (|rk#80#229| Int))(=> (and (<= 0 |rk#80#229|) (< |rk#80#229| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys) |rk#80#229|))))
    (IsGoodMask unfoldingMask@_538@15)
    (IsGoodMask unfoldingMask@_538@17)
    (IsGoodMask unfoldingMask@_538@19)
    (IsGoodMask unfoldingMask@_538@21)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) null))
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@14 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@15 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@15 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@16 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@17 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@17 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@18 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@19 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@19 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@20 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@21 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@21 ZeroMask)
  )
    anon163
)))
(let (($branchMerge_12 (=> (and true
  )
    (and anon1264_Else anon1264_Then)
)))
(let ((anon1243_Then (=> (and true
    (< (* 1000 methodCallK@_851) (Fractions 1))
    (< (* 1000 methodCallK@_851) methodK@_506)
    (< 0 methodCallK@_851)
    (not (= this null))
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
    cond@_846@0
  )(and 
    anon1243_Then@1_assertion
    anon1243_Then@2
))))
(let ((anon1252_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null))
  )(and 
    anon1252_Then_assertion
    anon1252_Then@1
))))
(let (($branchMerge_11 (=> (and true
  )
    (and anon1202_Else anon1202_Then)
)))
(let ((anon1181_Then (=> (and true
    (< (* 1000 methodCallK@_752) (Fractions 1))
    (< (* 1000 methodCallK@_752) methodK@_506)
    (< 0 methodCallK@_752)
    (not (= this null))
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
    cond@_747@0
  )
    (and anon1182_Else anon1182_Then)
)))
(let ((anon1190_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null))
  )(and 
    anon1190_Then_assertion
    anon1190_Then@1
))))
(let ((anon1138_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) null)
  )
    $branchMerge_149
)))
(let ((anon1138_Then@1 (=> (and true
    (forall( (|k#92#265| Int))(=> (and (<= 0 |k#92#265|) (< |k#92#265| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) AVLTreeNode.keys) |k#92#265|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@8 r@20@0 AVLTreeNode.key))))
  )
    $branchMerge_149
)))
(let (($branchMerge_38 (=> (and true
  )
    (and anon939_Else anon939_Then)
)))
(let ((anon1263_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null)
  )
    $branchMerge_12
)))
(let ((anon1263_Then@1 (=> (and true
    (forall( (|k#92#311| Int))(=> (and (<= 0 |k#92#311|) (< |k#92#311| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) |k#92#311|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key))))
  )
    $branchMerge_12
)))
(let (($branchMerge_118 (=> (and true
  )
    (and anon1252_Else anon1252_Then)
)))
(let ((anon1201_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null)
  )
    $branchMerge_11
)))
(let ((anon1201_Then@1 (=> (and true
    (forall( (|k#92#288| Int))(=> (and (<= 0 |k#92#288|) (< |k#92#288| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) |k#92#288|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key))))
  )
    $branchMerge_11
)))
(let (($branchMerge_117 (=> (and true
  )
    (and anon1190_Else anon1190_Then)
)))
(let ((anon1138_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@8 r@20@0 AVLTreeNode.left) null))
  )(and 
    anon1138_Then_assertion
    anon1138_Then@1
))))
(let ((anon933_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) null)
    (= unfoldingMask@_538@10 unfoldingMask@_538@8)
    (= unfoldingMask@_538@12 unfoldingMask@_538@10)
    (= unfoldingMask@_538@14 unfoldingMask@_538@12)
    (= unfoldingMask@_538@8 unfoldingMask@_538@6)
  )
    $branchMerge_38
)))
(let ((anon933_Then (=> (and true
    (= unfoldingMask@_538@10 unfoldingMask@_538@9)
    (= unfoldingMask@_538@11 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ unfoldingMask@_538@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ unfoldingMask@_538@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ unfoldingMask@_538@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= unfoldingMask@_538@12 unfoldingMask@_538@11)
    (= unfoldingMask@_538@13 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= unfoldingMask@_538@14 unfoldingMask@_538@13)
    (= unfoldingMask@_538@7 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= unfoldingMask@_538@8 unfoldingMask@_538@7)
    (= unfoldingMask@_538@9 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height) 0)
    (forall( (|lk#79#228| Int))(=> (and (<= 0 |lk#79#228|) (< |lk#79#228| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys) |lk#79#228|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.key))))
    (IsGoodMask unfoldingMask@_538@11)
    (IsGoodMask unfoldingMask@_538@13)
    (IsGoodMask unfoldingMask@_538@7)
    (IsGoodMask unfoldingMask@_538@9)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) null))
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@10 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@11 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@11 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@12 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@13 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@13 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@6 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@7 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@7 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@8 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@9 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@9 ZeroMask)
  )
    $branchMerge_38
)))
(let ((anon1263_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
  )(and 
    anon1263_Then_assertion
    anon1263_Then@1
))))
(let ((anon1251_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null)
  )
    $branchMerge_118
)))
(let ((anon1251_Then@1 (=> (and true
    (forall( (|k#92#306| Int))(=> (and (<= 0 |k#92#306|) (< |k#92#306| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.keys) |k#92#306|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 this AVLTreeNode.key))))
  )
    $branchMerge_118
)))
(let ((anon1201_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
  )(and 
    anon1201_Then_assertion
    anon1201_Then@1
))))
(let ((anon1189_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null)
  )
    $branchMerge_117
)))
(let ((anon1189_Then@1 (=> (and true
    (forall( (|k#92#283| Int))(=> (and (<= 0 |k#92#283|) (< |k#92#283| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.keys) |k#92#283|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 this AVLTreeNode.key))))
  )
    $branchMerge_117
)))
(let ((anon552@2 (=> (and true
    (< (* 1000 methodCallK@_698) (Fractions 1))
    (< (* 1000 methodCallK@_698) methodK@_506)
    (< 0 methodCallK@_698)
    (= Heap@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@20@0 AVLTreeNode.right nr@26@1))
    (CanWrite$ref$ Mask@144 r@20@0 AVLTreeNode.right)
    (not (= r@20@0 null))
    (wf Heap@8 Mask@144 ZeroMask)
    (wf Heap@8 Mask@144 ZeroMask)
  )
    (and anon1138_Else anon1138_Then)
)))
(let ((anon139 (=> (and true
    (= unfoldingMask@_538@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.key) perm$R) (Fractions 100)))))
    (= unfoldingMask@_538@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= unfoldingMask@_538@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_538@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_538@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_538@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) perm$R) (Fractions 100)))))
    (= unfoldingMask@_538@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_538@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_538@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ unfoldingMask@_538@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) perm$R) (Fractions 100)))))
    (= unfoldingMask@_538@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ unfoldingMask@_538@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ unfoldingMask@_538@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ unfoldingMask@_538@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= unfoldingMask@_538@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ unfoldingMask@_538@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (> (Fractions 100) 0)
    (> (Fractions 100) 0)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (IsGoodMask unfoldingMask@_538@0)
    (IsGoodMask unfoldingMask@_538@0)
    (IsGoodMask unfoldingMask@_538@1)
    (IsGoodMask unfoldingMask@_538@2)
    (IsGoodMask unfoldingMask@_538@3)
    (IsGoodMask unfoldingMask@_538@4)
    (IsGoodMask unfoldingMask@_538@5)
    (IsGoodMask unfoldingMask@_538@6)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.key)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) null))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.left)) AVLTreeNode@t))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@1 this AVLTreeNode.right) AVLTreeNode.right)) AVLTreeNode@t))
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@0 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@0 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@0 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@1 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@1 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@1 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@2 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@2 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@2 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@3 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@3 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@3 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@4 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@4 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@4 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@5 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@5 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@5 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@6 ZeroMask)
    (wf unfoldingHeap@_537@1 unfoldingMask@_538@6 ZeroMask)
  )
    (and anon933_Else anon933_Then)
)))
(let ((anon1213_Else (=> (and true
    (< (* 1000 methodCallK@_897) (Fractions 1))
    (< (* 1000 methodCallK@_897) methodK@_506)
    (< 0 methodCallK@_897)
    (not (= this null))
    (not cond@_817@0)
    (wf Heap@1 Mask@26 ZeroMask)
  )
    (and anon1263_Else anon1263_Then)
)))
(let ((anon1251_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null))
  )(and 
    anon1251_Then_assertion
    anon1251_Then@1
))))
(let ((anon1151_Else (=> (and true
    (< (* 1000 methodCallK@_798) (Fractions 1))
    (< (* 1000 methodCallK@_798) methodK@_506)
    (< 0 methodCallK@_798)
    (not (= this null))
    (not cond@_718@0)
    (wf Heap@1 Mask@26 ZeroMask)
  )
    (and anon1201_Else anon1201_Then)
)))
(let ((anon1189_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null))
  )(and 
    anon1189_Then_assertion
    anon1189_Then@1
))))
(let ((anon552@1 (=> (and true
    (= Heap@7 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left nl@24@1))
    (CanWrite$ref$ Mask@144 r@20@0 AVLTreeNode.left)
    (wf Heap@7 Mask@144 ZeroMask)
  )(and 
    anon552@1_assertion
    anon552@2
))))
(let ((anon932_Else (=> (and true
    (= unfoldingHeap@_537@1 Heap@1)
    (CanRead$Int$ unfoldingMask@_538@0 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid)
  )
    anon139
)))
(let ((anon932_Then (=> (and true
    (< oldVers@_562@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ unfoldingHeap@_537@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ unfoldingHeap@_537@0 this AVLTreeNode.right) AVLTreeNode.valid))
    (= oldVers@_562@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid))
    (= unfoldingHeap@_537@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid newVers@_563@0))
    (= unfoldingHeap@_537@1 unfoldingHeap@_537@0)
    (not (CanRead$Int$ unfoldingMask@_538@0 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid))
  )
    anon139
)))
(let ((anon1243_Else (=> (and true
    (< (* 1000 methodCallK@_874) (Fractions 1))
    (< (* 1000 methodCallK@_874) methodK@_506)
    (< 0 methodCallK@_874)
    (not (= this null))
    (not cond@_846@0)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )
    (and anon1251_Else anon1251_Then)
)))
(let ((anon1181_Else (=> (and true
    (< (* 1000 methodCallK@_775) (Fractions 1))
    (< (* 1000 methodCallK@_775) methodK@_506)
    (< 0 methodCallK@_775)
    (not (= this null))
    (not cond@_747@0)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )
    (and anon1189_Else anon1189_Then)
)))
(let ((anon552 (=> (and true
    (<= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 r@20@0 AVLTreeNode.balanceFactor) 1)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 r@20@0 AVLTreeNode.balanceFactor) (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) AVLTreeNode.height))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 r@20@0 AVLTreeNode.height) (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 r@20@0 AVLTreeNode.height) 0)
    (>= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 r@20@0 AVLTreeNode.balanceFactor) (- 0 1))
    (forall( (|kk#81_$3| Int))(= (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 r@20@0 AVLTreeNode.keys) |kk#81_$3|) (or (or (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) null)) (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) AVLTreeNode.keys) |kk#81_$3|)) (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) null)) (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) AVLTreeNode.keys) |kk#81_$3|))) (= |kk#81_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 r@20@0 AVLTreeNode.key)))))
    (IsGoodMask Mask@144)
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 r@20@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 r@20@0 AVLTreeNode.key))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 r@20@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 r@20@0 AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) AVLTreeNode.keys))))
    (wf Heap@6 Mask@144 ZeroMask)
  )(and 
    anon552_assertion
    anon552@1
))))
(let ((anon904_Then@5 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (= unfoldingMask@_538@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
    (not false)
  )
    (and anon932_Else anon932_Then)
)))
(let ((anon760 (=> (and true
    (= cond@_846@0 (= bf@298@0 2))
    (IsGoodMask Mask@48)
    (wf exhaleHeap@_836@0 Mask@48 ZeroMask)
  )
    (and anon1243_Else anon1243_Then)
)))
(let ((anon636 (=> (and true
    (= cond@_747@0 (= bf@275@0 (- 0 2)))
    (IsGoodMask Mask@78)
    (wf exhaleHeap@_737@0 Mask@78 ZeroMask)
  )
    (and anon1181_Else anon1181_Then)
)))
(let ((anon1132_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) null)
    (= Mask@138 Mask@136)
    (= Mask@140 Mask@138)
    (= Mask@142 Mask@140)
    (= Mask@144 Mask@142)
  )
    anon552
)))
(let ((anon1132_Then (=> (and true
    (= Mask@137 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@136 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@136 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@136 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@138 Mask@137)
    (= Mask@139 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@138 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@138 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@138 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@140 Mask@139)
    (= Mask@141 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@140 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@140 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@140 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@142 Mask@141)
    (= Mask@143 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@142 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@142 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@142 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= Mask@144 Mask@143)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) AVLTreeNode.height) 0)
    (forall( (|rk#80#263| Int))(=> (and (<= 0 |rk#80#263|) (< |rk#80#263| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 r@20@0 AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) AVLTreeNode.keys) |rk#80#263|))))
    (IsGoodMask Mask@137)
    (IsGoodMask Mask@139)
    (IsGoodMask Mask@141)
    (IsGoodMask Mask@143)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) null))
    (wf Heap@6 Mask@136 ZeroMask)
    (wf Heap@6 Mask@137 ZeroMask)
    (wf Heap@6 Mask@137 ZeroMask)
    (wf Heap@6 Mask@138 ZeroMask)
    (wf Heap@6 Mask@139 ZeroMask)
    (wf Heap@6 Mask@139 ZeroMask)
    (wf Heap@6 Mask@140 ZeroMask)
    (wf Heap@6 Mask@141 ZeroMask)
    (wf Heap@6 Mask@141 ZeroMask)
    (wf Heap@6 Mask@142 ZeroMask)
    (wf Heap@6 Mask@143 ZeroMask)
    (wf Heap@6 Mask@143 ZeroMask)
  )
    anon552
)))
(let ((anon904_Then (=> (and true
    (< (* 1000 unfoldingK@_542) (Fractions 1))
    (< 0 unfoldingK@_542)
    (=> true (CanRead$ref$ Mask@26 ZeroMask this AVLTreeNode.right))
    (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null)))
    (=> true (not (= this null)))
    (> (Fractions 100) 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon904_Then@4_assertion
    anon904_Then@5
))))
(let ((anon1242_Else (=> (and true
    (<= 0 bf@298@0)
  )
    anon760
)))
(let ((anon1242_Then (=> (and true
    (< bf@298@0 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null))
  )
    anon760
)))
(let ((anon1180_Else (=> (and true
    (<= 0 bf@275@0)
  )
    anon636
)))
(let ((anon1180_Then (=> (and true
    (< bf@275@0 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null))
  )
    anon636
)))
(let (($branchMerge_122 (=> (and true
  )
    (and anon1132_Else anon1132_Then)
)))
(let ((anon903_Then@2 (=> (and true
    (=> true (CanRead$ref$ Mask@26 ZeroMask this AVLTreeNode.right))
  )
    (and anon904_Else anon904_Then)
)))
(let (($branchMerge_108 (=> (and true
  )
    (and anon1242_Else anon1242_Then)
)))
(let (($branchMerge_107 (=> (and true
  )
    (and anon1180_Else anon1180_Then)
)))
(let ((anon1126_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) null)
    (= Mask@130 Mask@128)
    (= Mask@132 Mask@130)
    (= Mask@134 Mask@132)
    (= Mask@136 Mask@134)
  )
    $branchMerge_122
)))
(let ((anon1126_Then (=> (and true
    (= Mask@129 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@128 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@128 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@128 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@130 Mask@129)
    (= Mask@131 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@130 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@130 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@130 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@132 Mask@131)
    (= Mask@133 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@132 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@132 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@132 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@134 Mask@133)
    (= Mask@135 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@134 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@134 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@134 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= Mask@136 Mask@135)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) AVLTreeNode.height) 0)
    (forall( (|lk#79#262| Int))(=> (and (<= 0 |lk#79#262|) (< |lk#79#262| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) AVLTreeNode.keys) |lk#79#262|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 r@20@0 AVLTreeNode.key))))
    (IsGoodMask Mask@129)
    (IsGoodMask Mask@131)
    (IsGoodMask Mask@133)
    (IsGoodMask Mask@135)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) null))
    (wf Heap@6 Mask@128 ZeroMask)
    (wf Heap@6 Mask@129 ZeroMask)
    (wf Heap@6 Mask@129 ZeroMask)
    (wf Heap@6 Mask@130 ZeroMask)
    (wf Heap@6 Mask@131 ZeroMask)
    (wf Heap@6 Mask@131 ZeroMask)
    (wf Heap@6 Mask@132 ZeroMask)
    (wf Heap@6 Mask@133 ZeroMask)
    (wf Heap@6 Mask@133 ZeroMask)
    (wf Heap@6 Mask@134 ZeroMask)
    (wf Heap@6 Mask@135 ZeroMask)
    (wf Heap@6 Mask@135 ZeroMask)
  )
    $branchMerge_122
)))
(let ((anon903_Then (=> (and true
    (=> true (not (= this null)))
    (wf Heap@1 Mask@26 ZeroMask)
    cond@_530@0
  )(and 
    anon903_Then@1_assertion
    anon903_Then@2
))))
(let ((anon1241_Else (=> (and true
    (>= 0 bf@298@0)
  )
    $branchMerge_108
)))
(let ((anon1241_Then (=> (and true
    (> bf@298@0 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null))
  )
    $branchMerge_108
)))
(let ((anon1179_Else (=> (and true
    (>= 0 bf@275@0)
  )
    $branchMerge_107
)))
(let ((anon1179_Then (=> (and true
    (> bf@275@0 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null))
  )
    $branchMerge_107
)))
(let ((anon528 (=> (and true
    (= Mask@123 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@122 r@20@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@122 r@20@0 AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@122 r@20@0 AVLTreeNode.key) perm$R) (Fractions 100)))))
    (= Mask@124 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@123 r@20@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@123 r@20@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@123 r@20@0 AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@125 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@124 r@20@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@124 r@20@0 AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@124 r@20@0 AVLTreeNode.left) perm$R) (Fractions 100)))))
    (= Mask@126 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@125 r@20@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@125 r@20@0 AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@125 r@20@0 AVLTreeNode.right) perm$R) (Fractions 100)))))
    (= Mask@127 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@126 r@20@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@126 r@20@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@126 r@20@0 AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@128 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@127 r@20@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@127 r@20@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@127 r@20@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (> (Fractions 100) 0)
    (> (Fractions 100) 0)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (IsGoodMask Mask@122)
    (IsGoodMask Mask@122)
    (IsGoodMask Mask@123)
    (IsGoodMask Mask@124)
    (IsGoodMask Mask@125)
    (IsGoodMask Mask@126)
    (IsGoodMask Mask@127)
    (IsGoodMask Mask@128)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 r@20@0 AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 r@20@0 AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 r@20@0 AVLTreeNode.key)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 r@20@0 AVLTreeNode.keys)))
    (not (= r@20@0 null))
    (not (= r@20@0 null))
    (not (= r@20@0 null))
    (not (= r@20@0 null))
    (not (= r@20@0 null))
    (not (= r@20@0 null))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.left)) AVLTreeNode@t))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 r@20@0 AVLTreeNode.right)) AVLTreeNode@t))
    (wf Heap@6 Mask@122 ZeroMask)
    (wf Heap@6 Mask@122 ZeroMask)
    (wf Heap@6 Mask@122 ZeroMask)
    (wf Heap@6 Mask@123 ZeroMask)
    (wf Heap@6 Mask@123 ZeroMask)
    (wf Heap@6 Mask@123 ZeroMask)
    (wf Heap@6 Mask@124 ZeroMask)
    (wf Heap@6 Mask@124 ZeroMask)
    (wf Heap@6 Mask@124 ZeroMask)
    (wf Heap@6 Mask@125 ZeroMask)
    (wf Heap@6 Mask@125 ZeroMask)
    (wf Heap@6 Mask@125 ZeroMask)
    (wf Heap@6 Mask@126 ZeroMask)
    (wf Heap@6 Mask@126 ZeroMask)
    (wf Heap@6 Mask@126 ZeroMask)
    (wf Heap@6 Mask@127 ZeroMask)
    (wf Heap@6 Mask@127 ZeroMask)
    (wf Heap@6 Mask@127 ZeroMask)
    (wf Heap@6 Mask@128 ZeroMask)
    (wf Heap@6 Mask@128 ZeroMask)
  )
    (and anon1126_Else anon1126_Then)
)))
(let ((anon756 (=> (and true
    (= bf@298@0 (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height))))
  )
    (and anon1241_Else anon1241_Then)
)))
(let ((anon632 (=> (and true
    (= bf@275@0 (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height))))
  )
    (and anon1179_Else anon1179_Then)
)))
(let ((anon1125_Else (=> (and true
    (= Heap@6 Heap@4)
    (CanRead$Int$ Mask@122 ZeroMask r@20@0 AVLTreeNode.valid)
  )
    anon528
)))
(let ((anon1125_Then (=> (and true
    (< oldVers@_692@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@5 r@20@0 AVLTreeNode.valid))
    (= Heap@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 r@20@0 AVLTreeNode.valid newVers@_693@0))
    (= Heap@6 Heap@5)
    (= oldVers@_692@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 r@20@0 AVLTreeNode.valid))
    (not (CanRead$Int$ Mask@122 ZeroMask r@20@0 AVLTreeNode.valid))
  )
    anon528
)))
(let ((anon1239_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null)
    (= Mask@46 Mask@44)
    (= Mask@48 Mask@46)
  )
    anon756
)))
(let ((anon1239_Then (=> (and true
    (= Mask@45 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@44 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@44 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@44 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@46 Mask@45)
    (= Mask@47 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@46 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@46 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@46 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R) methodCallK@_835))))
    (= Mask@48 Mask@47)
    (> (Fractions 100) 0)
    (> methodCallK@_835 0)
    (IsGoodMask Mask@45)
    (IsGoodMask Mask@47)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) AVLTreeNode.valid)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null))
    (wf exhaleHeap@_836@0 Mask@44 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@45 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@45 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@46 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@47 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@47 ZeroMask)
  )
    anon756
)))
(let ((anon1177_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null)
    (= Mask@76 Mask@74)
    (= Mask@78 Mask@76)
  )
    anon632
)))
(let ((anon1177_Then (=> (and true
    (= Mask@75 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@74 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@74 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@74 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@76 Mask@75)
    (= Mask@77 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@76 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@76 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@76 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R) methodCallK@_736))))
    (= Mask@78 Mask@77)
    (> (Fractions 100) 0)
    (> methodCallK@_736 0)
    (IsGoodMask Mask@75)
    (IsGoodMask Mask@77)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) AVLTreeNode.valid)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null))
    (wf exhaleHeap@_737@0 Mask@74 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@75 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@75 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@76 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@77 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@77 ZeroMask)
  )
    anon632
)))
(let ((anon472@3 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@121 r@20@0 AVLTreeNode.valid) perm$R))
    (= Mask@122 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@121 r@20@0 AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@121 r@20@0 AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@121 r@20@0 AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@121 r@20@0 AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@121 r@20@0 AVLTreeNode.valid) perm$N)))
    (not false)
  )
    (and anon1125_Else anon1125_Then)
)))
(let ((anon752 (=> (and true
    (= Mask@44 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@43 this AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@43 this AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@43 this AVLTreeNode.right) perm$R) methodCallK@_835))))
    (> methodCallK@_835 0)
    (IsGoodMask Mask@44)
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right)))
    (not (= this null))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.right)) AVLTreeNode@t))
    (wf exhaleHeap@_836@0 Mask@43 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@44 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@44 ZeroMask)
  )
    (and anon1239_Else anon1239_Then)
)))
(let ((anon628 (=> (and true
    (= Mask@74 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@73 this AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@73 this AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@73 this AVLTreeNode.right) perm$R) methodCallK@_736))))
    (> methodCallK@_736 0)
    (IsGoodMask Mask@74)
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right)))
    (not (= this null))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.right)) AVLTreeNode@t))
    (wf exhaleHeap@_737@0 Mask@73 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@74 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@74 ZeroMask)
  )
    (and anon1177_Else anon1177_Then)
)))
(let ((anon472@1 (=> (and true
    (> (Fractions 100) 0)
    (not (= r@20@0 null))
  )(and 
    anon472@2_assertion
    anon472@3
))))
(let ((anon1237_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null)
    (= Mask@41 Mask@39)
    (= Mask@43 Mask@41)
  )
    anon752
)))
(let ((anon1237_Then (=> (and true
    (= Mask@40 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@39 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@39 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@39 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@41 Mask@40)
    (= Mask@42 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@41 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@41 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@41 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R) methodCallK@_835))))
    (= Mask@43 Mask@42)
    (> (Fractions 100) 0)
    (> methodCallK@_835 0)
    (IsGoodMask Mask@40)
    (IsGoodMask Mask@42)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) AVLTreeNode.valid)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null))
    (wf exhaleHeap@_836@0 Mask@39 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@40 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@40 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@41 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@42 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@42 ZeroMask)
  )
    anon752
)))
(let ((anon1175_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null)
    (= Mask@71 Mask@69)
    (= Mask@73 Mask@71)
  )
    anon628
)))
(let ((anon1175_Then (=> (and true
    (= Mask@70 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@69 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@69 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@69 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@71 Mask@70)
    (= Mask@72 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@71 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@71 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@71 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R) methodCallK@_736))))
    (= Mask@73 Mask@72)
    (> (Fractions 100) 0)
    (> methodCallK@_736 0)
    (IsGoodMask Mask@70)
    (IsGoodMask Mask@72)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) AVLTreeNode.valid)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null))
    (wf exhaleHeap@_737@0 Mask@69 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@70 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@70 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@71 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@72 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@72 ZeroMask)
  )
    anon628
)))
(let ((anon472 (=> (and true
    ($@AVLTreeNode.valid@trigger r@20@0)
    (< (* 1000 unfoldK@_672) methodK@_506)
    (< 0 unfoldK@_672)
    (< unfoldK@_672 (Fractions 1))
  )(and 
    anon472_assertion
    anon472@1
))))
(let ((anon748 (=> (and true
    (= Mask@39 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_837@9 this AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_837@9 this AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_837@9 this AVLTreeNode.left) perm$R) methodCallK@_835))))
    (> methodCallK@_835 0)
    (IsGoodExhaleState exhaleHeap@_836@0 Heap@2 exhaleMask@_837@9 ZeroMask)
    (IsGoodMask exhaleMask@_837@9)
    (IsGoodMask Mask@39)
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left)))
    (not (= this null))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_836@0 this AVLTreeNode.left)) AVLTreeNode@t))
    (wf exhaleHeap@_836@0 exhaleMask@_837@9 ZeroMask)
    (wf exhaleHeap@_836@0 exhaleMask@_837@9 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@39 ZeroMask)
    (wf exhaleHeap@_836@0 Mask@39 ZeroMask)
  )
    (and anon1237_Else anon1237_Then)
)))
(let ((anon624 (=> (and true
    (= Mask@69 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_738@9 this AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_738@9 this AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_738@9 this AVLTreeNode.left) perm$R) methodCallK@_736))))
    (> methodCallK@_736 0)
    (IsGoodExhaleState exhaleHeap@_737@0 Heap@3 exhaleMask@_738@9 ZeroMask)
    (IsGoodMask exhaleMask@_738@9)
    (IsGoodMask Mask@69)
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left)))
    (not (= this null))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_737@0 this AVLTreeNode.left)) AVLTreeNode@t))
    (wf exhaleHeap@_737@0 exhaleMask@_738@9 ZeroMask)
    (wf exhaleHeap@_737@0 exhaleMask@_738@9 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@69 ZeroMask)
    (wf exhaleHeap@_737@0 Mask@69 ZeroMask)
  )
    (and anon1175_Else anon1175_Then)
)))
(let ((anon450 (=> (and true
    (= Heap@4 exhaleHeap@_651@0)
    (= Mask@121 Mask@120)
    (= nl@24@1 r@251@0)
    (= nr@26@1 nr@26@0)
    (= r@20@0 m@252@0)
    (IsGoodMask Mask@120)
    (wf exhaleHeap@_651@0 Mask@120 ZeroMask)
  )
    anon472
)))
(let ((anon471 (=> (and true
    (= Heap@4 exhaleHeap@_664@0)
    (= Mask@121 Mask@108)
    (= nl@24@1 nl@24@0)
    (= nr@26@1 r@255@0)
    (= r@20@0 m@256@0)
    (IsGoodMask Mask@108)
    (wf exhaleHeap@_664@0 Mask@108 ZeroMask)
  )
    anon472
)))
(let ((anon1235_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.right) null)
    (= exhaleMask@_837@9 exhaleMask@_837@7)
  )
    anon748
)))
(let ((anon747 (=> (and true
    (= exhaleMask@_837@9 exhaleMask@_837@8)
    (IsGoodMask exhaleMask@_837@8)
    (wf Heap@2 exhaleMask@_837@8 ZeroMask)
    (wf Heap@2 Mask@38 ZeroMask)
  )
    anon748
)))
(let ((anon1173_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) null)
    (= exhaleMask@_738@9 exhaleMask@_738@7)
  )
    anon624
)))
(let ((anon623 (=> (and true
    (= exhaleMask@_738@9 exhaleMask@_738@8)
    (IsGoodMask exhaleMask@_738@8)
    (wf Heap@3 exhaleMask@_738@8 ZeroMask)
    (wf Heap@3 Mask@68 ZeroMask)
  )
    anon624
)))
(let ((anon1087_Else (=> (and true
    (= r@251@0 null)
  )
    anon450
)))
(let ((anon1087_Then (=> (and true
    (forall( (|k#86#253| Int))(=> (and (<= 0 |k#86#253|) (< |k#86#253| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_651@0 r@251@0 AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_651@0 r@251@0 AVLTreeNode.keys) |k#86#253|) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_651@0 m@252@0 AVLTreeNode.keys) 0))))
    (not (= r@251@0 null))
  )
    anon450
)))
(let ((anon1097_Else (=> (and true
    (= r@255@0 null)
  )
    anon471
)))
(let ((anon1097_Then (=> (and true
    (forall( (|k#89#257| Int))(=> (and (<= 0 |k#89#257|) (< |k#89#257| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_664@0 r@255@0 AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_664@0 m@256@0 AVLTreeNode.keys) 0) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_664@0 r@255@0 AVLTreeNode.keys) |k#89#257|))))
    (not (= r@255@0 null))
  )
    anon471
)))
(let ((anon1236_Else (=> (and true
    (CanRead$Int$ exhaleMask@_837@8 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.right) AVLTreeNode.valid)
  )
    anon747
)))
(let ((anon1236_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.right) AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_837@8 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.right) AVLTreeNode.valid))
  )
    anon747
)))
(let ((anon1174_Else (=> (and true
    (CanRead$Int$ exhaleMask@_738@8 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid)
  )
    anon623
)))
(let ((anon1174_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_738@8 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid))
  )
    anon623
)))
(let ((anon448 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_651@0 m@252@0 AVLTreeNode.height) 1)
    (= (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_651@0 m@252@0 AVLTreeNode.keys)) 1)
    (= Mask@117 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@116 m@252@0 AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@116 m@252@0 AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@116 m@252@0 AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@118 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@117 m@252@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@117 m@252@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@117 m@252@0 AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@119 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@118 m@252@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@118 m@252@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@118 m@252@0 AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@120 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@119 m@252@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@119 m@252@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@119 m@252@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (IsGoodMask Mask@117)
    (IsGoodMask Mask@118)
    (IsGoodMask Mask@119)
    (IsGoodMask Mask@120)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_651@0 m@252@0 AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_651@0 m@252@0 AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_651@0 m@252@0 AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_651@0 m@252@0 AVLTreeNode.keys)))
    (not (= m@252@0 null))
    (not (= m@252@0 null))
    (not (= m@252@0 null))
    (not (= m@252@0 null))
    (not (= m@252@0 null))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 this@250@0 AVLTreeNode.height) (ite$Int$ (= r@251@0 null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_651@0 r@251@0 AVLTreeNode.height))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 this@250@0 AVLTreeNode.height) (+ (ite$Int$ (= r@251@0 null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_651@0 r@251@0 AVLTreeNode.height)) 1)))
    (Seq@Equal$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= r@251@0 null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_651@0 r@251@0 AVLTreeNode.keys)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_651@0 m@252@0 AVLTreeNode.keys)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_635@0 this@250@0 AVLTreeNode.keys))
    (wf exhaleHeap@_651@0 Mask@116 ZeroMask)
    (wf exhaleHeap@_651@0 Mask@117 ZeroMask)
    (wf exhaleHeap@_651@0 Mask@117 ZeroMask)
    (wf exhaleHeap@_651@0 Mask@117 ZeroMask)
    (wf exhaleHeap@_651@0 Mask@118 ZeroMask)
    (wf exhaleHeap@_651@0 Mask@118 ZeroMask)
    (wf exhaleHeap@_651@0 Mask@118 ZeroMask)
    (wf exhaleHeap@_651@0 Mask@119 ZeroMask)
    (wf exhaleHeap@_651@0 Mask@119 ZeroMask)
    (wf exhaleHeap@_651@0 Mask@119 ZeroMask)
    (wf exhaleHeap@_651@0 Mask@120 ZeroMask)
    (wf exhaleHeap@_651@0 Mask@120 ZeroMask)
  )
    (and anon1087_Else anon1087_Then)
)))
(let ((anon469 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_664@0 m@256@0 AVLTreeNode.height) 1)
    (= (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_664@0 m@256@0 AVLTreeNode.keys)) 1)
    (= Mask@105 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@104 m@256@0 AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@104 m@256@0 AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@104 m@256@0 AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@106 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@105 m@256@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@105 m@256@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@105 m@256@0 AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@107 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@106 m@256@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@106 m@256@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@106 m@256@0 AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@108 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@107 m@256@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@107 m@256@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@107 m@256@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (IsGoodMask Mask@105)
    (IsGoodMask Mask@106)
    (IsGoodMask Mask@107)
    (IsGoodMask Mask@108)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_664@0 m@256@0 AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_664@0 m@256@0 AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_664@0 m@256@0 AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_664@0 m@256@0 AVLTreeNode.keys)))
    (not (= m@256@0 null))
    (not (= m@256@0 null))
    (not (= m@256@0 null))
    (not (= m@256@0 null))
    (not (= m@256@0 null))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 this@254@0 AVLTreeNode.height) (ite$Int$ (= r@255@0 null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_664@0 r@255@0 AVLTreeNode.height))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 this@254@0 AVLTreeNode.height) (+ (ite$Int$ (= r@255@0 null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_664@0 r@255@0 AVLTreeNode.height)) 1)))
    (Seq@Equal$Int$ (Seq@Append$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_664@0 m@256@0 AVLTreeNode.keys) (ite$Seq$Int$$ (= r@255@0 null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_664@0 r@255@0 AVLTreeNode.keys))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_635@0 this@254@0 AVLTreeNode.keys))
    (wf exhaleHeap@_664@0 Mask@104 ZeroMask)
    (wf exhaleHeap@_664@0 Mask@105 ZeroMask)
    (wf exhaleHeap@_664@0 Mask@105 ZeroMask)
    (wf exhaleHeap@_664@0 Mask@105 ZeroMask)
    (wf exhaleHeap@_664@0 Mask@106 ZeroMask)
    (wf exhaleHeap@_664@0 Mask@106 ZeroMask)
    (wf exhaleHeap@_664@0 Mask@106 ZeroMask)
    (wf exhaleHeap@_664@0 Mask@107 ZeroMask)
    (wf exhaleHeap@_664@0 Mask@107 ZeroMask)
    (wf exhaleHeap@_664@0 Mask@107 ZeroMask)
    (wf exhaleHeap@_664@0 Mask@108 ZeroMask)
    (wf exhaleHeap@_664@0 Mask@108 ZeroMask)
  )
    (and anon1097_Else anon1097_Then)
)))
(let ((anon1235_Then@2 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (= exhaleMask@_837@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.right) AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
  )
    (and anon1236_Else anon1236_Then)
)))
(let ((anon1173_Then@2 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (= exhaleMask@_738@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
  )
    (and anon1174_Else anon1174_Then)
)))
(let ((anon1086_Else (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 this@250@0 AVLTreeNode.height) 1))
  )
    anon448
)))
(let ((anon1086_Then (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 this@250@0 AVLTreeNode.height) 1)
    (= r@251@0 null)
  )
    anon448
)))
(let ((anon1096_Else (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 this@254@0 AVLTreeNode.height) 1))
  )
    anon469
)))
(let ((anon1096_Then (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 this@254@0 AVLTreeNode.height) 1)
    (= r@255@0 null)
  )
    anon469
)))
(let ((anon1235_Then (=> (and true
    (> (Fractions 100) 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.right) null))
  )(and 
    anon1235_Then@1_assertion
    anon1235_Then@2
))))
(let ((anon1173_Then (=> (and true
    (> (Fractions 100) 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) null))
  )(and 
    anon1173_Then@1_assertion
    anon1173_Then@2
))))
(let (($branchMerge_100 (=> (and true
  )
    (and anon1086_Else anon1086_Then)
)))
(let (($branchMerge_101 (=> (and true
  )
    (and anon1096_Else anon1096_Then)
)))
(let (($branchMerge_86 (=> (and true
  )
    (and anon1235_Else anon1235_Then)
)))
(let (($branchMerge_85 (=> (and true
  )
    (and anon1173_Else anon1173_Then)
)))
(let ((anon1085_Else (=> (and true
    (>= 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 this@250@0 AVLTreeNode.height))
  )
    $branchMerge_100
)))
(let ((anon1085_Then (=> (and true
    (> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 this@250@0 AVLTreeNode.height) 1)
    (not (= r@251@0 null))
  )
    $branchMerge_100
)))
(let ((anon1095_Else (=> (and true
    (>= 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 this@254@0 AVLTreeNode.height))
  )
    $branchMerge_101
)))
(let ((anon1095_Then (=> (and true
    (> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 this@254@0 AVLTreeNode.height) 1)
    (not (= r@255@0 null))
  )
    $branchMerge_101
)))
(let ((anon1233_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.left) null)
    (= exhaleMask@_837@7 exhaleMask@_837@5)
  )
    $branchMerge_86
)))
(let ((anon743 (=> (and true
    (= exhaleMask@_837@7 exhaleMask@_837@6)
    (IsGoodMask exhaleMask@_837@6)
    (wf Heap@2 exhaleMask@_837@6 ZeroMask)
    (wf Heap@2 Mask@38 ZeroMask)
  )
    $branchMerge_86
)))
(let ((anon1171_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) null)
    (= exhaleMask@_738@7 exhaleMask@_738@5)
  )
    $branchMerge_85
)))
(let ((anon619 (=> (and true
    (= exhaleMask@_738@7 exhaleMask@_738@6)
    (IsGoodMask exhaleMask@_738@6)
    (wf Heap@3 exhaleMask@_738@6 ZeroMask)
    (wf Heap@3 Mask@68 ZeroMask)
  )
    $branchMerge_85
)))
(let (($branchMerge_97 (=> (and true
  )
    (and anon1085_Else anon1085_Then)
)))
(let (($branchMerge_98 (=> (and true
  )
    (and anon1095_Else anon1095_Then)
)))
(let ((anon1234_Else (=> (and true
    (CanRead$Int$ exhaleMask@_837@6 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.left) AVLTreeNode.valid)
  )
    anon743
)))
(let ((anon1234_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_836@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.left) AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_837@6 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.left) AVLTreeNode.valid))
  )
    anon743
)))
(let ((anon1172_Else (=> (and true
    (CanRead$Int$ exhaleMask@_738@6 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid)
  )
    anon619
)))
(let ((anon1172_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_737@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_738@6 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid))
  )
    anon619
)))
(let ((anon1079_Else (=> (and true
    (= Mask@110 exhaleMask@_652@3)
    (= Mask@112 Mask@110)
    (= Mask@114 Mask@112)
    (= Mask@116 Mask@114)
    (= r@251@0 null)
    (= r@251@0 null)
    (= r@251@0 null)
    (= r@251@0 null)
    (= r@251@0 null)
    (= r@251@0 null)
  )
    $branchMerge_97
)))
(let ((anon1079_Then (=> (and true
    (= (+ (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_651@0 r@251@0 AVLTreeNode.keys)) 1) (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_635@0 this@250@0 AVLTreeNode.keys)))
    (= Mask@109 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_652@3 r@251@0 AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_652@3 r@251@0 AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_652@3 r@251@0 AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@110 Mask@109)
    (= Mask@111 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@110 r@251@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@110 r@251@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@110 r@251@0 AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@112 Mask@111)
    (= Mask@113 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@112 r@251@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@112 r@251@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@112 r@251@0 AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@114 Mask@113)
    (= Mask@115 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@114 r@251@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@114 r@251@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@114 r@251@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= Mask@116 Mask@115)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (IsGoodMask Mask@109)
    (IsGoodMask Mask@111)
    (IsGoodMask Mask@113)
    (IsGoodMask Mask@115)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_651@0 r@251@0 AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_651@0 r@251@0 AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_651@0 r@251@0 AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_651@0 r@251@0 AVLTreeNode.keys)))
    (not (= r@251@0 null))
    (not (= r@251@0 null))
    (not (= r@251@0 null))
    (not (= r@251@0 null))
    (not (= r@251@0 null))
    (not (= r@251@0 null))
    (not (= r@251@0 null))
    (not (= r@251@0 null))
    (not (= r@251@0 null))
    (not (= r@251@0 null))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_651@0 r@251@0 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 this@250@0 AVLTreeNode.height)) (= (+ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_651@0 r@251@0 AVLTreeNode.height) 1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 this@250@0 AVLTreeNode.height)))
    (wf exhaleHeap@_651@0 exhaleMask@_652@3 ZeroMask)
    (wf exhaleHeap@_651@0 Mask@109 ZeroMask)
    (wf exhaleHeap@_651@0 Mask@109 ZeroMask)
    (wf exhaleHeap@_651@0 Mask@110 ZeroMask)
    (wf exhaleHeap@_651@0 Mask@111 ZeroMask)
    (wf exhaleHeap@_651@0 Mask@111 ZeroMask)
    (wf exhaleHeap@_651@0 Mask@112 ZeroMask)
    (wf exhaleHeap@_651@0 Mask@113 ZeroMask)
    (wf exhaleHeap@_651@0 Mask@113 ZeroMask)
    (wf exhaleHeap@_651@0 Mask@114 ZeroMask)
    (wf exhaleHeap@_651@0 Mask@115 ZeroMask)
    (wf exhaleHeap@_651@0 Mask@115 ZeroMask)
  )
    $branchMerge_97
)))
(let ((anon1089_Else (=> (and true
    (= Mask@100 Mask@98)
    (= Mask@102 Mask@100)
    (= Mask@104 Mask@102)
    (= Mask@98 exhaleMask@_665@3)
    (= r@255@0 null)
    (= r@255@0 null)
    (= r@255@0 null)
    (= r@255@0 null)
    (= r@255@0 null)
    (= r@255@0 null)
  )
    $branchMerge_98
)))
(let ((anon1089_Then (=> (and true
    (= (+ (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_664@0 r@255@0 AVLTreeNode.keys)) 1) (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_635@0 this@254@0 AVLTreeNode.keys)))
    (= Mask@100 Mask@99)
    (= Mask@101 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@100 r@255@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@100 r@255@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@100 r@255@0 AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@102 Mask@101)
    (= Mask@103 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@102 r@255@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@102 r@255@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@102 r@255@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= Mask@104 Mask@103)
    (= Mask@97 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_665@3 r@255@0 AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_665@3 r@255@0 AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_665@3 r@255@0 AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@98 Mask@97)
    (= Mask@99 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@98 r@255@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@98 r@255@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@98 r@255@0 AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (IsGoodMask Mask@101)
    (IsGoodMask Mask@103)
    (IsGoodMask Mask@97)
    (IsGoodMask Mask@99)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_664@0 r@255@0 AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_664@0 r@255@0 AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_664@0 r@255@0 AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_664@0 r@255@0 AVLTreeNode.keys)))
    (not (= r@255@0 null))
    (not (= r@255@0 null))
    (not (= r@255@0 null))
    (not (= r@255@0 null))
    (not (= r@255@0 null))
    (not (= r@255@0 null))
    (not (= r@255@0 null))
    (not (= r@255@0 null))
    (not (= r@255@0 null))
    (not (= r@255@0 null))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_664@0 r@255@0 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 this@254@0 AVLTreeNode.height)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_664@0 r@255@0 AVLTreeNode.height) (- (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 this@254@0 AVLTreeNode.height) 1)))
    (wf exhaleHeap@_664@0 exhaleMask@_665@3 ZeroMask)
    (wf exhaleHeap@_664@0 Mask@100 ZeroMask)
    (wf exhaleHeap@_664@0 Mask@101 ZeroMask)
    (wf exhaleHeap@_664@0 Mask@101 ZeroMask)
    (wf exhaleHeap@_664@0 Mask@102 ZeroMask)
    (wf exhaleHeap@_664@0 Mask@103 ZeroMask)
    (wf exhaleHeap@_664@0 Mask@103 ZeroMask)
    (wf exhaleHeap@_664@0 Mask@97 ZeroMask)
    (wf exhaleHeap@_664@0 Mask@97 ZeroMask)
    (wf exhaleHeap@_664@0 Mask@98 ZeroMask)
    (wf exhaleHeap@_664@0 Mask@99 ZeroMask)
    (wf exhaleHeap@_664@0 Mask@99 ZeroMask)
  )
    $branchMerge_98
)))
(let ((anon1233_Then@2 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (= exhaleMask@_837@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.left) AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
  )
    (and anon1234_Else anon1234_Then)
)))
(let ((anon1171_Then@2 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (= exhaleMask@_738@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
  )
    (and anon1172_Else anon1172_Then)
)))
(let ((anon432@6 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_652@2 this@250@0 AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_652@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_652@2 this@250@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_652@2 this@250@0 AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_652@2 this@250@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_652@2 this@250@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_652@2 this@250@0 AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodExhaleState exhaleHeap@_651@0 exhaleHeap@_635@0 exhaleMask@_652@3 ZeroMask)
    (IsGoodMask exhaleMask@_652@3)
    (IsGoodMask exhaleMask@_652@3)
    (or (= m@252@0 null) (= (dtype m@252@0) AVLTreeNode@t))
    (or (= r@251@0 null) (= (dtype r@251@0) AVLTreeNode@t))
    (wf exhaleHeap@_635@0 exhaleMask@_652@3 ZeroMask)
    (wf exhaleHeap@_635@0 Mask@96 ZeroMask)
    (wf exhaleHeap@_651@0 exhaleMask@_652@3 ZeroMask)
  )
    (and anon1079_Else anon1079_Then)
)))
(let ((anon453@6 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_665@2 this@254@0 AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_665@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_665@2 this@254@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_665@2 this@254@0 AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_665@2 this@254@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_665@2 this@254@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_665@2 this@254@0 AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodExhaleState exhaleHeap@_664@0 exhaleHeap@_635@0 exhaleMask@_665@3 ZeroMask)
    (IsGoodMask exhaleMask@_665@3)
    (IsGoodMask exhaleMask@_665@3)
    (or (= m@256@0 null) (= (dtype m@256@0) AVLTreeNode@t))
    (or (= r@255@0 null) (= (dtype r@255@0) AVLTreeNode@t))
    (wf exhaleHeap@_635@0 exhaleMask@_665@3 ZeroMask)
    (wf exhaleHeap@_635@0 Mask@96 ZeroMask)
    (wf exhaleHeap@_664@0 exhaleMask@_665@3 ZeroMask)
  )
    (and anon1089_Else anon1089_Then)
)))
(let ((anon1233_Then (=> (and true
    (> (Fractions 100) 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.left) null))
  )(and 
    anon1233_Then@1_assertion
    anon1233_Then@2
))))
(let ((anon1171_Then (=> (and true
    (> (Fractions 100) 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) null))
  )(and 
    anon1171_Then@1_assertion
    anon1171_Then@2
))))
(let ((anon432@4 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_652@1 this@250@0 AVLTreeNode.height) perm$R))
    (= exhaleMask@_652@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_652@1 this@250@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_652@1 this@250@0 AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_652@1 this@250@0 AVLTreeNode.height) perm$R) (Fractions 50)))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_652@1 this@250@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_652@1 this@250@0 AVLTreeNode.height) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_652@2)
    (wf exhaleHeap@_635@0 exhaleMask@_652@2 ZeroMask)
    (wf exhaleHeap@_635@0 Mask@96 ZeroMask)
  )(and 
    anon432@5_assertion
    anon432@6
))))
(let ((anon453@4 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_665@1 this@254@0 AVLTreeNode.height) perm$R))
    (= exhaleMask@_665@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_665@1 this@254@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_665@1 this@254@0 AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_665@1 this@254@0 AVLTreeNode.height) perm$R) (Fractions 50)))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_665@1 this@254@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_665@1 this@254@0 AVLTreeNode.height) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_665@2)
    (wf exhaleHeap@_635@0 exhaleMask@_665@2 ZeroMask)
    (wf exhaleHeap@_635@0 Mask@96 ZeroMask)
  )(and 
    anon453@5_assertion
    anon453@6
))))
(let (($branchMerge_81 (=> (and true
  )
    (and anon1233_Else anon1233_Then)
)))
(let (($branchMerge_80 (=> (and true
  )
    (and anon1171_Else anon1171_Then)
)))
(let ((anon432@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_652@0 this@250@0 AVLTreeNode.keys) perm$R))
    (= exhaleMask@_652@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_652@0 this@250@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_652@0 this@250@0 AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_652@0 this@250@0 AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_652@0 this@250@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_652@0 this@250@0 AVLTreeNode.keys) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_652@1)
    (wf exhaleHeap@_635@0 exhaleMask@_652@1 ZeroMask)
    (wf exhaleHeap@_635@0 Mask@96 ZeroMask)
  )(and 
    anon432@3_assertion
    anon432@4
))))
(let ((anon453@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_665@0 this@254@0 AVLTreeNode.keys) perm$R))
    (= exhaleMask@_665@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_665@0 this@254@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_665@0 this@254@0 AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_665@0 this@254@0 AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_665@0 this@254@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_665@0 this@254@0 AVLTreeNode.keys) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_665@1)
    (wf exhaleHeap@_635@0 exhaleMask@_665@1 ZeroMask)
    (wf exhaleHeap@_635@0 Mask@96 ZeroMask)
  )(and 
    anon453@3_assertion
    anon453@4
))))
(let ((anon1232_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.right) null)
    (= exhaleMask@_837@5 exhaleMask@_837@3)
  )
    $branchMerge_81
)))
(let ((anon1232_Then@2 (=> (and true
    (< methodCallK@_835 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (= exhaleMask@_837@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.right) AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.right) AVLTreeNode.height) perm$R) methodCallK@_835))))
    (= exhaleMask@_837@5 exhaleMask@_837@4)
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.right) AVLTreeNode.height) perm$R) 0)
    (IsGoodMask exhaleMask@_837@4)
    (wf Heap@2 exhaleMask@_837@4 ZeroMask)
    (wf Heap@2 Mask@38 ZeroMask)
  )
    $branchMerge_81
)))
(let ((anon1170_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) null)
    (= exhaleMask@_738@5 exhaleMask@_738@3)
  )
    $branchMerge_80
)))
(let ((anon1170_Then@2 (=> (and true
    (< methodCallK@_736 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (= exhaleMask@_738@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.height) perm$R) methodCallK@_736))))
    (= exhaleMask@_738@5 exhaleMask@_738@4)
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.height) perm$R) 0)
    (IsGoodMask exhaleMask@_738@4)
    (wf Heap@3 exhaleMask@_738@4 ZeroMask)
    (wf Heap@3 Mask@68 ZeroMask)
  )
    $branchMerge_80
)))
(let ((anon432 (=> (and true
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_652@0)
    (wf exhaleHeap@_635@0 exhaleMask@_652@0 ZeroMask)
    (wf exhaleHeap@_635@0 Mask@96 ZeroMask)
  )(and 
    anon432@1_assertion
    anon432@2
))))
(let ((anon453 (=> (and true
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_665@0)
    (wf exhaleHeap@_635@0 exhaleMask@_665@0 ZeroMask)
    (wf exhaleHeap@_635@0 Mask@96 ZeroMask)
  )(and 
    anon453@1_assertion
    anon453@2
))))
(let ((anon1232_Then (=> (and true
    (> methodCallK@_835 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.right) null))
  )(and 
    anon1232_Then@1_assertion
    anon1232_Then@2
))))
(let ((anon1170_Then (=> (and true
    (> methodCallK@_736 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) null))
  )(and 
    anon1170_Then@1_assertion
    anon1170_Then@2
))))
(let ((anon1078_Else (=> (and true
    (CanRead$Int$ exhaleMask@_652@0 ZeroMask this@250@0 AVLTreeNode.valid)
  )
    anon432
)))
(let ((anon1078_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 this@250@0 AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_651@0 this@250@0 AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_652@0 ZeroMask this@250@0 AVLTreeNode.valid))
  )
    anon432
)))
(let ((anon1088_Else (=> (and true
    (CanRead$Int$ exhaleMask@_665@0 ZeroMask this@254@0 AVLTreeNode.valid)
  )
    anon453
)))
(let ((anon1088_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 this@254@0 AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_664@0 this@254@0 AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_665@0 ZeroMask this@254@0 AVLTreeNode.valid))
  )
    anon453
)))
(let ((anon738@2 (=> (and true
    (< methodCallK@_835 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_837@2 this AVLTreeNode.right) perm$R))
    (= exhaleMask@_837@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_837@2 this AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_837@2 this AVLTreeNode.right) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_837@2 this AVLTreeNode.right) perm$R) methodCallK@_835))))
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_837@2 this AVLTreeNode.right) perm$R) 0)
    (IsGoodMask exhaleMask@_837@3)
    (wf Heap@2 exhaleMask@_837@3 ZeroMask)
    (wf Heap@2 Mask@38 ZeroMask)
  )
    (and anon1232_Else anon1232_Then)
)))
(let ((anon614@2 (=> (and true
    (< methodCallK@_736 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_738@2 this AVLTreeNode.right) perm$R))
    (= exhaleMask@_738@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_738@2 this AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_738@2 this AVLTreeNode.right) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_738@2 this AVLTreeNode.right) perm$R) methodCallK@_736))))
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_738@2 this AVLTreeNode.right) perm$R) 0)
    (IsGoodMask exhaleMask@_738@3)
    (wf Heap@3 exhaleMask@_738@3 ZeroMask)
    (wf Heap@3 Mask@68 ZeroMask)
  )
    (and anon1170_Else anon1170_Then)
)))
(let ((anon1077_Then@5 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@96 this@250@0 AVLTreeNode.valid) perm$R))
    (= exhaleMask@_652@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@96 this@250@0 AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@96 this@250@0 AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@96 this@250@0 AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@96 this@250@0 AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@96 this@250@0 AVLTreeNode.valid) perm$N)))
  )
    (and anon1078_Else anon1078_Then)
)))
(let ((anon1077_Else@5 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@96 this@254@0 AVLTreeNode.valid) perm$R))
    (= exhaleMask@_665@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@96 this@254@0 AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@96 this@254@0 AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@96 this@254@0 AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@96 this@254@0 AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@96 this@254@0 AVLTreeNode.valid) perm$N)))
  )
    (and anon1088_Else anon1088_Then)
)))
(let ((anon738 (=> (and true
    (> methodCallK@_835 0)
  )(and 
    anon738@1_assertion
    anon738@2
))))
(let ((anon614 (=> (and true
    (> methodCallK@_736 0)
  )(and 
    anon614@1_assertion
    anon614@2
))))
(let ((anon1077_Then@3 (=> (and true
    (= this@250@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.left))
    (> (Fractions 100) 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.left) null))
  )(and 
    anon1077_Then@4_assertion
    anon1077_Then@5
))))
(let ((anon1077_Else@3 (=> (and true
    (= this@254@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.right))
    (> (Fractions 100) 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.right) null))
  )(and 
    anon1077_Else@4_assertion
    anon1077_Else@5
))))
(let ((anon1231_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.left) null)
    (= exhaleMask@_837@2 exhaleMask@_837@0)
  )
    anon738
)))
(let ((anon1231_Then@2 (=> (and true
    (< methodCallK@_835 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (= exhaleMask@_837@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.left) AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.left) AVLTreeNode.height) perm$R) methodCallK@_835))))
    (= exhaleMask@_837@2 exhaleMask@_837@1)
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_837@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.left) AVLTreeNode.height) perm$R) 0)
    (IsGoodMask exhaleMask@_837@1)
    (wf Heap@2 exhaleMask@_837@1 ZeroMask)
    (wf Heap@2 Mask@38 ZeroMask)
  )
    anon738
)))
(let ((anon1169_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) null)
    (= exhaleMask@_738@2 exhaleMask@_738@0)
  )
    anon614
)))
(let ((anon1169_Then@2 (=> (and true
    (< methodCallK@_736 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (= exhaleMask@_738@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.height) perm$R) methodCallK@_736))))
    (= exhaleMask@_738@2 exhaleMask@_738@1)
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_738@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.height) perm$R) 0)
    (IsGoodMask exhaleMask@_738@1)
    (wf Heap@3 exhaleMask@_738@1 ZeroMask)
    (wf Heap@3 Mask@68 ZeroMask)
  )
    anon614
)))
(let ((anon1077_Then@2 (=> (and true
    (=> true (CanRead$ref$ Mask@96 ZeroMask this AVLTreeNode.left))
  )(and 
    anon1077_Then@2_assertion
    anon1077_Then@3
))))
(let ((anon1077_Else@2 (=> (and true
    (=> true (CanRead$ref$ Mask@96 ZeroMask this AVLTreeNode.right))
  )(and 
    anon1077_Else@2_assertion
    anon1077_Else@3
))))
(let ((anon1231_Then (=> (and true
    (> methodCallK@_835 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.left) null))
  )(and 
    anon1231_Then@1_assertion
    anon1231_Then@2
))))
(let ((anon1169_Then (=> (and true
    (> methodCallK@_736 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) null))
  )(and 
    anon1169_Then@1_assertion
    anon1169_Then@2
))))
(let ((anon1077_Then (=> (and true
    (< (* 1000 methodCallK@_650) (Fractions 1))
    (< (* 1000 methodCallK@_650) methodK@_506)
    (< 0 methodCallK@_650)
    (=> true (not (= this null)))
    (wf exhaleHeap@_635@0 Mask@96 ZeroMask)
    cond@_645@0
  )(and 
    anon1077_Then@1_assertion
    anon1077_Then@2
))))
(let ((anon1077_Else (=> (and true
    (< (* 1000 methodCallK@_663) (Fractions 1))
    (< (* 1000 methodCallK@_663) methodK@_506)
    (< 0 methodCallK@_663)
    (=> true (not (= this null)))
    (not cond@_645@0)
    (wf exhaleHeap@_635@0 Mask@96 ZeroMask)
  )(and 
    anon1077_Else@1_assertion
    anon1077_Else@2
))))
(let ((anon736@4 (=> (and true
    (< methodCallK@_835 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@38 this AVLTreeNode.left) perm$R))
    (= exhaleMask@_837@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@38 this AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@38 this AVLTreeNode.left) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@38 this AVLTreeNode.left) perm$R) methodCallK@_835))))
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@38 this AVLTreeNode.left) perm$R) 0)
    (IsGoodMask exhaleMask@_837@0)
    (wf Heap@2 exhaleMask@_837@0 ZeroMask)
    (wf Heap@2 Mask@38 ZeroMask)
  )
    (and anon1231_Else anon1231_Then)
)))
(let ((anon612@4 (=> (and true
    (< methodCallK@_736 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@68 this AVLTreeNode.left) perm$R))
    (= exhaleMask@_738@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@68 this AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@68 this AVLTreeNode.left) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@68 this AVLTreeNode.left) perm$R) methodCallK@_736))))
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@68 this AVLTreeNode.left) perm$R) 0)
    (IsGoodMask exhaleMask@_738@0)
    (wf Heap@3 exhaleMask@_738@0 ZeroMask)
    (wf Heap@3 Mask@68 ZeroMask)
  )
    (and anon1169_Else anon1169_Then)
)))
(let ((anon429 (=> (and true
    (= cond@_645@0 (> bf@249@0 0))
    (IsGoodMask Mask@96)
    (wf exhaleHeap@_635@0 Mask@96 ZeroMask)
  )
    (and anon1077_Else anon1077_Then)
)))
(let ((anon736@1 (=> (and true
    (< (* 1000 methodCallK@_835) (Fractions 1))
    (< (* 1000 methodCallK@_835) methodK@_506)
    (< 0 methodCallK@_835)
    (= Heap@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_823@0 this AVLTreeNode.right r@294@0))
    (> methodCallK@_835 0)
    (CanWrite$ref$ Mask@38 this AVLTreeNode.right)
    (not (= this null))
    (wf Heap@2 Mask@38 ZeroMask)
    (wf Heap@2 Mask@38 ZeroMask)
  )(and 
    anon736@3_assertion
    anon736@4
))))
(let ((anon612@1 (=> (and true
    (< (* 1000 methodCallK@_736) (Fractions 1))
    (< (* 1000 methodCallK@_736) methodK@_506)
    (< 0 methodCallK@_736)
    (= Heap@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_724@0 this AVLTreeNode.left r@271@0))
    (> methodCallK@_736 0)
    (CanWrite$ref$ Mask@68 this AVLTreeNode.left)
    (not (= this null))
    (wf Heap@3 Mask@68 ZeroMask)
    (wf Heap@3 Mask@68 ZeroMask)
  )(and 
    anon612@3_assertion
    anon612@4
))))
(let ((anon1076_Else (=> (and true
    (<= 0 bf@249@0)
  )
    anon429
)))
(let ((anon1076_Then (=> (and true
    (< bf@249@0 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.right) null))
  )
    anon429
)))
(let ((anon736 (=> (and true
    (IsGoodMask Mask@38)
    (wf exhaleHeap@_823@0 Mask@38 ZeroMask)
  )(and 
    anon736_assertion
    anon736@1
))))
(let ((anon612 (=> (and true
    (IsGoodMask Mask@68)
    (wf exhaleHeap@_724@0 Mask@68 ZeroMask)
  )(and 
    anon612_assertion
    anon612@1
))))
(let (($branchMerge_68 (=> (and true
  )
    (and anon1076_Else anon1076_Then)
)))
(let ((anon1230_Else (=> (and true
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@292@0 AVLTreeNode.keys) k@19)
  )
    anon736
)))
(let ((anon1230_Then (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_823@0 r@294@0 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@292@0 AVLTreeNode.height))
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@292@0 AVLTreeNode.keys) k@19))
  )
    anon736
)))
(let ((anon1168_Else (=> (and true
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@269@0 AVLTreeNode.keys) k@19)
  )
    anon612
)))
(let ((anon1168_Then (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_724@0 r@271@0 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@269@0 AVLTreeNode.height))
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@269@0 AVLTreeNode.keys) k@19))
  )
    anon612
)))
(let ((anon1075_Else (=> (and true
    (>= 0 bf@249@0)
  )
    $branchMerge_68
)))
(let ((anon1075_Then (=> (and true
    (> bf@249@0 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.left) null))
  )
    $branchMerge_68
)))
(let (($branchMerge_72 (=> (and true
  )
    (and anon1230_Else anon1230_Then)
)))
(let (($branchMerge_70 (=> (and true
  )
    (and anon1168_Else anon1168_Then)
)))
(let ((anon425 (=> (and true
    (= bf@249@0 (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.right) AVLTreeNode.height))))
  )
    (and anon1075_Else anon1075_Then)
)))
(let ((anon1229_Else (=> (and true
    (= r@294@0 null)
  )
    $branchMerge_72
)))
(let ((anon1229_Then (=> (and true
    (not (= r@294@0 null))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_823@0 r@294@0 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@292@0 AVLTreeNode.height)) (= (+ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_823@0 r@294@0 AVLTreeNode.height) 1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@292@0 AVLTreeNode.height)))
  )
    $branchMerge_72
)))
(let ((anon1167_Else (=> (and true
    (= r@271@0 null)
  )
    $branchMerge_70
)))
(let ((anon1167_Then (=> (and true
    (not (= r@271@0 null))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_724@0 r@271@0 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@269@0 AVLTreeNode.height)) (= (+ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_724@0 r@271@0 AVLTreeNode.height) 1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@269@0 AVLTreeNode.height)))
  )
    $branchMerge_70
)))
(let ((anon1073_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.right) null)
    (= Mask@94 Mask@92)
    (= Mask@96 Mask@94)
  )
    anon425
)))
(let ((anon1073_Then (=> (and true
    (= Mask@93 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@92 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@92 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@92 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@94 Mask@93)
    (= Mask@95 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@94 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@94 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@94 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R) methodCallK@_634))))
    (= Mask@96 Mask@95)
    (> (Fractions 100) 0)
    (> methodCallK@_634 0)
    (IsGoodMask Mask@93)
    (IsGoodMask Mask@95)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.right) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.right) AVLTreeNode.valid)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.right) null))
    (wf exhaleHeap@_635@0 Mask@92 ZeroMask)
    (wf exhaleHeap@_635@0 Mask@93 ZeroMask)
    (wf exhaleHeap@_635@0 Mask@93 ZeroMask)
    (wf exhaleHeap@_635@0 Mask@94 ZeroMask)
    (wf exhaleHeap@_635@0 Mask@95 ZeroMask)
    (wf exhaleHeap@_635@0 Mask@95 ZeroMask)
  )
    anon425
)))
(let (($branchMerge_67 (=> (and true
  )
    (and anon1229_Else anon1229_Then)
)))
(let (($branchMerge_66 (=> (and true
  )
    (and anon1167_Else anon1167_Then)
)))
(let ((anon421 (=> (and true
    (= Mask@92 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@91 this AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@91 this AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@91 this AVLTreeNode.right) perm$R) methodCallK@_634))))
    (> methodCallK@_634 0)
    (IsGoodMask Mask@92)
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.right)))
    (not (= this null))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.right) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.right)) AVLTreeNode@t))
    (wf exhaleHeap@_635@0 Mask@91 ZeroMask)
    (wf exhaleHeap@_635@0 Mask@92 ZeroMask)
    (wf exhaleHeap@_635@0 Mask@92 ZeroMask)
  )
    (and anon1073_Else anon1073_Then)
)))
(let ((anon1228_Else (=> (and true
    (>= 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@292@0 AVLTreeNode.height))
  )
    $branchMerge_67
)))
(let ((anon1228_Then (=> (and true
    (> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@292@0 AVLTreeNode.height) 1)
    (not (= r@294@0 null))
  )
    $branchMerge_67
)))
(let ((anon1166_Else (=> (and true
    (>= 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@269@0 AVLTreeNode.height))
  )
    $branchMerge_66
)))
(let ((anon1166_Then (=> (and true
    (> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@269@0 AVLTreeNode.height) 1)
    (not (= r@271@0 null))
  )
    $branchMerge_66
)))
(let ((anon1071_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.left) null)
    (= Mask@89 Mask@87)
    (= Mask@91 Mask@89)
  )
    anon421
)))
(let ((anon1071_Then (=> (and true
    (= Mask@88 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@87 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@87 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@87 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@89 Mask@88)
    (= Mask@90 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@89 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@89 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@89 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R) methodCallK@_634))))
    (= Mask@91 Mask@90)
    (> (Fractions 100) 0)
    (> methodCallK@_634 0)
    (IsGoodMask Mask@88)
    (IsGoodMask Mask@90)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.left) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.left) AVLTreeNode.valid)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.left) null))
    (wf exhaleHeap@_635@0 Mask@87 ZeroMask)
    (wf exhaleHeap@_635@0 Mask@88 ZeroMask)
    (wf exhaleHeap@_635@0 Mask@88 ZeroMask)
    (wf exhaleHeap@_635@0 Mask@89 ZeroMask)
    (wf exhaleHeap@_635@0 Mask@90 ZeroMask)
    (wf exhaleHeap@_635@0 Mask@90 ZeroMask)
  )
    anon421
)))
(let (($branchMerge_64 (=> (and true
  )
    (and anon1228_Else anon1228_Then)
)))
(let (($branchMerge_62 (=> (and true
  )
    (and anon1166_Else anon1166_Then)
)))
(let ((anon417 (=> (and true
    (= Mask@87 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_636@9 this AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_636@9 this AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_636@9 this AVLTreeNode.left) perm$R) methodCallK@_634))))
    (> methodCallK@_634 0)
    (IsGoodExhaleState exhaleHeap@_635@0 Heap@1 exhaleMask@_636@9 ZeroMask)
    (IsGoodMask exhaleMask@_636@9)
    (IsGoodMask Mask@87)
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.left)))
    (not (= this null))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.left) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_635@0 this AVLTreeNode.left)) AVLTreeNode@t))
    (wf exhaleHeap@_635@0 exhaleMask@_636@9 ZeroMask)
    (wf exhaleHeap@_635@0 exhaleMask@_636@9 ZeroMask)
    (wf exhaleHeap@_635@0 Mask@87 ZeroMask)
    (wf exhaleHeap@_635@0 Mask@87 ZeroMask)
  )
    (and anon1071_Else anon1071_Then)
)))
(let ((anon1226_Else (=> (and true
    (= r@294@0 null)
  )
    $branchMerge_64
)))
(let (($join_2 (=> (and true
  )
    $branchMerge_64
)))
(let ((anon1164_Else (=> (and true
    (= r@271@0 null)
  )
    $branchMerge_62
)))
(let (($join_2@1 (=> (and true
  )
    $branchMerge_62
)))
(let ((anon1069_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null)
    (= exhaleMask@_636@9 exhaleMask@_636@7)
  )
    anon417
)))
(let ((anon416 (=> (and true
    (= exhaleMask@_636@9 exhaleMask@_636@8)
    (IsGoodMask exhaleMask@_636@8)
    (wf Heap@1 exhaleMask@_636@8 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )
    anon417
)))
(let ((anon1227_Else (=> (and true
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@292@0 AVLTreeNode.keys) k@19))
  )
    $join_2
)))
(let ((anon1227_Then (=> (and true
    (= (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_823@0 r@294@0 AVLTreeNode.keys)) (- (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@292@0 AVLTreeNode.keys)) 1))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@292@0 AVLTreeNode.keys) k@19)
  )
    $join_2
)))
(let ((anon1165_Else (=> (and true
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@269@0 AVLTreeNode.keys) k@19))
  )
    $join_2@1
)))
(let ((anon1165_Then (=> (and true
    (= (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_724@0 r@271@0 AVLTreeNode.keys)) (- (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@269@0 AVLTreeNode.keys)) 1))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@269@0 AVLTreeNode.keys) k@19)
  )
    $join_2@1
)))
(let ((anon1070_Else (=> (and true
    (CanRead$Int$ exhaleMask@_636@8 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid)
  )
    anon416
)))
(let ((anon1070_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_636@8 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid))
  )
    anon416
)))
(let ((anon1226_Then (=> (and true
    (not (= r@294@0 null))
  )
    (and anon1227_Else anon1227_Then)
)))
(let ((anon1164_Then (=> (and true
    (not (= r@271@0 null))
  )
    (and anon1165_Else anon1165_Then)
)))
(let ((anon1069_Then@2 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (= exhaleMask@_636@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
  )
    (and anon1070_Else anon1070_Then)
)))
(let (($branchMerge_60 (=> (and true
  )
    (and anon1226_Else anon1226_Then)
)))
(let (($branchMerge_59 (=> (and true
  )
    (and anon1164_Else anon1164_Then)
)))
(let ((anon1069_Then (=> (and true
    (> (Fractions 100) 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
  )(and 
    anon1069_Then@1_assertion
    anon1069_Then@2
))))
(let ((anon1224_Else (=> (and true
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@292@0 AVLTreeNode.keys) k@19)
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@292@0 AVLTreeNode.keys) k@19)
  )
    $branchMerge_60
)))
(let ((anon1224_Then (=> (and true
    (not (= r@294@0 null))
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@292@0 AVLTreeNode.keys) k@19))
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@292@0 AVLTreeNode.keys) k@19))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_823@0 r@294@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@292@0 AVLTreeNode.keys))
  )
    $branchMerge_60
)))
(let ((anon1162_Else (=> (and true
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@269@0 AVLTreeNode.keys) k@19)
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@269@0 AVLTreeNode.keys) k@19)
  )
    $branchMerge_59
)))
(let ((anon1162_Then (=> (and true
    (not (= r@271@0 null))
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@269@0 AVLTreeNode.keys) k@19))
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@269@0 AVLTreeNode.keys) k@19))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_724@0 r@271@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@269@0 AVLTreeNode.keys))
  )
    $branchMerge_59
)))
(let (($branchMerge_14 (=> (and true
  )
    (and anon1069_Else anon1069_Then)
)))
(let (($branchMerge_52 (=> (and true
  )
    (and anon1224_Else anon1224_Then)
)))
(let (($branchMerge_50 (=> (and true
  )
    (and anon1162_Else anon1162_Then)
)))
(let ((anon1067_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null)
    (= exhaleMask@_636@7 exhaleMask@_636@5)
  )
    $branchMerge_14
)))
(let ((anon412 (=> (and true
    (= exhaleMask@_636@7 exhaleMask@_636@6)
    (IsGoodMask exhaleMask@_636@6)
    (wf Heap@1 exhaleMask@_636@6 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )
    $branchMerge_14
)))
(let ((anon1217_Else (=> (and true
    (= Mask@32 exhaleMask@_824@3)
    (= Mask@34 Mask@32)
    (= Mask@36 Mask@34)
    (= Mask@38 Mask@36)
    (= r@294@0 null)
    (= r@294@0 null)
    (= r@294@0 null)
    (= r@294@0 null)
    (= r@294@0 null)
    (= r@294@0 null)
    (= r@294@0 null)
  )
    $branchMerge_52
)))
(let ((anon1217_Then (=> (and true
    (= Mask@31 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_824@3 r@294@0 AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_824@3 r@294@0 AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_824@3 r@294@0 AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@32 Mask@31)
    (= Mask@33 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@32 r@294@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@32 r@294@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@32 r@294@0 AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@34 Mask@33)
    (= Mask@35 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@34 r@294@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@34 r@294@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@34 r@294@0 AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@36 Mask@35)
    (= Mask@37 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@36 r@294@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@36 r@294@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@36 r@294@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= Mask@38 Mask@37)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (forall( (|i#84#295| Int))(=> (and (<= 0 |i#84#295|) (< |i#84#295| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@292@0 AVLTreeNode.keys)))) (or (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_823@0 r@294@0 AVLTreeNode.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@292@0 AVLTreeNode.keys) |i#84#295|)) (= (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@292@0 AVLTreeNode.keys) |i#84#295|) k@19))))
    (forall( (|i#85#296| Int))(=> (and (<= 0 |i#85#296|) (< |i#85#296| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_823@0 r@294@0 AVLTreeNode.keys)))) (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@292@0 AVLTreeNode.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_823@0 r@294@0 AVLTreeNode.keys) |i#85#296|)) (not (= (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_823@0 r@294@0 AVLTreeNode.keys) |i#85#296|) k@19)))))
    (IsGoodMask Mask@31)
    (IsGoodMask Mask@33)
    (IsGoodMask Mask@35)
    (IsGoodMask Mask@37)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_823@0 r@294@0 AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_823@0 r@294@0 AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_823@0 r@294@0 AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_823@0 r@294@0 AVLTreeNode.keys)))
    (not (= r@294@0 null))
    (not (= r@294@0 null))
    (not (= r@294@0 null))
    (not (= r@294@0 null))
    (not (= r@294@0 null))
    (not (= r@294@0 null))
    (not (= r@294@0 null))
    (not (= r@294@0 null))
    (not (= r@294@0 null))
    (not (= r@294@0 null))
    (not (= r@294@0 null))
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_823@0 r@294@0 AVLTreeNode.keys) k@19))
    (wf exhaleHeap@_823@0 exhaleMask@_824@3 ZeroMask)
    (wf exhaleHeap@_823@0 Mask@31 ZeroMask)
    (wf exhaleHeap@_823@0 Mask@31 ZeroMask)
    (wf exhaleHeap@_823@0 Mask@32 ZeroMask)
    (wf exhaleHeap@_823@0 Mask@33 ZeroMask)
    (wf exhaleHeap@_823@0 Mask@33 ZeroMask)
    (wf exhaleHeap@_823@0 Mask@34 ZeroMask)
    (wf exhaleHeap@_823@0 Mask@35 ZeroMask)
    (wf exhaleHeap@_823@0 Mask@35 ZeroMask)
    (wf exhaleHeap@_823@0 Mask@36 ZeroMask)
    (wf exhaleHeap@_823@0 Mask@37 ZeroMask)
    (wf exhaleHeap@_823@0 Mask@37 ZeroMask)
  )
    $branchMerge_52
)))
(let ((anon1155_Else (=> (and true
    (= Mask@62 exhaleMask@_725@3)
    (= Mask@64 Mask@62)
    (= Mask@66 Mask@64)
    (= Mask@68 Mask@66)
    (= r@271@0 null)
    (= r@271@0 null)
    (= r@271@0 null)
    (= r@271@0 null)
    (= r@271@0 null)
    (= r@271@0 null)
    (= r@271@0 null)
  )
    $branchMerge_50
)))
(let ((anon1155_Then (=> (and true
    (= Mask@61 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_725@3 r@271@0 AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_725@3 r@271@0 AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_725@3 r@271@0 AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@62 Mask@61)
    (= Mask@63 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@62 r@271@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@62 r@271@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@62 r@271@0 AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@64 Mask@63)
    (= Mask@65 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@64 r@271@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@64 r@271@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@64 r@271@0 AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@66 Mask@65)
    (= Mask@67 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@66 r@271@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@66 r@271@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@66 r@271@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= Mask@68 Mask@67)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (forall( (|i#84#272| Int))(=> (and (<= 0 |i#84#272|) (< |i#84#272| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@269@0 AVLTreeNode.keys)))) (or (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_724@0 r@271@0 AVLTreeNode.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@269@0 AVLTreeNode.keys) |i#84#272|)) (= (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@269@0 AVLTreeNode.keys) |i#84#272|) k@19))))
    (forall( (|i#85#273| Int))(=> (and (<= 0 |i#85#273|) (< |i#85#273| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_724@0 r@271@0 AVLTreeNode.keys)))) (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@269@0 AVLTreeNode.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_724@0 r@271@0 AVLTreeNode.keys) |i#85#273|)) (not (= (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_724@0 r@271@0 AVLTreeNode.keys) |i#85#273|) k@19)))))
    (IsGoodMask Mask@61)
    (IsGoodMask Mask@63)
    (IsGoodMask Mask@65)
    (IsGoodMask Mask@67)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_724@0 r@271@0 AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_724@0 r@271@0 AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_724@0 r@271@0 AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_724@0 r@271@0 AVLTreeNode.keys)))
    (not (= r@271@0 null))
    (not (= r@271@0 null))
    (not (= r@271@0 null))
    (not (= r@271@0 null))
    (not (= r@271@0 null))
    (not (= r@271@0 null))
    (not (= r@271@0 null))
    (not (= r@271@0 null))
    (not (= r@271@0 null))
    (not (= r@271@0 null))
    (not (= r@271@0 null))
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_724@0 r@271@0 AVLTreeNode.keys) k@19))
    (wf exhaleHeap@_724@0 exhaleMask@_725@3 ZeroMask)
    (wf exhaleHeap@_724@0 Mask@61 ZeroMask)
    (wf exhaleHeap@_724@0 Mask@61 ZeroMask)
    (wf exhaleHeap@_724@0 Mask@62 ZeroMask)
    (wf exhaleHeap@_724@0 Mask@63 ZeroMask)
    (wf exhaleHeap@_724@0 Mask@63 ZeroMask)
    (wf exhaleHeap@_724@0 Mask@64 ZeroMask)
    (wf exhaleHeap@_724@0 Mask@65 ZeroMask)
    (wf exhaleHeap@_724@0 Mask@65 ZeroMask)
    (wf exhaleHeap@_724@0 Mask@66 ZeroMask)
    (wf exhaleHeap@_724@0 Mask@67 ZeroMask)
    (wf exhaleHeap@_724@0 Mask@67 ZeroMask)
  )
    $branchMerge_50
)))
(let ((anon1068_Else (=> (and true
    (CanRead$Int$ exhaleMask@_636@6 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid)
  )
    anon412
)))
(let ((anon1068_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_635@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_636@6 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid))
  )
    anon412
)))
(let (($branchMerge_20 (=> (and true
  )
    (and anon1217_Else anon1217_Then)
)))
(let (($branchMerge_18 (=> (and true
  )
    (and anon1155_Else anon1155_Then)
)))
(let ((anon1067_Then@2 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (= exhaleMask@_636@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
  )
    (and anon1068_Else anon1068_Then)
)))
(let ((anon1216_Else (=> (and true
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@292@0 AVLTreeNode.keys) (Seq@Singleton$Int$ k@19))
  )
    $branchMerge_20
)))
(let ((anon1216_Then (=> (and true
    (not (= r@294@0 null))
    (not (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@292@0 AVLTreeNode.keys) (Seq@Singleton$Int$ k@19)))
  )
    $branchMerge_20
)))
(let ((anon1154_Else (=> (and true
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@269@0 AVLTreeNode.keys) (Seq@Singleton$Int$ k@19))
  )
    $branchMerge_18
)))
(let ((anon1154_Then (=> (and true
    (not (= r@271@0 null))
    (not (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@269@0 AVLTreeNode.keys) (Seq@Singleton$Int$ k@19)))
  )
    $branchMerge_18
)))
(let ((anon1067_Then (=> (and true
    (> (Fractions 100) 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
  )(and 
    anon1067_Then@1_assertion
    anon1067_Then@2
))))
(let (($branchMerge_16 (=> (and true
  )
    (and anon1216_Else anon1216_Then)
)))
(let (($branchMerge_15 (=> (and true
  )
    (and anon1154_Else anon1154_Then)
)))
(let (($branchMerge_13 (=> (and true
  )
    (and anon1067_Else anon1067_Then)
)))
(let ((anon1215_Else (=> (and true
    (not (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@292@0 AVLTreeNode.keys) (Seq@Singleton$Int$ k@19)))
  )
    $branchMerge_16
)))
(let ((anon1215_Then (=> (and true
    (= r@294@0 null)
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@292@0 AVLTreeNode.keys) (Seq@Singleton$Int$ k@19))
  )
    $branchMerge_16
)))
(let ((anon1153_Else (=> (and true
    (not (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@269@0 AVLTreeNode.keys) (Seq@Singleton$Int$ k@19)))
  )
    $branchMerge_15
)))
(let ((anon1153_Then (=> (and true
    (= r@271@0 null)
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@269@0 AVLTreeNode.keys) (Seq@Singleton$Int$ k@19))
  )
    $branchMerge_15
)))
(let ((anon1066_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null)
    (= exhaleMask@_636@5 exhaleMask@_636@3)
  )
    $branchMerge_13
)))
(let ((anon1066_Then@2 (=> (and true
    (< methodCallK@_634 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (= exhaleMask@_636@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R) methodCallK@_634))))
    (= exhaleMask@_636@5 exhaleMask@_636@4)
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R) 0)
    (IsGoodMask exhaleMask@_636@4)
    (wf Heap@1 exhaleMask@_636@4 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )
    $branchMerge_13
)))
(let ((anon705@6 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_824@2 this@292@0 AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_824@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_824@2 this@292@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_824@2 this@292@0 AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_824@2 this@292@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_824@2 this@292@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_824@2 this@292@0 AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodExhaleState exhaleHeap@_823@0 Heap@1 exhaleMask@_824@3 ZeroMask)
    (IsGoodMask exhaleMask@_824@3)
    (IsGoodMask exhaleMask@_824@3)
    (or (= r@294@0 null) (= (dtype r@294@0) AVLTreeNode@t))
    (wf exhaleHeap@_823@0 exhaleMask@_824@3 ZeroMask)
    (wf Heap@1 exhaleMask@_824@3 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )
    (and anon1215_Else anon1215_Then)
)))
(let ((anon581@6 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_725@2 this@269@0 AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_725@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_725@2 this@269@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_725@2 this@269@0 AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_725@2 this@269@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_725@2 this@269@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_725@2 this@269@0 AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodExhaleState exhaleHeap@_724@0 Heap@1 exhaleMask@_725@3 ZeroMask)
    (IsGoodMask exhaleMask@_725@3)
    (IsGoodMask exhaleMask@_725@3)
    (or (= r@271@0 null) (= (dtype r@271@0) AVLTreeNode@t))
    (wf exhaleHeap@_724@0 exhaleMask@_725@3 ZeroMask)
    (wf Heap@1 exhaleMask@_725@3 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )
    (and anon1153_Else anon1153_Then)
)))
(let ((anon1066_Then (=> (and true
    (> methodCallK@_634 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
  )(and 
    anon1066_Then@1_assertion
    anon1066_Then@2
))))
(let ((anon705@4 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_824@1 this@292@0 AVLTreeNode.height) perm$R))
    (= exhaleMask@_824@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_824@1 this@292@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_824@1 this@292@0 AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_824@1 this@292@0 AVLTreeNode.height) perm$R) (Fractions 50)))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_824@1 this@292@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_824@1 this@292@0 AVLTreeNode.height) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_824@2)
    (wf Heap@1 exhaleMask@_824@2 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon705@5_assertion
    anon705@6
))))
(let ((anon581@4 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_725@1 this@269@0 AVLTreeNode.height) perm$R))
    (= exhaleMask@_725@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_725@1 this@269@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_725@1 this@269@0 AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_725@1 this@269@0 AVLTreeNode.height) perm$R) (Fractions 50)))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_725@1 this@269@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_725@1 this@269@0 AVLTreeNode.height) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_725@2)
    (wf Heap@1 exhaleMask@_725@2 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon581@5_assertion
    anon581@6
))))
(let ((anon407@2 (=> (and true
    (< methodCallK@_634 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_636@2 this AVLTreeNode.right) perm$R))
    (= exhaleMask@_636@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_636@2 this AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_636@2 this AVLTreeNode.right) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_636@2 this AVLTreeNode.right) perm$R) methodCallK@_634))))
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_636@2 this AVLTreeNode.right) perm$R) 0)
    (IsGoodMask exhaleMask@_636@3)
    (wf Heap@1 exhaleMask@_636@3 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )
    (and anon1066_Else anon1066_Then)
)))
(let ((anon705@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_824@0 this@292@0 AVLTreeNode.keys) perm$R))
    (= exhaleMask@_824@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_824@0 this@292@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_824@0 this@292@0 AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_824@0 this@292@0 AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_824@0 this@292@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_824@0 this@292@0 AVLTreeNode.keys) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_824@1)
    (wf Heap@1 exhaleMask@_824@1 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon705@3_assertion
    anon705@4
))))
(let ((anon581@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_725@0 this@269@0 AVLTreeNode.keys) perm$R))
    (= exhaleMask@_725@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_725@0 this@269@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_725@0 this@269@0 AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_725@0 this@269@0 AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_725@0 this@269@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_725@0 this@269@0 AVLTreeNode.keys) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_725@1)
    (wf Heap@1 exhaleMask@_725@1 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon581@3_assertion
    anon581@4
))))
(let ((anon407 (=> (and true
    (> methodCallK@_634 0)
  )(and 
    anon407@1_assertion
    anon407@2
))))
(let ((anon705 (=> (and true
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_824@0)
    (wf Heap@1 exhaleMask@_824@0 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon705@1_assertion
    anon705@2
))))
(let ((anon581 (=> (and true
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_725@0)
    (wf Heap@1 exhaleMask@_725@0 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon581@1_assertion
    anon581@2
))))
(let ((anon1065_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null)
    (= exhaleMask@_636@2 exhaleMask@_636@0)
  )
    anon407
)))
(let ((anon1065_Then@2 (=> (and true
    (< methodCallK@_634 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (= exhaleMask@_636@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R) methodCallK@_634))))
    (= exhaleMask@_636@2 exhaleMask@_636@1)
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_636@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R) 0)
    (IsGoodMask exhaleMask@_636@1)
    (wf Heap@1 exhaleMask@_636@1 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )
    anon407
)))
(let ((anon1214_Else (=> (and true
    (CanRead$Int$ exhaleMask@_824@0 ZeroMask this@292@0 AVLTreeNode.valid)
  )
    anon705
)))
(let ((anon1214_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@292@0 AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_823@0 this@292@0 AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_824@0 ZeroMask this@292@0 AVLTreeNode.valid))
  )
    anon705
)))
(let ((anon1152_Else (=> (and true
    (CanRead$Int$ exhaleMask@_725@0 ZeroMask this@269@0 AVLTreeNode.valid)
  )
    anon581
)))
(let ((anon1152_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@269@0 AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_724@0 this@269@0 AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_725@0 ZeroMask this@269@0 AVLTreeNode.valid))
  )
    anon581
)))
(let ((anon1065_Then (=> (and true
    (> methodCallK@_634 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
  )(and 
    anon1065_Then@1_assertion
    anon1065_Then@2
))))
(let ((anon1213_Then@5 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@292@0 AVLTreeNode.valid) perm$R))
    (= exhaleMask@_824@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@292@0 AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@292@0 AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@292@0 AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@292@0 AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@292@0 AVLTreeNode.valid) perm$N)))
  )
    (and anon1214_Else anon1214_Then)
)))
(let ((anon1151_Then@5 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@269@0 AVLTreeNode.valid) perm$R))
    (= exhaleMask@_725@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@269@0 AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@269@0 AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@269@0 AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@269@0 AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@269@0 AVLTreeNode.valid) perm$N)))
  )
    (and anon1152_Else anon1152_Then)
)))
(let ((anon903_Else@7 (=> (and true
    (< methodCallK@_634 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@26 this AVLTreeNode.left) perm$R))
    (= exhaleMask@_636@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@26 this AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@26 this AVLTreeNode.left) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@26 this AVLTreeNode.left) perm$R) methodCallK@_634))))
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@26 this AVLTreeNode.left) perm$R) 0)
    (IsGoodMask exhaleMask@_636@0)
    (wf Heap@1 exhaleMask@_636@0 ZeroMask)
    (wf Heap@1 Mask@26 ZeroMask)
  )
    (and anon1065_Else anon1065_Then)
)))
(let ((anon1213_Then@3 (=> (and true
    (= this@292@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right))
    (> (Fractions 100) 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
  )(and 
    anon1213_Then@4_assertion
    anon1213_Then@5
))))
(let ((anon1151_Then@3 (=> (and true
    (= this@269@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left))
    (> (Fractions 100) 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
  )(and 
    anon1151_Then@4_assertion
    anon1151_Then@5
))))
(let ((anon903_Else@4 (=> (and true
    (< (* 1000 methodCallK@_634) (Fractions 1))
    (< (* 1000 methodCallK@_634) methodK@_506)
    (< 0 methodCallK@_634)
    (= nr@26@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right))
    (=> true (CanRead$ref$ Mask@26 ZeroMask this AVLTreeNode.right))
    (> methodCallK@_634 0)
    (not (= this null))
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon903_Else@6_assertion
    anon903_Else@7
))))
(let ((anon1213_Then (=> (and true
    (< (* 1000 methodCallK@_822) (Fractions 1))
    (< (* 1000 methodCallK@_822) methodK@_506)
    (< 0 methodCallK@_822)
    (=> true (CanRead$ref$ Mask@26 ZeroMask this AVLTreeNode.right))
    (=> true (not (= this null)))
    (wf Heap@1 Mask@26 ZeroMask)
    cond@_817@0
  )(and 
    anon1213_Then@2_assertion
    anon1213_Then@3
))))
(let ((anon1151_Then (=> (and true
    (< (* 1000 methodCallK@_723) (Fractions 1))
    (< (* 1000 methodCallK@_723) methodK@_506)
    (< 0 methodCallK@_723)
    (=> true (CanRead$ref$ Mask@26 ZeroMask this AVLTreeNode.left))
    (=> true (not (= this null)))
    (wf Heap@1 Mask@26 ZeroMask)
    cond@_718@0
  )(and 
    anon1151_Then@2_assertion
    anon1151_Then@3
))))
(let ((anon903_Else (=> (and true
    (= nl@24@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left))
    (=> true (CanRead$ref$ Mask@26 ZeroMask this AVLTreeNode.left))
    (=> true (not (= this null)))
    (=> true (not (= this null)))
    (not cond@_530@0)
  )(and 
    anon903_Else@3_assertion
    anon903_Else@4
))))
(let ((anon1150_Else@2 (=> (and true
    (=> true (CanRead$ref$ Mask@26 ZeroMask this AVLTreeNode.right))
  )
    (and anon1213_Else anon1213_Then)
)))
(let ((anon1150_Then@2 (=> (and true
    (=> true (CanRead$ref$ Mask@26 ZeroMask this AVLTreeNode.left))
  )
    (and anon1151_Else anon1151_Then)
)))
(let ((anon902_Then@4 (=> (and true
    (=> (and true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))) (CanRead$ref$ Mask@26 ZeroMask this AVLTreeNode.right))
  )
    (and anon903_Else anon903_Then)
)))
(let ((anon1150_Else (=> (and true
    (= cond@_817@0 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null)))
    (=> true (not (= this null)))
    (not cond@_717@0)
  )(and 
    anon1150_Else@1_assertion
    anon1150_Else@2
))))
(let ((anon1150_Then (=> (and true
    (= cond@_718@0 (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null)))
    (=> true (not (= this null)))
    cond@_717@0
  )(and 
    anon1150_Then@1_assertion
    anon1150_Then@2
))))
(let ((anon902_Then@2 (=> (and true
    (=> (and true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))) (not (= this null)))
    (=> true (CanRead$ref$ Mask@26 ZeroMask this AVLTreeNode.left))
  )(and 
    anon902_Then@3_assertion
    anon902_Then@4
))))
(let ((anon902_Else (=> (and true
    (= cond@_717@0 (< k@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key)))
    (=> true (CanRead$Int$ Mask@26 ZeroMask this AVLTreeNode.key))
    (=> true (not (= this null)))
    (not cond@_529@0)
  )
    (and anon1150_Else anon1150_Then)
)))
(let ((anon902_Then (=> (and true
    (= cond@_530@0 (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null)))
    (=> true (not (= this null)))
    cond@_529@0
  )(and 
    anon902_Then@1_assertion
    anon902_Then@2
))))
(let ((anon80@2 (=> (and true
    (=> true (CanRead$Int$ Mask@26 ZeroMask this AVLTreeNode.key))
  )
    (and anon902_Else anon902_Then)
)))
(let ((anon80 (=> (and true
    (<= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.balanceFactor) 1)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.balanceFactor) (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.height) (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= cond@_529@0 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key) k@19))
    (=> true (not (= this null)))
    (> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.height) 0)
    (>= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.balanceFactor) (- 0 1))
    (forall( (|kk#81| Int))(= (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this AVLTreeNode.keys) |kk#81|) (or (or (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null)) (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) |kk#81|)) (and (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null)) (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) |kk#81|))) (= |kk#81| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key)))))
    (IsGoodMask Mask@26)
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys))))
    (wf Heap@1 Mask@26 ZeroMask)
  )(and 
    anon80@1_assertion
    anon80@2
))))
(let ((anon896_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null)
    (= Mask@20 Mask@18)
    (= Mask@22 Mask@20)
    (= Mask@24 Mask@22)
    (= Mask@26 Mask@24)
  )
    anon80
)))
(let ((anon896_Then (=> (and true
    (= Mask@19 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@20 Mask@19)
    (= Mask@21 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@22 Mask@21)
    (= Mask@23 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@24 Mask@23)
    (= Mask@25 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@24 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@24 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@24 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= Mask@26 Mask@25)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) 0)
    (forall( (|rk#80#223| Int))(=> (and (<= 0 |rk#80#223|) (< |rk#80#223| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) |rk#80#223|))))
    (IsGoodMask Mask@19)
    (IsGoodMask Mask@21)
    (IsGoodMask Mask@23)
    (IsGoodMask Mask@25)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
    (wf Heap@1 Mask@18 ZeroMask)
    (wf Heap@1 Mask@19 ZeroMask)
    (wf Heap@1 Mask@19 ZeroMask)
    (wf Heap@1 Mask@20 ZeroMask)
    (wf Heap@1 Mask@21 ZeroMask)
    (wf Heap@1 Mask@21 ZeroMask)
    (wf Heap@1 Mask@22 ZeroMask)
    (wf Heap@1 Mask@23 ZeroMask)
    (wf Heap@1 Mask@23 ZeroMask)
    (wf Heap@1 Mask@24 ZeroMask)
    (wf Heap@1 Mask@25 ZeroMask)
    (wf Heap@1 Mask@25 ZeroMask)
  )
    anon80
)))
(let (($branchMerge_5 (=> (and true
  )
    (and anon896_Else anon896_Then)
)))
(let ((anon890_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null)
    (= Mask@12 Mask@10)
    (= Mask@14 Mask@12)
    (= Mask@16 Mask@14)
    (= Mask@18 Mask@16)
  )
    $branchMerge_5
)))
(let ((anon890_Then (=> (and true
    (= Mask@11 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@12 Mask@11)
    (= Mask@13 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@14 Mask@13)
    (= Mask@15 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@16 Mask@15)
    (= Mask@17 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= Mask@18 Mask@17)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) 0)
    (forall( (|lk#79#222| Int))(=> (and (<= 0 |lk#79#222|) (< |lk#79#222| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) |lk#79#222|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key))))
    (IsGoodMask Mask@11)
    (IsGoodMask Mask@13)
    (IsGoodMask Mask@15)
    (IsGoodMask Mask@17)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
    (wf Heap@1 Mask@10 ZeroMask)
    (wf Heap@1 Mask@11 ZeroMask)
    (wf Heap@1 Mask@11 ZeroMask)
    (wf Heap@1 Mask@12 ZeroMask)
    (wf Heap@1 Mask@13 ZeroMask)
    (wf Heap@1 Mask@13 ZeroMask)
    (wf Heap@1 Mask@14 ZeroMask)
    (wf Heap@1 Mask@15 ZeroMask)
    (wf Heap@1 Mask@15 ZeroMask)
    (wf Heap@1 Mask@16 ZeroMask)
    (wf Heap@1 Mask@17 ZeroMask)
    (wf Heap@1 Mask@17 ZeroMask)
  )
    $branchMerge_5
)))
(let ((anon56 (=> (and true
    (= Mask@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@9 this AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@9 this AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@9 this AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= Mask@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@4 this AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@4 this AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@4 this AVLTreeNode.key) perm$R) (Fractions 100)))))
    (= Mask@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@5 this AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@5 this AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@5 this AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@7 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@6 this AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@6 this AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@6 this AVLTreeNode.left) perm$R) (Fractions 100)))))
    (= Mask@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@7 this AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@7 this AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@7 this AVLTreeNode.right) perm$R) (Fractions 100)))))
    (= Mask@9 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@8 this AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@8 this AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@8 this AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (> (Fractions 100) 0)
    (> (Fractions 100) 0)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (IsGoodMask Mask@10)
    (IsGoodMask Mask@4)
    (IsGoodMask Mask@4)
    (IsGoodMask Mask@5)
    (IsGoodMask Mask@6)
    (IsGoodMask Mask@7)
    (IsGoodMask Mask@8)
    (IsGoodMask Mask@9)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this AVLTreeNode.keys)))
    (not (= this null))
    (not (= this null))
    (not (= this null))
    (not (= this null))
    (not (= this null))
    (not (= this null))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left)) AVLTreeNode@t))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right)) AVLTreeNode@t))
    (wf Heap@1 Mask@10 ZeroMask)
    (wf Heap@1 Mask@10 ZeroMask)
    (wf Heap@1 Mask@4 ZeroMask)
    (wf Heap@1 Mask@4 ZeroMask)
    (wf Heap@1 Mask@4 ZeroMask)
    (wf Heap@1 Mask@5 ZeroMask)
    (wf Heap@1 Mask@5 ZeroMask)
    (wf Heap@1 Mask@5 ZeroMask)
    (wf Heap@1 Mask@6 ZeroMask)
    (wf Heap@1 Mask@6 ZeroMask)
    (wf Heap@1 Mask@6 ZeroMask)
    (wf Heap@1 Mask@7 ZeroMask)
    (wf Heap@1 Mask@7 ZeroMask)
    (wf Heap@1 Mask@7 ZeroMask)
    (wf Heap@1 Mask@8 ZeroMask)
    (wf Heap@1 Mask@8 ZeroMask)
    (wf Heap@1 Mask@8 ZeroMask)
    (wf Heap@1 Mask@9 ZeroMask)
    (wf Heap@1 Mask@9 ZeroMask)
    (wf Heap@1 Mask@9 ZeroMask)
  )
    (and anon890_Else anon890_Then)
)))
(let ((anon889_Else (=> (and true
    (= Heap@1 Heap)
    (CanRead$Int$ Mask@4 ZeroMask this AVLTreeNode.valid)
  )
    anon56
)))
(let ((anon889_Then (=> (and true
    (< oldVers@_527@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@0 this AVLTreeNode.valid))
    (= Heap@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.valid newVers@_528@0))
    (= Heap@1 Heap@0)
    (= oldVers@_527@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.valid))
    (not (CanRead$Int$ Mask@4 ZeroMask this AVLTreeNode.valid))
  )
    anon56
)))
(let ((anon0@3 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@3 this AVLTreeNode.valid) perm$R))
    (= Mask@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@3 this AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@3 this AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@3 this AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@3 this AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@3 this AVLTreeNode.valid) perm$N)))
    (not false)
  )
    (and anon889_Else anon889_Then)
)))
(let (($root (=> (and true
  )(and 
    anon0@2_assertion
    anon0@3
))))
   $root
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))

;Commands
   (check-sat)
   ;(get-unsat-core)
