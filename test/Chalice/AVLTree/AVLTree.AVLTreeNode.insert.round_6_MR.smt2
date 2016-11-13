;Analysis time until now:   231s
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
(declare-fun $@bf ( ) Bool)
(declare-fun $@bf_1 ( ) Bool)
(declare-fun $@bf_10 ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref ) Bool)
(declare-fun $@bf_2 ( ) Bool)
(declare-fun $@bf_3 ( ) Bool)
(declare-fun $@bf_30 ( ) Bool)
(declare-fun $@bf_31 ( ) Bool)
(declare-fun $@bf_32 ( ) Bool)
(declare-fun $@bf_33 ( ) Bool)
(declare-fun $@bf_34 ( ) Bool)
(declare-fun $@bf_35 ( ) Bool)
(declare-fun $@bf_36 ( ) Bool)
(declare-fun $@bf_37 ( ) Bool)
(declare-fun $@bf_38 ( Seq$Int$ Int ) Bool)
(declare-fun $@bf_4 ( ) Bool)
(declare-fun $@bf_41 ( Seq$Int$ Seq$Int$ Int ) Bool)
(declare-fun $@bf_49 ( Seq$Int$ Seq$Int$ ) Bool)
(declare-fun $@bf_5 ( ) Bool)
(declare-fun $@bf_53 ( ) Bool)
(declare-fun $@bf_54 ( ) Bool)
(declare-fun $@bf_55 ( ) Bool)
(declare-fun $@sk_37 ( Seq$Int$ Seq$Int$ ) Int)
(declare-fun $@sk_38 ( ) Int)
(declare-fun $@sk_39 ( ) Int)
(declare-fun $@sk_40 ( ) Int)
(declare-fun $@sk_41 ( ) Int)
(declare-fun $@sk_42 ( ) Int)
(declare-fun $@sk_43 ( ) Int)
(declare-fun $@sk_44 ( ) Int)
(declare-fun $@sk_45 ( ) Int)
(declare-fun $@sk_46 ( ) Int)
(declare-fun $@sk_47 ( ) Int)
(declare-fun $@sk_48 ( ) Int)
(declare-fun $@sk_49 ( ) Int)
(declare-fun $@sk_50 ( ) ref)
(declare-fun $LockBottom ( ) Mu)
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
(declare-fun bf@178@0 ( ) Int)
(declare-fun bf@198@0 ( ) Int)
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
(declare-fun exhaleHeap@_289@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_296@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_322@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_337@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_350@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_366@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_389@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_414@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_429@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_442@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_458@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_481@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_499@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleMask@_297@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_297@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_297@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_297@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_297@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_297@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_297@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_297@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_297@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_297@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_297@18 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_297@19 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_297@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_297@20 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_297@21 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_297@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_297@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_297@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_297@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_297@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_297@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_297@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_323@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_323@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_323@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_323@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_323@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_323@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_338@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_338@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_338@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_338@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_351@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_351@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_351@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_351@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_351@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_351@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_351@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_351@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_351@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_351@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_367@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_367@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_367@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_367@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_367@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_367@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_367@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_367@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_367@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_367@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_367@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_367@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_367@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_367@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_367@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_367@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_367@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_367@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_390@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_390@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_390@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_390@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_390@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_390@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_390@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_390@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_390@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_390@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_390@18 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_390@19 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_390@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_390@20 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_390@21 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_390@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_390@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_390@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_390@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_390@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_390@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_390@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_415@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_415@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_415@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_415@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_415@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_415@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_430@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_430@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_430@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_430@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_443@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_443@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_443@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_443@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_443@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_443@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_443@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_443@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_443@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_443@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_459@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_459@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_459@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_459@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_459@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_459@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_459@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_459@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_459@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_459@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_459@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_459@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_459@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_459@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_459@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_459@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_459@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_459@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_482@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_482@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_482@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_482@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_482@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_482@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_482@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_482@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_482@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_482@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_482@18 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_482@19 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_482@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_482@20 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_482@21 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_482@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_482@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_482@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_482@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_482@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_482@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_482@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_500@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_500@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_500@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_500@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
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
(declare-fun k@9 ( ) Int)
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
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Mu$ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Seq$Int$$ $@Map@@PermissionComponent@To@Int@@ ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$Int$ Int ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ ( $@Map@@$T0@@ref@Field$$T0$@To@$T0@@ ref Field$ref$ ref ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
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
(declare-fun methodCallK@_295 ( ) Int)
(declare-fun methodCallK@_321 ( ) Int)
(declare-fun methodCallK@_336 ( ) Int)
(declare-fun methodCallK@_349 ( ) Int)
(declare-fun methodCallK@_365 ( ) Int)
(declare-fun methodCallK@_388 ( ) Int)
(declare-fun methodCallK@_413 ( ) Int)
(declare-fun methodCallK@_428 ( ) Int)
(declare-fun methodCallK@_441 ( ) Int)
(declare-fun methodCallK@_457 ( ) Int)
(declare-fun methodCallK@_480 ( ) Int)
(declare-fun methodK@_261 ( ) Int)
(declare-fun module@default ( ) ModuleName)
(declare-fun monitorK ( ) Int)
(declare-fun mu ( ) Field$Mu$)
(declare-fun newVers@_283@0 ( ) Int)
(declare-fun nl@12 ( ) ref)
(declare-fun nl@12@0 ( ) ref)
(declare-fun nr@16 ( ) ref)
(declare-fun nr@16@0 ( ) ref)
(declare-fun null ( ) ref)
(declare-fun nw@_316@0 ( ) ref)
(declare-fun nw@_408@0 ( ) ref)
(declare-fun oldVers@_282@0 ( ) Int)
(declare-fun perm$N ( ) PermissionComponent)
(declare-fun perm$R ( ) PermissionComponent)
(declare-fun Permission$denominator ( ) Int)
(declare-fun Permission$Full ( ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun Permission$FullFraction ( ) Int)
(declare-fun Permission$Zero ( ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun predicateK ( ) Int)
(declare-fun r@10 ( ) ref)
(declare-fun r@10@0 ( ) ref)
(declare-fun r@174 ( ) ref)
(declare-fun r@174@0 ( ) ref)
(declare-fun r@180 ( ) ref)
(declare-fun r@180@0 ( ) ref)
(declare-fun r@194 ( ) ref)
(declare-fun r@194@0 ( ) ref)
(declare-fun r@200 ( ) ref)
(declare-fun r@200@0 ( ) ref)
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
(declare-fun this@165 ( ) ref)
(declare-fun this@170 ( ) ref)
(declare-fun this@172 ( ) ref)
(declare-fun this@172@0 ( ) ref)
(declare-fun this@177 ( ) ref)
(declare-fun this@179 ( ) ref)
(declare-fun this@185 ( ) ref)
(declare-fun this@190 ( ) ref)
(declare-fun this@192 ( ) ref)
(declare-fun this@192@0 ( ) ref)
(declare-fun this@197 ( ) ref)
(declare-fun this@199 ( ) ref)
(declare-fun this@205 ( ) ref)
(declare-fun unfoldK@_262 ( ) Int)
(declare-fun ZeroCredits ( ) $@Map@@ref@To@Int@@)
(declare-fun ZeroMask ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)

;Predicates
(declare-fun $@AVLTreeNode.valid@trigger ( ref ) Bool)
(declare-fun $@condition ( ) Bool)
(declare-fun $@condition_$0 ( ) Bool)
(declare-fun $@condition_$1 ( ) Bool)
(declare-fun $@condition_$10 ( ) Bool)
(declare-fun $@condition_$100 ( ) Bool)
(declare-fun $@condition_$102 ( ) Bool)
(declare-fun $@condition_$103 ( ) Bool)
(declare-fun $@condition_$104 ( ) Bool)
(declare-fun $@condition_$105 ( ) Bool)
(declare-fun $@condition_$106 ( ) Bool)
(declare-fun $@condition_$107 ( ) Bool)
(declare-fun $@condition_$108 ( ) Bool)
(declare-fun $@condition_$109 ( ) Bool)
(declare-fun $@condition_$110 ( ) Bool)
(declare-fun $@condition_$111 ( ) Bool)
(declare-fun $@condition_$112 ( ) Bool)
(declare-fun $@condition_$113 ( ) Bool)
(declare-fun $@condition_$114 ( ) Bool)
(declare-fun $@condition_$117 ( ) Bool)
(declare-fun $@condition_$12 ( ) Bool)
(declare-fun $@condition_$121 ( ) Bool)
(declare-fun $@condition_$123 ( ) Bool)
(declare-fun $@condition_$125 ( ) Bool)
(declare-fun $@condition_$127 ( ) Bool)
(declare-fun $@condition_$129 ( ) Bool)
(declare-fun $@condition_$131 ( ) Bool)
(declare-fun $@condition_$133 ( ) Bool)
(declare-fun $@condition_$135 ( ) Bool)
(declare-fun $@condition_$137 ( ) Bool)
(declare-fun $@condition_$138 ( ) Bool)
(declare-fun $@condition_$14 ( ) Bool)
(declare-fun $@condition_$140 ( ) Bool)
(declare-fun $@condition_$141 ( ) Bool)
(declare-fun $@condition_$142 ( ) Bool)
(declare-fun $@condition_$143 ( ) Bool)
(declare-fun $@condition_$146 ( ) Bool)
(declare-fun $@condition_$148 ( ) Bool)
(declare-fun $@condition_$150 ( ) Bool)
(declare-fun $@condition_$152 ( ) Bool)
(declare-fun $@condition_$154 ( ) Bool)
(declare-fun $@condition_$155 ( ) Bool)
(declare-fun $@condition_$157 ( ) Bool)
(declare-fun $@condition_$158 ( ) Bool)
(declare-fun $@condition_$16 ( ) Bool)
(declare-fun $@condition_$18 ( ) Bool)
(declare-fun $@condition_$2 ( ) Bool)
(declare-fun $@condition_$20 ( ) Bool)
(declare-fun $@condition_$22 ( ) Bool)
(declare-fun $@condition_$24 ( ) Bool)
(declare-fun $@condition_$25 ( ) Bool)
(declare-fun $@condition_$26 ( ) Bool)
(declare-fun $@condition_$27 ( ) Bool)
(declare-fun $@condition_$29 ( ) Bool)
(declare-fun $@condition_$30 ( ) Bool)
(declare-fun $@condition_$31 ( ) Bool)
(declare-fun $@condition_$32 ( ) Bool)
(declare-fun $@condition_$33 ( ) Bool)
(declare-fun $@condition_$34 ( ) Bool)
(declare-fun $@condition_$35 ( ) Bool)
(declare-fun $@condition_$36 ( ) Bool)
(declare-fun $@condition_$37 ( ) Bool)
(declare-fun $@condition_$38 ( ) Bool)
(declare-fun $@condition_$4 ( ) Bool)
(declare-fun $@condition_$40 ( ) Bool)
(declare-fun $@condition_$43 ( ) Bool)
(declare-fun $@condition_$45 ( ) Bool)
(declare-fun $@condition_$46 ( ) Bool)
(declare-fun $@condition_$47 ( ) Bool)
(declare-fun $@condition_$49 ( ) Bool)
(declare-fun $@condition_$51 ( ) Bool)
(declare-fun $@condition_$52 ( ) Bool)
(declare-fun $@condition_$53 ( ) Bool)
(declare-fun $@condition_$54 ( ) Bool)
(declare-fun $@condition_$56 ( ) Bool)
(declare-fun $@condition_$57 ( ) Bool)
(declare-fun $@condition_$58 ( ) Bool)
(declare-fun $@condition_$6 ( ) Bool)
(declare-fun $@condition_$60 ( ) Bool)
(declare-fun $@condition_$62 ( ) Bool)
(declare-fun $@condition_$64 ( ) Bool)
(declare-fun $@condition_$66 ( ) Bool)
(declare-fun $@condition_$67 ( ) Bool)
(declare-fun $@condition_$68 ( ) Bool)
(declare-fun $@condition_$69 ( ) Bool)
(declare-fun $@condition_$72 ( ) Bool)
(declare-fun $@condition_$73 ( ) Bool)
(declare-fun $@condition_$74 ( ) Bool)
(declare-fun $@condition_$75 ( ) Bool)
(declare-fun $@condition_$76 ( ) Bool)
(declare-fun $@condition_$78 ( ) Bool)
(declare-fun $@condition_$8 ( ) Bool)
(declare-fun $@condition_$80 ( ) Bool)
(declare-fun $@condition_$81 ( ) Bool)
(declare-fun $@condition_$82 ( ) Bool)
(declare-fun $@condition_$84 ( ) Bool)
(declare-fun $@condition_$86 ( ) Bool)
(declare-fun $@condition_$87 ( ) Bool)
(declare-fun $@condition_$88 ( ) Bool)
(declare-fun $@condition_$90 ( ) Bool)
(declare-fun $@condition_$92 ( ) Bool)
(declare-fun $@condition_$93 ( ) Bool)
(declare-fun $@condition_$94 ( ) Bool)
(declare-fun $@condition_$95 ( ) Bool)
(declare-fun $@condition_$96 ( ) Bool)
(declare-fun $@condition_$97 ( ) Bool)
(declare-fun $@condition_$98 ( ) Bool)
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
(declare-fun cond@_284@0 ( ) Bool)
(declare-fun cond@_314@0 ( ) Bool)
(declare-fun cond@_315@0 ( ) Bool)
(declare-fun cond@_360@0 ( ) Bool)
(declare-fun cond@_407@0 ( ) Bool)
(declare-fun cond@_452@0 ( ) Bool)
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
   (assert (! (< (* 1000 methodK@_261) (Fractions 1)) :named ax_2))
   (assert (! (< (* 1000 unfoldK@_262) methodK@_261) :named ax_3))
   (assert (! (< 0 (Fractions 50)) :named ax_4))
   (assert (! (< 0 channelK) :named ax_5))
   (assert (! (< 0 methodK@_261) :named ax_6))
   (assert (! (< 0 Permission$denominator) :named ax_7))
   (assert (! (< 0 Permission$FullFraction) :named ax_8))
   (assert (! (< 0 unfoldK@_262) :named ax_9))
   (assert (! (< unfoldK@_262 (Fractions 1)) :named ax_10))
   (assert (! (= (= true $@bf_30) (ite$Bool$ true true true)) :named ax_11))
   (assert (! (= (= true $@bf_31) (ite$Bool$ true true false)) :named ax_12))
   (assert (! (= (= true $@bf_32) (ite$Bool$ true false true)) :named ax_13))
   (assert (! (= (= true $@bf_33) (ite$Bool$ true false false)) :named ax_14))
   (assert (! (= (= true $@bf_34) (ite$Bool$ false true true)) :named ax_15))
   (assert (! (= (= true $@bf_35) (ite$Bool$ false true false)) :named ax_16))
   (assert (! (= (= true $@bf_36) (ite$Bool$ false false true)) :named ax_17))
   (assert (! (= (= true $@bf_37) (ite$Bool$ false false false)) :named ax_18))
   (assert (! (= (dtype this) AVLTreeNode@t) :named ax_19))
   (assert (! (= (Fractions 50) (+ 0 (Fractions 50))) :named ax_20))
   (assert (! (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask this AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@2 this AVLTreeNode.balanceFactor) perm$R (Fractions 50))) :named ax_21))
   (assert (! (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@0 this AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask this AVLTreeNode.valid) perm$R Permission$FullFraction)) :named ax_22))
   (assert (! (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@2 this AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@1 this AVLTreeNode.height) perm$R (Fractions 50))) :named ax_23))
   (assert (! (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@1 this AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@0 this AVLTreeNode.keys) perm$R (Fractions 50))) :named ax_24))
   (assert (! (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@1 this AVLTreeNode.height) perm$R)) :named ax_25))
   (assert (! (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@2 this AVLTreeNode.balanceFactor) perm$R)) :named ax_26))
   (assert (! (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask this AVLTreeNode.valid) perm$R)) :named ax_27))
   (assert (! (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@0 this AVLTreeNode.keys) perm$R)) :named ax_28))
   (assert (! (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ Permission$Full perm$N)) :named ax_29))
   (assert (! (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ Permission$Zero perm$N)) :named ax_30))
   (assert (! (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ Permission$Zero perm$R)) :named ax_31))
   (assert (! (= 0 (Seq@Length$Int$ Seq@Empty$Int$)) :named ax_32))
   (assert (! (= 0 (Seq@Length$ref$ Seq@Empty$ref$)) :named ax_33))
   (assert (! (= channelK monitorK) :named ax_34))
   (assert (! (= channelK predicateK) :named ax_35))
   (assert (! (= false $@bf_32) :named ax_36))
   (assert (! (= false $@bf_33) :named ax_37))
   (assert (! (= false $@bf_35) :named ax_38))
   (assert (! (= false $@bf_37) :named ax_39))
   (assert (! (= Mask (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@2 this AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask this AVLTreeNode.balanceFactor))) :named ax_40))
   (assert (! (= Mask Mask@3) :named ax_41))
   (assert (! (= Mask@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask this AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@0 this AVLTreeNode.valid))) :named ax_42))
   (assert (! (= Mask@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@0 this AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@1 this AVLTreeNode.keys))) :named ax_43))
   (assert (! (= Mask@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@1 this AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@2 this AVLTreeNode.height))) :named ax_44))
   (assert (! (= module@default CurrentModule) :named ax_45))
   (assert (! (= Permission$FullFraction (+ 0 Permission$FullFraction)) :named ax_46))
   (assert (! (= Permission$FullFraction (Fractions 100)) :named ax_47))
   (assert (! (= Permission$FullFraction (MapRead$$@Map@@PermissionComponent@To@Int@@$ Permission$Full perm$R)) :named ax_48))
   (assert (! (= SecMask ZeroMask) :named ax_49))
   (assert (! (= true $@bf_30) :named ax_50))
   (assert (! (= true $@bf_31) :named ax_51))
   (assert (! (= true $@bf_34) :named ax_52))
   (assert (! (= true $@bf_36) :named ax_53))
   (assert (! (= ZeroCredits Credits) :named ax_54))
   (assert (! (forall ((|i_1| Field$Int$)(|i| ref)(|m_1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v| $@Map@@PermissionComponent@To@Int@@))(!(= v (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_1 i i_1 v) i i_1)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_1 i i_1 v) i i_1)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_55))
   (assert (! (forall ((|i_12| PermissionComponent)(|m_7| $@Map@@PermissionComponent@To@Int@@)(|v_6| Int))(!(= v_6 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_7 i_12 v_6) i_12)):pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_7 i_12 v_6) i_12)) :qid map_1_$@Map@@PermissionComponent@To@Int@@ :weight 0 )) :named ax_56))
   (assert (! (forall ((|i_15| Field$Seq$Int$$)(|i_14| ref)(|m_9| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_8| $@Map@@PermissionComponent@To@Int@@))(!(= v_8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_9 i_14 i_15 v_8) i_14 i_15)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_9 i_14 i_15 v_8) i_14 i_15)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_57))
   (assert (! (forall ((|i_27| Field$Int$)(|i_26| ref)(|m_15| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_14| Int))(!(= v_14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_15 i_26 i_27 v_14) i_26 i_27)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_15 i_26 i_27 v_14) i_26 i_27)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_58))
   (assert (! (forall ((|i_39| Field$ref$)(|i_38| ref)(|m_21| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_20| $@Map@@PermissionComponent@To@Int@@))(!(= v_20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_21 i_38 i_39 v_20) i_38 i_39)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_21 i_38 i_39 v_20) i_38 i_39)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_59))
   (assert (! (forall ((|i_51| Field$Mu$)(|i_50| ref)(|m_27| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_26| $@Map@@PermissionComponent@To@Int@@))(!(= v_26 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_27 i_50 i_51 v_26) i_50 i_51)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_27 i_50 i_51 v_26) i_50 i_51)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_60))
   (assert (! (forall ((|i_63| Field$ref$)(|i_62| ref)(|m_33| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_32| ref))(!(= v_32 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_33 i_62 i_63 v_32) i_62 i_63)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_33 i_62 i_63 v_32) i_62 i_63)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_61))
   (assert (! (forall ((|v_1| $@Map@@PermissionComponent@To@Int@@)(|m_2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_3| Field$Int$)(|j_1| Field$Int$)(|i_2| ref)(|j| ref))(!(=> (or (not (= j_1 i_3)) (not (= j i_2))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_2 j j_1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_2 i_2 i_3 v_1) j j_1))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_2 i_2 i_3 v_1) j j_1)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_62))
   (assert (! (forall ((|v_10| $@Map@@PermissionComponent@To@Int@@)(|i_19| Field$Seq$Int$$)(|i_18| ref)(|j_14| Field$Bool$)(|j_13| ref)(|m_11| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_11 j_13 j_14) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_11 i_18 i_19 v_10) j_13 j_14)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_11 i_18 i_19 v_10) j_13 j_14)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__Seq$Int$ :weight 0 )) :named ax_63))
   (assert (! (forall ((|v_11| $@Map@@PermissionComponent@To@Int@@)(|i_21| Field$Seq$Int$$)(|i_20| ref)(|j_16| Field$Int$)(|j_15| ref)(|m_12| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_12 j_15 j_16) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_12 i_20 i_21 v_11) j_15 j_16)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_12 i_20 i_21 v_11) j_15 j_16)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Int__Seq$Int$ :weight 0 )) :named ax_64))
   (assert (! (forall ((|v_12| $@Map@@PermissionComponent@To@Int@@)(|i_23| Field$Seq$Int$$)(|i_22| ref)(|j_18| Field$ref$)(|j_17| ref)(|m_13| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_13 j_17 j_18) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_13 i_22 i_23 v_12) j_17 j_18)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_13 i_22 i_23 v_12) j_17 j_18)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__ref__Seq$Int$ :weight 0 )) :named ax_65))
   (assert (! (forall ((|v_13| $@Map@@PermissionComponent@To@Int@@)(|i_25| Field$Seq$Int$$)(|i_24| ref)(|j_20| Field$Mu$)(|j_19| ref)(|m_14| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_14 j_19 j_20) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_14 i_24 i_25 v_13) j_19 j_20)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_14 i_24 i_25 v_13) j_19 j_20)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Mu__Seq$Int$ :weight 0 )) :named ax_66))
   (assert (! (forall ((|v_15| Int)(|m_16| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_29| Field$Int$)(|j_22| Field$Int$)(|i_28| ref)(|j_21| ref))(!(=> (or (not (= j_22 i_29)) (not (= j_21 i_28))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_16 j_21 j_22) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_16 i_28 i_29 v_15) j_21 j_22))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_16 i_28 i_29 v_15) j_21 j_22)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_67))
   (assert (! (forall ((|v_16| Int)(|i_31| Field$Int$)(|i_30| ref)(|j_24| Field$Bool$)(|j_23| ref)(|m_17| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_17 j_23 j_24) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_17 i_30 i_31 v_16) j_23 j_24)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_17 i_30 i_31 v_16) j_23 j_24)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__Int :weight 0 )) :named ax_68))
   (assert (! (forall ((|v_17| Int)(|i_33| Field$Int$)(|i_32| ref)(|j_26| Field$ref$)(|j_25| ref)(|m_18| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_18 j_25 j_26) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_18 i_32 i_33 v_17) j_25 j_26)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_18 i_32 i_33 v_17) j_25 j_26)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__Int :weight 0 )) :named ax_69))
   (assert (! (forall ((|v_18| Int)(|i_35| Field$Int$)(|i_34| ref)(|j_28| Field$Mu$)(|j_27| ref)(|m_19| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ m_19 j_27 j_28) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_19 i_34 i_35 v_18) j_27 j_28)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_19 i_34 i_35 v_18) j_27 j_28)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Mu__Int :weight 0 )) :named ax_70))
   (assert (! (forall ((|v_19| Int)(|i_37| Field$Int$)(|i_36| ref)(|j_30| Field$Seq$Int$$)(|j_29| ref)(|m_20| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_20 j_29 j_30) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_20 i_36 i_37 v_19) j_29 j_30)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_20 i_36 i_37 v_19) j_29 j_30)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$Int$__Int :weight 0 )) :named ax_71))
   (assert (! (forall ((|v_2| $@Map@@PermissionComponent@To@Int@@)(|i_5| Field$Int$)(|i_4| ref)(|j_3| Field$Bool$)(|j_2| ref)(|m_3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_3 j_2 j_3) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_3 i_4 i_5 v_2) j_2 j_3)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_3 i_4 i_5 v_2) j_2 j_3)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__Int :weight 0 )) :named ax_72))
   (assert (! (forall ((|v_21| $@Map@@PermissionComponent@To@Int@@)(|m_22| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_41| Field$ref$)(|j_32| Field$ref$)(|i_40| ref)(|j_31| ref))(!(=> (or (not (= j_32 i_41)) (not (= j_31 i_40))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_22 j_31 j_32) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_22 i_40 i_41 v_21) j_31 j_32))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_22 i_40 i_41 v_21) j_31 j_32)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_73))
   (assert (! (forall ((|v_22| $@Map@@PermissionComponent@To@Int@@)(|i_43| Field$ref$)(|i_42| ref)(|j_34| Field$Bool$)(|j_33| ref)(|m_23| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_23 j_33 j_34) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_23 i_42 i_43 v_22) j_33 j_34)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_23 i_42 i_43 v_22) j_33 j_34)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__ref :weight 0 )) :named ax_74))
   (assert (! (forall ((|v_23| $@Map@@PermissionComponent@To@Int@@)(|i_45| Field$ref$)(|i_44| ref)(|j_36| Field$Int$)(|j_35| ref)(|m_24| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_24 j_35 j_36) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_24 i_44 i_45 v_23) j_35 j_36)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_24 i_44 i_45 v_23) j_35 j_36)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Int__ref :weight 0 )) :named ax_75))
   (assert (! (forall ((|v_24| $@Map@@PermissionComponent@To@Int@@)(|i_47| Field$ref$)(|i_46| ref)(|j_38| Field$Mu$)(|j_37| ref)(|m_25| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_25 j_37 j_38) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_25 i_46 i_47 v_24) j_37 j_38)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_25 i_46 i_47 v_24) j_37 j_38)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Mu__ref :weight 0 )) :named ax_76))
   (assert (! (forall ((|v_25| $@Map@@PermissionComponent@To@Int@@)(|i_49| Field$ref$)(|i_48| ref)(|j_40| Field$Seq$Int$$)(|j_39| ref)(|m_26| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_26 j_39 j_40) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_26 i_48 i_49 v_25) j_39 j_40)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_26 i_48 i_49 v_25) j_39 j_40)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Seq$Int$__ref :weight 0 )) :named ax_77))
   (assert (! (forall ((|v_27| $@Map@@PermissionComponent@To@Int@@)(|m_28| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_53| Field$Mu$)(|j_42| Field$Mu$)(|i_52| ref)(|j_41| ref))(!(=> (or (not (= j_42 i_53)) (not (= j_41 i_52))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_28 j_41 j_42) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_28 i_52 i_53 v_27) j_41 j_42))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_28 i_52 i_53 v_27) j_41 j_42)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_78))
   (assert (! (forall ((|v_28| $@Map@@PermissionComponent@To@Int@@)(|i_55| Field$Mu$)(|i_54| ref)(|j_44| Field$Bool$)(|j_43| ref)(|m_29| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_29 j_43 j_44) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_29 i_54 i_55 v_28) j_43 j_44)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_29 i_54 i_55 v_28) j_43 j_44)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__Mu :weight 0 )) :named ax_79))
   (assert (! (forall ((|v_29| $@Map@@PermissionComponent@To@Int@@)(|i_57| Field$Mu$)(|i_56| ref)(|j_46| Field$Int$)(|j_45| ref)(|m_30| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_30 j_45 j_46) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_30 i_56 i_57 v_29) j_45 j_46)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_30 i_56 i_57 v_29) j_45 j_46)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Int__Mu :weight 0 )) :named ax_80))
   (assert (! (forall ((|v_3| $@Map@@PermissionComponent@To@Int@@)(|i_7| Field$Int$)(|i_6| ref)(|j_5| Field$ref$)(|j_4| ref)(|m_4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_4 j_4 j_5) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_4 i_6 i_7 v_3) j_4 j_5)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_4 i_6 i_7 v_3) j_4 j_5)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__ref__Int :weight 0 )) :named ax_81))
   (assert (! (forall ((|v_30| $@Map@@PermissionComponent@To@Int@@)(|i_59| Field$Mu$)(|i_58| ref)(|j_48| Field$ref$)(|j_47| ref)(|m_31| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_31 j_47 j_48) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_31 i_58 i_59 v_30) j_47 j_48)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_31 i_58 i_59 v_30) j_47 j_48)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__ref__Mu :weight 0 )) :named ax_82))
   (assert (! (forall ((|v_31| $@Map@@PermissionComponent@To@Int@@)(|i_61| Field$Mu$)(|i_60| ref)(|j_50| Field$Seq$Int$$)(|j_49| ref)(|m_32| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_32 j_49 j_50) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_32 i_60 i_61 v_31) j_49 j_50)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_32 i_60 i_61 v_31) j_49 j_50)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Seq$Int$__Mu :weight 0 )) :named ax_83))
   (assert (! (forall ((|v_33| ref)(|m_34| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_65| Field$ref$)(|j_52| Field$ref$)(|i_64| ref)(|j_51| ref))(!(=> (or (not (= j_52 i_65)) (not (= j_51 i_64))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_34 j_51 j_52) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_34 i_64 i_65 v_33) j_51 j_52))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_34 i_64 i_65 v_33) j_51 j_52)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_84))
   (assert (! (forall ((|v_34| ref)(|i_67| Field$ref$)(|i_66| ref)(|j_54| Field$Bool$)(|j_53| ref)(|m_35| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_35 j_53 j_54) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_35 i_66 i_67 v_34) j_53 j_54)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_35 i_66 i_67 v_34) j_53 j_54)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__ref :weight 0 )) :named ax_85))
   (assert (! (forall ((|v_35| ref)(|i_69| Field$ref$)(|i_68| ref)(|j_56| Field$Int$)(|j_55| ref)(|m_36| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_36 j_55 j_56) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_36 i_68 i_69 v_35) j_55 j_56)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_36 i_68 i_69 v_35) j_55 j_56)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Int__ref :weight 0 )) :named ax_86))
   (assert (! (forall ((|v_36| ref)(|i_71| Field$ref$)(|i_70| ref)(|j_58| Field$Mu$)(|j_57| ref)(|m_37| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ m_37 j_57 j_58) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_37 i_70 i_71 v_36) j_57 j_58)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_37 i_70 i_71 v_36) j_57 j_58)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Mu__ref :weight 0 )) :named ax_87))
   (assert (! (forall ((|v_37| ref)(|i_73| Field$ref$)(|i_72| ref)(|j_60| Field$Seq$Int$$)(|j_59| ref)(|m_38| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_38 j_59 j_60) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_38 i_72 i_73 v_37) j_59 j_60)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_38 i_72 i_73 v_37) j_59 j_60)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$Int$__ref :weight 0 )) :named ax_88))
   (assert (! (forall ((|v_4| $@Map@@PermissionComponent@To@Int@@)(|i_9| Field$Int$)(|i_8| ref)(|j_7| Field$Mu$)(|j_6| ref)(|m_5| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_5 j_6 j_7) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_5 i_8 i_9 v_4) j_6 j_7)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_5 i_8 i_9 v_4) j_6 j_7)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Mu__Int :weight 0 )) :named ax_89))
   (assert (! (forall ((|v_5| $@Map@@PermissionComponent@To@Int@@)(|i_11| Field$Int$)(|i_10| ref)(|j_9| Field$Seq$Int$$)(|j_8| ref)(|m_6| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_6 j_8 j_9) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_6 i_10 i_11 v_5) j_8 j_9)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_6 i_10 i_11 v_5) j_8 j_9)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Seq$Int$__Int :weight 0 )) :named ax_90))
   (assert (! (forall ((|v_7| Int)(|m_8| $@Map@@PermissionComponent@To@Int@@)(|i_13| PermissionComponent)(|j_10| PermissionComponent))(!(=> (not (= j_10 i_13)) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ m_8 j_10) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_8 i_13 v_7) j_10))):pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_8 i_13 v_7) j_10)) :qid map_2_$@Map@@PermissionComponent@To@Int@@ :weight 0 )) :named ax_91))
   (assert (! (forall ((|v_9| $@Map@@PermissionComponent@To@Int@@)(|m_10| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_17| Field$Seq$Int$$)(|j_12| Field$Seq$Int$$)(|i_16| ref)(|j_11| ref))(!(=> (or (not (= j_12 i_17)) (not (= j_11 i_16))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_10 j_11 j_12) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_10 i_16 i_17 v_9) j_11 j_12))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_10 i_16 i_17 v_9) j_11 j_12)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_92))
   (assert (! (forall( (|a_$2_$0| Seq$Int$) (|b_$2_$0| Seq$Int$))(!(=> (Seq@Equal$Int$ |a_$2_$0| |b_$2_$0|) (= |b_$2_$0| |a_$2_$0|))  :pattern ( (Seq@Equal$Int$ |a_$2_$0| |b_$2_$0|)))) :named ax_93))
   (assert (! (forall( (|a_$2_$1| Seq$ref$) (|b_$2_$1| Seq$ref$))(!(=> (Seq@Equal$ref$ |a_$2_$1| |b_$2_$1|) (= |b_$2_$1| |a_$2_$1|))  :pattern ( (Seq@Equal$ref$ |a_$2_$1| |b_$2_$1|)))) :named ax_94))
   (assert (! (forall( (|con_$0_$0| Bool) (|a_$1_$0| Bool) (|b_$1_$0| Bool))(!(=> (not |con_$0_$0|) (= (ite$Bool$ |con_$0_$0| |a_$1_$0| |b_$1_$0|) |b_$1_$0|))  :pattern ( (ite$Bool$ |con_$0_$0| |a_$1_$0| |b_$1_$0|)))) :named ax_95))
   (assert (! (forall( (|con_$0_$1| Bool) (|a_$1_$1| Int) (|b_$1_$1| Int))(!(=> (not |con_$0_$1|) (= (ite$Int$ |con_$0_$1| |a_$1_$1| |b_$1_$1|) |b_$1_$1|))  :pattern ( (ite$Int$ |con_$0_$1| |a_$1_$1| |b_$1_$1|)))) :named ax_96))
   (assert (! (forall( (|con_$0_$10| Bool) (|a_$1_$10| Field$Bool$) (|b_$1_$10| Field$Bool$))(!(=> (not |con_$0_$10|) (= (ite$Field$Bool$$ |con_$0_$10| |a_$1_$10| |b_$1_$10|) |b_$1_$10|))  :pattern ( (ite$Field$Bool$$ |con_$0_$10| |a_$1_$10| |b_$1_$10|)))) :named ax_97))
   (assert (! (forall( (|con_$0_$11| Bool) (|a_$1_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|b_$1_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (not |con_$0_$11|) (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$0_$11| |a_$1_$11| |b_$1_$11|) |b_$1_$11|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$0_$11| |a_$1_$11| |b_$1_$11|)))) :named ax_98))
   (assert (! (forall( (|con_$0_$12| Bool) (|a_$1_$12| $@Map@@ref@To@Int@@) (|b_$1_$12| $@Map@@ref@To@Int@@))(!(=> (not |con_$0_$12|) (= (ite$$@Map@@ref@To@Int@@$ |con_$0_$12| |a_$1_$12| |b_$1_$12|) |b_$1_$12|))  :pattern ( (ite$$@Map@@ref@To@Int@@$ |con_$0_$12| |a_$1_$12| |b_$1_$12|)))) :named ax_99))
   (assert (! (forall( (|con_$0_$13| Bool) (|a_$1_$13| Seq$ref$) (|b_$1_$13| Seq$ref$))(!(=> (not |con_$0_$13|) (= (ite$Seq$ref$$ |con_$0_$13| |a_$1_$13| |b_$1_$13|) |b_$1_$13|))  :pattern ( (ite$Seq$ref$$ |con_$0_$13| |a_$1_$13| |b_$1_$13|)))) :named ax_100))
   (assert (! (forall( (|con_$0_$14| Bool) (|a_$1_$14| Seq$Int$) (|b_$1_$14| Seq$Int$))(!(=> (not |con_$0_$14|) (= (ite$Seq$Int$$ |con_$0_$14| |a_$1_$14| |b_$1_$14|) |b_$1_$14|))  :pattern ( (ite$Seq$Int$$ |con_$0_$14| |a_$1_$14| |b_$1_$14|)))) :named ax_101))
   (assert (! (forall( (|con_$0_$15| Bool) (|a_$1_$15| Field$ref$) (|b_$1_$15| Field$ref$))(!(=> (not |con_$0_$15|) (= (ite$Field$ref$$ |con_$0_$15| |a_$1_$15| |b_$1_$15|) |b_$1_$15|))  :pattern ( (ite$Field$ref$$ |con_$0_$15| |a_$1_$15| |b_$1_$15|)))) :named ax_102))
   (assert (! (forall( (|con_$0_$16| Bool) (|a_$1_$16| Field$Seq$Int$$) (|b_$1_$16| Field$Seq$Int$$))(!(=> (not |con_$0_$16|) (= (ite$Field$Seq$Int$$$ |con_$0_$16| |a_$1_$16| |b_$1_$16|) |b_$1_$16|))  :pattern ( (ite$Field$Seq$Int$$$ |con_$0_$16| |a_$1_$16| |b_$1_$16|)))) :named ax_103))
   (assert (! (forall( (|con_$0_$17| Bool) (|a_$1_$17| TypeName) (|b_$1_$17| TypeName))(!(=> (not |con_$0_$17|) (= (ite$TypeName$ |con_$0_$17| |a_$1_$17| |b_$1_$17|) |b_$1_$17|))  :pattern ( (ite$TypeName$ |con_$0_$17| |a_$1_$17| |b_$1_$17|)))) :named ax_104))
   (assert (! (forall( (|con_$0_$18| Bool) (|a_$1_$18| ModuleName) (|b_$1_$18| ModuleName))(!(=> (not |con_$0_$18|) (= (ite$ModuleName$ |con_$0_$18| |a_$1_$18| |b_$1_$18|) |b_$1_$18|))  :pattern ( (ite$ModuleName$ |con_$0_$18| |a_$1_$18| |b_$1_$18|)))) :named ax_105))
   (assert (! (forall( (|con_$0_$2| Bool) (|a_$1_$2| $@Map@@PermissionComponent@To@Int@@) (|b_$1_$2| $@Map@@PermissionComponent@To@Int@@))(!(=> (not |con_$0_$2|) (= (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$0_$2| |a_$1_$2| |b_$1_$2|) |b_$1_$2|))  :pattern ( (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$0_$2| |a_$1_$2| |b_$1_$2|)))) :named ax_106))
   (assert (! (forall( (|con_$0_$3| Bool) (|a_$1_$3| PermissionComponent) (|b_$1_$3| PermissionComponent))(!(=> (not |con_$0_$3|) (= (ite$PermissionComponent$ |con_$0_$3| |a_$1_$3| |b_$1_$3|) |b_$1_$3|))  :pattern ( (ite$PermissionComponent$ |con_$0_$3| |a_$1_$3| |b_$1_$3|)))) :named ax_107))
   (assert (! (forall( (|con_$0_$4| Bool) (|a_$1_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|b_$1_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(=> (not |con_$0_$4|) (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$0_$4| |a_$1_$4| |b_$1_$4|) |b_$1_$4|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$0_$4| |a_$1_$4| |b_$1_$4|)))) :named ax_108))
   (assert (! (forall( (|con_$0_$5| Bool) (|a_$1_$5| ref) (|b_$1_$5| ref))(!(=> (not |con_$0_$5|) (= (ite$ref$ |con_$0_$5| |a_$1_$5| |b_$1_$5|) |b_$1_$5|))  :pattern ( (ite$ref$ |con_$0_$5| |a_$1_$5| |b_$1_$5|)))) :named ax_109))
   (assert (! (forall( (|con_$0_$6| Bool) (|a_$1_$6| Field$Int$) (|b_$1_$6| Field$Int$))(!(=> (not |con_$0_$6|) (= (ite$Field$Int$$ |con_$0_$6| |a_$1_$6| |b_$1_$6|) |b_$1_$6|))  :pattern ( (ite$Field$Int$$ |con_$0_$6| |a_$1_$6| |b_$1_$6|)))) :named ax_110))
   (assert (! (forall( (|con_$0_$7| Bool) (|a_$1_$7| PartialHeapType) (|b_$1_$7| PartialHeapType))(!(=> (not |con_$0_$7|) (= (ite$PartialHeapType$ |con_$0_$7| |a_$1_$7| |b_$1_$7|) |b_$1_$7|))  :pattern ( (ite$PartialHeapType$ |con_$0_$7| |a_$1_$7| |b_$1_$7|)))) :named ax_111))
   (assert (! (forall( (|con_$0_$8| Bool) (|a_$1_$8| Field$Mu$) (|b_$1_$8| Field$Mu$))(!(=> (not |con_$0_$8|) (= (ite$Field$Mu$$ |con_$0_$8| |a_$1_$8| |b_$1_$8|) |b_$1_$8|))  :pattern ( (ite$Field$Mu$$ |con_$0_$8| |a_$1_$8| |b_$1_$8|)))) :named ax_112))
   (assert (! (forall( (|con_$0_$9| Bool) (|a_$1_$9| Mu) (|b_$1_$9| Mu))(!(=> (not |con_$0_$9|) (= (ite$Mu$ |con_$0_$9| |a_$1_$9| |b_$1_$9|) |b_$1_$9|))  :pattern ( (ite$Mu$ |con_$0_$9| |a_$1_$9| |b_$1_$9|)))) :named ax_113))
   (assert (! (forall( (|con_$1| Bool) (|a_$0_$0| Bool) (|b_$0_$0| Bool))(!(=> |con_$1| (= (ite$Bool$ |con_$1| |a_$0_$0| |b_$0_$0|) |a_$0_$0|))  :pattern ( (ite$Bool$ |con_$1| |a_$0_$0| |b_$0_$0|)))) :named ax_114))
   (assert (! (forall( (|con_$10| Bool) (|a_$0_$9| Mu) (|b_$0_$9| Mu))(!(=> |con_$10| (= (ite$Mu$ |con_$10| |a_$0_$9| |b_$0_$9|) |a_$0_$9|))  :pattern ( (ite$Mu$ |con_$10| |a_$0_$9| |b_$0_$9|)))) :named ax_115))
   (assert (! (forall( (|con_$11| Bool) (|a_$0_$10| Field$Bool$) (|b_$0_$10| Field$Bool$))(!(=> |con_$11| (= (ite$Field$Bool$$ |con_$11| |a_$0_$10| |b_$0_$10|) |a_$0_$10|))  :pattern ( (ite$Field$Bool$$ |con_$11| |a_$0_$10| |b_$0_$10|)))) :named ax_116))
   (assert (! (forall( (|con_$12| Bool) (|a_$0_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|b_$0_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> |con_$12| (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$12| |a_$0_$11| |b_$0_$11|) |a_$0_$11|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$12| |a_$0_$11| |b_$0_$11|)))) :named ax_117))
   (assert (! (forall( (|con_$13| Bool) (|a_$0_$12| $@Map@@ref@To@Int@@) (|b_$0_$12| $@Map@@ref@To@Int@@))(!(=> |con_$13| (= (ite$$@Map@@ref@To@Int@@$ |con_$13| |a_$0_$12| |b_$0_$12|) |a_$0_$12|))  :pattern ( (ite$$@Map@@ref@To@Int@@$ |con_$13| |a_$0_$12| |b_$0_$12|)))) :named ax_118))
   (assert (! (forall( (|con_$14| Bool) (|a_$0_$13| Seq$ref$) (|b_$0_$13| Seq$ref$))(!(=> |con_$14| (= (ite$Seq$ref$$ |con_$14| |a_$0_$13| |b_$0_$13|) |a_$0_$13|))  :pattern ( (ite$Seq$ref$$ |con_$14| |a_$0_$13| |b_$0_$13|)))) :named ax_119))
   (assert (! (forall( (|con_$15| Bool) (|a_$0_$14| Seq$Int$) (|b_$0_$14| Seq$Int$))(!(=> |con_$15| (= (ite$Seq$Int$$ |con_$15| |a_$0_$14| |b_$0_$14|) |a_$0_$14|))  :pattern ( (ite$Seq$Int$$ |con_$15| |a_$0_$14| |b_$0_$14|)))) :named ax_120))
   (assert (! (forall( (|con_$16| Bool) (|a_$0_$15| Field$ref$) (|b_$0_$15| Field$ref$))(!(=> |con_$16| (= (ite$Field$ref$$ |con_$16| |a_$0_$15| |b_$0_$15|) |a_$0_$15|))  :pattern ( (ite$Field$ref$$ |con_$16| |a_$0_$15| |b_$0_$15|)))) :named ax_121))
   (assert (! (forall( (|con_$17| Bool) (|a_$0_$16| Field$Seq$Int$$) (|b_$0_$16| Field$Seq$Int$$))(!(=> |con_$17| (= (ite$Field$Seq$Int$$$ |con_$17| |a_$0_$16| |b_$0_$16|) |a_$0_$16|))  :pattern ( (ite$Field$Seq$Int$$$ |con_$17| |a_$0_$16| |b_$0_$16|)))) :named ax_122))
   (assert (! (forall( (|con_$18| Bool) (|a_$0_$17| TypeName) (|b_$0_$17| TypeName))(!(=> |con_$18| (= (ite$TypeName$ |con_$18| |a_$0_$17| |b_$0_$17|) |a_$0_$17|))  :pattern ( (ite$TypeName$ |con_$18| |a_$0_$17| |b_$0_$17|)))) :named ax_123))
   (assert (! (forall( (|con_$19| Bool) (|a_$0_$18| ModuleName) (|b_$0_$18| ModuleName))(!(=> |con_$19| (= (ite$ModuleName$ |con_$19| |a_$0_$18| |b_$0_$18|) |a_$0_$18|))  :pattern ( (ite$ModuleName$ |con_$19| |a_$0_$18| |b_$0_$18|)))) :named ax_124))
   (assert (! (forall( (|con_$2| Bool) (|a_$0_$1| Int) (|b_$0_$1| Int))(!(=> |con_$2| (= (ite$Int$ |con_$2| |a_$0_$1| |b_$0_$1|) |a_$0_$1|))  :pattern ( (ite$Int$ |con_$2| |a_$0_$1| |b_$0_$1|)))) :named ax_125))
   (assert (! (forall( (|con_$3| Bool) (|a_$0_$2| $@Map@@PermissionComponent@To@Int@@) (|b_$0_$2| $@Map@@PermissionComponent@To@Int@@))(!(=> |con_$3| (= (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$3| |a_$0_$2| |b_$0_$2|) |a_$0_$2|))  :pattern ( (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$3| |a_$0_$2| |b_$0_$2|)))) :named ax_126))
   (assert (! (forall( (|con_$4| Bool) (|a_$0_$3| PermissionComponent) (|b_$0_$3| PermissionComponent))(!(=> |con_$4| (= (ite$PermissionComponent$ |con_$4| |a_$0_$3| |b_$0_$3|) |a_$0_$3|))  :pattern ( (ite$PermissionComponent$ |con_$4| |a_$0_$3| |b_$0_$3|)))) :named ax_127))
   (assert (! (forall( (|con_$5| Bool) (|a_$0_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|b_$0_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(=> |con_$5| (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$5| |a_$0_$4| |b_$0_$4|) |a_$0_$4|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$5| |a_$0_$4| |b_$0_$4|)))) :named ax_128))
   (assert (! (forall( (|con_$6| Bool) (|a_$0_$5| ref) (|b_$0_$5| ref))(!(=> |con_$6| (= (ite$ref$ |con_$6| |a_$0_$5| |b_$0_$5|) |a_$0_$5|))  :pattern ( (ite$ref$ |con_$6| |a_$0_$5| |b_$0_$5|)))) :named ax_129))
   (assert (! (forall( (|con_$7| Bool) (|a_$0_$6| Field$Int$) (|b_$0_$6| Field$Int$))(!(=> |con_$7| (= (ite$Field$Int$$ |con_$7| |a_$0_$6| |b_$0_$6|) |a_$0_$6|))  :pattern ( (ite$Field$Int$$ |con_$7| |a_$0_$6| |b_$0_$6|)))) :named ax_130))
   (assert (! (forall( (|con_$8| Bool) (|a_$0_$7| PartialHeapType) (|b_$0_$7| PartialHeapType))(!(=> |con_$8| (= (ite$PartialHeapType$ |con_$8| |a_$0_$7| |b_$0_$7|) |a_$0_$7|))  :pattern ( (ite$PartialHeapType$ |con_$8| |a_$0_$7| |b_$0_$7|)))) :named ax_131))
   (assert (! (forall( (|con_$9| Bool) (|a_$0_$8| Field$Mu$) (|b_$0_$8| Field$Mu$))(!(=> |con_$9| (= (ite$Field$Mu$$ |con_$9| |a_$0_$8| |b_$0_$8|) |a_$0_$8|))  :pattern ( (ite$Field$Mu$$ |con_$9| |a_$0_$8| |b_$0_$8|)))) :named ax_132))
   (assert (! (forall( (|eh| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|h_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|m_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (IsGoodExhaleState |eh| |h_$0| |m_$3| |sm_$0|) (and (forall( (|o_$13| ref) (|f_$2| Field$Int$))(!(=> (PredicateField$Int$ |f_$2|) (<= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$13| |f_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$13| |f_$2|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$13| |f_$2|) (PredicateField$Int$ |f_$2|)))) (and (forall( (|o_$12| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$12| held) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$12| held))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$12| held)) :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$12| held)))) (and (forall( (|o_$11| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$11| forkK) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$11| forkK))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$11| forkK)) :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$11| forkK)))) (and (forall( (|o_$10| ref))(!(=> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$0| |o_$10| rdheld) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$0| |o_$10| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |eh| |o_$10| mu)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$0| |o_$10| rdheld)))) (and (forall( (|o_$9| ref))(!(=> (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$9| held)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$0| |o_$9| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |eh| |o_$9| mu)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$9| held)))) (and (forall( (|o_$8| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$0| |o_$8| rdheld) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |eh| |o_$8| rdheld))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |eh| |o_$8| rdheld)))) (and (forall( (|o_$7| ref))(!(= (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$7| held)) (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$7| held)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$7| held)))) (and (forall( (|o_$6_$4| ref) (|f_$1_$4| Field$Seq$Int$$))(!(=> (CanRead$Seq$Int$$ |m_$3| |sm_$0| |o_$6_$4| |f_$1_$4|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ |h_$0| |o_$6_$4| |f_$1_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ |eh| |o_$6_$4| |f_$1_$4|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ |eh| |o_$6_$4| |f_$1_$4|)))) (and (forall( (|o_$6_$3| ref) (|f_$1_$3| Field$Mu$))(!(=> (CanRead$Mu$ |m_$3| |sm_$0| |o_$6_$3| |f_$1_$3|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$0| |o_$6_$3| |f_$1_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |eh| |o_$6_$3| |f_$1_$3|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |eh| |o_$6_$3| |f_$1_$3|)))) (and (forall( (|o_$6_$2| ref) (|f_$1_$2| Field$ref$))(!(=> (CanRead$ref$ |m_$3| |sm_$0| |o_$6_$2| |f_$1_$2|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |h_$0| |o_$6_$2| |f_$1_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |eh| |o_$6_$2| |f_$1_$2|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |eh| |o_$6_$2| |f_$1_$2|)))) (and (forall( (|o_$6_$1| ref) (|f_$1_$1| Field$Int$))(!(=> (CanRead$Int$ |m_$3| |sm_$0| |o_$6_$1| |f_$1_$1|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$6_$1| |f_$1_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$6_$1| |f_$1_$1|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$6_$1| |f_$1_$1|)))) (forall( (|o_$6_$0| ref) (|f_$1_$0| Field$Bool$))(!(=> (CanRead$Bool$ |m_$3| |sm_$0| |o_$6_$0| |f_$1_$0|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$0| |o_$6_$0| |f_$1_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |eh| |o_$6_$0| |f_$1_$0|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |eh| |o_$6_$0| |f_$1_$0|))))))))))))))))  :pattern ( (IsGoodExhaleState |eh| |h_$0| |m_$3| |sm_$0|)))) :named ax_133))
   (assert (! (forall( (|f_$13_$0| Field$Bool$))(=> (NonPredicateField$Bool$ |f_$13_$0|) (not (PredicateField$Bool$ |f_$13_$0|)))) :named ax_134))
   (assert (! (forall( (|f_$13_$1| Field$Int$))(=> (NonPredicateField$Int$ |f_$13_$1|) (not (PredicateField$Int$ |f_$13_$1|)))) :named ax_135))
   (assert (! (forall( (|f_$13_$2| Field$ref$))(=> (NonPredicateField$ref$ |f_$13_$2|) (not (PredicateField$ref$ |f_$13_$2|)))) :named ax_136))
   (assert (! (forall( (|f_$13_$3| Field$Mu$))(=> (NonPredicateField$Mu$ |f_$13_$3|) (not (PredicateField$Mu$ |f_$13_$3|)))) :named ax_137))
   (assert (! (forall( (|f_$13_$4| Field$Seq$Int$$))(=> (NonPredicateField$Seq$Int$$ |f_$13_$4|) (not (PredicateField$Seq$Int$$ |f_$13_$4|)))) :named ax_138))
   (assert (! (forall( (|f_$14_$0| Field$Bool$))(=> (PredicateField$Bool$ |f_$14_$0|) (not (NonPredicateField$Bool$ |f_$14_$0|)))) :named ax_139))
   (assert (! (forall( (|f_$14_$1| Field$Int$))(=> (PredicateField$Int$ |f_$14_$1|) (not (NonPredicateField$Int$ |f_$14_$1|)))) :named ax_140))
   (assert (! (forall( (|f_$14_$2| Field$ref$))(=> (PredicateField$ref$ |f_$14_$2|) (not (NonPredicateField$ref$ |f_$14_$2|)))) :named ax_141))
   (assert (! (forall( (|f_$14_$3| Field$Mu$))(=> (PredicateField$Mu$ |f_$14_$3|) (not (NonPredicateField$Mu$ |f_$14_$3|)))) :named ax_142))
   (assert (! (forall( (|f_$14_$4| Field$Seq$Int$$))(=> (PredicateField$Seq$Int$$ |f_$14_$4|) (not (NonPredicateField$Seq$Int$$ |f_$14_$4|)))) :named ax_143))
   (assert (! (forall( (|h_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|m_$8| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$15| ref) (|q| ref))(!(=> (and (or (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$1| |q| rdheld) (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$1| |q| held))) (and (and (wf |h_$1| |m_$8| |sm_$2|) (not (= |q| |o_$15|))) (or (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$1| |o_$15| rdheld) (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$1| |o_$15| held))))) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$1| |q| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$1| |o_$15| mu))))  :pattern ( (wf |h_$1| |m_$8| |sm_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$1| |o_$15| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$1| |q| mu)))) :named ax_144))
   (assert (! (forall( (|m_$0| Mu) (|n_$1| Mu) (|o_$0| Mu))(!(=> (and (MuBelow |n_$1| |o_$0|) (MuBelow |m_$0| |n_$1|)) (MuBelow |m_$0| |o_$0|))  :pattern ( (MuBelow |m_$0| |n_$1|) (MuBelow |n_$1| |o_$0|)))) :named ax_145))
   (assert (! (forall( (|m_$1| Mu) (|n_$2| Mu))(=> (MuBelow |m_$1| |n_$2|) (not (= |n_$2| $LockBottom)))) :named ax_146))
   (assert (! (forall( (|m_$11_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$0| ref) (|f_$9_$0| Field$Bool$) (|howMuch_$1_$0| Int) (|q_$2_$0| ref) (|g_$1_$0| Field$Bool$))(!(= (ite$Int$ (and (= |o_$18_$0| |q_$2_$0|) (= |f_$9_$0| |g_$1_$0|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$0| |q_$2_$0| |g_$1_$0|) perm$R) |howMuch_$1_$0|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$0| |q_$2_$0| |g_$1_$0|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Bool$ |m_$11_$0| |o_$18_$0| |f_$9_$0| |howMuch_$1_$0|) |q_$2_$0| |g_$1_$0|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Bool$ |m_$11_$0| |o_$18_$0| |f_$9_$0| |howMuch_$1_$0|) |q_$2_$0| |g_$1_$0|) perm$R)))) :named ax_147))
   (assert (! (forall( (|m_$11_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$1| ref) (|f_$9_$1| Field$Int$) (|howMuch_$1_$1| Int) (|q_$2_$1| ref) (|g_$1_$1| Field$Bool$))(!(= (ite$Int$ (and (= |o_$18_$1| |q_$2_$1|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$1| |q_$2_$1| |g_$1_$1|) perm$R) |howMuch_$1_$1|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$1| |q_$2_$1| |g_$1_$1|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Int$ |m_$11_$1| |o_$18_$1| |f_$9_$1| |howMuch_$1_$1|) |q_$2_$1| |g_$1_$1|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Int$ |m_$11_$1| |o_$18_$1| |f_$9_$1| |howMuch_$1_$1|) |q_$2_$1| |g_$1_$1|) perm$R)))) :named ax_148))
   (assert (! (forall( (|m_$11_$10| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$10| ref) (|f_$9_$10| Field$Bool$) (|howMuch_$1_$10| Int) (|q_$2_$10| ref) (|g_$1_$10| Field$ref$))(!(= (ite$Int$ (and (= |o_$18_$10| |q_$2_$10|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$10| |q_$2_$10| |g_$1_$10|) perm$R) |howMuch_$1_$10|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$10| |q_$2_$10| |g_$1_$10|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Bool$ |m_$11_$10| |o_$18_$10| |f_$9_$10| |howMuch_$1_$10|) |q_$2_$10| |g_$1_$10|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Bool$ |m_$11_$10| |o_$18_$10| |f_$9_$10| |howMuch_$1_$10|) |q_$2_$10| |g_$1_$10|) perm$R)))) :named ax_149))
   (assert (! (forall( (|m_$11_$11| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$11| ref) (|f_$9_$11| Field$Int$) (|howMuch_$1_$11| Int) (|q_$2_$11| ref) (|g_$1_$11| Field$ref$))(!(= (ite$Int$ (and (= |o_$18_$11| |q_$2_$11|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$11| |q_$2_$11| |g_$1_$11|) perm$R) |howMuch_$1_$11|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$11| |q_$2_$11| |g_$1_$11|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Int$ |m_$11_$11| |o_$18_$11| |f_$9_$11| |howMuch_$1_$11|) |q_$2_$11| |g_$1_$11|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Int$ |m_$11_$11| |o_$18_$11| |f_$9_$11| |howMuch_$1_$11|) |q_$2_$11| |g_$1_$11|) perm$R)))) :named ax_150))
   (assert (! (forall( (|m_$11_$12| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$12| ref) (|f_$9_$12| Field$ref$) (|howMuch_$1_$12| Int) (|q_$2_$12| ref) (|g_$1_$12| Field$ref$))(!(= (ite$Int$ (and (= |o_$18_$12| |q_$2_$12|) (= |f_$9_$12| |g_$1_$12|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$12| |q_$2_$12| |g_$1_$12|) perm$R) |howMuch_$1_$12|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$12| |q_$2_$12| |g_$1_$12|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$ref$ |m_$11_$12| |o_$18_$12| |f_$9_$12| |howMuch_$1_$12|) |q_$2_$12| |g_$1_$12|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$ref$ |m_$11_$12| |o_$18_$12| |f_$9_$12| |howMuch_$1_$12|) |q_$2_$12| |g_$1_$12|) perm$R)))) :named ax_151))
   (assert (! (forall( (|m_$11_$13| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$13| ref) (|f_$9_$13| Field$Mu$) (|howMuch_$1_$13| Int) (|q_$2_$13| ref) (|g_$1_$13| Field$ref$))(!(= (ite$Int$ (and (= |o_$18_$13| |q_$2_$13|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$13| |q_$2_$13| |g_$1_$13|) perm$R) |howMuch_$1_$13|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$13| |q_$2_$13| |g_$1_$13|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Mu$ |m_$11_$13| |o_$18_$13| |f_$9_$13| |howMuch_$1_$13|) |q_$2_$13| |g_$1_$13|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Mu$ |m_$11_$13| |o_$18_$13| |f_$9_$13| |howMuch_$1_$13|) |q_$2_$13| |g_$1_$13|) perm$R)))) :named ax_152))
   (assert (! (forall( (|m_$11_$14| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$14| ref) (|f_$9_$14| Field$Seq$Int$$) (|howMuch_$1_$14| Int) (|q_$2_$14| ref) (|g_$1_$14| Field$ref$))(!(= (ite$Int$ (and (= |o_$18_$14| |q_$2_$14|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$14| |q_$2_$14| |g_$1_$14|) perm$R) |howMuch_$1_$14|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$14| |q_$2_$14| |g_$1_$14|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Seq$Int$$ |m_$11_$14| |o_$18_$14| |f_$9_$14| |howMuch_$1_$14|) |q_$2_$14| |g_$1_$14|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Seq$Int$$ |m_$11_$14| |o_$18_$14| |f_$9_$14| |howMuch_$1_$14|) |q_$2_$14| |g_$1_$14|) perm$R)))) :named ax_153))
   (assert (! (forall( (|m_$11_$15| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$15| ref) (|f_$9_$15| Field$Bool$) (|howMuch_$1_$15| Int) (|q_$2_$15| ref) (|g_$1_$15| Field$Mu$))(!(= (ite$Int$ (and (= |o_$18_$15| |q_$2_$15|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$15| |q_$2_$15| |g_$1_$15|) perm$R) |howMuch_$1_$15|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$15| |q_$2_$15| |g_$1_$15|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Bool$ |m_$11_$15| |o_$18_$15| |f_$9_$15| |howMuch_$1_$15|) |q_$2_$15| |g_$1_$15|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Bool$ |m_$11_$15| |o_$18_$15| |f_$9_$15| |howMuch_$1_$15|) |q_$2_$15| |g_$1_$15|) perm$R)))) :named ax_154))
   (assert (! (forall( (|m_$11_$16| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$16| ref) (|f_$9_$16| Field$Int$) (|howMuch_$1_$16| Int) (|q_$2_$16| ref) (|g_$1_$16| Field$Mu$))(!(= (ite$Int$ (and (= |o_$18_$16| |q_$2_$16|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$16| |q_$2_$16| |g_$1_$16|) perm$R) |howMuch_$1_$16|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$16| |q_$2_$16| |g_$1_$16|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Int$ |m_$11_$16| |o_$18_$16| |f_$9_$16| |howMuch_$1_$16|) |q_$2_$16| |g_$1_$16|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Int$ |m_$11_$16| |o_$18_$16| |f_$9_$16| |howMuch_$1_$16|) |q_$2_$16| |g_$1_$16|) perm$R)))) :named ax_155))
   (assert (! (forall( (|m_$11_$17| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$17| ref) (|f_$9_$17| Field$ref$) (|howMuch_$1_$17| Int) (|q_$2_$17| ref) (|g_$1_$17| Field$Mu$))(!(= (ite$Int$ (and (= |o_$18_$17| |q_$2_$17|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$17| |q_$2_$17| |g_$1_$17|) perm$R) |howMuch_$1_$17|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$17| |q_$2_$17| |g_$1_$17|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$ref$ |m_$11_$17| |o_$18_$17| |f_$9_$17| |howMuch_$1_$17|) |q_$2_$17| |g_$1_$17|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$ref$ |m_$11_$17| |o_$18_$17| |f_$9_$17| |howMuch_$1_$17|) |q_$2_$17| |g_$1_$17|) perm$R)))) :named ax_156))
   (assert (! (forall( (|m_$11_$18| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$18| ref) (|f_$9_$18| Field$Mu$) (|howMuch_$1_$18| Int) (|q_$2_$18| ref) (|g_$1_$18| Field$Mu$))(!(= (ite$Int$ (and (= |o_$18_$18| |q_$2_$18|) (= |f_$9_$18| |g_$1_$18|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$18| |q_$2_$18| |g_$1_$18|) perm$R) |howMuch_$1_$18|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$18| |q_$2_$18| |g_$1_$18|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Mu$ |m_$11_$18| |o_$18_$18| |f_$9_$18| |howMuch_$1_$18|) |q_$2_$18| |g_$1_$18|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Mu$ |m_$11_$18| |o_$18_$18| |f_$9_$18| |howMuch_$1_$18|) |q_$2_$18| |g_$1_$18|) perm$R)))) :named ax_157))
   (assert (! (forall( (|m_$11_$19| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$19| ref) (|f_$9_$19| Field$Seq$Int$$) (|howMuch_$1_$19| Int) (|q_$2_$19| ref) (|g_$1_$19| Field$Mu$))(!(= (ite$Int$ (and (= |o_$18_$19| |q_$2_$19|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$19| |q_$2_$19| |g_$1_$19|) perm$R) |howMuch_$1_$19|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$19| |q_$2_$19| |g_$1_$19|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Seq$Int$$ |m_$11_$19| |o_$18_$19| |f_$9_$19| |howMuch_$1_$19|) |q_$2_$19| |g_$1_$19|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Seq$Int$$ |m_$11_$19| |o_$18_$19| |f_$9_$19| |howMuch_$1_$19|) |q_$2_$19| |g_$1_$19|) perm$R)))) :named ax_158))
   (assert (! (forall( (|m_$11_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$2| ref) (|f_$9_$2| Field$ref$) (|howMuch_$1_$2| Int) (|q_$2_$2| ref) (|g_$1_$2| Field$Bool$))(!(= (ite$Int$ (and (= |o_$18_$2| |q_$2_$2|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$2| |q_$2_$2| |g_$1_$2|) perm$R) |howMuch_$1_$2|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$2| |q_$2_$2| |g_$1_$2|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$ref$ |m_$11_$2| |o_$18_$2| |f_$9_$2| |howMuch_$1_$2|) |q_$2_$2| |g_$1_$2|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$ref$ |m_$11_$2| |o_$18_$2| |f_$9_$2| |howMuch_$1_$2|) |q_$2_$2| |g_$1_$2|) perm$R)))) :named ax_159))
   (assert (! (forall( (|m_$11_$20| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$20| ref) (|f_$9_$20| Field$Bool$) (|howMuch_$1_$20| Int) (|q_$2_$20| ref) (|g_$1_$20| Field$Seq$Int$$))(!(= (ite$Int$ (and (= |o_$18_$20| |q_$2_$20|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$20| |q_$2_$20| |g_$1_$20|) perm$R) |howMuch_$1_$20|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$20| |q_$2_$20| |g_$1_$20|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Bool$ |m_$11_$20| |o_$18_$20| |f_$9_$20| |howMuch_$1_$20|) |q_$2_$20| |g_$1_$20|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Bool$ |m_$11_$20| |o_$18_$20| |f_$9_$20| |howMuch_$1_$20|) |q_$2_$20| |g_$1_$20|) perm$R)))) :named ax_160))
   (assert (! (forall( (|m_$11_$21| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$21| ref) (|f_$9_$21| Field$Int$) (|howMuch_$1_$21| Int) (|q_$2_$21| ref) (|g_$1_$21| Field$Seq$Int$$))(!(= (ite$Int$ (and (= |o_$18_$21| |q_$2_$21|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$21| |q_$2_$21| |g_$1_$21|) perm$R) |howMuch_$1_$21|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$21| |q_$2_$21| |g_$1_$21|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Int$ |m_$11_$21| |o_$18_$21| |f_$9_$21| |howMuch_$1_$21|) |q_$2_$21| |g_$1_$21|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Int$ |m_$11_$21| |o_$18_$21| |f_$9_$21| |howMuch_$1_$21|) |q_$2_$21| |g_$1_$21|) perm$R)))) :named ax_161))
   (assert (! (forall( (|m_$11_$22| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$22| ref) (|f_$9_$22| Field$ref$) (|howMuch_$1_$22| Int) (|q_$2_$22| ref) (|g_$1_$22| Field$Seq$Int$$))(!(= (ite$Int$ (and (= |o_$18_$22| |q_$2_$22|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$22| |q_$2_$22| |g_$1_$22|) perm$R) |howMuch_$1_$22|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$22| |q_$2_$22| |g_$1_$22|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$ref$ |m_$11_$22| |o_$18_$22| |f_$9_$22| |howMuch_$1_$22|) |q_$2_$22| |g_$1_$22|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$ref$ |m_$11_$22| |o_$18_$22| |f_$9_$22| |howMuch_$1_$22|) |q_$2_$22| |g_$1_$22|) perm$R)))) :named ax_162))
   (assert (! (forall( (|m_$11_$23| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$23| ref) (|f_$9_$23| Field$Mu$) (|howMuch_$1_$23| Int) (|q_$2_$23| ref) (|g_$1_$23| Field$Seq$Int$$))(!(= (ite$Int$ (and (= |o_$18_$23| |q_$2_$23|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$23| |q_$2_$23| |g_$1_$23|) perm$R) |howMuch_$1_$23|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$23| |q_$2_$23| |g_$1_$23|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Mu$ |m_$11_$23| |o_$18_$23| |f_$9_$23| |howMuch_$1_$23|) |q_$2_$23| |g_$1_$23|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Mu$ |m_$11_$23| |o_$18_$23| |f_$9_$23| |howMuch_$1_$23|) |q_$2_$23| |g_$1_$23|) perm$R)))) :named ax_163))
   (assert (! (forall( (|m_$11_$24| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$24| ref) (|f_$9_$24| Field$Seq$Int$$) (|howMuch_$1_$24| Int) (|q_$2_$24| ref) (|g_$1_$24| Field$Seq$Int$$))(!(= (ite$Int$ (and (= |o_$18_$24| |q_$2_$24|) (= |f_$9_$24| |g_$1_$24|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$24| |q_$2_$24| |g_$1_$24|) perm$R) |howMuch_$1_$24|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$24| |q_$2_$24| |g_$1_$24|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Seq$Int$$ |m_$11_$24| |o_$18_$24| |f_$9_$24| |howMuch_$1_$24|) |q_$2_$24| |g_$1_$24|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Seq$Int$$ |m_$11_$24| |o_$18_$24| |f_$9_$24| |howMuch_$1_$24|) |q_$2_$24| |g_$1_$24|) perm$R)))) :named ax_164))
   (assert (! (forall( (|m_$11_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$3| ref) (|f_$9_$3| Field$Mu$) (|howMuch_$1_$3| Int) (|q_$2_$3| ref) (|g_$1_$3| Field$Bool$))(!(= (ite$Int$ (and (= |o_$18_$3| |q_$2_$3|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$3| |q_$2_$3| |g_$1_$3|) perm$R) |howMuch_$1_$3|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$3| |q_$2_$3| |g_$1_$3|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Mu$ |m_$11_$3| |o_$18_$3| |f_$9_$3| |howMuch_$1_$3|) |q_$2_$3| |g_$1_$3|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Mu$ |m_$11_$3| |o_$18_$3| |f_$9_$3| |howMuch_$1_$3|) |q_$2_$3| |g_$1_$3|) perm$R)))) :named ax_165))
   (assert (! (forall( (|m_$11_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$4| ref) (|f_$9_$4| Field$Seq$Int$$) (|howMuch_$1_$4| Int) (|q_$2_$4| ref) (|g_$1_$4| Field$Bool$))(!(= (ite$Int$ (and (= |o_$18_$4| |q_$2_$4|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$4| |q_$2_$4| |g_$1_$4|) perm$R) |howMuch_$1_$4|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$4| |q_$2_$4| |g_$1_$4|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Seq$Int$$ |m_$11_$4| |o_$18_$4| |f_$9_$4| |howMuch_$1_$4|) |q_$2_$4| |g_$1_$4|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Seq$Int$$ |m_$11_$4| |o_$18_$4| |f_$9_$4| |howMuch_$1_$4|) |q_$2_$4| |g_$1_$4|) perm$R)))) :named ax_166))
   (assert (! (forall( (|m_$11_$5| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$5| ref) (|f_$9_$5| Field$Bool$) (|howMuch_$1_$5| Int) (|q_$2_$5| ref) (|g_$1_$5| Field$Int$))(!(= (ite$Int$ (and (= |o_$18_$5| |q_$2_$5|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$5| |q_$2_$5| |g_$1_$5|) perm$R) |howMuch_$1_$5|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$5| |q_$2_$5| |g_$1_$5|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Bool$ |m_$11_$5| |o_$18_$5| |f_$9_$5| |howMuch_$1_$5|) |q_$2_$5| |g_$1_$5|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Bool$ |m_$11_$5| |o_$18_$5| |f_$9_$5| |howMuch_$1_$5|) |q_$2_$5| |g_$1_$5|) perm$R)))) :named ax_167))
   (assert (! (forall( (|m_$11_$6| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$6| ref) (|f_$9_$6| Field$Int$) (|howMuch_$1_$6| Int) (|q_$2_$6| ref) (|g_$1_$6| Field$Int$))(!(= (ite$Int$ (and (= |o_$18_$6| |q_$2_$6|) (= |f_$9_$6| |g_$1_$6|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$6| |q_$2_$6| |g_$1_$6|) perm$R) |howMuch_$1_$6|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$6| |q_$2_$6| |g_$1_$6|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Int$ |m_$11_$6| |o_$18_$6| |f_$9_$6| |howMuch_$1_$6|) |q_$2_$6| |g_$1_$6|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Int$ |m_$11_$6| |o_$18_$6| |f_$9_$6| |howMuch_$1_$6|) |q_$2_$6| |g_$1_$6|) perm$R)))) :named ax_168))
   (assert (! (forall( (|m_$11_$7| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$7| ref) (|f_$9_$7| Field$ref$) (|howMuch_$1_$7| Int) (|q_$2_$7| ref) (|g_$1_$7| Field$Int$))(!(= (ite$Int$ (and (= |o_$18_$7| |q_$2_$7|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$7| |q_$2_$7| |g_$1_$7|) perm$R) |howMuch_$1_$7|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$7| |q_$2_$7| |g_$1_$7|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$ref$ |m_$11_$7| |o_$18_$7| |f_$9_$7| |howMuch_$1_$7|) |q_$2_$7| |g_$1_$7|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$ref$ |m_$11_$7| |o_$18_$7| |f_$9_$7| |howMuch_$1_$7|) |q_$2_$7| |g_$1_$7|) perm$R)))) :named ax_169))
   (assert (! (forall( (|m_$11_$8| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$8| ref) (|f_$9_$8| Field$Mu$) (|howMuch_$1_$8| Int) (|q_$2_$8| ref) (|g_$1_$8| Field$Int$))(!(= (ite$Int$ (and (= |o_$18_$8| |q_$2_$8|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$8| |q_$2_$8| |g_$1_$8|) perm$R) |howMuch_$1_$8|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$8| |q_$2_$8| |g_$1_$8|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Mu$ |m_$11_$8| |o_$18_$8| |f_$9_$8| |howMuch_$1_$8|) |q_$2_$8| |g_$1_$8|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Mu$ |m_$11_$8| |o_$18_$8| |f_$9_$8| |howMuch_$1_$8|) |q_$2_$8| |g_$1_$8|) perm$R)))) :named ax_170))
   (assert (! (forall( (|m_$11_$9| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$9| ref) (|f_$9_$9| Field$Seq$Int$$) (|howMuch_$1_$9| Int) (|q_$2_$9| ref) (|g_$1_$9| Field$Int$))(!(= (ite$Int$ (and (= |o_$18_$9| |q_$2_$9|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$9| |q_$2_$9| |g_$1_$9|) perm$R) |howMuch_$1_$9|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$9| |q_$2_$9| |g_$1_$9|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Seq$Int$$ |m_$11_$9| |o_$18_$9| |f_$9_$9| |howMuch_$1_$9|) |q_$2_$9| |g_$1_$9|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Seq$Int$$ |m_$11_$9| |o_$18_$9| |f_$9_$9| |howMuch_$1_$9|) |q_$2_$9| |g_$1_$9|) perm$R)))) :named ax_171))
   (assert (! (forall( (|m_$4_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$2| ref) (|f_$3_$0| Field$Bool$))(!(= (CanRead$Bool$ |m_$4_$0| |sm_$1_$0| |obj_$2| |f_$3_$0|) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |sm_$1_$0| |obj_$2| |f_$3_$0|) perm$N)) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |sm_$1_$0| |obj_$2| |f_$3_$0|) perm$R)) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$4_$0| |obj_$2| |f_$3_$0|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$4_$0| |obj_$2| |f_$3_$0|) perm$N))))))  :pattern ( (CanRead$Bool$ |m_$4_$0| |sm_$1_$0| |obj_$2| |f_$3_$0|)))) :named ax_172))
   (assert (! (forall( (|m_$4_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$3| ref) (|f_$3_$1| Field$Int$))(!(= (CanRead$Int$ |m_$4_$1| |sm_$1_$1| |obj_$3| |f_$3_$1|) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |sm_$1_$1| |obj_$3| |f_$3_$1|) perm$N)) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |sm_$1_$1| |obj_$3| |f_$3_$1|) perm$R)) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$4_$1| |obj_$3| |f_$3_$1|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$4_$1| |obj_$3| |f_$3_$1|) perm$N))))))  :pattern ( (CanRead$Int$ |m_$4_$1| |sm_$1_$1| |obj_$3| |f_$3_$1|)))) :named ax_173))
   (assert (! (forall( (|m_$4_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$4| ref) (|f_$3_$2| Field$ref$))(!(= (CanRead$ref$ |m_$4_$2| |sm_$1_$2| |obj_$4| |f_$3_$2|) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |sm_$1_$2| |obj_$4| |f_$3_$2|) perm$N)) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |sm_$1_$2| |obj_$4| |f_$3_$2|) perm$R)) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$4_$2| |obj_$4| |f_$3_$2|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$4_$2| |obj_$4| |f_$3_$2|) perm$N))))))  :pattern ( (CanRead$ref$ |m_$4_$2| |sm_$1_$2| |obj_$4| |f_$3_$2|)))) :named ax_174))
   (assert (! (forall( (|m_$4_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$5| ref) (|f_$3_$3| Field$Mu$))(!(= (CanRead$Mu$ |m_$4_$3| |sm_$1_$3| |obj_$5| |f_$3_$3|) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |sm_$1_$3| |obj_$5| |f_$3_$3|) perm$N)) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |sm_$1_$3| |obj_$5| |f_$3_$3|) perm$R)) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$4_$3| |obj_$5| |f_$3_$3|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$4_$3| |obj_$5| |f_$3_$3|) perm$N))))))  :pattern ( (CanRead$Mu$ |m_$4_$3| |sm_$1_$3| |obj_$5| |f_$3_$3|)))) :named ax_175))
   (assert (! (forall( (|m_$4_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$6| ref) (|f_$3_$4| Field$Seq$Int$$))(!(= (CanRead$Seq$Int$$ |m_$4_$4| |sm_$1_$4| |obj_$6| |f_$3_$4|) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |sm_$1_$4| |obj_$6| |f_$3_$4|) perm$N)) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |sm_$1_$4| |obj_$6| |f_$3_$4|) perm$R)) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$4_$4| |obj_$6| |f_$3_$4|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$4_$4| |obj_$6| |f_$3_$4|) perm$N))))))  :pattern ( (CanRead$Seq$Int$$ |m_$4_$4| |sm_$1_$4| |obj_$6| |f_$3_$4|)))) :named ax_176))
   (assert (! (forall( (|m_$6_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$1_$0| ref) (|f_$5_$0| Field$Bool$))(!(= (CanWrite$Bool$ |m_$6_$0| |obj_$1_$0| |f_$5_$0|) (and (= Permission$FullFraction (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$6_$0| |obj_$1_$0| |f_$5_$0|) perm$R)) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$6_$0| |obj_$1_$0| |f_$5_$0|) perm$N) 0)))  :pattern ( (CanWrite$Bool$ |m_$6_$0| |obj_$1_$0| |f_$5_$0|)))) :named ax_177))
   (assert (! (forall( (|m_$6_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$1_$1| ref) (|f_$5_$1| Field$Int$))(!(= (CanWrite$Int$ |m_$6_$1| |obj_$1_$1| |f_$5_$1|) (and (= Permission$FullFraction (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$6_$1| |obj_$1_$1| |f_$5_$1|) perm$R)) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$6_$1| |obj_$1_$1| |f_$5_$1|) perm$N) 0)))  :pattern ( (CanWrite$Int$ |m_$6_$1| |obj_$1_$1| |f_$5_$1|)))) :named ax_178))
   (assert (! (forall( (|m_$6_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$1_$2| ref) (|f_$5_$2| Field$ref$))(!(= (CanWrite$ref$ |m_$6_$2| |obj_$1_$2| |f_$5_$2|) (and (= Permission$FullFraction (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$6_$2| |obj_$1_$2| |f_$5_$2|) perm$R)) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$6_$2| |obj_$1_$2| |f_$5_$2|) perm$N) 0)))  :pattern ( (CanWrite$ref$ |m_$6_$2| |obj_$1_$2| |f_$5_$2|)))) :named ax_179))
   (assert (! (forall( (|m_$6_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$1_$3| ref) (|f_$5_$3| Field$Mu$))(!(= (CanWrite$Mu$ |m_$6_$3| |obj_$1_$3| |f_$5_$3|) (and (= Permission$FullFraction (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$6_$3| |obj_$1_$3| |f_$5_$3|) perm$R)) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$6_$3| |obj_$1_$3| |f_$5_$3|) perm$N) 0)))  :pattern ( (CanWrite$Mu$ |m_$6_$3| |obj_$1_$3| |f_$5_$3|)))) :named ax_180))
   (assert (! (forall( (|m_$6_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$1_$4| ref) (|f_$5_$4| Field$Seq$Int$$))(!(= (CanWrite$Seq$Int$$ |m_$6_$4| |obj_$1_$4| |f_$5_$4|) (and (= Permission$FullFraction (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$6_$4| |obj_$1_$4| |f_$5_$4|) perm$R)) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$6_$4| |obj_$1_$4| |f_$5_$4|) perm$N) 0)))  :pattern ( (CanWrite$Seq$Int$$ |m_$6_$4| |obj_$1_$4| |f_$5_$4|)))) :named ax_181))
   (assert (! (forall( (|m_$7| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (IsGoodMask |m_$7|) (and (forall( (|o_$14_$4| ref) (|f_$6_$4| Field$Seq$Int$$))(and (and (=> (NonPredicateField$Seq$Int$$ |f_$6_$4|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7| |o_$14_$4| |f_$6_$4|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7| |o_$14_$4| |f_$6_$4|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7| |o_$14_$4| |f_$6_$4|) perm$R) Permission$FullFraction)))) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7| |o_$14_$4| |f_$6_$4|) perm$R))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7| |o_$14_$4| |f_$6_$4|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7| |o_$14_$4| |f_$6_$4|) perm$R))))) (and (forall( (|o_$14_$3| ref) (|f_$6_$3| Field$Mu$))(and (and (=> (NonPredicateField$Mu$ |f_$6_$3|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$R) Permission$FullFraction)))) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$R))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$R))))) (and (forall( (|o_$14_$2| ref) (|f_$6_$2| Field$ref$))(and (and (=> (NonPredicateField$ref$ |f_$6_$2|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$R) Permission$FullFraction)))) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$R))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$R))))) (and (forall( (|o_$14_$1| ref) (|f_$6_$1| Field$Int$))(and (and (=> (NonPredicateField$Int$ |f_$6_$1|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$R) Permission$FullFraction)))) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$R))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$R))))) (forall( (|o_$14_$0| ref) (|f_$6_$0| Field$Bool$))(and (and (=> (NonPredicateField$Bool$ |f_$6_$0|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$R) Permission$FullFraction)))) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$R))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$R))))))))))  :pattern ( (IsGoodMask |m_$7|)))) :named ax_182))
   (assert (! (forall( (|m_$9_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$0| ref) (|f_$7_$0| Field$Bool$) (|howMuch_$3| Int) (|q_$0_$0| ref) (|g_$4| Field$Bool$))(!(= (ite$Int$ (and (= |o_$16_$0| |q_$0_$0|) (= |f_$7_$0| |g_$4|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$0| |q_$0_$0| |g_$4|) perm$R) |howMuch_$3|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$0| |q_$0_$0| |g_$4|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Bool$ |m_$9_$0| |o_$16_$0| |f_$7_$0| |howMuch_$3|) |q_$0_$0| |g_$4|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Bool$ |m_$9_$0| |o_$16_$0| |f_$7_$0| |howMuch_$3|) |q_$0_$0| |g_$4|) perm$R)))) :named ax_183))
   (assert (! (forall( (|m_$9_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$1| ref) (|f_$7_$1| Field$Int$) (|howMuch_$4| Int) (|q_$0_$1| ref) (|g_$5| Field$Bool$))(!(= (ite$Int$ (and (= |o_$16_$1| |q_$0_$1|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$1| |q_$0_$1| |g_$5|) perm$R) |howMuch_$4|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$1| |q_$0_$1| |g_$5|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Int$ |m_$9_$1| |o_$16_$1| |f_$7_$1| |howMuch_$4|) |q_$0_$1| |g_$5|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Int$ |m_$9_$1| |o_$16_$1| |f_$7_$1| |howMuch_$4|) |q_$0_$1| |g_$5|) perm$R)))) :named ax_184))
   (assert (! (forall( (|m_$9_$10| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$10| ref) (|f_$7_$10| Field$Bool$) (|howMuch_$13| Int) (|q_$0_$10| ref) (|g_$14| Field$ref$))(!(= (ite$Int$ (and (= |o_$16_$10| |q_$0_$10|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$10| |q_$0_$10| |g_$14|) perm$R) |howMuch_$13|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$10| |q_$0_$10| |g_$14|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Bool$ |m_$9_$10| |o_$16_$10| |f_$7_$10| |howMuch_$13|) |q_$0_$10| |g_$14|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Bool$ |m_$9_$10| |o_$16_$10| |f_$7_$10| |howMuch_$13|) |q_$0_$10| |g_$14|) perm$R)))) :named ax_185))
   (assert (! (forall( (|m_$9_$11| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$11| ref) (|f_$7_$11| Field$Int$) (|howMuch_$14| Int) (|q_$0_$11| ref) (|g_$15| Field$ref$))(!(= (ite$Int$ (and (= |o_$16_$11| |q_$0_$11|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$11| |q_$0_$11| |g_$15|) perm$R) |howMuch_$14|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$11| |q_$0_$11| |g_$15|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Int$ |m_$9_$11| |o_$16_$11| |f_$7_$11| |howMuch_$14|) |q_$0_$11| |g_$15|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Int$ |m_$9_$11| |o_$16_$11| |f_$7_$11| |howMuch_$14|) |q_$0_$11| |g_$15|) perm$R)))) :named ax_186))
   (assert (! (forall( (|m_$9_$12| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$12| ref) (|f_$7_$12| Field$ref$) (|howMuch_$15| Int) (|q_$0_$12| ref) (|g_$16| Field$ref$))(!(= (ite$Int$ (and (= |o_$16_$12| |q_$0_$12|) (= |f_$7_$12| |g_$16|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$12| |q_$0_$12| |g_$16|) perm$R) |howMuch_$15|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$12| |q_$0_$12| |g_$16|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$ref$ |m_$9_$12| |o_$16_$12| |f_$7_$12| |howMuch_$15|) |q_$0_$12| |g_$16|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$ref$ |m_$9_$12| |o_$16_$12| |f_$7_$12| |howMuch_$15|) |q_$0_$12| |g_$16|) perm$R)))) :named ax_187))
   (assert (! (forall( (|m_$9_$13| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$13| ref) (|f_$7_$13| Field$Mu$) (|howMuch_$16| Int) (|q_$0_$13| ref) (|g_$17| Field$ref$))(!(= (ite$Int$ (and (= |o_$16_$13| |q_$0_$13|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$13| |q_$0_$13| |g_$17|) perm$R) |howMuch_$16|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$13| |q_$0_$13| |g_$17|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Mu$ |m_$9_$13| |o_$16_$13| |f_$7_$13| |howMuch_$16|) |q_$0_$13| |g_$17|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Mu$ |m_$9_$13| |o_$16_$13| |f_$7_$13| |howMuch_$16|) |q_$0_$13| |g_$17|) perm$R)))) :named ax_188))
   (assert (! (forall( (|m_$9_$14| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$14| ref) (|f_$7_$14| Field$Seq$Int$$) (|howMuch_$17| Int) (|q_$0_$14| ref) (|g_$18| Field$ref$))(!(= (ite$Int$ (and (= |o_$16_$14| |q_$0_$14|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$14| |q_$0_$14| |g_$18|) perm$R) |howMuch_$17|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$14| |q_$0_$14| |g_$18|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Seq$Int$$ |m_$9_$14| |o_$16_$14| |f_$7_$14| |howMuch_$17|) |q_$0_$14| |g_$18|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Seq$Int$$ |m_$9_$14| |o_$16_$14| |f_$7_$14| |howMuch_$17|) |q_$0_$14| |g_$18|) perm$R)))) :named ax_189))
   (assert (! (forall( (|m_$9_$15| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$15| ref) (|f_$7_$15| Field$Bool$) (|howMuch_$18| Int) (|q_$0_$15| ref) (|g_$19| Field$Mu$))(!(= (ite$Int$ (and (= |o_$16_$15| |q_$0_$15|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$15| |q_$0_$15| |g_$19|) perm$R) |howMuch_$18|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$15| |q_$0_$15| |g_$19|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Bool$ |m_$9_$15| |o_$16_$15| |f_$7_$15| |howMuch_$18|) |q_$0_$15| |g_$19|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Bool$ |m_$9_$15| |o_$16_$15| |f_$7_$15| |howMuch_$18|) |q_$0_$15| |g_$19|) perm$R)))) :named ax_190))
   (assert (! (forall( (|m_$9_$16| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$16| ref) (|f_$7_$16| Field$Int$) (|howMuch_$19| Int) (|q_$0_$16| ref) (|g_$20| Field$Mu$))(!(= (ite$Int$ (and (= |o_$16_$16| |q_$0_$16|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$16| |q_$0_$16| |g_$20|) perm$R) |howMuch_$19|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$16| |q_$0_$16| |g_$20|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Int$ |m_$9_$16| |o_$16_$16| |f_$7_$16| |howMuch_$19|) |q_$0_$16| |g_$20|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Int$ |m_$9_$16| |o_$16_$16| |f_$7_$16| |howMuch_$19|) |q_$0_$16| |g_$20|) perm$R)))) :named ax_191))
   (assert (! (forall( (|m_$9_$17| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$17| ref) (|f_$7_$17| Field$ref$) (|howMuch_$20| Int) (|q_$0_$17| ref) (|g_$21| Field$Mu$))(!(= (ite$Int$ (and (= |o_$16_$17| |q_$0_$17|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$17| |q_$0_$17| |g_$21|) perm$R) |howMuch_$20|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$17| |q_$0_$17| |g_$21|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$ref$ |m_$9_$17| |o_$16_$17| |f_$7_$17| |howMuch_$20|) |q_$0_$17| |g_$21|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$ref$ |m_$9_$17| |o_$16_$17| |f_$7_$17| |howMuch_$20|) |q_$0_$17| |g_$21|) perm$R)))) :named ax_192))
   (assert (! (forall( (|m_$9_$18| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$18| ref) (|f_$7_$18| Field$Mu$) (|howMuch_$21| Int) (|q_$0_$18| ref) (|g_$22| Field$Mu$))(!(= (ite$Int$ (and (= |o_$16_$18| |q_$0_$18|) (= |f_$7_$18| |g_$22|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$18| |q_$0_$18| |g_$22|) perm$R) |howMuch_$21|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$18| |q_$0_$18| |g_$22|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Mu$ |m_$9_$18| |o_$16_$18| |f_$7_$18| |howMuch_$21|) |q_$0_$18| |g_$22|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Mu$ |m_$9_$18| |o_$16_$18| |f_$7_$18| |howMuch_$21|) |q_$0_$18| |g_$22|) perm$R)))) :named ax_193))
   (assert (! (forall( (|m_$9_$19| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$19| ref) (|f_$7_$19| Field$Seq$Int$$) (|howMuch_$22| Int) (|q_$0_$19| ref) (|g_$23| Field$Mu$))(!(= (ite$Int$ (and (= |o_$16_$19| |q_$0_$19|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$19| |q_$0_$19| |g_$23|) perm$R) |howMuch_$22|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$19| |q_$0_$19| |g_$23|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Seq$Int$$ |m_$9_$19| |o_$16_$19| |f_$7_$19| |howMuch_$22|) |q_$0_$19| |g_$23|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Seq$Int$$ |m_$9_$19| |o_$16_$19| |f_$7_$19| |howMuch_$22|) |q_$0_$19| |g_$23|) perm$R)))) :named ax_194))
   (assert (! (forall( (|m_$9_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$2| ref) (|f_$7_$2| Field$ref$) (|howMuch_$5| Int) (|q_$0_$2| ref) (|g_$6| Field$Bool$))(!(= (ite$Int$ (and (= |o_$16_$2| |q_$0_$2|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$2| |q_$0_$2| |g_$6|) perm$R) |howMuch_$5|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$2| |q_$0_$2| |g_$6|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$ref$ |m_$9_$2| |o_$16_$2| |f_$7_$2| |howMuch_$5|) |q_$0_$2| |g_$6|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$ref$ |m_$9_$2| |o_$16_$2| |f_$7_$2| |howMuch_$5|) |q_$0_$2| |g_$6|) perm$R)))) :named ax_195))
   (assert (! (forall( (|m_$9_$20| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$20| ref) (|f_$7_$20| Field$Bool$) (|howMuch_$23| Int) (|q_$0_$20| ref) (|g_$24| Field$Seq$Int$$))(!(= (ite$Int$ (and (= |o_$16_$20| |q_$0_$20|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$20| |q_$0_$20| |g_$24|) perm$R) |howMuch_$23|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$20| |q_$0_$20| |g_$24|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Bool$ |m_$9_$20| |o_$16_$20| |f_$7_$20| |howMuch_$23|) |q_$0_$20| |g_$24|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Bool$ |m_$9_$20| |o_$16_$20| |f_$7_$20| |howMuch_$23|) |q_$0_$20| |g_$24|) perm$R)))) :named ax_196))
   (assert (! (forall( (|m_$9_$21| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$21| ref) (|f_$7_$21| Field$Int$) (|howMuch_$24| Int) (|q_$0_$21| ref) (|g_$25| Field$Seq$Int$$))(!(= (ite$Int$ (and (= |o_$16_$21| |q_$0_$21|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$21| |q_$0_$21| |g_$25|) perm$R) |howMuch_$24|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$21| |q_$0_$21| |g_$25|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Int$ |m_$9_$21| |o_$16_$21| |f_$7_$21| |howMuch_$24|) |q_$0_$21| |g_$25|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Int$ |m_$9_$21| |o_$16_$21| |f_$7_$21| |howMuch_$24|) |q_$0_$21| |g_$25|) perm$R)))) :named ax_197))
   (assert (! (forall( (|m_$9_$22| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$22| ref) (|f_$7_$22| Field$ref$) (|howMuch_$25| Int) (|q_$0_$22| ref) (|g_$26| Field$Seq$Int$$))(!(= (ite$Int$ (and (= |o_$16_$22| |q_$0_$22|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$22| |q_$0_$22| |g_$26|) perm$R) |howMuch_$25|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$22| |q_$0_$22| |g_$26|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$ref$ |m_$9_$22| |o_$16_$22| |f_$7_$22| |howMuch_$25|) |q_$0_$22| |g_$26|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$ref$ |m_$9_$22| |o_$16_$22| |f_$7_$22| |howMuch_$25|) |q_$0_$22| |g_$26|) perm$R)))) :named ax_198))
   (assert (! (forall( (|m_$9_$23| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$23| ref) (|f_$7_$23| Field$Mu$) (|howMuch_$26| Int) (|q_$0_$23| ref) (|g_$27| Field$Seq$Int$$))(!(= (ite$Int$ (and (= |o_$16_$23| |q_$0_$23|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$23| |q_$0_$23| |g_$27|) perm$R) |howMuch_$26|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$23| |q_$0_$23| |g_$27|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Mu$ |m_$9_$23| |o_$16_$23| |f_$7_$23| |howMuch_$26|) |q_$0_$23| |g_$27|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Mu$ |m_$9_$23| |o_$16_$23| |f_$7_$23| |howMuch_$26|) |q_$0_$23| |g_$27|) perm$R)))) :named ax_199))
   (assert (! (forall( (|m_$9_$24| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$24| ref) (|f_$7_$24| Field$Seq$Int$$) (|howMuch_$27| Int) (|q_$0_$24| ref) (|g_$28| Field$Seq$Int$$))(!(= (ite$Int$ (and (= |o_$16_$24| |q_$0_$24|) (= |f_$7_$24| |g_$28|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$24| |q_$0_$24| |g_$28|) perm$R) |howMuch_$27|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$24| |q_$0_$24| |g_$28|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Seq$Int$$ |m_$9_$24| |o_$16_$24| |f_$7_$24| |howMuch_$27|) |q_$0_$24| |g_$28|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Seq$Int$$ |m_$9_$24| |o_$16_$24| |f_$7_$24| |howMuch_$27|) |q_$0_$24| |g_$28|) perm$R)))) :named ax_200))
   (assert (! (forall( (|m_$9_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$3| ref) (|f_$7_$3| Field$Mu$) (|howMuch_$6| Int) (|q_$0_$3| ref) (|g_$7| Field$Bool$))(!(= (ite$Int$ (and (= |o_$16_$3| |q_$0_$3|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$3| |q_$0_$3| |g_$7|) perm$R) |howMuch_$6|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$3| |q_$0_$3| |g_$7|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Mu$ |m_$9_$3| |o_$16_$3| |f_$7_$3| |howMuch_$6|) |q_$0_$3| |g_$7|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Mu$ |m_$9_$3| |o_$16_$3| |f_$7_$3| |howMuch_$6|) |q_$0_$3| |g_$7|) perm$R)))) :named ax_201))
   (assert (! (forall( (|m_$9_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$4| ref) (|f_$7_$4| Field$Seq$Int$$) (|howMuch_$7| Int) (|q_$0_$4| ref) (|g_$8| Field$Bool$))(!(= (ite$Int$ (and (= |o_$16_$4| |q_$0_$4|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$4| |q_$0_$4| |g_$8|) perm$R) |howMuch_$7|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$4| |q_$0_$4| |g_$8|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Seq$Int$$ |m_$9_$4| |o_$16_$4| |f_$7_$4| |howMuch_$7|) |q_$0_$4| |g_$8|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Seq$Int$$ |m_$9_$4| |o_$16_$4| |f_$7_$4| |howMuch_$7|) |q_$0_$4| |g_$8|) perm$R)))) :named ax_202))
   (assert (! (forall( (|m_$9_$5| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$5| ref) (|f_$7_$5| Field$Bool$) (|howMuch_$8| Int) (|q_$0_$5| ref) (|g_$9| Field$Int$))(!(= (ite$Int$ (and (= |o_$16_$5| |q_$0_$5|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$5| |q_$0_$5| |g_$9|) perm$R) |howMuch_$8|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$5| |q_$0_$5| |g_$9|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Bool$ |m_$9_$5| |o_$16_$5| |f_$7_$5| |howMuch_$8|) |q_$0_$5| |g_$9|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Bool$ |m_$9_$5| |o_$16_$5| |f_$7_$5| |howMuch_$8|) |q_$0_$5| |g_$9|) perm$R)))) :named ax_203))
   (assert (! (forall( (|m_$9_$6| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$6| ref) (|f_$7_$6| Field$Int$) (|howMuch_$9| Int) (|q_$0_$6| ref) (|g_$10| Field$Int$))(!(= (ite$Int$ (and (= |o_$16_$6| |q_$0_$6|) (= |f_$7_$6| |g_$10|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$6| |q_$0_$6| |g_$10|) perm$R) |howMuch_$9|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$6| |q_$0_$6| |g_$10|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Int$ |m_$9_$6| |o_$16_$6| |f_$7_$6| |howMuch_$9|) |q_$0_$6| |g_$10|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Int$ |m_$9_$6| |o_$16_$6| |f_$7_$6| |howMuch_$9|) |q_$0_$6| |g_$10|) perm$R)))) :named ax_204))
   (assert (! (forall( (|m_$9_$7| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$7| ref) (|f_$7_$7| Field$ref$) (|howMuch_$10| Int) (|q_$0_$7| ref) (|g_$11| Field$Int$))(!(= (ite$Int$ (and (= |o_$16_$7| |q_$0_$7|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$7| |q_$0_$7| |g_$11|) perm$R) |howMuch_$10|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$7| |q_$0_$7| |g_$11|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$ref$ |m_$9_$7| |o_$16_$7| |f_$7_$7| |howMuch_$10|) |q_$0_$7| |g_$11|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$ref$ |m_$9_$7| |o_$16_$7| |f_$7_$7| |howMuch_$10|) |q_$0_$7| |g_$11|) perm$R)))) :named ax_205))
   (assert (! (forall( (|m_$9_$8| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$8| ref) (|f_$7_$8| Field$Mu$) (|howMuch_$11| Int) (|q_$0_$8| ref) (|g_$12| Field$Int$))(!(= (ite$Int$ (and (= |o_$16_$8| |q_$0_$8|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$8| |q_$0_$8| |g_$12|) perm$R) |howMuch_$11|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$8| |q_$0_$8| |g_$12|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Mu$ |m_$9_$8| |o_$16_$8| |f_$7_$8| |howMuch_$11|) |q_$0_$8| |g_$12|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Mu$ |m_$9_$8| |o_$16_$8| |f_$7_$8| |howMuch_$11|) |q_$0_$8| |g_$12|) perm$R)))) :named ax_206))
   (assert (! (forall( (|m_$9_$9| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$9| ref) (|f_$7_$9| Field$Seq$Int$$) (|howMuch_$12| Int) (|q_$0_$9| ref) (|g_$13| Field$Int$))(!(= (ite$Int$ (and (= |o_$16_$9| |q_$0_$9|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$9| |q_$0_$9| |g_$13|) perm$R) |howMuch_$12|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$9| |q_$0_$9| |g_$13|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Seq$Int$$ |m_$9_$9| |o_$16_$9| |f_$7_$9| |howMuch_$12|) |q_$0_$9| |g_$13|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Seq$Int$$ |m_$9_$9| |o_$16_$9| |f_$7_$9| |howMuch_$12|) |q_$0_$9| |g_$13|) perm$R)))) :named ax_207))
   (assert (! (forall( (|m| Mu) (|n_$0| Mu))(!(not (and (MuBelow |n_$0| |m|) (MuBelow |m| |n_$0|)))  :pattern ( (MuBelow |m| |n_$0|) (MuBelow |n_$0| |m|)))) :named ax_208))
   (assert (! (forall( (|min_$0| Int) (|max_$0| Int) (|j_$4| Int))(!(=> (and (< |j_$4| (- |max_$0| |min_$0|)) (<= 0 |j_$4|)) (= (Seq@Index$Int$ (Seq@Range |min_$0| |max_$0|) |j_$4|) (+ |min_$0| |j_$4|)))  :pattern ( (Seq@Index$Int$ (Seq@Range |min_$0| |max_$0|) |j_$4|)))) :named ax_209))
   (assert (! (forall( (|min| Int) (|max| Int))(!(and (=> (< |min| |max|) (= (Seq@Length$Int$ (Seq@Range |min| |max|)) (- |max| |min|))) (=> (<= |max| |min|) (= (Seq@Length$Int$ (Seq@Range |min| |max|)) 0)))  :pattern ( (Seq@Length$Int$ (Seq@Range |min| |max|))))) :named ax_210))
   (assert (! (forall( (|n| Int))(!(= (* |n| Permission$denominator) (Fractions |n|))  :pattern ( (Fractions |n|)))) :named ax_211))
   (assert (! (forall( (|o_$22| ref))(= (MapRead$$@Map@@ref@To@Int@@$ ZeroCredits |o_$22|) 0)) :named ax_212))
   (assert (! (forall( (|o_$25| ref) (|f_$18| Field$Bool$) (|pc_$0| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ ZeroMask |o_$25| |f_$18|) |pc_$0|) 0)) :named ax_213))
   (assert (! (forall( (|o_$26| ref) (|f_$19| Field$Int$) (|pc_$1| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask |o_$26| |f_$19|) |pc_$1|) 0)) :named ax_214))
   (assert (! (forall( (|o_$27| ref) (|f_$20| Field$ref$) (|pc_$2| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask |o_$27| |f_$20|) |pc_$2|) 0)) :named ax_215))
   (assert (! (forall( (|o_$28| ref) (|f_$21| Field$Mu$) (|pc_$3| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ ZeroMask |o_$28| |f_$21|) |pc_$3|) 0)) :named ax_216))
   (assert (! (forall( (|o_$29| ref) (|f_$22| Field$Seq$Int$$) (|pc_$4| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ ZeroMask |o_$29| |f_$22|) |pc_$4|) 0)) :named ax_217))
   (assert (! (forall( (|s_$0_$0| Seq$Int$))(!(=> (= (Seq@Length$Int$ |s_$0_$0|) 0) (= |s_$0_$0| Seq@Empty$Int$))  :pattern ( (Seq@Length$Int$ |s_$0_$0|)))) :named ax_218))
   (assert (! (forall( (|s_$0_$1| Seq$ref$))(!(=> (= (Seq@Length$ref$ |s_$0_$1|) 0) (= |s_$0_$1| Seq@Empty$ref$))  :pattern ( (Seq@Length$ref$ |s_$0_$1|)))) :named ax_219))
   (assert (! (forall( (|s_$1_$0| Seq$Int$) (|i_$5| Int) (|v_$2| Int) (|len_$2| Int))(!(=> (<= 0 |len_$2|) (= (Seq@Length$Int$ (Seq@Build$Int$ |s_$1_$0| |i_$5| |v_$2| |len_$2|)) |len_$2|))  :pattern ( (Seq@Length$Int$ (Seq@Build$Int$ |s_$1_$0| |i_$5| |v_$2| |len_$2|))))) :named ax_220))
   (assert (! (forall( (|s_$1_$1| Seq$ref$) (|i_$6| Int) (|v_$3| ref) (|len_$3| Int))(!(=> (<= 0 |len_$3|) (= (Seq@Length$ref$ (Seq@Build$ref$ |s_$1_$1| |i_$6| |v_$3| |len_$3|)) |len_$3|))  :pattern ( (Seq@Length$ref$ (Seq@Build$ref$ |s_$1_$1| |i_$6| |v_$3| |len_$3|))))) :named ax_221))
   (assert (! (forall( (|s_$10_$0| Seq$Int$) (|n_$11_$0| Int) (|j_$3_$0| Int))(!(=> (and (< |j_$3_$0| (- (Seq@Length$Int$ |s_$10_$0|) |n_$11_$0|)) (and (<= 0 |n_$11_$0|) (<= 0 |j_$3_$0|))) (= (Seq@Index$Int$ (Seq@Drop$Int$ |s_$10_$0| |n_$11_$0|) |j_$3_$0|) (Seq@Index$Int$ |s_$10_$0| (+ |j_$3_$0| |n_$11_$0|))))  :weight  25 :pattern ( (Seq@Index$Int$ (Seq@Drop$Int$ |s_$10_$0| |n_$11_$0|) |j_$3_$0|)))) :named ax_222))
   (assert (! (forall( (|s_$10_$1| Seq$ref$) (|n_$11_$1| Int) (|j_$3_$1| Int))(!(=> (and (< |j_$3_$1| (- (Seq@Length$ref$ |s_$10_$1|) |n_$11_$1|)) (and (<= 0 |n_$11_$1|) (<= 0 |j_$3_$1|))) (= (Seq@Index$ref$ (Seq@Drop$ref$ |s_$10_$1| |n_$11_$1|) |j_$3_$1|) (Seq@Index$ref$ |s_$10_$1| (+ |j_$3_$1| |n_$11_$1|))))  :weight  25 :pattern ( (Seq@Index$ref$ (Seq@Drop$ref$ |s_$10_$1| |n_$11_$1|) |j_$3_$1|)))) :named ax_223))
   (assert (! (forall( (|s_$11_$0| Seq$Int$) (|t_$1_$0| Seq$Int$))(!(and (= |t_$1_$0| (Seq@Drop$Int$ (Seq@Append$Int$ |s_$11_$0| |t_$1_$0|) (Seq@Length$Int$ |s_$11_$0|))) (= (Seq@Take$Int$ (Seq@Append$Int$ |s_$11_$0| |t_$1_$0|) (Seq@Length$Int$ |s_$11_$0|)) |s_$11_$0|))  :pattern ( (Seq@Append$Int$ |s_$11_$0| |t_$1_$0|)))) :named ax_224))
   (assert (! (forall( (|s_$11_$1| Seq$ref$) (|t_$1_$1| Seq$ref$))(!(and (= |t_$1_$1| (Seq@Drop$ref$ (Seq@Append$ref$ |s_$11_$1| |t_$1_$1|) (Seq@Length$ref$ |s_$11_$1|))) (= (Seq@Take$ref$ (Seq@Append$ref$ |s_$11_$1| |t_$1_$1|) (Seq@Length$ref$ |s_$11_$1|)) |s_$11_$1|))  :pattern ( (Seq@Append$ref$ |s_$11_$1| |t_$1_$1|)))) :named ax_225))
   (assert (! (forall( (|s_$12| Seq$Int$))(!(<= 0 (Seq@Length$Int$ |s_$12|))  :pattern ( (Seq@Length$Int$ |s_$12|)))) :named ax_226))
   (assert (! (forall( (|s_$13| Seq$ref$))(!(<= 0 (Seq@Length$ref$ |s_$13|))  :pattern ( (Seq@Length$ref$ |s_$13|)))) :named ax_227))
   (assert (! (forall( (|s_$2_$0| Seq$Int$) (|i_$0_$0| Int) (|v_$0_$0| Int) (|len_$0_$0| Int) (|n_$4_$0| Int))(!(=> (and (< |n_$4_$0| |len_$0_$0|) (<= 0 |n_$4_$0|)) (and (=> (= |n_$4_$0| |i_$0_$0|) (= |v_$0_$0| (Seq@Index$Int$ (Seq@Build$Int$ |s_$2_$0| |i_$0_$0| |v_$0_$0| |len_$0_$0|) |n_$4_$0|))) (=> (not (= |n_$4_$0| |i_$0_$0|)) (= (Seq@Index$Int$ (Seq@Build$Int$ |s_$2_$0| |i_$0_$0| |v_$0_$0| |len_$0_$0|) |n_$4_$0|) (Seq@Index$Int$ |s_$2_$0| |n_$4_$0|)))))  :pattern ( (Seq@Index$Int$ (Seq@Build$Int$ |s_$2_$0| |i_$0_$0| |v_$0_$0| |len_$0_$0|) |n_$4_$0|)))) :named ax_228))
   (assert (! (forall( (|s_$2_$1| Seq$ref$) (|i_$0_$1| Int) (|v_$0_$1| ref) (|len_$0_$1| Int) (|n_$4_$1| Int))(!(=> (and (< |n_$4_$1| |len_$0_$1|) (<= 0 |n_$4_$1|)) (and (=> (= |n_$4_$1| |i_$0_$1|) (= |v_$0_$1| (Seq@Index$ref$ (Seq@Build$ref$ |s_$2_$1| |i_$0_$1| |v_$0_$1| |len_$0_$1|) |n_$4_$1|))) (=> (not (= |n_$4_$1| |i_$0_$1|)) (= (Seq@Index$ref$ (Seq@Build$ref$ |s_$2_$1| |i_$0_$1| |v_$0_$1| |len_$0_$1|) |n_$4_$1|) (Seq@Index$ref$ |s_$2_$1| |n_$4_$1|)))))  :pattern ( (Seq@Index$ref$ (Seq@Build$ref$ |s_$2_$1| |i_$0_$1| |v_$0_$1| |len_$0_$1|) |n_$4_$1|)))) :named ax_229))
   (assert (! (forall( (|s_$3_$0| Seq$Int$) (|x_$0_$0| Int))(!(= (Seq@Contains$Int$ |s_$3_$0| |x_$0_$0|) (exists( (|i_$1_$1| Int))(!(and (= |x_$0_$0| (Seq@Index$Int$ |s_$3_$0| |i_$1_$1|)) (and (< |i_$1_$1| (Seq@Length$Int$ |s_$3_$0|)) (<= 0 |i_$1_$1|)))  :pattern ( (Seq@Index$Int$ |s_$3_$0| |i_$1_$1|)))))  :pattern ( (Seq@Contains$Int$ |s_$3_$0| |x_$0_$0|)))) :named ax_230))
   (assert (! (forall( (|s_$3_$1| Seq$ref$) (|x_$0_$1| ref))(!(= (Seq@Contains$ref$ |s_$3_$1| |x_$0_$1|) (exists( (|i_$1_$3| Int))(!(and (= |x_$0_$1| (Seq@Index$ref$ |s_$3_$1| |i_$1_$3|)) (and (< |i_$1_$3| (Seq@Length$ref$ |s_$3_$1|)) (<= 0 |i_$1_$3|)))  :pattern ( (Seq@Index$ref$ |s_$3_$1| |i_$1_$3|)))))  :pattern ( (Seq@Contains$ref$ |s_$3_$1| |x_$0_$1|)))) :named ax_231))
   (assert (! (forall( (|s_$4_$0| Seq$Int$) (|i_$2_$0| Int) (|v_$1_$0| Int) (|len_$1_$0| Int) (|x_$3_$0| Int))(!(= (Seq@Contains$Int$ (Seq@Build$Int$ |s_$4_$0| |i_$2_$0| |v_$1_$0| |len_$1_$0|) |x_$3_$0|) (or (and (= |x_$3_$0| |v_$1_$0|) (and (< |i_$2_$0| |len_$1_$0|) (<= 0 |i_$2_$0|))) (exists( (|j_$6| Int))(!(and (= |x_$3_$0| (Seq@Index$Int$ |s_$4_$0| |j_$6|)) (and (and (< |j_$6| |len_$1_$0|) (and (< |j_$6| (Seq@Length$Int$ |s_$4_$0|)) (<= 0 |j_$6|))) (not (= |j_$6| |i_$2_$0|))))  :pattern ( (Seq@Index$Int$ |s_$4_$0| |j_$6|))))))  :pattern ( (Seq@Contains$Int$ (Seq@Build$Int$ |s_$4_$0| |i_$2_$0| |v_$1_$0| |len_$1_$0|) |x_$3_$0|)))) :named ax_232))
   (assert (! (forall( (|s_$4_$1| Seq$ref$) (|i_$2_$1| Int) (|v_$1_$1| ref) (|len_$1_$1| Int) (|x_$3_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Build$ref$ |s_$4_$1| |i_$2_$1| |v_$1_$1| |len_$1_$1|) |x_$3_$1|) (or (and (= |x_$3_$1| |v_$1_$1|) (and (< |i_$2_$1| |len_$1_$1|) (<= 0 |i_$2_$1|))) (exists( (|j_$8| Int))(!(and (= |x_$3_$1| (Seq@Index$ref$ |s_$4_$1| |j_$8|)) (and (and (< |j_$8| |len_$1_$1|) (and (< |j_$8| (Seq@Length$ref$ |s_$4_$1|)) (<= 0 |j_$8|))) (not (= |j_$8| |i_$2_$1|))))  :pattern ( (Seq@Index$ref$ |s_$4_$1| |j_$8|))))))  :pattern ( (Seq@Contains$ref$ (Seq@Build$ref$ |s_$4_$1| |i_$2_$1| |v_$1_$1| |len_$1_$1|) |x_$3_$1|)))) :named ax_233))
   (assert (! (forall( (|s_$5_$0| Seq$Int$) (|n_$5_$0| Int) (|x_$4_$0| Int))(!(= (Seq@Contains$Int$ (Seq@Take$Int$ |s_$5_$0| |n_$5_$0|) |x_$4_$0|) (exists( (|i_$3_$1| Int))(!(and (= |x_$4_$0| (Seq@Index$Int$ |s_$5_$0| |i_$3_$1|)) (and (< |i_$3_$1| (Seq@Length$Int$ |s_$5_$0|)) (and (< |i_$3_$1| |n_$5_$0|) (<= 0 |i_$3_$1|))))  :pattern ( (Seq@Index$Int$ |s_$5_$0| |i_$3_$1|)))))  :pattern ( (Seq@Contains$Int$ (Seq@Take$Int$ |s_$5_$0| |n_$5_$0|) |x_$4_$0|)))) :named ax_234))
   (assert (! (forall( (|s_$5_$1| Seq$ref$) (|n_$5_$1| Int) (|x_$4_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Take$ref$ |s_$5_$1| |n_$5_$1|) |x_$4_$1|) (exists( (|i_$3_$3| Int))(!(and (= |x_$4_$1| (Seq@Index$ref$ |s_$5_$1| |i_$3_$3|)) (and (< |i_$3_$3| (Seq@Length$ref$ |s_$5_$1|)) (and (< |i_$3_$3| |n_$5_$1|) (<= 0 |i_$3_$3|))))  :pattern ( (Seq@Index$ref$ |s_$5_$1| |i_$3_$3|)))))  :pattern ( (Seq@Contains$ref$ (Seq@Take$ref$ |s_$5_$1| |n_$5_$1|) |x_$4_$1|)))) :named ax_235))
   (assert (! (forall( (|s_$6_$0| Seq$Int$) (|n_$6_$0| Int) (|x_$5_$0| Int))(!(= (Seq@Contains$Int$ (Seq@Drop$Int$ |s_$6_$0| |n_$6_$0|) |x_$5_$0|) (exists( (|i_$4_$1| Int))(!(and (= |x_$5_$0| (Seq@Index$Int$ |s_$6_$0| |i_$4_$1|)) (and (< |i_$4_$1| (Seq@Length$Int$ |s_$6_$0|)) (and (<= |n_$6_$0| |i_$4_$1|) (<= 0 |n_$6_$0|))))  :pattern ( (Seq@Index$Int$ |s_$6_$0| |i_$4_$1|)))))  :pattern ( (Seq@Contains$Int$ (Seq@Drop$Int$ |s_$6_$0| |n_$6_$0|) |x_$5_$0|)))) :named ax_236))
   (assert (! (forall( (|s_$6_$1| Seq$ref$) (|n_$6_$1| Int) (|x_$5_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Drop$ref$ |s_$6_$1| |n_$6_$1|) |x_$5_$1|) (exists( (|i_$4_$3| Int))(!(and (= |x_$5_$1| (Seq@Index$ref$ |s_$6_$1| |i_$4_$3|)) (and (< |i_$4_$3| (Seq@Length$ref$ |s_$6_$1|)) (and (<= |n_$6_$1| |i_$4_$3|) (<= 0 |n_$6_$1|))))  :pattern ( (Seq@Index$ref$ |s_$6_$1| |i_$4_$3|)))))  :pattern ( (Seq@Contains$ref$ (Seq@Drop$ref$ |s_$6_$1| |n_$6_$1|) |x_$5_$1|)))) :named ax_237))
   (assert (! (forall( (|s_$7_$0| Seq$Int$) (|n_$8_$0| Int))(!(=> (<= 0 |n_$8_$0|) (and (=> (< (Seq@Length$Int$ |s_$7_$0|) |n_$8_$0|) (= (Seq@Length$Int$ (Seq@Take$Int$ |s_$7_$0| |n_$8_$0|)) (Seq@Length$Int$ |s_$7_$0|))) (=> (<= |n_$8_$0| (Seq@Length$Int$ |s_$7_$0|)) (= (Seq@Length$Int$ (Seq@Take$Int$ |s_$7_$0| |n_$8_$0|)) |n_$8_$0|))))  :pattern ( (Seq@Length$Int$ (Seq@Take$Int$ |s_$7_$0| |n_$8_$0|))))) :named ax_238))
   (assert (! (forall( (|s_$7_$1| Seq$ref$) (|n_$8_$1| Int))(!(=> (<= 0 |n_$8_$1|) (and (=> (< (Seq@Length$ref$ |s_$7_$1|) |n_$8_$1|) (= (Seq@Length$ref$ (Seq@Take$ref$ |s_$7_$1| |n_$8_$1|)) (Seq@Length$ref$ |s_$7_$1|))) (=> (<= |n_$8_$1| (Seq@Length$ref$ |s_$7_$1|)) (= (Seq@Length$ref$ (Seq@Take$ref$ |s_$7_$1| |n_$8_$1|)) |n_$8_$1|))))  :pattern ( (Seq@Length$ref$ (Seq@Take$ref$ |s_$7_$1| |n_$8_$1|))))) :named ax_239))
   (assert (! (forall( (|s_$8_$0| Seq$Int$) (|n_$9_$0| Int) (|j_$2_$0| Int))(!(=> (and (< |j_$2_$0| (Seq@Length$Int$ |s_$8_$0|)) (and (< |j_$2_$0| |n_$9_$0|) (<= 0 |j_$2_$0|))) (= (Seq@Index$Int$ (Seq@Take$Int$ |s_$8_$0| |n_$9_$0|) |j_$2_$0|) (Seq@Index$Int$ |s_$8_$0| |j_$2_$0|)))  :weight  25 :pattern ( (Seq@Index$Int$ (Seq@Take$Int$ |s_$8_$0| |n_$9_$0|) |j_$2_$0|)))) :named ax_240))
   (assert (! (forall( (|s_$8_$1| Seq$ref$) (|n_$9_$1| Int) (|j_$2_$1| Int))(!(=> (and (< |j_$2_$1| (Seq@Length$ref$ |s_$8_$1|)) (and (< |j_$2_$1| |n_$9_$1|) (<= 0 |j_$2_$1|))) (= (Seq@Index$ref$ (Seq@Take$ref$ |s_$8_$1| |n_$9_$1|) |j_$2_$1|) (Seq@Index$ref$ |s_$8_$1| |j_$2_$1|)))  :weight  25 :pattern ( (Seq@Index$ref$ (Seq@Take$ref$ |s_$8_$1| |n_$9_$1|) |j_$2_$1|)))) :named ax_241))
   (assert (! (forall( (|s_$9_$0| Seq$Int$) (|n_$10_$0| Int))(!(=> (<= 0 |n_$10_$0|) (and (=> (< (Seq@Length$Int$ |s_$9_$0|) |n_$10_$0|) (= (Seq@Length$Int$ (Seq@Drop$Int$ |s_$9_$0| |n_$10_$0|)) 0)) (=> (<= |n_$10_$0| (Seq@Length$Int$ |s_$9_$0|)) (= (Seq@Length$Int$ (Seq@Drop$Int$ |s_$9_$0| |n_$10_$0|)) (- (Seq@Length$Int$ |s_$9_$0|) |n_$10_$0|)))))  :pattern ( (Seq@Length$Int$ (Seq@Drop$Int$ |s_$9_$0| |n_$10_$0|))))) :named ax_242))
   (assert (! (forall( (|s_$9_$1| Seq$ref$) (|n_$10_$1| Int))(!(=> (<= 0 |n_$10_$1|) (and (=> (< (Seq@Length$ref$ |s_$9_$1|) |n_$10_$1|) (= (Seq@Length$ref$ (Seq@Drop$ref$ |s_$9_$1| |n_$10_$1|)) 0)) (=> (<= |n_$10_$1| (Seq@Length$ref$ |s_$9_$1|)) (= (Seq@Length$ref$ (Seq@Drop$ref$ |s_$9_$1| |n_$10_$1|)) (- (Seq@Length$ref$ |s_$9_$1|) |n_$10_$1|)))))  :pattern ( (Seq@Length$ref$ (Seq@Drop$ref$ |s_$9_$1| |n_$10_$1|))))) :named ax_243))
   (assert (! (forall( (|s0_$0_$0| Seq$Int$) (|s1_$0_$0| Seq$Int$) (|n_$3_$0| Int))(!(and (=> (<= (Seq@Length$Int$ |s0_$0_$0|) |n_$3_$0|) (= (Seq@Index$Int$ (Seq@Append$Int$ |s0_$0_$0| |s1_$0_$0|) |n_$3_$0|) (Seq@Index$Int$ |s1_$0_$0| (- |n_$3_$0| (Seq@Length$Int$ |s0_$0_$0|))))) (=> (< |n_$3_$0| (Seq@Length$Int$ |s0_$0_$0|)) (= (Seq@Index$Int$ (Seq@Append$Int$ |s0_$0_$0| |s1_$0_$0|) |n_$3_$0|) (Seq@Index$Int$ |s0_$0_$0| |n_$3_$0|))))  :pattern ( (Seq@Index$Int$ (Seq@Append$Int$ |s0_$0_$0| |s1_$0_$0|) |n_$3_$0|)))) :named ax_244))
   (assert (! (forall( (|s0_$0_$1| Seq$ref$) (|s1_$0_$1| Seq$ref$) (|n_$3_$1| Int))(!(and (=> (<= (Seq@Length$ref$ |s0_$0_$1|) |n_$3_$1|) (= (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$1| |s1_$0_$1|) |n_$3_$1|) (Seq@Index$ref$ |s1_$0_$1| (- |n_$3_$1| (Seq@Length$ref$ |s0_$0_$1|))))) (=> (< |n_$3_$1| (Seq@Length$ref$ |s0_$0_$1|)) (= (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$1| |s1_$0_$1|) |n_$3_$1|) (Seq@Index$ref$ |s0_$0_$1| |n_$3_$1|))))  :pattern ( (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$1| |s1_$0_$1|) |n_$3_$1|)))) :named ax_245))
   (assert (! (forall( (|s0_$1_$0| Seq$Int$) (|s1_$1_$0| Seq$Int$) (|x_$2_$0| Int))(!(= (Seq@Contains$Int$ (Seq@Append$Int$ |s0_$1_$0| |s1_$1_$0|) |x_$2_$0|) (or (Seq@Contains$Int$ |s1_$1_$0| |x_$2_$0|) (Seq@Contains$Int$ |s0_$1_$0| |x_$2_$0|)))  :pattern ( (Seq@Contains$Int$ (Seq@Append$Int$ |s0_$1_$0| |s1_$1_$0|) |x_$2_$0|)))) :named ax_246))
   (assert (! (forall( (|s0_$1_$1| Seq$ref$) (|s1_$1_$1| Seq$ref$) (|x_$2_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Append$ref$ |s0_$1_$1| |s1_$1_$1|) |x_$2_$1|) (or (Seq@Contains$ref$ |s1_$1_$1| |x_$2_$1|) (Seq@Contains$ref$ |s0_$1_$1| |x_$2_$1|)))  :pattern ( (Seq@Contains$ref$ (Seq@Append$ref$ |s0_$1_$1| |s1_$1_$1|) |x_$2_$1|)))) :named ax_247))
   (assert (! (forall( (|s0_$2_$0| Seq$Int$) (|s1_$2_$0| Seq$Int$))(!(= (Seq@Equal$Int$ |s0_$2_$0| |s1_$2_$0|) (and (= (Seq@Length$Int$ |s1_$2_$0|) (Seq@Length$Int$ |s0_$2_$0|)) (forall( (|j_$0_$1| Int))(!(=> (and (< |j_$0_$1| (Seq@Length$Int$ |s0_$2_$0|)) (<= 0 |j_$0_$1|)) (= (Seq@Index$Int$ |s1_$2_$0| |j_$0_$1|) (Seq@Index$Int$ |s0_$2_$0| |j_$0_$1|)))  :pattern ( (Seq@Index$Int$ |s0_$2_$0| |j_$0_$1|)) :pattern ( (Seq@Index$Int$ |s1_$2_$0| |j_$0_$1|))))))  :pattern ( (Seq@Equal$Int$ |s0_$2_$0| |s1_$2_$0|)))) :named ax_248))
   (assert (! (forall( (|s0_$2_$1| Seq$ref$) (|s1_$2_$1| Seq$ref$))(!(= (Seq@Equal$ref$ |s0_$2_$1| |s1_$2_$1|) (and (= (Seq@Length$ref$ |s1_$2_$1|) (Seq@Length$ref$ |s0_$2_$1|)) (forall( (|j_$0_$3| Int))(!(=> (and (< |j_$0_$3| (Seq@Length$ref$ |s0_$2_$1|)) (<= 0 |j_$0_$3|)) (= (Seq@Index$ref$ |s1_$2_$1| |j_$0_$3|) (Seq@Index$ref$ |s0_$2_$1| |j_$0_$3|)))  :pattern ( (Seq@Index$ref$ |s0_$2_$1| |j_$0_$3|)) :pattern ( (Seq@Index$ref$ |s1_$2_$1| |j_$0_$3|))))))  :pattern ( (Seq@Equal$ref$ |s0_$2_$1| |s1_$2_$1|)))) :named ax_249))
   (assert (! (forall( (|s0_$4| Seq$Int$) (|s1_$4| Seq$Int$))(!(= (Seq@Length$Int$ (Seq@Append$Int$ |s0_$4| |s1_$4|)) (+ (Seq@Length$Int$ |s0_$4|) (Seq@Length$Int$ |s1_$4|)))  :pattern ( (Seq@Length$Int$ (Seq@Append$Int$ |s0_$4| |s1_$4|))))) :named ax_250))
   (assert (! (forall( (|s0_$5| Seq$ref$) (|s1_$5| Seq$ref$))(!(= (Seq@Length$ref$ (Seq@Append$ref$ |s0_$5| |s1_$5|)) (+ (Seq@Length$ref$ |s0_$5|) (Seq@Length$ref$ |s1_$5|)))  :pattern ( (Seq@Length$ref$ (Seq@Append$ref$ |s0_$5| |s1_$5|))))) :named ax_251))
   (assert (! (forall( (|t_$0_$0| Int))(!(= |t_$0_$0| (Seq@Index$Int$ (Seq@Singleton$Int$ |t_$0_$0|) 0))  :pattern ( (Seq@Index$Int$ (Seq@Singleton$Int$ |t_$0_$0|) 0)))) :named ax_252))
   (assert (! (forall( (|t_$0_$1| ref))(!(= |t_$0_$1| (Seq@Index$ref$ (Seq@Singleton$ref$ |t_$0_$1|) 0))  :pattern ( (Seq@Index$ref$ (Seq@Singleton$ref$ |t_$0_$1|) 0)))) :named ax_253))
   (assert (! (forall( (|t_$2| Int))(!(= (Seq@Length$Int$ (Seq@Singleton$Int$ |t_$2|)) 1)  :pattern ( (Seq@Length$Int$ (Seq@Singleton$Int$ |t_$2|))))) :named ax_254))
   (assert (! (forall( (|t_$3| ref))(!(= (Seq@Length$ref$ (Seq@Singleton$ref$ |t_$3|)) 1)  :pattern ( (Seq@Length$ref$ (Seq@Singleton$ref$ |t_$3|))))) :named ax_255))
   (assert (! (forall( (|x_$1| ref))(!(not (Seq@Contains$ref$ Seq@Empty$ref$ |x_$1|))  :pattern ( (Seq@Contains$ref$ Seq@Empty$ref$ |x_$1|)))) :named ax_256))
   (assert (! (forall( (|x_$6_$0| Int) (|y_$0_$0| Int))(!(= (= |y_$0_$0| |x_$6_$0|) (Seq@Contains$Int$ (Seq@Singleton$Int$ |x_$6_$0|) |y_$0_$0|))  :pattern ( (Seq@Contains$Int$ (Seq@Singleton$Int$ |x_$6_$0|) |y_$0_$0|)))) :named ax_257))
   (assert (! (forall( (|x_$6_$1| ref) (|y_$0_$1| ref))(!(= (= |y_$0_$1| |x_$6_$1|) (Seq@Contains$ref$ (Seq@Singleton$ref$ |x_$6_$1|) |y_$0_$1|))  :pattern ( (Seq@Contains$ref$ (Seq@Singleton$ref$ |x_$6_$1|) |y_$0_$1|)))) :named ax_258))
   (assert (! (forall( (|x| Int) (|y| Int))(=> (and (<= |x| |y|) (<= 0 |x|)) (<= (Fractions |x|) (Fractions |y|)))) :named ax_259))
   (assert (! (IsGoodMask Mask) :named ax_260))
   (assert (! (IsGoodMask Mask@0) :named ax_261))
   (assert (! (IsGoodMask Mask@1) :named ax_262))
   (assert (! (IsGoodMask Mask@2) :named ax_263))
   (assert (! (IsGoodMask SecMask) :named ax_264))
   (assert (! (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.balanceFactor))) :named ax_265))
   (assert (! (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.height))) :named ax_266))
   (assert (! (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.valid))) :named ax_267))
   (assert (! (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys))) :named ax_268))
   (assert (! (IsGoodState emptyPartialHeap) :named ax_269))
   (assert (! (ite$Bool$ false false true) :named ax_270))
   (assert (! (ite$Bool$ false true true) :named ax_271))
   (assert (! (ite$Bool$ true true false) :named ax_272))
   (assert (! (ite$Bool$ true true true) :named ax_273))
   (assert (! (NonPredicateField$Bool$ rdheld) :named ax_274))
   (assert (! (NonPredicateField$Int$ AVLTreeNode.balanceFactor) :named ax_275))
   (assert (! (NonPredicateField$Int$ AVLTreeNode.height) :named ax_276))
   (assert (! (NonPredicateField$Int$ AVLTreeNode.key) :named ax_277))
   (assert (! (NonPredicateField$Int$ forkK) :named ax_278))
   (assert (! (NonPredicateField$Int$ held) :named ax_279))
   (assert (! (NonPredicateField$Int$ joinable) :named ax_280))
   (assert (! (NonPredicateField$Mu$ mu) :named ax_281))
   (assert (! (NonPredicateField$ref$ AVLTree.root) :named ax_282))
   (assert (! (NonPredicateField$ref$ AVLTreeNode.left) :named ax_283))
   (assert (! (NonPredicateField$ref$ AVLTreeNode.right) :named ax_284))
   (assert (! (NonPredicateField$Seq$Int$$ AVLTree.keys) :named ax_285))
   (assert (! (NonPredicateField$Seq$Int$$ AVLTreeNode.keys) :named ax_286))
   (assert (! (not (= (* 50 Permission$denominator) 0)) :named ax_287))
   (assert (! (not (= (Fractions 1) (* 1000 channelK))) :named ax_288))
   (assert (! (not (= (Fractions 1) (* 1000 methodK@_261))) :named ax_289))
   (assert (! (not (= AVLTree.root AVLTreeNode.right)) :named ax_290))
   (assert (! (not (= AVLTree.valid AVLTreeNode.height)) :named ax_291))
   (assert (! (not (= AVLTree.valid AVLTreeNode.key)) :named ax_292))
   (assert (! (not (= AVLTree.valid AVLTreeNode.valid)) :named ax_293))
   (assert (! (not (= AVLTree.valid forkK)) :named ax_294))
   (assert (! (not (= AVLTree.valid held)) :named ax_295))
   (assert (! (not (= AVLTree.valid joinable)) :named ax_296))
   (assert (! (not (= AVLTreeNode.balanceFactor AVLTree.valid)) :named ax_297))
   (assert (! (not (= AVLTreeNode.balanceFactor AVLTreeNode.height)) :named ax_298))
   (assert (! (not (= AVLTreeNode.balanceFactor AVLTreeNode.key)) :named ax_299))
   (assert (! (not (= AVLTreeNode.balanceFactor AVLTreeNode.valid)) :named ax_300))
   (assert (! (not (= AVLTreeNode.balanceFactor forkK)) :named ax_301))
   (assert (! (not (= AVLTreeNode.balanceFactor held)) :named ax_302))
   (assert (! (not (= AVLTreeNode.balanceFactor joinable)) :named ax_303))
   (assert (! (not (= AVLTreeNode.height AVLTree.valid)) :named ax_304))
   (assert (! (not (= AVLTreeNode.height AVLTreeNode.balanceFactor)) :named ax_305))
   (assert (! (not (= AVLTreeNode.height AVLTreeNode.key)) :named ax_306))
   (assert (! (not (= AVLTreeNode.height AVLTreeNode.valid)) :named ax_307))
   (assert (! (not (= AVLTreeNode.height forkK)) :named ax_308))
   (assert (! (not (= AVLTreeNode.height held)) :named ax_309))
   (assert (! (not (= AVLTreeNode.height joinable)) :named ax_310))
   (assert (! (not (= AVLTreeNode.key AVLTree.valid)) :named ax_311))
   (assert (! (not (= AVLTreeNode.key AVLTreeNode.balanceFactor)) :named ax_312))
   (assert (! (not (= AVLTreeNode.key AVLTreeNode.height)) :named ax_313))
   (assert (! (not (= AVLTreeNode.key AVLTreeNode.valid)) :named ax_314))
   (assert (! (not (= AVLTreeNode.key forkK)) :named ax_315))
   (assert (! (not (= AVLTreeNode.key held)) :named ax_316))
   (assert (! (not (= AVLTreeNode.key joinable)) :named ax_317))
   (assert (! (not (= AVLTreeNode.keys AVLTree.keys)) :named ax_318))
   (assert (! (not (= AVLTreeNode.left AVLTree.root)) :named ax_319))
   (assert (! (not (= AVLTreeNode.left AVLTreeNode.right)) :named ax_320))
   (assert (! (not (= AVLTreeNode.right AVLTree.root)) :named ax_321))
   (assert (! (not (= AVLTreeNode.right AVLTreeNode.left)) :named ax_322))
   (assert (! (not (= AVLTreeNode.valid AVLTree.valid)) :named ax_323))
   (assert (! (not (= AVLTreeNode.valid AVLTreeNode.balanceFactor)) :named ax_324))
   (assert (! (not (= AVLTreeNode.valid AVLTreeNode.height)) :named ax_325))
   (assert (! (not (= AVLTreeNode.valid AVLTreeNode.key)) :named ax_326))
   (assert (! (not (= AVLTreeNode.valid forkK)) :named ax_327))
   (assert (! (not (= AVLTreeNode.valid held)) :named ax_328))
   (assert (! (not (= AVLTreeNode.valid joinable)) :named ax_329))
   (assert (! (not (= channelK 0)) :named ax_330))
   (assert (! (not (= forkK AVLTree.valid)) :named ax_331))
   (assert (! (not (= forkK AVLTreeNode.balanceFactor)) :named ax_332))
   (assert (! (not (= forkK AVLTreeNode.height)) :named ax_333))
   (assert (! (not (= forkK AVLTreeNode.key)) :named ax_334))
   (assert (! (not (= forkK AVLTreeNode.valid)) :named ax_335))
   (assert (! (not (= forkK held)) :named ax_336))
   (assert (! (not (= forkK joinable)) :named ax_337))
   (assert (! (not (= held AVLTree.valid)) :named ax_338))
   (assert (! (not (= held AVLTreeNode.balanceFactor)) :named ax_339))
   (assert (! (not (= held AVLTreeNode.height)) :named ax_340))
   (assert (! (not (= held AVLTreeNode.key)) :named ax_341))
   (assert (! (not (= held AVLTreeNode.valid)) :named ax_342))
   (assert (! (not (= held forkK)) :named ax_343))
   (assert (! (not (= held joinable)) :named ax_344))
   (assert (! (not (= joinable AVLTree.valid)) :named ax_345))
   (assert (! (not (= joinable AVLTreeNode.balanceFactor)) :named ax_346))
   (assert (! (not (= joinable AVLTreeNode.height)) :named ax_347))
   (assert (! (not (= joinable AVLTreeNode.key)) :named ax_348))
   (assert (! (not (= joinable AVLTreeNode.valid)) :named ax_349))
   (assert (! (not (= joinable forkK)) :named ax_350))
   (assert (! (not (= joinable held)) :named ax_351))
   (assert (! (not (= methodK@_261 (* 1000 unfoldK@_262))) :named ax_352))
   (assert (! (not (= methodK@_261 0)) :named ax_353))
   (assert (! (not (= perm$N perm$R)) :named ax_354))
   (assert (! (not (= perm$R perm$N)) :named ax_355))
   (assert (! (not (= Permission$denominator 0)) :named ax_356))
   (assert (! (not (= Permission$FullFraction 0)) :named ax_357))
   (assert (! (not (= this null)) :named ax_358))
   (assert (! (not (= unfoldK@_262 (Fractions 1))) :named ax_359))
   (assert (! (not (= unfoldK@_262 0)) :named ax_360))
   (assert (! (not (ite$Bool$ false false false)) :named ax_361))
   (assert (! (not (ite$Bool$ false true false)) :named ax_362))
   (assert (! (not (ite$Bool$ true false false)) :named ax_363))
   (assert (! (not (ite$Bool$ true false true)) :named ax_364))
   (assert (! (or (= null nl@12) (= (dtype nl@12) AVLTreeNode@t)) :named ax_365))
   (assert (! (or (= null nr@16) (= (dtype nr@16) AVLTreeNode@t)) :named ax_366))
   (assert (! (or (= r@10 null) (= (dtype r@10) AVLTreeNode@t)) :named ax_367))
   (assert (! (or (= r@174 null) (= (dtype r@174) AVLTreeNode@t)) :named ax_368))
   (assert (! (or (= r@180 null) (= (dtype r@180) AVLTreeNode@t)) :named ax_369))
   (assert (! (or (= r@194 null) (= (dtype r@194) AVLTreeNode@t)) :named ax_370))
   (assert (! (or (= r@200 null) (= (dtype r@200) AVLTreeNode@t)) :named ax_371))
   (assert (! (or (= this@165 null) (= (dtype this@165) AVLTreeNode@t)) :named ax_372))
   (assert (! (or (= this@170 null) (= (dtype this@170) AVLTreeNode@t)) :named ax_373))
   (assert (! (or (= this@172 null) (= (dtype this@172) AVLTreeNode@t)) :named ax_374))
   (assert (! (or (= this@177 null) (= (dtype this@177) AVLTreeNode@t)) :named ax_375))
   (assert (! (or (= this@179 null) (= (dtype this@179) AVLTreeNode@t)) :named ax_376))
   (assert (! (or (= this@185 null) (= (dtype this@185) AVLTreeNode@t)) :named ax_377))
   (assert (! (or (= this@190 null) (= (dtype this@190) AVLTreeNode@t)) :named ax_378))
   (assert (! (or (= this@192 null) (= (dtype this@192) AVLTreeNode@t)) :named ax_379))
   (assert (! (or (= this@197 null) (= (dtype this@197) AVLTreeNode@t)) :named ax_380))
   (assert (! (or (= this@199 null) (= (dtype this@199) AVLTreeNode@t)) :named ax_381))
   (assert (! (or (= this@205 null) (= (dtype this@205) AVLTreeNode@t)) :named ax_382))
   (assert (! (PredicateField$Int$ AVLTree.valid) :named ax_383))
   (assert (! (PredicateField$Int$ AVLTreeNode.valid) :named ax_384))
   (assert (! (wf Heap Mask SecMask) :named ax_385))
   (assert (! (wf Heap Mask@0 SecMask) :named ax_386))
   (assert (! (wf Heap Mask@1 SecMask) :named ax_387))
   (assert (! (wf Heap Mask@2 SecMask) :named ax_388))
   (assert (! (wf Heap SecMask SecMask) :named ax_389))
   (assert (! CanAssumeFunctionDefs :named ax_390))

;Program
(assert (not
(let ((anon267@6_assertion (and
    (forall( (|lk#_505| ref))(!(or (and (= (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_499@0 |lk#_505| held)) (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap |lk#_505| held))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ exhaleHeap@_499@0 |lk#_505| rdheld) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap |lk#_505| rdheld))) false)  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_499@0 |lk#_505| held)) :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ exhaleHeap@_499@0 |lk#_505| rdheld))))
)))
(let ((anon309_Then_assertion (and
    (forall( (|k#92#166| Int))(=> (and (<= 0 |k#92#166|) (< |k#92#166| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) |k#92#166|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key))))
)))
(let ((anon310_Then_assertion (and
    (forall( (|k#93#167| Int))(=> (and (<= 0 |k#93#167|) (< |k#93#167| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) |k#93#167|))))
)))
(let ((anon259@2_assertion (and
    (forall( (|i#82#210| Int))(=> (and (<= 0 |i#82#210|) (< |i#82#210| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys)))) (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 r@10@0 AVLTreeNode.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) |i#82#210|))))
)))
(let ((anon259@3_assertion (and
    (forall( (|i#83#211| Int))(=> (and (<= 0 |i#83#211|) (< |i#83#211| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 r@10@0 AVLTreeNode.keys)))) (or (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 r@10@0 AVLTreeNode.keys) |i#83#211|)) (= (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 r@10@0 AVLTreeNode.keys) |i#83#211|) k@9))))
)))
(let ((anon339_Then@2_assertion (and
    (forall( (|k#94#181| Int))(=> (and (<= 0 |k#94#181|) (< |k#94#181| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys) |k#94#181|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 this AVLTreeNode.key))))
)))
(let ((anon340_Then_assertion (and
    (forall( (|k#95#182| Int))(=> (and (<= 0 |k#95#182|) (< |k#95#182| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys) |k#95#182|))))
)))
(let ((anon347_Then_assertion (and
    (forall( (|k#92#186| Int))(=> (and (<= 0 |k#92#186|) (< |k#92#186| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys) |k#92#186|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 this AVLTreeNode.key))))
)))
(let ((anon377_Then_assertion (and
    (forall( (|k#104#201| Int))(=> (and (<= 0 |k#104#201|) (< |k#104#201| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys) |k#104#201|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 this AVLTreeNode.key))))
)))
(let ((anon384_Then_assertion (and
    (forall( (|k#92#206| Int))(=> (and (<= 0 |k#92#206|) (< |k#92#206| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys) |k#92#206|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 this AVLTreeNode.key))))
)))
(let ((anon348_Then_assertion (and
    (forall( (|k#93#187| Int))(=> (and (<= 0 |k#93#187|) (< |k#93#187| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys) |k#93#187|))))
)))
(let ((anon221@1_assertion (and
    (forall( (|k#105#202| Int))(=> (and (<= 0 |k#105#202|) (< |k#105#202| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys) |k#105#202|))))
)))
(let ((anon385_Then_assertion (and
    (forall( (|k#93#207| Int))(=> (and (<= 0 |k#93#207|) (< |k#93#207| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys) |k#93#207|))))
)))
(let ((anon327_Then@1_assertion (and
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.height) perm$R) 0)
)))
(let ((anon328_Then@1_assertion (and
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.height) perm$R) 0)
)))
(let ((anon364_Then@1_assertion (and
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.height) perm$R) 0)
)))
(let ((anon365_Then@1_assertion (and
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.height) perm$R) 0)
)))
(let ((anon120@1_assertion (and
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_351@2 this AVLTreeNode.right) perm$R) 0)
)))
(let ((anon194@3_assertion (and
    (> (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@42 this AVLTreeNode.left) perm$R) 0)
)))
(let ((anon118_assertion (and
    (CanWrite$ref$ Mask@76 this AVLTreeNode.left)
)))
(let ((anon145_assertion (and
    (= (- (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height))) 2)
)))
(let ((anon194_assertion (and
    (CanWrite$ref$ Mask@42 this AVLTreeNode.right)
)))
(let ((anon221@2_assertion (and
    (= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height)) (- 0 2))
)))
(let ((anon259@1_assertion (and
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 r@10@0 AVLTreeNode.keys) k@9)
)))
(let ((anon263_assertion (and
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 r@10@0 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.height)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 r@10@0 AVLTreeNode.height) (+ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.height) 1)))
)))
(let ((anon396_Then_assertion (and
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 r@10@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys))
)))
(let ((anon397_Then_assertion (and
    (= (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 r@10@0 AVLTreeNode.keys)) (+ (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys)) 1))
)))
(let ((anon398_Then_assertion (and
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 r@10@0 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.height))
)))
(let ((anon85@1_assertion (and
    (>= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height))) (- 0 1))
)))
(let ((anon238@1_assertion (and
    (>= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height))) (- 0 1))
)))
(let ((anon162@1_assertion (and
    (>= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height))) (- 0 1))
)))
(let ((anon85_assertion (and
    (<= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height))) 1)
)))
(let ((anon238_assertion (and
    (<= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height))) 1)
)))
(let ((anon162_assertion (and
    (<= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height))) 1)
)))
(let ((anon85@5_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@0 this AVLTreeNode.height) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@0 this AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@0 this AVLTreeNode.height) perm$N)))
)))
(let ((anon315_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon316_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
)))
(let ((anon318_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$N)))
)))
(let ((anon320_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon85@13_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@4 this AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@4 this AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@4 this AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon311_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
)))
(let ((anon313_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$N)))
)))
(let ((anon111@3_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@1 this@172@0 AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@1 this@172@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@1 this@172@0 AVLTreeNode.height) perm$N)))
)))
(let ((anon111@5_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@2 this@172@0 AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@2 this@172@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@2 this@172@0 AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon329_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
)))
(let ((anon331_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
)))
(let ((anon145@4_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@0 this AVLTreeNode.height) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@0 this AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@0 this AVLTreeNode.height) perm$N)))
)))
(let ((anon344_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height) perm$N)))
)))
(let ((anon346_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon145@12_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@4 this AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@4 this AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@4 this AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon145@14_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
)))
(let ((anon147@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) perm$N)))
)))
(let ((anon147@5_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon342_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
)))
(let ((anon162@5_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@0 this AVLTreeNode.height) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@0 this AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@0 this AVLTreeNode.height) perm$N)))
)))
(let ((anon353_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon354_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
)))
(let ((anon356_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height) perm$N)))
)))
(let ((anon358_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon162@13_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@4 this AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@4 this AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@4 this AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon349_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
)))
(let ((anon351_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) perm$N)))
)))
(let ((anon187@3_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@1 this@192@0 AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@1 this@192@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@1 this@192@0 AVLTreeNode.height) perm$N)))
)))
(let ((anon187@5_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@2 this@192@0 AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@2 this@192@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@2 this@192@0 AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon366_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
)))
(let ((anon368_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
)))
(let ((anon221@6_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@0 this AVLTreeNode.height) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@0 this AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@0 this AVLTreeNode.height) perm$N)))
)))
(let ((anon382_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon231@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
)))
(let ((anon233@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height) perm$N)))
)))
(let ((anon233@5_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon221@14_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@4 this AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@4 this AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@4 this AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon378_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
)))
(let ((anon380_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height) perm$N)))
)))
(let ((anon238@5_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@0 this AVLTreeNode.height) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@0 this AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@0 this AVLTreeNode.height) perm$N)))
)))
(let ((anon390_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon391_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
)))
(let ((anon393_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height) perm$N)))
)))
(let ((anon395_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon238@13_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@4 this AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@4 this AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@4 this AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon386_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
)))
(let ((anon388_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height) perm$N)))
)))
(let ((anon267@3_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_500@1 r@10@0 AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_500@1 r@10@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_500@1 r@10@0 AVLTreeNode.height) perm$N)))
)))
(let ((anon267@5_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_500@2 r@10@0 AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_500@2 r@10@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_500@2 r@10@0 AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon322_Else@4_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@172@0 AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@172@0 AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@172@0 AVLTreeNode.valid) perm$N)))
)))
(let ((anon359_Else@4_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@192@0 AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@192@0 AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@192@0 AVLTreeNode.valid) perm$N)))
)))
(let ((anon221@4_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@52 this AVLTreeNode.key) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@52 this AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@52 this AVLTreeNode.key) perm$N)))
)))
(let ((anon238@3_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@52 this AVLTreeNode.key) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@52 this AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@52 this AVLTreeNode.key) perm$N)))
)))
(let ((anon145@2_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@86 this AVLTreeNode.key) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@86 this AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@86 this AVLTreeNode.key) perm$N)))
)))
(let ((anon162@3_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@86 this AVLTreeNode.key) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@86 this AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@86 this AVLTreeNode.key) perm$N)))
)))
(let ((anon265@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@99 r@10@0 AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@99 r@10@0 AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@99 r@10@0 AVLTreeNode.valid) perm$N)))
)))
(let ((anon145@6_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_367@1 this AVLTreeNode.left) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_367@1 this AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_367@1 this AVLTreeNode.left) perm$N)))
)))
(let ((anon145@8_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_367@2 this AVLTreeNode.right) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_367@2 this AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_367@2 this AVLTreeNode.right) perm$N)))
)))
(let ((anon162@7_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_390@1 this AVLTreeNode.left) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_390@1 this AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_390@1 this AVLTreeNode.left) perm$N)))
)))
(let ((anon162@9_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_390@2 this AVLTreeNode.right) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_390@2 this AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_390@2 this AVLTreeNode.right) perm$N)))
)))
(let ((anon221@8_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_459@1 this AVLTreeNode.left) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_459@1 this AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_459@1 this AVLTreeNode.left) perm$N)))
)))
(let ((anon221@10_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_459@2 this AVLTreeNode.right) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_459@2 this AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_459@2 this AVLTreeNode.right) perm$N)))
)))
(let ((anon238@7_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_482@1 this AVLTreeNode.left) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_482@1 this AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_482@1 this AVLTreeNode.left) perm$N)))
)))
(let ((anon238@9_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_482@2 this AVLTreeNode.right) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_482@2 this AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_482@2 this AVLTreeNode.right) perm$N)))
)))
(let ((anon319_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
)))
(let ((anon85@11_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@3 this AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@3 this AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@3 this AVLTreeNode.keys) perm$N)))
)))
(let ((anon314_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
)))
(let ((anon111@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_338@0 this@172@0 AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_338@0 this@172@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_338@0 this@172@0 AVLTreeNode.keys) perm$N)))
)))
(let ((anon345_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
)))
(let ((anon145@10_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@3 this AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@3 this AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@3 this AVLTreeNode.keys) perm$N)))
)))
(let ((anon147@3_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
)))
(let ((anon357_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
)))
(let ((anon162@11_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@3 this AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@3 this AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@3 this AVLTreeNode.keys) perm$N)))
)))
(let ((anon352_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
)))
(let ((anon187@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_430@0 this@192@0 AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_430@0 this@192@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_430@0 this@192@0 AVLTreeNode.keys) perm$N)))
)))
(let ((anon233@3_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
)))
(let ((anon221@12_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@3 this AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@3 this AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@3 this AVLTreeNode.keys) perm$N)))
)))
(let ((anon381_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
)))
(let ((anon394_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
)))
(let ((anon238@11_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@3 this AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@3 this AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@3 this AVLTreeNode.keys) perm$N)))
)))
(let ((anon389_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
)))
(let ((anon267@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_500@0 r@10@0 AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_500@0 r@10@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_500@0 r@10@0 AVLTreeNode.keys) perm$N)))
)))
(let ((anon221_assertion (and
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) null))
)))
(let ((anon322_Else@2_assertion (and
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
)))
(let ((anon339_Then@1_assertion (and
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) null))
)))
(let ((anon359_Else@2_assertion (and
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))
)))
(let ((anon267@6 (=> (and true
    (= exhaleMask@_500@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_500@2 r@10@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_500@2 r@10@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_500@2 r@10@0 AVLTreeNode.balanceFactor) perm$R) (* (- 50) Permission$denominator)))))
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_500@2 r@10@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_500@2 r@10@0 AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodExhaleState exhaleHeap@_499@0 Heap@6 exhaleMask@_500@3 SecMask)
    (IsGoodMask exhaleMask@_500@3)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_500@2 r@10@0 AVLTreeNode.balanceFactor) perm$R) (* 50 Permission$denominator)))
    (wf exhaleHeap@_499@0 exhaleMask@_500@3 SecMask)
    (wf Heap@6 exhaleMask@_500@3 SecMask)
  )
    anon267@6_assertion
)))
(let ((anon267@4 (=> (and true
    (= exhaleMask@_500@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_500@1 r@10@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_500@1 r@10@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_500@1 r@10@0 AVLTreeNode.height) perm$R) (* (- 50) Permission$denominator)))))
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_500@1 r@10@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_500@1 r@10@0 AVLTreeNode.height) perm$N)))
    (IsGoodMask exhaleMask@_500@2)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_500@1 r@10@0 AVLTreeNode.height) perm$R) (* 50 Permission$denominator)))
    (wf Heap@6 exhaleMask@_500@2 SecMask)
  )(and 
    anon267@5_assertion
    anon267@6
))))
(let ((anon267@2 (=> (and true
    (= (* (- 50) Permission$denominator) (* (- 1) (* 50 Permission$denominator)))
    (= exhaleMask@_500@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_500@0 r@10@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_500@0 r@10@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_500@0 r@10@0 AVLTreeNode.keys) perm$R) (* (- 50) Permission$denominator)))))
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_500@0 r@10@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_500@0 r@10@0 AVLTreeNode.keys) perm$N)))
    (IsGoodMask exhaleMask@_500@1)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_500@0 r@10@0 AVLTreeNode.keys) perm$R) (* 50 Permission$denominator)))
    (wf Heap@6 exhaleMask@_500@1 SecMask)
  )(and 
    anon267@3_assertion
    anon267@4
))))
(let ((anon267 (=> (and true
    (< 0 (* 50 Permission$denominator))
    (= (* 50 Permission$denominator) (Fractions 50))
    (IsGoodMask exhaleMask@_500@0)
    (wf Heap@6 exhaleMask@_500@0 SecMask)
    (wf Heap@6 Mask@99 SecMask)
  )(and 
    anon267@1_assertion
    anon267@2
))))
(let ((anon399_Else (=> (and true
    (CanRead$Int$ exhaleMask@_500@0 SecMask r@10@0 AVLTreeNode.valid)
    (not $@condition_$158)
  )
    anon267
)))
(let ((anon399_Then (=> (and true
    $@condition_$158
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 r@10@0 AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_499@0 r@10@0 AVLTreeNode.valid))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 r@10@0 AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_499@0 r@10@0 AVLTreeNode.valid)))
    (not (CanRead$Int$ exhaleMask@_500@0 SecMask r@10@0 AVLTreeNode.valid))
  )
    anon267
)))
(let ((anon265@2 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_500@0 r@10@0 AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@99 r@10@0 AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_500@0 r@10@0 AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_500@0 r@10@0 AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@99 r@10@0 AVLTreeNode.valid) perm$R) (* (- 100) Permission$denominator)))
    (= exhaleMask@_500@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@99 r@10@0 AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_500@0 r@10@0 AVLTreeNode.valid)))
    (=> (= (* 100 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@99 r@10@0 AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_500@0 r@10@0 AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@99 r@10@0 AVLTreeNode.valid) perm$R) (Fractions 100)))
  )
    (and anon399_Else anon399_Then)
)))
(let ((anon265 (=> (and true
  )(and 
    anon265@1_assertion
    anon265@2
))))
(let ((anon398_Else (=> (and true
    (not $@condition_$157)
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) k@9))
  )
    anon265
)))
(let ((anon398_Then@1 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 r@10@0 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.height))
  )
    anon265
)))
(let ((anon398_Then (=> (and true
    $@condition_$157
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) k@9)
  )(and 
    anon398_Then_assertion
    anon398_Then@1
))))
(let ((anon263@1 (=> (and true
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 r@10@0 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.height)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 r@10@0 AVLTreeNode.height) (+ 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.height))))
  )
    (and anon398_Else anon398_Then)
)))
(let ((anon263 (=> (and true
  )(and 
    anon263_assertion
    anon263@1
))))
(let ((anon397_Else (=> (and true
    (not $@condition_$155)
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) k@9)
  )
    anon263
)))
(let ((anon397_Then@1 (=> (and true
    (= (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 r@10@0 AVLTreeNode.keys)) (+ (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys)) 1))
  )
    anon263
)))
(let ((anon397_Then (=> (and true
    $@condition_$155
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) k@9))
  )(and 
    anon397_Then_assertion
    anon397_Then@1
))))
(let (($branchMerge_53 (=> (and true
  )
    (and anon397_Else anon397_Then)
)))
(let ((anon396_Else (=> (and true
    (not $@condition_$154)
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) k@9))
  )
    $branchMerge_53
)))
(let ((anon396_Then@1 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 r@10@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 r@10@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 r@10@0 AVLTreeNode.keys))
  )
    $branchMerge_53
)))
(let ((anon396_Then (=> (and true
    $@condition_$154
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) k@9)
  )(and 
    anon396_Then_assertion
    anon396_Then@1
))))
(let ((anon259@4 (=> (and true
    (forall( (|i#83#211| Int))(=> (and (< |i#83#211| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 r@10@0 AVLTreeNode.keys))) (<= 0 |i#83#211|)) (or (= (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 r@10@0 AVLTreeNode.keys) |i#83#211|) k@9) (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 r@10@0 AVLTreeNode.keys) |i#83#211|)))))
  )
    (and anon396_Else anon396_Then)
)))
(let ((anon259@3 (=> (and true
    (forall( (|i#82#210| Int))(=> (and (< |i#82#210| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys))) (<= 0 |i#82#210|)) (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 r@10@0 AVLTreeNode.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys) |i#82#210|))))
  )(and 
    anon259@3_assertion
    anon259@4
))))
(let ((anon259@2 (=> (and true
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 r@10@0 AVLTreeNode.keys) k@9)
  )(and 
    anon259@2_assertion
    anon259@3
))))
(let ((anon259 (=> (and true
    (not (= r@10@0 null))
  )(and 
    anon259@1_assertion
    anon259@2
))))
(let (($join_$@condition_$26 (=> (and true
  )
    anon259
)))
(let ((anon105 (=> (and true
    (= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_296@0 this AVLTreeNode.balanceFactor))
    (= (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height)) 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_296@0 this AVLTreeNode.height))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@95 r@10@0 AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@21 r@10@0 AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@95 r@10@0 AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@96 r@10@0 AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@95 r@10@0 AVLTreeNode.height) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@96 r@10@0 AVLTreeNode.height) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@98 r@10@0 AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@97 r@10@0 AVLTreeNode.balanceFactor) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@98 r@10@0 AVLTreeNode.balanceFactor) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@97 r@10@0 AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@96 r@10@0 AVLTreeNode.keys) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@97 r@10@0 AVLTreeNode.keys) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_296@0 r@10@0 AVLTreeNode.balanceFactor) (+ (ite$Int$ $@bf 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@10@0 AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_1 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@10@0 AVLTreeNode.right) AVLTreeNode.height)))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_296@0 r@10@0 AVLTreeNode.height) (ite$Int$ $@bf_53 (+ (ite$Int$ $@bf 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@10@0 AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ $@bf_1 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@10@0 AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_296@0 r@10@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ $@bf Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@10@0 AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ k@9)) (ite$Seq$Int$$ $@bf_1 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@10@0 AVLTreeNode.right) AVLTreeNode.keys))))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@95 r@10@0 AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@21 r@10@0 AVLTreeNode.valid) perm$R) (Fractions 100)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@96 r@10@0 AVLTreeNode.height) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@95 r@10@0 AVLTreeNode.height) perm$R) (Fractions 50)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@98 r@10@0 AVLTreeNode.balanceFactor) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@97 r@10@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@97 r@10@0 AVLTreeNode.keys) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@96 r@10@0 AVLTreeNode.keys) perm$R) (Fractions 50)))
    (= exhaleHeap@_296@0 Heap@6)
    (= k@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 r@10@0 AVLTreeNode.key))
    (= Mask@95 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@21 r@10@0 AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@95 r@10@0 AVLTreeNode.valid)))
    (= Mask@96 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@95 r@10@0 AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@96 r@10@0 AVLTreeNode.height)))
    (= Mask@97 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@96 r@10@0 AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@97 r@10@0 AVLTreeNode.keys)))
    (= Mask@98 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@97 r@10@0 AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@98 r@10@0 AVLTreeNode.balanceFactor)))
    (= Mask@98 Mask@99)
    (= r@10@0 this)
    (IsGoodExhaleState exhaleHeap@_296@0 Heap@1 exhaleMask@_297@21 SecMask)
    (IsGoodMask exhaleMask@_297@21)
    (IsGoodMask Mask@95)
    (IsGoodMask Mask@96)
    (IsGoodMask Mask@97)
    (IsGoodMask Mask@98)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_296@0 r@10@0 AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_296@0 r@10@0 AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_296@0 r@10@0 AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_296@0 r@10@0 AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@95 r@10@0 AVLTreeNode.height) perm$R) (* 100 Permission$denominator)))
    (not (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@96 r@10@0 AVLTreeNode.keys) perm$R) (* 100 Permission$denominator)))
    (not (= null r@10@0))
    (not (= r@10@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@10@0 AVLTreeNode.left)))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_296@0 r@10@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_296@0 r@10@0 AVLTreeNode.keys))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_296@0 this AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys))))
    (wf exhaleHeap@_296@0 exhaleMask@_297@21 SecMask)
    (wf exhaleHeap@_296@0 Mask@95 SecMask)
    (wf exhaleHeap@_296@0 Mask@96 SecMask)
    (wf exhaleHeap@_296@0 Mask@97 SecMask)
    (wf exhaleHeap@_296@0 Mask@98 SecMask)
  )
    anon259
)))
(let (($join_2 (=> (and true
  )
    $join_$@condition_$26
)))
(let (($join_2@1 (=> (and true
  )
    $join_$@condition_$26
)))
(let ((anon316_Else (=> (and true
    (= exhaleMask@_297@13 exhaleMask@_297@15)
    (= exhaleMask@_297@13 exhaleMask@_297@17)
    (= exhaleMask@_297@13 exhaleMask@_297@19)
    (= exhaleMask@_297@13 exhaleMask@_297@21)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right))
    (not $@condition_$49)
    (not $@condition_$52)
    (not $@condition_$58)
    (not $@condition_$64)
  )
    anon105
)))
(let ((anon320_Then@2 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (* (- 50) Permission$denominator))))
    (= exhaleMask@_297@20 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor)))
    (= exhaleMask@_297@20 exhaleMask@_297@21)
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_297@20)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (wf Heap@1 exhaleMask@_297@20 SecMask)
  )
    anon105
)))
(let ((anon233@6 (=> (and true
    (= (* (- 50) Permission$denominator) (* (- 1) (Fractions 50)))
    (= (dtype r@200@0) AVLTreeNode@t)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (* (- 50) Permission$denominator))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@57 r@10@0 AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@17 r@10@0 AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@57 r@10@0 AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@58 r@10@0 AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@57 r@10@0 AVLTreeNode.height) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@58 r@10@0 AVLTreeNode.height) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@60 r@10@0 AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@59 r@10@0 AVLTreeNode.balanceFactor) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@60 r@10@0 AVLTreeNode.balanceFactor) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@59 r@10@0 AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@58 r@10@0 AVLTreeNode.keys) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@59 r@10@0 AVLTreeNode.keys) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_458@0 r@10@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ $@bf_3 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 this AVLTreeNode.key))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@57 r@10@0 AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@17 r@10@0 AVLTreeNode.valid) perm$R) (Fractions 100)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@58 r@10@0 AVLTreeNode.height) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@57 r@10@0 AVLTreeNode.height) perm$R) (Fractions 50)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@60 r@10@0 AVLTreeNode.balanceFactor) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@59 r@10@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@59 r@10@0 AVLTreeNode.keys) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@58 r@10@0 AVLTreeNode.keys) perm$R) (Fractions 50)))
    (= exhaleHeap@_458@0 Heap@6)
    (= exhaleMask@_459@17 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor)))
    (= Mask@57 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@17 r@10@0 AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@57 r@10@0 AVLTreeNode.valid)))
    (= Mask@58 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@57 r@10@0 AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@58 r@10@0 AVLTreeNode.height)))
    (= Mask@59 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@58 r@10@0 AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@59 r@10@0 AVLTreeNode.keys)))
    (= Mask@60 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@59 r@10@0 AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@60 r@10@0 AVLTreeNode.balanceFactor)))
    (= Mask@60 Mask@99)
    (= r@10@0 r@200@0)
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodExhaleState exhaleHeap@_458@0 exhaleHeap@_442@0 exhaleMask@_459@17 SecMask)
    (IsGoodMask exhaleMask@_459@17)
    (IsGoodMask Mask@57)
    (IsGoodMask Mask@58)
    (IsGoodMask Mask@59)
    (IsGoodMask Mask@60)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_458@0 r@10@0 AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_458@0 r@10@0 AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_458@0 r@10@0 AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_458@0 r@10@0 AVLTreeNode.keys)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (not (= null r@10@0))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_458@0 r@10@0 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_458@0 r@10@0 AVLTreeNode.height) (+ 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height))))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_458@0 r@10@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_458@0 r@10@0 AVLTreeNode.keys))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_458@0 r@200@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 this AVLTreeNode.key))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys)))
    (wf exhaleHeap@_442@0 exhaleMask@_459@17 SecMask)
    (wf exhaleHeap@_458@0 exhaleMask@_459@17 SecMask)
    (wf exhaleHeap@_458@0 Mask@57 SecMask)
    (wf exhaleHeap@_458@0 Mask@58 SecMask)
    (wf exhaleHeap@_458@0 Mask@59 SecMask)
    (wf exhaleHeap@_458@0 Mask@60 SecMask)
  )
    $join_2
)))
(let ((anon258 (=> (and true
    (= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_481@0 this AVLTreeNode.balanceFactor))
    (= (= true $@bf_55) (< (ite$Int$ $@bf_5 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height)) (ite$Int$ $@bf_3 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height))))
    (= (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height)) 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_481@0 this AVLTreeNode.height))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@53 r@10@0 AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@21 r@10@0 AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@53 r@10@0 AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@54 r@10@0 AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@53 r@10@0 AVLTreeNode.height) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@54 r@10@0 AVLTreeNode.height) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@56 r@10@0 AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@55 r@10@0 AVLTreeNode.balanceFactor) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@56 r@10@0 AVLTreeNode.balanceFactor) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@55 r@10@0 AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@54 r@10@0 AVLTreeNode.keys) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@55 r@10@0 AVLTreeNode.keys) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_481@0 r@10@0 AVLTreeNode.balanceFactor) (+ (ite$Int$ $@bf_3 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 r@10@0 AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_5 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 r@10@0 AVLTreeNode.right) AVLTreeNode.height)))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_481@0 r@10@0 AVLTreeNode.height) (ite$Int$ $@bf_55 (+ (ite$Int$ $@bf_3 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 r@10@0 AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ $@bf_5 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 r@10@0 AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_481@0 r@10@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ $@bf_3 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 r@10@0 AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 r@10@0 AVLTreeNode.key))) (ite$Seq$Int$$ $@bf_5 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 r@10@0 AVLTreeNode.right) AVLTreeNode.keys))))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@53 r@10@0 AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@21 r@10@0 AVLTreeNode.valid) perm$R) (Fractions 100)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@54 r@10@0 AVLTreeNode.height) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@53 r@10@0 AVLTreeNode.height) perm$R) (Fractions 50)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@56 r@10@0 AVLTreeNode.balanceFactor) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@55 r@10@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@55 r@10@0 AVLTreeNode.keys) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@54 r@10@0 AVLTreeNode.keys) perm$R) (Fractions 50)))
    (= exhaleHeap@_481@0 Heap@6)
    (= Mask@53 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@21 r@10@0 AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@53 r@10@0 AVLTreeNode.valid)))
    (= Mask@54 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@53 r@10@0 AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@54 r@10@0 AVLTreeNode.height)))
    (= Mask@55 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@54 r@10@0 AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@55 r@10@0 AVLTreeNode.keys)))
    (= Mask@56 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@55 r@10@0 AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@56 r@10@0 AVLTreeNode.balanceFactor)))
    (= Mask@56 Mask@99)
    (= r@10@0 this)
    (IsGoodExhaleState exhaleHeap@_481@0 exhaleHeap@_442@0 exhaleMask@_482@21 SecMask)
    (IsGoodMask exhaleMask@_482@21)
    (IsGoodMask Mask@53)
    (IsGoodMask Mask@54)
    (IsGoodMask Mask@55)
    (IsGoodMask Mask@56)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_481@0 r@10@0 AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_481@0 r@10@0 AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_481@0 r@10@0 AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_481@0 r@10@0 AVLTreeNode.keys)))
    (not (= null r@10@0))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_481@0 r@10@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_481@0 r@10@0 AVLTreeNode.keys))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_481@0 this AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 this AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys))))
    (wf exhaleHeap@_481@0 exhaleMask@_482@21 SecMask)
    (wf exhaleHeap@_481@0 Mask@53 SecMask)
    (wf exhaleHeap@_481@0 Mask@54 SecMask)
    (wf exhaleHeap@_481@0 Mask@55 SecMask)
    (wf exhaleHeap@_481@0 Mask@56 SecMask)
  )
    $join_2
)))
(let ((anon157 (=> (and true
    (= (dtype r@180@0) AVLTreeNode@t)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@91 r@10@0 AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@17 r@10@0 AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@91 r@10@0 AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@92 r@10@0 AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@91 r@10@0 AVLTreeNode.height) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@92 r@10@0 AVLTreeNode.height) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@94 r@10@0 AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@93 r@10@0 AVLTreeNode.balanceFactor) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@94 r@10@0 AVLTreeNode.balanceFactor) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@93 r@10@0 AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@92 r@10@0 AVLTreeNode.keys) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@93 r@10@0 AVLTreeNode.keys) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_366@0 r@10@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 this AVLTreeNode.key))) (ite$Seq$Int$$ $@bf_2 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys))))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@91 r@10@0 AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@17 r@10@0 AVLTreeNode.valid) perm$R) (Fractions 100)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@92 r@10@0 AVLTreeNode.height) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@91 r@10@0 AVLTreeNode.height) perm$R) (Fractions 50)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@94 r@10@0 AVLTreeNode.balanceFactor) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@93 r@10@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@93 r@10@0 AVLTreeNode.keys) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@92 r@10@0 AVLTreeNode.keys) perm$R) (Fractions 50)))
    (= exhaleHeap@_366@0 Heap@6)
    (= Mask@91 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@17 r@10@0 AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@91 r@10@0 AVLTreeNode.valid)))
    (= Mask@92 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@91 r@10@0 AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@92 r@10@0 AVLTreeNode.height)))
    (= Mask@93 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@92 r@10@0 AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@93 r@10@0 AVLTreeNode.keys)))
    (= Mask@94 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@93 r@10@0 AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@94 r@10@0 AVLTreeNode.balanceFactor)))
    (= Mask@94 Mask@99)
    (= r@10@0 r@180@0)
    (IsGoodExhaleState exhaleHeap@_366@0 exhaleHeap@_350@0 exhaleMask@_367@17 SecMask)
    (IsGoodMask exhaleMask@_367@17)
    (IsGoodMask Mask@91)
    (IsGoodMask Mask@92)
    (IsGoodMask Mask@93)
    (IsGoodMask Mask@94)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_366@0 r@10@0 AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_366@0 r@10@0 AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_366@0 r@10@0 AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_366@0 r@10@0 AVLTreeNode.keys)))
    (not (= null r@10@0))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_366@0 r@10@0 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_366@0 r@10@0 AVLTreeNode.height) (+ 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height))))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_366@0 r@10@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_366@0 r@10@0 AVLTreeNode.keys))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_366@0 r@180@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 this AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys))))
    (wf exhaleHeap@_366@0 exhaleMask@_367@17 SecMask)
    (wf exhaleHeap@_366@0 Mask@91 SecMask)
    (wf exhaleHeap@_366@0 Mask@92 SecMask)
    (wf exhaleHeap@_366@0 Mask@93 SecMask)
    (wf exhaleHeap@_366@0 Mask@94 SecMask)
  )
    $join_2@1
)))
(let ((anon182 (=> (and true
    (= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_389@0 this AVLTreeNode.balanceFactor))
    (= (= true $@bf_54) (< (ite$Int$ $@bf_2 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height)) (ite$Int$ $@bf_4 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height))))
    (= (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height)) 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_389@0 this AVLTreeNode.height))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@87 r@10@0 AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@21 r@10@0 AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@87 r@10@0 AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@88 r@10@0 AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@87 r@10@0 AVLTreeNode.height) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@88 r@10@0 AVLTreeNode.height) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@90 r@10@0 AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@89 r@10@0 AVLTreeNode.balanceFactor) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@90 r@10@0 AVLTreeNode.balanceFactor) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@89 r@10@0 AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@88 r@10@0 AVLTreeNode.keys) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@89 r@10@0 AVLTreeNode.keys) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_389@0 r@10@0 AVLTreeNode.balanceFactor) (+ (ite$Int$ $@bf_4 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 r@10@0 AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_2 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 r@10@0 AVLTreeNode.right) AVLTreeNode.height)))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_389@0 r@10@0 AVLTreeNode.height) (ite$Int$ $@bf_54 (+ (ite$Int$ $@bf_4 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 r@10@0 AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ $@bf_2 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 r@10@0 AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_389@0 r@10@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ $@bf_4 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 r@10@0 AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 r@10@0 AVLTreeNode.key))) (ite$Seq$Int$$ $@bf_2 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 r@10@0 AVLTreeNode.right) AVLTreeNode.keys))))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@87 r@10@0 AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@21 r@10@0 AVLTreeNode.valid) perm$R) (Fractions 100)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@88 r@10@0 AVLTreeNode.height) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@87 r@10@0 AVLTreeNode.height) perm$R) (Fractions 50)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@90 r@10@0 AVLTreeNode.balanceFactor) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@89 r@10@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@89 r@10@0 AVLTreeNode.keys) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@88 r@10@0 AVLTreeNode.keys) perm$R) (Fractions 50)))
    (= exhaleHeap@_389@0 Heap@6)
    (= Mask@87 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@21 r@10@0 AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@87 r@10@0 AVLTreeNode.valid)))
    (= Mask@88 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@87 r@10@0 AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@88 r@10@0 AVLTreeNode.height)))
    (= Mask@89 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@88 r@10@0 AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@89 r@10@0 AVLTreeNode.keys)))
    (= Mask@90 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@89 r@10@0 AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@90 r@10@0 AVLTreeNode.balanceFactor)))
    (= Mask@90 Mask@99)
    (= r@10@0 this)
    (IsGoodExhaleState exhaleHeap@_389@0 exhaleHeap@_350@0 exhaleMask@_390@21 SecMask)
    (IsGoodMask exhaleMask@_390@21)
    (IsGoodMask Mask@87)
    (IsGoodMask Mask@88)
    (IsGoodMask Mask@89)
    (IsGoodMask Mask@90)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_389@0 r@10@0 AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_389@0 r@10@0 AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_389@0 r@10@0 AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_389@0 r@10@0 AVLTreeNode.keys)))
    (not (= null r@10@0))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_389@0 r@10@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_389@0 r@10@0 AVLTreeNode.keys))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_389@0 this AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 this AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys))))
    (wf exhaleHeap@_389@0 exhaleMask@_390@21 SecMask)
    (wf exhaleHeap@_389@0 Mask@87 SecMask)
    (wf exhaleHeap@_389@0 Mask@88 SecMask)
    (wf exhaleHeap@_389@0 Mask@89 SecMask)
    (wf exhaleHeap@_389@0 Mask@90 SecMask)
  )
    $join_2@1
)))
(let ((anon319_Then@2 (=> (and true
    $@condition_$64
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R) (* (- 50) Permission$denominator))))
    (= exhaleMask@_297@18 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys)))
    (= exhaleMask@_297@18 exhaleMask@_297@19)
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
    (IsGoodMask exhaleMask@_297@18)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))
    (wf Heap@1 exhaleMask@_297@18 SecMask)
  )(and 
    anon320_Then@1_assertion
    anon320_Then@2
))))
(let ((anon233@4 (=> (and true
    (= exhaleMask@_459@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R) (* (- 50) Permission$denominator)))))
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
    (IsGoodMask exhaleMask@_459@16)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R) (* 50 Permission$denominator)))
    (wf exhaleHeap@_442@0 exhaleMask@_459@16 SecMask)
  )(and 
    anon233@5_assertion
    anon233@6
))))
(let ((anon393_Else (=> (and true
    (= exhaleMask@_482@15 exhaleMask@_482@17)
    (= exhaleMask@_482@15 exhaleMask@_482@19)
    (= exhaleMask@_482@15 exhaleMask@_482@21)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right))
    (not $@condition_$143)
    (not $@condition_$148)
    (not $@condition_$152)
  )
    anon258
)))
(let ((anon395_Then@2 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (* (- 50) Permission$denominator))))
    (= exhaleMask@_482@20 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor)))
    (= exhaleMask@_482@20 exhaleMask@_482@21)
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_482@20)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (wf exhaleHeap@_442@0 exhaleMask@_482@20 SecMask)
  )
    anon258
)))
(let ((anon344_Else (=> (and true
    (= exhaleMask@_367@11 exhaleMask@_367@13)
    (= exhaleMask@_367@11 exhaleMask@_367@15)
    (= exhaleMask@_367@11 exhaleMask@_367@17)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right))
    (not $@condition_$114)
    (not $@condition_$127)
    (not $@condition_$133)
  )
    anon157
)))
(let ((anon346_Then@2 (=> (and true
    (= exhaleMask@_367@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (* (- 50) Permission$denominator)))))
    (= exhaleMask@_367@16 exhaleMask@_367@17)
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_367@16)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (wf exhaleHeap@_350@0 exhaleMask@_367@16 SecMask)
  )
    anon157
)))
(let ((anon356_Else (=> (and true
    (= exhaleMask@_390@15 exhaleMask@_390@17)
    (= exhaleMask@_390@15 exhaleMask@_390@19)
    (= exhaleMask@_390@15 exhaleMask@_390@21)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right))
    (not $@condition_$141)
    (not $@condition_$146)
    (not $@condition_$150)
  )
    anon182
)))
(let ((anon358_Then@2 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (* (- 50) Permission$denominator))))
    (= exhaleMask@_390@20 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor)))
    (= exhaleMask@_390@20 exhaleMask@_390@21)
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_390@20)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (wf exhaleHeap@_350@0 exhaleMask@_390@20 SecMask)
  )
    anon182
)))
(let ((anon318_Then@2 (=> (and true
    $@condition_$58
    (= (* (- 50) Permission$denominator) (* (- 1) (Fractions 50)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (* (- 50) Permission$denominator))))
    (= exhaleMask@_297@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height)))
    (= exhaleMask@_297@16 exhaleMask@_297@17)
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$N)))
    (IsGoodMask exhaleMask@_297@16)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))
    (wf Heap@1 exhaleMask@_297@16 SecMask)
  )(and 
    anon319_Then@1_assertion
    anon319_Then@2
))))
(let ((anon233@2 (=> (and true
    (= (* (- 50) Permission$denominator) (* (- 1) (* 50 Permission$denominator)))
    (= exhaleMask@_459@15 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (* (- 50) Permission$denominator)))))
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height) perm$N)))
    (IsGoodMask exhaleMask@_459@15)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (* 50 Permission$denominator)))
    (wf exhaleHeap@_442@0 exhaleMask@_459@15 SecMask)
  )(and 
    anon233@3_assertion
    anon233@4
))))
(let ((anon394_Then@2 (=> (and true
    $@condition_$152
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R) (* (- 50) Permission$denominator))))
    (= exhaleMask@_482@18 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys)))
    (= exhaleMask@_482@18 exhaleMask@_482@19)
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
    (IsGoodMask exhaleMask@_482@18)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))
    (wf exhaleHeap@_442@0 exhaleMask@_482@18 SecMask)
  )(and 
    anon395_Then@1_assertion
    anon395_Then@2
))))
(let ((anon345_Then@2 (=> (and true
    $@condition_$133
    (= exhaleMask@_367@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R) (* (- 50) Permission$denominator)))))
    (= exhaleMask@_367@14 exhaleMask@_367@15)
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
    (IsGoodMask exhaleMask@_367@14)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))
    (wf exhaleHeap@_350@0 exhaleMask@_367@14 SecMask)
  )(and 
    anon346_Then@1_assertion
    anon346_Then@2
))))
(let ((anon357_Then@2 (=> (and true
    $@condition_$150
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R) (* (- 50) Permission$denominator))))
    (= exhaleMask@_390@18 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys)))
    (= exhaleMask@_390@18 exhaleMask@_390@19)
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
    (IsGoodMask exhaleMask@_390@18)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))
    (wf exhaleHeap@_350@0 exhaleMask@_390@18 SecMask)
  )(and 
    anon358_Then@1_assertion
    anon358_Then@2
))))
(let ((anon98 (=> (and true
    $@condition_$52
    (= exhaleMask@_297@14 exhaleMask@_297@15)
    (IsGoodMask exhaleMask@_297@14)
    (wf Heap@1 exhaleMask@_297@14 SecMask)
  )(and 
    anon318_Then@1_assertion
    anon318_Then@2
))))
(let ((anon233 (=> (and true
    (< 0 (* 50 Permission$denominator))
    (= (* 50 Permission$denominator) (Fractions 50))
    (IsGoodMask exhaleMask@_459@14)
    (wf exhaleHeap@_442@0 exhaleMask@_459@14 SecMask)
  )(and 
    anon233@1_assertion
    anon233@2
))))
(let ((anon393_Then@2 (=> (and true
    $@condition_$148
    (= (* (- 50) Permission$denominator) (* (- 1) (Fractions 50)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (* (- 50) Permission$denominator))))
    (= exhaleMask@_482@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height)))
    (= exhaleMask@_482@16 exhaleMask@_482@17)
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height) perm$N)))
    (IsGoodMask exhaleMask@_482@16)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))
    (wf exhaleHeap@_442@0 exhaleMask@_482@16 SecMask)
  )(and 
    anon394_Then@1_assertion
    anon394_Then@2
))))
(let ((anon344_Then@2 (=> (and true
    $@condition_$127
    (= exhaleMask@_367@12 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (* (- 50) Permission$denominator)))))
    (= exhaleMask@_367@12 exhaleMask@_367@13)
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height) perm$N)))
    (IsGoodMask exhaleMask@_367@12)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))
    (wf exhaleHeap@_350@0 exhaleMask@_367@12 SecMask)
  )(and 
    anon345_Then@1_assertion
    anon345_Then@2
))))
(let ((anon356_Then@2 (=> (and true
    $@condition_$146
    (= (* (- 50) Permission$denominator) (* (- 1) (Fractions 50)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (* (- 50) Permission$denominator))))
    (= exhaleMask@_390@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height)))
    (= exhaleMask@_390@16 exhaleMask@_390@17)
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height) perm$N)))
    (IsGoodMask exhaleMask@_390@16)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))
    (wf exhaleHeap@_350@0 exhaleMask@_390@16 SecMask)
  )(and 
    anon357_Then@1_assertion
    anon357_Then@2
))))
(let ((anon317_Else (=> (and true
    (CanRead$Int$ exhaleMask@_297@14 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid)
    (not $@condition_$51)
  )
    anon98
)))
(let ((anon317_Then (=> (and true
    $@condition_$51
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_296@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_296@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid)))
    (not (CanRead$Int$ exhaleMask@_297@14 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid))
  )
    anon98
)))
(let ((anon383_Else (=> (and true
    (CanRead$Int$ exhaleMask@_459@14 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid)
    (not $@condition_$137)
  )
    anon233
)))
(let ((anon383_Then (=> (and true
    $@condition_$137
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_458@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_458@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid)))
    (not (CanRead$Int$ exhaleMask@_459@14 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid))
  )
    anon233
)))
(let ((anon393_Then (=> (and true
    $@condition_$143
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right)))
  )(and 
    anon393_Then@1_assertion
    anon393_Then@2
))))
(let ((anon344_Then (=> (and true
    $@condition_$114
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right)))
  )(and 
    anon344_Then@1_assertion
    anon344_Then@2
))))
(let ((anon356_Then (=> (and true
    $@condition_$141
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right)))
  )(and 
    anon356_Then@1_assertion
    anon356_Then@2
))))
(let ((anon316_Then@2 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (* (- 100) Permission$denominator)))
    (= exhaleMask@_297@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid)))
    (=> (= (* 100 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))
  )
    (and anon317_Else anon317_Then)
)))
(let ((anon231@2 (=> (and true
    (= (* (- 100) Permission$denominator) (* (- 1) (* 100 Permission$denominator)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (* (- 100) Permission$denominator)))
    (= exhaleMask@_459@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid)))
    (=> (= (* 100 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (* 100 Permission$denominator)))
  )
    (and anon383_Else anon383_Then)
)))
(let (($branchMerge_48 (=> (and true
  )
    (and anon393_Else anon393_Then)
)))
(let (($branchMerge_37 (=> (and true
  )
    (and anon344_Else anon344_Then)
)))
(let (($branchMerge_47 (=> (and true
  )
    (and anon356_Else anon356_Then)
)))
(let ((anon316_Then (=> (and true
    $@condition_$49
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right)))
  )(and 
    anon316_Then@1_assertion
    anon316_Then@2
))))
(let ((anon231 (=> (and true
  )(and 
    anon231@1_assertion
    anon231@2
))))
(let ((anon251 (=> (and true
    (= exhaleMask@_482@14 exhaleMask@_482@15)
    (IsGoodMask exhaleMask@_482@14)
    (wf exhaleHeap@_442@0 exhaleMask@_482@14 SecMask)
  )
    $branchMerge_48
)))
(let ((anon391_Else (=> (and true
    (= exhaleMask@_482@13 exhaleMask@_482@15)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right))
    (not $@condition_$138)
  )
    $branchMerge_48
)))
(let ((anon150 (=> (and true
    (= exhaleMask@_367@10 exhaleMask@_367@11)
    (IsGoodMask exhaleMask@_367@10)
    (wf exhaleHeap@_350@0 exhaleMask@_367@10 SecMask)
  )
    $branchMerge_37
)))
(let ((anon342_Else (=> (and true
    (= exhaleMask@_367@11 exhaleMask@_367@9)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right))
    (not $@condition_$108)
  )
    $branchMerge_37
)))
(let ((anon175 (=> (and true
    (= exhaleMask@_390@14 exhaleMask@_390@15)
    (IsGoodMask exhaleMask@_390@14)
    (wf exhaleHeap@_350@0 exhaleMask@_390@14 SecMask)
  )
    $branchMerge_47
)))
(let ((anon354_Else (=> (and true
    (= exhaleMask@_390@13 exhaleMask@_390@15)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right))
    (not $@condition_$135)
  )
    $branchMerge_47
)))
(let (($branchMerge_17 (=> (and true
  )
    (and anon316_Else anon316_Then)
)))
(let ((anon380_Else (=> (and true
    (= exhaleMask@_459@11 exhaleMask@_459@13)
    (= exhaleMask@_459@11 exhaleMask@_459@7)
    (= exhaleMask@_459@11 exhaleMask@_459@9)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left))
    (not $@condition_$106)
    (not $@condition_$117)
    (not $@condition_$123)
  )
    anon231
)))
(let ((anon382_Then@2 (=> (and true
    (= exhaleMask@_459@12 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (* (- 50) Permission$denominator)))))
    (= exhaleMask@_459@12 exhaleMask@_459@13)
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_459@12)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (* 50 Permission$denominator)))
    (wf exhaleHeap@_442@0 exhaleMask@_459@12 SecMask)
  )
    anon231
)))
(let ((anon392_Else (=> (and true
    (CanRead$Int$ exhaleMask@_482@14 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid)
    (not $@condition_$142)
  )
    anon251
)))
(let ((anon392_Then (=> (and true
    $@condition_$142
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_481@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_481@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid)))
    (not (CanRead$Int$ exhaleMask@_482@14 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid))
  )
    anon251
)))
(let ((anon343_Else (=> (and true
    (CanRead$Int$ exhaleMask@_367@10 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid)
    (not $@condition_$113)
  )
    anon150
)))
(let ((anon343_Then (=> (and true
    $@condition_$113
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_366@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_366@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid)))
    (not (CanRead$Int$ exhaleMask@_367@10 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid))
  )
    anon150
)))
(let ((anon355_Else (=> (and true
    (CanRead$Int$ exhaleMask@_390@14 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid)
    (not $@condition_$140)
  )
    anon175
)))
(let ((anon355_Then (=> (and true
    $@condition_$140
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_389@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_389@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid)))
    (not (CanRead$Int$ exhaleMask@_390@14 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid))
  )
    anon175
)))
(let ((anon311_Else (=> (and true
    (= exhaleMask@_297@11 exhaleMask@_297@13)
    (= exhaleMask@_297@11 exhaleMask@_297@5)
    (= exhaleMask@_297@11 exhaleMask@_297@7)
    (= exhaleMask@_297@11 exhaleMask@_297@9)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left))
    (not $@condition_$33)
    (not $@condition_$35)
    (not $@condition_$43)
    (not $@condition_$47)
  )
    $branchMerge_17
)))
(let ((anon315_Then@2 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (* (- 50) Permission$denominator))))
    (= exhaleMask@_297@12 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor)))
    (= exhaleMask@_297@12 exhaleMask@_297@13)
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_297@12)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (wf Heap@1 exhaleMask@_297@12 SecMask)
  )
    $branchMerge_17
)))
(let ((anon381_Then@2 (=> (and true
    $@condition_$123
    (< 0 (* 50 Permission$denominator))
    (= (* (- 50) Permission$denominator) (* (- 1) (* 50 Permission$denominator)))
    (= (* 50 Permission$denominator) (Fractions 50))
    (= exhaleMask@_459@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R) (* (- 50) Permission$denominator)))))
    (= exhaleMask@_459@10 exhaleMask@_459@11)
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
    (IsGoodMask exhaleMask@_459@10)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R) (* 50 Permission$denominator)))
    (wf exhaleHeap@_442@0 exhaleMask@_459@10 SecMask)
  )(and 
    anon382_Then@1_assertion
    anon382_Then@2
))))
(let ((anon391_Then@2 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (* (- 100) Permission$denominator)))
    (= exhaleMask@_482@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid)))
    (=> (= (* 100 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))
  )
    (and anon392_Else anon392_Then)
)))
(let ((anon342_Then@2 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (* (- 100) Permission$denominator)))
    (= exhaleMask@_367@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid)))
    (=> (= (* 100 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))
  )
    (and anon343_Else anon343_Then)
)))
(let ((anon354_Then@2 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (* (- 100) Permission$denominator)))
    (= exhaleMask@_390@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid)))
    (=> (= (* 100 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))
  )
    (and anon355_Else anon355_Then)
)))
(let ((anon314_Then@2 (=> (and true
    $@condition_$47
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R) (* (- 50) Permission$denominator))))
    (= exhaleMask@_297@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys)))
    (= exhaleMask@_297@10 exhaleMask@_297@11)
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
    (IsGoodMask exhaleMask@_297@10)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))
    (wf Heap@1 exhaleMask@_297@10 SecMask)
  )(and 
    anon315_Then@1_assertion
    anon315_Then@2
))))
(let ((anon380_Then@2 (=> (and true
    $@condition_$117
    (= (* (- 50) Permission$denominator) (* (- 1) (Fractions 50)))
    (= exhaleMask@_459@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (* (- 50) Permission$denominator)))))
    (= exhaleMask@_459@8 exhaleMask@_459@9)
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height) perm$N)))
    (IsGoodMask exhaleMask@_459@8)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))
    (wf exhaleHeap@_442@0 exhaleMask@_459@8 SecMask)
  )(and 
    anon381_Then@1_assertion
    anon381_Then@2
))))
(let ((anon391_Then (=> (and true
    $@condition_$138
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right)))
  )(and 
    anon391_Then@1_assertion
    anon391_Then@2
))))
(let ((anon342_Then (=> (and true
    $@condition_$108
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right)))
  )(and 
    anon342_Then@1_assertion
    anon342_Then@2
))))
(let ((anon354_Then (=> (and true
    $@condition_$135
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right)))
  )(and 
    anon354_Then@1_assertion
    anon354_Then@2
))))
(let ((anon313_Then@2 (=> (and true
    $@condition_$43
    (= (* (- 50) Permission$denominator) (* (- 1) (Fractions 50)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (* (- 50) Permission$denominator))))
    (= exhaleMask@_297@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)))
    (= exhaleMask@_297@8 exhaleMask@_297@9)
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$N)))
    (IsGoodMask exhaleMask@_297@8)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))
    (wf Heap@1 exhaleMask@_297@8 SecMask)
  )(and 
    anon314_Then@1_assertion
    anon314_Then@2
))))
(let ((anon380_Then (=> (and true
    $@condition_$106
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left)))
  )(and 
    anon380_Then@1_assertion
    anon380_Then@2
))))
(let (($branchMerge_46 (=> (and true
  )
    (and anon391_Else anon391_Then)
)))
(let ((anon147@6 (=> (and true
    (= exhaleMask@_367@9 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (* (- 50) Permission$denominator)))))
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_367@9)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (wf exhaleHeap@_350@0 exhaleMask@_367@9 SecMask)
  )
    (and anon342_Else anon342_Then)
)))
(let (($branchMerge_45 (=> (and true
  )
    (and anon354_Else anon354_Then)
)))
(let ((anon88 (=> (and true
    $@condition_$35
    (= exhaleMask@_297@6 exhaleMask@_297@7)
    (IsGoodMask exhaleMask@_297@6)
    (wf Heap@1 exhaleMask@_297@6 SecMask)
  )(and 
    anon313_Then@1_assertion
    anon313_Then@2
))))
(let (($branchMerge_33 (=> (and true
  )
    (and anon380_Else anon380_Then)
)))
(let ((anon388_Else (=> (and true
    (= exhaleMask@_482@11 exhaleMask@_482@13)
    (= exhaleMask@_482@11 exhaleMask@_482@7)
    (= exhaleMask@_482@11 exhaleMask@_482@9)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left))
    (not $@condition_$112)
    (not $@condition_$125)
    (not $@condition_$131)
  )
    $branchMerge_46
)))
(let ((anon390_Then@2 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (* (- 50) Permission$denominator))))
    (= exhaleMask@_482@12 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor)))
    (= exhaleMask@_482@12 exhaleMask@_482@13)
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_482@12)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (wf exhaleHeap@_442@0 exhaleMask@_482@12 SecMask)
  )
    $branchMerge_46
)))
(let ((anon147@4 (=> (and true
    (= exhaleMask@_367@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R) (* (- 50) Permission$denominator)))))
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
    (IsGoodMask exhaleMask@_367@8)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))
    (wf exhaleHeap@_350@0 exhaleMask@_367@8 SecMask)
  )(and 
    anon147@5_assertion
    anon147@6
))))
(let ((anon351_Else (=> (and true
    (= exhaleMask@_390@11 exhaleMask@_390@13)
    (= exhaleMask@_390@11 exhaleMask@_390@7)
    (= exhaleMask@_390@11 exhaleMask@_390@9)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left))
    (not $@condition_$110)
    (not $@condition_$121)
    (not $@condition_$129)
  )
    $branchMerge_45
)))
(let ((anon353_Then@2 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (* (- 50) Permission$denominator))))
    (= exhaleMask@_390@12 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor)))
    (= exhaleMask@_390@12 exhaleMask@_390@13)
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_390@12)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (wf exhaleHeap@_350@0 exhaleMask@_390@12 SecMask)
  )
    $branchMerge_45
)))
(let ((anon312_Else (=> (and true
    (CanRead$Int$ exhaleMask@_297@6 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid)
    (not $@condition_$34)
  )
    anon88
)))
(let ((anon312_Then (=> (and true
    $@condition_$34
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_296@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_296@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid)))
    (not (CanRead$Int$ exhaleMask@_297@6 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid))
  )
    anon88
)))
(let ((anon224 (=> (and true
    (= exhaleMask@_459@6 exhaleMask@_459@7)
    (IsGoodMask exhaleMask@_459@6)
    (wf exhaleHeap@_442@0 exhaleMask@_459@6 SecMask)
  )
    $branchMerge_33
)))
(let ((anon378_Else (=> (and true
    (= exhaleMask@_459@5 exhaleMask@_459@7)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left))
    (not $@condition_$103)
  )
    $branchMerge_33
)))
(let ((anon389_Then@2 (=> (and true
    $@condition_$131
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R) (* (- 50) Permission$denominator))))
    (= exhaleMask@_482@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys)))
    (= exhaleMask@_482@10 exhaleMask@_482@11)
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
    (IsGoodMask exhaleMask@_482@10)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))
    (wf exhaleHeap@_442@0 exhaleMask@_482@10 SecMask)
  )(and 
    anon390_Then@1_assertion
    anon390_Then@2
))))
(let ((anon147@2 (=> (and true
    (= (* (- 50) Permission$denominator) (* (- 1) (Fractions 50)))
    (= exhaleMask@_367@7 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (* (- 50) Permission$denominator)))))
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) perm$N)))
    (IsGoodMask exhaleMask@_367@7)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))
    (wf exhaleHeap@_350@0 exhaleMask@_367@7 SecMask)
  )(and 
    anon147@3_assertion
    anon147@4
))))
(let ((anon352_Then@2 (=> (and true
    $@condition_$129
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R) (* (- 50) Permission$denominator))))
    (= exhaleMask@_390@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys)))
    (= exhaleMask@_390@10 exhaleMask@_390@11)
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
    (IsGoodMask exhaleMask@_390@10)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))
    (wf exhaleHeap@_350@0 exhaleMask@_390@10 SecMask)
  )(and 
    anon353_Then@1_assertion
    anon353_Then@2
))))
(let ((anon311_Then@2 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (* (- 100) Permission$denominator)))
    (= exhaleMask@_297@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid)))
    (=> (= (* 100 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))
  )
    (and anon312_Else anon312_Then)
)))
(let ((anon379_Else (=> (and true
    (CanRead$Int$ exhaleMask@_459@6 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid)
    (not $@condition_$105)
  )
    anon224
)))
(let ((anon379_Then (=> (and true
    $@condition_$105
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_458@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_458@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid)))
    (not (CanRead$Int$ exhaleMask@_459@6 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid))
  )
    anon224
)))
(let ((anon388_Then@2 (=> (and true
    $@condition_$125
    (= (* (- 50) Permission$denominator) (* (- 1) (Fractions 50)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (* (- 50) Permission$denominator)))
    (= exhaleMask@_482@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height)))
    (= exhaleMask@_482@8 exhaleMask@_482@9)
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height) perm$N)))
    (IsGoodMask exhaleMask@_482@8)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))
    (wf exhaleHeap@_442@0 exhaleMask@_482@8 SecMask)
  )(and 
    anon389_Then@1_assertion
    anon389_Then@2
))))
(let ((anon147 (=> (and true
    (IsGoodMask exhaleMask@_367@6)
    (wf exhaleHeap@_350@0 exhaleMask@_367@6 SecMask)
  )(and 
    anon147@1_assertion
    anon147@2
))))
(let ((anon351_Then@2 (=> (and true
    $@condition_$121
    (= (* (- 50) Permission$denominator) (* (- 1) (Fractions 50)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (* (- 50) Permission$denominator)))
    (= exhaleMask@_390@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height)))
    (= exhaleMask@_390@8 exhaleMask@_390@9)
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) perm$N)))
    (IsGoodMask exhaleMask@_390@8)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))
    (wf exhaleHeap@_350@0 exhaleMask@_390@8 SecMask)
  )(and 
    anon352_Then@1_assertion
    anon352_Then@2
))))
(let ((anon311_Then (=> (and true
    $@condition_$33
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left)))
  )(and 
    anon311_Then@1_assertion
    anon311_Then@2
))))
(let ((anon378_Then@2 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (* (- 100) Permission$denominator)))
    (= exhaleMask@_459@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid)))
    (=> (= (* 100 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))
  )
    (and anon379_Else anon379_Then)
)))
(let ((anon388_Then (=> (and true
    $@condition_$112
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left)))
  )(and 
    anon388_Then@1_assertion
    anon388_Then@2
))))
(let ((anon341_Else (=> (and true
    (CanRead$Int$ exhaleMask@_367@6 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid)
    (not $@condition_$102)
  )
    anon147
)))
(let ((anon341_Then (=> (and true
    $@condition_$102
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_366@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_366@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid)))
    (not (CanRead$Int$ exhaleMask@_367@6 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid))
  )
    anon147
)))
(let ((anon351_Then (=> (and true
    $@condition_$110
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left)))
  )(and 
    anon351_Then@1_assertion
    anon351_Then@2
))))
(let ((anon85@14 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@5 this AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@4 this AVLTreeNode.balanceFactor) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@5 this AVLTreeNode.balanceFactor) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@5 this AVLTreeNode.balanceFactor) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@4 this AVLTreeNode.balanceFactor) perm$R) (* (- 100) Permission$denominator)))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@4 this AVLTreeNode.balanceFactor) perm$N))
    (= exhaleMask@_297@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@4 this AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@5 this AVLTreeNode.balanceFactor)))
    (IsGoodMask exhaleMask@_297@5)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@4 this AVLTreeNode.balanceFactor) perm$R) (Fractions 100)))
    (wf Heap@1 exhaleMask@_297@5 SecMask)
  )
    (and anon311_Else anon311_Then)
)))
(let ((anon378_Then (=> (and true
    $@condition_$103
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left)))
  )(and 
    anon378_Then@1_assertion
    anon378_Then@2
))))
(let (($branchMerge_36 (=> (and true
  )
    (and anon388_Else anon388_Then)
)))
(let ((anon145@15 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (* (- 100) Permission$denominator)))
    (= exhaleMask@_367@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid)))
    (=> (= (* 100 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))
  )
    (and anon341_Else anon341_Then)
)))
(let (($branchMerge_34 (=> (and true
  )
    (and anon351_Else anon351_Then)
)))
(let ((anon85@12 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@4 this AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@3 this AVLTreeNode.keys) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@4 this AVLTreeNode.keys) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@4 this AVLTreeNode.keys) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@3 this AVLTreeNode.keys) perm$R) (* (- 100) Permission$denominator)))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@3 this AVLTreeNode.keys) perm$N))
    (= exhaleMask@_297@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@3 this AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@4 this AVLTreeNode.keys)))
    (IsGoodMask exhaleMask@_297@4)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_297@3 this AVLTreeNode.keys) perm$R) (Fractions 100)))
    (wf Heap@1 exhaleMask@_297@4 SecMask)
  )(and 
    anon85@13_assertion
    anon85@14
))))
(let ((anon221@15 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@5 this AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@4 this AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@4 this AVLTreeNode.balanceFactor) perm$R) (* (- 100) Permission$denominator))))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@4 this AVLTreeNode.balanceFactor) perm$N))
    (= exhaleMask@_459@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@4 this AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@5 this AVLTreeNode.balanceFactor)))
    (IsGoodMask exhaleMask@_459@5)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@4 this AVLTreeNode.balanceFactor) perm$R) (Fractions 100)))
    (wf exhaleHeap@_442@0 exhaleMask@_459@5 SecMask)
  )
    (and anon378_Else anon378_Then)
)))
(let ((anon241 (=> (and true
    (= exhaleMask@_482@6 exhaleMask@_482@7)
    (IsGoodMask exhaleMask@_482@6)
    (wf exhaleHeap@_442@0 exhaleMask@_482@6 SecMask)
  )
    $branchMerge_36
)))
(let ((anon386_Else (=> (and true
    (= exhaleMask@_482@5 exhaleMask@_482@7)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left))
    (not $@condition_$107)
  )
    $branchMerge_36
)))
(let ((anon145@13 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@5 this AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@4 this AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@4 this AVLTreeNode.balanceFactor) perm$R) (* (- 100) Permission$denominator))))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@4 this AVLTreeNode.balanceFactor) perm$N))
    (= exhaleMask@_367@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@4 this AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@5 this AVLTreeNode.balanceFactor)))
    (IsGoodMask exhaleMask@_367@5)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@4 this AVLTreeNode.balanceFactor) perm$R) (Fractions 100)))
    (wf exhaleHeap@_350@0 exhaleMask@_367@5 SecMask)
  )(and 
    anon145@14_assertion
    anon145@15
))))
(let ((anon165 (=> (and true
    (= exhaleMask@_390@6 exhaleMask@_390@7)
    (IsGoodMask exhaleMask@_390@6)
    (wf exhaleHeap@_350@0 exhaleMask@_390@6 SecMask)
  )
    $branchMerge_34
)))
(let ((anon349_Else (=> (and true
    (= exhaleMask@_390@5 exhaleMask@_390@7)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left))
    (not $@condition_$104)
  )
    $branchMerge_34
)))
(let ((anon85@10 (=> (and true
    (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_297@2 this AVLTreeNode.right) perm$R))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_297@2 this AVLTreeNode.right) perm$N))
    (= exhaleMask@_297@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_297@2 this AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_297@2 this AVLTreeNode.right) perm$R 0)))
    (IsGoodMask exhaleMask@_297@3)
    (wf Heap@1 exhaleMask@_297@3 SecMask)
  )(and 
    anon85@11_assertion
    anon85@12
))))
(let ((anon221@13 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@4 this AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@3 this AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@3 this AVLTreeNode.keys) perm$R) (* (- 100) Permission$denominator))))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@3 this AVLTreeNode.keys) perm$N))
    (= exhaleMask@_459@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@3 this AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@4 this AVLTreeNode.keys)))
    (IsGoodMask exhaleMask@_459@4)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_459@3 this AVLTreeNode.keys) perm$R) (Fractions 100)))
    (wf exhaleHeap@_442@0 exhaleMask@_459@4 SecMask)
  )(and 
    anon221@14_assertion
    anon221@15
))))
(let ((anon387_Else (=> (and true
    (CanRead$Int$ exhaleMask@_482@6 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid)
    (not $@condition_$111)
  )
    anon241
)))
(let ((anon387_Then (=> (and true
    $@condition_$111
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_481@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_481@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid)))
    (not (CanRead$Int$ exhaleMask@_482@6 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid))
  )
    anon241
)))
(let ((anon145@11 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@4 this AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@3 this AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@3 this AVLTreeNode.keys) perm$R) (* (- 100) Permission$denominator))))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@3 this AVLTreeNode.keys) perm$N))
    (= exhaleMask@_367@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@3 this AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@4 this AVLTreeNode.keys)))
    (IsGoodMask exhaleMask@_367@4)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_367@3 this AVLTreeNode.keys) perm$R) (Fractions 100)))
    (wf exhaleHeap@_350@0 exhaleMask@_367@4 SecMask)
  )(and 
    anon145@12_assertion
    anon145@13
))))
(let ((anon350_Else (=> (and true
    (CanRead$Int$ exhaleMask@_390@6 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid)
    (not $@condition_$109)
  )
    anon165
)))
(let ((anon350_Then (=> (and true
    $@condition_$109
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_389@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_389@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid)))
    (not (CanRead$Int$ exhaleMask@_390@6 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid))
  )
    anon165
)))
(let ((anon85@8 (=> (and true
    (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_297@1 this AVLTreeNode.left) perm$R))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_297@1 this AVLTreeNode.left) perm$N))
    (= exhaleMask@_297@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_297@1 this AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_297@1 this AVLTreeNode.left) perm$R 0)))
    (IsGoodMask exhaleMask@_297@2)
    (wf Heap@1 exhaleMask@_297@2 SecMask)
  )
    anon85@10
)))
(let ((anon221@11 (=> (and true
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_459@2 this AVLTreeNode.right) perm$N))
    (= exhaleMask@_459@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_459@2 this AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_459@2 this AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_459@2 this AVLTreeNode.right) perm$R) (* (- 100) Permission$denominator)))))
    (IsGoodMask exhaleMask@_459@3)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_459@2 this AVLTreeNode.right) perm$R) (Fractions 100)))
    (wf exhaleHeap@_442@0 exhaleMask@_459@3 SecMask)
  )(and 
    anon221@12_assertion
    anon221@13
))))
(let ((anon386_Then@2 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (* (- 100) Permission$denominator)))
    (= exhaleMask@_482@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid)))
    (=> (= (* 100 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))
  )
    (and anon387_Else anon387_Then)
)))
(let ((anon145@9 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_367@3 this AVLTreeNode.right) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_367@2 this AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_367@2 this AVLTreeNode.right) perm$R) (* (- 100) Permission$denominator))))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_367@2 this AVLTreeNode.right) perm$N))
    (= exhaleMask@_367@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_367@2 this AVLTreeNode.right (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_367@3 this AVLTreeNode.right)))
    (IsGoodMask exhaleMask@_367@3)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_367@2 this AVLTreeNode.right) perm$R) (Fractions 100)))
    (wf exhaleHeap@_350@0 exhaleMask@_367@3 SecMask)
  )(and 
    anon145@10_assertion
    anon145@11
))))
(let ((anon349_Then@2 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (* (- 100) Permission$denominator)))
    (= exhaleMask@_390@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid)))
    (=> (= (* 100 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))
  )
    (and anon350_Else anon350_Then)
)))
(let ((anon85@6 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@1 this AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@0 this AVLTreeNode.height) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@1 this AVLTreeNode.height) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@1 this AVLTreeNode.height) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@0 this AVLTreeNode.height) perm$R) (* (- 100) Permission$denominator)))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@0 this AVLTreeNode.height) perm$N))
    (= exhaleMask@_297@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@0 this AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@1 this AVLTreeNode.height)))
    (IsGoodMask exhaleMask@_297@1)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@0 this AVLTreeNode.height) perm$R) (Fractions 100)))
    (wf Heap@1 exhaleMask@_297@1 SecMask)
  )
    anon85@8
)))
(let ((anon221@9 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_459@2 this AVLTreeNode.left) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_459@1 this AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_459@1 this AVLTreeNode.left) perm$R) (* (- 100) Permission$denominator))))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_459@1 this AVLTreeNode.left) perm$N))
    (= exhaleMask@_459@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_459@1 this AVLTreeNode.left (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_459@2 this AVLTreeNode.left)))
    (IsGoodMask exhaleMask@_459@2)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_459@1 this AVLTreeNode.left) perm$R) (Fractions 100)))
    (wf exhaleHeap@_442@0 exhaleMask@_459@2 SecMask)
  )(and 
    anon221@10_assertion
    anon221@11
))))
(let ((anon386_Then (=> (and true
    $@condition_$107
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left)))
  )(and 
    anon386_Then@1_assertion
    anon386_Then@2
))))
(let ((anon145@7 (=> (and true
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_367@1 this AVLTreeNode.left) perm$N))
    (= exhaleMask@_367@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_367@1 this AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_367@1 this AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_367@1 this AVLTreeNode.left) perm$R) (* (- 100) Permission$denominator)))))
    (IsGoodMask exhaleMask@_367@2)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_367@1 this AVLTreeNode.left) perm$R) (Fractions 100)))
    (wf exhaleHeap@_350@0 exhaleMask@_367@2 SecMask)
  )(and 
    anon145@8_assertion
    anon145@9
))))
(let ((anon349_Then (=> (and true
    $@condition_$104
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left)))
  )(and 
    anon349_Then@1_assertion
    anon349_Then@2
))))
(let ((anon85@4 (=> (and true
    (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this AVLTreeNode.key) perm$R))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@0 this AVLTreeNode.key) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this AVLTreeNode.key) perm$R 0))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this AVLTreeNode.key) perm$N))
    (= exhaleMask@_297@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this AVLTreeNode.key (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_297@0 this AVLTreeNode.key)))
    (IsGoodMask exhaleMask@_297@0)
    (wf Heap@1 exhaleMask@_297@0 SecMask)
  )(and 
    anon85@5_assertion
    anon85@6
))))
(let ((anon221@7 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@1 this AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@0 this AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@0 this AVLTreeNode.height) perm$R) (* (- 100) Permission$denominator))))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@0 this AVLTreeNode.height) perm$N))
    (= exhaleMask@_459@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@0 this AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@1 this AVLTreeNode.height)))
    (IsGoodMask exhaleMask@_459@1)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_459@0 this AVLTreeNode.height) perm$R) (Fractions 100)))
    (wf exhaleHeap@_442@0 exhaleMask@_459@1 SecMask)
  )(and 
    anon221@8_assertion
    anon221@9
))))
(let ((anon238@14 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@5 this AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@4 this AVLTreeNode.balanceFactor) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@5 this AVLTreeNode.balanceFactor) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@5 this AVLTreeNode.balanceFactor) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@4 this AVLTreeNode.balanceFactor) perm$R) (* (- 100) Permission$denominator)))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@4 this AVLTreeNode.balanceFactor) perm$N))
    (= exhaleMask@_482@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@4 this AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@5 this AVLTreeNode.balanceFactor)))
    (IsGoodMask exhaleMask@_482@5)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@4 this AVLTreeNode.balanceFactor) perm$R) (Fractions 100)))
    (wf exhaleHeap@_442@0 exhaleMask@_482@5 SecMask)
  )
    (and anon386_Else anon386_Then)
)))
(let ((anon145@5 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@1 this AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@0 this AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@0 this AVLTreeNode.height) perm$R) (* (- 100) Permission$denominator))))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@0 this AVLTreeNode.height) perm$N))
    (= exhaleMask@_367@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@0 this AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@1 this AVLTreeNode.height)))
    (IsGoodMask exhaleMask@_367@1)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_367@0 this AVLTreeNode.height) perm$R) (Fractions 100)))
    (wf exhaleHeap@_350@0 exhaleMask@_367@1 SecMask)
  )(and 
    anon145@6_assertion
    anon145@7
))))
(let ((anon162@14 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@5 this AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@4 this AVLTreeNode.balanceFactor) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@5 this AVLTreeNode.balanceFactor) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@5 this AVLTreeNode.balanceFactor) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@4 this AVLTreeNode.balanceFactor) perm$R) (* (- 100) Permission$denominator)))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@4 this AVLTreeNode.balanceFactor) perm$N))
    (= exhaleMask@_390@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@4 this AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@5 this AVLTreeNode.balanceFactor)))
    (IsGoodMask exhaleMask@_390@5)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@4 this AVLTreeNode.balanceFactor) perm$R) (Fractions 100)))
    (wf exhaleHeap@_350@0 exhaleMask@_390@5 SecMask)
  )
    (and anon349_Else anon349_Then)
)))
(let ((anon85@2 (=> (and true
    (< 0 (* 100 Permission$denominator))
    (= (* 100 Permission$denominator) (Fractions 100))
    (>= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height))) (- 0 1))
    (not (< (+ (ite$Int$ $@bf 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_1 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height)))) (- 1)))
  )
    anon85@4
)))
(let ((anon221@5 (=> (and true
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@52 this AVLTreeNode.key) perm$N))
    (= exhaleMask@_459@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@52 this AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@52 this AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@52 this AVLTreeNode.key) perm$R) (* (- 100) Permission$denominator)))))
    (IsGoodMask exhaleMask@_459@0)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@52 this AVLTreeNode.key) perm$R) (Fractions 100)))
    (wf exhaleHeap@_442@0 exhaleMask@_459@0 SecMask)
  )(and 
    anon221@6_assertion
    anon221@7
))))
(let ((anon238@12 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@4 this AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@3 this AVLTreeNode.keys) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@4 this AVLTreeNode.keys) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@4 this AVLTreeNode.keys) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@3 this AVLTreeNode.keys) perm$R) (* (- 100) Permission$denominator)))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@3 this AVLTreeNode.keys) perm$N))
    (= exhaleMask@_482@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@3 this AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@4 this AVLTreeNode.keys)))
    (IsGoodMask exhaleMask@_482@4)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_482@3 this AVLTreeNode.keys) perm$R) (Fractions 100)))
    (wf exhaleHeap@_442@0 exhaleMask@_482@4 SecMask)
  )(and 
    anon238@13_assertion
    anon238@14
))))
(let ((anon145@3 (=> (and true
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@86 this AVLTreeNode.key) perm$N))
    (= exhaleMask@_367@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@86 this AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@86 this AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@86 this AVLTreeNode.key) perm$R) (* (- 100) Permission$denominator)))))
    (IsGoodMask exhaleMask@_367@0)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@86 this AVLTreeNode.key) perm$R) (Fractions 100)))
    (wf exhaleHeap@_350@0 exhaleMask@_367@0 SecMask)
  )(and 
    anon145@4_assertion
    anon145@5
))))
(let ((anon162@12 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@4 this AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@3 this AVLTreeNode.keys) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@4 this AVLTreeNode.keys) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@4 this AVLTreeNode.keys) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@3 this AVLTreeNode.keys) perm$R) (* (- 100) Permission$denominator)))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@3 this AVLTreeNode.keys) perm$N))
    (= exhaleMask@_390@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@3 this AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@4 this AVLTreeNode.keys)))
    (IsGoodMask exhaleMask@_390@4)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_390@3 this AVLTreeNode.keys) perm$R) (Fractions 100)))
    (wf exhaleHeap@_350@0 exhaleMask@_390@4 SecMask)
  )(and 
    anon162@13_assertion
    anon162@14
))))
(let ((anon85@1 (=> (and true
    (<= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height))) 1)
    (not (< 1 (+ (ite$Int$ $@bf 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_1 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height))))))
  )(and 
    anon85@1_assertion
    anon85@2
))))
(let ((anon221@3 (=> (and true
    (< 0 (* 100 Permission$denominator))
    (= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height)) (- 0 2))
    (= (- 2) (+ (ite$Int$ $@bf_3 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height))))
    (= (* 100 Permission$denominator) (Fractions 100))
  )(and 
    anon221@4_assertion
    anon221@5
))))
(let ((anon238@10 (=> (and true
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_482@2 this AVLTreeNode.right) perm$N))
    (= exhaleMask@_482@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_482@2 this AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_482@2 this AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_482@2 this AVLTreeNode.right) perm$R) (* (- 100) Permission$denominator)))))
    (IsGoodMask exhaleMask@_482@3)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_482@2 this AVLTreeNode.right) perm$R) (Fractions 100)))
    (wf exhaleHeap@_442@0 exhaleMask@_482@3 SecMask)
  )(and 
    anon238@11_assertion
    anon238@12
))))
(let ((anon145@1 (=> (and true
    (< 0 (* 100 Permission$denominator))
    (= (- (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height))) 2)
    (= (* 100 Permission$denominator) (Fractions 100))
    (= 2 (+ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) (* (- 1) (ite$Int$ $@bf_2 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height)))))
  )(and 
    anon145@2_assertion
    anon145@3
))))
(let ((anon162@10 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_390@3 this AVLTreeNode.right) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_390@2 this AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_390@2 this AVLTreeNode.right) perm$R) (* (- 100) Permission$denominator))))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_390@2 this AVLTreeNode.right) perm$N))
    (= exhaleMask@_390@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_390@2 this AVLTreeNode.right (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_390@3 this AVLTreeNode.right)))
    (IsGoodMask exhaleMask@_390@3)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_390@2 this AVLTreeNode.right) perm$R) (Fractions 100)))
    (wf exhaleHeap@_350@0 exhaleMask@_390@3 SecMask)
  )(and 
    anon162@11_assertion
    anon162@12
))))
(let ((anon85 (=> (and true
  )(and 
    anon85_assertion
    anon85@1
))))
(let ((anon221@2 (=> (and true
    (forall( (|k#105#202| Int))(=> (and (< |k#105#202| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 |k#105#202|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys) |k#105#202|))))
  )(and 
    anon221@2_assertion
    anon221@3
))))
(let ((anon238@8 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_482@2 this AVLTreeNode.left) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_482@1 this AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_482@1 this AVLTreeNode.left) perm$R) (* (- 100) Permission$denominator))))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_482@1 this AVLTreeNode.left) perm$N))
    (= exhaleMask@_482@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_482@1 this AVLTreeNode.left (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_482@2 this AVLTreeNode.left)))
    (IsGoodMask exhaleMask@_482@2)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_482@1 this AVLTreeNode.left) perm$R) (Fractions 100)))
    (wf exhaleHeap@_442@0 exhaleMask@_482@2 SecMask)
  )(and 
    anon238@9_assertion
    anon238@10
))))
(let ((anon145 (=> (and true
  )(and 
    anon145_assertion
    anon145@1
))))
(let ((anon162@8 (=> (and true
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_390@1 this AVLTreeNode.left) perm$N))
    (= exhaleMask@_390@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_390@1 this AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_390@1 this AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_390@1 this AVLTreeNode.left) perm$R) (* (- 100) Permission$denominator)))))
    (IsGoodMask exhaleMask@_390@2)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_390@1 this AVLTreeNode.left) perm$R) (Fractions 100)))
    (wf exhaleHeap@_350@0 exhaleMask@_390@2 SecMask)
  )(and 
    anon162@9_assertion
    anon162@10
))))
(let ((anon310_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right))
    (not $@condition_$27)
  )
    anon85
)))
(let ((anon310_Then@1 (=> (and true
    (forall( (|k#93#167| Int))(=> (and (< |k#93#167| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 |k#93#167|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) |k#93#167|))))
  )
    anon85
)))
(let ((anon221@1 (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right)))
  )(and 
    anon221@1_assertion
    anon221@2
))))
(let ((anon238@6 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@1 this AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@0 this AVLTreeNode.height) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@1 this AVLTreeNode.height) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@1 this AVLTreeNode.height) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@0 this AVLTreeNode.height) perm$R) (* (- 100) Permission$denominator)))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@0 this AVLTreeNode.height) perm$N))
    (= exhaleMask@_482@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@0 this AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@1 this AVLTreeNode.height)))
    (IsGoodMask exhaleMask@_482@1)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_482@0 this AVLTreeNode.height) perm$R) (Fractions 100)))
    (wf exhaleHeap@_442@0 exhaleMask@_482@1 SecMask)
  )(and 
    anon238@7_assertion
    anon238@8
))))
(let ((anon340_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right))
    (not $@condition_$94)
  )
    anon145
)))
(let ((anon340_Then@1 (=> (and true
    (forall( (|k#95#182| Int))(=> (and (< |k#95#182| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 |k#95#182|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys) |k#95#182|))))
  )
    anon145
)))
(let ((anon162@6 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@1 this AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@0 this AVLTreeNode.height) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@1 this AVLTreeNode.height) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@1 this AVLTreeNode.height) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@0 this AVLTreeNode.height) perm$R) (* (- 100) Permission$denominator)))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@0 this AVLTreeNode.height) perm$N))
    (= exhaleMask@_390@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@0 this AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@1 this AVLTreeNode.height)))
    (IsGoodMask exhaleMask@_390@1)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_390@0 this AVLTreeNode.height) perm$R) (Fractions 100)))
    (wf exhaleHeap@_350@0 exhaleMask@_390@1 SecMask)
  )(and 
    anon162@7_assertion
    anon162@8
))))
(let ((anon310_Then (=> (and true
    $@condition_$27
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right)))
  )(and 
    anon310_Then_assertion
    anon310_Then@1
))))
(let ((anon221 (=> (and true
  )(and 
    anon221_assertion
    anon221@1
))))
(let ((anon238@4 (=> (and true
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@52 this AVLTreeNode.key) perm$N))
    (= exhaleMask@_482@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@52 this AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@52 this AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@52 this AVLTreeNode.key) perm$R) (* (- 100) Permission$denominator)))))
    (IsGoodMask exhaleMask@_482@0)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@52 this AVLTreeNode.key) perm$R) (Fractions 100)))
    (wf exhaleHeap@_442@0 exhaleMask@_482@0 SecMask)
  )(and 
    anon238@5_assertion
    anon238@6
))))
(let ((anon340_Then (=> (and true
    $@condition_$94
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right)))
  )(and 
    anon340_Then_assertion
    anon340_Then@1
))))
(let ((anon162@4 (=> (and true
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@86 this AVLTreeNode.key) perm$N))
    (= exhaleMask@_390@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@86 this AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@86 this AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@86 this AVLTreeNode.key) perm$R) (* (- 100) Permission$denominator)))))
    (IsGoodMask exhaleMask@_390@0)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@86 this AVLTreeNode.key) perm$R) (Fractions 100)))
    (wf exhaleHeap@_350@0 exhaleMask@_390@0 SecMask)
  )(and 
    anon162@5_assertion
    anon162@6
))))
(let (($branchMerge_11 (=> (and true
  )
    (and anon310_Else anon310_Then)
)))
(let ((anon377_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left))
    (not $@condition_$96)
  )
    anon221
)))
(let ((anon377_Then@1 (=> (and true
    (forall( (|k#104#201| Int))(=> (and (< |k#104#201| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 |k#104#201|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys) |k#104#201|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 this AVLTreeNode.key))))
  )
    anon221
)))
(let ((anon238@2 (=> (and true
    (< 0 (* 100 Permission$denominator))
    (= (* 100 Permission$denominator) (Fractions 100))
    (>= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height))) (- 0 1))
    (not (< (+ (ite$Int$ $@bf_3 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_5 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height)))) (- 1)))
  )(and 
    anon238@3_assertion
    anon238@4
))))
(let ((anon339_Then@3 (=> (and true
    (forall( (|k#94#181| Int))(=> (and (< |k#94#181| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 |k#94#181|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys) |k#94#181|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 this AVLTreeNode.key))))
  )
    (and anon340_Else anon340_Then)
)))
(let ((anon162@2 (=> (and true
    (< 0 (* 100 Permission$denominator))
    (= (* 100 Permission$denominator) (Fractions 100))
    (>= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height))) (- 0 1))
    (not (< (+ (ite$Int$ $@bf_4 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_2 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height)))) (- 1)))
  )(and 
    anon162@3_assertion
    anon162@4
))))
(let ((anon309_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left))
    (not $@condition_$25)
  )
    $branchMerge_11
)))
(let ((anon309_Then@1 (=> (and true
    (forall( (|k#92#166| Int))(=> (and (< |k#92#166| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 |k#92#166|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) |k#92#166|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key))))
  )
    $branchMerge_11
)))
(let ((anon377_Then (=> (and true
    $@condition_$96
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left)))
  )(and 
    anon377_Then_assertion
    anon377_Then@1
))))
(let ((anon238@1 (=> (and true
    (<= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height))) 1)
    (not (< 1 (+ (ite$Int$ $@bf_3 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_5 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height))))))
  )(and 
    anon238@1_assertion
    anon238@2
))))
(let ((anon339_Then@2 (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left)))
  )(and 
    anon339_Then@2_assertion
    anon339_Then@3
))))
(let ((anon162@1 (=> (and true
    (<= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height))) 1)
    (not (< 1 (+ (ite$Int$ $@bf_4 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_2 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height))))))
  )(and 
    anon162@1_assertion
    anon162@2
))))
(let ((anon309_Then (=> (and true
    $@condition_$25
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left)))
  )(and 
    anon309_Then_assertion
    anon309_Then@1
))))
(let ((anon376_Then (=> (and true
    $@condition_$93
    (< (* 1000 methodCallK@_457) (Fractions 1))
    (< (* 1000 methodCallK@_457) methodK@_261)
    (< 0 methodCallK@_457)
    (not (= (* 1000 methodCallK@_457) (Fractions 1)))
    (not (= methodCallK@_457 0))
    (not (= methodK@_261 (* 1000 methodCallK@_457)))
    cond@_452@0
  )
    (and anon377_Else anon377_Then)
)))
(let ((anon238 (=> (and true
  )(and 
    anon238_assertion
    anon238@1
))))
(let ((anon339_Then (=> (and true
    $@condition_$92
    (< (* 1000 methodCallK@_365) (Fractions 1))
    (< (* 1000 methodCallK@_365) methodK@_261)
    (< 0 methodCallK@_365)
    (not (= (* 1000 methodCallK@_365) (Fractions 1)))
    (not (= methodCallK@_365 0))
    (not (= methodK@_261 (* 1000 methodCallK@_365)))
    cond@_360@0
  )(and 
    anon339_Then@1_assertion
    anon339_Then@2
))))
(let ((anon162 (=> (and true
  )(and 
    anon162_assertion
    anon162@1
))))
(let ((anon308_Then@5 (=> (and true
    (< (* 1000 methodCallK@_295) (Fractions 1))
    (< (* 1000 methodCallK@_295) methodK@_261)
    (< 0 methodCallK@_295)
    (= k@9 (Seq@Index$Int$ (Seq@Singleton$Int$ k@9) 0))
    (IsGoodExhaleState exhaleHeap@_289@0 Heap@1 Mask@26 SecMask)
    (not (= (* 1000 methodCallK@_295) (Fractions 1)))
    (not (= methodCallK@_295 0))
    (not (= methodK@_261 (* 1000 methodCallK@_295)))
    (wf exhaleHeap@_289@0 Mask@26 SecMask)
  )
    (and anon309_Else anon309_Then)
)))
(let ((anon385_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right))
    (not $@condition_$100)
  )
    anon238
)))
(let ((anon385_Then@1 (=> (and true
    (forall( (|k#93#207| Int))(=> (and (< |k#93#207| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 |k#93#207|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.keys) |k#93#207|))))
  )
    anon238
)))
(let ((anon348_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right))
    (not $@condition_$98)
  )
    anon162
)))
(let ((anon348_Then@1 (=> (and true
    (forall( (|k#93#187| Int))(=> (and (< |k#93#187| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 |k#93#187|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.keys) |k#93#187|))))
  )
    anon162
)))
(let ((anon308_Then (=> (and true
    $@condition_$24
    (< 0 1)
    (= 1 (Seq@Length$Int$ (Seq@Singleton$Int$ k@9)))
    (= k@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key))
    cond@_284@0
  )
    anon308_Then@5
)))
(let ((anon385_Then (=> (and true
    $@condition_$100
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right)))
  )(and 
    anon385_Then_assertion
    anon385_Then@1
))))
(let ((anon348_Then (=> (and true
    $@condition_$98
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right)))
  )(and 
    anon348_Then_assertion
    anon348_Then@1
))))
(let (($branchMerge_32 (=> (and true
  )
    (and anon385_Else anon385_Then)
)))
(let (($branchMerge_31 (=> (and true
  )
    (and anon348_Else anon348_Then)
)))
(let ((anon384_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left))
    (not $@condition_$97)
  )
    $branchMerge_32
)))
(let ((anon384_Then@1 (=> (and true
    (forall( (|k#92#206| Int))(=> (and (< |k#92#206| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 |k#92#206|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.keys) |k#92#206|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 this AVLTreeNode.key))))
  )
    $branchMerge_32
)))
(let ((anon347_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left))
    (not $@condition_$95)
  )
    $branchMerge_31
)))
(let ((anon347_Then@1 (=> (and true
    (forall( (|k#92#186| Int))(=> (and (< |k#92#186| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 |k#92#186|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.keys) |k#92#186|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 this AVLTreeNode.key))))
  )
    $branchMerge_31
)))
(let ((anon384_Then (=> (and true
    $@condition_$97
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left)))
  )(and 
    anon384_Then_assertion
    anon384_Then@1
))))
(let ((anon347_Then (=> (and true
    $@condition_$95
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left)))
  )(and 
    anon347_Then_assertion
    anon347_Then@1
))))
(let ((anon376_Else (=> (and true
    (< (* 1000 methodCallK@_480) (Fractions 1))
    (< (* 1000 methodCallK@_480) methodK@_261)
    (< 0 methodCallK@_480)
    (not $@condition_$93)
    (not (= (* 1000 methodCallK@_480) (Fractions 1)))
    (not (= methodCallK@_480 0))
    (not (= methodK@_261 (* 1000 methodCallK@_480)))
    (not cond@_452@0)
  )
    (and anon384_Else anon384_Then)
)))
(let ((anon339_Else (=> (and true
    (< (* 1000 methodCallK@_388) (Fractions 1))
    (< (* 1000 methodCallK@_388) methodK@_261)
    (< 0 methodCallK@_388)
    (not $@condition_$92)
    (not (= (* 1000 methodCallK@_388) (Fractions 1)))
    (not (= methodCallK@_388 0))
    (not (= methodK@_261 (* 1000 methodCallK@_388)))
    (not cond@_360@0)
  )
    (and anon347_Else anon347_Then)
)))
(let ((anon218 (=> (and true
    (= cond@_452@0 (= bf@198@0 (- 2)))
    (IsGoodMask Mask@52)
    (wf exhaleHeap@_442@0 Mask@52 SecMask)
  )
    (and anon376_Else anon376_Then)
)))
(let ((anon142 (=> (and true
    (= cond@_360@0 (= bf@178@0 2))
    (IsGoodMask Mask@86)
    (wf exhaleHeap@_350@0 Mask@86 SecMask)
  )
    (and anon339_Else anon339_Then)
)))
(let ((anon375_Else (=> (and true
    (not $@condition_$90)
    (not (< bf@198@0 0))
  )
    anon218
)))
(let ((anon375_Then (=> (and true
    $@condition_$90
    (< bf@198@0 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) null))
    (not (= bf@198@0 0))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right)))
  )
    anon218
)))
(let ((anon338_Else (=> (and true
    (not $@condition_$88)
    (not (< bf@178@0 0))
  )
    anon142
)))
(let ((anon338_Then (=> (and true
    $@condition_$88
    (< bf@178@0 0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) null))
    (not (= bf@178@0 0))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right)))
  )
    anon142
)))
(let (($branchMerge_30 (=> (and true
  )
    (and anon375_Else anon375_Then)
)))
(let (($branchMerge_29 (=> (and true
  )
    (and anon338_Else anon338_Then)
)))
(let ((anon374_Else (=> (and true
    (not $@condition_$87)
    (not (< 0 bf@198@0))
  )
    $branchMerge_30
)))
(let ((anon374_Then (=> (and true
    $@condition_$87
    (< 0 bf@198@0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) null))
    (not (= bf@198@0 0))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left)))
  )
    $branchMerge_30
)))
(let ((anon337_Else (=> (and true
    (not $@condition_$86)
    (not (< 0 bf@178@0))
  )
    $branchMerge_29
)))
(let ((anon337_Then (=> (and true
    $@condition_$86
    (< 0 bf@178@0)
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) null))
    (not (= bf@178@0 0))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left)))
  )
    $branchMerge_29
)))
(let ((anon214 (=> (and true
    (= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height))) bf@198@0)
    (= (= true $@bf_3) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left)))
    (= (= true $@bf_5) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right)))
    (= bf@198@0 (+ (ite$Int$ $@bf_3 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_5 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height)))))
  )
    (and anon374_Else anon374_Then)
)))
(let ((anon138 (=> (and true
    (= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height))) bf@178@0)
    (= (= true $@bf_2) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right)))
    (= (= true $@bf_4) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left)))
    (= bf@178@0 (+ (ite$Int$ $@bf_4 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_2 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height)))))
  )
    (and anon337_Else anon337_Then)
)))
(let ((anon372_Else (=> (and true
    (= Mask@48 Mask@50)
    (= Mask@48 Mask@52)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right))
    (not $@condition_$81)
    (not $@condition_$84)
  )
    anon214
)))
(let ((anon372_Then (=> (and true
    $@condition_$81
    $@condition_$84
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@49 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@48 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@49 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@51 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@49 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@51 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@49 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@48 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@51 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@49 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R) methodCallK@_441))
    (= Mask@49 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@48 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@49 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid)))
    (= Mask@49 Mask@50)
    (= Mask@51 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@49 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@51 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height)))
    (= Mask@51 Mask@52)
    (IsGoodMask Mask@49)
    (IsGoodMask Mask@51)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) AVLTreeNode.valid)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) null))
    (not (= methodCallK@_441 (* 100 Permission$denominator)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right)))
    (wf exhaleHeap@_442@0 Mask@49 SecMask)
    (wf exhaleHeap@_442@0 Mask@51 SecMask)
  )
    anon214
)))
(let ((anon335_Else (=> (and true
    (= Mask@82 Mask@84)
    (= Mask@82 Mask@86)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right))
    (not $@condition_$80)
    (not $@condition_$82)
  )
    anon138
)))
(let ((anon335_Then (=> (and true
    $@condition_$80
    $@condition_$82
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@83 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@82 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@83 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@85 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@83 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@85 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@83 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@82 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@85 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@83 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height) perm$R) methodCallK@_349))
    (= Mask@83 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@82 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@83 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid)))
    (= Mask@83 Mask@84)
    (= Mask@85 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@83 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@85 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height)))
    (= Mask@85 Mask@86)
    (IsGoodMask Mask@83)
    (IsGoodMask Mask@85)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) AVLTreeNode.valid)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) null))
    (not (= methodCallK@_349 (* 100 Permission$denominator)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right)))
    (wf exhaleHeap@_350@0 Mask@83 SecMask)
    (wf exhaleHeap@_350@0 Mask@85 SecMask)
  )
    anon138
)))
(let ((anon210 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@48 this AVLTreeNode.right) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@47 this AVLTreeNode.right) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@48 this AVLTreeNode.right) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@48 this AVLTreeNode.right) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@47 this AVLTreeNode.right) perm$R) methodCallK@_441))
    (= Mask@48 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@47 this AVLTreeNode.right (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@48 this AVLTreeNode.right)))
    (IsGoodMask Mask@48)
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right)))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.right)) AVLTreeNode@t))
    (wf exhaleHeap@_442@0 Mask@47 SecMask)
    (wf exhaleHeap@_442@0 Mask@48 SecMask)
  )
    (and anon372_Else anon372_Then)
)))
(let ((anon134 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@82 this AVLTreeNode.right) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@81 this AVLTreeNode.right) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@82 this AVLTreeNode.right) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@82 this AVLTreeNode.right) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@81 this AVLTreeNode.right) perm$R) methodCallK@_349))
    (= Mask@82 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@81 this AVLTreeNode.right (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@82 this AVLTreeNode.right)))
    (IsGoodMask Mask@82)
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right)))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.right)) AVLTreeNode@t))
    (wf exhaleHeap@_350@0 Mask@81 SecMask)
    (wf exhaleHeap@_350@0 Mask@82 SecMask)
  )
    (and anon335_Else anon335_Then)
)))
(let ((anon370_Else (=> (and true
    (= Mask@43 Mask@45)
    (= Mask@43 Mask@47)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left))
    (not $@condition_$75)
    (not $@condition_$78)
  )
    anon210
)))
(let ((anon370_Then (=> (and true
    $@condition_$75
    $@condition_$78
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@44 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@43 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@44 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@46 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@44 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@46 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@44 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@43 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@46 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@44 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R) methodCallK@_441))
    (= Mask@44 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@43 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@44 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid)))
    (= Mask@44 Mask@45)
    (= Mask@46 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@44 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@46 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height)))
    (= Mask@46 Mask@47)
    (IsGoodMask Mask@44)
    (IsGoodMask Mask@46)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) AVLTreeNode.valid)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) null))
    (not (= methodCallK@_441 (* 100 Permission$denominator)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left)))
    (wf exhaleHeap@_442@0 Mask@44 SecMask)
    (wf exhaleHeap@_442@0 Mask@46 SecMask)
  )
    anon210
)))
(let ((anon333_Else (=> (and true
    (= Mask@77 Mask@79)
    (= Mask@77 Mask@81)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left))
    (not $@condition_$74)
    (not $@condition_$76)
  )
    anon134
)))
(let ((anon333_Then (=> (and true
    $@condition_$74
    $@condition_$76
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@78 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@77 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@78 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@80 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@78 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@80 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@78 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@77 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@80 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@78 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height) perm$R) methodCallK@_349))
    (= Mask@78 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@77 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@78 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid)))
    (= Mask@78 Mask@79)
    (= Mask@80 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@78 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@80 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height)))
    (= Mask@80 Mask@81)
    (IsGoodMask Mask@78)
    (IsGoodMask Mask@80)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) AVLTreeNode.valid)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) null))
    (not (= methodCallK@_349 (* 100 Permission$denominator)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left)))
    (wf exhaleHeap@_350@0 Mask@78 SecMask)
    (wf exhaleHeap@_350@0 Mask@80 SecMask)
  )
    anon134
)))
(let ((anon206 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@43 this AVLTreeNode.left) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_443@9 this AVLTreeNode.left) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@43 this AVLTreeNode.left) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@43 this AVLTreeNode.left) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_443@9 this AVLTreeNode.left) perm$R) methodCallK@_441))
    (= Mask@43 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_443@9 this AVLTreeNode.left (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@43 this AVLTreeNode.left)))
    (IsGoodExhaleState exhaleHeap@_442@0 Heap@3 exhaleMask@_443@9 SecMask)
    (IsGoodMask exhaleMask@_443@9)
    (IsGoodMask Mask@43)
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left)))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_442@0 this AVLTreeNode.left)) AVLTreeNode@t))
    (wf exhaleHeap@_442@0 exhaleMask@_443@9 SecMask)
    (wf exhaleHeap@_442@0 Mask@43 SecMask)
  )
    (and anon370_Else anon370_Then)
)))
(let ((anon130 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@77 this AVLTreeNode.left) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_351@9 this AVLTreeNode.left) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@77 this AVLTreeNode.left) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@77 this AVLTreeNode.left) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_351@9 this AVLTreeNode.left) perm$R) methodCallK@_349))
    (= Mask@77 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_351@9 this AVLTreeNode.left (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@77 this AVLTreeNode.left)))
    (IsGoodExhaleState exhaleHeap@_350@0 Heap@5 exhaleMask@_351@9 SecMask)
    (IsGoodMask exhaleMask@_351@9)
    (IsGoodMask Mask@77)
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left)))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_350@0 this AVLTreeNode.left)) AVLTreeNode@t))
    (wf exhaleHeap@_350@0 exhaleMask@_351@9 SecMask)
    (wf exhaleHeap@_350@0 Mask@77 SecMask)
  )
    (and anon333_Else anon333_Then)
)))
(let ((anon205 (=> (and true
    (= exhaleMask@_443@8 exhaleMask@_443@9)
    (IsGoodMask exhaleMask@_443@8)
    (wf Heap@3 exhaleMask@_443@8 SecMask)
  )
    anon206
)))
(let ((anon129 (=> (and true
    (= exhaleMask@_351@8 exhaleMask@_351@9)
    (IsGoodMask exhaleMask@_351@8)
    (wf Heap@5 exhaleMask@_351@8 SecMask)
  )
    anon130
)))
(let ((anon331_Else (=> (and true
    (= exhaleMask@_351@7 exhaleMask@_351@9)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right))
    (not $@condition_$67)
  )
    anon130
)))
(let ((anon369_Else (=> (and true
    (CanRead$Int$ exhaleMask@_443@8 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid)
    (not $@condition_$73)
  )
    anon205
)))
(let ((anon369_Then (=> (and true
    $@condition_$73
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid)))
    (not (CanRead$Int$ exhaleMask@_443@8 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid))
  )
    anon205
)))
(let ((anon332_Else (=> (and true
    (CanRead$Int$ exhaleMask@_351@8 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.valid)
    (not $@condition_$72)
  )
    anon129
)))
(let ((anon332_Then (=> (and true
    $@condition_$72
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.valid))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.valid)))
    (not (CanRead$Int$ exhaleMask@_351@8 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.valid))
  )
    anon129
)))
(let ((anon368_Then@2 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (* (- 100) Permission$denominator)))
    (= exhaleMask@_443@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid)))
    (=> (= (* 100 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))
  )
    (and anon369_Else anon369_Then)
)))
(let ((anon331_Then@2 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (* (- 100) Permission$denominator)))
    (= exhaleMask@_351@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.valid)))
    (=> (= (* 100 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))
  )
    (and anon332_Else anon332_Then)
)))
(let ((anon368_Then (=> (and true
    $@condition_$69
  )(and 
    anon368_Then@1_assertion
    anon368_Then@2
))))
(let ((anon331_Then (=> (and true
    $@condition_$67
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right)))
  )(and 
    anon331_Then@1_assertion
    anon331_Then@2
))))
(let (($branchMerge_24 (=> (and true
  )
    anon368_Then
)))
(let (($branchMerge_23 (=> (and true
  )
    (and anon331_Else anon331_Then)
)))
(let ((anon201 (=> (and true
    (= exhaleMask@_443@6 exhaleMask@_443@7)
    (IsGoodMask exhaleMask@_443@6)
    (wf Heap@3 exhaleMask@_443@6 SecMask)
  )
    $branchMerge_24
)))
(let ((anon366_Else (=> (and true
    (= exhaleMask@_443@5 exhaleMask@_443@7)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left))
    (not $@condition_$62)
  )
    $branchMerge_24
)))
(let ((anon125 (=> (and true
    (= exhaleMask@_351@6 exhaleMask@_351@7)
    (IsGoodMask exhaleMask@_351@6)
    (wf Heap@5 exhaleMask@_351@6 SecMask)
  )
    $branchMerge_23
)))
(let ((anon367_Else (=> (and true
    (CanRead$Int$ exhaleMask@_443@6 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid)
    (not $@condition_$68)
  )
    anon201
)))
(let ((anon367_Then (=> (and true
    $@condition_$68
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_442@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid)))
    (not (CanRead$Int$ exhaleMask@_443@6 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid))
  )
    anon201
)))
(let ((anon330_Else (=> (and true
    (CanRead$Int$ exhaleMask@_351@6 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.valid)
    (not $@condition_$66)
  )
    anon125
)))
(let ((anon330_Then (=> (and true
    $@condition_$66
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.valid))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_350@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.valid)))
    (not (CanRead$Int$ exhaleMask@_351@6 SecMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.valid))
  )
    anon125
)))
(let ((anon366_Then@2 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (* (- 100) Permission$denominator)))
    (= exhaleMask@_443@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid)))
    (=> (= (* 100 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))
  )
    (and anon367_Else anon367_Then)
)))
(let ((anon329_Then@2 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (* (- 100) Permission$denominator)))
    (= exhaleMask@_351@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.valid)))
    (=> (= (* 100 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))
  )
    (and anon330_Else anon330_Then)
)))
(let ((anon366_Then (=> (and true
    $@condition_$62
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left)))
  )(and 
    anon366_Then@1_assertion
    anon366_Then@2
))))
(let ((anon329_Then (=> (and true
    $@condition_$60
  )(and 
    anon329_Then@1_assertion
    anon329_Then@2
))))
(let (($branchMerge_21 (=> (and true
  )
    (and anon366_Else anon366_Then)
)))
(let (($branchMerge_20 (=> (and true
  )
    anon329_Then
)))
(let ((anon365_Then@2 (=> (and true
    (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (< methodCallK@_441 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.height) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.height) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (* (- 1) methodCallK@_441)))
    (= exhaleMask@_443@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.height)))
    (= exhaleMask@_443@4 exhaleMask@_443@5)
    (IsGoodMask exhaleMask@_443@4)
    (not (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.height) perm$R) 0))
    (not (= methodCallK@_441 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) AVLTreeNode.height) perm$R)))
    (wf Heap@3 exhaleMask@_443@4 SecMask)
  )
    $branchMerge_21
)))
(let ((anon328_Else (=> (and true
    (= exhaleMask@_351@3 exhaleMask@_351@5)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right))
    (not $@condition_$56)
  )
    $branchMerge_20
)))
(let ((anon328_Then@2 (=> (and true
    (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (< methodCallK@_349 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.height) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.height) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (* (- 1) methodCallK@_349)))
    (= exhaleMask@_351@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.height)))
    (= exhaleMask@_351@4 exhaleMask@_351@5)
    (IsGoodMask exhaleMask@_351@4)
    (not (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.height) perm$R) 0))
    (not (= methodCallK@_349 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) AVLTreeNode.height) perm$R)))
    (wf Heap@5 exhaleMask@_351@4 SecMask)
  )
    $branchMerge_20
)))
(let ((anon365_Then (=> (and true
    $@condition_$57
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.right)))
  )(and 
    anon365_Then@1_assertion
    anon365_Then@2
))))
(let ((anon328_Then (=> (and true
    $@condition_$56
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.right)))
  )(and 
    anon328_Then@1_assertion
    anon328_Then@2
))))
(let ((anon196@2 (=> (and true
    (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_443@2 this AVLTreeNode.right) perm$R))
    (< methodCallK@_441 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_443@2 this AVLTreeNode.right) perm$R))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_443@3 this AVLTreeNode.right) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_443@2 this AVLTreeNode.right) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_443@3 this AVLTreeNode.right) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_443@3 this AVLTreeNode.right) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_443@2 this AVLTreeNode.right) perm$R) (* (- 1) methodCallK@_441)))
    (= exhaleMask@_443@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_443@2 this AVLTreeNode.right (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_443@3 this AVLTreeNode.right)))
    (IsGoodMask exhaleMask@_443@3)
    (not (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_443@2 this AVLTreeNode.right) perm$R) 0))
    (not (= methodCallK@_441 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_443@2 this AVLTreeNode.right) perm$R)))
    (wf Heap@3 exhaleMask@_443@3 SecMask)
  )
    anon365_Then
)))
(let ((anon120@2 (=> (and true
    (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_351@2 this AVLTreeNode.right) perm$R))
    (< methodCallK@_349 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_351@2 this AVLTreeNode.right) perm$R))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_351@3 this AVLTreeNode.right) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_351@2 this AVLTreeNode.right) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_351@3 this AVLTreeNode.right) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_351@3 this AVLTreeNode.right) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_351@2 this AVLTreeNode.right) perm$R) (* (- 1) methodCallK@_349)))
    (= exhaleMask@_351@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_351@2 this AVLTreeNode.right (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_351@3 this AVLTreeNode.right)))
    (IsGoodMask exhaleMask@_351@3)
    (not (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_351@2 this AVLTreeNode.right) perm$R) 0))
    (not (= methodCallK@_349 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_351@2 this AVLTreeNode.right) perm$R)))
    (wf Heap@5 exhaleMask@_351@3 SecMask)
  )
    (and anon328_Else anon328_Then)
)))
(let ((anon196 (=> (and true
  )
    anon196@2
)))
(let ((anon120 (=> (and true
  )(and 
    anon120@1_assertion
    anon120@2
))))
(let ((anon364_Else (=> (and true
    (= exhaleMask@_443@0 exhaleMask@_443@2)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left))
    (not $@condition_$54)
  )
    anon196
)))
(let ((anon364_Then@2 (=> (and true
    (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (< methodCallK@_441 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.height) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.height) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (* (- 1) methodCallK@_441)))
    (= exhaleMask@_443@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.height)))
    (= exhaleMask@_443@1 exhaleMask@_443@2)
    (IsGoodMask exhaleMask@_443@1)
    (not (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.height) perm$R) 0))
    (not (= methodCallK@_441 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_443@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.height) perm$R)))
    (wf Heap@3 exhaleMask@_443@1 SecMask)
  )
    anon196
)))
(let ((anon327_Then@2 (=> (and true
    (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (< methodCallK@_349 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.height) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.height) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (* (- 1) methodCallK@_349)))
    (= exhaleMask@_351@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.height)))
    (= exhaleMask@_351@1 exhaleMask@_351@2)
    (IsGoodMask exhaleMask@_351@1)
    (not (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.height) perm$R) 0))
    (not (= methodCallK@_349 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_351@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) AVLTreeNode.height) perm$R)))
    (wf Heap@5 exhaleMask@_351@1 SecMask)
  )
    anon120
)))
(let ((anon364_Then (=> (and true
    $@condition_$54
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left)))
  )(and 
    anon364_Then@1_assertion
    anon364_Then@2
))))
(let ((anon327_Then (=> (and true
    $@condition_$53
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left)))
  )(and 
    anon327_Then@1_assertion
    anon327_Then@2
))))
(let ((anon194@4 (=> (and true
    (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@42 this AVLTreeNode.left) perm$R))
    (< methodCallK@_441 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@42 this AVLTreeNode.left) perm$R))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_443@0 this AVLTreeNode.left) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@42 this AVLTreeNode.left) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_443@0 this AVLTreeNode.left) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_443@0 this AVLTreeNode.left) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@42 this AVLTreeNode.left) perm$R) (* (- 1) methodCallK@_441)))
    (= exhaleMask@_443@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@42 this AVLTreeNode.left (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_443@0 this AVLTreeNode.left)))
    (IsGoodMask exhaleMask@_443@0)
    (not (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@42 this AVLTreeNode.left) perm$R) 0))
    (not (= methodCallK@_441 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@42 this AVLTreeNode.left) perm$R)))
    (wf Heap@3 exhaleMask@_443@0 SecMask)
  )
    (and anon364_Else anon364_Then)
)))
(let ((anon118@4 (=> (and true
    (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@76 this AVLTreeNode.left) perm$R))
    (< methodCallK@_349 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@76 this AVLTreeNode.left) perm$R))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_351@0 this AVLTreeNode.left) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@76 this AVLTreeNode.left) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_351@0 this AVLTreeNode.left) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_351@0 this AVLTreeNode.left) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@76 this AVLTreeNode.left) perm$R) (* (- 1) methodCallK@_349)))
    (= exhaleMask@_351@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@76 this AVLTreeNode.left (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_351@0 this AVLTreeNode.left)))
    (IsGoodMask exhaleMask@_351@0)
    (not (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@76 this AVLTreeNode.left) perm$R) 0))
    (not (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@76 this AVLTreeNode.left) perm$R) methodCallK@_349))
    (wf Heap@5 exhaleMask@_351@0 SecMask)
  )
    anon327_Then
)))
(let ((anon194@1 (=> (and true
    (< (* 1000 methodCallK@_441) (Fractions 1))
    (< (* 1000 methodCallK@_441) methodK@_261)
    (< 0 methodCallK@_441)
    (= Heap@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@2 this AVLTreeNode.right nr@16@0))
    (CanWrite$ref$ Mask@42 this AVLTreeNode.right)
    (not (= (* 1000 methodCallK@_441) (Fractions 1)))
    (not (= methodCallK@_441 0))
    (not (= methodK@_261 (* 1000 methodCallK@_441)))
    (not (= null nr@16@0))
    (wf Heap@3 Mask@42 SecMask)
  )(and 
    anon194@3_assertion
    anon194@4
))))
(let ((anon118@1 (=> (and true
    (< (* 1000 methodCallK@_349) (Fractions 1))
    (< (* 1000 methodCallK@_349) methodK@_261)
    (< 0 methodCallK@_349)
    (= Heap@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this AVLTreeNode.left nl@12@0))
    (CanWrite$ref$ Mask@76 this AVLTreeNode.left)
    (not (= (* 1000 methodCallK@_349) (Fractions 1)))
    (not (= methodCallK@_349 0))
    (not (= methodK@_261 (* 1000 methodCallK@_349)))
    (not (= null nl@12@0))
    (wf Heap@5 Mask@76 SecMask)
  )
    anon118@4
)))
(let ((anon194 (=> (and true
  )(and 
    anon194_assertion
    anon194@1
))))
(let ((anon118 (=> (and true
  )(and 
    anon118_assertion
    anon118@1
))))
(let ((anon193 (=> (and true
    (= exhaleHeap@_429@0 Heap@2)
    (= Mask@41 Mask@42)
    (= nr@16@0 r@194@0)
  )
    anon194
)))
(let ((anon359_Then@13 (=> (and true
    (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_415@4 nr@16@0 AVLTreeNode.balanceFactor) perm$R))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@34 nr@16@0 AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_415@5 nr@16@0 AVLTreeNode.valid) perm$R (Fractions 100)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@36 nr@16@0 AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_415@4 nr@16@0 AVLTreeNode.balanceFactor) perm$R 0))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@36 nr@16@0 AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@35 nr@16@0 AVLTreeNode.height) perm$R (Fractions 50)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@37 nr@16@0 AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@36 nr@16@0 AVLTreeNode.balanceFactor) perm$R (Fractions 50)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@35 nr@16@0 AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@34 nr@16@0 AVLTreeNode.keys) perm$R (Fractions 50)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_414@0 nr@16@0 AVLTreeNode.keys) (Seq@Singleton$Int$ k@9))
    (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_414@0 nr@16@0 AVLTreeNode.balanceFactor))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_415@4 nr@16@0 AVLTreeNode.balanceFactor) perm$N))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_415@5 nr@16@0 AVLTreeNode.valid) perm$R))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@35 nr@16@0 AVLTreeNode.height) perm$R))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@36 nr@16@0 AVLTreeNode.balanceFactor) perm$R))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@34 nr@16@0 AVLTreeNode.keys) perm$R))
    (= 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_414@0 nr@16@0 AVLTreeNode.height))
    (= exhaleHeap@_414@0 Heap@2)
    (= exhaleMask@_415@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_415@4 nr@16@0 AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@36 nr@16@0 AVLTreeNode.balanceFactor)))
    (= Mask@34 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_415@5 nr@16@0 AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@34 nr@16@0 AVLTreeNode.valid)))
    (= Mask@35 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@34 nr@16@0 AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@35 nr@16@0 AVLTreeNode.keys)))
    (= Mask@36 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@35 nr@16@0 AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@36 nr@16@0 AVLTreeNode.height)))
    (= Mask@37 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@36 nr@16@0 AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@37 nr@16@0 AVLTreeNode.balanceFactor)))
    (= Mask@37 Mask@42)
    (= nr@16@0 nw@_408@0)
    (IsGoodExhaleState exhaleHeap@_414@0 Heap@1 exhaleMask@_415@5 SecMask)
    (IsGoodMask exhaleMask@_415@5)
    (IsGoodMask Mask@34)
    (IsGoodMask Mask@35)
    (IsGoodMask Mask@36)
    (IsGoodMask Mask@37)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_414@0 nr@16@0 AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Int$ 0))
    (IsGoodState (heapFragment$Int$ 1))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_414@0 nr@16@0 AVLTreeNode.keys)))
    (not (= null nr@16@0))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_414@0 nr@16@0 AVLTreeNode.keys) k@9)
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_414@0 nr@16@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_414@0 nr@16@0 AVLTreeNode.keys))
    (wf exhaleHeap@_414@0 exhaleMask@_415@5 SecMask)
    (wf exhaleHeap@_414@0 Mask@34 SecMask)
    (wf exhaleHeap@_414@0 Mask@35 SecMask)
    (wf exhaleHeap@_414@0 Mask@36 SecMask)
    (wf exhaleHeap@_414@0 Mask@37 SecMask)
    (wf Heap@1 exhaleMask@_415@5 SecMask)
  )
    anon194
)))
(let ((anon117 (=> (and true
    (= exhaleHeap@_337@0 Heap@4)
    (= Mask@75 Mask@76)
    (= nl@12@0 r@174@0)
  )
    anon118
)))
(let ((anon322_Then@13 (=> (and true
    (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_323@4 nl@12@0 AVLTreeNode.balanceFactor) perm$R))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@68 nl@12@0 AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_323@5 nl@12@0 AVLTreeNode.valid) perm$R (Fractions 100)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@70 nl@12@0 AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_323@4 nl@12@0 AVLTreeNode.balanceFactor) perm$R 0))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@70 nl@12@0 AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@69 nl@12@0 AVLTreeNode.height) perm$R (Fractions 50)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@71 nl@12@0 AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@70 nl@12@0 AVLTreeNode.balanceFactor) perm$R (Fractions 50)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@69 nl@12@0 AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@68 nl@12@0 AVLTreeNode.keys) perm$R (Fractions 50)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_322@0 nl@12@0 AVLTreeNode.keys) (Seq@Singleton$Int$ k@9))
    (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_322@0 nl@12@0 AVLTreeNode.balanceFactor))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_323@4 nl@12@0 AVLTreeNode.balanceFactor) perm$N))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_323@5 nl@12@0 AVLTreeNode.valid) perm$R))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@69 nl@12@0 AVLTreeNode.height) perm$R))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@70 nl@12@0 AVLTreeNode.balanceFactor) perm$R))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@68 nl@12@0 AVLTreeNode.keys) perm$R))
    (= 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_322@0 nl@12@0 AVLTreeNode.height))
    (= exhaleHeap@_322@0 Heap@4)
    (= exhaleMask@_323@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_323@4 nl@12@0 AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@70 nl@12@0 AVLTreeNode.balanceFactor)))
    (= Mask@68 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_323@5 nl@12@0 AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@68 nl@12@0 AVLTreeNode.valid)))
    (= Mask@69 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@68 nl@12@0 AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@69 nl@12@0 AVLTreeNode.keys)))
    (= Mask@70 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@69 nl@12@0 AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@70 nl@12@0 AVLTreeNode.height)))
    (= Mask@71 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@70 nl@12@0 AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@71 nl@12@0 AVLTreeNode.balanceFactor)))
    (= Mask@71 Mask@76)
    (= nl@12@0 nw@_316@0)
    (IsGoodExhaleState exhaleHeap@_322@0 Heap@1 exhaleMask@_323@5 SecMask)
    (IsGoodMask exhaleMask@_323@5)
    (IsGoodMask Mask@68)
    (IsGoodMask Mask@69)
    (IsGoodMask Mask@70)
    (IsGoodMask Mask@71)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_322@0 nl@12@0 AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Int$ 0))
    (IsGoodState (heapFragment$Int$ 1))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_322@0 nl@12@0 AVLTreeNode.keys)))
    (not (= null nl@12@0))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_322@0 nl@12@0 AVLTreeNode.keys) k@9)
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_322@0 nl@12@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_322@0 nl@12@0 AVLTreeNode.keys))
    (wf exhaleHeap@_322@0 exhaleMask@_323@5 SecMask)
    (wf exhaleHeap@_322@0 Mask@68 SecMask)
    (wf exhaleHeap@_322@0 Mask@69 SecMask)
    (wf exhaleHeap@_322@0 Mask@70 SecMask)
    (wf exhaleHeap@_322@0 Mask@71 SecMask)
    (wf Heap@1 exhaleMask@_323@5 SecMask)
  )
    anon118
)))
(let ((anon363_Else (=> (and true
    (not $@condition_$46)
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@192@0 AVLTreeNode.keys) k@9))
  )
    anon193
)))
(let ((anon363_Then (=> (and true
    $@condition_$46
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_429@0 r@194@0 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@192@0 AVLTreeNode.height))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@192@0 AVLTreeNode.keys) k@9)
  )
    anon193
)))
(let ((anon359_Then@11 (=> (and true
    (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_415@3 nw@_408@0 AVLTreeNode.keys) perm$R))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_415@4 nw@_408@0 AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_415@3 nw@_408@0 AVLTreeNode.keys) perm$R 0))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_415@3 nw@_408@0 AVLTreeNode.keys) perm$N))
    (= exhaleMask@_415@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_415@3 nw@_408@0 AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_415@4 nw@_408@0 AVLTreeNode.keys)))
    (IsGoodMask exhaleMask@_415@4)
    (wf Heap@1 exhaleMask@_415@4 SecMask)
  )
    anon359_Then@13
)))
(let ((anon326_Else (=> (and true
    (not $@condition_$45)
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@172@0 AVLTreeNode.keys) k@9))
  )
    anon117
)))
(let ((anon326_Then (=> (and true
    $@condition_$45
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_337@0 r@174@0 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@172@0 AVLTreeNode.height))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@172@0 AVLTreeNode.keys) k@9)
  )
    anon117
)))
(let ((anon322_Then@11 (=> (and true
    (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_323@3 nw@_316@0 AVLTreeNode.keys) perm$R))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_323@4 nw@_316@0 AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_323@3 nw@_316@0 AVLTreeNode.keys) perm$R 0))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_323@3 nw@_316@0 AVLTreeNode.keys) perm$N))
    (= exhaleMask@_323@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_323@3 nw@_316@0 AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_323@4 nw@_316@0 AVLTreeNode.keys)))
    (IsGoodMask exhaleMask@_323@4)
    (wf Heap@1 exhaleMask@_323@4 SecMask)
  )
    anon322_Then@13
)))
(let ((anon191 (=> (and true
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_429@0 r@194@0 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@192@0 AVLTreeNode.height)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_429@0 r@194@0 AVLTreeNode.height) (+ 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@192@0 AVLTreeNode.height))))
  )
    (and anon363_Else anon363_Then)
)))
(let ((anon359_Then@9 (=> (and true
    (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_415@2 nw@_408@0 AVLTreeNode.right) perm$R))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_415@3 nw@_408@0 AVLTreeNode.right) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_415@2 nw@_408@0 AVLTreeNode.right) perm$R 0))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_415@2 nw@_408@0 AVLTreeNode.right) perm$N))
    (= exhaleMask@_415@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_415@2 nw@_408@0 AVLTreeNode.right (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_415@3 nw@_408@0 AVLTreeNode.right)))
    (IsGoodMask exhaleMask@_415@3)
    (wf Heap@1 exhaleMask@_415@3 SecMask)
  )
    anon359_Then@11
)))
(let ((anon115 (=> (and true
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_337@0 r@174@0 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@172@0 AVLTreeNode.height)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_337@0 r@174@0 AVLTreeNode.height) (+ 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@172@0 AVLTreeNode.height))))
  )
    (and anon326_Else anon326_Then)
)))
(let ((anon322_Then@9 (=> (and true
    (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_323@2 nw@_316@0 AVLTreeNode.right) perm$R))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_323@2 nw@_316@0 AVLTreeNode.right) perm$N))
    (= exhaleMask@_323@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_323@2 nw@_316@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_323@2 nw@_316@0 AVLTreeNode.right) perm$R 0)))
    (IsGoodMask exhaleMask@_323@3)
    (wf Heap@1 exhaleMask@_323@3 SecMask)
  )
    anon322_Then@11
)))
(let ((anon362_Else (=> (and true
    (not $@condition_$40)
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@192@0 AVLTreeNode.keys) k@9)
  )
    anon191
)))
(let ((anon362_Then (=> (and true
    $@condition_$40
    (= (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_429@0 r@194@0 AVLTreeNode.keys)) (+ (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@192@0 AVLTreeNode.keys)) 1))
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@192@0 AVLTreeNode.keys) k@9))
  )
    anon191
)))
(let ((anon359_Then@7 (=> (and true
    (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_415@1 nw@_408@0 AVLTreeNode.left) perm$R))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_415@2 nw@_408@0 AVLTreeNode.left) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_415@1 nw@_408@0 AVLTreeNode.left) perm$R 0))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_415@1 nw@_408@0 AVLTreeNode.left) perm$N))
    (= exhaleMask@_415@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_415@1 nw@_408@0 AVLTreeNode.left (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_415@2 nw@_408@0 AVLTreeNode.left)))
    (IsGoodMask exhaleMask@_415@2)
    (wf Heap@1 exhaleMask@_415@2 SecMask)
  )
    anon359_Then@9
)))
(let ((anon325_Else (=> (and true
    (not $@condition_$38)
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@172@0 AVLTreeNode.keys) k@9)
  )
    anon115
)))
(let ((anon325_Then (=> (and true
    $@condition_$38
    (= (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_337@0 r@174@0 AVLTreeNode.keys)) (+ (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@172@0 AVLTreeNode.keys)) 1))
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@172@0 AVLTreeNode.keys) k@9))
  )
    anon115
)))
(let ((anon322_Then@7 (=> (and true
    (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_323@1 nw@_316@0 AVLTreeNode.left) perm$R))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_323@1 nw@_316@0 AVLTreeNode.left) perm$N))
    (= exhaleMask@_323@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_323@1 nw@_316@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_323@1 nw@_316@0 AVLTreeNode.left) perm$R 0)))
    (IsGoodMask exhaleMask@_323@2)
    (wf Heap@1 exhaleMask@_323@2 SecMask)
  )
    anon322_Then@9
)))
(let (($branchMerge_15 (=> (and true
  )
    (and anon362_Else anon362_Then)
)))
(let ((anon359_Then@5 (=> (and true
    (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_415@0 nw@_408@0 AVLTreeNode.height) perm$R))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_415@1 nw@_408@0 AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_415@0 nw@_408@0 AVLTreeNode.height) perm$R 0))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_415@0 nw@_408@0 AVLTreeNode.height) perm$N))
    (= exhaleMask@_415@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_415@0 nw@_408@0 AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_415@1 nw@_408@0 AVLTreeNode.height)))
    (IsGoodMask exhaleMask@_415@1)
    (wf Heap@1 exhaleMask@_415@1 SecMask)
  )
    anon359_Then@7
)))
(let (($branchMerge_14 (=> (and true
  )
    (and anon325_Else anon325_Then)
)))
(let ((anon322_Then@5 (=> (and true
    (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_323@0 nw@_316@0 AVLTreeNode.height) perm$R))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_323@1 nw@_316@0 AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_323@0 nw@_316@0 AVLTreeNode.height) perm$R 0))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_323@0 nw@_316@0 AVLTreeNode.height) perm$N))
    (= exhaleMask@_323@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_323@0 nw@_316@0 AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_323@1 nw@_316@0 AVLTreeNode.height)))
    (IsGoodMask exhaleMask@_323@1)
    (wf Heap@1 exhaleMask@_323@1 SecMask)
  )
    anon322_Then@7
)))
(let ((anon361_Else (=> (and true
    (not $@condition_$37)
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@192@0 AVLTreeNode.keys) k@9))
  )
    $branchMerge_15
)))
(let ((anon361_Then (=> (and true
    $@condition_$37
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_429@0 r@194@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@192@0 AVLTreeNode.keys))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_429@0 r@194@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_429@0 r@194@0 AVLTreeNode.keys))
  )
    $branchMerge_15
)))
(let ((anon359_Then@3 (=> (and true
    (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@33 nw@_408@0 AVLTreeNode.key) perm$R))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_415@0 nw@_408@0 AVLTreeNode.key) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@33 nw@_408@0 AVLTreeNode.key) perm$R 0))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@33 nw@_408@0 AVLTreeNode.key) perm$N))
    (= exhaleMask@_415@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@33 nw@_408@0 AVLTreeNode.key (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_415@0 nw@_408@0 AVLTreeNode.key)))
    (IsGoodMask exhaleMask@_415@0)
    (wf Heap@1 exhaleMask@_415@0 SecMask)
  )
    anon359_Then@5
)))
(let ((anon324_Else (=> (and true
    (not $@condition_$36)
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@172@0 AVLTreeNode.keys) k@9))
  )
    $branchMerge_14
)))
(let ((anon324_Then (=> (and true
    $@condition_$36
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_337@0 r@174@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@172@0 AVLTreeNode.keys))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_337@0 r@174@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_337@0 r@174@0 AVLTreeNode.keys))
  )
    $branchMerge_14
)))
(let ((anon322_Then@3 (=> (and true
    (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@67 nw@_316@0 AVLTreeNode.key) perm$R))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_323@0 nw@_316@0 AVLTreeNode.key) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@67 nw@_316@0 AVLTreeNode.key) perm$R 0))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@67 nw@_316@0 AVLTreeNode.key) perm$N))
    (= exhaleMask@_323@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@67 nw@_316@0 AVLTreeNode.key (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_323@0 nw@_316@0 AVLTreeNode.key)))
    (IsGoodMask exhaleMask@_323@0)
    (wf Heap@1 exhaleMask@_323@0 SecMask)
  )
    anon322_Then@5
)))
(let ((anon187@6 (=> (and true
    (= (dtype r@194@0) AVLTreeNode@t)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@3 this@192@0 AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@2 this@192@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@2 this@192@0 AVLTreeNode.balanceFactor) perm$R) (* (- 50) Permission$denominator))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@38 r@194@0 AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@3 r@194@0 AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@38 r@194@0 AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@40 r@194@0 AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@39 r@194@0 AVLTreeNode.height) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@40 r@194@0 AVLTreeNode.height) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@41 r@194@0 AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@40 r@194@0 AVLTreeNode.balanceFactor) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@41 r@194@0 AVLTreeNode.balanceFactor) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@39 r@194@0 AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@38 r@194@0 AVLTreeNode.keys) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@39 r@194@0 AVLTreeNode.keys) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@38 r@194@0 AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@3 r@194@0 AVLTreeNode.valid) perm$R) (Fractions 100)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@40 r@194@0 AVLTreeNode.height) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@39 r@194@0 AVLTreeNode.height) perm$R) (Fractions 50)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@41 r@194@0 AVLTreeNode.balanceFactor) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@40 r@194@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@39 r@194@0 AVLTreeNode.keys) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@38 r@194@0 AVLTreeNode.keys) perm$R) (Fractions 50)))
    (= exhaleMask@_430@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@2 this@192@0 AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@3 this@192@0 AVLTreeNode.balanceFactor)))
    (= Mask@38 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@3 r@194@0 AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@38 r@194@0 AVLTreeNode.valid)))
    (= Mask@39 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@38 r@194@0 AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@39 r@194@0 AVLTreeNode.keys)))
    (= Mask@40 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@39 r@194@0 AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@40 r@194@0 AVLTreeNode.height)))
    (= Mask@41 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@40 r@194@0 AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@41 r@194@0 AVLTreeNode.balanceFactor)))
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@2 this@192@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@2 this@192@0 AVLTreeNode.balanceFactor) perm$N)))
    (forall( (|i#82#195| Int))(=> (and (< |i#82#195| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@192@0 AVLTreeNode.keys))) (<= 0 |i#82#195|)) (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_429@0 r@194@0 AVLTreeNode.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@192@0 AVLTreeNode.keys) |i#82#195|))))
    (forall( (|i#83#196| Int))(=> (and (< |i#83#196| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_429@0 r@194@0 AVLTreeNode.keys))) (<= 0 |i#83#196|)) (or (= (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_429@0 r@194@0 AVLTreeNode.keys) |i#83#196|) k@9) (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@192@0 AVLTreeNode.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_429@0 r@194@0 AVLTreeNode.keys) |i#83#196|)))))
    (IsGoodExhaleState exhaleHeap@_429@0 Heap@1 exhaleMask@_430@3 SecMask)
    (IsGoodMask exhaleMask@_430@3)
    (IsGoodMask Mask@38)
    (IsGoodMask Mask@39)
    (IsGoodMask Mask@40)
    (IsGoodMask Mask@41)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_429@0 r@194@0 AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_429@0 r@194@0 AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_429@0 r@194@0 AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_429@0 r@194@0 AVLTreeNode.keys)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@2 this@192@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (not (= null r@194@0))
    (not (= r@194@0 null))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_429@0 r@194@0 AVLTreeNode.keys) k@9)
    (wf exhaleHeap@_429@0 exhaleMask@_430@3 SecMask)
    (wf exhaleHeap@_429@0 Mask@38 SecMask)
    (wf exhaleHeap@_429@0 Mask@39 SecMask)
    (wf exhaleHeap@_429@0 Mask@40 SecMask)
    (wf exhaleHeap@_429@0 Mask@41 SecMask)
    (wf Heap@1 exhaleMask@_430@3 SecMask)
  )
    (and anon361_Else anon361_Then)
)))
(let ((anon359_Then (=> (and true
    $@condition_$30
    (< (* 1000 methodCallK@_413) (Fractions 1))
    (< (* 1000 methodCallK@_413) methodK@_261)
    (< 0 methodCallK@_413)
    (= $LockBottom (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap@1 nw@_408@0 mu))
    (= (dtype nw@_408@0) AVLTreeNode@t)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@27 nw@_408@0 AVLTreeNode.key) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 nw@_408@0 AVLTreeNode.key) perm$R (Fractions 100)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@28 nw@_408@0 AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@27 nw@_408@0 AVLTreeNode.height) perm$R (Fractions 100)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@32 nw@_408@0 AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@31 nw@_408@0 AVLTreeNode.balanceFactor) perm$R (Fractions 100)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@29 nw@_408@0 AVLTreeNode.left) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@28 nw@_408@0 AVLTreeNode.left) perm$R (Fractions 100)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@30 nw@_408@0 AVLTreeNode.right) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@29 nw@_408@0 AVLTreeNode.right) perm$R (Fractions 100)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@31 nw@_408@0 AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@30 nw@_408@0 AVLTreeNode.keys) perm$R (Fractions 100)))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 nw@_408@0 AVLTreeNode.key) perm$R))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@27 nw@_408@0 AVLTreeNode.height) perm$R))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@31 nw@_408@0 AVLTreeNode.balanceFactor) perm$R))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@32 nw@_408@0 mu) perm$R))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@28 nw@_408@0 AVLTreeNode.left) perm$R))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@29 nw@_408@0 AVLTreeNode.right) perm$R))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@30 nw@_408@0 AVLTreeNode.keys) perm$R))
    (= Mask@27 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 nw@_408@0 AVLTreeNode.key (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@27 nw@_408@0 AVLTreeNode.key)))
    (= Mask@28 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@27 nw@_408@0 AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@28 nw@_408@0 AVLTreeNode.height)))
    (= Mask@29 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@28 nw@_408@0 AVLTreeNode.left (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@29 nw@_408@0 AVLTreeNode.left)))
    (= Mask@30 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@29 nw@_408@0 AVLTreeNode.right (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@30 nw@_408@0 AVLTreeNode.right)))
    (= Mask@31 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@30 nw@_408@0 AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@31 nw@_408@0 AVLTreeNode.keys)))
    (= Mask@32 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@31 nw@_408@0 AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@32 nw@_408@0 AVLTreeNode.balanceFactor)))
    (= Mask@33 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@32 nw@_408@0 mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@32 nw@_408@0 mu) perm$R (Fractions 100))))
    (forall( (|f_$17_$0| Field$Bool$))(and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ Mask@26 nw@_408@0 |f_$17_$0|) perm$R) 0) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ Mask@26 nw@_408@0 |f_$17_$0|) perm$N) 0)))
    (forall( (|f_$17_$1| Field$Int$))(and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 nw@_408@0 |f_$17_$1|) perm$R) 0) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 nw@_408@0 |f_$17_$1|) perm$N) 0)))
    (forall( (|f_$17_$2| Field$ref$))(and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@26 nw@_408@0 |f_$17_$2|) perm$R) 0) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@26 nw@_408@0 |f_$17_$2|) perm$N) 0)))
    (forall( (|f_$17_$3| Field$Mu$))(and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@26 nw@_408@0 |f_$17_$3|) perm$R) 0) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@26 nw@_408@0 |f_$17_$3|) perm$N) 0)))
    (forall( (|f_$17_$4| Field$Seq$Int$$))(and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@26 nw@_408@0 |f_$17_$4|) perm$R) 0) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@26 nw@_408@0 |f_$17_$4|) perm$N) 0)))
    (not (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 nw@_408@0 held)))
    (not (= (* 1000 methodCallK@_413) (Fractions 1)))
    (not (= methodCallK@_413 0))
    (not (= methodK@_261 (* 1000 methodCallK@_413)))
    (not (= null nw@_408@0))
    (not (= nw@_408@0 null))
    (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap@1 nw@_408@0 rdheld))
    (wf Heap@1 Mask@33 SecMask)
    cond@_407@0
  )
    anon359_Then@3
)))
(let ((anon111@6 (=> (and true
    (= (dtype r@174@0) AVLTreeNode@t)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@3 this@172@0 AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@2 this@172@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@2 this@172@0 AVLTreeNode.balanceFactor) perm$R) (* (- 50) Permission$denominator))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@72 r@174@0 AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@3 r@174@0 AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@72 r@174@0 AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@74 r@174@0 AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@73 r@174@0 AVLTreeNode.height) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@74 r@174@0 AVLTreeNode.height) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@75 r@174@0 AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@74 r@174@0 AVLTreeNode.balanceFactor) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@75 r@174@0 AVLTreeNode.balanceFactor) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@73 r@174@0 AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@72 r@174@0 AVLTreeNode.keys) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@73 r@174@0 AVLTreeNode.keys) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@72 r@174@0 AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@3 r@174@0 AVLTreeNode.valid) perm$R) (Fractions 100)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@74 r@174@0 AVLTreeNode.height) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@73 r@174@0 AVLTreeNode.height) perm$R) (Fractions 50)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@75 r@174@0 AVLTreeNode.balanceFactor) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@74 r@174@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@73 r@174@0 AVLTreeNode.keys) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@72 r@174@0 AVLTreeNode.keys) perm$R) (Fractions 50)))
    (= exhaleMask@_338@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@2 this@172@0 AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@3 this@172@0 AVLTreeNode.balanceFactor)))
    (= Mask@72 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@3 r@174@0 AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@72 r@174@0 AVLTreeNode.valid)))
    (= Mask@73 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@72 r@174@0 AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@73 r@174@0 AVLTreeNode.keys)))
    (= Mask@74 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@73 r@174@0 AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@74 r@174@0 AVLTreeNode.height)))
    (= Mask@75 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@74 r@174@0 AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@75 r@174@0 AVLTreeNode.balanceFactor)))
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@2 this@172@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@2 this@172@0 AVLTreeNode.balanceFactor) perm$N)))
    (forall( (|i#82#175| Int))(=> (and (< |i#82#175| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@172@0 AVLTreeNode.keys))) (<= 0 |i#82#175|)) (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_337@0 r@174@0 AVLTreeNode.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@172@0 AVLTreeNode.keys) |i#82#175|))))
    (forall( (|i#83#176| Int))(=> (and (< |i#83#176| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_337@0 r@174@0 AVLTreeNode.keys))) (<= 0 |i#83#176|)) (or (= (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_337@0 r@174@0 AVLTreeNode.keys) |i#83#176|) k@9) (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@172@0 AVLTreeNode.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_337@0 r@174@0 AVLTreeNode.keys) |i#83#176|)))))
    (IsGoodExhaleState exhaleHeap@_337@0 Heap@1 exhaleMask@_338@3 SecMask)
    (IsGoodMask exhaleMask@_338@3)
    (IsGoodMask Mask@72)
    (IsGoodMask Mask@73)
    (IsGoodMask Mask@74)
    (IsGoodMask Mask@75)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_337@0 r@174@0 AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_337@0 r@174@0 AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_337@0 r@174@0 AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_337@0 r@174@0 AVLTreeNode.keys)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@2 this@172@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (not (= null r@174@0))
    (not (= r@174@0 null))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_337@0 r@174@0 AVLTreeNode.keys) k@9)
    (wf exhaleHeap@_337@0 exhaleMask@_338@3 SecMask)
    (wf exhaleHeap@_337@0 Mask@72 SecMask)
    (wf exhaleHeap@_337@0 Mask@73 SecMask)
    (wf exhaleHeap@_337@0 Mask@74 SecMask)
    (wf exhaleHeap@_337@0 Mask@75 SecMask)
    (wf Heap@1 exhaleMask@_338@3 SecMask)
  )
    (and anon324_Else anon324_Then)
)))
(let ((anon322_Then (=> (and true
    $@condition_$29
    (< (* 1000 methodCallK@_321) (Fractions 1))
    (< (* 1000 methodCallK@_321) methodK@_261)
    (< 0 methodCallK@_321)
    (= $LockBottom (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap@1 nw@_316@0 mu))
    (= (dtype nw@_316@0) AVLTreeNode@t)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@61 nw@_316@0 AVLTreeNode.key) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 nw@_316@0 AVLTreeNode.key) perm$R (Fractions 100)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@62 nw@_316@0 AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@61 nw@_316@0 AVLTreeNode.height) perm$R (Fractions 100)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@66 nw@_316@0 AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@65 nw@_316@0 AVLTreeNode.balanceFactor) perm$R (Fractions 100)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@63 nw@_316@0 AVLTreeNode.left) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@62 nw@_316@0 AVLTreeNode.left) perm$R (Fractions 100)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@64 nw@_316@0 AVLTreeNode.right) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@63 nw@_316@0 AVLTreeNode.right) perm$R (Fractions 100)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@65 nw@_316@0 AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@64 nw@_316@0 AVLTreeNode.keys) perm$R (Fractions 100)))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 nw@_316@0 AVLTreeNode.key) perm$R))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@61 nw@_316@0 AVLTreeNode.height) perm$R))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@65 nw@_316@0 AVLTreeNode.balanceFactor) perm$R))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@66 nw@_316@0 mu) perm$R))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@62 nw@_316@0 AVLTreeNode.left) perm$R))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@63 nw@_316@0 AVLTreeNode.right) perm$R))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@64 nw@_316@0 AVLTreeNode.keys) perm$R))
    (= Mask@61 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 nw@_316@0 AVLTreeNode.key (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@61 nw@_316@0 AVLTreeNode.key)))
    (= Mask@62 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@61 nw@_316@0 AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@62 nw@_316@0 AVLTreeNode.height)))
    (= Mask@63 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@62 nw@_316@0 AVLTreeNode.left (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@63 nw@_316@0 AVLTreeNode.left)))
    (= Mask@64 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@63 nw@_316@0 AVLTreeNode.right (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@64 nw@_316@0 AVLTreeNode.right)))
    (= Mask@65 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@64 nw@_316@0 AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@65 nw@_316@0 AVLTreeNode.keys)))
    (= Mask@66 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@65 nw@_316@0 AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@66 nw@_316@0 AVLTreeNode.balanceFactor)))
    (= Mask@67 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@66 nw@_316@0 mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@66 nw@_316@0 mu) perm$R (Fractions 100))))
    (forall( (|f_$16_$0| Field$Bool$))(and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ Mask@26 nw@_316@0 |f_$16_$0|) perm$R) 0) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ Mask@26 nw@_316@0 |f_$16_$0|) perm$N) 0)))
    (forall( (|f_$16_$1| Field$Int$))(and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 nw@_316@0 |f_$16_$1|) perm$R) 0) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 nw@_316@0 |f_$16_$1|) perm$N) 0)))
    (forall( (|f_$16_$2| Field$ref$))(and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@26 nw@_316@0 |f_$16_$2|) perm$R) 0) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@26 nw@_316@0 |f_$16_$2|) perm$N) 0)))
    (forall( (|f_$16_$3| Field$Mu$))(and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@26 nw@_316@0 |f_$16_$3|) perm$R) 0) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@26 nw@_316@0 |f_$16_$3|) perm$N) 0)))
    (forall( (|f_$16_$4| Field$Seq$Int$$))(and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@26 nw@_316@0 |f_$16_$4|) perm$R) 0) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@26 nw@_316@0 |f_$16_$4|) perm$N) 0)))
    (not (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 nw@_316@0 held)))
    (not (= (* 1000 methodCallK@_321) (Fractions 1)))
    (not (= methodCallK@_321 0))
    (not (= methodK@_261 (* 1000 methodCallK@_321)))
    (not (= null nw@_316@0))
    (not (= nw@_316@0 null))
    (not (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap@1 nw@_316@0 rdheld))
    (wf Heap@1 Mask@67 SecMask)
    cond@_315@0
  )
    anon322_Then@3
)))
(let ((anon187@4 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@2 this@192@0 AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@1 this@192@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@1 this@192@0 AVLTreeNode.height) perm$R) (* (- 50) Permission$denominator))))
    (= exhaleMask@_430@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@1 this@192@0 AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@2 this@192@0 AVLTreeNode.height)))
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@1 this@192@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@1 this@192@0 AVLTreeNode.height) perm$N)))
    (IsGoodMask exhaleMask@_430@2)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@1 this@192@0 AVLTreeNode.height) perm$R) (Fractions 50)))
    (wf Heap@1 exhaleMask@_430@2 SecMask)
  )(and 
    anon187@5_assertion
    anon187@6
))))
(let ((anon111@4 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@2 this@172@0 AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@1 this@172@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@1 this@172@0 AVLTreeNode.height) perm$R) (* (- 50) Permission$denominator))))
    (= exhaleMask@_338@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@1 this@172@0 AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@2 this@172@0 AVLTreeNode.height)))
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@1 this@172@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@1 this@172@0 AVLTreeNode.height) perm$N)))
    (IsGoodMask exhaleMask@_338@2)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@1 this@172@0 AVLTreeNode.height) perm$R) (Fractions 50)))
    (wf Heap@1 exhaleMask@_338@2 SecMask)
  )(and 
    anon111@5_assertion
    anon111@6
))))
(let ((anon187@2 (=> (and true
    (= (* (- 50) Permission$denominator) (* (- 1) (Fractions 50)))
    (= exhaleMask@_430@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_430@0 this@192@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_430@0 this@192@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_430@0 this@192@0 AVLTreeNode.keys) perm$R) (* (- 50) Permission$denominator)))))
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_430@0 this@192@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_430@0 this@192@0 AVLTreeNode.keys) perm$N)))
    (IsGoodMask exhaleMask@_430@1)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_430@0 this@192@0 AVLTreeNode.keys) perm$R) (Fractions 50)))
    (wf Heap@1 exhaleMask@_430@1 SecMask)
  )(and 
    anon187@3_assertion
    anon187@4
))))
(let ((anon111@2 (=> (and true
    (= (* (- 50) Permission$denominator) (* (- 1) (Fractions 50)))
    (= exhaleMask@_338@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_338@0 this@172@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_338@0 this@172@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_338@0 this@172@0 AVLTreeNode.keys) perm$R) (* (- 50) Permission$denominator)))))
    (=> (= (* 50 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_338@0 this@172@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_338@0 this@172@0 AVLTreeNode.keys) perm$N)))
    (IsGoodMask exhaleMask@_338@1)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_338@0 this@172@0 AVLTreeNode.keys) perm$R) (Fractions 50)))
    (wf Heap@1 exhaleMask@_338@1 SecMask)
  )(and 
    anon111@3_assertion
    anon111@4
))))
(let ((anon187 (=> (and true
    (< 0 (* 50 Permission$denominator))
    (= (* 50 Permission$denominator) (Fractions 50))
    (IsGoodMask exhaleMask@_430@0)
    (wf Heap@1 exhaleMask@_430@0 SecMask)
  )(and 
    anon187@1_assertion
    anon187@2
))))
(let ((anon111 (=> (and true
    (< 0 (* 50 Permission$denominator))
    (= (* 50 Permission$denominator) (Fractions 50))
    (IsGoodMask exhaleMask@_338@0)
    (wf Heap@1 exhaleMask@_338@0 SecMask)
  )(and 
    anon111@1_assertion
    anon111@2
))))
(let ((anon360_Else (=> (and true
    (CanRead$Int$ exhaleMask@_430@0 SecMask this@192@0 AVLTreeNode.valid)
    (not $@condition_$32)
  )
    anon187
)))
(let ((anon360_Then (=> (and true
    $@condition_$32
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@192@0 AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_429@0 this@192@0 AVLTreeNode.valid))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@192@0 AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_429@0 this@192@0 AVLTreeNode.valid)))
    (not (CanRead$Int$ exhaleMask@_430@0 SecMask this@192@0 AVLTreeNode.valid))
  )
    anon187
)))
(let ((anon323_Else (=> (and true
    (CanRead$Int$ exhaleMask@_338@0 SecMask this@172@0 AVLTreeNode.valid)
    (not $@condition_$31)
  )
    anon111
)))
(let ((anon323_Then (=> (and true
    $@condition_$31
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@172@0 AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_337@0 this@172@0 AVLTreeNode.valid))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@172@0 AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_337@0 this@172@0 AVLTreeNode.valid)))
    (not (CanRead$Int$ exhaleMask@_338@0 SecMask this@172@0 AVLTreeNode.valid))
  )
    anon111
)))
(let ((anon359_Else@5 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@0 this@192@0 AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@192@0 AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@0 this@192@0 AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@0 this@192@0 AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@192@0 AVLTreeNode.valid) perm$R) (* (- 100) Permission$denominator)))
    (= exhaleMask@_430@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@192@0 AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@0 this@192@0 AVLTreeNode.valid)))
    (=> (= (* 100 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@192@0 AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_430@0 this@192@0 AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@192@0 AVLTreeNode.valid) perm$R) (Fractions 100)))
  )
    (and anon360_Else anon360_Then)
)))
(let ((anon322_Else@5 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@0 this@172@0 AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@172@0 AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@0 this@172@0 AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@0 this@172@0 AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@172@0 AVLTreeNode.valid) perm$R) (* (- 100) Permission$denominator)))
    (= exhaleMask@_338@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@172@0 AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@0 this@172@0 AVLTreeNode.valid)))
    (=> (= (* 100 Permission$denominator) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@172@0 AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_338@0 this@172@0 AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 this@172@0 AVLTreeNode.valid) perm$R) (Fractions 100)))
  )
    (and anon323_Else anon323_Then)
)))
(let ((anon359_Else@3 (=> (and true
    (= this@192@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right))
    (not (= null this@192@0))
  )(and 
    anon359_Else@4_assertion
    anon359_Else@5
))))
(let ((anon322_Else@3 (=> (and true
    (= this@172@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left))
    (not (= null this@172@0))
    (not (= this this@172@0))
  )(and 
    anon322_Else@4_assertion
    anon322_Else@5
))))
(let ((anon359_Else (=> (and true
    (< (* 1000 methodCallK@_428) (Fractions 1))
    (< (* 1000 methodCallK@_428) methodK@_261)
    (< 0 methodCallK@_428)
    (not $@condition_$30)
    (not (= (* 1000 methodCallK@_428) (Fractions 1)))
    (not (= methodCallK@_428 0))
    (not (= methodK@_261 (* 1000 methodCallK@_428)))
    (not cond@_407@0)
  )(and 
    anon359_Else@2_assertion
    anon359_Else@3
))))
(let ((anon322_Else (=> (and true
    (< (* 1000 methodCallK@_336) (Fractions 1))
    (< (* 1000 methodCallK@_336) methodK@_261)
    (< 0 methodCallK@_336)
    (not $@condition_$29)
    (not (= (* 1000 methodCallK@_336) (Fractions 1)))
    (not (= methodCallK@_336 0))
    (not (= methodK@_261 (* 1000 methodCallK@_336)))
    (not cond@_315@0)
  )(and 
    anon322_Else@2_assertion
    anon322_Else@3
))))
(let ((anon321_Else@2 (=> (and true
    (CanRead$ref$ Mask@26 SecMask this AVLTreeNode.right)
  )
    (and anon359_Else anon359_Then)
)))
(let ((anon321_Then@2 (=> (and true
    (CanRead$ref$ Mask@26 SecMask this AVLTreeNode.left)
  )
    (and anon322_Else anon322_Then)
)))
(let ((anon321_Else (=> (and true
    (= (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) cond@_407@0)
    (not $@condition_$26)
    (not cond@_314@0)
  )
    anon321_Else@2
)))
(let ((anon321_Then (=> (and true
    $@condition_$26
    (= (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) cond@_315@0)
    cond@_314@0
  )
    anon321_Then@2
)))
(let ((anon308_Else (=> (and true
    (= (< k@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key)) cond@_314@0)
    (not $@condition_$24)
    (not cond@_284@0)
  )
    (and anon321_Else anon321_Then)
)))
(let ((anon80@2 (=> (and true
    (CanRead$Int$ Mask@26 SecMask this AVLTreeNode.key)
  )
    (and anon308_Else anon308_Then)
)))
(let ((anon80 (=> (and true
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.height))
    (= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.balanceFactor))
    (= (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key) k@9) cond@_284@0)
    (= (= true $@bf) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left)))
    (= (= true $@bf_1) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right)))
    (= (= true $@bf_53) (< (ite$Int$ $@bf_1 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height)) (ite$Int$ $@bf 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height))))
    (= (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height)) 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.height))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.balanceFactor) (+ (ite$Int$ $@bf 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_1 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height)))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.height) (ite$Int$ $@bf_53 (+ (ite$Int$ $@bf 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ $@bf_1 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ $@bf Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key))) (ite$Seq$Int$$ $@bf_1 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys))))
    (forall( (|kk#81| Int))(= (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this AVLTreeNode.keys) |kk#81|) (or (= |kk#81| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key)) (or (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) |kk#81|) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null))) (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) |kk#81|) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null)))))))
    (IsGoodMask Mask@26)
    (not (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.balanceFactor) (- 1)))
    (not (< 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.balanceFactor)))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.height)))
    (not (= 0 1))
    (not (= this (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left)))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this AVLTreeNode.keys))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys))))
    (wf Heap@1 Mask@26 SecMask)
  )
    anon80@2
)))
(let ((anon302_Else (=> (and true
    (= Mask@18 Mask@20)
    (= Mask@18 Mask@22)
    (= Mask@18 Mask@24)
    (= Mask@18 Mask@26)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right))
    (not $@condition_$12)
    (not $@condition_$14)
    (not $@condition_$16)
    (not $@condition_$18)
    (not $@condition_$20)
    (not $@condition_$22)
  )
    anon80
)))
(let ((anon302_Then (=> (and true
    $@condition_$12
    $@condition_$14
    $@condition_$16
    $@condition_$18
    $@condition_$20
    $@condition_$22
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@25 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@23 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@25 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@23 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@23 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@25 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@23 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@23 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))
    (= Mask@19 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid)))
    (= Mask@19 Mask@20)
    (= Mask@21 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height)))
    (= Mask@21 Mask@22)
    (= Mask@23 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@23 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys)))
    (= Mask@23 Mask@24)
    (= Mask@25 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@23 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@25 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor)))
    (= Mask@25 Mask@26)
    (forall( (|rk#80#164| Int))(=> (and (< |rk#80#164| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 |rk#80#164|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys) |rk#80#164|))))
    (IsGoodMask Mask@19)
    (IsGoodMask Mask@21)
    (IsGoodMask Mask@23)
    (IsGoodMask Mask@25)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) AVLTreeNode.height) 0))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right)))
    (wf Heap@1 Mask@18 SecMask)
    (wf Heap@1 Mask@19 SecMask)
    (wf Heap@1 Mask@21 SecMask)
    (wf Heap@1 Mask@23 SecMask)
    (wf Heap@1 Mask@25 SecMask)
  )
    anon80
)))
(let (($branchMerge_5 (=> (and true
  )
    (and anon302_Else anon302_Then)
)))
(let ((anon296_Else (=> (and true
    (= Mask@10 Mask@12)
    (= Mask@10 Mask@14)
    (= Mask@10 Mask@16)
    (= Mask@10 Mask@18)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left))
    (not $@condition_$1)
    (not $@condition_$10)
    (not $@condition_$2)
    (not $@condition_$4)
    (not $@condition_$6)
    (not $@condition_$8)
  )
    $branchMerge_5
)))
(let ((anon296_Then (=> (and true
    $@condition_$1
    $@condition_$10
    $@condition_$2
    $@condition_$4
    $@condition_$6
    $@condition_$8
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))
    (= Mask@11 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid)))
    (= Mask@11 Mask@12)
    (= Mask@13 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)))
    (= Mask@13 Mask@14)
    (= Mask@15 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys)))
    (= Mask@15 Mask@16)
    (= Mask@17 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor)))
    (= Mask@17 Mask@18)
    (forall( (|lk#79#163| Int))(=> (and (< |lk#79#163| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 |lk#79#163|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) |lk#79#163|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key))))
    (IsGoodMask Mask@11)
    (IsGoodMask Mask@13)
    (IsGoodMask Mask@15)
    (IsGoodMask Mask@17)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) 0))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left)))
    (not (= this (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left)))
    (wf Heap@1 Mask@11 SecMask)
    (wf Heap@1 Mask@13 SecMask)
    (wf Heap@1 Mask@15 SecMask)
    (wf Heap@1 Mask@17 SecMask)
  )
    $branchMerge_5
)))
(let ((anon56 (=> (and true
    (< 0 (Fractions 100))
    (= (Fractions 100) (+ (Fractions 50) (Fractions 50)))
    (= (Fractions 100) (+ 0 (Fractions 100)))
    (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@5 this AVLTreeNode.height) perm$R))
    (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@9 this AVLTreeNode.balanceFactor) perm$R))
    (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@8 this AVLTreeNode.keys) perm$R))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@10 this AVLTreeNode.balanceFactor) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@9 this AVLTreeNode.balanceFactor) perm$R (Fractions 100)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@10 this AVLTreeNode.height) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@5 this AVLTreeNode.height) perm$R (Fractions 100)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@10 this AVLTreeNode.key) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@4 this AVLTreeNode.key) perm$R (Fractions 100)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@10 this AVLTreeNode.left) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@6 this AVLTreeNode.left) perm$R (Fractions 100)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@10 this AVLTreeNode.right) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@7 this AVLTreeNode.right) perm$R (Fractions 100)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@10 this AVLTreeNode.keys) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@8 this AVLTreeNode.keys) perm$R (Fractions 100)))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@4 this AVLTreeNode.key) perm$R))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@6 this AVLTreeNode.left) perm$R))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@7 this AVLTreeNode.right) perm$R))
    (= Mask@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@9 this AVLTreeNode.balanceFactor (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@10 this AVLTreeNode.balanceFactor)))
    (= Mask@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@4 this AVLTreeNode.key (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@10 this AVLTreeNode.key)))
    (= Mask@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@5 this AVLTreeNode.height (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@10 this AVLTreeNode.height)))
    (= Mask@7 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@6 this AVLTreeNode.left (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@10 this AVLTreeNode.left)))
    (= Mask@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@7 this AVLTreeNode.right (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@10 this AVLTreeNode.right)))
    (= Mask@9 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@8 this AVLTreeNode.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@10 this AVLTreeNode.keys)))
    (IsGoodMask Mask@10)
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
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left)) AVLTreeNode@t))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.right)) AVLTreeNode@t))
    (wf Heap@1 Mask@10 SecMask)
    (wf Heap@1 Mask@4 SecMask)
    (wf Heap@1 Mask@5 SecMask)
    (wf Heap@1 Mask@6 SecMask)
    (wf Heap@1 Mask@7 SecMask)
    (wf Heap@1 Mask@8 SecMask)
    (wf Heap@1 Mask@9 SecMask)
  )
    (and anon296_Else anon296_Then)
)))
(let ((anon295_Then (=> (and true
    $@condition_$0
    (< oldVers@_282@0 newVers@_283@0)
    (= Heap@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.valid newVers@_283@0))
    (= Heap@0 Heap@1)
    (= newVers@_283@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@0 this AVLTreeNode.valid))
    (= oldVers@_282@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.valid))
    (not (= oldVers@_282@0 newVers@_283@0))
    (not (CanRead$Int$ Mask@4 SecMask this AVLTreeNode.valid))
  )
    anon56
)))
(let ((anon0@3 (=> (and true
    (= (* (- 100) Permission$denominator) (* (- 1) (Fractions 100)))
    (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@3 this AVLTreeNode.valid) perm$R))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@4 this AVLTreeNode.valid) (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@3 this AVLTreeNode.valid) perm$R 0))
    (= 0 (+ (Fractions 100) (* (- 100) Permission$denominator)))
    (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@3 this AVLTreeNode.valid) perm$N))
    (= Mask@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@3 this AVLTreeNode.valid (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@4 this AVLTreeNode.valid)))
    (not $@condition)
    (not (< (Fractions 100) (Fractions 100)))
    (not (< 0 0))
    (not (= (* 100 Permission$denominator) 0))
  )
    anon295_Then
)))
(let (($root (=> (and true
  )
    anon0@3
)))
   $root
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))

;Commands
   (check-sat)
   ;(get-unsat-core)
