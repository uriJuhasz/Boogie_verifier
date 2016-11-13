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
(declare-fun AVLTree.keys ( ) Field$Seq$Int$$)
(declare-fun AVLTree.root ( ) Field$ref$)
(declare-fun AVLTree.valid ( ) Field$Int$)
(declare-fun AVLTree@t ( ) TypeName)
(declare-fun AVLTreeNode.balanceFactor ( ) Field$Int$)
(declare-fun AVLTreeNode.height ( ) Field$Int$)
(declare-fun AVLTreeNode.key ( ) Field$Int$)
(declare-fun AVLTreeNode.keys ( ) Field$Seq$Int$$)
(declare-fun AVLTreeNode.left ( ) Field$ref$)
(declare-fun AVLTreeNode.right ( ) Field$ref$)
(declare-fun AVLTreeNode.valid ( ) Field$Int$)
(declare-fun AVLTreeNode@t ( ) TypeName)
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
(declare-fun exhaleHeap@_59@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_74@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_86@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_94@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleMask@_60@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_60@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_60@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_60@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_60@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_60@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_75@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_75@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_75@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_75@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_87@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_87@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_87@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_87@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_87@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_87@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_87@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_87@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_87@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_87@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_95@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_95@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun foldK@_85 ( ) Int)
(declare-fun forkK ( ) Field$Int$)
(declare-fun Fractions ( Int ) Int)
(declare-fun Heap ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun Heap@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
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
(declare-fun k@0 ( ) Int)
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
(declare-fun Mask@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun methodCallK@_58 ( ) Int)
(declare-fun methodCallK@_73 ( ) Int)
(declare-fun methodK@_37 ( ) Int)
(declare-fun module@default ( ) ModuleName)
(declare-fun monitorK ( ) Int)
(declare-fun mu ( ) Field$Mu$)
(declare-fun n@2 ( ) ref)
(declare-fun newVers@_51@0 ( ) Int)
(declare-fun null ( ) ref)
(declare-fun nw@_53@0 ( ) ref)
(declare-fun oldVers@_50@0 ( ) Int)
(declare-fun perm$N ( ) PermissionComponent)
(declare-fun perm$R ( ) PermissionComponent)
(declare-fun Permission$denominator ( ) Int)
(declare-fun Permission$Full ( ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun Permission$FullFraction ( ) Int)
(declare-fun Permission$Zero ( ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun predicateK ( ) Int)
(declare-fun predVer@_83@0 ( ) Int)
(declare-fun r@122 ( ) ref)
(declare-fun r@122@0 ( ) ref)
(declare-fun r@75 ( ) ref)
(declare-fun rdheld ( ) Field$Bool$)
(declare-fun SecMask ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@18 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@19 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@20 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@21 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@22 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@23 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@24 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@25 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@26 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@27 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@28 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@29 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@30 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@31 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@32 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
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
(declare-fun this@118 ( ) ref)
(declare-fun this@120 ( ) ref)
(declare-fun this@120@0 ( ) ref)
(declare-fun unfoldK@_38 ( ) Int)
(declare-fun ZeroCredits ( ) $@Map@@ref@To@Int@@)
(declare-fun ZeroMask ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)

;Predicates
(declare-fun $@AVLTree.valid@trigger ( ref ) Bool)
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
(declare-fun cond@_52@0 ( ) Bool)
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
   (assert (! (forall ((|i_1| Field$Int$)(|i| ref)(|m_1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v| $@Map@@PermissionComponent@To@Int@@))(!(= v (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_1 i i_1 v) i i_1)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_1 i i_1 v) i i_1)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_0))
   (assert (! (forall ((|i_12| PermissionComponent)(|m_7| $@Map@@PermissionComponent@To@Int@@)(|v_6| Int))(!(= v_6 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_7 i_12 v_6) i_12)):pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_7 i_12 v_6) i_12)) :qid map_1_$@Map@@PermissionComponent@To@Int@@ :weight 0 )) :named ax_1))
   (assert (! (forall ((|i_15| Field$Seq$Int$$)(|i_14| ref)(|m_9| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_8| $@Map@@PermissionComponent@To@Int@@))(!(= v_8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_9 i_14 i_15 v_8) i_14 i_15)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_9 i_14 i_15 v_8) i_14 i_15)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_2))
   (assert (! (forall ((|i_27| Field$Int$)(|i_26| ref)(|m_15| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_14| Int))(!(= v_14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_15 i_26 i_27 v_14) i_26 i_27)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_15 i_26 i_27 v_14) i_26 i_27)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_3))
   (assert (! (forall ((|i_39| Field$ref$)(|i_38| ref)(|m_21| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_20| $@Map@@PermissionComponent@To@Int@@))(!(= v_20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_21 i_38 i_39 v_20) i_38 i_39)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_21 i_38 i_39 v_20) i_38 i_39)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_4))
   (assert (! (forall ((|i_51| Field$Mu$)(|i_50| ref)(|m_27| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_26| $@Map@@PermissionComponent@To@Int@@))(!(= v_26 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_27 i_50 i_51 v_26) i_50 i_51)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_27 i_50 i_51 v_26) i_50 i_51)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_5))
   (assert (! (forall ((|i_63| Field$ref$)(|i_62| ref)(|m_33| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_32| ref))(!(= v_32 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_33 i_62 i_63 v_32) i_62 i_63)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_33 i_62 i_63 v_32) i_62 i_63)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_6))
   (assert (! (forall ((|i_75| Field$Seq$Int$$)(|i_74| ref)(|m_39| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_38| Seq$Int$))(!(= v_38 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_39 i_74 i_75 v_38) i_74 i_75)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_39 i_74 i_75 v_38) i_74 i_75)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_7))
   (assert (! (forall ((|v_1| $@Map@@PermissionComponent@To@Int@@)(|m_2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_3| Field$Int$)(|j_1| Field$Int$)(|i_2| ref)(|j| ref))(!(=> (or (not (= j_1 i_3)) (not (= j i_2))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_2 j j_1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_2 i_2 i_3 v_1) j j_1))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_2 i_2 i_3 v_1) j j_1)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_8))
   (assert (! (forall ((|v_10| $@Map@@PermissionComponent@To@Int@@)(|i_19| Field$Seq$Int$$)(|i_18| ref)(|j_14| Field$Bool$)(|j_13| ref)(|m_11| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_11 j_13 j_14) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_11 i_18 i_19 v_10) j_13 j_14)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_11 i_18 i_19 v_10) j_13 j_14)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__Seq$Int$ :weight 0 )) :named ax_9))
   (assert (! (forall ((|v_11| $@Map@@PermissionComponent@To@Int@@)(|i_21| Field$Seq$Int$$)(|i_20| ref)(|j_16| Field$Int$)(|j_15| ref)(|m_12| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_12 j_15 j_16) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_12 i_20 i_21 v_11) j_15 j_16)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_12 i_20 i_21 v_11) j_15 j_16)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Int__Seq$Int$ :weight 0 )) :named ax_10))
   (assert (! (forall ((|v_12| $@Map@@PermissionComponent@To@Int@@)(|i_23| Field$Seq$Int$$)(|i_22| ref)(|j_18| Field$ref$)(|j_17| ref)(|m_13| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_13 j_17 j_18) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_13 i_22 i_23 v_12) j_17 j_18)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_13 i_22 i_23 v_12) j_17 j_18)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__ref__Seq$Int$ :weight 0 )) :named ax_11))
   (assert (! (forall ((|v_13| $@Map@@PermissionComponent@To@Int@@)(|i_25| Field$Seq$Int$$)(|i_24| ref)(|j_20| Field$Mu$)(|j_19| ref)(|m_14| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_14 j_19 j_20) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_14 i_24 i_25 v_13) j_19 j_20)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_14 i_24 i_25 v_13) j_19 j_20)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Mu__Seq$Int$ :weight 0 )) :named ax_12))
   (assert (! (forall ((|v_15| Int)(|m_16| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_29| Field$Int$)(|j_22| Field$Int$)(|i_28| ref)(|j_21| ref))(!(=> (or (not (= j_22 i_29)) (not (= j_21 i_28))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_16 j_21 j_22) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_16 i_28 i_29 v_15) j_21 j_22))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_16 i_28 i_29 v_15) j_21 j_22)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_13))
   (assert (! (forall ((|v_16| Int)(|i_31| Field$Int$)(|i_30| ref)(|j_24| Field$Bool$)(|j_23| ref)(|m_17| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_17 j_23 j_24) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_17 i_30 i_31 v_16) j_23 j_24)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_17 i_30 i_31 v_16) j_23 j_24)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__Int :weight 0 )) :named ax_14))
   (assert (! (forall ((|v_17| Int)(|i_33| Field$Int$)(|i_32| ref)(|j_26| Field$ref$)(|j_25| ref)(|m_18| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_18 j_25 j_26) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_18 i_32 i_33 v_17) j_25 j_26)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_18 i_32 i_33 v_17) j_25 j_26)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__Int :weight 0 )) :named ax_15))
   (assert (! (forall ((|v_18| Int)(|i_35| Field$Int$)(|i_34| ref)(|j_28| Field$Mu$)(|j_27| ref)(|m_19| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ m_19 j_27 j_28) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_19 i_34 i_35 v_18) j_27 j_28)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_19 i_34 i_35 v_18) j_27 j_28)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Mu__Int :weight 0 )) :named ax_16))
   (assert (! (forall ((|v_19| Int)(|i_37| Field$Int$)(|i_36| ref)(|j_30| Field$Seq$Int$$)(|j_29| ref)(|m_20| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_20 j_29 j_30) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_20 i_36 i_37 v_19) j_29 j_30)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_20 i_36 i_37 v_19) j_29 j_30)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$Int$__Int :weight 0 )) :named ax_17))
   (assert (! (forall ((|v_2| $@Map@@PermissionComponent@To@Int@@)(|i_5| Field$Int$)(|i_4| ref)(|j_3| Field$Bool$)(|j_2| ref)(|m_3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_3 j_2 j_3) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_3 i_4 i_5 v_2) j_2 j_3)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_3 i_4 i_5 v_2) j_2 j_3)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__Int :weight 0 )) :named ax_18))
   (assert (! (forall ((|v_21| $@Map@@PermissionComponent@To@Int@@)(|m_22| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_41| Field$ref$)(|j_32| Field$ref$)(|i_40| ref)(|j_31| ref))(!(=> (or (not (= j_32 i_41)) (not (= j_31 i_40))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_22 j_31 j_32) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_22 i_40 i_41 v_21) j_31 j_32))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_22 i_40 i_41 v_21) j_31 j_32)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_19))
   (assert (! (forall ((|v_22| $@Map@@PermissionComponent@To@Int@@)(|i_43| Field$ref$)(|i_42| ref)(|j_34| Field$Bool$)(|j_33| ref)(|m_23| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_23 j_33 j_34) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_23 i_42 i_43 v_22) j_33 j_34)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_23 i_42 i_43 v_22) j_33 j_34)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__ref :weight 0 )) :named ax_20))
   (assert (! (forall ((|v_23| $@Map@@PermissionComponent@To@Int@@)(|i_45| Field$ref$)(|i_44| ref)(|j_36| Field$Int$)(|j_35| ref)(|m_24| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_24 j_35 j_36) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_24 i_44 i_45 v_23) j_35 j_36)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_24 i_44 i_45 v_23) j_35 j_36)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Int__ref :weight 0 )) :named ax_21))
   (assert (! (forall ((|v_24| $@Map@@PermissionComponent@To@Int@@)(|i_47| Field$ref$)(|i_46| ref)(|j_38| Field$Mu$)(|j_37| ref)(|m_25| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_25 j_37 j_38) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_25 i_46 i_47 v_24) j_37 j_38)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_25 i_46 i_47 v_24) j_37 j_38)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Mu__ref :weight 0 )) :named ax_22))
   (assert (! (forall ((|v_25| $@Map@@PermissionComponent@To@Int@@)(|i_49| Field$ref$)(|i_48| ref)(|j_40| Field$Seq$Int$$)(|j_39| ref)(|m_26| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_26 j_39 j_40) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_26 i_48 i_49 v_25) j_39 j_40)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_26 i_48 i_49 v_25) j_39 j_40)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Seq$Int$__ref :weight 0 )) :named ax_23))
   (assert (! (forall ((|v_27| $@Map@@PermissionComponent@To@Int@@)(|m_28| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_53| Field$Mu$)(|j_42| Field$Mu$)(|i_52| ref)(|j_41| ref))(!(=> (or (not (= j_42 i_53)) (not (= j_41 i_52))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_28 j_41 j_42) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_28 i_52 i_53 v_27) j_41 j_42))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_28 i_52 i_53 v_27) j_41 j_42)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_24))
   (assert (! (forall ((|v_28| $@Map@@PermissionComponent@To@Int@@)(|i_55| Field$Mu$)(|i_54| ref)(|j_44| Field$Bool$)(|j_43| ref)(|m_29| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_29 j_43 j_44) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_29 i_54 i_55 v_28) j_43 j_44)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_29 i_54 i_55 v_28) j_43 j_44)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__Mu :weight 0 )) :named ax_25))
   (assert (! (forall ((|v_29| $@Map@@PermissionComponent@To@Int@@)(|i_57| Field$Mu$)(|i_56| ref)(|j_46| Field$Int$)(|j_45| ref)(|m_30| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_30 j_45 j_46) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_30 i_56 i_57 v_29) j_45 j_46)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_30 i_56 i_57 v_29) j_45 j_46)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Int__Mu :weight 0 )) :named ax_26))
   (assert (! (forall ((|v_3| $@Map@@PermissionComponent@To@Int@@)(|i_7| Field$Int$)(|i_6| ref)(|j_5| Field$ref$)(|j_4| ref)(|m_4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_4 j_4 j_5) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_4 i_6 i_7 v_3) j_4 j_5)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_4 i_6 i_7 v_3) j_4 j_5)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__ref__Int :weight 0 )) :named ax_27))
   (assert (! (forall ((|v_30| $@Map@@PermissionComponent@To@Int@@)(|i_59| Field$Mu$)(|i_58| ref)(|j_48| Field$ref$)(|j_47| ref)(|m_31| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_31 j_47 j_48) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_31 i_58 i_59 v_30) j_47 j_48)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_31 i_58 i_59 v_30) j_47 j_48)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__ref__Mu :weight 0 )) :named ax_28))
   (assert (! (forall ((|v_31| $@Map@@PermissionComponent@To@Int@@)(|i_61| Field$Mu$)(|i_60| ref)(|j_50| Field$Seq$Int$$)(|j_49| ref)(|m_32| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_32 j_49 j_50) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_32 i_60 i_61 v_31) j_49 j_50)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_32 i_60 i_61 v_31) j_49 j_50)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Seq$Int$__Mu :weight 0 )) :named ax_29))
   (assert (! (forall ((|v_33| ref)(|m_34| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_65| Field$ref$)(|j_52| Field$ref$)(|i_64| ref)(|j_51| ref))(!(=> (or (not (= j_52 i_65)) (not (= j_51 i_64))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_34 j_51 j_52) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_34 i_64 i_65 v_33) j_51 j_52))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_34 i_64 i_65 v_33) j_51 j_52)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_30))
   (assert (! (forall ((|v_34| ref)(|i_67| Field$ref$)(|i_66| ref)(|j_54| Field$Bool$)(|j_53| ref)(|m_35| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_35 j_53 j_54) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_35 i_66 i_67 v_34) j_53 j_54)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_35 i_66 i_67 v_34) j_53 j_54)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__ref :weight 0 )) :named ax_31))
   (assert (! (forall ((|v_35| ref)(|i_69| Field$ref$)(|i_68| ref)(|j_56| Field$Int$)(|j_55| ref)(|m_36| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_36 j_55 j_56) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_36 i_68 i_69 v_35) j_55 j_56)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_36 i_68 i_69 v_35) j_55 j_56)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Int__ref :weight 0 )) :named ax_32))
   (assert (! (forall ((|v_36| ref)(|i_71| Field$ref$)(|i_70| ref)(|j_58| Field$Mu$)(|j_57| ref)(|m_37| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ m_37 j_57 j_58) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_37 i_70 i_71 v_36) j_57 j_58)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_37 i_70 i_71 v_36) j_57 j_58)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Mu__ref :weight 0 )) :named ax_33))
   (assert (! (forall ((|v_37| ref)(|i_73| Field$ref$)(|i_72| ref)(|j_60| Field$Seq$Int$$)(|j_59| ref)(|m_38| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_38 j_59 j_60) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_38 i_72 i_73 v_37) j_59 j_60)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_38 i_72 i_73 v_37) j_59 j_60)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$Int$__ref :weight 0 )) :named ax_34))
   (assert (! (forall ((|v_39| Seq$Int$)(|m_40| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_77| Field$Seq$Int$$)(|j_62| Field$Seq$Int$$)(|i_76| ref)(|j_61| ref))(!(=> (or (not (= j_62 i_77)) (not (= j_61 i_76))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_40 j_61 j_62) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_40 i_76 i_77 v_39) j_61 j_62))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_40 i_76 i_77 v_39) j_61 j_62)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_35))
   (assert (! (forall ((|v_4| $@Map@@PermissionComponent@To@Int@@)(|i_9| Field$Int$)(|i_8| ref)(|j_7| Field$Mu$)(|j_6| ref)(|m_5| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_5 j_6 j_7) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_5 i_8 i_9 v_4) j_6 j_7)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_5 i_8 i_9 v_4) j_6 j_7)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Mu__Int :weight 0 )) :named ax_36))
   (assert (! (forall ((|v_40| Seq$Int$)(|i_79| Field$Seq$Int$$)(|i_78| ref)(|j_64| Field$Bool$)(|j_63| ref)(|m_41| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_41 j_63 j_64) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_41 i_78 i_79 v_40) j_63 j_64)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_41 i_78 i_79 v_40) j_63 j_64)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__Seq$Int$ :weight 0 )) :named ax_37))
   (assert (! (forall ((|v_41| Seq$Int$)(|i_81| Field$Seq$Int$$)(|i_80| ref)(|j_66| Field$Int$)(|j_65| ref)(|m_42| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_42 j_65 j_66) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_42 i_80 i_81 v_41) j_65 j_66)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_42 i_80 i_81 v_41) j_65 j_66)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Int__Seq$Int$ :weight 0 )) :named ax_38))
   (assert (! (forall ((|v_42| Seq$Int$)(|i_83| Field$Seq$Int$$)(|i_82| ref)(|j_68| Field$ref$)(|j_67| ref)(|m_43| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_43 j_67 j_68) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_43 i_82 i_83 v_42) j_67 j_68)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_43 i_82 i_83 v_42) j_67 j_68)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__Seq$Int$ :weight 0 )) :named ax_39))
   (assert (! (forall ((|v_43| Seq$Int$)(|i_85| Field$Seq$Int$$)(|i_84| ref)(|j_70| Field$Mu$)(|j_69| ref)(|m_44| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ m_44 j_69 j_70) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_44 i_84 i_85 v_43) j_69 j_70)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_44 i_84 i_85 v_43) j_69 j_70)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Mu__Seq$Int$ :weight 0 )) :named ax_40))
   (assert (! (forall ((|v_5| $@Map@@PermissionComponent@To@Int@@)(|i_11| Field$Int$)(|i_10| ref)(|j_9| Field$Seq$Int$$)(|j_8| ref)(|m_6| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_6 j_8 j_9) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_6 i_10 i_11 v_5) j_8 j_9)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_6 i_10 i_11 v_5) j_8 j_9)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Seq$Int$__Int :weight 0 )) :named ax_41))
   (assert (! (forall ((|v_7| Int)(|m_8| $@Map@@PermissionComponent@To@Int@@)(|i_13| PermissionComponent)(|j_10| PermissionComponent))(!(=> (not (= j_10 i_13)) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ m_8 j_10) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_8 i_13 v_7) j_10))):pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_8 i_13 v_7) j_10)) :qid map_2_$@Map@@PermissionComponent@To@Int@@ :weight 0 )) :named ax_42))
   (assert (! (forall ((|v_9| $@Map@@PermissionComponent@To@Int@@)(|m_10| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_17| Field$Seq$Int$$)(|j_12| Field$Seq$Int$$)(|i_16| ref)(|j_11| ref))(!(=> (or (not (= j_12 i_17)) (not (= j_11 i_16))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_10 j_11 j_12) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_10 i_16 i_17 v_9) j_11 j_12))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_10 i_16 i_17 v_9) j_11 j_12)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_43))
   (assert (! (not (= AVLTree.keys AVLTreeNode.keys)) :named ax_44))
   (assert (! (not (= AVLTree.root AVLTreeNode.left)) :named ax_45))
   (assert (! (not (= AVLTree.root AVLTreeNode.right)) :named ax_46))
   (assert (! (not (= AVLTree.valid AVLTreeNode.balanceFactor)) :named ax_47))
   (assert (! (not (= AVLTree.valid AVLTreeNode.height)) :named ax_48))
   (assert (! (not (= AVLTree.valid AVLTreeNode.key)) :named ax_49))
   (assert (! (not (= AVLTree.valid AVLTreeNode.valid)) :named ax_50))
   (assert (! (not (= AVLTree@t AVLTreeNode@t)) :named ax_51))
   (assert (! (not (= AVLTreeNode.balanceFactor AVLTree.valid)) :named ax_52))
   (assert (! (not (= AVLTreeNode.balanceFactor AVLTreeNode.valid)) :named ax_53))
   (assert (! (not (= AVLTreeNode.height AVLTree.valid)) :named ax_54))
   (assert (! (not (= AVLTreeNode.height AVLTreeNode.balanceFactor)) :named ax_55))
   (assert (! (not (= AVLTreeNode.height AVLTreeNode.balanceFactor)) :named ax_56))
   (assert (! (not (= AVLTreeNode.height AVLTreeNode.valid)) :named ax_57))
   (assert (! (not (= AVLTreeNode.key AVLTree.valid)) :named ax_58))
   (assert (! (not (= AVLTreeNode.key AVLTreeNode.balanceFactor)) :named ax_59))
   (assert (! (not (= AVLTreeNode.key AVLTreeNode.balanceFactor)) :named ax_60))
   (assert (! (not (= AVLTreeNode.key AVLTreeNode.height)) :named ax_61))
   (assert (! (not (= AVLTreeNode.key AVLTreeNode.height)) :named ax_62))
   (assert (! (not (= AVLTreeNode.key AVLTreeNode.valid)) :named ax_63))
   (assert (! (not (= AVLTreeNode.keys AVLTree.keys)) :named ax_64))
   (assert (! (not (= AVLTreeNode.left AVLTree.root)) :named ax_65))
   (assert (! (not (= AVLTreeNode.left AVLTreeNode.right)) :named ax_66))
   (assert (! (not (= AVLTreeNode.right AVLTree.root)) :named ax_67))
   (assert (! (not (= AVLTreeNode.right AVLTreeNode.left)) :named ax_68))
   (assert (! (not (= AVLTreeNode.valid AVLTree.valid)) :named ax_69))
   (assert (! (not (= AVLTreeNode.valid AVLTreeNode.balanceFactor)) :named ax_70))
   (assert (! (not (= AVLTreeNode.valid AVLTreeNode.height)) :named ax_71))
   (assert (! (not (= AVLTreeNode.valid AVLTreeNode.key)) :named ax_72))
   (assert (! (not (= AVLTreeNode@t AVLTree@t)) :named ax_73))
   (assert (! (not (= forkK AVLTree.valid)) :named ax_74))
   (assert (! (not (= forkK AVLTree.valid)) :named ax_75))
   (assert (! (not (= forkK AVLTreeNode.balanceFactor)) :named ax_76))
   (assert (! (not (= forkK AVLTreeNode.balanceFactor)) :named ax_77))
   (assert (! (not (= forkK AVLTreeNode.height)) :named ax_78))
   (assert (! (not (= forkK AVLTreeNode.height)) :named ax_79))
   (assert (! (not (= forkK AVLTreeNode.key)) :named ax_80))
   (assert (! (not (= forkK AVLTreeNode.key)) :named ax_81))
   (assert (! (not (= forkK AVLTreeNode.valid)) :named ax_82))
   (assert (! (not (= forkK AVLTreeNode.valid)) :named ax_83))
   (assert (! (not (= forkK held)) :named ax_84))
   (assert (! (not (= held AVLTree.valid)) :named ax_85))
   (assert (! (not (= held AVLTree.valid)) :named ax_86))
   (assert (! (not (= held AVLTreeNode.balanceFactor)) :named ax_87))
   (assert (! (not (= held AVLTreeNode.balanceFactor)) :named ax_88))
   (assert (! (not (= held AVLTreeNode.height)) :named ax_89))
   (assert (! (not (= held AVLTreeNode.height)) :named ax_90))
   (assert (! (not (= held AVLTreeNode.key)) :named ax_91))
   (assert (! (not (= held AVLTreeNode.key)) :named ax_92))
   (assert (! (not (= held AVLTreeNode.valid)) :named ax_93))
   (assert (! (not (= held AVLTreeNode.valid)) :named ax_94))
   (assert (! (not (= held forkK)) :named ax_95))
   (assert (! (not (= joinable AVLTree.valid)) :named ax_96))
   (assert (! (not (= joinable AVLTree.valid)) :named ax_97))
   (assert (! (not (= joinable AVLTreeNode.balanceFactor)) :named ax_98))
   (assert (! (not (= joinable AVLTreeNode.balanceFactor)) :named ax_99))
   (assert (! (not (= joinable AVLTreeNode.height)) :named ax_100))
   (assert (! (not (= joinable AVLTreeNode.height)) :named ax_101))
   (assert (! (not (= joinable AVLTreeNode.key)) :named ax_102))
   (assert (! (not (= joinable AVLTreeNode.key)) :named ax_103))
   (assert (! (not (= joinable AVLTreeNode.valid)) :named ax_104))
   (assert (! (not (= joinable AVLTreeNode.valid)) :named ax_105))
   (assert (! (not (= joinable forkK)) :named ax_106))
   (assert (! (not (= joinable forkK)) :named ax_107))
   (assert (! (not (= joinable held)) :named ax_108))
   (assert (! (not (= joinable held)) :named ax_109))
   (assert (! (not (= perm$R perm$N)) :named ax_110))
   (assert (! (not (= perm$R perm$N)) :named ax_111))

;Program
(assert (not
(let ((anon93@2_assertion (and
    (forall( (|lk#_106| ref))(!(or (and (= (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_94@0 |lk#_106| held)) (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap |lk#_106| held))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ exhaleHeap@_94@0 |lk#_106| rdheld) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap |lk#_106| rdheld))) false)  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_94@0 |lk#_106| held)) :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ exhaleHeap@_94@0 |lk#_106| rdheld))))
)))
(let ((anon65@1_assertion (and
    (forall( (|j#73#125| Int))(=> (and (<= 0 |j#73#125|) (< |j#73#125| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTree.keys)))) (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_86@0 this AVLTree.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTree.keys) |j#73#125|))))
)))
(let ((anon65@2_assertion (and
    (forall( (|j#74#126| Int))(=> (and (<= 0 |j#74#126|) (< |j#74#126| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_86@0 this AVLTree.keys)))) (or (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTree.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_86@0 this AVLTree.keys) |j#74#126|)) (= (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_86@0 this AVLTree.keys) |j#74#126|) k@0))))
)))
(let ((anon0@1_assertion (and
    (> (Fractions 100) 0)
)))
(let ((anon114_Else@3_assertion (and
    (> (Fractions 100) 0)
)))
(let ((anon114_Then@1_assertion (and
    (> (Fractions 100) 0)
)))
(let ((anon114_Then@11_assertion (and
    (> (Fractions 100) 0)
)))
(let ((anon114_Then@3_assertion (and
    (> (Fractions 100) 0)
)))
(let ((anon114_Then@5_assertion (and
    (> (Fractions 100) 0)
)))
(let ((anon114_Then@7_assertion (and
    (> (Fractions 100) 0)
)))
(let ((anon114_Then@9_assertion (and
    (> (Fractions 100) 0)
)))
(let ((anon121_Then_assertion (and
    (> (Fractions 100) 0)
)))
(let ((anon55_assertion (and
    (> (Fractions 100) 0)
)))
(let ((anon65@3_assertion (and
    (> (Fractions 100) 0)
)))
(let ((anon123_Then_assertion (and
    (> (Fractions 50) 0)
)))
(let ((anon124_Then_assertion (and
    (> (Fractions 50) 0)
)))
(let ((anon125_Then_assertion (and
    (> (Fractions 50) 0)
)))
(let ((anon44@2_assertion (and
    (> (Fractions 50) 0)
)))
(let ((anon44@4_assertion (and
    (> (Fractions 50) 0)
)))
(let ((anon44_assertion (and
    (> (Fractions 50) 0)
)))
(let ((anon55@2_assertion (and
    (> (Fractions 50) 0)
)))
(let ((anon93_assertion (and
    (> (Fractions 50) 0)
)))
(let ((anon114_Else@1_assertion (and
    (=> true (CanRead$ref$ Mask@12 ZeroMask this AVLTree.root))
)))
(let ((anon114_Then@13_assertion (and
    (CanWrite$ref$ Mask@23 this AVLTree.root)
)))
(let ((anon119_Then_assertion (and
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@5 this AVLTree.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.keys))
)))
(let ((anon120_Then_assertion (and
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@5 this AVLTree.keys) Seq@Empty$Int$)
)))
(let ((anon40@1_assertion (and
    (=> true (CanRead$ref$ Mask@12 ZeroMask this AVLTree.root))
)))
(let ((anon50_assertion (and
    (CanWrite$ref$ Mask@27 this AVLTree.root)
)))
(let ((anon51@2_assertion (and
    (=> true (CanRead$ref$ Mask@28 ZeroMask this AVLTree.root))
)))
(let ((anon51@4_assertion (and
    (=> true (CanRead$Seq$Int$$ Mask@28 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this AVLTree.root) AVLTreeNode.keys))
)))
(let ((anon51_assertion (and
    (CanWrite$Seq$Int$$ Mask@28 this AVLTree.keys)
)))
(let ((anon65_assertion (and
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_86@0 this AVLTree.keys) k@0)
)))
(let ((anon93@3_assertion (and
    (forall( (|ch| ref))(or (= |ch| null) (<= 0 (MapRead$$@Map@@ref@To@Int@@$ ZeroCredits |ch|))))
)))
(let ((anon114_Then@4_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_60@0 nw@_53@0 AVLTreeNode.height) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_60@0 nw@_53@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_60@0 nw@_53@0 AVLTreeNode.height) perm$N)))
)))
(let ((anon114_Then@12_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_60@4 nw@_53@0 AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_60@4 nw@_53@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_60@4 nw@_53@0 AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon44@3_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_75@1 this@120@0 AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_75@1 this@120@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_75@1 this@120@0 AVLTreeNode.height) perm$N)))
)))
(let ((anon44@5_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_75@2 this@120@0 AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_75@2 this@120@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_75@2 this@120@0 AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon121_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.valid) perm$N)))
)))
(let ((anon123_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.height) perm$N)))
)))
(let ((anon125_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon0@2_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@1 this AVLTree.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@1 this AVLTree.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@1 this AVLTree.valid) perm$N)))
)))
(let ((anon114_Else@4_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@12 this@120@0 AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@12 this@120@0 AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@12 this@120@0 AVLTreeNode.valid) perm$N)))
)))
(let ((anon114_Then@2_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@19 nw@_53@0 AVLTreeNode.key) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@19 nw@_53@0 AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@19 nw@_53@0 AVLTreeNode.key) perm$N)))
)))
(let ((anon65@4_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@29 this AVLTree.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@29 this AVLTree.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@29 this AVLTree.valid) perm$N)))
)))
(let ((anon114_Then@6_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_60@1 nw@_53@0 AVLTreeNode.left) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_60@1 nw@_53@0 AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_60@1 nw@_53@0 AVLTreeNode.left) perm$N)))
)))
(let ((anon114_Then@8_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_60@2 nw@_53@0 AVLTreeNode.right) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_60@2 nw@_53@0 AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_60@2 nw@_53@0 AVLTreeNode.right) perm$N)))
)))
(let ((anon55@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@28 this AVLTree.root) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@28 this AVLTree.root) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@28 this AVLTree.root) perm$N)))
)))
(let ((anon114_Then@10_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_60@3 nw@_53@0 AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_60@3 nw@_53@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_60@3 nw@_53@0 AVLTreeNode.keys) perm$N)))
)))
(let ((anon44@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_75@0 this@120@0 AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_75@0 this@120@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_75@0 this@120@0 AVLTreeNode.keys) perm$N)))
)))
(let ((anon55@3_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_87@0 this AVLTree.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_87@0 this AVLTree.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_87@0 this AVLTree.keys) perm$N)))
)))
(let ((anon124_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_87@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_87@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_87@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.keys) perm$N)))
)))
(let ((anon93@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@0 this AVLTree.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@0 this AVLTree.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@0 this AVLTree.keys) perm$N)))
)))
(let ((anon0_assertion (and
    (not (= this null))
)))
(let ((anon114_Else_assertion (and
    (=> true (not (= this null)))
)))
(let ((anon114_Else@2_assertion (and
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) null))
)))
(let ((anon114_Then_assertion (and
    (not (= nw@_53@0 null))
)))
(let ((anon40_assertion (and
    (=> true (not (= this null)))
)))
(let ((anon51@1_assertion (and
    (=> true (not (= this null)))
)))
(let ((anon51@3_assertion (and
    (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this AVLTree.root) null)))
)))
(let ((anon51@5_assertion (and
    (not (= this null))
)))
(let ((anon93@3 (=> (and true
    (forall( (|lk#_106| ref))(!(or (and (= (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_94@0 |lk#_106| held)) (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap |lk#_106| held))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ exhaleHeap@_94@0 |lk#_106| rdheld) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap |lk#_106| rdheld))) false)  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_94@0 |lk#_106| held)) :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ exhaleHeap@_94@0 |lk#_106| rdheld))))
  )
    anon93@3_assertion
)))
(let ((anon93@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@0 this AVLTree.keys) perm$R))
    (= exhaleMask@_95@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@0 this AVLTree.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@0 this AVLTree.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@0 this AVLTree.keys) perm$R) (Fractions 50)))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@0 this AVLTree.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_95@0 this AVLTree.keys) perm$N)))
    (IsGoodExhaleState exhaleHeap@_94@0 exhaleHeap@_86@0 exhaleMask@_95@1 SecMask@32)
    (IsGoodMask exhaleMask@_95@1)
    (IsGoodMask exhaleMask@_95@1)
    (wf exhaleHeap@_86@0 exhaleMask@_95@1 SecMask@32)
    (wf exhaleHeap@_86@0 Mask@29 SecMask@32)
    (wf exhaleHeap@_94@0 exhaleMask@_95@1 SecMask@32)
  )(and 
    anon93@2_assertion
    anon93@3
))))
(let ((anon93@1 (=> (and true
    (> (Fractions 50) 0)
  )(and 
    anon93@1_assertion
    anon93@2
))))
(let ((anon93 (=> (and true
    (IsGoodMask exhaleMask@_95@0)
    (wf exhaleHeap@_86@0 exhaleMask@_95@0 SecMask@32)
    (wf exhaleHeap@_86@0 Mask@29 SecMask@32)
  )(and 
    anon93_assertion
    anon93@1
))))
(let ((anon139_Else (=> (and true
    (CanRead$Int$ exhaleMask@_95@0 SecMask@32 this AVLTree.valid)
  )
    anon93
)))
(let ((anon139_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_86@0 this AVLTree.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_94@0 this AVLTree.valid))
    (not (CanRead$Int$ exhaleMask@_95@0 SecMask@32 this AVLTree.valid))
  )
    anon93
)))
(let (($branchMerge_10 (=> (and true
  )
    (and anon139_Else anon139_Then)
)))
(let ((anon126_Else (=> (and true
    (= SecMask@32 SecMask@9)
    (not (or false (and (and (and (and (= predVer@_83@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_86@0 this AVLTree.valid)) (= this this)) true) (not cond@_52@0)) true)))
  )
    $branchMerge_10
)))
(let ((anon90 (=> (and true
    (= SecMask@32 SecMask@31)
    (wf exhaleHeap@_86@0 SecMask@31 SecMask@31)
  )
    $branchMerge_10
)))
(let ((anon137_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) null)
    (= SecMask@31 SecMask@27)
  )
    anon90
)))
(let ((anon89 (=> (and true
    (= SecMask@31 SecMask@30)
    (wf exhaleHeap@_86@0 Mask@29 SecMask@30)
    (wf exhaleHeap@_86@0 SecMask@30 SecMask@30)
  )
    anon90
)))
(let ((anon138_Else (=> (and true
    (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@28 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.balanceFactor) perm$R))
    (= SecMask@30 SecMask@28)
  )
    anon89
)))
(let ((anon138_Then (=> (and true
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@28 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@29 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@28 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@28 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@30 SecMask@29)
  )
    anon89
)))
(let ((anon137_Then (=> (and true
    (= SecMask@28 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@27 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@27 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@27 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) null))
  )
    (and anon138_Else anon138_Then)
)))
(let (($branchMerge_14 (=> (and true
  )
    (and anon137_Else anon137_Then)
)))
(let ((anon135_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) null)
    (= SecMask@27 SecMask@23)
  )
    $branchMerge_14
)))
(let ((anon85 (=> (and true
    (= SecMask@27 SecMask@26)
    (wf exhaleHeap@_86@0 Mask@29 SecMask@26)
    (wf exhaleHeap@_86@0 SecMask@26 SecMask@26)
  )
    $branchMerge_14
)))
(let ((anon136_Else (=> (and true
    (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@24 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.keys) perm$R))
    (= SecMask@26 SecMask@24)
  )
    anon85
)))
(let ((anon136_Then (=> (and true
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@24 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.keys) perm$R) 0)
    (= SecMask@25 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@24 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@24 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.keys) perm$R 0)))
    (= SecMask@26 SecMask@25)
  )
    anon85
)))
(let ((anon135_Then (=> (and true
    (= SecMask@24 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@23 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@23 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@23 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) null))
  )
    (and anon136_Else anon136_Then)
)))
(let (($branchMerge_13 (=> (and true
  )
    (and anon135_Else anon135_Then)
)))
(let ((anon133_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) null)
    (= SecMask@23 SecMask@19)
  )
    $branchMerge_13
)))
(let ((anon81 (=> (and true
    (= SecMask@23 SecMask@22)
    (wf exhaleHeap@_86@0 Mask@29 SecMask@22)
    (wf exhaleHeap@_86@0 SecMask@22 SecMask@22)
  )
    $branchMerge_13
)))
(let ((anon134_Else (=> (and true
    (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.height) perm$R))
    (= SecMask@22 SecMask@20)
  )
    anon81
)))
(let ((anon134_Then (=> (and true
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.height) perm$R) 0)
    (= SecMask@21 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.height) perm$R 0)))
    (= SecMask@22 SecMask@21)
  )
    anon81
)))
(let ((anon133_Then (=> (and true
    (= SecMask@20 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) null))
  )
    (and anon134_Else anon134_Then)
)))
(let (($branchMerge_12 (=> (and true
  )
    (and anon133_Else anon133_Then)
)))
(let ((anon131_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) null)
    (= SecMask@19 SecMask@15)
  )
    $branchMerge_12
)))
(let ((anon77 (=> (and true
    (= SecMask@19 SecMask@18)
    (wf exhaleHeap@_86@0 Mask@29 SecMask@18)
    (wf exhaleHeap@_86@0 SecMask@18 SecMask@18)
  )
    $branchMerge_12
)))
(let ((anon132_Else (=> (and true
    (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.valid) perm$R))
    (= SecMask@18 SecMask@16)
  )
    anon77
)))
(let ((anon132_Then (=> (and true
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.valid) perm$R) 0)
    (= SecMask@17 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.valid) perm$R 0)))
    (= SecMask@18 SecMask@17)
  )
    anon77
)))
(let ((anon131_Then (=> (and true
    (= SecMask@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) null))
  )
    (and anon132_Else anon132_Then)
)))
(let ((anon74 (=> (and true
    (wf exhaleHeap@_86@0 Mask@29 SecMask@15)
    (wf exhaleHeap@_86@0 SecMask@15 SecMask@15)
  )
    (and anon131_Else anon131_Then)
)))
(let ((anon130_Else (=> (and true
    (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@13 this AVLTree.keys) perm$R))
    (= SecMask@15 SecMask@13)
  )
    anon74
)))
(let ((anon130_Then (=> (and true
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@13 this AVLTree.keys) perm$R) 0)
    (= SecMask@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@13 this AVLTree.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@13 this AVLTree.keys) perm$R 0)))
    (= SecMask@15 SecMask@14)
  )
    anon74
)))
(let ((anon72 (=> (and true
    (= SecMask@13 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@12 this AVLTree.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@12 this AVLTree.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@12 this AVLTree.keys) perm$R) (Fractions 50)))))
    (wf exhaleHeap@_86@0 Mask@29 SecMask@12)
    (wf exhaleHeap@_86@0 SecMask@12 SecMask@12)
  )
    (and anon130_Else anon130_Then)
)))
(let ((anon129_Else (=> (and true
    (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@10 this AVLTree.root) perm$R))
    (= SecMask@12 SecMask@10)
  )
    anon72
)))
(let ((anon129_Then (=> (and true
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@10 this AVLTree.root) perm$R) 0)
    (= SecMask@11 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@10 this AVLTree.root (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@10 this AVLTree.root) perm$R 0)))
    (= SecMask@12 SecMask@11)
  )
    anon72
)))
(let ((anon70 (=> (and true
    (= SecMask@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@9 this AVLTree.root (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@9 this AVLTree.root) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@9 this AVLTree.root) perm$R) (Fractions 100)))))
  )
    (and anon129_Else anon129_Then)
)))
(let ((anon128_Else (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) null))
  )
    anon70
)))
(let ((anon128_Then (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) null)
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_86@0 this AVLTree.keys) Seq@Empty$Int$)
  )
    anon70
)))
(let (($branchMerge_11 (=> (and true
  )
    (and anon128_Else anon128_Then)
)))
(let ((anon127_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) null)
  )
    $branchMerge_11
)))
(let ((anon127_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) null))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_86@0 this AVLTree.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_86@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_86@0 this AVLTree.root) AVLTreeNode.keys))
  )
    $branchMerge_11
)))
(let ((anon126_Then (=> (and true
    (or false (and (and (and (and (= predVer@_83@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_86@0 this AVLTree.valid)) (= this this)) true) (not cond@_52@0)) true))
  )
    (and anon127_Else anon127_Then)
)))
(let ((anon65@5 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@29 this AVLTree.valid) perm$R))
    (= exhaleMask@_95@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@29 this AVLTree.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@29 this AVLTree.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@29 this AVLTree.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@29 this AVLTree.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@29 this AVLTree.valid) perm$N)))
  )
    (and anon126_Else anon126_Then)
)))
(let ((anon65@4 (=> (and true
    (> (Fractions 100) 0)
  )(and 
    anon65@4_assertion
    anon65@5
))))
(let ((anon65@3 (=> (and true
    (forall( (|j#74#126| Int))(=> (and (<= 0 |j#74#126|) (< |j#74#126| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_86@0 this AVLTree.keys)))) (or (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTree.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_86@0 this AVLTree.keys) |j#74#126|)) (= (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_86@0 this AVLTree.keys) |j#74#126|) k@0))))
  )(and 
    anon65@3_assertion
    anon65@4
))))
(let ((anon65@2 (=> (and true
    (forall( (|j#73#125| Int))(=> (and (<= 0 |j#73#125|) (< |j#73#125| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTree.keys)))) (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_86@0 this AVLTree.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTree.keys) |j#73#125|))))
  )(and 
    anon65@2_assertion
    anon65@3
))))
(let ((anon65@1 (=> (and true
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_86@0 this AVLTree.keys) k@0)
  )(and 
    anon65@1_assertion
    anon65@2
))))
(let ((anon65 (=> (and true
    (= Mask@29 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@9 this AVLTree.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@9 this AVLTree.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@9 this AVLTree.valid) perm$R) (Fractions 100)))))
    (= predVer@_83@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_86@0 this AVLTree.valid))
    (> (Fractions 100) 0)
    (IsGoodExhaleState exhaleHeap@_86@0 Heap@5 exhaleMask@_87@9 SecMask@9)
    (IsGoodMask exhaleMask@_87@9)
    (IsGoodMask Mask@29)
    (IsGoodMask Mask@29)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_86@0 this AVLTree.valid)))
    (not (= this null))
    (wf exhaleHeap@_86@0 exhaleMask@_87@9 SecMask@9)
    (wf exhaleHeap@_86@0 exhaleMask@_87@9 SecMask@9)
    (wf exhaleHeap@_86@0 Mask@29 SecMask@9)
    (wf exhaleHeap@_86@0 Mask@29 SecMask@9)
    (wf exhaleHeap@_86@0 Mask@29 SecMask@9)
    (wf exhaleHeap@_86@0 Mask@29 SecMask@9)
  )(and 
    anon65_assertion
    anon65@1
))))
(let ((anon125_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) null)
    (= exhaleMask@_87@9 exhaleMask@_87@7)
    (= SecMask@9 SecMask@7)
  )
    anon65
)))
(let ((anon125_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_87@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= exhaleMask@_87@9 exhaleMask@_87@8)
    (= SecMask@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= SecMask@9 SecMask@8)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.balanceFactor) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_87@8)
    (wf Heap@5 exhaleMask@_87@8 SecMask@8)
    (wf Heap@5 Mask@28 SecMask@8)
  )
    anon65
)))
(let ((anon125_Then@1 (=> (and true
    (> (Fractions 50) 0)
  )(and 
    anon125_Then@1_assertion
    anon125_Then@2
))))
(let ((anon125_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) null))
  )(and 
    anon125_Then_assertion
    anon125_Then@1
))))
(let (($branchMerge_9 (=> (and true
  )
    (and anon125_Else anon125_Then)
)))
(let ((anon124_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) null)
    (= exhaleMask@_87@7 exhaleMask@_87@5)
    (= SecMask@7 SecMask@5)
  )
    $branchMerge_9
)))
(let ((anon124_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_87@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.keys) perm$R))
    (= exhaleMask@_87@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_87@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_87@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_87@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= exhaleMask@_87@7 exhaleMask@_87@6)
    (= SecMask@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= SecMask@7 SecMask@6)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_87@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_87@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.keys) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_87@6)
    (wf Heap@5 exhaleMask@_87@6 SecMask@6)
    (wf Heap@5 Mask@28 SecMask@6)
  )
    $branchMerge_9
)))
(let ((anon124_Then@1 (=> (and true
    (> (Fractions 50) 0)
  )(and 
    anon124_Then@1_assertion
    anon124_Then@2
))))
(let ((anon124_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) null))
  )(and 
    anon124_Then_assertion
    anon124_Then@1
))))
(let (($branchMerge_8 (=> (and true
  )
    (and anon124_Else anon124_Then)
)))
(let ((anon123_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) null)
    (= exhaleMask@_87@5 exhaleMask@_87@3)
    (= SecMask@5 SecMask@3)
  )
    $branchMerge_8
)))
(let ((anon123_Then@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.height) perm$R))
    (= exhaleMask@_87@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= exhaleMask@_87@5 exhaleMask@_87@4)
    (= SecMask@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= SecMask@5 SecMask@4)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.height) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_87@4)
    (wf Heap@5 exhaleMask@_87@4 SecMask@4)
    (wf Heap@5 Mask@28 SecMask@4)
  )
    $branchMerge_8
)))
(let ((anon123_Then@1 (=> (and true
    (> (Fractions 50) 0)
  )(and 
    anon123_Then@1_assertion
    anon123_Then@2
))))
(let ((anon123_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) null))
  )(and 
    anon123_Then_assertion
    anon123_Then@1
))))
(let (($branchMerge_7 (=> (and true
  )
    (and anon123_Else anon123_Then)
)))
(let ((anon121_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) null)
    (= exhaleMask@_87@3 exhaleMask@_87@1)
    (= SecMask@3 SecMask@1)
  )
    $branchMerge_7
)))
(let ((anon58 (=> (and true
    (= exhaleMask@_87@3 exhaleMask@_87@2)
    (= SecMask@3 SecMask@2)
    (IsGoodMask exhaleMask@_87@2)
    (wf Heap@5 exhaleMask@_87@2 SecMask@2)
    (wf Heap@5 Mask@28 SecMask@2)
  )
    $branchMerge_7
)))
(let ((anon122_Else (=> (and true
    (CanRead$Int$ exhaleMask@_87@2 SecMask@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.valid)
  )
    anon58
)))
(let ((anon122_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_86@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_87@2 SecMask@2 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.valid))
  )
    anon58
)))
(let ((anon121_Then@2 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.valid) perm$R))
    (= exhaleMask@_87@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= SecMask@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_87@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.valid) perm$N)))
    (> (Fractions 100) 0)
  )
    (and anon122_Else anon122_Then)
)))
(let ((anon121_Then@1 (=> (and true
    (> (Fractions 100) 0)
  )(and 
    anon121_Then@1_assertion
    anon121_Then@2
))))
(let ((anon121_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) null))
  )(and 
    anon121_Then_assertion
    anon121_Then@1
))))
(let ((anon55@4 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_87@0 this AVLTree.keys) perm$R))
    (= exhaleMask@_87@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_87@0 this AVLTree.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_87@0 this AVLTree.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_87@0 this AVLTree.keys) perm$R) (Fractions 50)))))
    (= SecMask@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@0 this AVLTree.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@0 this AVLTree.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@0 this AVLTree.keys) perm$R) (Fractions 50)))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_87@0 this AVLTree.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_87@0 this AVLTree.keys) perm$N)))
    (> (Fractions 50) 0)
    (IsGoodMask exhaleMask@_87@1)
    (wf Heap@5 exhaleMask@_87@1 SecMask@1)
    (wf Heap@5 Mask@28 SecMask@1)
  )
    (and anon121_Else anon121_Then)
)))
(let ((anon55@3 (=> (and true
    (> (Fractions 50) 0)
  )(and 
    anon55@3_assertion
    anon55@4
))))
(let ((anon55@2 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@28 this AVLTree.root) perm$R))
    (= exhaleMask@_87@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@28 this AVLTree.root (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@28 this AVLTree.root) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@28 this AVLTree.root) perm$R) (Fractions 100)))))
    (= SecMask@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask this AVLTree.root (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask this AVLTree.root) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask this AVLTree.root) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@28 this AVLTree.root) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@28 this AVLTree.root) perm$N)))
    (> (Fractions 100) 0)
    (IsGoodMask exhaleMask@_87@0)
    (wf Heap@5 exhaleMask@_87@0 SecMask@0)
    (wf Heap@5 Mask@28 SecMask@0)
  )(and 
    anon55@2_assertion
    anon55@3
))))
(let ((anon55@1 (=> (and true
    (> (Fractions 100) 0)
  )(and 
    anon55@1_assertion
    anon55@2
))))
(let ((anon55 (=> (and true
  )(and 
    anon55_assertion
    anon55@1
))))
(let ((anon120_Else (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) null))
  )
    anon55
)))
(let ((anon120_Then@1 (=> (and true
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@5 this AVLTree.keys) Seq@Empty$Int$)
  )
    anon55
)))
(let ((anon120_Then (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) null)
  )(and 
    anon120_Then_assertion
    anon120_Then@1
))))
(let (($branchMerge_6 (=> (and true
  )
    (and anon120_Else anon120_Then)
)))
(let ((anon119_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) null)
  )
    $branchMerge_6
)))
(let ((anon119_Then@1 (=> (and true
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@5 this AVLTree.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) AVLTreeNode.keys))
  )
    $branchMerge_6
)))
(let ((anon119_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTree.root) null))
  )(and 
    anon119_Then_assertion
    anon119_Then@1
))))
(let ((anon51@6 (=> (and true
    (not (= this null))
  )
    (and anon119_Else anon119_Then)
)))
(let ((anon51@5 (=> (and true
    ($@AVLTree.valid@trigger this)
    (< (* 1000 foldK@_85) (Fractions 1))
    (< (* 1000 foldK@_85) methodK@_37)
    (< 0 foldK@_85)
    (= Heap@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 this AVLTree.keys (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this AVLTree.root) AVLTreeNode.keys)))
    (=> true (CanRead$Seq$Int$$ Mask@28 ZeroMask (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this AVLTree.root) AVLTreeNode.keys))
    (wf Heap@5 Mask@28 ZeroMask)
  )(and 
    anon51@5_assertion
    anon51@6
))))
(let ((anon51@4 (=> (and true
    (=> true (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this AVLTree.root) null)))
  )(and 
    anon51@4_assertion
    anon51@5
))))
(let ((anon51@3 (=> (and true
    (=> true (CanRead$ref$ Mask@28 ZeroMask this AVLTree.root))
  )(and 
    anon51@3_assertion
    anon51@4
))))
(let ((anon51@2 (=> (and true
    (=> true (not (= this null)))
  )(and 
    anon51@2_assertion
    anon51@3
))))
(let ((anon51@1 (=> (and true
    (CanWrite$Seq$Int$$ Mask@28 this AVLTree.keys)
  )(and 
    anon51@1_assertion
    anon51@2
))))
(let ((anon51 (=> (and true
  )(and 
    anon51_assertion
    anon51@1
))))
(let ((anon114_Then@14 (=> (and true
    (= Heap@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_59@0 this AVLTree.root nw@_53@0))
    (= Heap@4 Heap@2)
    (= Mask@28 Mask@23)
    (CanWrite$ref$ Mask@23 this AVLTree.root)
    (wf Heap@2 Mask@23 ZeroMask)
  )
    anon51
)))
(let ((anon50@1 (=> (and true
    (= Heap@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_74@0 this AVLTree.root r@122@0))
    (= Heap@4 Heap@3)
    (= Mask@28 Mask@27)
    (CanWrite$ref$ Mask@27 this AVLTree.root)
    (wf Heap@3 Mask@27 ZeroMask)
  )
    anon51
)))
(let ((anon114_Then@13 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_60@4 nw@_53@0 AVLTreeNode.balanceFactor) perm$R))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_59@0 nw@_53@0 AVLTreeNode.balanceFactor) 0)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_59@0 nw@_53@0 AVLTreeNode.height) 1)
    (= exhaleMask@_60@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_60@4 nw@_53@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_60@4 nw@_53@0 AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_60@4 nw@_53@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 100)))))
    (= Mask@20 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_60@5 nw@_53@0 AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_60@5 nw@_53@0 AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_60@5 nw@_53@0 AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@21 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@20 nw@_53@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@20 nw@_53@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@20 nw@_53@0 AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@22 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@21 nw@_53@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@21 nw@_53@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@21 nw@_53@0 AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@23 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@22 nw@_53@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@22 nw@_53@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@22 nw@_53@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_60@4 nw@_53@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_60@4 nw@_53@0 AVLTreeNode.balanceFactor) perm$N)))
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (IsGoodExhaleState exhaleHeap@_59@0 Heap@1 exhaleMask@_60@5 ZeroMask)
    (IsGoodMask exhaleMask@_60@5)
    (IsGoodMask exhaleMask@_60@5)
    (IsGoodMask Mask@20)
    (IsGoodMask Mask@21)
    (IsGoodMask Mask@22)
    (IsGoodMask Mask@23)
    (IsGoodMask Mask@23)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_59@0 nw@_53@0 AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_59@0 nw@_53@0 AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_59@0 nw@_53@0 AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_59@0 nw@_53@0 AVLTreeNode.keys)))
    (not (= nw@_53@0 null))
    (not (= nw@_53@0 null))
    (not (= nw@_53@0 null))
    (not (= nw@_53@0 null))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_59@0 nw@_53@0 AVLTreeNode.keys) k@0)
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_59@0 nw@_53@0 AVLTreeNode.keys) (Seq@Singleton$Int$ k@0))
    (wf exhaleHeap@_59@0 exhaleMask@_60@5 ZeroMask)
    (wf exhaleHeap@_59@0 exhaleMask@_60@5 ZeroMask)
    (wf exhaleHeap@_59@0 Mask@20 ZeroMask)
    (wf exhaleHeap@_59@0 Mask@20 ZeroMask)
    (wf exhaleHeap@_59@0 Mask@20 ZeroMask)
    (wf exhaleHeap@_59@0 Mask@21 ZeroMask)
    (wf exhaleHeap@_59@0 Mask@21 ZeroMask)
    (wf exhaleHeap@_59@0 Mask@21 ZeroMask)
    (wf exhaleHeap@_59@0 Mask@22 ZeroMask)
    (wf exhaleHeap@_59@0 Mask@22 ZeroMask)
    (wf exhaleHeap@_59@0 Mask@22 ZeroMask)
    (wf exhaleHeap@_59@0 Mask@23 ZeroMask)
    (wf exhaleHeap@_59@0 Mask@23 ZeroMask)
    (wf exhaleHeap@_59@0 Mask@23 ZeroMask)
    (wf Heap@1 exhaleMask@_60@5 ZeroMask)
    (wf Heap@1 Mask@19 ZeroMask)
  )(and 
    anon114_Then@13_assertion
    anon114_Then@14
))))
(let ((anon50 (=> (and true
    (IsGoodMask Mask@27)
    (wf exhaleHeap@_74@0 Mask@27 ZeroMask)
  )(and 
    anon50_assertion
    anon50@1
))))
(let ((anon114_Then@12 (=> (and true
    (> (Fractions 100) 0)
  )(and 
    anon114_Then@12_assertion
    anon114_Then@13
))))
(let ((anon118_Else (=> (and true
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@120@0 AVLTreeNode.keys) k@0))
  )
    anon50
)))
(let ((anon118_Then (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_74@0 r@122@0 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@120@0 AVLTreeNode.height))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@120@0 AVLTreeNode.keys) k@0)
  )
    anon50
)))
(let ((anon114_Then@11 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_60@3 nw@_53@0 AVLTreeNode.keys) perm$R))
    (= exhaleMask@_60@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_60@3 nw@_53@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_60@3 nw@_53@0 AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_60@3 nw@_53@0 AVLTreeNode.keys) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_60@3 nw@_53@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_60@3 nw@_53@0 AVLTreeNode.keys) perm$N)))
    (IsGoodMask exhaleMask@_60@4)
    (wf Heap@1 exhaleMask@_60@4 ZeroMask)
    (wf Heap@1 Mask@19 ZeroMask)
  )(and 
    anon114_Then@11_assertion
    anon114_Then@12
))))
(let ((anon48 (=> (and true
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_74@0 r@122@0 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@120@0 AVLTreeNode.height)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_74@0 r@122@0 AVLTreeNode.height) (+ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@120@0 AVLTreeNode.height) 1)))
  )
    (and anon118_Else anon118_Then)
)))
(let ((anon114_Then@10 (=> (and true
    (> (Fractions 100) 0)
  )(and 
    anon114_Then@10_assertion
    anon114_Then@11
))))
(let ((anon117_Else (=> (and true
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@120@0 AVLTreeNode.keys) k@0)
  )
    anon48
)))
(let ((anon117_Then (=> (and true
    (= (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_74@0 r@122@0 AVLTreeNode.keys)) (+ (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@120@0 AVLTreeNode.keys)) 1))
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@120@0 AVLTreeNode.keys) k@0))
  )
    anon48
)))
(let ((anon114_Then@9 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_60@2 nw@_53@0 AVLTreeNode.right) perm$R))
    (= exhaleMask@_60@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_60@2 nw@_53@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_60@2 nw@_53@0 AVLTreeNode.right) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_60@2 nw@_53@0 AVLTreeNode.right) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_60@2 nw@_53@0 AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_60@2 nw@_53@0 AVLTreeNode.right) perm$N)))
    (IsGoodMask exhaleMask@_60@3)
    (wf Heap@1 exhaleMask@_60@3 ZeroMask)
    (wf Heap@1 Mask@19 ZeroMask)
  )(and 
    anon114_Then@9_assertion
    anon114_Then@10
))))
(let (($branchMerge_5 (=> (and true
  )
    (and anon117_Else anon117_Then)
)))
(let ((anon114_Then@8 (=> (and true
    (> (Fractions 100) 0)
  )(and 
    anon114_Then@8_assertion
    anon114_Then@9
))))
(let ((anon116_Else (=> (and true
    (not (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@120@0 AVLTreeNode.keys) k@0))
  )
    $branchMerge_5
)))
(let ((anon116_Then (=> (and true
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@120@0 AVLTreeNode.keys) k@0)
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_74@0 r@122@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@120@0 AVLTreeNode.keys))
  )
    $branchMerge_5
)))
(let ((anon114_Then@7 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_60@1 nw@_53@0 AVLTreeNode.left) perm$R))
    (= exhaleMask@_60@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_60@1 nw@_53@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_60@1 nw@_53@0 AVLTreeNode.left) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_60@1 nw@_53@0 AVLTreeNode.left) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_60@1 nw@_53@0 AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_60@1 nw@_53@0 AVLTreeNode.left) perm$N)))
    (IsGoodMask exhaleMask@_60@2)
    (wf Heap@1 exhaleMask@_60@2 ZeroMask)
    (wf Heap@1 Mask@19 ZeroMask)
  )(and 
    anon114_Then@7_assertion
    anon114_Then@8
))))
(let ((anon44@6 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_75@2 this@120@0 AVLTreeNode.balanceFactor) perm$R))
    (= exhaleMask@_75@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_75@2 this@120@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_75@2 this@120@0 AVLTreeNode.balanceFactor) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_75@2 this@120@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= Mask@24 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_75@3 r@122@0 AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_75@3 r@122@0 AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_75@3 r@122@0 AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@25 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@24 r@122@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@24 r@122@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@24 r@122@0 AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@26 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@25 r@122@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@25 r@122@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@25 r@122@0 AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@27 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 r@122@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 r@122@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@26 r@122@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_75@2 this@120@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_75@2 this@120@0 AVLTreeNode.balanceFactor) perm$N)))
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (> (Fractions 50) 0)
    (forall( (|i#82#123| Int))(=> (and (<= 0 |i#82#123|) (< |i#82#123| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@120@0 AVLTreeNode.keys)))) (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_74@0 r@122@0 AVLTreeNode.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@120@0 AVLTreeNode.keys) |i#82#123|))))
    (forall( (|i#83#124| Int))(=> (and (<= 0 |i#83#124|) (< |i#83#124| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_74@0 r@122@0 AVLTreeNode.keys)))) (or (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this@120@0 AVLTreeNode.keys) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_74@0 r@122@0 AVLTreeNode.keys) |i#83#124|)) (= (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_74@0 r@122@0 AVLTreeNode.keys) |i#83#124|) k@0))))
    (IsGoodExhaleState exhaleHeap@_74@0 Heap@1 exhaleMask@_75@3 ZeroMask)
    (IsGoodMask exhaleMask@_75@3)
    (IsGoodMask exhaleMask@_75@3)
    (IsGoodMask Mask@24)
    (IsGoodMask Mask@25)
    (IsGoodMask Mask@26)
    (IsGoodMask Mask@27)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_74@0 r@122@0 AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_74@0 r@122@0 AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_74@0 r@122@0 AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_74@0 r@122@0 AVLTreeNode.keys)))
    (not (= r@122@0 null))
    (not (= r@122@0 null))
    (not (= r@122@0 null))
    (not (= r@122@0 null))
    (not (= r@122@0 null))
    (or (= r@122@0 null) (= (dtype r@122@0) AVLTreeNode@t))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_74@0 r@122@0 AVLTreeNode.keys) k@0)
    (wf exhaleHeap@_74@0 exhaleMask@_75@3 ZeroMask)
    (wf exhaleHeap@_74@0 exhaleMask@_75@3 ZeroMask)
    (wf exhaleHeap@_74@0 Mask@24 ZeroMask)
    (wf exhaleHeap@_74@0 Mask@24 ZeroMask)
    (wf exhaleHeap@_74@0 Mask@24 ZeroMask)
    (wf exhaleHeap@_74@0 Mask@25 ZeroMask)
    (wf exhaleHeap@_74@0 Mask@25 ZeroMask)
    (wf exhaleHeap@_74@0 Mask@25 ZeroMask)
    (wf exhaleHeap@_74@0 Mask@26 ZeroMask)
    (wf exhaleHeap@_74@0 Mask@26 ZeroMask)
    (wf exhaleHeap@_74@0 Mask@26 ZeroMask)
    (wf exhaleHeap@_74@0 Mask@27 ZeroMask)
    (wf exhaleHeap@_74@0 Mask@27 ZeroMask)
    (wf Heap@1 exhaleMask@_75@3 ZeroMask)
    (wf Heap@1 Mask@12 ZeroMask)
  )
    (and anon116_Else anon116_Then)
)))
(let ((anon114_Then@6 (=> (and true
    (> (Fractions 100) 0)
  )(and 
    anon114_Then@6_assertion
    anon114_Then@7
))))
(let ((anon44@5 (=> (and true
    (> (Fractions 50) 0)
  )(and 
    anon44@5_assertion
    anon44@6
))))
(let ((anon114_Then@5 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_60@0 nw@_53@0 AVLTreeNode.height) perm$R))
    (= exhaleMask@_60@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_60@0 nw@_53@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_60@0 nw@_53@0 AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_60@0 nw@_53@0 AVLTreeNode.height) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_60@0 nw@_53@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_60@0 nw@_53@0 AVLTreeNode.height) perm$N)))
    (IsGoodMask exhaleMask@_60@1)
    (wf Heap@1 exhaleMask@_60@1 ZeroMask)
    (wf Heap@1 Mask@19 ZeroMask)
  )(and 
    anon114_Then@5_assertion
    anon114_Then@6
))))
(let ((anon44@4 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_75@1 this@120@0 AVLTreeNode.height) perm$R))
    (= exhaleMask@_75@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_75@1 this@120@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_75@1 this@120@0 AVLTreeNode.height) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_75@1 this@120@0 AVLTreeNode.height) perm$R) (Fractions 50)))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_75@1 this@120@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_75@1 this@120@0 AVLTreeNode.height) perm$N)))
    (IsGoodMask exhaleMask@_75@2)
    (wf Heap@1 exhaleMask@_75@2 ZeroMask)
    (wf Heap@1 Mask@12 ZeroMask)
  )(and 
    anon44@4_assertion
    anon44@5
))))
(let ((anon114_Then@4 (=> (and true
    (> (Fractions 100) 0)
  )(and 
    anon114_Then@4_assertion
    anon114_Then@5
))))
(let ((anon44@3 (=> (and true
    (> (Fractions 50) 0)
  )(and 
    anon44@3_assertion
    anon44@4
))))
(let ((anon114_Then@3 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@19 nw@_53@0 AVLTreeNode.key) perm$R))
    (= exhaleMask@_60@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@19 nw@_53@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@19 nw@_53@0 AVLTreeNode.key) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@19 nw@_53@0 AVLTreeNode.key) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@19 nw@_53@0 AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@19 nw@_53@0 AVLTreeNode.key) perm$N)))
    (IsGoodMask exhaleMask@_60@0)
    (wf Heap@1 exhaleMask@_60@0 ZeroMask)
    (wf Heap@1 Mask@19 ZeroMask)
  )(and 
    anon114_Then@3_assertion
    anon114_Then@4
))))
(let ((anon44@2 (=> (and true
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_75@0 this@120@0 AVLTreeNode.keys) perm$R))
    (= exhaleMask@_75@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_75@0 this@120@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_75@0 this@120@0 AVLTreeNode.keys) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_75@0 this@120@0 AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_75@0 this@120@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_75@0 this@120@0 AVLTreeNode.keys) perm$N)))
    (IsGoodMask exhaleMask@_75@1)
    (wf Heap@1 exhaleMask@_75@1 ZeroMask)
    (wf Heap@1 Mask@12 ZeroMask)
  )(and 
    anon44@2_assertion
    anon44@3
))))
(let ((anon114_Then@2 (=> (and true
    (> (Fractions 100) 0)
  )(and 
    anon114_Then@2_assertion
    anon114_Then@3
))))
(let ((anon44@1 (=> (and true
    (> (Fractions 50) 0)
  )(and 
    anon44@1_assertion
    anon44@2
))))
(let ((anon114_Then@1 (=> (and true
    (not (= nw@_53@0 null))
  )(and 
    anon114_Then@1_assertion
    anon114_Then@2
))))
(let ((anon44 (=> (and true
    (IsGoodMask exhaleMask@_75@0)
    (wf Heap@1 exhaleMask@_75@0 ZeroMask)
    (wf Heap@1 Mask@12 ZeroMask)
  )(and 
    anon44_assertion
    anon44@1
))))
(let ((anon114_Then (=> (and true
    (< (* 1000 methodCallK@_58) (Fractions 1))
    (< (* 1000 methodCallK@_58) methodK@_37)
    (< 0 methodCallK@_58)
    (<= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 nw@_53@0 held) 0)
    (= (dtype nw@_53@0) AVLTreeNode@t)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap@1 nw@_53@0 rdheld) false)
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ Heap@1 nw@_53@0 mu) $LockBottom)
    (= Mask@13 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@12 nw@_53@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@12 nw@_53@0 AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@12 nw@_53@0 AVLTreeNode.key) perm$R) (Fractions 100)))))
    (= Mask@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@13 nw@_53@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@13 nw@_53@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@13 nw@_53@0 AVLTreeNode.height) perm$R) (Fractions 100)))))
    (= Mask@15 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@14 nw@_53@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@14 nw@_53@0 AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@14 nw@_53@0 AVLTreeNode.left) perm$R) (Fractions 100)))))
    (= Mask@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@15 nw@_53@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@15 nw@_53@0 AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@15 nw@_53@0 AVLTreeNode.right) perm$R) (Fractions 100)))))
    (= Mask@17 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@16 nw@_53@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@16 nw@_53@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@16 nw@_53@0 AVLTreeNode.keys) perm$R) (Fractions 100)))))
    (= Mask@18 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@17 nw@_53@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@17 nw@_53@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@17 nw@_53@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 100)))))
    (= Mask@19 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@18 nw@_53@0 mu (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@18 nw@_53@0 mu) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@18 nw@_53@0 mu) perm$R) (Fractions 100)))))
    (forall( (|f_$16_$0| Field$Bool$))(and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ Mask@12 nw@_53@0 |f_$16_$0|) perm$R) 0) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ Mask@12 nw@_53@0 |f_$16_$0|) perm$N) 0)))
    (forall( (|f_$16_$1| Field$Int$))(and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@12 nw@_53@0 |f_$16_$1|) perm$R) 0) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@12 nw@_53@0 |f_$16_$1|) perm$N) 0)))
    (forall( (|f_$16_$2| Field$ref$))(and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@12 nw@_53@0 |f_$16_$2|) perm$R) 0) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@12 nw@_53@0 |f_$16_$2|) perm$N) 0)))
    (forall( (|f_$16_$3| Field$Mu$))(and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@12 nw@_53@0 |f_$16_$3|) perm$R) 0) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ Mask@12 nw@_53@0 |f_$16_$3|) perm$N) 0)))
    (forall( (|f_$16_$4| Field$Seq$Int$$))(and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@12 nw@_53@0 |f_$16_$4|) perm$R) 0) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@12 nw@_53@0 |f_$16_$4|) perm$N) 0)))
    (not (= nw@_53@0 null))
    (wf Heap@1 Mask@19 ZeroMask)
    cond@_52@0
  )(and 
    anon114_Then_assertion
    anon114_Then@1
))))
(let ((anon115_Else (=> (and true
    (CanRead$Int$ exhaleMask@_75@0 ZeroMask this@120@0 AVLTreeNode.valid)
  )
    anon44
)))
(let ((anon115_Then (=> (and true
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this@120@0 AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_74@0 this@120@0 AVLTreeNode.valid))
    (not (CanRead$Int$ exhaleMask@_75@0 ZeroMask this@120@0 AVLTreeNode.valid))
  )
    anon44
)))
(let ((anon114_Else@5 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@12 this@120@0 AVLTreeNode.valid) perm$R))
    (= exhaleMask@_75@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@12 this@120@0 AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@12 this@120@0 AVLTreeNode.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@12 this@120@0 AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@12 this@120@0 AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@12 this@120@0 AVLTreeNode.valid) perm$N)))
  )
    (and anon115_Else anon115_Then)
)))
(let ((anon114_Else@4 (=> (and true
    (> (Fractions 100) 0)
  )(and 
    anon114_Else@4_assertion
    anon114_Else@5
))))
(let ((anon114_Else@3 (=> (and true
    (= this@120@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) null))
  )(and 
    anon114_Else@3_assertion
    anon114_Else@4
))))
(let ((anon114_Else@2 (=> (and true
    (=> true (CanRead$ref$ Mask@12 ZeroMask this AVLTree.root))
  )(and 
    anon114_Else@2_assertion
    anon114_Else@3
))))
(let ((anon114_Else@1 (=> (and true
    (=> true (not (= this null)))
  )(and 
    anon114_Else@1_assertion
    anon114_Else@2
))))
(let ((anon114_Else (=> (and true
    (< (* 1000 methodCallK@_73) (Fractions 1))
    (< (* 1000 methodCallK@_73) methodK@_37)
    (< 0 methodCallK@_73)
    (not cond@_52@0)
    (wf Heap@1 Mask@12 ZeroMask)
  )(and 
    anon114_Else_assertion
    anon114_Else@1
))))
(let ((anon40@2 (=> (and true
    (=> true (CanRead$ref$ Mask@12 ZeroMask this AVLTree.root))
  )
    (and anon114_Else anon114_Then)
)))
(let ((anon40@1 (=> (and true
    (=> true (not (= this null)))
  )(and 
    anon40@1_assertion
    anon40@2
))))
(let ((anon40 (=> (and true
    (= cond@_52@0 (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) null))
    (IsGoodMask Mask@12)
    (wf Heap@1 Mask@12 ZeroMask)
  )(and 
    anon40_assertion
    anon40@1
))))
(let ((anon113_Else (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) null))
  )
    anon40
)))
(let ((anon113_Then (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) null)
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this AVLTree.keys) Seq@Empty$Int$)
  )
    anon40
)))
(let (($branchMerge_4 (=> (and true
  )
    (and anon113_Else anon113_Then)
)))
(let ((anon112_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) null)
  )
    $branchMerge_4
)))
(let ((anon112_Then (=> (and true
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) null))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this AVLTree.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) AVLTreeNode.keys))
  )
    $branchMerge_4
)))
(let (($branchMerge_3 (=> (and true
  )
    (and anon112_Else anon112_Then)
)))
(let ((anon111_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) null)
    (= Mask@12 Mask@10)
  )
    $branchMerge_3
)))
(let ((anon111_Then (=> (and true
    (= Mask@11 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= Mask@12 Mask@11)
    (> (Fractions 50) 0)
    (IsGoodMask Mask@11)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) AVLTreeNode.balanceFactor)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) null))
    (wf Heap@1 Mask@10 ZeroMask)
    (wf Heap@1 Mask@11 ZeroMask)
    (wf Heap@1 Mask@11 ZeroMask)
  )
    $branchMerge_3
)))
(let (($branchMerge_2 (=> (and true
  )
    (and anon111_Else anon111_Then)
)))
(let ((anon110_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) null)
    (= Mask@10 Mask@8)
  )
    $branchMerge_2
)))
(let ((anon110_Then (=> (and true
    (= Mask@10 Mask@9)
    (= Mask@9 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (> (Fractions 50) 0)
    (IsGoodMask Mask@9)
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) null))
    (wf Heap@1 Mask@8 ZeroMask)
    (wf Heap@1 Mask@9 ZeroMask)
    (wf Heap@1 Mask@9 ZeroMask)
  )
    $branchMerge_2
)))
(let (($branchMerge_1 (=> (and true
  )
    (and anon110_Else anon110_Then)
)))
(let ((anon109_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) null)
    (= Mask@8 Mask@6)
  )
    $branchMerge_1
)))
(let ((anon109_Then (=> (and true
    (= Mask@7 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@8 Mask@7)
    (> (Fractions 50) 0)
    (IsGoodMask Mask@7)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) AVLTreeNode.height)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) null))
    (wf Heap@1 Mask@6 ZeroMask)
    (wf Heap@1 Mask@7 ZeroMask)
    (wf Heap@1 Mask@7 ZeroMask)
  )
    $branchMerge_1
)))
(let (($branchMerge_0 (=> (and true
  )
    (and anon109_Else anon109_Then)
)))
(let ((anon108_Else (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) null)
    (= Mask@6 Mask@4)
  )
    $branchMerge_0
)))
(let ((anon108_Then (=> (and true
    (= Mask@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@6 Mask@5)
    (> (Fractions 100) 0)
    (IsGoodMask Mask@5)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) AVLTreeNode.valid)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) null))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) null))
    (wf Heap@1 Mask@4 ZeroMask)
    (wf Heap@1 Mask@5 ZeroMask)
    (wf Heap@1 Mask@5 ZeroMask)
  )
    $branchMerge_0
)))
(let ((anon28 (=> (and true
    (= Mask@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@2 this AVLTree.root (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@2 this AVLTree.root) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@2 this AVLTree.root) perm$R) (Fractions 100)))))
    (= Mask@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@3 this AVLTree.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@3 this AVLTree.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@3 this AVLTree.keys) perm$R) (Fractions 50)))))
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (IsGoodMask Mask@2)
    (IsGoodMask Mask@2)
    (IsGoodMask Mask@3)
    (IsGoodMask Mask@4)
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 this AVLTree.keys)))
    (not (= this null))
    (not (= this null))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTree.root)) AVLTreeNode@t))
    (wf Heap@1 Mask@2 ZeroMask)
    (wf Heap@1 Mask@2 ZeroMask)
    (wf Heap@1 Mask@2 ZeroMask)
    (wf Heap@1 Mask@3 ZeroMask)
    (wf Heap@1 Mask@3 ZeroMask)
    (wf Heap@1 Mask@3 ZeroMask)
    (wf Heap@1 Mask@4 ZeroMask)
    (wf Heap@1 Mask@4 ZeroMask)
  )
    (and anon108_Else anon108_Then)
)))
(let ((anon107_Else (=> (and true
    (= Heap@1 Heap)
    (CanRead$Int$ Mask@2 ZeroMask this AVLTree.valid)
  )
    anon28
)))
(let ((anon107_Then (=> (and true
    (< oldVers@_50@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@0 this AVLTree.valid))
    (= Heap@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTree.valid newVers@_51@0))
    (= Heap@1 Heap@0)
    (= oldVers@_50@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTree.valid))
    (not (CanRead$Int$ Mask@2 ZeroMask this AVLTree.valid))
  )
    anon28
)))
(let ((anon94_Else (=> (and true
    (not false)
  )
    (and anon107_Else anon107_Then)
)))
(let ((anon0@3 (=> (and true
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@1 this AVLTree.valid) perm$R))
    (= Mask@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@1 this AVLTree.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@1 this AVLTree.valid) perm$R (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@1 this AVLTree.valid) perm$R) (Fractions 100)))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@1 this AVLTree.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@1 this AVLTree.valid) perm$N)))
  )
    anon94_Else
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
    ($@AVLTree.valid@trigger this)
    (< (* 1000 methodK@_37) (Fractions 1))
    (< (* 1000 unfoldK@_38) methodK@_37)
    (< 0 methodK@_37)
    (< 0 unfoldK@_38)
    (< unfoldK@_38 (Fractions 1))
    (= CurrentModule module@default)
    (= Heap Heap)
    (= Mask@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask this AVLTree.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask this AVLTree.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask this AVLTree.valid) perm$R) (Fractions 100)))))
    (= Mask@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@0 this AVLTree.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@0 this AVLTree.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@0 this AVLTree.keys) perm$R) (Fractions 50)))))
    (= Mask@1 Mask)
    (= ZeroCredits Credits)
    (= ZeroMask SecMask)
    (> (Fractions 100) 0)
    (> (Fractions 50) 0)
    (IsGoodMask Mask@0)
    (IsGoodMask Mask@1)
    (IsGoodMask Mask@1)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTree.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTree.keys)))
    (not (= this null))
    (not (= this null))
    (wf Heap Mask@0 ZeroMask)
    (wf Heap Mask@0 ZeroMask)
    (wf Heap Mask@0 ZeroMask)
    (wf Heap Mask@1 ZeroMask)
    (wf Heap Mask@1 ZeroMask)
    (wf Heap Mask@1 ZeroMask)
    (wf Heap ZeroMask ZeroMask)
    CanAssumeFunctionDefs
  )(and 
    anon0_assertion
    anon0@1
))))
(let ((PreconditionGeneratedEntry (=> (and true
    (IsGoodMask Mask)
    (IsGoodMask SecMask)
    (not (= this null))
    (or (= n@2 null) (= (dtype n@2) AVLTreeNode@t))
    (or (= r@122 null) (= (dtype r@122) AVLTreeNode@t))
    (or (= r@75 null) (= (dtype r@75) AVLTreeNode@t))
    (or (= this null) (= (dtype this) AVLTree@t))
    (or (= this@118 null) (= (dtype this@118) AVLTreeNode@t))
    (or (= this@120 null) (= (dtype this@120) AVLTreeNode@t))
    (wf Heap Mask SecMask)
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
    (forall( (|a_$2_$0| Seq$Int$) (|b_$2_$0| Seq$Int$))(!(=> (Seq@Equal$Int$ |a_$2_$0| |b_$2_$0|) (= |a_$2_$0| |b_$2_$0|))  :pattern ( (Seq@Equal$Int$ |a_$2_$0| |b_$2_$0|))))
    (forall( (|a_$2_$1| Seq$ref$) (|b_$2_$1| Seq$ref$))(!(=> (Seq@Equal$ref$ |a_$2_$1| |b_$2_$1|) (= |a_$2_$1| |b_$2_$1|))  :pattern ( (Seq@Equal$ref$ |a_$2_$1| |b_$2_$1|))))
    (forall( (|con_$0_$0| Bool) (|a_$1_$0| Bool) (|b_$1_$0| Bool))(!(=> (not |con_$0_$0|) (= (ite$Bool$ |con_$0_$0| |a_$1_$0| |b_$1_$0|) |b_$1_$0|))  :pattern ( (ite$Bool$ |con_$0_$0| |a_$1_$0| |b_$1_$0|))))
    (forall( (|con_$0_$1| Bool) (|a_$1_$1| Int) (|b_$1_$1| Int))(!(=> (not |con_$0_$1|) (= (ite$Int$ |con_$0_$1| |a_$1_$1| |b_$1_$1|) |b_$1_$1|))  :pattern ( (ite$Int$ |con_$0_$1| |a_$1_$1| |b_$1_$1|))))
    (forall( (|con_$0_$10| Bool) (|a_$1_$10| Field$Bool$) (|b_$1_$10| Field$Bool$))(!(=> (not |con_$0_$10|) (= (ite$Field$Bool$$ |con_$0_$10| |a_$1_$10| |b_$1_$10|) |b_$1_$10|))  :pattern ( (ite$Field$Bool$$ |con_$0_$10| |a_$1_$10| |b_$1_$10|))))
    (forall( (|con_$0_$11| Bool) (|a_$1_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|b_$1_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (not |con_$0_$11|) (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$0_$11| |a_$1_$11| |b_$1_$11|) |b_$1_$11|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$0_$11| |a_$1_$11| |b_$1_$11|))))
    (forall( (|con_$0_$12| Bool) (|a_$1_$12| $@Map@@ref@To@Int@@) (|b_$1_$12| $@Map@@ref@To@Int@@))(!(=> (not |con_$0_$12|) (= (ite$$@Map@@ref@To@Int@@$ |con_$0_$12| |a_$1_$12| |b_$1_$12|) |b_$1_$12|))  :pattern ( (ite$$@Map@@ref@To@Int@@$ |con_$0_$12| |a_$1_$12| |b_$1_$12|))))
    (forall( (|con_$0_$13| Bool) (|a_$1_$13| Seq$ref$) (|b_$1_$13| Seq$ref$))(!(=> (not |con_$0_$13|) (= (ite$Seq$ref$$ |con_$0_$13| |a_$1_$13| |b_$1_$13|) |b_$1_$13|))  :pattern ( (ite$Seq$ref$$ |con_$0_$13| |a_$1_$13| |b_$1_$13|))))
    (forall( (|con_$0_$14| Bool) (|a_$1_$14| Seq$Int$) (|b_$1_$14| Seq$Int$))(!(=> (not |con_$0_$14|) (= (ite$Seq$Int$$ |con_$0_$14| |a_$1_$14| |b_$1_$14|) |b_$1_$14|))  :pattern ( (ite$Seq$Int$$ |con_$0_$14| |a_$1_$14| |b_$1_$14|))))
    (forall( (|con_$0_$15| Bool) (|a_$1_$15| Field$ref$) (|b_$1_$15| Field$ref$))(!(=> (not |con_$0_$15|) (= (ite$Field$ref$$ |con_$0_$15| |a_$1_$15| |b_$1_$15|) |b_$1_$15|))  :pattern ( (ite$Field$ref$$ |con_$0_$15| |a_$1_$15| |b_$1_$15|))))
    (forall( (|con_$0_$16| Bool) (|a_$1_$16| Field$Seq$Int$$) (|b_$1_$16| Field$Seq$Int$$))(!(=> (not |con_$0_$16|) (= (ite$Field$Seq$Int$$$ |con_$0_$16| |a_$1_$16| |b_$1_$16|) |b_$1_$16|))  :pattern ( (ite$Field$Seq$Int$$$ |con_$0_$16| |a_$1_$16| |b_$1_$16|))))
    (forall( (|con_$0_$17| Bool) (|a_$1_$17| TypeName) (|b_$1_$17| TypeName))(!(=> (not |con_$0_$17|) (= (ite$TypeName$ |con_$0_$17| |a_$1_$17| |b_$1_$17|) |b_$1_$17|))  :pattern ( (ite$TypeName$ |con_$0_$17| |a_$1_$17| |b_$1_$17|))))
    (forall( (|con_$0_$18| Bool) (|a_$1_$18| ModuleName) (|b_$1_$18| ModuleName))(!(=> (not |con_$0_$18|) (= (ite$ModuleName$ |con_$0_$18| |a_$1_$18| |b_$1_$18|) |b_$1_$18|))  :pattern ( (ite$ModuleName$ |con_$0_$18| |a_$1_$18| |b_$1_$18|))))
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
    (forall( (|con_$14| Bool) (|a_$0_$13| Seq$ref$) (|b_$0_$13| Seq$ref$))(!(=> |con_$14| (= (ite$Seq$ref$$ |con_$14| |a_$0_$13| |b_$0_$13|) |a_$0_$13|))  :pattern ( (ite$Seq$ref$$ |con_$14| |a_$0_$13| |b_$0_$13|))))
    (forall( (|con_$15| Bool) (|a_$0_$14| Seq$Int$) (|b_$0_$14| Seq$Int$))(!(=> |con_$15| (= (ite$Seq$Int$$ |con_$15| |a_$0_$14| |b_$0_$14|) |a_$0_$14|))  :pattern ( (ite$Seq$Int$$ |con_$15| |a_$0_$14| |b_$0_$14|))))
    (forall( (|con_$16| Bool) (|a_$0_$15| Field$ref$) (|b_$0_$15| Field$ref$))(!(=> |con_$16| (= (ite$Field$ref$$ |con_$16| |a_$0_$15| |b_$0_$15|) |a_$0_$15|))  :pattern ( (ite$Field$ref$$ |con_$16| |a_$0_$15| |b_$0_$15|))))
    (forall( (|con_$17| Bool) (|a_$0_$16| Field$Seq$Int$$) (|b_$0_$16| Field$Seq$Int$$))(!(=> |con_$17| (= (ite$Field$Seq$Int$$$ |con_$17| |a_$0_$16| |b_$0_$16|) |a_$0_$16|))  :pattern ( (ite$Field$Seq$Int$$$ |con_$17| |a_$0_$16| |b_$0_$16|))))
    (forall( (|con_$18| Bool) (|a_$0_$17| TypeName) (|b_$0_$17| TypeName))(!(=> |con_$18| (= (ite$TypeName$ |con_$18| |a_$0_$17| |b_$0_$17|) |a_$0_$17|))  :pattern ( (ite$TypeName$ |con_$18| |a_$0_$17| |b_$0_$17|))))
    (forall( (|con_$19| Bool) (|a_$0_$18| ModuleName) (|b_$0_$18| ModuleName))(!(=> |con_$19| (= (ite$ModuleName$ |con_$19| |a_$0_$18| |b_$0_$18|) |a_$0_$18|))  :pattern ( (ite$ModuleName$ |con_$19| |a_$0_$18| |b_$0_$18|))))
    (forall( (|con_$2| Bool) (|a_$0_$1| Int) (|b_$0_$1| Int))(!(=> |con_$2| (= (ite$Int$ |con_$2| |a_$0_$1| |b_$0_$1|) |a_$0_$1|))  :pattern ( (ite$Int$ |con_$2| |a_$0_$1| |b_$0_$1|))))
    (forall( (|con_$3| Bool) (|a_$0_$2| $@Map@@PermissionComponent@To@Int@@) (|b_$0_$2| $@Map@@PermissionComponent@To@Int@@))(!(=> |con_$3| (= (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$3| |a_$0_$2| |b_$0_$2|) |a_$0_$2|))  :pattern ( (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$3| |a_$0_$2| |b_$0_$2|))))
    (forall( (|con_$4| Bool) (|a_$0_$3| PermissionComponent) (|b_$0_$3| PermissionComponent))(!(=> |con_$4| (= (ite$PermissionComponent$ |con_$4| |a_$0_$3| |b_$0_$3|) |a_$0_$3|))  :pattern ( (ite$PermissionComponent$ |con_$4| |a_$0_$3| |b_$0_$3|))))
    (forall( (|con_$5| Bool) (|a_$0_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|b_$0_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(=> |con_$5| (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$5| |a_$0_$4| |b_$0_$4|) |a_$0_$4|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$5| |a_$0_$4| |b_$0_$4|))))
    (forall( (|con_$6| Bool) (|a_$0_$5| ref) (|b_$0_$5| ref))(!(=> |con_$6| (= (ite$ref$ |con_$6| |a_$0_$5| |b_$0_$5|) |a_$0_$5|))  :pattern ( (ite$ref$ |con_$6| |a_$0_$5| |b_$0_$5|))))
    (forall( (|con_$7| Bool) (|a_$0_$6| Field$Int$) (|b_$0_$6| Field$Int$))(!(=> |con_$7| (= (ite$Field$Int$$ |con_$7| |a_$0_$6| |b_$0_$6|) |a_$0_$6|))  :pattern ( (ite$Field$Int$$ |con_$7| |a_$0_$6| |b_$0_$6|))))
    (forall( (|con_$8| Bool) (|a_$0_$7| PartialHeapType) (|b_$0_$7| PartialHeapType))(!(=> |con_$8| (= (ite$PartialHeapType$ |con_$8| |a_$0_$7| |b_$0_$7|) |a_$0_$7|))  :pattern ( (ite$PartialHeapType$ |con_$8| |a_$0_$7| |b_$0_$7|))))
    (forall( (|con_$9| Bool) (|a_$0_$8| Field$Mu$) (|b_$0_$8| Field$Mu$))(!(=> |con_$9| (= (ite$Field$Mu$$ |con_$9| |a_$0_$8| |b_$0_$8|) |a_$0_$8|))  :pattern ( (ite$Field$Mu$$ |con_$9| |a_$0_$8| |b_$0_$8|))))
    (forall( (|eh| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|h_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|m_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (IsGoodExhaleState |eh| |h_$0| |m_$3| |sm_$0|) (and (and (and (and (and (and (and (and (and (and (and (forall( (|o_$6_$0| ref) (|f_$1_$0| Field$Bool$))(!(=> (CanRead$Bool$ |m_$3| |sm_$0| |o_$6_$0| |f_$1_$0|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |eh| |o_$6_$0| |f_$1_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$0| |o_$6_$0| |f_$1_$0|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |eh| |o_$6_$0| |f_$1_$0|)))) (forall( (|o_$6_$1| ref) (|f_$1_$1| Field$Int$))(!(=> (CanRead$Int$ |m_$3| |sm_$0| |o_$6_$1| |f_$1_$1|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$6_$1| |f_$1_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$6_$1| |f_$1_$1|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$6_$1| |f_$1_$1|))))) (forall( (|o_$6_$2| ref) (|f_$1_$2| Field$ref$))(!(=> (CanRead$ref$ |m_$3| |sm_$0| |o_$6_$2| |f_$1_$2|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |eh| |o_$6_$2| |f_$1_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |h_$0| |o_$6_$2| |f_$1_$2|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |eh| |o_$6_$2| |f_$1_$2|))))) (forall( (|o_$6_$3| ref) (|f_$1_$3| Field$Mu$))(!(=> (CanRead$Mu$ |m_$3| |sm_$0| |o_$6_$3| |f_$1_$3|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |eh| |o_$6_$3| |f_$1_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$0| |o_$6_$3| |f_$1_$3|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |eh| |o_$6_$3| |f_$1_$3|))))) (forall( (|o_$6_$4| ref) (|f_$1_$4| Field$Seq$Int$$))(!(=> (CanRead$Seq$Int$$ |m_$3| |sm_$0| |o_$6_$4| |f_$1_$4|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ |eh| |o_$6_$4| |f_$1_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ |h_$0| |o_$6_$4| |f_$1_$4|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ |eh| |o_$6_$4| |f_$1_$4|))))) (forall( (|o_$7| ref))(!(= (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$7| held)) (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$7| held)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$7| held))))) (forall( (|o_$8| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |eh| |o_$8| rdheld) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$0| |o_$8| rdheld))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |eh| |o_$8| rdheld))))) (forall( (|o_$9| ref))(!(=> (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$9| held)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |eh| |o_$9| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$0| |o_$9| mu)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$9| held))))) (forall( (|o_$10| ref))(!(=> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$0| |o_$10| rdheld) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |eh| |o_$10| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$0| |o_$10| mu)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$0| |o_$10| rdheld))))) (forall( (|o_$11| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$11| forkK) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$11| forkK))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$11| forkK)) :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$11| forkK))))) (forall( (|o_$12| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$12| held) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$12| held))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$12| held)) :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$12| held))))) (forall( (|o_$13| ref) (|f_$2| Field$Int$))(!(=> (PredicateField$Int$ |f_$2|) (<= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$13| |f_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$13| |f_$2|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$13| |f_$2|) (PredicateField$Int$ |f_$2|))))))  :pattern ( (IsGoodExhaleState |eh| |h_$0| |m_$3| |sm_$0|))))
    (forall( (|f_$13_$0| Field$Bool$))(=> (NonPredicateField$Bool$ |f_$13_$0|) (not (PredicateField$Bool$ |f_$13_$0|))))
    (forall( (|f_$13_$1| Field$Int$))(=> (NonPredicateField$Int$ |f_$13_$1|) (not (PredicateField$Int$ |f_$13_$1|))))
    (forall( (|f_$13_$2| Field$ref$))(=> (NonPredicateField$ref$ |f_$13_$2|) (not (PredicateField$ref$ |f_$13_$2|))))
    (forall( (|f_$13_$3| Field$Mu$))(=> (NonPredicateField$Mu$ |f_$13_$3|) (not (PredicateField$Mu$ |f_$13_$3|))))
    (forall( (|f_$13_$4| Field$Seq$Int$$))(=> (NonPredicateField$Seq$Int$$ |f_$13_$4|) (not (PredicateField$Seq$Int$$ |f_$13_$4|))))
    (forall( (|f_$14_$0| Field$Bool$))(=> (PredicateField$Bool$ |f_$14_$0|) (not (NonPredicateField$Bool$ |f_$14_$0|))))
    (forall( (|f_$14_$1| Field$Int$))(=> (PredicateField$Int$ |f_$14_$1|) (not (NonPredicateField$Int$ |f_$14_$1|))))
    (forall( (|f_$14_$2| Field$ref$))(=> (PredicateField$ref$ |f_$14_$2|) (not (NonPredicateField$ref$ |f_$14_$2|))))
    (forall( (|f_$14_$3| Field$Mu$))(=> (PredicateField$Mu$ |f_$14_$3|) (not (NonPredicateField$Mu$ |f_$14_$3|))))
    (forall( (|f_$14_$4| Field$Seq$Int$$))(=> (PredicateField$Seq$Int$$ |f_$14_$4|) (not (NonPredicateField$Seq$Int$$ |f_$14_$4|))))
    (forall( (|h_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|m_$8| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$15| ref) (|q| ref))(!(=> (and (and (and (wf |h_$1| |m_$8| |sm_$2|) (not (= |o_$15| |q|))) (or (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$1| |o_$15| held)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$1| |o_$15| rdheld))) (or (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$1| |q| held)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$1| |q| rdheld))) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$1| |o_$15| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$1| |q| mu))))  :pattern ( (wf |h_$1| |m_$8| |sm_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$1| |o_$15| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$1| |q| mu))))
    (forall( (|m_$0| Mu) (|n_$1| Mu) (|o_$0| Mu))(!(=> (and (MuBelow |m_$0| |n_$1|) (MuBelow |n_$1| |o_$0|)) (MuBelow |m_$0| |o_$0|))  :pattern ( (MuBelow |m_$0| |n_$1|) (MuBelow |n_$1| |o_$0|))))
    (forall( (|m_$1| Mu) (|n_$2| Mu))(=> (MuBelow |m_$1| |n_$2|) (not (= |n_$2| $LockBottom))))
    (forall( (|m_$11_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$0| ref) (|f_$9_$0| Field$Bool$) (|howMuch_$1_$0| Int) (|q_$2_$0| ref) (|g_$1_$0| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Bool$ |m_$11_$0| |o_$18_$0| |f_$9_$0| |howMuch_$1_$0|) |q_$2_$0| |g_$1_$0|) perm$R) (ite$Int$ (and (= |o_$18_$0| |q_$2_$0|) (= |f_$9_$0| |g_$1_$0|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$0| |q_$2_$0| |g_$1_$0|) perm$R) |howMuch_$1_$0|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$0| |q_$2_$0| |g_$1_$0|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Bool$ |m_$11_$0| |o_$18_$0| |f_$9_$0| |howMuch_$1_$0|) |q_$2_$0| |g_$1_$0|) perm$R))))
    (forall( (|m_$11_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$1| ref) (|f_$9_$1| Field$Int$) (|howMuch_$1_$1| Int) (|q_$2_$1| ref) (|g_$1_$1| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Int$ |m_$11_$1| |o_$18_$1| |f_$9_$1| |howMuch_$1_$1|) |q_$2_$1| |g_$1_$1|) perm$R) (ite$Int$ (and (= |o_$18_$1| |q_$2_$1|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$1| |q_$2_$1| |g_$1_$1|) perm$R) |howMuch_$1_$1|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$1| |q_$2_$1| |g_$1_$1|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Int$ |m_$11_$1| |o_$18_$1| |f_$9_$1| |howMuch_$1_$1|) |q_$2_$1| |g_$1_$1|) perm$R))))
    (forall( (|m_$11_$10| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$10| ref) (|f_$9_$10| Field$Bool$) (|howMuch_$1_$10| Int) (|q_$2_$10| ref) (|g_$1_$10| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Bool$ |m_$11_$10| |o_$18_$10| |f_$9_$10| |howMuch_$1_$10|) |q_$2_$10| |g_$1_$10|) perm$R) (ite$Int$ (and (= |o_$18_$10| |q_$2_$10|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$10| |q_$2_$10| |g_$1_$10|) perm$R) |howMuch_$1_$10|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$10| |q_$2_$10| |g_$1_$10|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Bool$ |m_$11_$10| |o_$18_$10| |f_$9_$10| |howMuch_$1_$10|) |q_$2_$10| |g_$1_$10|) perm$R))))
    (forall( (|m_$11_$11| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$11| ref) (|f_$9_$11| Field$Int$) (|howMuch_$1_$11| Int) (|q_$2_$11| ref) (|g_$1_$11| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Int$ |m_$11_$11| |o_$18_$11| |f_$9_$11| |howMuch_$1_$11|) |q_$2_$11| |g_$1_$11|) perm$R) (ite$Int$ (and (= |o_$18_$11| |q_$2_$11|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$11| |q_$2_$11| |g_$1_$11|) perm$R) |howMuch_$1_$11|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$11| |q_$2_$11| |g_$1_$11|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Int$ |m_$11_$11| |o_$18_$11| |f_$9_$11| |howMuch_$1_$11|) |q_$2_$11| |g_$1_$11|) perm$R))))
    (forall( (|m_$11_$12| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$12| ref) (|f_$9_$12| Field$ref$) (|howMuch_$1_$12| Int) (|q_$2_$12| ref) (|g_$1_$12| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$ref$ |m_$11_$12| |o_$18_$12| |f_$9_$12| |howMuch_$1_$12|) |q_$2_$12| |g_$1_$12|) perm$R) (ite$Int$ (and (= |o_$18_$12| |q_$2_$12|) (= |f_$9_$12| |g_$1_$12|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$12| |q_$2_$12| |g_$1_$12|) perm$R) |howMuch_$1_$12|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$12| |q_$2_$12| |g_$1_$12|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$ref$ |m_$11_$12| |o_$18_$12| |f_$9_$12| |howMuch_$1_$12|) |q_$2_$12| |g_$1_$12|) perm$R))))
    (forall( (|m_$11_$13| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$13| ref) (|f_$9_$13| Field$Mu$) (|howMuch_$1_$13| Int) (|q_$2_$13| ref) (|g_$1_$13| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Mu$ |m_$11_$13| |o_$18_$13| |f_$9_$13| |howMuch_$1_$13|) |q_$2_$13| |g_$1_$13|) perm$R) (ite$Int$ (and (= |o_$18_$13| |q_$2_$13|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$13| |q_$2_$13| |g_$1_$13|) perm$R) |howMuch_$1_$13|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$13| |q_$2_$13| |g_$1_$13|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Mu$ |m_$11_$13| |o_$18_$13| |f_$9_$13| |howMuch_$1_$13|) |q_$2_$13| |g_$1_$13|) perm$R))))
    (forall( (|m_$11_$14| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$14| ref) (|f_$9_$14| Field$Seq$Int$$) (|howMuch_$1_$14| Int) (|q_$2_$14| ref) (|g_$1_$14| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Seq$Int$$ |m_$11_$14| |o_$18_$14| |f_$9_$14| |howMuch_$1_$14|) |q_$2_$14| |g_$1_$14|) perm$R) (ite$Int$ (and (= |o_$18_$14| |q_$2_$14|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$14| |q_$2_$14| |g_$1_$14|) perm$R) |howMuch_$1_$14|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$14| |q_$2_$14| |g_$1_$14|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Seq$Int$$ |m_$11_$14| |o_$18_$14| |f_$9_$14| |howMuch_$1_$14|) |q_$2_$14| |g_$1_$14|) perm$R))))
    (forall( (|m_$11_$15| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$15| ref) (|f_$9_$15| Field$Bool$) (|howMuch_$1_$15| Int) (|q_$2_$15| ref) (|g_$1_$15| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Bool$ |m_$11_$15| |o_$18_$15| |f_$9_$15| |howMuch_$1_$15|) |q_$2_$15| |g_$1_$15|) perm$R) (ite$Int$ (and (= |o_$18_$15| |q_$2_$15|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$15| |q_$2_$15| |g_$1_$15|) perm$R) |howMuch_$1_$15|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$15| |q_$2_$15| |g_$1_$15|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Bool$ |m_$11_$15| |o_$18_$15| |f_$9_$15| |howMuch_$1_$15|) |q_$2_$15| |g_$1_$15|) perm$R))))
    (forall( (|m_$11_$16| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$16| ref) (|f_$9_$16| Field$Int$) (|howMuch_$1_$16| Int) (|q_$2_$16| ref) (|g_$1_$16| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Int$ |m_$11_$16| |o_$18_$16| |f_$9_$16| |howMuch_$1_$16|) |q_$2_$16| |g_$1_$16|) perm$R) (ite$Int$ (and (= |o_$18_$16| |q_$2_$16|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$16| |q_$2_$16| |g_$1_$16|) perm$R) |howMuch_$1_$16|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$16| |q_$2_$16| |g_$1_$16|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Int$ |m_$11_$16| |o_$18_$16| |f_$9_$16| |howMuch_$1_$16|) |q_$2_$16| |g_$1_$16|) perm$R))))
    (forall( (|m_$11_$17| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$17| ref) (|f_$9_$17| Field$ref$) (|howMuch_$1_$17| Int) (|q_$2_$17| ref) (|g_$1_$17| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$ref$ |m_$11_$17| |o_$18_$17| |f_$9_$17| |howMuch_$1_$17|) |q_$2_$17| |g_$1_$17|) perm$R) (ite$Int$ (and (= |o_$18_$17| |q_$2_$17|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$17| |q_$2_$17| |g_$1_$17|) perm$R) |howMuch_$1_$17|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$17| |q_$2_$17| |g_$1_$17|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$ref$ |m_$11_$17| |o_$18_$17| |f_$9_$17| |howMuch_$1_$17|) |q_$2_$17| |g_$1_$17|) perm$R))))
    (forall( (|m_$11_$18| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$18| ref) (|f_$9_$18| Field$Mu$) (|howMuch_$1_$18| Int) (|q_$2_$18| ref) (|g_$1_$18| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Mu$ |m_$11_$18| |o_$18_$18| |f_$9_$18| |howMuch_$1_$18|) |q_$2_$18| |g_$1_$18|) perm$R) (ite$Int$ (and (= |o_$18_$18| |q_$2_$18|) (= |f_$9_$18| |g_$1_$18|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$18| |q_$2_$18| |g_$1_$18|) perm$R) |howMuch_$1_$18|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$18| |q_$2_$18| |g_$1_$18|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Mu$ |m_$11_$18| |o_$18_$18| |f_$9_$18| |howMuch_$1_$18|) |q_$2_$18| |g_$1_$18|) perm$R))))
    (forall( (|m_$11_$19| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$19| ref) (|f_$9_$19| Field$Seq$Int$$) (|howMuch_$1_$19| Int) (|q_$2_$19| ref) (|g_$1_$19| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Seq$Int$$ |m_$11_$19| |o_$18_$19| |f_$9_$19| |howMuch_$1_$19|) |q_$2_$19| |g_$1_$19|) perm$R) (ite$Int$ (and (= |o_$18_$19| |q_$2_$19|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$19| |q_$2_$19| |g_$1_$19|) perm$R) |howMuch_$1_$19|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$19| |q_$2_$19| |g_$1_$19|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Seq$Int$$ |m_$11_$19| |o_$18_$19| |f_$9_$19| |howMuch_$1_$19|) |q_$2_$19| |g_$1_$19|) perm$R))))
    (forall( (|m_$11_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$2| ref) (|f_$9_$2| Field$ref$) (|howMuch_$1_$2| Int) (|q_$2_$2| ref) (|g_$1_$2| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$ref$ |m_$11_$2| |o_$18_$2| |f_$9_$2| |howMuch_$1_$2|) |q_$2_$2| |g_$1_$2|) perm$R) (ite$Int$ (and (= |o_$18_$2| |q_$2_$2|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$2| |q_$2_$2| |g_$1_$2|) perm$R) |howMuch_$1_$2|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$2| |q_$2_$2| |g_$1_$2|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$ref$ |m_$11_$2| |o_$18_$2| |f_$9_$2| |howMuch_$1_$2|) |q_$2_$2| |g_$1_$2|) perm$R))))
    (forall( (|m_$11_$20| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$20| ref) (|f_$9_$20| Field$Bool$) (|howMuch_$1_$20| Int) (|q_$2_$20| ref) (|g_$1_$20| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Bool$ |m_$11_$20| |o_$18_$20| |f_$9_$20| |howMuch_$1_$20|) |q_$2_$20| |g_$1_$20|) perm$R) (ite$Int$ (and (= |o_$18_$20| |q_$2_$20|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$20| |q_$2_$20| |g_$1_$20|) perm$R) |howMuch_$1_$20|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$20| |q_$2_$20| |g_$1_$20|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Bool$ |m_$11_$20| |o_$18_$20| |f_$9_$20| |howMuch_$1_$20|) |q_$2_$20| |g_$1_$20|) perm$R))))
    (forall( (|m_$11_$21| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$21| ref) (|f_$9_$21| Field$Int$) (|howMuch_$1_$21| Int) (|q_$2_$21| ref) (|g_$1_$21| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Int$ |m_$11_$21| |o_$18_$21| |f_$9_$21| |howMuch_$1_$21|) |q_$2_$21| |g_$1_$21|) perm$R) (ite$Int$ (and (= |o_$18_$21| |q_$2_$21|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$21| |q_$2_$21| |g_$1_$21|) perm$R) |howMuch_$1_$21|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$21| |q_$2_$21| |g_$1_$21|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Int$ |m_$11_$21| |o_$18_$21| |f_$9_$21| |howMuch_$1_$21|) |q_$2_$21| |g_$1_$21|) perm$R))))
    (forall( (|m_$11_$22| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$22| ref) (|f_$9_$22| Field$ref$) (|howMuch_$1_$22| Int) (|q_$2_$22| ref) (|g_$1_$22| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$ref$ |m_$11_$22| |o_$18_$22| |f_$9_$22| |howMuch_$1_$22|) |q_$2_$22| |g_$1_$22|) perm$R) (ite$Int$ (and (= |o_$18_$22| |q_$2_$22|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$22| |q_$2_$22| |g_$1_$22|) perm$R) |howMuch_$1_$22|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$22| |q_$2_$22| |g_$1_$22|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$ref$ |m_$11_$22| |o_$18_$22| |f_$9_$22| |howMuch_$1_$22|) |q_$2_$22| |g_$1_$22|) perm$R))))
    (forall( (|m_$11_$23| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$23| ref) (|f_$9_$23| Field$Mu$) (|howMuch_$1_$23| Int) (|q_$2_$23| ref) (|g_$1_$23| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Mu$ |m_$11_$23| |o_$18_$23| |f_$9_$23| |howMuch_$1_$23|) |q_$2_$23| |g_$1_$23|) perm$R) (ite$Int$ (and (= |o_$18_$23| |q_$2_$23|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$23| |q_$2_$23| |g_$1_$23|) perm$R) |howMuch_$1_$23|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$23| |q_$2_$23| |g_$1_$23|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Mu$ |m_$11_$23| |o_$18_$23| |f_$9_$23| |howMuch_$1_$23|) |q_$2_$23| |g_$1_$23|) perm$R))))
    (forall( (|m_$11_$24| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$24| ref) (|f_$9_$24| Field$Seq$Int$$) (|howMuch_$1_$24| Int) (|q_$2_$24| ref) (|g_$1_$24| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Seq$Int$$ |m_$11_$24| |o_$18_$24| |f_$9_$24| |howMuch_$1_$24|) |q_$2_$24| |g_$1_$24|) perm$R) (ite$Int$ (and (= |o_$18_$24| |q_$2_$24|) (= |f_$9_$24| |g_$1_$24|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$24| |q_$2_$24| |g_$1_$24|) perm$R) |howMuch_$1_$24|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$24| |q_$2_$24| |g_$1_$24|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Seq$Int$$ |m_$11_$24| |o_$18_$24| |f_$9_$24| |howMuch_$1_$24|) |q_$2_$24| |g_$1_$24|) perm$R))))
    (forall( (|m_$11_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$3| ref) (|f_$9_$3| Field$Mu$) (|howMuch_$1_$3| Int) (|q_$2_$3| ref) (|g_$1_$3| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Mu$ |m_$11_$3| |o_$18_$3| |f_$9_$3| |howMuch_$1_$3|) |q_$2_$3| |g_$1_$3|) perm$R) (ite$Int$ (and (= |o_$18_$3| |q_$2_$3|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$3| |q_$2_$3| |g_$1_$3|) perm$R) |howMuch_$1_$3|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$3| |q_$2_$3| |g_$1_$3|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Mu$ |m_$11_$3| |o_$18_$3| |f_$9_$3| |howMuch_$1_$3|) |q_$2_$3| |g_$1_$3|) perm$R))))
    (forall( (|m_$11_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$4| ref) (|f_$9_$4| Field$Seq$Int$$) (|howMuch_$1_$4| Int) (|q_$2_$4| ref) (|g_$1_$4| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Seq$Int$$ |m_$11_$4| |o_$18_$4| |f_$9_$4| |howMuch_$1_$4|) |q_$2_$4| |g_$1_$4|) perm$R) (ite$Int$ (and (= |o_$18_$4| |q_$2_$4|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$4| |q_$2_$4| |g_$1_$4|) perm$R) |howMuch_$1_$4|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$4| |q_$2_$4| |g_$1_$4|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Seq$Int$$ |m_$11_$4| |o_$18_$4| |f_$9_$4| |howMuch_$1_$4|) |q_$2_$4| |g_$1_$4|) perm$R))))
    (forall( (|m_$11_$5| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$5| ref) (|f_$9_$5| Field$Bool$) (|howMuch_$1_$5| Int) (|q_$2_$5| ref) (|g_$1_$5| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Bool$ |m_$11_$5| |o_$18_$5| |f_$9_$5| |howMuch_$1_$5|) |q_$2_$5| |g_$1_$5|) perm$R) (ite$Int$ (and (= |o_$18_$5| |q_$2_$5|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$5| |q_$2_$5| |g_$1_$5|) perm$R) |howMuch_$1_$5|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$5| |q_$2_$5| |g_$1_$5|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Bool$ |m_$11_$5| |o_$18_$5| |f_$9_$5| |howMuch_$1_$5|) |q_$2_$5| |g_$1_$5|) perm$R))))
    (forall( (|m_$11_$6| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$6| ref) (|f_$9_$6| Field$Int$) (|howMuch_$1_$6| Int) (|q_$2_$6| ref) (|g_$1_$6| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Int$ |m_$11_$6| |o_$18_$6| |f_$9_$6| |howMuch_$1_$6|) |q_$2_$6| |g_$1_$6|) perm$R) (ite$Int$ (and (= |o_$18_$6| |q_$2_$6|) (= |f_$9_$6| |g_$1_$6|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$6| |q_$2_$6| |g_$1_$6|) perm$R) |howMuch_$1_$6|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$6| |q_$2_$6| |g_$1_$6|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Int$ |m_$11_$6| |o_$18_$6| |f_$9_$6| |howMuch_$1_$6|) |q_$2_$6| |g_$1_$6|) perm$R))))
    (forall( (|m_$11_$7| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$7| ref) (|f_$9_$7| Field$ref$) (|howMuch_$1_$7| Int) (|q_$2_$7| ref) (|g_$1_$7| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$ref$ |m_$11_$7| |o_$18_$7| |f_$9_$7| |howMuch_$1_$7|) |q_$2_$7| |g_$1_$7|) perm$R) (ite$Int$ (and (= |o_$18_$7| |q_$2_$7|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$7| |q_$2_$7| |g_$1_$7|) perm$R) |howMuch_$1_$7|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$7| |q_$2_$7| |g_$1_$7|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$ref$ |m_$11_$7| |o_$18_$7| |f_$9_$7| |howMuch_$1_$7|) |q_$2_$7| |g_$1_$7|) perm$R))))
    (forall( (|m_$11_$8| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$8| ref) (|f_$9_$8| Field$Mu$) (|howMuch_$1_$8| Int) (|q_$2_$8| ref) (|g_$1_$8| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Mu$ |m_$11_$8| |o_$18_$8| |f_$9_$8| |howMuch_$1_$8|) |q_$2_$8| |g_$1_$8|) perm$R) (ite$Int$ (and (= |o_$18_$8| |q_$2_$8|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$8| |q_$2_$8| |g_$1_$8|) perm$R) |howMuch_$1_$8|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$8| |q_$2_$8| |g_$1_$8|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Mu$ |m_$11_$8| |o_$18_$8| |f_$9_$8| |howMuch_$1_$8|) |q_$2_$8| |g_$1_$8|) perm$R))))
    (forall( (|m_$11_$9| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$9| ref) (|f_$9_$9| Field$Seq$Int$$) (|howMuch_$1_$9| Int) (|q_$2_$9| ref) (|g_$1_$9| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Seq$Int$$ |m_$11_$9| |o_$18_$9| |f_$9_$9| |howMuch_$1_$9|) |q_$2_$9| |g_$1_$9|) perm$R) (ite$Int$ (and (= |o_$18_$9| |q_$2_$9|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$9| |q_$2_$9| |g_$1_$9|) perm$R) |howMuch_$1_$9|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$9| |q_$2_$9| |g_$1_$9|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Seq$Int$$ |m_$11_$9| |o_$18_$9| |f_$9_$9| |howMuch_$1_$9|) |q_$2_$9| |g_$1_$9|) perm$R))))
    (forall( (|m_$4_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$2| ref) (|f_$3_$0| Field$Bool$))(!(= (CanRead$Bool$ |m_$4_$0| |sm_$1_$0| |obj_$2| |f_$3_$0|) (or (or (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$4_$0| |obj_$2| |f_$3_$0|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$4_$0| |obj_$2| |f_$3_$0|) perm$N))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |sm_$1_$0| |obj_$2| |f_$3_$0|) perm$R))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |sm_$1_$0| |obj_$2| |f_$3_$0|) perm$N))))  :pattern ( (CanRead$Bool$ |m_$4_$0| |sm_$1_$0| |obj_$2| |f_$3_$0|))))
    (forall( (|m_$4_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$3| ref) (|f_$3_$1| Field$Int$))(!(= (CanRead$Int$ |m_$4_$1| |sm_$1_$1| |obj_$3| |f_$3_$1|) (or (or (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$4_$1| |obj_$3| |f_$3_$1|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$4_$1| |obj_$3| |f_$3_$1|) perm$N))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |sm_$1_$1| |obj_$3| |f_$3_$1|) perm$R))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |sm_$1_$1| |obj_$3| |f_$3_$1|) perm$N))))  :pattern ( (CanRead$Int$ |m_$4_$1| |sm_$1_$1| |obj_$3| |f_$3_$1|))))
    (forall( (|m_$4_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$4| ref) (|f_$3_$2| Field$ref$))(!(= (CanRead$ref$ |m_$4_$2| |sm_$1_$2| |obj_$4| |f_$3_$2|) (or (or (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$4_$2| |obj_$4| |f_$3_$2|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$4_$2| |obj_$4| |f_$3_$2|) perm$N))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |sm_$1_$2| |obj_$4| |f_$3_$2|) perm$R))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |sm_$1_$2| |obj_$4| |f_$3_$2|) perm$N))))  :pattern ( (CanRead$ref$ |m_$4_$2| |sm_$1_$2| |obj_$4| |f_$3_$2|))))
    (forall( (|m_$4_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$5| ref) (|f_$3_$3| Field$Mu$))(!(= (CanRead$Mu$ |m_$4_$3| |sm_$1_$3| |obj_$5| |f_$3_$3|) (or (or (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$4_$3| |obj_$5| |f_$3_$3|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$4_$3| |obj_$5| |f_$3_$3|) perm$N))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |sm_$1_$3| |obj_$5| |f_$3_$3|) perm$R))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |sm_$1_$3| |obj_$5| |f_$3_$3|) perm$N))))  :pattern ( (CanRead$Mu$ |m_$4_$3| |sm_$1_$3| |obj_$5| |f_$3_$3|))))
    (forall( (|m_$4_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$6| ref) (|f_$3_$4| Field$Seq$Int$$))(!(= (CanRead$Seq$Int$$ |m_$4_$4| |sm_$1_$4| |obj_$6| |f_$3_$4|) (or (or (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$4_$4| |obj_$6| |f_$3_$4|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$4_$4| |obj_$6| |f_$3_$4|) perm$N))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |sm_$1_$4| |obj_$6| |f_$3_$4|) perm$R))) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |sm_$1_$4| |obj_$6| |f_$3_$4|) perm$N))))  :pattern ( (CanRead$Seq$Int$$ |m_$4_$4| |sm_$1_$4| |obj_$6| |f_$3_$4|))))
    (forall( (|m_$6_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$1_$0| ref) (|f_$5_$0| Field$Bool$))(!(= (CanWrite$Bool$ |m_$6_$0| |obj_$1_$0| |f_$5_$0|) (and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$6_$0| |obj_$1_$0| |f_$5_$0|) perm$R) Permission$FullFraction) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$6_$0| |obj_$1_$0| |f_$5_$0|) perm$N) 0)))  :pattern ( (CanWrite$Bool$ |m_$6_$0| |obj_$1_$0| |f_$5_$0|))))
    (forall( (|m_$6_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$1_$1| ref) (|f_$5_$1| Field$Int$))(!(= (CanWrite$Int$ |m_$6_$1| |obj_$1_$1| |f_$5_$1|) (and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$6_$1| |obj_$1_$1| |f_$5_$1|) perm$R) Permission$FullFraction) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$6_$1| |obj_$1_$1| |f_$5_$1|) perm$N) 0)))  :pattern ( (CanWrite$Int$ |m_$6_$1| |obj_$1_$1| |f_$5_$1|))))
    (forall( (|m_$6_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$1_$2| ref) (|f_$5_$2| Field$ref$))(!(= (CanWrite$ref$ |m_$6_$2| |obj_$1_$2| |f_$5_$2|) (and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$6_$2| |obj_$1_$2| |f_$5_$2|) perm$R) Permission$FullFraction) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$6_$2| |obj_$1_$2| |f_$5_$2|) perm$N) 0)))  :pattern ( (CanWrite$ref$ |m_$6_$2| |obj_$1_$2| |f_$5_$2|))))
    (forall( (|m_$6_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$1_$3| ref) (|f_$5_$3| Field$Mu$))(!(= (CanWrite$Mu$ |m_$6_$3| |obj_$1_$3| |f_$5_$3|) (and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$6_$3| |obj_$1_$3| |f_$5_$3|) perm$R) Permission$FullFraction) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$6_$3| |obj_$1_$3| |f_$5_$3|) perm$N) 0)))  :pattern ( (CanWrite$Mu$ |m_$6_$3| |obj_$1_$3| |f_$5_$3|))))
    (forall( (|m_$6_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$1_$4| ref) (|f_$5_$4| Field$Seq$Int$$))(!(= (CanWrite$Seq$Int$$ |m_$6_$4| |obj_$1_$4| |f_$5_$4|) (and (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$6_$4| |obj_$1_$4| |f_$5_$4|) perm$R) Permission$FullFraction) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$6_$4| |obj_$1_$4| |f_$5_$4|) perm$N) 0)))  :pattern ( (CanWrite$Seq$Int$$ |m_$6_$4| |obj_$1_$4| |f_$5_$4|))))
    (forall( (|m_$7| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (IsGoodMask |m_$7|) (and (and (and (and (forall( (|o_$14_$0| ref) (|f_$6_$0| Field$Bool$))(and (and (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$R)) (=> (NonPredicateField$Bool$ |f_$6_$0|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$R) Permission$FullFraction))))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$R))))) (forall( (|o_$14_$1| ref) (|f_$6_$1| Field$Int$))(and (and (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$R)) (=> (NonPredicateField$Int$ |f_$6_$1|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$R) Permission$FullFraction))))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$R)))))) (forall( (|o_$14_$2| ref) (|f_$6_$2| Field$ref$))(and (and (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$R)) (=> (NonPredicateField$ref$ |f_$6_$2|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$R) Permission$FullFraction))))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$R)))))) (forall( (|o_$14_$3| ref) (|f_$6_$3| Field$Mu$))(and (and (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$R)) (=> (NonPredicateField$Mu$ |f_$6_$3|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$R) Permission$FullFraction))))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$R)))))) (forall( (|o_$14_$4| ref) (|f_$6_$4| Field$Seq$Int$$))(and (and (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7| |o_$14_$4| |f_$6_$4|) perm$R)) (=> (NonPredicateField$Seq$Int$$ |f_$6_$4|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7| |o_$14_$4| |f_$6_$4|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7| |o_$14_$4| |f_$6_$4|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7| |o_$14_$4| |f_$6_$4|) perm$R) Permission$FullFraction))))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7| |o_$14_$4| |f_$6_$4|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7| |o_$14_$4| |f_$6_$4|) perm$R)))))))  :pattern ( (IsGoodMask |m_$7|))))
    (forall( (|m_$9_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$0| ref) (|f_$7_$0| Field$Bool$) (|howMuch_$3| Int) (|q_$0_$0| ref) (|g_$4| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Bool$ |m_$9_$0| |o_$16_$0| |f_$7_$0| |howMuch_$3|) |q_$0_$0| |g_$4|) perm$R) (ite$Int$ (and (= |o_$16_$0| |q_$0_$0|) (= |f_$7_$0| |g_$4|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$0| |q_$0_$0| |g_$4|) perm$R) |howMuch_$3|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$0| |q_$0_$0| |g_$4|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Bool$ |m_$9_$0| |o_$16_$0| |f_$7_$0| |howMuch_$3|) |q_$0_$0| |g_$4|) perm$R))))
    (forall( (|m_$9_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$1| ref) (|f_$7_$1| Field$Int$) (|howMuch_$4| Int) (|q_$0_$1| ref) (|g_$5| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Int$ |m_$9_$1| |o_$16_$1| |f_$7_$1| |howMuch_$4|) |q_$0_$1| |g_$5|) perm$R) (ite$Int$ (and (= |o_$16_$1| |q_$0_$1|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$1| |q_$0_$1| |g_$5|) perm$R) |howMuch_$4|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$1| |q_$0_$1| |g_$5|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Int$ |m_$9_$1| |o_$16_$1| |f_$7_$1| |howMuch_$4|) |q_$0_$1| |g_$5|) perm$R))))
    (forall( (|m_$9_$10| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$10| ref) (|f_$7_$10| Field$Bool$) (|howMuch_$13| Int) (|q_$0_$10| ref) (|g_$14| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Bool$ |m_$9_$10| |o_$16_$10| |f_$7_$10| |howMuch_$13|) |q_$0_$10| |g_$14|) perm$R) (ite$Int$ (and (= |o_$16_$10| |q_$0_$10|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$10| |q_$0_$10| |g_$14|) perm$R) |howMuch_$13|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$10| |q_$0_$10| |g_$14|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Bool$ |m_$9_$10| |o_$16_$10| |f_$7_$10| |howMuch_$13|) |q_$0_$10| |g_$14|) perm$R))))
    (forall( (|m_$9_$11| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$11| ref) (|f_$7_$11| Field$Int$) (|howMuch_$14| Int) (|q_$0_$11| ref) (|g_$15| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Int$ |m_$9_$11| |o_$16_$11| |f_$7_$11| |howMuch_$14|) |q_$0_$11| |g_$15|) perm$R) (ite$Int$ (and (= |o_$16_$11| |q_$0_$11|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$11| |q_$0_$11| |g_$15|) perm$R) |howMuch_$14|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$11| |q_$0_$11| |g_$15|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Int$ |m_$9_$11| |o_$16_$11| |f_$7_$11| |howMuch_$14|) |q_$0_$11| |g_$15|) perm$R))))
    (forall( (|m_$9_$12| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$12| ref) (|f_$7_$12| Field$ref$) (|howMuch_$15| Int) (|q_$0_$12| ref) (|g_$16| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$ref$ |m_$9_$12| |o_$16_$12| |f_$7_$12| |howMuch_$15|) |q_$0_$12| |g_$16|) perm$R) (ite$Int$ (and (= |o_$16_$12| |q_$0_$12|) (= |f_$7_$12| |g_$16|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$12| |q_$0_$12| |g_$16|) perm$R) |howMuch_$15|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$12| |q_$0_$12| |g_$16|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$ref$ |m_$9_$12| |o_$16_$12| |f_$7_$12| |howMuch_$15|) |q_$0_$12| |g_$16|) perm$R))))
    (forall( (|m_$9_$13| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$13| ref) (|f_$7_$13| Field$Mu$) (|howMuch_$16| Int) (|q_$0_$13| ref) (|g_$17| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Mu$ |m_$9_$13| |o_$16_$13| |f_$7_$13| |howMuch_$16|) |q_$0_$13| |g_$17|) perm$R) (ite$Int$ (and (= |o_$16_$13| |q_$0_$13|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$13| |q_$0_$13| |g_$17|) perm$R) |howMuch_$16|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$13| |q_$0_$13| |g_$17|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Mu$ |m_$9_$13| |o_$16_$13| |f_$7_$13| |howMuch_$16|) |q_$0_$13| |g_$17|) perm$R))))
    (forall( (|m_$9_$14| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$14| ref) (|f_$7_$14| Field$Seq$Int$$) (|howMuch_$17| Int) (|q_$0_$14| ref) (|g_$18| Field$ref$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Seq$Int$$ |m_$9_$14| |o_$16_$14| |f_$7_$14| |howMuch_$17|) |q_$0_$14| |g_$18|) perm$R) (ite$Int$ (and (= |o_$16_$14| |q_$0_$14|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$14| |q_$0_$14| |g_$18|) perm$R) |howMuch_$17|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$14| |q_$0_$14| |g_$18|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Seq$Int$$ |m_$9_$14| |o_$16_$14| |f_$7_$14| |howMuch_$17|) |q_$0_$14| |g_$18|) perm$R))))
    (forall( (|m_$9_$15| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$15| ref) (|f_$7_$15| Field$Bool$) (|howMuch_$18| Int) (|q_$0_$15| ref) (|g_$19| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Bool$ |m_$9_$15| |o_$16_$15| |f_$7_$15| |howMuch_$18|) |q_$0_$15| |g_$19|) perm$R) (ite$Int$ (and (= |o_$16_$15| |q_$0_$15|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$15| |q_$0_$15| |g_$19|) perm$R) |howMuch_$18|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$15| |q_$0_$15| |g_$19|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Bool$ |m_$9_$15| |o_$16_$15| |f_$7_$15| |howMuch_$18|) |q_$0_$15| |g_$19|) perm$R))))
    (forall( (|m_$9_$16| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$16| ref) (|f_$7_$16| Field$Int$) (|howMuch_$19| Int) (|q_$0_$16| ref) (|g_$20| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Int$ |m_$9_$16| |o_$16_$16| |f_$7_$16| |howMuch_$19|) |q_$0_$16| |g_$20|) perm$R) (ite$Int$ (and (= |o_$16_$16| |q_$0_$16|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$16| |q_$0_$16| |g_$20|) perm$R) |howMuch_$19|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$16| |q_$0_$16| |g_$20|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Int$ |m_$9_$16| |o_$16_$16| |f_$7_$16| |howMuch_$19|) |q_$0_$16| |g_$20|) perm$R))))
    (forall( (|m_$9_$17| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$17| ref) (|f_$7_$17| Field$ref$) (|howMuch_$20| Int) (|q_$0_$17| ref) (|g_$21| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$ref$ |m_$9_$17| |o_$16_$17| |f_$7_$17| |howMuch_$20|) |q_$0_$17| |g_$21|) perm$R) (ite$Int$ (and (= |o_$16_$17| |q_$0_$17|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$17| |q_$0_$17| |g_$21|) perm$R) |howMuch_$20|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$17| |q_$0_$17| |g_$21|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$ref$ |m_$9_$17| |o_$16_$17| |f_$7_$17| |howMuch_$20|) |q_$0_$17| |g_$21|) perm$R))))
    (forall( (|m_$9_$18| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$18| ref) (|f_$7_$18| Field$Mu$) (|howMuch_$21| Int) (|q_$0_$18| ref) (|g_$22| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Mu$ |m_$9_$18| |o_$16_$18| |f_$7_$18| |howMuch_$21|) |q_$0_$18| |g_$22|) perm$R) (ite$Int$ (and (= |o_$16_$18| |q_$0_$18|) (= |f_$7_$18| |g_$22|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$18| |q_$0_$18| |g_$22|) perm$R) |howMuch_$21|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$18| |q_$0_$18| |g_$22|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Mu$ |m_$9_$18| |o_$16_$18| |f_$7_$18| |howMuch_$21|) |q_$0_$18| |g_$22|) perm$R))))
    (forall( (|m_$9_$19| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$19| ref) (|f_$7_$19| Field$Seq$Int$$) (|howMuch_$22| Int) (|q_$0_$19| ref) (|g_$23| Field$Mu$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Seq$Int$$ |m_$9_$19| |o_$16_$19| |f_$7_$19| |howMuch_$22|) |q_$0_$19| |g_$23|) perm$R) (ite$Int$ (and (= |o_$16_$19| |q_$0_$19|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$19| |q_$0_$19| |g_$23|) perm$R) |howMuch_$22|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$19| |q_$0_$19| |g_$23|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Seq$Int$$ |m_$9_$19| |o_$16_$19| |f_$7_$19| |howMuch_$22|) |q_$0_$19| |g_$23|) perm$R))))
    (forall( (|m_$9_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$2| ref) (|f_$7_$2| Field$ref$) (|howMuch_$5| Int) (|q_$0_$2| ref) (|g_$6| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$ref$ |m_$9_$2| |o_$16_$2| |f_$7_$2| |howMuch_$5|) |q_$0_$2| |g_$6|) perm$R) (ite$Int$ (and (= |o_$16_$2| |q_$0_$2|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$2| |q_$0_$2| |g_$6|) perm$R) |howMuch_$5|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$2| |q_$0_$2| |g_$6|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$ref$ |m_$9_$2| |o_$16_$2| |f_$7_$2| |howMuch_$5|) |q_$0_$2| |g_$6|) perm$R))))
    (forall( (|m_$9_$20| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$20| ref) (|f_$7_$20| Field$Bool$) (|howMuch_$23| Int) (|q_$0_$20| ref) (|g_$24| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Bool$ |m_$9_$20| |o_$16_$20| |f_$7_$20| |howMuch_$23|) |q_$0_$20| |g_$24|) perm$R) (ite$Int$ (and (= |o_$16_$20| |q_$0_$20|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$20| |q_$0_$20| |g_$24|) perm$R) |howMuch_$23|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$20| |q_$0_$20| |g_$24|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Bool$ |m_$9_$20| |o_$16_$20| |f_$7_$20| |howMuch_$23|) |q_$0_$20| |g_$24|) perm$R))))
    (forall( (|m_$9_$21| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$21| ref) (|f_$7_$21| Field$Int$) (|howMuch_$24| Int) (|q_$0_$21| ref) (|g_$25| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Int$ |m_$9_$21| |o_$16_$21| |f_$7_$21| |howMuch_$24|) |q_$0_$21| |g_$25|) perm$R) (ite$Int$ (and (= |o_$16_$21| |q_$0_$21|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$21| |q_$0_$21| |g_$25|) perm$R) |howMuch_$24|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$21| |q_$0_$21| |g_$25|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Int$ |m_$9_$21| |o_$16_$21| |f_$7_$21| |howMuch_$24|) |q_$0_$21| |g_$25|) perm$R))))
    (forall( (|m_$9_$22| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$22| ref) (|f_$7_$22| Field$ref$) (|howMuch_$25| Int) (|q_$0_$22| ref) (|g_$26| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$ref$ |m_$9_$22| |o_$16_$22| |f_$7_$22| |howMuch_$25|) |q_$0_$22| |g_$26|) perm$R) (ite$Int$ (and (= |o_$16_$22| |q_$0_$22|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$22| |q_$0_$22| |g_$26|) perm$R) |howMuch_$25|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$22| |q_$0_$22| |g_$26|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$ref$ |m_$9_$22| |o_$16_$22| |f_$7_$22| |howMuch_$25|) |q_$0_$22| |g_$26|) perm$R))))
    (forall( (|m_$9_$23| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$23| ref) (|f_$7_$23| Field$Mu$) (|howMuch_$26| Int) (|q_$0_$23| ref) (|g_$27| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Mu$ |m_$9_$23| |o_$16_$23| |f_$7_$23| |howMuch_$26|) |q_$0_$23| |g_$27|) perm$R) (ite$Int$ (and (= |o_$16_$23| |q_$0_$23|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$23| |q_$0_$23| |g_$27|) perm$R) |howMuch_$26|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$23| |q_$0_$23| |g_$27|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Mu$ |m_$9_$23| |o_$16_$23| |f_$7_$23| |howMuch_$26|) |q_$0_$23| |g_$27|) perm$R))))
    (forall( (|m_$9_$24| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$24| ref) (|f_$7_$24| Field$Seq$Int$$) (|howMuch_$27| Int) (|q_$0_$24| ref) (|g_$28| Field$Seq$Int$$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Seq$Int$$ |m_$9_$24| |o_$16_$24| |f_$7_$24| |howMuch_$27|) |q_$0_$24| |g_$28|) perm$R) (ite$Int$ (and (= |o_$16_$24| |q_$0_$24|) (= |f_$7_$24| |g_$28|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$24| |q_$0_$24| |g_$28|) perm$R) |howMuch_$27|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$24| |q_$0_$24| |g_$28|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Seq$Int$$ |m_$9_$24| |o_$16_$24| |f_$7_$24| |howMuch_$27|) |q_$0_$24| |g_$28|) perm$R))))
    (forall( (|m_$9_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$3| ref) (|f_$7_$3| Field$Mu$) (|howMuch_$6| Int) (|q_$0_$3| ref) (|g_$7| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Mu$ |m_$9_$3| |o_$16_$3| |f_$7_$3| |howMuch_$6|) |q_$0_$3| |g_$7|) perm$R) (ite$Int$ (and (= |o_$16_$3| |q_$0_$3|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$3| |q_$0_$3| |g_$7|) perm$R) |howMuch_$6|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$3| |q_$0_$3| |g_$7|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Mu$ |m_$9_$3| |o_$16_$3| |f_$7_$3| |howMuch_$6|) |q_$0_$3| |g_$7|) perm$R))))
    (forall( (|m_$9_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$4| ref) (|f_$7_$4| Field$Seq$Int$$) (|howMuch_$7| Int) (|q_$0_$4| ref) (|g_$8| Field$Bool$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Seq$Int$$ |m_$9_$4| |o_$16_$4| |f_$7_$4| |howMuch_$7|) |q_$0_$4| |g_$8|) perm$R) (ite$Int$ (and (= |o_$16_$4| |q_$0_$4|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$4| |q_$0_$4| |g_$8|) perm$R) |howMuch_$7|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$4| |q_$0_$4| |g_$8|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Seq$Int$$ |m_$9_$4| |o_$16_$4| |f_$7_$4| |howMuch_$7|) |q_$0_$4| |g_$8|) perm$R))))
    (forall( (|m_$9_$5| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$5| ref) (|f_$7_$5| Field$Bool$) (|howMuch_$8| Int) (|q_$0_$5| ref) (|g_$9| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Bool$ |m_$9_$5| |o_$16_$5| |f_$7_$5| |howMuch_$8|) |q_$0_$5| |g_$9|) perm$R) (ite$Int$ (and (= |o_$16_$5| |q_$0_$5|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$5| |q_$0_$5| |g_$9|) perm$R) |howMuch_$8|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$5| |q_$0_$5| |g_$9|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Bool$ |m_$9_$5| |o_$16_$5| |f_$7_$5| |howMuch_$8|) |q_$0_$5| |g_$9|) perm$R))))
    (forall( (|m_$9_$6| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$6| ref) (|f_$7_$6| Field$Int$) (|howMuch_$9| Int) (|q_$0_$6| ref) (|g_$10| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Int$ |m_$9_$6| |o_$16_$6| |f_$7_$6| |howMuch_$9|) |q_$0_$6| |g_$10|) perm$R) (ite$Int$ (and (= |o_$16_$6| |q_$0_$6|) (= |f_$7_$6| |g_$10|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$6| |q_$0_$6| |g_$10|) perm$R) |howMuch_$9|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$6| |q_$0_$6| |g_$10|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Int$ |m_$9_$6| |o_$16_$6| |f_$7_$6| |howMuch_$9|) |q_$0_$6| |g_$10|) perm$R))))
    (forall( (|m_$9_$7| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$7| ref) (|f_$7_$7| Field$ref$) (|howMuch_$10| Int) (|q_$0_$7| ref) (|g_$11| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$ref$ |m_$9_$7| |o_$16_$7| |f_$7_$7| |howMuch_$10|) |q_$0_$7| |g_$11|) perm$R) (ite$Int$ (and (= |o_$16_$7| |q_$0_$7|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$7| |q_$0_$7| |g_$11|) perm$R) |howMuch_$10|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$7| |q_$0_$7| |g_$11|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$ref$ |m_$9_$7| |o_$16_$7| |f_$7_$7| |howMuch_$10|) |q_$0_$7| |g_$11|) perm$R))))
    (forall( (|m_$9_$8| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$8| ref) (|f_$7_$8| Field$Mu$) (|howMuch_$11| Int) (|q_$0_$8| ref) (|g_$12| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Mu$ |m_$9_$8| |o_$16_$8| |f_$7_$8| |howMuch_$11|) |q_$0_$8| |g_$12|) perm$R) (ite$Int$ (and (= |o_$16_$8| |q_$0_$8|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$8| |q_$0_$8| |g_$12|) perm$R) |howMuch_$11|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$8| |q_$0_$8| |g_$12|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Mu$ |m_$9_$8| |o_$16_$8| |f_$7_$8| |howMuch_$11|) |q_$0_$8| |g_$12|) perm$R))))
    (forall( (|m_$9_$9| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$9| ref) (|f_$7_$9| Field$Seq$Int$$) (|howMuch_$12| Int) (|q_$0_$9| ref) (|g_$13| Field$Int$))(!(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Seq$Int$$ |m_$9_$9| |o_$16_$9| |f_$7_$9| |howMuch_$12|) |q_$0_$9| |g_$13|) perm$R) (ite$Int$ (and (= |o_$16_$9| |q_$0_$9|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$9| |q_$0_$9| |g_$13|) perm$R) |howMuch_$12|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$9| |q_$0_$9| |g_$13|) perm$R)))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Seq$Int$$ |m_$9_$9| |o_$16_$9| |f_$7_$9| |howMuch_$12|) |q_$0_$9| |g_$13|) perm$R))))
    (forall( (|m| Mu) (|n_$0| Mu))(!(not (and (MuBelow |m| |n_$0|) (MuBelow |n_$0| |m|)))  :pattern ( (MuBelow |m| |n_$0|) (MuBelow |n_$0| |m|))))
    (forall( (|min_$0| Int) (|max_$0| Int) (|j_$4| Int))(!(=> (and (<= 0 |j_$4|) (< |j_$4| (- |max_$0| |min_$0|))) (= (Seq@Index$Int$ (Seq@Range |min_$0| |max_$0|) |j_$4|) (+ |min_$0| |j_$4|)))  :pattern ( (Seq@Index$Int$ (Seq@Range |min_$0| |max_$0|) |j_$4|))))
    (forall( (|min| Int) (|max| Int))(!(and (=> (< |min| |max|) (= (Seq@Length$Int$ (Seq@Range |min| |max|)) (- |max| |min|))) (=> (<= |max| |min|) (= (Seq@Length$Int$ (Seq@Range |min| |max|)) 0)))  :pattern ( (Seq@Length$Int$ (Seq@Range |min| |max|)))))
    (forall( (|n| Int))(!(= (Fractions |n|) (* |n| Permission$denominator))  :pattern ( (Fractions |n|))))
    (forall( (|o_$22| ref))(= (MapRead$$@Map@@ref@To@Int@@$ ZeroCredits |o_$22|) 0))
    (forall( (|o_$25| ref) (|f_$17| Field$Bool$) (|pc_$0| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ ZeroMask |o_$25| |f_$17|) |pc_$0|) 0))
    (forall( (|o_$26| ref) (|f_$18| Field$Int$) (|pc_$1| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask |o_$26| |f_$18|) |pc_$1|) 0))
    (forall( (|o_$27| ref) (|f_$19| Field$ref$) (|pc_$2| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask |o_$27| |f_$19|) |pc_$2|) 0))
    (forall( (|o_$28| ref) (|f_$20| Field$Mu$) (|pc_$3| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ ZeroMask |o_$28| |f_$20|) |pc_$3|) 0))
    (forall( (|o_$29| ref) (|f_$21| Field$Seq$Int$$) (|pc_$4| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ ZeroMask |o_$29| |f_$21|) |pc_$4|) 0))
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
    (forall( (|s_$3_$0| Seq$Int$) (|x_$0_$0| Int))(!(= (Seq@Contains$Int$ |s_$3_$0| |x_$0_$0|) (exists( (|i_$1_$1| Int))(!(and (and (<= 0 |i_$1_$1|) (< |i_$1_$1| (Seq@Length$Int$ |s_$3_$0|))) (= (Seq@Index$Int$ |s_$3_$0| |i_$1_$1|) |x_$0_$0|))  :pattern ( (Seq@Index$Int$ |s_$3_$0| |i_$1_$1|)))))  :pattern ( (Seq@Contains$Int$ |s_$3_$0| |x_$0_$0|))))
    (forall( (|s_$3_$1| Seq$ref$) (|x_$0_$1| ref))(!(= (Seq@Contains$ref$ |s_$3_$1| |x_$0_$1|) (exists( (|i_$1_$3| Int))(!(and (and (<= 0 |i_$1_$3|) (< |i_$1_$3| (Seq@Length$ref$ |s_$3_$1|))) (= (Seq@Index$ref$ |s_$3_$1| |i_$1_$3|) |x_$0_$1|))  :pattern ( (Seq@Index$ref$ |s_$3_$1| |i_$1_$3|)))))  :pattern ( (Seq@Contains$ref$ |s_$3_$1| |x_$0_$1|))))
    (forall( (|s_$4_$0| Seq$Int$) (|i_$2_$0| Int) (|v_$1_$0| Int) (|len_$1_$0| Int) (|x_$3_$0| Int))(!(= (Seq@Contains$Int$ (Seq@Build$Int$ |s_$4_$0| |i_$2_$0| |v_$1_$0| |len_$1_$0|) |x_$3_$0|) (or (and (and (<= 0 |i_$2_$0|) (< |i_$2_$0| |len_$1_$0|)) (= |x_$3_$0| |v_$1_$0|)) (exists( (|j_$6| Int))(!(and (and (and (and (<= 0 |j_$6|) (< |j_$6| (Seq@Length$Int$ |s_$4_$0|))) (< |j_$6| |len_$1_$0|)) (not (= |j_$6| |i_$2_$0|))) (= (Seq@Index$Int$ |s_$4_$0| |j_$6|) |x_$3_$0|))  :pattern ( (Seq@Index$Int$ |s_$4_$0| |j_$6|))))))  :pattern ( (Seq@Contains$Int$ (Seq@Build$Int$ |s_$4_$0| |i_$2_$0| |v_$1_$0| |len_$1_$0|) |x_$3_$0|))))
    (forall( (|s_$4_$1| Seq$ref$) (|i_$2_$1| Int) (|v_$1_$1| ref) (|len_$1_$1| Int) (|x_$3_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Build$ref$ |s_$4_$1| |i_$2_$1| |v_$1_$1| |len_$1_$1|) |x_$3_$1|) (or (and (and (<= 0 |i_$2_$1|) (< |i_$2_$1| |len_$1_$1|)) (= |x_$3_$1| |v_$1_$1|)) (exists( (|j_$8| Int))(!(and (and (and (and (<= 0 |j_$8|) (< |j_$8| (Seq@Length$ref$ |s_$4_$1|))) (< |j_$8| |len_$1_$1|)) (not (= |j_$8| |i_$2_$1|))) (= (Seq@Index$ref$ |s_$4_$1| |j_$8|) |x_$3_$1|))  :pattern ( (Seq@Index$ref$ |s_$4_$1| |j_$8|))))))  :pattern ( (Seq@Contains$ref$ (Seq@Build$ref$ |s_$4_$1| |i_$2_$1| |v_$1_$1| |len_$1_$1|) |x_$3_$1|))))
    (forall( (|s_$5_$0| Seq$Int$) (|n_$5_$0| Int) (|x_$4_$0| Int))(!(= (Seq@Contains$Int$ (Seq@Take$Int$ |s_$5_$0| |n_$5_$0|) |x_$4_$0|) (exists( (|i_$3_$1| Int))(!(and (and (and (<= 0 |i_$3_$1|) (< |i_$3_$1| |n_$5_$0|)) (< |i_$3_$1| (Seq@Length$Int$ |s_$5_$0|))) (= (Seq@Index$Int$ |s_$5_$0| |i_$3_$1|) |x_$4_$0|))  :pattern ( (Seq@Index$Int$ |s_$5_$0| |i_$3_$1|)))))  :pattern ( (Seq@Contains$Int$ (Seq@Take$Int$ |s_$5_$0| |n_$5_$0|) |x_$4_$0|))))
    (forall( (|s_$5_$1| Seq$ref$) (|n_$5_$1| Int) (|x_$4_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Take$ref$ |s_$5_$1| |n_$5_$1|) |x_$4_$1|) (exists( (|i_$3_$3| Int))(!(and (and (and (<= 0 |i_$3_$3|) (< |i_$3_$3| |n_$5_$1|)) (< |i_$3_$3| (Seq@Length$ref$ |s_$5_$1|))) (= (Seq@Index$ref$ |s_$5_$1| |i_$3_$3|) |x_$4_$1|))  :pattern ( (Seq@Index$ref$ |s_$5_$1| |i_$3_$3|)))))  :pattern ( (Seq@Contains$ref$ (Seq@Take$ref$ |s_$5_$1| |n_$5_$1|) |x_$4_$1|))))
    (forall( (|s_$6_$0| Seq$Int$) (|n_$6_$0| Int) (|x_$5_$0| Int))(!(= (Seq@Contains$Int$ (Seq@Drop$Int$ |s_$6_$0| |n_$6_$0|) |x_$5_$0|) (exists( (|i_$4_$1| Int))(!(and (and (and (<= 0 |n_$6_$0|) (<= |n_$6_$0| |i_$4_$1|)) (< |i_$4_$1| (Seq@Length$Int$ |s_$6_$0|))) (= (Seq@Index$Int$ |s_$6_$0| |i_$4_$1|) |x_$5_$0|))  :pattern ( (Seq@Index$Int$ |s_$6_$0| |i_$4_$1|)))))  :pattern ( (Seq@Contains$Int$ (Seq@Drop$Int$ |s_$6_$0| |n_$6_$0|) |x_$5_$0|))))
    (forall( (|s_$6_$1| Seq$ref$) (|n_$6_$1| Int) (|x_$5_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Drop$ref$ |s_$6_$1| |n_$6_$1|) |x_$5_$1|) (exists( (|i_$4_$3| Int))(!(and (and (and (<= 0 |n_$6_$1|) (<= |n_$6_$1| |i_$4_$3|)) (< |i_$4_$3| (Seq@Length$ref$ |s_$6_$1|))) (= (Seq@Index$ref$ |s_$6_$1| |i_$4_$3|) |x_$5_$1|))  :pattern ( (Seq@Index$ref$ |s_$6_$1| |i_$4_$3|)))))  :pattern ( (Seq@Contains$ref$ (Seq@Drop$ref$ |s_$6_$1| |n_$6_$1|) |x_$5_$1|))))
    (forall( (|s_$7_$0| Seq$Int$) (|n_$8_$0| Int))(!(=> (<= 0 |n_$8_$0|) (and (=> (<= |n_$8_$0| (Seq@Length$Int$ |s_$7_$0|)) (= (Seq@Length$Int$ (Seq@Take$Int$ |s_$7_$0| |n_$8_$0|)) |n_$8_$0|)) (=> (< (Seq@Length$Int$ |s_$7_$0|) |n_$8_$0|) (= (Seq@Length$Int$ (Seq@Take$Int$ |s_$7_$0| |n_$8_$0|)) (Seq@Length$Int$ |s_$7_$0|)))))  :pattern ( (Seq@Length$Int$ (Seq@Take$Int$ |s_$7_$0| |n_$8_$0|)))))
    (forall( (|s_$7_$1| Seq$ref$) (|n_$8_$1| Int))(!(=> (<= 0 |n_$8_$1|) (and (=> (<= |n_$8_$1| (Seq@Length$ref$ |s_$7_$1|)) (= (Seq@Length$ref$ (Seq@Take$ref$ |s_$7_$1| |n_$8_$1|)) |n_$8_$1|)) (=> (< (Seq@Length$ref$ |s_$7_$1|) |n_$8_$1|) (= (Seq@Length$ref$ (Seq@Take$ref$ |s_$7_$1| |n_$8_$1|)) (Seq@Length$ref$ |s_$7_$1|)))))  :pattern ( (Seq@Length$ref$ (Seq@Take$ref$ |s_$7_$1| |n_$8_$1|)))))
    (forall( (|s_$8_$0| Seq$Int$) (|n_$9_$0| Int) (|j_$2_$0| Int))(!(=> (and (and (<= 0 |j_$2_$0|) (< |j_$2_$0| |n_$9_$0|)) (< |j_$2_$0| (Seq@Length$Int$ |s_$8_$0|))) (= (Seq@Index$Int$ (Seq@Take$Int$ |s_$8_$0| |n_$9_$0|) |j_$2_$0|) (Seq@Index$Int$ |s_$8_$0| |j_$2_$0|)))  :weight  25 :pattern ( (Seq@Index$Int$ (Seq@Take$Int$ |s_$8_$0| |n_$9_$0|) |j_$2_$0|))))
    (forall( (|s_$8_$1| Seq$ref$) (|n_$9_$1| Int) (|j_$2_$1| Int))(!(=> (and (and (<= 0 |j_$2_$1|) (< |j_$2_$1| |n_$9_$1|)) (< |j_$2_$1| (Seq@Length$ref$ |s_$8_$1|))) (= (Seq@Index$ref$ (Seq@Take$ref$ |s_$8_$1| |n_$9_$1|) |j_$2_$1|) (Seq@Index$ref$ |s_$8_$1| |j_$2_$1|)))  :weight  25 :pattern ( (Seq@Index$ref$ (Seq@Take$ref$ |s_$8_$1| |n_$9_$1|) |j_$2_$1|))))
    (forall( (|s_$9_$0| Seq$Int$) (|n_$10_$0| Int))(!(=> (<= 0 |n_$10_$0|) (and (=> (<= |n_$10_$0| (Seq@Length$Int$ |s_$9_$0|)) (= (Seq@Length$Int$ (Seq@Drop$Int$ |s_$9_$0| |n_$10_$0|)) (- (Seq@Length$Int$ |s_$9_$0|) |n_$10_$0|))) (=> (< (Seq@Length$Int$ |s_$9_$0|) |n_$10_$0|) (= (Seq@Length$Int$ (Seq@Drop$Int$ |s_$9_$0| |n_$10_$0|)) 0))))  :pattern ( (Seq@Length$Int$ (Seq@Drop$Int$ |s_$9_$0| |n_$10_$0|)))))
    (forall( (|s_$9_$1| Seq$ref$) (|n_$10_$1| Int))(!(=> (<= 0 |n_$10_$1|) (and (=> (<= |n_$10_$1| (Seq@Length$ref$ |s_$9_$1|)) (= (Seq@Length$ref$ (Seq@Drop$ref$ |s_$9_$1| |n_$10_$1|)) (- (Seq@Length$ref$ |s_$9_$1|) |n_$10_$1|))) (=> (< (Seq@Length$ref$ |s_$9_$1|) |n_$10_$1|) (= (Seq@Length$ref$ (Seq@Drop$ref$ |s_$9_$1| |n_$10_$1|)) 0))))  :pattern ( (Seq@Length$ref$ (Seq@Drop$ref$ |s_$9_$1| |n_$10_$1|)))))
    (forall( (|s0_$0_$0| Seq$Int$) (|s1_$0_$0| Seq$Int$) (|n_$3_$0| Int))(!(and (=> (< |n_$3_$0| (Seq@Length$Int$ |s0_$0_$0|)) (= (Seq@Index$Int$ (Seq@Append$Int$ |s0_$0_$0| |s1_$0_$0|) |n_$3_$0|) (Seq@Index$Int$ |s0_$0_$0| |n_$3_$0|))) (=> (<= (Seq@Length$Int$ |s0_$0_$0|) |n_$3_$0|) (= (Seq@Index$Int$ (Seq@Append$Int$ |s0_$0_$0| |s1_$0_$0|) |n_$3_$0|) (Seq@Index$Int$ |s1_$0_$0| (- |n_$3_$0| (Seq@Length$Int$ |s0_$0_$0|))))))  :pattern ( (Seq@Index$Int$ (Seq@Append$Int$ |s0_$0_$0| |s1_$0_$0|) |n_$3_$0|))))
    (forall( (|s0_$0_$1| Seq$ref$) (|s1_$0_$1| Seq$ref$) (|n_$3_$1| Int))(!(and (=> (< |n_$3_$1| (Seq@Length$ref$ |s0_$0_$1|)) (= (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$1| |s1_$0_$1|) |n_$3_$1|) (Seq@Index$ref$ |s0_$0_$1| |n_$3_$1|))) (=> (<= (Seq@Length$ref$ |s0_$0_$1|) |n_$3_$1|) (= (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$1| |s1_$0_$1|) |n_$3_$1|) (Seq@Index$ref$ |s1_$0_$1| (- |n_$3_$1| (Seq@Length$ref$ |s0_$0_$1|))))))  :pattern ( (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$1| |s1_$0_$1|) |n_$3_$1|))))
    (forall( (|s0_$1_$0| Seq$Int$) (|s1_$1_$0| Seq$Int$) (|x_$2_$0| Int))(!(= (Seq@Contains$Int$ (Seq@Append$Int$ |s0_$1_$0| |s1_$1_$0|) |x_$2_$0|) (or (Seq@Contains$Int$ |s0_$1_$0| |x_$2_$0|) (Seq@Contains$Int$ |s1_$1_$0| |x_$2_$0|)))  :pattern ( (Seq@Contains$Int$ (Seq@Append$Int$ |s0_$1_$0| |s1_$1_$0|) |x_$2_$0|))))
    (forall( (|s0_$1_$1| Seq$ref$) (|s1_$1_$1| Seq$ref$) (|x_$2_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Append$ref$ |s0_$1_$1| |s1_$1_$1|) |x_$2_$1|) (or (Seq@Contains$ref$ |s0_$1_$1| |x_$2_$1|) (Seq@Contains$ref$ |s1_$1_$1| |x_$2_$1|)))  :pattern ( (Seq@Contains$ref$ (Seq@Append$ref$ |s0_$1_$1| |s1_$1_$1|) |x_$2_$1|))))
    (forall( (|s0_$2_$0| Seq$Int$) (|s1_$2_$0| Seq$Int$))(!(= (Seq@Equal$Int$ |s0_$2_$0| |s1_$2_$0|) (and (= (Seq@Length$Int$ |s0_$2_$0|) (Seq@Length$Int$ |s1_$2_$0|)) (forall( (|j_$0_$1| Int))(!(=> (and (<= 0 |j_$0_$1|) (< |j_$0_$1| (Seq@Length$Int$ |s0_$2_$0|))) (= (Seq@Index$Int$ |s0_$2_$0| |j_$0_$1|) (Seq@Index$Int$ |s1_$2_$0| |j_$0_$1|)))  :pattern ( (Seq@Index$Int$ |s0_$2_$0| |j_$0_$1|)) :pattern ( (Seq@Index$Int$ |s1_$2_$0| |j_$0_$1|))))))  :pattern ( (Seq@Equal$Int$ |s0_$2_$0| |s1_$2_$0|))))
    (forall( (|s0_$2_$1| Seq$ref$) (|s1_$2_$1| Seq$ref$))(!(= (Seq@Equal$ref$ |s0_$2_$1| |s1_$2_$1|) (and (= (Seq@Length$ref$ |s0_$2_$1|) (Seq@Length$ref$ |s1_$2_$1|)) (forall( (|j_$0_$3| Int))(!(=> (and (<= 0 |j_$0_$3|) (< |j_$0_$3| (Seq@Length$ref$ |s0_$2_$1|))) (= (Seq@Index$ref$ |s0_$2_$1| |j_$0_$3|) (Seq@Index$ref$ |s1_$2_$1| |j_$0_$3|)))  :pattern ( (Seq@Index$ref$ |s0_$2_$1| |j_$0_$3|)) :pattern ( (Seq@Index$ref$ |s1_$2_$1| |j_$0_$3|))))))  :pattern ( (Seq@Equal$ref$ |s0_$2_$1| |s1_$2_$1|))))
    (forall( (|s0_$4| Seq$Int$) (|s1_$4| Seq$Int$))(!(= (Seq@Length$Int$ (Seq@Append$Int$ |s0_$4| |s1_$4|)) (+ (Seq@Length$Int$ |s0_$4|) (Seq@Length$Int$ |s1_$4|)))  :pattern ( (Seq@Length$Int$ (Seq@Append$Int$ |s0_$4| |s1_$4|)))))
    (forall( (|s0_$5| Seq$ref$) (|s1_$5| Seq$ref$))(!(= (Seq@Length$ref$ (Seq@Append$ref$ |s0_$5| |s1_$5|)) (+ (Seq@Length$ref$ |s0_$5|) (Seq@Length$ref$ |s1_$5|)))  :pattern ( (Seq@Length$ref$ (Seq@Append$ref$ |s0_$5| |s1_$5|)))))
    (forall( (|t_$0_$0| Int))(!(= (Seq@Index$Int$ (Seq@Singleton$Int$ |t_$0_$0|) 0) |t_$0_$0|)  :pattern ( (Seq@Index$Int$ (Seq@Singleton$Int$ |t_$0_$0|) 0))))
    (forall( (|t_$0_$1| ref))(!(= (Seq@Index$ref$ (Seq@Singleton$ref$ |t_$0_$1|) 0) |t_$0_$1|)  :pattern ( (Seq@Index$ref$ (Seq@Singleton$ref$ |t_$0_$1|) 0))))
    (forall( (|t_$2| Int))(!(= (Seq@Length$Int$ (Seq@Singleton$Int$ |t_$2|)) 1)  :pattern ( (Seq@Length$Int$ (Seq@Singleton$Int$ |t_$2|)))))
    (forall( (|t_$3| ref))(!(= (Seq@Length$ref$ (Seq@Singleton$ref$ |t_$3|)) 1)  :pattern ( (Seq@Length$ref$ (Seq@Singleton$ref$ |t_$3|)))))
    (forall( (|x_$1| ref))(!(not (Seq@Contains$ref$ Seq@Empty$ref$ |x_$1|))  :pattern ( (Seq@Contains$ref$ Seq@Empty$ref$ |x_$1|))))
    (forall( (|x_$6_$0| Int) (|y_$0_$0| Int))(!(= (Seq@Contains$Int$ (Seq@Singleton$Int$ |x_$6_$0|) |y_$0_$0|) (= |x_$6_$0| |y_$0_$0|))  :pattern ( (Seq@Contains$Int$ (Seq@Singleton$Int$ |x_$6_$0|) |y_$0_$0|))))
    (forall( (|x_$6_$1| ref) (|y_$0_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Singleton$ref$ |x_$6_$1|) |y_$0_$1|) (= |x_$6_$1| |y_$0_$1|))  :pattern ( (Seq@Contains$ref$ (Seq@Singleton$ref$ |x_$6_$1|) |y_$0_$1|))))
    (forall( (|x| Int) (|y| Int))(=> (and (<= 0 |x|) (<= |x| |y|)) (<= (Fractions |x|) (Fractions |y|))))
    (IsGoodMask ZeroMask)
    (IsGoodState emptyPartialHeap)
    (NonPredicateField$Bool$ rdheld)
    (NonPredicateField$Int$ AVLTreeNode.balanceFactor)
    (NonPredicateField$Int$ AVLTreeNode.height)
    (NonPredicateField$Int$ AVLTreeNode.key)
    (NonPredicateField$Int$ forkK)
    (NonPredicateField$Int$ held)
    (NonPredicateField$Int$ joinable)
    (NonPredicateField$Mu$ mu)
    (NonPredicateField$ref$ AVLTree.root)
    (NonPredicateField$ref$ AVLTreeNode.left)
    (NonPredicateField$ref$ AVLTreeNode.right)
    (NonPredicateField$Seq$Int$$ AVLTree.keys)
    (NonPredicateField$Seq$Int$$ AVLTreeNode.keys)
    (PredicateField$Int$ AVLTree.valid)
    (PredicateField$Int$ AVLTreeNode.valid)
  )
    PreconditionGeneratedEntry
)))
(let (($root (=> (and true
  )
    $start
)))
   $root
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))

;Commands
   (check-sat)
   ;(get-unsat-core)
