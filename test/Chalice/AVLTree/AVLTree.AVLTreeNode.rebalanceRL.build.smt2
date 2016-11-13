;Analysis time until now:    25s
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
(declare-fun $@bf_14 ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Int$ ) Bool)
(declare-fun $@bf_15 ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ ) Bool)
(declare-fun $@bf_17 ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$Seq$Int$$ ) Bool)
(declare-fun $@bf_2 ( ) Bool)
(declare-fun $@bf_20 ( $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ ref Field$ref$ ) Bool)
(declare-fun $@bf_3 ( ) Bool)
(declare-fun $@bf_31 ( ) Bool)
(declare-fun $@bf_32 ( ) Bool)
(declare-fun $@bf_33 ( ) Bool)
(declare-fun $@bf_34 ( ) Bool)
(declare-fun $@bf_35 ( ) Bool)
(declare-fun $@bf_36 ( ) Bool)
(declare-fun $@bf_37 ( ) Bool)
(declare-fun $@bf_38 ( ) Bool)
(declare-fun $@bf_4 ( ) Bool)
(declare-fun $@bf_5 ( ) Bool)
(declare-fun $@bf_50 ( Seq$Int$ Seq$Int$ ) Bool)
(declare-fun $@bf_54 ( ) Bool)
(declare-fun $@bf_55 ( ) Bool)
(declare-fun $@bf_56 ( ) Bool)
(declare-fun $@bf_57 ( ) Bool)
(declare-fun $@bf_58 ( ) Bool)
(declare-fun $@bf_59 ( ) Bool)
(declare-fun $@bf_6 ( ) Bool)
(declare-fun $@bf_60 ( ) Bool)
(declare-fun $@bf_61 ( ) Bool)
(declare-fun $@bf_62 ( ) Bool)
(declare-fun $@bf_63 ( ) Bool)
(declare-fun $@bf_64 ( ) Bool)
(declare-fun $@bf_65 ( ) Bool)
(declare-fun $@bf_66 ( ) Bool)
(declare-fun $@bf_67 ( ) Bool)
(declare-fun $@bf_68 ( ) Bool)
(declare-fun $@bf_69 ( ) Bool)
(declare-fun $@bf_70 ( ) Bool)
(declare-fun $@bf_71 ( ) Bool)
(declare-fun $@bf_72 ( ) Bool)
(declare-fun $@bf_73 ( ) Bool)
(declare-fun $@bf_74 ( ) Bool)
(declare-fun $@bf_75 ( ) Bool)
(declare-fun $@bf_76 ( ) Bool)
(declare-fun $@bf_77 ( ) Bool)
(declare-fun $@bf_78 ( ) Bool)
(declare-fun $@bf_79 ( ) Bool)
(declare-fun $@bf_80 ( ) Bool)
(declare-fun $@bf_81 ( ) Bool)
(declare-fun $@bf_82 ( ) Bool)
(declare-fun $@bf_83 ( ) Bool)
(declare-fun $@bf_84 ( ) Bool)
(declare-fun $@bf_85 ( ) Bool)
(declare-fun $@bf_86 ( ) Bool)
(declare-fun $@bf_87 ( ) Bool)
(declare-fun $@bf_88 ( ) Bool)
(declare-fun $@bf_89 ( ) Bool)
(declare-fun $@bf_90 ( ) Bool)
(declare-fun $@bf_91 ( ) Bool)
(declare-fun $@bf_92 ( ) Bool)
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
(declare-fun $@sk_48 ( ) ref)
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
(declare-fun exhaleHeap@_2214@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_2242@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_2270@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_2277@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_2331@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_2338@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_2393@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleHeap@_2443@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)
(declare-fun exhaleMask@_2278@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2278@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2278@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2278@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2278@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2278@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2278@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2278@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2278@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2278@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2278@18 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2278@19 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2278@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2278@20 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2278@21 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2278@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2278@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2278@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2278@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2278@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2278@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2278@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2339@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2339@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2339@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2339@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2339@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2339@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2339@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2339@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2339@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2339@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2339@18 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2339@19 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2339@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2339@20 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2339@21 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2339@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2339@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2339@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2339@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2339@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2339@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2339@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2394@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2394@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2394@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2394@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2394@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2394@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2394@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2394@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2394@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2394@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2394@18 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2394@19 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2394@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2394@20 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2394@21 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2394@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2394@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2394@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2394@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2394@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2394@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2394@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2444@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2444@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2444@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun exhaleMask@_2444@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
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
(declare-fun k@100@662 ( ) Int)
(declare-fun k@101@678 ( ) Int)
(declare-fun k@98@644 ( ) Int)
(declare-fun k@99@653 ( ) Int)
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
(declare-fun Mask@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun Mask@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun methodCallK@_2276 ( ) Int)
(declare-fun methodCallK@_2337 ( ) Int)
(declare-fun methodCallK@_2392 ( ) Int)
(declare-fun methodK@_2144 ( ) Int)
(declare-fun module@default ( ) ModuleName)
(declare-fun monitorK ( ) Int)
(declare-fun mu ( ) Field$Mu$)
(declare-fun newVers@_2237@0 ( ) Int)
(declare-fun newVers@_2265@0 ( ) Int)
(declare-fun null ( ) ref)
(declare-fun oldVers@_2236@0 ( ) Int)
(declare-fun oldVers@_2264@0 ( ) Int)
(declare-fun perm$N ( ) PermissionComponent)
(declare-fun perm$R ( ) PermissionComponent)
(declare-fun Permission$denominator ( ) Int)
(declare-fun Permission$Full ( ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun Permission$FullFraction ( ) Int)
(declare-fun Permission$Zero ( ) $@Map@@PermissionComponent@To@Int@@)
(declare-fun predicateK ( ) Int)
(declare-fun predRec@_2191@0 ( ) ref)
(declare-fun predVer@_2192@0 ( ) Int)
(declare-fun r@66 ( ) ref)
(declare-fun r@66@0 ( ) ref)
(declare-fun rdheld ( ) Field$Bool$)
(declare-fun SecMask ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@0 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@1 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@10 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@100 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@101 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@102 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@103 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@104 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@105 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@106 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@107 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@108 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@109 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@11 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@110 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@111 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@112 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@113 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@114 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@115 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@116 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@117 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@118 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@119 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@12 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@120 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@121 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@122 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@123 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@124 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@125 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@126 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@127 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@128 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@129 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@13 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@130 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@131 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@132 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@133 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@134 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@135 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@136 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@137 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@138 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@139 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@14 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@140 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@141 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@142 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@143 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@144 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@145 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@146 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@147 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@148 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@149 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@15 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@150 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@151 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@152 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@153 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@154 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@155 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@156 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@157 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@158 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@159 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@16 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@160 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@161 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@162 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@163 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@164 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@165 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@166 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@167 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@168 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@169 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@17 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@170 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@171 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@172 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@173 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@174 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@175 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@176 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@177 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@178 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@179 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@18 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@180 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@181 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@182 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@183 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@184 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@185 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@186 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@187 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@188 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@189 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@19 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@190 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@191 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@192 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@193 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@194 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@195 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@196 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@197 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@198 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@199 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@2 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@20 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@200 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@201 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@202 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@203 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@204 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@205 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@206 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@207 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@208 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@209 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@21 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@210 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@211 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@212 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@213 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@214 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@215 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@216 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@217 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@218 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@219 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@22 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@220 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@221 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@222 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@223 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@224 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@225 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@226 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@227 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@228 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@229 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@23 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@230 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@231 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@232 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@233 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@234 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@235 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@236 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@237 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@238 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@239 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@24 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@240 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@241 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@242 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@243 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@244 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@245 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@246 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@247 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@248 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@249 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@25 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@250 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@251 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@252 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@253 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@254 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@255 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@256 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@257 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@258 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@259 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@26 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@260 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@261 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@262 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@263 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@264 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@265 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@266 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@267 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@268 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@269 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@27 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@270 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@271 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@272 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@273 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@274 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@275 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@276 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@277 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@278 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@279 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@28 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@280 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@281 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@282 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@283 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@284 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@285 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@286 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@287 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@288 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@289 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@29 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@290 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@291 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@292 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@293 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@294 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@295 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@296 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@297 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@298 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@299 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@3 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@30 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@300 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@301 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@302 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@303 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@304 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@305 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@306 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@307 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@308 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@309 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@31 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@310 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@311 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@312 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@313 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@314 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@315 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@316 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@317 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@318 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@319 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@32 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@320 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@321 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@322 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@323 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@324 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@325 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@326 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@327 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@328 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@329 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@33 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@330 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@331 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@332 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@333 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@334 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@335 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@336 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@337 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@338 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@339 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@34 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@340 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@341 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@342 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@343 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@344 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@345 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@346 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@347 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@348 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@349 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@35 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@350 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@351 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@352 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@353 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@354 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@355 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@356 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@357 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@358 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@359 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@36 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@360 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@361 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@362 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@363 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@364 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@365 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@366 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@367 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@368 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@369 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@37 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@370 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@371 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@372 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@373 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@374 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@375 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@376 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@377 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@378 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@379 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@38 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@380 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@381 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@382 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@383 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@384 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@385 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@386 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@387 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@388 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@389 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@39 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@390 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@391 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@392 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@393 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@394 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@395 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@396 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@397 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@398 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@399 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@4 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@40 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@400 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@401 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@402 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@403 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@404 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@405 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@406 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@407 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@408 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@409 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@41 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@410 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@411 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@412 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@413 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@414 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@415 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@416 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@417 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@418 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@419 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@42 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@420 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@421 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@422 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@423 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@424 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@425 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@426 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@427 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@428 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@429 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@43 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@430 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@431 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@432 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@433 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@434 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@435 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@436 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@437 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@438 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@439 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@44 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@440 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@441 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@442 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@443 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@444 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@445 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@446 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@447 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@448 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@449 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@45 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@450 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@451 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@452 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@453 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@454 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@455 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@456 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@457 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@458 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@459 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@46 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@460 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@461 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@462 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@463 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@464 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@465 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@466 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@467 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@468 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@469 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@47 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@470 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@471 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@472 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@473 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@474 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@475 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@476 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@477 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@478 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@479 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@48 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@480 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@481 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@482 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@483 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@484 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@485 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@486 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@49 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@5 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@50 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@51 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@52 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@53 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@54 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@55 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@56 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@57 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@58 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@59 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@6 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@60 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@61 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@62 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@63 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@64 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@65 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@66 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@67 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@68 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@69 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@7 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@70 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@71 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@72 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@73 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@74 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@75 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@76 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@77 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@78 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@79 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@8 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@80 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@81 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@82 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@83 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@84 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@85 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@86 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@87 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@88 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@89 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@9 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@90 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@91 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@92 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@93 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@94 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@95 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@96 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@97 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@98 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
(declare-fun SecMask@99 ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)
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
(declare-fun this@664 ( ) ref)
(declare-fun this@664@0 ( ) ref)
(declare-fun this@680 ( ) ref)
(declare-fun this@693 ( ) ref)
(declare-fun unfoldK@_2216 ( ) Int)
(declare-fun unfoldK@_2244 ( ) Int)
(declare-fun ZeroCredits ( ) $@Map@@ref@To@Int@@)
(declare-fun ZeroMask ( ) $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)

;Predicates
(declare-fun $@AVLTreeNode.valid@trigger ( ref ) Bool)
(declare-fun $@condition ( ) Bool)
(declare-fun $@condition_$0 ( ) Bool)
(declare-fun $@condition_$10 ( ) Bool)
(declare-fun $@condition_$101 ( ) Bool)
(declare-fun $@condition_$103 ( ) Bool)
(declare-fun $@condition_$104 ( ) Bool)
(declare-fun $@condition_$105 ( ) Bool)
(declare-fun $@condition_$106 ( ) Bool)
(declare-fun $@condition_$107 ( ) Bool)
(declare-fun $@condition_$108 ( ) Bool)
(declare-fun $@condition_$109 ( ) Bool)
(declare-fun $@condition_$110 ( ) Bool)
(declare-fun $@condition_$111 ( ) Bool)
(declare-fun $@condition_$113 ( ) Bool)
(declare-fun $@condition_$114 ( ) Bool)
(declare-fun $@condition_$116 ( ) Bool)
(declare-fun $@condition_$117 ( ) Bool)
(declare-fun $@condition_$119 ( ) Bool)
(declare-fun $@condition_$12 ( ) Bool)
(declare-fun $@condition_$120 ( ) Bool)
(declare-fun $@condition_$122 ( ) Bool)
(declare-fun $@condition_$123 ( ) Bool)
(declare-fun $@condition_$125 ( ) Bool)
(declare-fun $@condition_$126 ( ) Bool)
(declare-fun $@condition_$128 ( ) Bool)
(declare-fun $@condition_$129 ( ) Bool)
(declare-fun $@condition_$131 ( ) Bool)
(declare-fun $@condition_$133 ( ) Bool)
(declare-fun $@condition_$134 ( ) Bool)
(declare-fun $@condition_$136 ( ) Bool)
(declare-fun $@condition_$138 ( ) Bool)
(declare-fun $@condition_$14 ( ) Bool)
(declare-fun $@condition_$140 ( ) Bool)
(declare-fun $@condition_$142 ( ) Bool)
(declare-fun $@condition_$144 ( ) Bool)
(declare-fun $@condition_$146 ( ) Bool)
(declare-fun $@condition_$148 ( ) Bool)
(declare-fun $@condition_$150 ( ) Bool)
(declare-fun $@condition_$152 ( ) Bool)
(declare-fun $@condition_$154 ( ) Bool)
(declare-fun $@condition_$156 ( ) Bool)
(declare-fun $@condition_$157 ( ) Bool)
(declare-fun $@condition_$158 ( ) Bool)
(declare-fun $@condition_$16 ( ) Bool)
(declare-fun $@condition_$160 ( ) Bool)
(declare-fun $@condition_$161 ( ) Bool)
(declare-fun $@condition_$162 ( ) Bool)
(declare-fun $@condition_$163 ( ) Bool)
(declare-fun $@condition_$164 ( ) Bool)
(declare-fun $@condition_$165 ( ) Bool)
(declare-fun $@condition_$167 ( ) Bool)
(declare-fun $@condition_$169 ( ) Bool)
(declare-fun $@condition_$171 ( ) Bool)
(declare-fun $@condition_$172 ( ) Bool)
(declare-fun $@condition_$173 ( ) Bool)
(declare-fun $@condition_$174 ( ) Bool)
(declare-fun $@condition_$175 ( ) Bool)
(declare-fun $@condition_$176 ( ) Bool)
(declare-fun $@condition_$177 ( ) Bool)
(declare-fun $@condition_$178 ( ) Bool)
(declare-fun $@condition_$179 ( ) Bool)
(declare-fun $@condition_$18 ( ) Bool)
(declare-fun $@condition_$181 ( ) Bool)
(declare-fun $@condition_$182 ( ) Bool)
(declare-fun $@condition_$184 ( ) Bool)
(declare-fun $@condition_$185 ( ) Bool)
(declare-fun $@condition_$187 ( ) Bool)
(declare-fun $@condition_$188 ( ) Bool)
(declare-fun $@condition_$190 ( ) Bool)
(declare-fun $@condition_$191 ( ) Bool)
(declare-fun $@condition_$193 ( ) Bool)
(declare-fun $@condition_$194 ( ) Bool)
(declare-fun $@condition_$196 ( ) Bool)
(declare-fun $@condition_$197 ( ) Bool)
(declare-fun $@condition_$199 ( ) Bool)
(declare-fun $@condition_$2 ( ) Bool)
(declare-fun $@condition_$20 ( ) Bool)
(declare-fun $@condition_$202 ( ) Bool)
(declare-fun $@condition_$204 ( ) Bool)
(declare-fun $@condition_$206 ( ) Bool)
(declare-fun $@condition_$208 ( ) Bool)
(declare-fun $@condition_$209 ( ) Bool)
(declare-fun $@condition_$210 ( ) Bool)
(declare-fun $@condition_$211 ( ) Bool)
(declare-fun $@condition_$212 ( ) Bool)
(declare-fun $@condition_$214 ( ) Bool)
(declare-fun $@condition_$216 ( ) Bool)
(declare-fun $@condition_$218 ( ) Bool)
(declare-fun $@condition_$219 ( ) Bool)
(declare-fun $@condition_$22 ( ) Bool)
(declare-fun $@condition_$220 ( ) Bool)
(declare-fun $@condition_$221 ( ) Bool)
(declare-fun $@condition_$222 ( ) Bool)
(declare-fun $@condition_$223 ( ) Bool)
(declare-fun $@condition_$224 ( ) Bool)
(declare-fun $@condition_$225 ( ) Bool)
(declare-fun $@condition_$226 ( ) Bool)
(declare-fun $@condition_$228 ( ) Bool)
(declare-fun $@condition_$229 ( ) Bool)
(declare-fun $@condition_$231 ( ) Bool)
(declare-fun $@condition_$232 ( ) Bool)
(declare-fun $@condition_$234 ( ) Bool)
(declare-fun $@condition_$235 ( ) Bool)
(declare-fun $@condition_$237 ( ) Bool)
(declare-fun $@condition_$238 ( ) Bool)
(declare-fun $@condition_$24 ( ) Bool)
(declare-fun $@condition_$240 ( ) Bool)
(declare-fun $@condition_$241 ( ) Bool)
(declare-fun $@condition_$243 ( ) Bool)
(declare-fun $@condition_$244 ( ) Bool)
(declare-fun $@condition_$246 ( ) Bool)
(declare-fun $@condition_$249 ( ) Bool)
(declare-fun $@condition_$251 ( ) Bool)
(declare-fun $@condition_$253 ( ) Bool)
(declare-fun $@condition_$254 ( ) Bool)
(declare-fun $@condition_$255 ( ) Bool)
(declare-fun $@condition_$257 ( ) Bool)
(declare-fun $@condition_$258 ( ) Bool)
(declare-fun $@condition_$259 ( ) Bool)
(declare-fun $@condition_$26 ( ) Bool)
(declare-fun $@condition_$260 ( ) Bool)
(declare-fun $@condition_$261 ( ) Bool)
(declare-fun $@condition_$262 ( ) Bool)
(declare-fun $@condition_$264 ( ) Bool)
(declare-fun $@condition_$266 ( ) Bool)
(declare-fun $@condition_$268 ( ) Bool)
(declare-fun $@condition_$269 ( ) Bool)
(declare-fun $@condition_$270 ( ) Bool)
(declare-fun $@condition_$271 ( ) Bool)
(declare-fun $@condition_$272 ( ) Bool)
(declare-fun $@condition_$273 ( ) Bool)
(declare-fun $@condition_$274 ( ) Bool)
(declare-fun $@condition_$275 ( ) Bool)
(declare-fun $@condition_$276 ( ) Bool)
(declare-fun $@condition_$278 ( ) Bool)
(declare-fun $@condition_$279 ( ) Bool)
(declare-fun $@condition_$28 ( ) Bool)
(declare-fun $@condition_$281 ( ) Bool)
(declare-fun $@condition_$282 ( ) Bool)
(declare-fun $@condition_$284 ( ) Bool)
(declare-fun $@condition_$285 ( ) Bool)
(declare-fun $@condition_$287 ( ) Bool)
(declare-fun $@condition_$288 ( ) Bool)
(declare-fun $@condition_$290 ( ) Bool)
(declare-fun $@condition_$291 ( ) Bool)
(declare-fun $@condition_$293 ( ) Bool)
(declare-fun $@condition_$294 ( ) Bool)
(declare-fun $@condition_$296 ( ) Bool)
(declare-fun $@condition_$299 ( ) Bool)
(declare-fun $@condition_$30 ( ) Bool)
(declare-fun $@condition_$301 ( ) Bool)
(declare-fun $@condition_$303 ( ) Bool)
(declare-fun $@condition_$305 ( ) Bool)
(declare-fun $@condition_$306 ( ) Bool)
(declare-fun $@condition_$307 ( ) Bool)
(declare-fun $@condition_$308 ( ) Bool)
(declare-fun $@condition_$309 ( ) Bool)
(declare-fun $@condition_$311 ( ) Bool)
(declare-fun $@condition_$313 ( ) Bool)
(declare-fun $@condition_$315 ( ) Bool)
(declare-fun $@condition_$316 ( ) Bool)
(declare-fun $@condition_$317 ( ) Bool)
(declare-fun $@condition_$318 ( ) Bool)
(declare-fun $@condition_$319 ( ) Bool)
(declare-fun $@condition_$32 ( ) Bool)
(declare-fun $@condition_$320 ( ) Bool)
(declare-fun $@condition_$321 ( ) Bool)
(declare-fun $@condition_$322 ( ) Bool)
(declare-fun $@condition_$323 ( ) Bool)
(declare-fun $@condition_$325 ( ) Bool)
(declare-fun $@condition_$326 ( ) Bool)
(declare-fun $@condition_$328 ( ) Bool)
(declare-fun $@condition_$329 ( ) Bool)
(declare-fun $@condition_$33 ( ) Bool)
(declare-fun $@condition_$331 ( ) Bool)
(declare-fun $@condition_$332 ( ) Bool)
(declare-fun $@condition_$334 ( ) Bool)
(declare-fun $@condition_$335 ( ) Bool)
(declare-fun $@condition_$337 ( ) Bool)
(declare-fun $@condition_$338 ( ) Bool)
(declare-fun $@condition_$34 ( ) Bool)
(declare-fun $@condition_$340 ( ) Bool)
(declare-fun $@condition_$341 ( ) Bool)
(declare-fun $@condition_$343 ( ) Bool)
(declare-fun $@condition_$346 ( ) Bool)
(declare-fun $@condition_$348 ( ) Bool)
(declare-fun $@condition_$35 ( ) Bool)
(declare-fun $@condition_$350 ( ) Bool)
(declare-fun $@condition_$351 ( ) Bool)
(declare-fun $@condition_$353 ( ) Bool)
(declare-fun $@condition_$354 ( ) Bool)
(declare-fun $@condition_$355 ( ) Bool)
(declare-fun $@condition_$356 ( ) Bool)
(declare-fun $@condition_$357 ( ) Bool)
(declare-fun $@condition_$358 ( ) Bool)
(declare-fun $@condition_$360 ( ) Bool)
(declare-fun $@condition_$362 ( ) Bool)
(declare-fun $@condition_$364 ( ) Bool)
(declare-fun $@condition_$365 ( ) Bool)
(declare-fun $@condition_$366 ( ) Bool)
(declare-fun $@condition_$367 ( ) Bool)
(declare-fun $@condition_$368 ( ) Bool)
(declare-fun $@condition_$369 ( ) Bool)
(declare-fun $@condition_$37 ( ) Bool)
(declare-fun $@condition_$370 ( ) Bool)
(declare-fun $@condition_$371 ( ) Bool)
(declare-fun $@condition_$372 ( ) Bool)
(declare-fun $@condition_$374 ( ) Bool)
(declare-fun $@condition_$375 ( ) Bool)
(declare-fun $@condition_$377 ( ) Bool)
(declare-fun $@condition_$378 ( ) Bool)
(declare-fun $@condition_$380 ( ) Bool)
(declare-fun $@condition_$381 ( ) Bool)
(declare-fun $@condition_$383 ( ) Bool)
(declare-fun $@condition_$384 ( ) Bool)
(declare-fun $@condition_$386 ( ) Bool)
(declare-fun $@condition_$387 ( ) Bool)
(declare-fun $@condition_$389 ( ) Bool)
(declare-fun $@condition_$39 ( ) Bool)
(declare-fun $@condition_$390 ( ) Bool)
(declare-fun $@condition_$392 ( ) Bool)
(declare-fun $@condition_$395 ( ) Bool)
(declare-fun $@condition_$397 ( ) Bool)
(declare-fun $@condition_$399 ( ) Bool)
(declare-fun $@condition_$4 ( ) Bool)
(declare-fun $@condition_$401 ( ) Bool)
(declare-fun $@condition_$402 ( ) Bool)
(declare-fun $@condition_$403 ( ) Bool)
(declare-fun $@condition_$404 ( ) Bool)
(declare-fun $@condition_$405 ( ) Bool)
(declare-fun $@condition_$407 ( ) Bool)
(declare-fun $@condition_$409 ( ) Bool)
(declare-fun $@condition_$41 ( ) Bool)
(declare-fun $@condition_$411 ( ) Bool)
(declare-fun $@condition_$412 ( ) Bool)
(declare-fun $@condition_$413 ( ) Bool)
(declare-fun $@condition_$414 ( ) Bool)
(declare-fun $@condition_$415 ( ) Bool)
(declare-fun $@condition_$416 ( ) Bool)
(declare-fun $@condition_$417 ( ) Bool)
(declare-fun $@condition_$418 ( ) Bool)
(declare-fun $@condition_$419 ( ) Bool)
(declare-fun $@condition_$42 ( ) Bool)
(declare-fun $@condition_$421 ( ) Bool)
(declare-fun $@condition_$422 ( ) Bool)
(declare-fun $@condition_$424 ( ) Bool)
(declare-fun $@condition_$425 ( ) Bool)
(declare-fun $@condition_$427 ( ) Bool)
(declare-fun $@condition_$428 ( ) Bool)
(declare-fun $@condition_$43 ( ) Bool)
(declare-fun $@condition_$430 ( ) Bool)
(declare-fun $@condition_$431 ( ) Bool)
(declare-fun $@condition_$433 ( ) Bool)
(declare-fun $@condition_$434 ( ) Bool)
(declare-fun $@condition_$436 ( ) Bool)
(declare-fun $@condition_$437 ( ) Bool)
(declare-fun $@condition_$439 ( ) Bool)
(declare-fun $@condition_$44 ( ) Bool)
(declare-fun $@condition_$442 ( ) Bool)
(declare-fun $@condition_$444 ( ) Bool)
(declare-fun $@condition_$446 ( ) Bool)
(declare-fun $@condition_$447 ( ) Bool)
(declare-fun $@condition_$448 ( ) Bool)
(declare-fun $@condition_$449 ( ) Bool)
(declare-fun $@condition_$45 ( ) Bool)
(declare-fun $@condition_$451 ( ) Bool)
(declare-fun $@condition_$453 ( ) Bool)
(declare-fun $@condition_$455 ( ) Bool)
(declare-fun $@condition_$456 ( ) Bool)
(declare-fun $@condition_$457 ( ) Bool)
(declare-fun $@condition_$458 ( ) Bool)
(declare-fun $@condition_$459 ( ) Bool)
(declare-fun $@condition_$46 ( ) Bool)
(declare-fun $@condition_$460 ( ) Bool)
(declare-fun $@condition_$461 ( ) Bool)
(declare-fun $@condition_$462 ( ) Bool)
(declare-fun $@condition_$463 ( ) Bool)
(declare-fun $@condition_$465 ( ) Bool)
(declare-fun $@condition_$466 ( ) Bool)
(declare-fun $@condition_$468 ( ) Bool)
(declare-fun $@condition_$469 ( ) Bool)
(declare-fun $@condition_$47 ( ) Bool)
(declare-fun $@condition_$471 ( ) Bool)
(declare-fun $@condition_$472 ( ) Bool)
(declare-fun $@condition_$474 ( ) Bool)
(declare-fun $@condition_$475 ( ) Bool)
(declare-fun $@condition_$477 ( ) Bool)
(declare-fun $@condition_$478 ( ) Bool)
(declare-fun $@condition_$48 ( ) Bool)
(declare-fun $@condition_$480 ( ) Bool)
(declare-fun $@condition_$481 ( ) Bool)
(declare-fun $@condition_$483 ( ) Bool)
(declare-fun $@condition_$49 ( ) Bool)
(declare-fun $@condition_$51 ( ) Bool)
(declare-fun $@condition_$52 ( ) Bool)
(declare-fun $@condition_$54 ( ) Bool)
(declare-fun $@condition_$55 ( ) Bool)
(declare-fun $@condition_$57 ( ) Bool)
(declare-fun $@condition_$58 ( ) Bool)
(declare-fun $@condition_$6 ( ) Bool)
(declare-fun $@condition_$60 ( ) Bool)
(declare-fun $@condition_$61 ( ) Bool)
(declare-fun $@condition_$63 ( ) Bool)
(declare-fun $@condition_$64 ( ) Bool)
(declare-fun $@condition_$66 ( ) Bool)
(declare-fun $@condition_$67 ( ) Bool)
(declare-fun $@condition_$69 ( ) Bool)
(declare-fun $@condition_$71 ( ) Bool)
(declare-fun $@condition_$72 ( ) Bool)
(declare-fun $@condition_$74 ( ) Bool)
(declare-fun $@condition_$76 ( ) Bool)
(declare-fun $@condition_$78 ( ) Bool)
(declare-fun $@condition_$8 ( ) Bool)
(declare-fun $@condition_$80 ( ) Bool)
(declare-fun $@condition_$82 ( ) Bool)
(declare-fun $@condition_$84 ( ) Bool)
(declare-fun $@condition_$86 ( ) Bool)
(declare-fun $@condition_$88 ( ) Bool)
(declare-fun $@condition_$9 ( ) Bool)
(declare-fun $@condition_$90 ( ) Bool)
(declare-fun $@condition_$92 ( ) Bool)
(declare-fun $@condition_$94 ( ) Bool)
(declare-fun $@condition_$95 ( ) Bool)
(declare-fun $@condition_$96 ( ) Bool)
(declare-fun $@condition_$97 ( ) Bool)
(declare-fun $@condition_$99 ( ) Bool)
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
   (assert (! (< (* 1000 channelK) (Fractions 1)) :named ax_0))
   (assert (! (< (* 1000 methodK@_2144) (Fractions 1)) :named ax_1))
   (assert (! (< 0 (Fractions 50)) :named ax_2))
   (assert (! (< 0 channelK) :named ax_3))
   (assert (! (< 0 methodK@_2144) :named ax_4))
   (assert (! (< 0 Permission$denominator) :named ax_5))
   (assert (! (< 0 Permission$FullFraction) :named ax_6))
   (assert (! (= (= true $@bf_31) (ite$Bool$ true true true)) :named ax_7))
   (assert (! (= (= true $@bf_32) (ite$Bool$ true true false)) :named ax_8))
   (assert (! (= (= true $@bf_33) (ite$Bool$ true false true)) :named ax_9))
   (assert (! (= (= true $@bf_34) (ite$Bool$ true false false)) :named ax_10))
   (assert (! (= (= true $@bf_35) (ite$Bool$ false true true)) :named ax_11))
   (assert (! (= (= true $@bf_36) (ite$Bool$ false true false)) :named ax_12))
   (assert (! (= (= true $@bf_37) (ite$Bool$ false false true)) :named ax_13))
   (assert (! (= (= true $@bf_38) (ite$Bool$ false false false)) :named ax_14))
   (assert (! (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left)) AVLTreeNode@t) :named ax_15))
   (assert (! (= (dtype this) AVLTreeNode@t) :named ax_16))
   (assert (! (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ Permission$Full perm$N)) :named ax_17))
   (assert (! (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ Permission$Zero perm$N)) :named ax_18))
   (assert (! (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ Permission$Zero perm$R)) :named ax_19))
   (assert (! (= 0 (Seq@Length$Int$ Seq@Empty$Int$)) :named ax_20))
   (assert (! (= 0 (Seq@Length$ref$ Seq@Empty$ref$)) :named ax_21))
   (assert (! (= channelK monitorK) :named ax_22))
   (assert (! (= channelK predicateK) :named ax_23))
   (assert (! (= false $@bf_33) :named ax_24))
   (assert (! (= false $@bf_34) :named ax_25))
   (assert (! (= false $@bf_36) :named ax_26))
   (assert (! (= false $@bf_38) :named ax_27))
   (assert (! (= Mask@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask this AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask this AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask this AVLTreeNode.key) perm$R) Permission$FullFraction)))) :named ax_28))
   (assert (! (= Mask@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@0 this AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@0 this AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@0 this AVLTreeNode.height) perm$R) Permission$FullFraction)))) :named ax_29))
   (assert (! (= Mask@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@1 this AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@1 this AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@1 this AVLTreeNode.left) perm$R) Permission$FullFraction)))) :named ax_30))
   (assert (! (= Mask@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@2 this AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@2 this AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@2 this AVLTreeNode.right) perm$R) Permission$FullFraction)))) :named ax_31))
   (assert (! (= Mask@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@3 this AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@3 this AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@3 this AVLTreeNode.keys) perm$R) Permission$FullFraction)))) :named ax_32))
   (assert (! (= Mask@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@4 this AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@4 this AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@4 this AVLTreeNode.balanceFactor) perm$R) Permission$FullFraction)))) :named ax_33))
   (assert (! (= Mask@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.valid) perm$R) Permission$FullFraction)))) :named ax_34))
   (assert (! (= Mask@7 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50))))) :named ax_35))
   (assert (! (= Mask@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50))))) :named ax_36))
   (assert (! (= Mask@9 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50))))) :named ax_37))
   (assert (! (= module@default CurrentModule) :named ax_38))
   (assert (! (= Permission$FullFraction (Fractions 100)) :named ax_39))
   (assert (! (= Permission$FullFraction (MapRead$$@Map@@PermissionComponent@To@Int@@$ Permission$Full perm$R)) :named ax_40))
   (assert (! (= true $@bf_31) :named ax_41))
   (assert (! (= true $@bf_32) :named ax_42))
   (assert (! (= true $@bf_35) :named ax_43))
   (assert (! (= true $@bf_37) :named ax_44))
   (assert (! (forall ((|i_1| Field$Int$)(|i| ref)(|m_1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v| $@Map@@PermissionComponent@To@Int@@))(!(= v (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_1 i i_1 v) i i_1)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_1 i i_1 v) i i_1)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_45))
   (assert (! (forall ((|i_12| PermissionComponent)(|m_7| $@Map@@PermissionComponent@To@Int@@)(|v_6| Int))(!(= v_6 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_7 i_12 v_6) i_12)):pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_7 i_12 v_6) i_12)) :qid map_1_$@Map@@PermissionComponent@To@Int@@ :weight 0 )) :named ax_46))
   (assert (! (forall ((|i_15| Field$ref$)(|i_14| ref)(|m_9| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_8| $@Map@@PermissionComponent@To@Int@@))(!(= v_8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_9 i_14 i_15 v_8) i_14 i_15)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_9 i_14 i_15 v_8) i_14 i_15)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_47))
   (assert (! (forall ((|i_27| Field$Seq$Int$$)(|i_26| ref)(|m_15| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|v_14| $@Map@@PermissionComponent@To@Int@@))(!(= v_14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_15 i_26 i_27 v_14) i_26 i_27)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_15 i_26 i_27 v_14) i_26 i_27)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_48))
   (assert (! (forall ((|i_39| Field$Int$)(|i_38| ref)(|m_21| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_20| Int))(!(= v_20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_21 i_38 i_39 v_20) i_38 i_39)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_21 i_38 i_39 v_20) i_38 i_39)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_49))
   (assert (! (forall ((|i_51| Field$ref$)(|i_50| ref)(|m_27| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|v_26| ref))(!(= v_26 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_27 i_50 i_51 v_26) i_50 i_51)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_27 i_50 i_51 v_26) i_50 i_51)) :qid map_1_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_50))
   (assert (! (forall ((|v_1| $@Map@@PermissionComponent@To@Int@@)(|m_2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_3| Field$Int$)(|j_1| Field$Int$)(|i_2| ref)(|j| ref))(!(=> (or (not (= j_1 i_3)) (not (= j i_2))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_2 j j_1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_2 i_2 i_3 v_1) j j_1))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_2 i_2 i_3 v_1) j j_1)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_51))
   (assert (! (forall ((|v_10| $@Map@@PermissionComponent@To@Int@@)(|i_19| Field$ref$)(|i_18| ref)(|j_14| Field$Bool$)(|j_13| ref)(|m_11| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_11 j_13 j_14) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_11 i_18 i_19 v_10) j_13 j_14)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_11 i_18 i_19 v_10) j_13 j_14)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__ref :weight 0 )) :named ax_52))
   (assert (! (forall ((|v_11| $@Map@@PermissionComponent@To@Int@@)(|i_21| Field$ref$)(|i_20| ref)(|j_16| Field$Int$)(|j_15| ref)(|m_12| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_12 j_15 j_16) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_12 i_20 i_21 v_11) j_15 j_16)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_12 i_20 i_21 v_11) j_15 j_16)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Int__ref :weight 0 )) :named ax_53))
   (assert (! (forall ((|v_12| $@Map@@PermissionComponent@To@Int@@)(|i_23| Field$ref$)(|i_22| ref)(|j_18| Field$Mu$)(|j_17| ref)(|m_13| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_13 j_17 j_18) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_13 i_22 i_23 v_12) j_17 j_18)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_13 i_22 i_23 v_12) j_17 j_18)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Mu__ref :weight 0 )) :named ax_54))
   (assert (! (forall ((|v_13| $@Map@@PermissionComponent@To@Int@@)(|i_25| Field$ref$)(|i_24| ref)(|j_20| Field$Seq$Int$$)(|j_19| ref)(|m_14| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_14 j_19 j_20) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_14 i_24 i_25 v_13) j_19 j_20)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_14 i_24 i_25 v_13) j_19 j_20)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Seq$Int$__ref :weight 0 )) :named ax_55))
   (assert (! (forall ((|v_15| $@Map@@PermissionComponent@To@Int@@)(|m_16| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_29| Field$Seq$Int$$)(|j_22| Field$Seq$Int$$)(|i_28| ref)(|j_21| ref))(!(=> (or (not (= j_22 i_29)) (not (= j_21 i_28))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_16 j_21 j_22) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_16 i_28 i_29 v_15) j_21 j_22))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_16 i_28 i_29 v_15) j_21 j_22)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_56))
   (assert (! (forall ((|v_16| $@Map@@PermissionComponent@To@Int@@)(|i_31| Field$Seq$Int$$)(|i_30| ref)(|j_24| Field$Bool$)(|j_23| ref)(|m_17| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_17 j_23 j_24) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_17 i_30 i_31 v_16) j_23 j_24)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_17 i_30 i_31 v_16) j_23 j_24)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__Seq$Int$ :weight 0 )) :named ax_57))
   (assert (! (forall ((|v_17| $@Map@@PermissionComponent@To@Int@@)(|i_33| Field$Seq$Int$$)(|i_32| ref)(|j_26| Field$Int$)(|j_25| ref)(|m_18| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_18 j_25 j_26) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_18 i_32 i_33 v_17) j_25 j_26)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_18 i_32 i_33 v_17) j_25 j_26)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Int__Seq$Int$ :weight 0 )) :named ax_58))
   (assert (! (forall ((|v_18| $@Map@@PermissionComponent@To@Int@@)(|i_35| Field$Seq$Int$$)(|i_34| ref)(|j_28| Field$ref$)(|j_27| ref)(|m_19| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_19 j_27 j_28) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_19 i_34 i_35 v_18) j_27 j_28)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_19 i_34 i_35 v_18) j_27 j_28)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__ref__Seq$Int$ :weight 0 )) :named ax_59))
   (assert (! (forall ((|v_19| $@Map@@PermissionComponent@To@Int@@)(|i_37| Field$Seq$Int$$)(|i_36| ref)(|j_30| Field$Mu$)(|j_29| ref)(|m_20| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_20 j_29 j_30) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_20 i_36 i_37 v_19) j_29 j_30)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_20 i_36 i_37 v_19) j_29 j_30)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Mu__Seq$Int$ :weight 0 )) :named ax_60))
   (assert (! (forall ((|v_2| $@Map@@PermissionComponent@To@Int@@)(|i_5| Field$Int$)(|i_4| ref)(|j_3| Field$Bool$)(|j_2| ref)(|m_3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ m_3 j_2 j_3) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_3 i_4 i_5 v_2) j_2 j_3)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_3 i_4 i_5 v_2) j_2 j_3)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Bool__Int :weight 0 )) :named ax_61))
   (assert (! (forall ((|v_21| Int)(|m_22| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_41| Field$Int$)(|j_32| Field$Int$)(|i_40| ref)(|j_31| ref))(!(=> (or (not (= j_32 i_41)) (not (= j_31 i_40))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_22 j_31 j_32) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_22 i_40 i_41 v_21) j_31 j_32))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_22 i_40 i_41 v_21) j_31 j_32)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_62))
   (assert (! (forall ((|v_22| Int)(|i_43| Field$Int$)(|i_42| ref)(|j_34| Field$Bool$)(|j_33| ref)(|m_23| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_23 j_33 j_34) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_23 i_42 i_43 v_22) j_33 j_34)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_23 i_42 i_43 v_22) j_33 j_34)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__Int :weight 0 )) :named ax_63))
   (assert (! (forall ((|v_23| Int)(|i_45| Field$Int$)(|i_44| ref)(|j_36| Field$ref$)(|j_35| ref)(|m_24| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_24 j_35 j_36) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_24 i_44 i_45 v_23) j_35 j_36)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_24 i_44 i_45 v_23) j_35 j_36)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__ref__Int :weight 0 )) :named ax_64))
   (assert (! (forall ((|v_24| Int)(|i_47| Field$Int$)(|i_46| ref)(|j_38| Field$Mu$)(|j_37| ref)(|m_25| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ m_25 j_37 j_38) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_25 i_46 i_47 v_24) j_37 j_38)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_25 i_46 i_47 v_24) j_37 j_38)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Mu__Int :weight 0 )) :named ax_65))
   (assert (! (forall ((|v_25| Int)(|i_49| Field$Int$)(|i_48| ref)(|j_40| Field$Seq$Int$$)(|j_39| ref)(|m_26| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_26 j_39 j_40) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_26 i_48 i_49 v_25) j_39 j_40)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_26 i_48 i_49 v_25) j_39 j_40)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$Int$__Int :weight 0 )) :named ax_66))
   (assert (! (forall ((|v_27| ref)(|m_28| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@)(|i_53| Field$ref$)(|j_42| Field$ref$)(|i_52| ref)(|j_41| ref))(!(=> (or (not (= j_42 i_53)) (not (= j_41 i_52))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_28 j_41 j_42) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_28 i_52 i_53 v_27) j_41 j_42))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_28 i_52 i_53 v_27) j_41 j_42)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@ :weight 0 )) :named ax_67))
   (assert (! (forall ((|v_28| ref)(|i_55| Field$ref$)(|i_54| ref)(|j_44| Field$Bool$)(|j_43| ref)(|m_29| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ m_29 j_43 j_44) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_29 i_54 i_55 v_28) j_43 j_44)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_29 i_54 i_55 v_28) j_43 j_44)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Bool__ref :weight 0 )) :named ax_68))
   (assert (! (forall ((|v_29| ref)(|i_57| Field$ref$)(|i_56| ref)(|j_46| Field$Int$)(|j_45| ref)(|m_30| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ m_30 j_45 j_46) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_30 i_56 i_57 v_29) j_45 j_46)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_30 i_56 i_57 v_29) j_45 j_46)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Int__ref :weight 0 )) :named ax_69))
   (assert (! (forall ((|v_3| $@Map@@PermissionComponent@To@Int@@)(|i_7| Field$Int$)(|i_6| ref)(|j_5| Field$ref$)(|j_4| ref)(|m_4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_4 j_4 j_5) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_4 i_6 i_7 v_3) j_4 j_5)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_4 i_6 i_7 v_3) j_4 j_5)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__ref__Int :weight 0 )) :named ax_70))
   (assert (! (forall ((|v_30| ref)(|i_59| Field$ref$)(|i_58| ref)(|j_48| Field$Mu$)(|j_47| ref)(|m_31| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ m_31 j_47 j_48) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_31 i_58 i_59 v_30) j_47 j_48)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_31 i_58 i_59 v_30) j_47 j_48)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Mu__ref :weight 0 )) :named ax_71))
   (assert (! (forall ((|v_31| ref)(|i_61| Field$ref$)(|i_60| ref)(|j_50| Field$Seq$Int$$)(|j_49| ref)(|m_32| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ m_32 j_49 j_50) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_32 i_60 i_61 v_31) j_49 j_50)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ m_32 i_60 i_61 v_31) j_49 j_50)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$T0@@__Seq$Int$__ref :weight 0 )) :named ax_72))
   (assert (! (forall ((|v_4| $@Map@@PermissionComponent@To@Int@@)(|i_9| Field$Int$)(|i_8| ref)(|j_7| Field$Mu$)(|j_6| ref)(|m_5| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ m_5 j_6 j_7) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_5 i_8 i_9 v_4) j_6 j_7)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_5 i_8 i_9 v_4) j_6 j_7)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Mu__Int :weight 0 )) :named ax_73))
   (assert (! (forall ((|v_5| $@Map@@PermissionComponent@To@Int@@)(|i_11| Field$Int$)(|i_10| ref)(|j_9| Field$Seq$Int$$)(|j_8| ref)(|m_6| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ m_6 j_8 j_9) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_6 i_10 i_11 v_5) j_8 j_9)):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ m_6 i_10 i_11 v_5) j_8 j_9)) :qid map_3_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@__Seq$Int$__Int :weight 0 )) :named ax_74))
   (assert (! (forall ((|v_7| Int)(|m_8| $@Map@@PermissionComponent@To@Int@@)(|i_13| PermissionComponent)(|j_10| PermissionComponent))(!(=> (not (= j_10 i_13)) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ m_8 j_10) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_8 i_13 v_7) j_10))):pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapWrite$$@Map@@PermissionComponent@To@Int@@$ m_8 i_13 v_7) j_10)) :qid map_2_$@Map@@PermissionComponent@To@Int@@ :weight 0 )) :named ax_75))
   (assert (! (forall ((|v_9| $@Map@@PermissionComponent@To@Int@@)(|m_10| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@)(|i_17| Field$ref$)(|j_12| Field$ref$)(|i_16| ref)(|j_11| ref))(!(=> (or (not (= j_12 i_17)) (not (= j_11 i_16))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_10 j_11 j_12) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_10 i_16 i_17 v_9) j_11 j_12))):pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ m_10 i_16 i_17 v_9) j_11 j_12)) :qid map_2_$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@ :weight 0 )) :named ax_76))
   (assert (! (forall( (|a_$2_$0| Seq$Int$) (|b_$2_$0| Seq$Int$))(!(=> (Seq@Equal$Int$ |a_$2_$0| |b_$2_$0|) (= |b_$2_$0| |a_$2_$0|))  :pattern ( (Seq@Equal$Int$ |a_$2_$0| |b_$2_$0|)))) :named ax_77))
   (assert (! (forall( (|a_$2_$1| Seq$ref$) (|b_$2_$1| Seq$ref$))(!(=> (Seq@Equal$ref$ |a_$2_$1| |b_$2_$1|) (= |b_$2_$1| |a_$2_$1|))  :pattern ( (Seq@Equal$ref$ |a_$2_$1| |b_$2_$1|)))) :named ax_78))
   (assert (! (forall( (|con_$0_$0| Bool) (|a_$1_$0| Bool) (|b_$1_$0| Bool))(!(=> (not |con_$0_$0|) (= (ite$Bool$ |con_$0_$0| |a_$1_$0| |b_$1_$0|) |b_$1_$0|))  :pattern ( (ite$Bool$ |con_$0_$0| |a_$1_$0| |b_$1_$0|)))) :named ax_79))
   (assert (! (forall( (|con_$0_$1| Bool) (|a_$1_$1| Int) (|b_$1_$1| Int))(!(=> (not |con_$0_$1|) (= (ite$Int$ |con_$0_$1| |a_$1_$1| |b_$1_$1|) |b_$1_$1|))  :pattern ( (ite$Int$ |con_$0_$1| |a_$1_$1| |b_$1_$1|)))) :named ax_80))
   (assert (! (forall( (|con_$0_$10| Bool) (|a_$1_$10| Field$Bool$) (|b_$1_$10| Field$Bool$))(!(=> (not |con_$0_$10|) (= (ite$Field$Bool$$ |con_$0_$10| |a_$1_$10| |b_$1_$10|) |b_$1_$10|))  :pattern ( (ite$Field$Bool$$ |con_$0_$10| |a_$1_$10| |b_$1_$10|)))) :named ax_81))
   (assert (! (forall( (|con_$0_$11| Bool) (|a_$1_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|b_$1_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> (not |con_$0_$11|) (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$0_$11| |a_$1_$11| |b_$1_$11|) |b_$1_$11|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$0_$11| |a_$1_$11| |b_$1_$11|)))) :named ax_82))
   (assert (! (forall( (|con_$0_$12| Bool) (|a_$1_$12| $@Map@@ref@To@Int@@) (|b_$1_$12| $@Map@@ref@To@Int@@))(!(=> (not |con_$0_$12|) (= (ite$$@Map@@ref@To@Int@@$ |con_$0_$12| |a_$1_$12| |b_$1_$12|) |b_$1_$12|))  :pattern ( (ite$$@Map@@ref@To@Int@@$ |con_$0_$12| |a_$1_$12| |b_$1_$12|)))) :named ax_83))
   (assert (! (forall( (|con_$0_$13| Bool) (|a_$1_$13| Seq$ref$) (|b_$1_$13| Seq$ref$))(!(=> (not |con_$0_$13|) (= (ite$Seq$ref$$ |con_$0_$13| |a_$1_$13| |b_$1_$13|) |b_$1_$13|))  :pattern ( (ite$Seq$ref$$ |con_$0_$13| |a_$1_$13| |b_$1_$13|)))) :named ax_84))
   (assert (! (forall( (|con_$0_$14| Bool) (|a_$1_$14| Seq$Int$) (|b_$1_$14| Seq$Int$))(!(=> (not |con_$0_$14|) (= (ite$Seq$Int$$ |con_$0_$14| |a_$1_$14| |b_$1_$14|) |b_$1_$14|))  :pattern ( (ite$Seq$Int$$ |con_$0_$14| |a_$1_$14| |b_$1_$14|)))) :named ax_85))
   (assert (! (forall( (|con_$0_$15| Bool) (|a_$1_$15| Field$ref$) (|b_$1_$15| Field$ref$))(!(=> (not |con_$0_$15|) (= (ite$Field$ref$$ |con_$0_$15| |a_$1_$15| |b_$1_$15|) |b_$1_$15|))  :pattern ( (ite$Field$ref$$ |con_$0_$15| |a_$1_$15| |b_$1_$15|)))) :named ax_86))
   (assert (! (forall( (|con_$0_$16| Bool) (|a_$1_$16| Field$Seq$Int$$) (|b_$1_$16| Field$Seq$Int$$))(!(=> (not |con_$0_$16|) (= (ite$Field$Seq$Int$$$ |con_$0_$16| |a_$1_$16| |b_$1_$16|) |b_$1_$16|))  :pattern ( (ite$Field$Seq$Int$$$ |con_$0_$16| |a_$1_$16| |b_$1_$16|)))) :named ax_87))
   (assert (! (forall( (|con_$0_$17| Bool) (|a_$1_$17| TypeName) (|b_$1_$17| TypeName))(!(=> (not |con_$0_$17|) (= (ite$TypeName$ |con_$0_$17| |a_$1_$17| |b_$1_$17|) |b_$1_$17|))  :pattern ( (ite$TypeName$ |con_$0_$17| |a_$1_$17| |b_$1_$17|)))) :named ax_88))
   (assert (! (forall( (|con_$0_$18| Bool) (|a_$1_$18| ModuleName) (|b_$1_$18| ModuleName))(!(=> (not |con_$0_$18|) (= (ite$ModuleName$ |con_$0_$18| |a_$1_$18| |b_$1_$18|) |b_$1_$18|))  :pattern ( (ite$ModuleName$ |con_$0_$18| |a_$1_$18| |b_$1_$18|)))) :named ax_89))
   (assert (! (forall( (|con_$0_$2| Bool) (|a_$1_$2| $@Map@@PermissionComponent@To@Int@@) (|b_$1_$2| $@Map@@PermissionComponent@To@Int@@))(!(=> (not |con_$0_$2|) (= (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$0_$2| |a_$1_$2| |b_$1_$2|) |b_$1_$2|))  :pattern ( (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$0_$2| |a_$1_$2| |b_$1_$2|)))) :named ax_90))
   (assert (! (forall( (|con_$0_$3| Bool) (|a_$1_$3| PermissionComponent) (|b_$1_$3| PermissionComponent))(!(=> (not |con_$0_$3|) (= (ite$PermissionComponent$ |con_$0_$3| |a_$1_$3| |b_$1_$3|) |b_$1_$3|))  :pattern ( (ite$PermissionComponent$ |con_$0_$3| |a_$1_$3| |b_$1_$3|)))) :named ax_91))
   (assert (! (forall( (|con_$0_$4| Bool) (|a_$1_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|b_$1_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(=> (not |con_$0_$4|) (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$0_$4| |a_$1_$4| |b_$1_$4|) |b_$1_$4|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$0_$4| |a_$1_$4| |b_$1_$4|)))) :named ax_92))
   (assert (! (forall( (|con_$0_$5| Bool) (|a_$1_$5| ref) (|b_$1_$5| ref))(!(=> (not |con_$0_$5|) (= (ite$ref$ |con_$0_$5| |a_$1_$5| |b_$1_$5|) |b_$1_$5|))  :pattern ( (ite$ref$ |con_$0_$5| |a_$1_$5| |b_$1_$5|)))) :named ax_93))
   (assert (! (forall( (|con_$0_$6| Bool) (|a_$1_$6| Field$Int$) (|b_$1_$6| Field$Int$))(!(=> (not |con_$0_$6|) (= (ite$Field$Int$$ |con_$0_$6| |a_$1_$6| |b_$1_$6|) |b_$1_$6|))  :pattern ( (ite$Field$Int$$ |con_$0_$6| |a_$1_$6| |b_$1_$6|)))) :named ax_94))
   (assert (! (forall( (|con_$0_$7| Bool) (|a_$1_$7| PartialHeapType) (|b_$1_$7| PartialHeapType))(!(=> (not |con_$0_$7|) (= (ite$PartialHeapType$ |con_$0_$7| |a_$1_$7| |b_$1_$7|) |b_$1_$7|))  :pattern ( (ite$PartialHeapType$ |con_$0_$7| |a_$1_$7| |b_$1_$7|)))) :named ax_95))
   (assert (! (forall( (|con_$0_$8| Bool) (|a_$1_$8| Field$Mu$) (|b_$1_$8| Field$Mu$))(!(=> (not |con_$0_$8|) (= (ite$Field$Mu$$ |con_$0_$8| |a_$1_$8| |b_$1_$8|) |b_$1_$8|))  :pattern ( (ite$Field$Mu$$ |con_$0_$8| |a_$1_$8| |b_$1_$8|)))) :named ax_96))
   (assert (! (forall( (|con_$0_$9| Bool) (|a_$1_$9| Mu) (|b_$1_$9| Mu))(!(=> (not |con_$0_$9|) (= (ite$Mu$ |con_$0_$9| |a_$1_$9| |b_$1_$9|) |b_$1_$9|))  :pattern ( (ite$Mu$ |con_$0_$9| |a_$1_$9| |b_$1_$9|)))) :named ax_97))
   (assert (! (forall( (|con_$1| Bool) (|a_$0_$0| Bool) (|b_$0_$0| Bool))(!(=> |con_$1| (= (ite$Bool$ |con_$1| |a_$0_$0| |b_$0_$0|) |a_$0_$0|))  :pattern ( (ite$Bool$ |con_$1| |a_$0_$0| |b_$0_$0|)))) :named ax_98))
   (assert (! (forall( (|con_$10| Bool) (|a_$0_$9| Mu) (|b_$0_$9| Mu))(!(=> |con_$10| (= (ite$Mu$ |con_$10| |a_$0_$9| |b_$0_$9|) |a_$0_$9|))  :pattern ( (ite$Mu$ |con_$10| |a_$0_$9| |b_$0_$9|)))) :named ax_99))
   (assert (! (forall( (|con_$11| Bool) (|a_$0_$10| Field$Bool$) (|b_$0_$10| Field$Bool$))(!(=> |con_$11| (= (ite$Field$Bool$$ |con_$11| |a_$0_$10| |b_$0_$10|) |a_$0_$10|))  :pattern ( (ite$Field$Bool$$ |con_$11| |a_$0_$10| |b_$0_$10|)))) :named ax_100))
   (assert (! (forall( (|con_$12| Bool) (|a_$0_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|b_$0_$11| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@))(!(=> |con_$12| (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$12| |a_$0_$11| |b_$0_$11|) |a_$0_$11|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ |con_$12| |a_$0_$11| |b_$0_$11|)))) :named ax_101))
   (assert (! (forall( (|con_$13| Bool) (|a_$0_$12| $@Map@@ref@To@Int@@) (|b_$0_$12| $@Map@@ref@To@Int@@))(!(=> |con_$13| (= (ite$$@Map@@ref@To@Int@@$ |con_$13| |a_$0_$12| |b_$0_$12|) |a_$0_$12|))  :pattern ( (ite$$@Map@@ref@To@Int@@$ |con_$13| |a_$0_$12| |b_$0_$12|)))) :named ax_102))
   (assert (! (forall( (|con_$14| Bool) (|a_$0_$13| Seq$ref$) (|b_$0_$13| Seq$ref$))(!(=> |con_$14| (= (ite$Seq$ref$$ |con_$14| |a_$0_$13| |b_$0_$13|) |a_$0_$13|))  :pattern ( (ite$Seq$ref$$ |con_$14| |a_$0_$13| |b_$0_$13|)))) :named ax_103))
   (assert (! (forall( (|con_$15| Bool) (|a_$0_$14| Seq$Int$) (|b_$0_$14| Seq$Int$))(!(=> |con_$15| (= (ite$Seq$Int$$ |con_$15| |a_$0_$14| |b_$0_$14|) |a_$0_$14|))  :pattern ( (ite$Seq$Int$$ |con_$15| |a_$0_$14| |b_$0_$14|)))) :named ax_104))
   (assert (! (forall( (|con_$16| Bool) (|a_$0_$15| Field$ref$) (|b_$0_$15| Field$ref$))(!(=> |con_$16| (= (ite$Field$ref$$ |con_$16| |a_$0_$15| |b_$0_$15|) |a_$0_$15|))  :pattern ( (ite$Field$ref$$ |con_$16| |a_$0_$15| |b_$0_$15|)))) :named ax_105))
   (assert (! (forall( (|con_$17| Bool) (|a_$0_$16| Field$Seq$Int$$) (|b_$0_$16| Field$Seq$Int$$))(!(=> |con_$17| (= (ite$Field$Seq$Int$$$ |con_$17| |a_$0_$16| |b_$0_$16|) |a_$0_$16|))  :pattern ( (ite$Field$Seq$Int$$$ |con_$17| |a_$0_$16| |b_$0_$16|)))) :named ax_106))
   (assert (! (forall( (|con_$18| Bool) (|a_$0_$17| TypeName) (|b_$0_$17| TypeName))(!(=> |con_$18| (= (ite$TypeName$ |con_$18| |a_$0_$17| |b_$0_$17|) |a_$0_$17|))  :pattern ( (ite$TypeName$ |con_$18| |a_$0_$17| |b_$0_$17|)))) :named ax_107))
   (assert (! (forall( (|con_$19| Bool) (|a_$0_$18| ModuleName) (|b_$0_$18| ModuleName))(!(=> |con_$19| (= (ite$ModuleName$ |con_$19| |a_$0_$18| |b_$0_$18|) |a_$0_$18|))  :pattern ( (ite$ModuleName$ |con_$19| |a_$0_$18| |b_$0_$18|)))) :named ax_108))
   (assert (! (forall( (|con_$2| Bool) (|a_$0_$1| Int) (|b_$0_$1| Int))(!(=> |con_$2| (= (ite$Int$ |con_$2| |a_$0_$1| |b_$0_$1|) |a_$0_$1|))  :pattern ( (ite$Int$ |con_$2| |a_$0_$1| |b_$0_$1|)))) :named ax_109))
   (assert (! (forall( (|con_$3| Bool) (|a_$0_$2| $@Map@@PermissionComponent@To@Int@@) (|b_$0_$2| $@Map@@PermissionComponent@To@Int@@))(!(=> |con_$3| (= (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$3| |a_$0_$2| |b_$0_$2|) |a_$0_$2|))  :pattern ( (ite$$@Map@@PermissionComponent@To@Int@@$ |con_$3| |a_$0_$2| |b_$0_$2|)))) :named ax_110))
   (assert (! (forall( (|con_$4| Bool) (|a_$0_$3| PermissionComponent) (|b_$0_$3| PermissionComponent))(!(=> |con_$4| (= (ite$PermissionComponent$ |con_$4| |a_$0_$3| |b_$0_$3|) |a_$0_$3|))  :pattern ( (ite$PermissionComponent$ |con_$4| |a_$0_$3| |b_$0_$3|)))) :named ax_111))
   (assert (! (forall( (|con_$5| Bool) (|a_$0_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|b_$0_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(=> |con_$5| (= (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$5| |a_$0_$4| |b_$0_$4|) |a_$0_$4|))  :pattern ( (ite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ |con_$5| |a_$0_$4| |b_$0_$4|)))) :named ax_112))
   (assert (! (forall( (|con_$6| Bool) (|a_$0_$5| ref) (|b_$0_$5| ref))(!(=> |con_$6| (= (ite$ref$ |con_$6| |a_$0_$5| |b_$0_$5|) |a_$0_$5|))  :pattern ( (ite$ref$ |con_$6| |a_$0_$5| |b_$0_$5|)))) :named ax_113))
   (assert (! (forall( (|con_$7| Bool) (|a_$0_$6| Field$Int$) (|b_$0_$6| Field$Int$))(!(=> |con_$7| (= (ite$Field$Int$$ |con_$7| |a_$0_$6| |b_$0_$6|) |a_$0_$6|))  :pattern ( (ite$Field$Int$$ |con_$7| |a_$0_$6| |b_$0_$6|)))) :named ax_114))
   (assert (! (forall( (|con_$8| Bool) (|a_$0_$7| PartialHeapType) (|b_$0_$7| PartialHeapType))(!(=> |con_$8| (= (ite$PartialHeapType$ |con_$8| |a_$0_$7| |b_$0_$7|) |a_$0_$7|))  :pattern ( (ite$PartialHeapType$ |con_$8| |a_$0_$7| |b_$0_$7|)))) :named ax_115))
   (assert (! (forall( (|con_$9| Bool) (|a_$0_$8| Field$Mu$) (|b_$0_$8| Field$Mu$))(!(=> |con_$9| (= (ite$Field$Mu$$ |con_$9| |a_$0_$8| |b_$0_$8|) |a_$0_$8|))  :pattern ( (ite$Field$Mu$$ |con_$9| |a_$0_$8| |b_$0_$8|)))) :named ax_116))
   (assert (! (forall( (|eh| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|h_$0| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|m_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (IsGoodExhaleState |eh| |h_$0| |m_$3| |sm_$0|) (and (forall( (|o_$13| ref) (|f_$2| Field$Int$))(!(=> (PredicateField$Int$ |f_$2|) (<= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$13| |f_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$13| |f_$2|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$13| |f_$2|) (PredicateField$Int$ |f_$2|)))) (and (forall( (|o_$12| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$12| held) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$12| held))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$12| held)) :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$12| held)))) (and (forall( (|o_$11| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$11| forkK) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$11| forkK))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$11| forkK)) :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$11| forkK)))) (and (forall( (|o_$10| ref))(!(=> (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$0| |o_$10| rdheld) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$0| |o_$10| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |eh| |o_$10| mu)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$0| |o_$10| rdheld)))) (and (forall( (|o_$9| ref))(!(=> (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$9| held)) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$0| |o_$9| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |eh| |o_$9| mu)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$9| held)))) (and (forall( (|o_$8| ref))(!(= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$0| |o_$8| rdheld) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |eh| |o_$8| rdheld))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |eh| |o_$8| rdheld)))) (and (forall( (|o_$7| ref))(!(= (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$7| held)) (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$7| held)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$7| held)))) (and (forall( (|o_$6_$4| ref) (|f_$1_$4| Field$Seq$Int$$))(!(=> (CanRead$Seq$Int$$ |m_$3| |sm_$0| |o_$6_$4| |f_$1_$4|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ |h_$0| |o_$6_$4| |f_$1_$4|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ |eh| |o_$6_$4| |f_$1_$4|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ |eh| |o_$6_$4| |f_$1_$4|)))) (and (forall( (|o_$6_$3| ref) (|f_$1_$3| Field$Mu$))(!(=> (CanRead$Mu$ |m_$3| |sm_$0| |o_$6_$3| |f_$1_$3|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$0| |o_$6_$3| |f_$1_$3|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |eh| |o_$6_$3| |f_$1_$3|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |eh| |o_$6_$3| |f_$1_$3|)))) (and (forall( (|o_$6_$2| ref) (|f_$1_$2| Field$ref$))(!(=> (CanRead$ref$ |m_$3| |sm_$0| |o_$6_$2| |f_$1_$2|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |h_$0| |o_$6_$2| |f_$1_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |eh| |o_$6_$2| |f_$1_$2|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ |eh| |o_$6_$2| |f_$1_$2|)))) (and (forall( (|o_$6_$1| ref) (|f_$1_$1| Field$Int$))(!(=> (CanRead$Int$ |m_$3| |sm_$0| |o_$6_$1| |f_$1_$1|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$0| |o_$6_$1| |f_$1_$1|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$6_$1| |f_$1_$1|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |eh| |o_$6_$1| |f_$1_$1|)))) (forall( (|o_$6_$0| ref) (|f_$1_$0| Field$Bool$))(!(=> (CanRead$Bool$ |m_$3| |sm_$0| |o_$6_$0| |f_$1_$0|) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$0| |o_$6_$0| |f_$1_$0|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |eh| |o_$6_$0| |f_$1_$0|)))  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |eh| |o_$6_$0| |f_$1_$0|))))))))))))))))  :pattern ( (IsGoodExhaleState |eh| |h_$0| |m_$3| |sm_$0|)))) :named ax_117))
   (assert (! (forall( (|f_$13_$0| Field$Bool$))(=> (NonPredicateField$Bool$ |f_$13_$0|) (not (PredicateField$Bool$ |f_$13_$0|)))) :named ax_118))
   (assert (! (forall( (|f_$13_$1| Field$Int$))(=> (NonPredicateField$Int$ |f_$13_$1|) (not (PredicateField$Int$ |f_$13_$1|)))) :named ax_119))
   (assert (! (forall( (|f_$13_$2| Field$ref$))(=> (NonPredicateField$ref$ |f_$13_$2|) (not (PredicateField$ref$ |f_$13_$2|)))) :named ax_120))
   (assert (! (forall( (|f_$13_$3| Field$Mu$))(=> (NonPredicateField$Mu$ |f_$13_$3|) (not (PredicateField$Mu$ |f_$13_$3|)))) :named ax_121))
   (assert (! (forall( (|f_$13_$4| Field$Seq$Int$$))(=> (NonPredicateField$Seq$Int$$ |f_$13_$4|) (not (PredicateField$Seq$Int$$ |f_$13_$4|)))) :named ax_122))
   (assert (! (forall( (|f_$14_$0| Field$Bool$))(=> (PredicateField$Bool$ |f_$14_$0|) (not (NonPredicateField$Bool$ |f_$14_$0|)))) :named ax_123))
   (assert (! (forall( (|f_$14_$1| Field$Int$))(=> (PredicateField$Int$ |f_$14_$1|) (not (NonPredicateField$Int$ |f_$14_$1|)))) :named ax_124))
   (assert (! (forall( (|f_$14_$2| Field$ref$))(=> (PredicateField$ref$ |f_$14_$2|) (not (NonPredicateField$ref$ |f_$14_$2|)))) :named ax_125))
   (assert (! (forall( (|f_$14_$3| Field$Mu$))(=> (PredicateField$Mu$ |f_$14_$3|) (not (NonPredicateField$Mu$ |f_$14_$3|)))) :named ax_126))
   (assert (! (forall( (|f_$14_$4| Field$Seq$Int$$))(=> (PredicateField$Seq$Int$$ |f_$14_$4|) (not (NonPredicateField$Seq$Int$$ |f_$14_$4|)))) :named ax_127))
   (assert (! (forall( (|h_$1| $@Map@@$T0@@ref@Field$$T0$@To@$T0@@) (|m_$8| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$15| ref) (|q| ref))(!(=> (and (or (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$1| |q| rdheld) (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$1| |q| held))) (and (and (wf |h_$1| |m_$8| |sm_$2|) (not (= |q| |o_$15|))) (or (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ |h_$1| |o_$15| rdheld) (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ |h_$1| |o_$15| held))))) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$1| |q| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$1| |o_$15| mu))))  :pattern ( (wf |h_$1| |m_$8| |sm_$2|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$1| |o_$15| mu) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Mu$ |h_$1| |q| mu)))) :named ax_128))
   (assert (! (forall( (|k#96#635| Int))(=> (and (< |k#96#635| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 |k#96#635|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.keys) |k#96#635|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.key)))) :named ax_129))
   (assert (! (forall( (|m_$0| Mu) (|n_$1| Mu) (|o_$0| Mu))(!(=> (and (MuBelow |n_$1| |o_$0|) (MuBelow |m_$0| |n_$1|)) (MuBelow |m_$0| |o_$0|))  :pattern ( (MuBelow |m_$0| |n_$1|) (MuBelow |n_$1| |o_$0|)))) :named ax_130))
   (assert (! (forall( (|m_$1| Mu) (|n_$2| Mu))(=> (MuBelow |m_$1| |n_$2|) (not (= |n_$2| $LockBottom)))) :named ax_131))
   (assert (! (forall( (|m_$11_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$0| ref) (|f_$9_$0| Field$Bool$) (|howMuch_$1_$0| Int) (|q_$2_$0| ref) (|g_$1_$0| Field$Bool$))(!(= (ite$Int$ (and (= |o_$18_$0| |q_$2_$0|) (= |f_$9_$0| |g_$1_$0|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$0| |q_$2_$0| |g_$1_$0|) perm$R) |howMuch_$1_$0|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$0| |q_$2_$0| |g_$1_$0|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Bool$ |m_$11_$0| |o_$18_$0| |f_$9_$0| |howMuch_$1_$0|) |q_$2_$0| |g_$1_$0|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Bool$ |m_$11_$0| |o_$18_$0| |f_$9_$0| |howMuch_$1_$0|) |q_$2_$0| |g_$1_$0|) perm$R)))) :named ax_132))
   (assert (! (forall( (|m_$11_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$1| ref) (|f_$9_$1| Field$Int$) (|howMuch_$1_$1| Int) (|q_$2_$1| ref) (|g_$1_$1| Field$Bool$))(!(= (ite$Int$ (and (= |o_$18_$1| |q_$2_$1|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$1| |q_$2_$1| |g_$1_$1|) perm$R) |howMuch_$1_$1|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$1| |q_$2_$1| |g_$1_$1|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Int$ |m_$11_$1| |o_$18_$1| |f_$9_$1| |howMuch_$1_$1|) |q_$2_$1| |g_$1_$1|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Int$ |m_$11_$1| |o_$18_$1| |f_$9_$1| |howMuch_$1_$1|) |q_$2_$1| |g_$1_$1|) perm$R)))) :named ax_133))
   (assert (! (forall( (|m_$11_$10| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$10| ref) (|f_$9_$10| Field$Bool$) (|howMuch_$1_$10| Int) (|q_$2_$10| ref) (|g_$1_$10| Field$ref$))(!(= (ite$Int$ (and (= |o_$18_$10| |q_$2_$10|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$10| |q_$2_$10| |g_$1_$10|) perm$R) |howMuch_$1_$10|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$10| |q_$2_$10| |g_$1_$10|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Bool$ |m_$11_$10| |o_$18_$10| |f_$9_$10| |howMuch_$1_$10|) |q_$2_$10| |g_$1_$10|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Bool$ |m_$11_$10| |o_$18_$10| |f_$9_$10| |howMuch_$1_$10|) |q_$2_$10| |g_$1_$10|) perm$R)))) :named ax_134))
   (assert (! (forall( (|m_$11_$11| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$11| ref) (|f_$9_$11| Field$Int$) (|howMuch_$1_$11| Int) (|q_$2_$11| ref) (|g_$1_$11| Field$ref$))(!(= (ite$Int$ (and (= |o_$18_$11| |q_$2_$11|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$11| |q_$2_$11| |g_$1_$11|) perm$R) |howMuch_$1_$11|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$11| |q_$2_$11| |g_$1_$11|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Int$ |m_$11_$11| |o_$18_$11| |f_$9_$11| |howMuch_$1_$11|) |q_$2_$11| |g_$1_$11|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Int$ |m_$11_$11| |o_$18_$11| |f_$9_$11| |howMuch_$1_$11|) |q_$2_$11| |g_$1_$11|) perm$R)))) :named ax_135))
   (assert (! (forall( (|m_$11_$12| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$12| ref) (|f_$9_$12| Field$ref$) (|howMuch_$1_$12| Int) (|q_$2_$12| ref) (|g_$1_$12| Field$ref$))(!(= (ite$Int$ (and (= |o_$18_$12| |q_$2_$12|) (= |f_$9_$12| |g_$1_$12|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$12| |q_$2_$12| |g_$1_$12|) perm$R) |howMuch_$1_$12|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$12| |q_$2_$12| |g_$1_$12|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$ref$ |m_$11_$12| |o_$18_$12| |f_$9_$12| |howMuch_$1_$12|) |q_$2_$12| |g_$1_$12|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$ref$ |m_$11_$12| |o_$18_$12| |f_$9_$12| |howMuch_$1_$12|) |q_$2_$12| |g_$1_$12|) perm$R)))) :named ax_136))
   (assert (! (forall( (|m_$11_$13| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$13| ref) (|f_$9_$13| Field$Mu$) (|howMuch_$1_$13| Int) (|q_$2_$13| ref) (|g_$1_$13| Field$ref$))(!(= (ite$Int$ (and (= |o_$18_$13| |q_$2_$13|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$13| |q_$2_$13| |g_$1_$13|) perm$R) |howMuch_$1_$13|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$13| |q_$2_$13| |g_$1_$13|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Mu$ |m_$11_$13| |o_$18_$13| |f_$9_$13| |howMuch_$1_$13|) |q_$2_$13| |g_$1_$13|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Mu$ |m_$11_$13| |o_$18_$13| |f_$9_$13| |howMuch_$1_$13|) |q_$2_$13| |g_$1_$13|) perm$R)))) :named ax_137))
   (assert (! (forall( (|m_$11_$14| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$14| ref) (|f_$9_$14| Field$Seq$Int$$) (|howMuch_$1_$14| Int) (|q_$2_$14| ref) (|g_$1_$14| Field$ref$))(!(= (ite$Int$ (and (= |o_$18_$14| |q_$2_$14|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$14| |q_$2_$14| |g_$1_$14|) perm$R) |howMuch_$1_$14|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$11_$14| |q_$2_$14| |g_$1_$14|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Seq$Int$$ |m_$11_$14| |o_$18_$14| |f_$9_$14| |howMuch_$1_$14|) |q_$2_$14| |g_$1_$14|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (IncPerm$Seq$Int$$ |m_$11_$14| |o_$18_$14| |f_$9_$14| |howMuch_$1_$14|) |q_$2_$14| |g_$1_$14|) perm$R)))) :named ax_138))
   (assert (! (forall( (|m_$11_$15| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$15| ref) (|f_$9_$15| Field$Bool$) (|howMuch_$1_$15| Int) (|q_$2_$15| ref) (|g_$1_$15| Field$Mu$))(!(= (ite$Int$ (and (= |o_$18_$15| |q_$2_$15|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$15| |q_$2_$15| |g_$1_$15|) perm$R) |howMuch_$1_$15|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$15| |q_$2_$15| |g_$1_$15|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Bool$ |m_$11_$15| |o_$18_$15| |f_$9_$15| |howMuch_$1_$15|) |q_$2_$15| |g_$1_$15|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Bool$ |m_$11_$15| |o_$18_$15| |f_$9_$15| |howMuch_$1_$15|) |q_$2_$15| |g_$1_$15|) perm$R)))) :named ax_139))
   (assert (! (forall( (|m_$11_$16| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$16| ref) (|f_$9_$16| Field$Int$) (|howMuch_$1_$16| Int) (|q_$2_$16| ref) (|g_$1_$16| Field$Mu$))(!(= (ite$Int$ (and (= |o_$18_$16| |q_$2_$16|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$16| |q_$2_$16| |g_$1_$16|) perm$R) |howMuch_$1_$16|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$16| |q_$2_$16| |g_$1_$16|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Int$ |m_$11_$16| |o_$18_$16| |f_$9_$16| |howMuch_$1_$16|) |q_$2_$16| |g_$1_$16|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Int$ |m_$11_$16| |o_$18_$16| |f_$9_$16| |howMuch_$1_$16|) |q_$2_$16| |g_$1_$16|) perm$R)))) :named ax_140))
   (assert (! (forall( (|m_$11_$17| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$17| ref) (|f_$9_$17| Field$ref$) (|howMuch_$1_$17| Int) (|q_$2_$17| ref) (|g_$1_$17| Field$Mu$))(!(= (ite$Int$ (and (= |o_$18_$17| |q_$2_$17|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$17| |q_$2_$17| |g_$1_$17|) perm$R) |howMuch_$1_$17|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$17| |q_$2_$17| |g_$1_$17|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$ref$ |m_$11_$17| |o_$18_$17| |f_$9_$17| |howMuch_$1_$17|) |q_$2_$17| |g_$1_$17|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$ref$ |m_$11_$17| |o_$18_$17| |f_$9_$17| |howMuch_$1_$17|) |q_$2_$17| |g_$1_$17|) perm$R)))) :named ax_141))
   (assert (! (forall( (|m_$11_$18| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$18| ref) (|f_$9_$18| Field$Mu$) (|howMuch_$1_$18| Int) (|q_$2_$18| ref) (|g_$1_$18| Field$Mu$))(!(= (ite$Int$ (and (= |o_$18_$18| |q_$2_$18|) (= |f_$9_$18| |g_$1_$18|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$18| |q_$2_$18| |g_$1_$18|) perm$R) |howMuch_$1_$18|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$18| |q_$2_$18| |g_$1_$18|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Mu$ |m_$11_$18| |o_$18_$18| |f_$9_$18| |howMuch_$1_$18|) |q_$2_$18| |g_$1_$18|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Mu$ |m_$11_$18| |o_$18_$18| |f_$9_$18| |howMuch_$1_$18|) |q_$2_$18| |g_$1_$18|) perm$R)))) :named ax_142))
   (assert (! (forall( (|m_$11_$19| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$19| ref) (|f_$9_$19| Field$Seq$Int$$) (|howMuch_$1_$19| Int) (|q_$2_$19| ref) (|g_$1_$19| Field$Mu$))(!(= (ite$Int$ (and (= |o_$18_$19| |q_$2_$19|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$19| |q_$2_$19| |g_$1_$19|) perm$R) |howMuch_$1_$19|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$11_$19| |q_$2_$19| |g_$1_$19|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Seq$Int$$ |m_$11_$19| |o_$18_$19| |f_$9_$19| |howMuch_$1_$19|) |q_$2_$19| |g_$1_$19|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (IncPerm$Seq$Int$$ |m_$11_$19| |o_$18_$19| |f_$9_$19| |howMuch_$1_$19|) |q_$2_$19| |g_$1_$19|) perm$R)))) :named ax_143))
   (assert (! (forall( (|m_$11_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$2| ref) (|f_$9_$2| Field$ref$) (|howMuch_$1_$2| Int) (|q_$2_$2| ref) (|g_$1_$2| Field$Bool$))(!(= (ite$Int$ (and (= |o_$18_$2| |q_$2_$2|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$2| |q_$2_$2| |g_$1_$2|) perm$R) |howMuch_$1_$2|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$2| |q_$2_$2| |g_$1_$2|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$ref$ |m_$11_$2| |o_$18_$2| |f_$9_$2| |howMuch_$1_$2|) |q_$2_$2| |g_$1_$2|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$ref$ |m_$11_$2| |o_$18_$2| |f_$9_$2| |howMuch_$1_$2|) |q_$2_$2| |g_$1_$2|) perm$R)))) :named ax_144))
   (assert (! (forall( (|m_$11_$20| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$20| ref) (|f_$9_$20| Field$Bool$) (|howMuch_$1_$20| Int) (|q_$2_$20| ref) (|g_$1_$20| Field$Seq$Int$$))(!(= (ite$Int$ (and (= |o_$18_$20| |q_$2_$20|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$20| |q_$2_$20| |g_$1_$20|) perm$R) |howMuch_$1_$20|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$20| |q_$2_$20| |g_$1_$20|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Bool$ |m_$11_$20| |o_$18_$20| |f_$9_$20| |howMuch_$1_$20|) |q_$2_$20| |g_$1_$20|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Bool$ |m_$11_$20| |o_$18_$20| |f_$9_$20| |howMuch_$1_$20|) |q_$2_$20| |g_$1_$20|) perm$R)))) :named ax_145))
   (assert (! (forall( (|m_$11_$21| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$21| ref) (|f_$9_$21| Field$Int$) (|howMuch_$1_$21| Int) (|q_$2_$21| ref) (|g_$1_$21| Field$Seq$Int$$))(!(= (ite$Int$ (and (= |o_$18_$21| |q_$2_$21|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$21| |q_$2_$21| |g_$1_$21|) perm$R) |howMuch_$1_$21|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$21| |q_$2_$21| |g_$1_$21|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Int$ |m_$11_$21| |o_$18_$21| |f_$9_$21| |howMuch_$1_$21|) |q_$2_$21| |g_$1_$21|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Int$ |m_$11_$21| |o_$18_$21| |f_$9_$21| |howMuch_$1_$21|) |q_$2_$21| |g_$1_$21|) perm$R)))) :named ax_146))
   (assert (! (forall( (|m_$11_$22| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$22| ref) (|f_$9_$22| Field$ref$) (|howMuch_$1_$22| Int) (|q_$2_$22| ref) (|g_$1_$22| Field$Seq$Int$$))(!(= (ite$Int$ (and (= |o_$18_$22| |q_$2_$22|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$22| |q_$2_$22| |g_$1_$22|) perm$R) |howMuch_$1_$22|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$22| |q_$2_$22| |g_$1_$22|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$ref$ |m_$11_$22| |o_$18_$22| |f_$9_$22| |howMuch_$1_$22|) |q_$2_$22| |g_$1_$22|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$ref$ |m_$11_$22| |o_$18_$22| |f_$9_$22| |howMuch_$1_$22|) |q_$2_$22| |g_$1_$22|) perm$R)))) :named ax_147))
   (assert (! (forall( (|m_$11_$23| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$23| ref) (|f_$9_$23| Field$Mu$) (|howMuch_$1_$23| Int) (|q_$2_$23| ref) (|g_$1_$23| Field$Seq$Int$$))(!(= (ite$Int$ (and (= |o_$18_$23| |q_$2_$23|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$23| |q_$2_$23| |g_$1_$23|) perm$R) |howMuch_$1_$23|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$23| |q_$2_$23| |g_$1_$23|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Mu$ |m_$11_$23| |o_$18_$23| |f_$9_$23| |howMuch_$1_$23|) |q_$2_$23| |g_$1_$23|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Mu$ |m_$11_$23| |o_$18_$23| |f_$9_$23| |howMuch_$1_$23|) |q_$2_$23| |g_$1_$23|) perm$R)))) :named ax_148))
   (assert (! (forall( (|m_$11_$24| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$24| ref) (|f_$9_$24| Field$Seq$Int$$) (|howMuch_$1_$24| Int) (|q_$2_$24| ref) (|g_$1_$24| Field$Seq$Int$$))(!(= (ite$Int$ (and (= |o_$18_$24| |q_$2_$24|) (= |f_$9_$24| |g_$1_$24|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$24| |q_$2_$24| |g_$1_$24|) perm$R) |howMuch_$1_$24|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$11_$24| |q_$2_$24| |g_$1_$24|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Seq$Int$$ |m_$11_$24| |o_$18_$24| |f_$9_$24| |howMuch_$1_$24|) |q_$2_$24| |g_$1_$24|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (IncPerm$Seq$Int$$ |m_$11_$24| |o_$18_$24| |f_$9_$24| |howMuch_$1_$24|) |q_$2_$24| |g_$1_$24|) perm$R)))) :named ax_149))
   (assert (! (forall( (|m_$11_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$3| ref) (|f_$9_$3| Field$Mu$) (|howMuch_$1_$3| Int) (|q_$2_$3| ref) (|g_$1_$3| Field$Bool$))(!(= (ite$Int$ (and (= |o_$18_$3| |q_$2_$3|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$3| |q_$2_$3| |g_$1_$3|) perm$R) |howMuch_$1_$3|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$3| |q_$2_$3| |g_$1_$3|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Mu$ |m_$11_$3| |o_$18_$3| |f_$9_$3| |howMuch_$1_$3|) |q_$2_$3| |g_$1_$3|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Mu$ |m_$11_$3| |o_$18_$3| |f_$9_$3| |howMuch_$1_$3|) |q_$2_$3| |g_$1_$3|) perm$R)))) :named ax_150))
   (assert (! (forall( (|m_$11_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$4| ref) (|f_$9_$4| Field$Seq$Int$$) (|howMuch_$1_$4| Int) (|q_$2_$4| ref) (|g_$1_$4| Field$Bool$))(!(= (ite$Int$ (and (= |o_$18_$4| |q_$2_$4|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$4| |q_$2_$4| |g_$1_$4|) perm$R) |howMuch_$1_$4|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$11_$4| |q_$2_$4| |g_$1_$4|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Seq$Int$$ |m_$11_$4| |o_$18_$4| |f_$9_$4| |howMuch_$1_$4|) |q_$2_$4| |g_$1_$4|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (IncPerm$Seq$Int$$ |m_$11_$4| |o_$18_$4| |f_$9_$4| |howMuch_$1_$4|) |q_$2_$4| |g_$1_$4|) perm$R)))) :named ax_151))
   (assert (! (forall( (|m_$11_$5| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$5| ref) (|f_$9_$5| Field$Bool$) (|howMuch_$1_$5| Int) (|q_$2_$5| ref) (|g_$1_$5| Field$Int$))(!(= (ite$Int$ (and (= |o_$18_$5| |q_$2_$5|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$5| |q_$2_$5| |g_$1_$5|) perm$R) |howMuch_$1_$5|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$5| |q_$2_$5| |g_$1_$5|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Bool$ |m_$11_$5| |o_$18_$5| |f_$9_$5| |howMuch_$1_$5|) |q_$2_$5| |g_$1_$5|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Bool$ |m_$11_$5| |o_$18_$5| |f_$9_$5| |howMuch_$1_$5|) |q_$2_$5| |g_$1_$5|) perm$R)))) :named ax_152))
   (assert (! (forall( (|m_$11_$6| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$6| ref) (|f_$9_$6| Field$Int$) (|howMuch_$1_$6| Int) (|q_$2_$6| ref) (|g_$1_$6| Field$Int$))(!(= (ite$Int$ (and (= |o_$18_$6| |q_$2_$6|) (= |f_$9_$6| |g_$1_$6|)) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$6| |q_$2_$6| |g_$1_$6|) perm$R) |howMuch_$1_$6|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$6| |q_$2_$6| |g_$1_$6|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Int$ |m_$11_$6| |o_$18_$6| |f_$9_$6| |howMuch_$1_$6|) |q_$2_$6| |g_$1_$6|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Int$ |m_$11_$6| |o_$18_$6| |f_$9_$6| |howMuch_$1_$6|) |q_$2_$6| |g_$1_$6|) perm$R)))) :named ax_153))
   (assert (! (forall( (|m_$11_$7| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$7| ref) (|f_$9_$7| Field$ref$) (|howMuch_$1_$7| Int) (|q_$2_$7| ref) (|g_$1_$7| Field$Int$))(!(= (ite$Int$ (and (= |o_$18_$7| |q_$2_$7|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$7| |q_$2_$7| |g_$1_$7|) perm$R) |howMuch_$1_$7|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$7| |q_$2_$7| |g_$1_$7|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$ref$ |m_$11_$7| |o_$18_$7| |f_$9_$7| |howMuch_$1_$7|) |q_$2_$7| |g_$1_$7|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$ref$ |m_$11_$7| |o_$18_$7| |f_$9_$7| |howMuch_$1_$7|) |q_$2_$7| |g_$1_$7|) perm$R)))) :named ax_154))
   (assert (! (forall( (|m_$11_$8| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$8| ref) (|f_$9_$8| Field$Mu$) (|howMuch_$1_$8| Int) (|q_$2_$8| ref) (|g_$1_$8| Field$Int$))(!(= (ite$Int$ (and (= |o_$18_$8| |q_$2_$8|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$8| |q_$2_$8| |g_$1_$8|) perm$R) |howMuch_$1_$8|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$8| |q_$2_$8| |g_$1_$8|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Mu$ |m_$11_$8| |o_$18_$8| |f_$9_$8| |howMuch_$1_$8|) |q_$2_$8| |g_$1_$8|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Mu$ |m_$11_$8| |o_$18_$8| |f_$9_$8| |howMuch_$1_$8|) |q_$2_$8| |g_$1_$8|) perm$R)))) :named ax_155))
   (assert (! (forall( (|m_$11_$9| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$18_$9| ref) (|f_$9_$9| Field$Seq$Int$$) (|howMuch_$1_$9| Int) (|q_$2_$9| ref) (|g_$1_$9| Field$Int$))(!(= (ite$Int$ (and (= |o_$18_$9| |q_$2_$9|) false) (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$9| |q_$2_$9| |g_$1_$9|) perm$R) |howMuch_$1_$9|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$11_$9| |q_$2_$9| |g_$1_$9|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Seq$Int$$ |m_$11_$9| |o_$18_$9| |f_$9_$9| |howMuch_$1_$9|) |q_$2_$9| |g_$1_$9|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (IncPerm$Seq$Int$$ |m_$11_$9| |o_$18_$9| |f_$9_$9| |howMuch_$1_$9|) |q_$2_$9| |g_$1_$9|) perm$R)))) :named ax_156))
   (assert (! (forall( (|m_$4_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$2| ref) (|f_$3_$0| Field$Bool$))(!(= (CanRead$Bool$ |m_$4_$0| |sm_$1_$0| |obj_$2| |f_$3_$0|) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |sm_$1_$0| |obj_$2| |f_$3_$0|) perm$N)) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |sm_$1_$0| |obj_$2| |f_$3_$0|) perm$R)) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$4_$0| |obj_$2| |f_$3_$0|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$4_$0| |obj_$2| |f_$3_$0|) perm$N))))))  :pattern ( (CanRead$Bool$ |m_$4_$0| |sm_$1_$0| |obj_$2| |f_$3_$0|)))) :named ax_157))
   (assert (! (forall( (|m_$4_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$3| ref) (|f_$3_$1| Field$Int$))(!(= (CanRead$Int$ |m_$4_$1| |sm_$1_$1| |obj_$3| |f_$3_$1|) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |sm_$1_$1| |obj_$3| |f_$3_$1|) perm$N)) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |sm_$1_$1| |obj_$3| |f_$3_$1|) perm$R)) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$4_$1| |obj_$3| |f_$3_$1|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$4_$1| |obj_$3| |f_$3_$1|) perm$N))))))  :pattern ( (CanRead$Int$ |m_$4_$1| |sm_$1_$1| |obj_$3| |f_$3_$1|)))) :named ax_158))
   (assert (! (forall( (|m_$4_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$4| ref) (|f_$3_$2| Field$ref$))(!(= (CanRead$ref$ |m_$4_$2| |sm_$1_$2| |obj_$4| |f_$3_$2|) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |sm_$1_$2| |obj_$4| |f_$3_$2|) perm$N)) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |sm_$1_$2| |obj_$4| |f_$3_$2|) perm$R)) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$4_$2| |obj_$4| |f_$3_$2|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$4_$2| |obj_$4| |f_$3_$2|) perm$N))))))  :pattern ( (CanRead$ref$ |m_$4_$2| |sm_$1_$2| |obj_$4| |f_$3_$2|)))) :named ax_159))
   (assert (! (forall( (|m_$4_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$5| ref) (|f_$3_$3| Field$Mu$))(!(= (CanRead$Mu$ |m_$4_$3| |sm_$1_$3| |obj_$5| |f_$3_$3|) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |sm_$1_$3| |obj_$5| |f_$3_$3|) perm$N)) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |sm_$1_$3| |obj_$5| |f_$3_$3|) perm$R)) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$4_$3| |obj_$5| |f_$3_$3|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$4_$3| |obj_$5| |f_$3_$3|) perm$N))))))  :pattern ( (CanRead$Mu$ |m_$4_$3| |sm_$1_$3| |obj_$5| |f_$3_$3|)))) :named ax_160))
   (assert (! (forall( (|m_$4_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|sm_$1_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$6| ref) (|f_$3_$4| Field$Seq$Int$$))(!(= (CanRead$Seq$Int$$ |m_$4_$4| |sm_$1_$4| |obj_$6| |f_$3_$4|) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |sm_$1_$4| |obj_$6| |f_$3_$4|) perm$N)) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |sm_$1_$4| |obj_$6| |f_$3_$4|) perm$R)) (or (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$4_$4| |obj_$6| |f_$3_$4|) perm$R)) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$4_$4| |obj_$6| |f_$3_$4|) perm$N))))))  :pattern ( (CanRead$Seq$Int$$ |m_$4_$4| |sm_$1_$4| |obj_$6| |f_$3_$4|)))) :named ax_161))
   (assert (! (forall( (|m_$6_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$1_$0| ref) (|f_$5_$0| Field$Bool$))(!(= (CanWrite$Bool$ |m_$6_$0| |obj_$1_$0| |f_$5_$0|) (and (= Permission$FullFraction (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$6_$0| |obj_$1_$0| |f_$5_$0|) perm$R)) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$6_$0| |obj_$1_$0| |f_$5_$0|) perm$N) 0)))  :pattern ( (CanWrite$Bool$ |m_$6_$0| |obj_$1_$0| |f_$5_$0|)))) :named ax_162))
   (assert (! (forall( (|m_$6_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$1_$1| ref) (|f_$5_$1| Field$Int$))(!(= (CanWrite$Int$ |m_$6_$1| |obj_$1_$1| |f_$5_$1|) (and (= Permission$FullFraction (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$6_$1| |obj_$1_$1| |f_$5_$1|) perm$R)) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$6_$1| |obj_$1_$1| |f_$5_$1|) perm$N) 0)))  :pattern ( (CanWrite$Int$ |m_$6_$1| |obj_$1_$1| |f_$5_$1|)))) :named ax_163))
   (assert (! (forall( (|m_$6_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$1_$2| ref) (|f_$5_$2| Field$ref$))(!(= (CanWrite$ref$ |m_$6_$2| |obj_$1_$2| |f_$5_$2|) (and (= Permission$FullFraction (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$6_$2| |obj_$1_$2| |f_$5_$2|) perm$R)) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$6_$2| |obj_$1_$2| |f_$5_$2|) perm$N) 0)))  :pattern ( (CanWrite$ref$ |m_$6_$2| |obj_$1_$2| |f_$5_$2|)))) :named ax_164))
   (assert (! (forall( (|m_$6_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$1_$3| ref) (|f_$5_$3| Field$Mu$))(!(= (CanWrite$Mu$ |m_$6_$3| |obj_$1_$3| |f_$5_$3|) (and (= Permission$FullFraction (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$6_$3| |obj_$1_$3| |f_$5_$3|) perm$R)) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$6_$3| |obj_$1_$3| |f_$5_$3|) perm$N) 0)))  :pattern ( (CanWrite$Mu$ |m_$6_$3| |obj_$1_$3| |f_$5_$3|)))) :named ax_165))
   (assert (! (forall( (|m_$6_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|obj_$1_$4| ref) (|f_$5_$4| Field$Seq$Int$$))(!(= (CanWrite$Seq$Int$$ |m_$6_$4| |obj_$1_$4| |f_$5_$4|) (and (= Permission$FullFraction (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$6_$4| |obj_$1_$4| |f_$5_$4|) perm$R)) (= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$6_$4| |obj_$1_$4| |f_$5_$4|) perm$N) 0)))  :pattern ( (CanWrite$Seq$Int$$ |m_$6_$4| |obj_$1_$4| |f_$5_$4|)))) :named ax_166))
   (assert (! (forall( (|m_$7| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@))(!(= (IsGoodMask |m_$7|) (and (forall( (|o_$14_$4| ref) (|f_$6_$4| Field$Seq$Int$$))(and (and (=> (NonPredicateField$Seq$Int$$ |f_$6_$4|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7| |o_$14_$4| |f_$6_$4|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7| |o_$14_$4| |f_$6_$4|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7| |o_$14_$4| |f_$6_$4|) perm$R) Permission$FullFraction)))) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7| |o_$14_$4| |f_$6_$4|) perm$R))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7| |o_$14_$4| |f_$6_$4|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$7| |o_$14_$4| |f_$6_$4|) perm$R))))) (and (forall( (|o_$14_$3| ref) (|f_$6_$3| Field$Mu$))(and (and (=> (NonPredicateField$Mu$ |f_$6_$3|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$R) Permission$FullFraction)))) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$R))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$7| |o_$14_$3| |f_$6_$3|) perm$R))))) (and (forall( (|o_$14_$2| ref) (|f_$6_$2| Field$ref$))(and (and (=> (NonPredicateField$ref$ |f_$6_$2|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$R) Permission$FullFraction)))) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$R))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$7| |o_$14_$2| |f_$6_$2|) perm$R))))) (and (forall( (|o_$14_$1| ref) (|f_$6_$1| Field$Int$))(and (and (=> (NonPredicateField$Int$ |f_$6_$1|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$R) Permission$FullFraction)))) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$R))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$7| |o_$14_$1| |f_$6_$1|) perm$R))))) (forall( (|o_$14_$0| ref) (|f_$6_$0| Field$Bool$))(and (and (=> (NonPredicateField$Bool$ |f_$6_$0|) (and (<= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$R) Permission$FullFraction) (=> (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$N)) (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$R) Permission$FullFraction)))) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$R))) (=> (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$N) 0) (< 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$7| |o_$14_$0| |f_$6_$0|) perm$R))))))))))  :pattern ( (IsGoodMask |m_$7|)))) :named ax_167))
   (assert (! (forall( (|m_$9_$0| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$0| ref) (|f_$7_$0| Field$Bool$) (|howMuch_$3| Int) (|q_$0_$0| ref) (|g_$4| Field$Bool$))(!(= (ite$Int$ (and (= |o_$16_$0| |q_$0_$0|) (= |f_$7_$0| |g_$4|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$0| |q_$0_$0| |g_$4|) perm$R) |howMuch_$3|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$0| |q_$0_$0| |g_$4|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Bool$ |m_$9_$0| |o_$16_$0| |f_$7_$0| |howMuch_$3|) |q_$0_$0| |g_$4|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Bool$ |m_$9_$0| |o_$16_$0| |f_$7_$0| |howMuch_$3|) |q_$0_$0| |g_$4|) perm$R)))) :named ax_168))
   (assert (! (forall( (|m_$9_$1| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$1| ref) (|f_$7_$1| Field$Int$) (|howMuch_$4| Int) (|q_$0_$1| ref) (|g_$5| Field$Bool$))(!(= (ite$Int$ (and (= |o_$16_$1| |q_$0_$1|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$1| |q_$0_$1| |g_$5|) perm$R) |howMuch_$4|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$1| |q_$0_$1| |g_$5|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Int$ |m_$9_$1| |o_$16_$1| |f_$7_$1| |howMuch_$4|) |q_$0_$1| |g_$5|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Int$ |m_$9_$1| |o_$16_$1| |f_$7_$1| |howMuch_$4|) |q_$0_$1| |g_$5|) perm$R)))) :named ax_169))
   (assert (! (forall( (|m_$9_$10| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$10| ref) (|f_$7_$10| Field$Bool$) (|howMuch_$13| Int) (|q_$0_$10| ref) (|g_$14| Field$ref$))(!(= (ite$Int$ (and (= |o_$16_$10| |q_$0_$10|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$10| |q_$0_$10| |g_$14|) perm$R) |howMuch_$13|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$10| |q_$0_$10| |g_$14|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Bool$ |m_$9_$10| |o_$16_$10| |f_$7_$10| |howMuch_$13|) |q_$0_$10| |g_$14|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Bool$ |m_$9_$10| |o_$16_$10| |f_$7_$10| |howMuch_$13|) |q_$0_$10| |g_$14|) perm$R)))) :named ax_170))
   (assert (! (forall( (|m_$9_$11| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$11| ref) (|f_$7_$11| Field$Int$) (|howMuch_$14| Int) (|q_$0_$11| ref) (|g_$15| Field$ref$))(!(= (ite$Int$ (and (= |o_$16_$11| |q_$0_$11|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$11| |q_$0_$11| |g_$15|) perm$R) |howMuch_$14|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$11| |q_$0_$11| |g_$15|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Int$ |m_$9_$11| |o_$16_$11| |f_$7_$11| |howMuch_$14|) |q_$0_$11| |g_$15|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Int$ |m_$9_$11| |o_$16_$11| |f_$7_$11| |howMuch_$14|) |q_$0_$11| |g_$15|) perm$R)))) :named ax_171))
   (assert (! (forall( (|m_$9_$12| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$12| ref) (|f_$7_$12| Field$ref$) (|howMuch_$15| Int) (|q_$0_$12| ref) (|g_$16| Field$ref$))(!(= (ite$Int$ (and (= |o_$16_$12| |q_$0_$12|) (= |f_$7_$12| |g_$16|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$12| |q_$0_$12| |g_$16|) perm$R) |howMuch_$15|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$12| |q_$0_$12| |g_$16|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$ref$ |m_$9_$12| |o_$16_$12| |f_$7_$12| |howMuch_$15|) |q_$0_$12| |g_$16|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$ref$ |m_$9_$12| |o_$16_$12| |f_$7_$12| |howMuch_$15|) |q_$0_$12| |g_$16|) perm$R)))) :named ax_172))
   (assert (! (forall( (|m_$9_$13| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$13| ref) (|f_$7_$13| Field$Mu$) (|howMuch_$16| Int) (|q_$0_$13| ref) (|g_$17| Field$ref$))(!(= (ite$Int$ (and (= |o_$16_$13| |q_$0_$13|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$13| |q_$0_$13| |g_$17|) perm$R) |howMuch_$16|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$13| |q_$0_$13| |g_$17|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Mu$ |m_$9_$13| |o_$16_$13| |f_$7_$13| |howMuch_$16|) |q_$0_$13| |g_$17|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Mu$ |m_$9_$13| |o_$16_$13| |f_$7_$13| |howMuch_$16|) |q_$0_$13| |g_$17|) perm$R)))) :named ax_173))
   (assert (! (forall( (|m_$9_$14| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$14| ref) (|f_$7_$14| Field$Seq$Int$$) (|howMuch_$17| Int) (|q_$0_$14| ref) (|g_$18| Field$ref$))(!(= (ite$Int$ (and (= |o_$16_$14| |q_$0_$14|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$14| |q_$0_$14| |g_$18|) perm$R) |howMuch_$17|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ |m_$9_$14| |q_$0_$14| |g_$18|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Seq$Int$$ |m_$9_$14| |o_$16_$14| |f_$7_$14| |howMuch_$17|) |q_$0_$14| |g_$18|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ (DecPerm$Seq$Int$$ |m_$9_$14| |o_$16_$14| |f_$7_$14| |howMuch_$17|) |q_$0_$14| |g_$18|) perm$R)))) :named ax_174))
   (assert (! (forall( (|m_$9_$15| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$15| ref) (|f_$7_$15| Field$Bool$) (|howMuch_$18| Int) (|q_$0_$15| ref) (|g_$19| Field$Mu$))(!(= (ite$Int$ (and (= |o_$16_$15| |q_$0_$15|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$15| |q_$0_$15| |g_$19|) perm$R) |howMuch_$18|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$15| |q_$0_$15| |g_$19|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Bool$ |m_$9_$15| |o_$16_$15| |f_$7_$15| |howMuch_$18|) |q_$0_$15| |g_$19|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Bool$ |m_$9_$15| |o_$16_$15| |f_$7_$15| |howMuch_$18|) |q_$0_$15| |g_$19|) perm$R)))) :named ax_175))
   (assert (! (forall( (|m_$9_$16| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$16| ref) (|f_$7_$16| Field$Int$) (|howMuch_$19| Int) (|q_$0_$16| ref) (|g_$20| Field$Mu$))(!(= (ite$Int$ (and (= |o_$16_$16| |q_$0_$16|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$16| |q_$0_$16| |g_$20|) perm$R) |howMuch_$19|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$16| |q_$0_$16| |g_$20|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Int$ |m_$9_$16| |o_$16_$16| |f_$7_$16| |howMuch_$19|) |q_$0_$16| |g_$20|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Int$ |m_$9_$16| |o_$16_$16| |f_$7_$16| |howMuch_$19|) |q_$0_$16| |g_$20|) perm$R)))) :named ax_176))
   (assert (! (forall( (|m_$9_$17| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$17| ref) (|f_$7_$17| Field$ref$) (|howMuch_$20| Int) (|q_$0_$17| ref) (|g_$21| Field$Mu$))(!(= (ite$Int$ (and (= |o_$16_$17| |q_$0_$17|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$17| |q_$0_$17| |g_$21|) perm$R) |howMuch_$20|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$17| |q_$0_$17| |g_$21|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$ref$ |m_$9_$17| |o_$16_$17| |f_$7_$17| |howMuch_$20|) |q_$0_$17| |g_$21|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$ref$ |m_$9_$17| |o_$16_$17| |f_$7_$17| |howMuch_$20|) |q_$0_$17| |g_$21|) perm$R)))) :named ax_177))
   (assert (! (forall( (|m_$9_$18| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$18| ref) (|f_$7_$18| Field$Mu$) (|howMuch_$21| Int) (|q_$0_$18| ref) (|g_$22| Field$Mu$))(!(= (ite$Int$ (and (= |o_$16_$18| |q_$0_$18|) (= |f_$7_$18| |g_$22|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$18| |q_$0_$18| |g_$22|) perm$R) |howMuch_$21|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$18| |q_$0_$18| |g_$22|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Mu$ |m_$9_$18| |o_$16_$18| |f_$7_$18| |howMuch_$21|) |q_$0_$18| |g_$22|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Mu$ |m_$9_$18| |o_$16_$18| |f_$7_$18| |howMuch_$21|) |q_$0_$18| |g_$22|) perm$R)))) :named ax_178))
   (assert (! (forall( (|m_$9_$19| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$19| ref) (|f_$7_$19| Field$Seq$Int$$) (|howMuch_$22| Int) (|q_$0_$19| ref) (|g_$23| Field$Mu$))(!(= (ite$Int$ (and (= |o_$16_$19| |q_$0_$19|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$19| |q_$0_$19| |g_$23|) perm$R) |howMuch_$22|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ |m_$9_$19| |q_$0_$19| |g_$23|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Seq$Int$$ |m_$9_$19| |o_$16_$19| |f_$7_$19| |howMuch_$22|) |q_$0_$19| |g_$23|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ (DecPerm$Seq$Int$$ |m_$9_$19| |o_$16_$19| |f_$7_$19| |howMuch_$22|) |q_$0_$19| |g_$23|) perm$R)))) :named ax_179))
   (assert (! (forall( (|m_$9_$2| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$2| ref) (|f_$7_$2| Field$ref$) (|howMuch_$5| Int) (|q_$0_$2| ref) (|g_$6| Field$Bool$))(!(= (ite$Int$ (and (= |o_$16_$2| |q_$0_$2|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$2| |q_$0_$2| |g_$6|) perm$R) |howMuch_$5|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$2| |q_$0_$2| |g_$6|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$ref$ |m_$9_$2| |o_$16_$2| |f_$7_$2| |howMuch_$5|) |q_$0_$2| |g_$6|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$ref$ |m_$9_$2| |o_$16_$2| |f_$7_$2| |howMuch_$5|) |q_$0_$2| |g_$6|) perm$R)))) :named ax_180))
   (assert (! (forall( (|m_$9_$20| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$20| ref) (|f_$7_$20| Field$Bool$) (|howMuch_$23| Int) (|q_$0_$20| ref) (|g_$24| Field$Seq$Int$$))(!(= (ite$Int$ (and (= |o_$16_$20| |q_$0_$20|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$20| |q_$0_$20| |g_$24|) perm$R) |howMuch_$23|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$20| |q_$0_$20| |g_$24|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Bool$ |m_$9_$20| |o_$16_$20| |f_$7_$20| |howMuch_$23|) |q_$0_$20| |g_$24|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Bool$ |m_$9_$20| |o_$16_$20| |f_$7_$20| |howMuch_$23|) |q_$0_$20| |g_$24|) perm$R)))) :named ax_181))
   (assert (! (forall( (|m_$9_$21| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$21| ref) (|f_$7_$21| Field$Int$) (|howMuch_$24| Int) (|q_$0_$21| ref) (|g_$25| Field$Seq$Int$$))(!(= (ite$Int$ (and (= |o_$16_$21| |q_$0_$21|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$21| |q_$0_$21| |g_$25|) perm$R) |howMuch_$24|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$21| |q_$0_$21| |g_$25|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Int$ |m_$9_$21| |o_$16_$21| |f_$7_$21| |howMuch_$24|) |q_$0_$21| |g_$25|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Int$ |m_$9_$21| |o_$16_$21| |f_$7_$21| |howMuch_$24|) |q_$0_$21| |g_$25|) perm$R)))) :named ax_182))
   (assert (! (forall( (|m_$9_$22| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$22| ref) (|f_$7_$22| Field$ref$) (|howMuch_$25| Int) (|q_$0_$22| ref) (|g_$26| Field$Seq$Int$$))(!(= (ite$Int$ (and (= |o_$16_$22| |q_$0_$22|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$22| |q_$0_$22| |g_$26|) perm$R) |howMuch_$25|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$22| |q_$0_$22| |g_$26|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$ref$ |m_$9_$22| |o_$16_$22| |f_$7_$22| |howMuch_$25|) |q_$0_$22| |g_$26|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$ref$ |m_$9_$22| |o_$16_$22| |f_$7_$22| |howMuch_$25|) |q_$0_$22| |g_$26|) perm$R)))) :named ax_183))
   (assert (! (forall( (|m_$9_$23| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$23| ref) (|f_$7_$23| Field$Mu$) (|howMuch_$26| Int) (|q_$0_$23| ref) (|g_$27| Field$Seq$Int$$))(!(= (ite$Int$ (and (= |o_$16_$23| |q_$0_$23|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$23| |q_$0_$23| |g_$27|) perm$R) |howMuch_$26|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$23| |q_$0_$23| |g_$27|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Mu$ |m_$9_$23| |o_$16_$23| |f_$7_$23| |howMuch_$26|) |q_$0_$23| |g_$27|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Mu$ |m_$9_$23| |o_$16_$23| |f_$7_$23| |howMuch_$26|) |q_$0_$23| |g_$27|) perm$R)))) :named ax_184))
   (assert (! (forall( (|m_$9_$24| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$24| ref) (|f_$7_$24| Field$Seq$Int$$) (|howMuch_$27| Int) (|q_$0_$24| ref) (|g_$28| Field$Seq$Int$$))(!(= (ite$Int$ (and (= |o_$16_$24| |q_$0_$24|) (= |f_$7_$24| |g_$28|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$24| |q_$0_$24| |g_$28|) perm$R) |howMuch_$27|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ |m_$9_$24| |q_$0_$24| |g_$28|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Seq$Int$$ |m_$9_$24| |o_$16_$24| |f_$7_$24| |howMuch_$27|) |q_$0_$24| |g_$28|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ (DecPerm$Seq$Int$$ |m_$9_$24| |o_$16_$24| |f_$7_$24| |howMuch_$27|) |q_$0_$24| |g_$28|) perm$R)))) :named ax_185))
   (assert (! (forall( (|m_$9_$3| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$3| ref) (|f_$7_$3| Field$Mu$) (|howMuch_$6| Int) (|q_$0_$3| ref) (|g_$7| Field$Bool$))(!(= (ite$Int$ (and (= |o_$16_$3| |q_$0_$3|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$3| |q_$0_$3| |g_$7|) perm$R) |howMuch_$6|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$3| |q_$0_$3| |g_$7|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Mu$ |m_$9_$3| |o_$16_$3| |f_$7_$3| |howMuch_$6|) |q_$0_$3| |g_$7|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Mu$ |m_$9_$3| |o_$16_$3| |f_$7_$3| |howMuch_$6|) |q_$0_$3| |g_$7|) perm$R)))) :named ax_186))
   (assert (! (forall( (|m_$9_$4| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$4| ref) (|f_$7_$4| Field$Seq$Int$$) (|howMuch_$7| Int) (|q_$0_$4| ref) (|g_$8| Field$Bool$))(!(= (ite$Int$ (and (= |o_$16_$4| |q_$0_$4|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$4| |q_$0_$4| |g_$8|) perm$R) |howMuch_$7|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ |m_$9_$4| |q_$0_$4| |g_$8|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Seq$Int$$ |m_$9_$4| |o_$16_$4| |f_$7_$4| |howMuch_$7|) |q_$0_$4| |g_$8|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ (DecPerm$Seq$Int$$ |m_$9_$4| |o_$16_$4| |f_$7_$4| |howMuch_$7|) |q_$0_$4| |g_$8|) perm$R)))) :named ax_187))
   (assert (! (forall( (|m_$9_$5| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$5| ref) (|f_$7_$5| Field$Bool$) (|howMuch_$8| Int) (|q_$0_$5| ref) (|g_$9| Field$Int$))(!(= (ite$Int$ (and (= |o_$16_$5| |q_$0_$5|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$5| |q_$0_$5| |g_$9|) perm$R) |howMuch_$8|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$5| |q_$0_$5| |g_$9|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Bool$ |m_$9_$5| |o_$16_$5| |f_$7_$5| |howMuch_$8|) |q_$0_$5| |g_$9|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Bool$ |m_$9_$5| |o_$16_$5| |f_$7_$5| |howMuch_$8|) |q_$0_$5| |g_$9|) perm$R)))) :named ax_188))
   (assert (! (forall( (|m_$9_$6| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$6| ref) (|f_$7_$6| Field$Int$) (|howMuch_$9| Int) (|q_$0_$6| ref) (|g_$10| Field$Int$))(!(= (ite$Int$ (and (= |o_$16_$6| |q_$0_$6|) (= |f_$7_$6| |g_$10|)) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$6| |q_$0_$6| |g_$10|) perm$R) |howMuch_$9|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$6| |q_$0_$6| |g_$10|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Int$ |m_$9_$6| |o_$16_$6| |f_$7_$6| |howMuch_$9|) |q_$0_$6| |g_$10|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Int$ |m_$9_$6| |o_$16_$6| |f_$7_$6| |howMuch_$9|) |q_$0_$6| |g_$10|) perm$R)))) :named ax_189))
   (assert (! (forall( (|m_$9_$7| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$7| ref) (|f_$7_$7| Field$ref$) (|howMuch_$10| Int) (|q_$0_$7| ref) (|g_$11| Field$Int$))(!(= (ite$Int$ (and (= |o_$16_$7| |q_$0_$7|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$7| |q_$0_$7| |g_$11|) perm$R) |howMuch_$10|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$7| |q_$0_$7| |g_$11|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$ref$ |m_$9_$7| |o_$16_$7| |f_$7_$7| |howMuch_$10|) |q_$0_$7| |g_$11|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$ref$ |m_$9_$7| |o_$16_$7| |f_$7_$7| |howMuch_$10|) |q_$0_$7| |g_$11|) perm$R)))) :named ax_190))
   (assert (! (forall( (|m_$9_$8| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$8| ref) (|f_$7_$8| Field$Mu$) (|howMuch_$11| Int) (|q_$0_$8| ref) (|g_$12| Field$Int$))(!(= (ite$Int$ (and (= |o_$16_$8| |q_$0_$8|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$8| |q_$0_$8| |g_$12|) perm$R) |howMuch_$11|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$8| |q_$0_$8| |g_$12|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Mu$ |m_$9_$8| |o_$16_$8| |f_$7_$8| |howMuch_$11|) |q_$0_$8| |g_$12|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Mu$ |m_$9_$8| |o_$16_$8| |f_$7_$8| |howMuch_$11|) |q_$0_$8| |g_$12|) perm$R)))) :named ax_191))
   (assert (! (forall( (|m_$9_$9| $@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@) (|o_$16_$9| ref) (|f_$7_$9| Field$Seq$Int$$) (|howMuch_$12| Int) (|q_$0_$9| ref) (|g_$13| Field$Int$))(!(= (ite$Int$ (and (= |o_$16_$9| |q_$0_$9|) false) (- (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$9| |q_$0_$9| |g_$13|) perm$R) |howMuch_$12|) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ |m_$9_$9| |q_$0_$9| |g_$13|) perm$R)) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Seq$Int$$ |m_$9_$9| |o_$16_$9| |f_$7_$9| |howMuch_$12|) |q_$0_$9| |g_$13|) perm$R))  :pattern ( (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ (DecPerm$Seq$Int$$ |m_$9_$9| |o_$16_$9| |f_$7_$9| |howMuch_$12|) |q_$0_$9| |g_$13|) perm$R)))) :named ax_192))
   (assert (! (forall( (|m| Mu) (|n_$0| Mu))(!(not (and (MuBelow |n_$0| |m|) (MuBelow |m| |n_$0|)))  :pattern ( (MuBelow |m| |n_$0|) (MuBelow |n_$0| |m|)))) :named ax_193))
   (assert (! (forall( (|min_$0| Int) (|max_$0| Int) (|j_$4| Int))(!(=> (and (< |j_$4| (- |max_$0| |min_$0|)) (<= 0 |j_$4|)) (= (Seq@Index$Int$ (Seq@Range |min_$0| |max_$0|) |j_$4|) (+ |min_$0| |j_$4|)))  :pattern ( (Seq@Index$Int$ (Seq@Range |min_$0| |max_$0|) |j_$4|)))) :named ax_194))
   (assert (! (forall( (|min| Int) (|max| Int))(!(and (=> (< |min| |max|) (= (Seq@Length$Int$ (Seq@Range |min| |max|)) (- |max| |min|))) (=> (<= |max| |min|) (= (Seq@Length$Int$ (Seq@Range |min| |max|)) 0)))  :pattern ( (Seq@Length$Int$ (Seq@Range |min| |max|))))) :named ax_195))
   (assert (! (forall( (|n| Int))(!(= (* |n| Permission$denominator) (Fractions |n|))  :pattern ( (Fractions |n|)))) :named ax_196))
   (assert (! (forall( (|o_$22| ref))(= (MapRead$$@Map@@ref@To@Int@@$ ZeroCredits |o_$22|) 0)) :named ax_197))
   (assert (! (forall( (|o_$25| ref) (|f_$16| Field$Bool$) (|pc_$0| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Bool$ ZeroMask |o_$25| |f_$16|) |pc_$0|) 0)) :named ax_198))
   (assert (! (forall( (|o_$26| ref) (|f_$17| Field$Int$) (|pc_$1| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask |o_$26| |f_$17|) |pc_$1|) 0)) :named ax_199))
   (assert (! (forall( (|o_$27| ref) (|f_$18| Field$ref$) (|pc_$2| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ ZeroMask |o_$27| |f_$18|) |pc_$2|) 0)) :named ax_200))
   (assert (! (forall( (|o_$28| ref) (|f_$19| Field$Mu$) (|pc_$3| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Mu$ ZeroMask |o_$28| |f_$19|) |pc_$3|) 0)) :named ax_201))
   (assert (! (forall( (|o_$29| ref) (|f_$20| Field$Seq$Int$$) (|pc_$4| PermissionComponent))(= (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ ZeroMask |o_$29| |f_$20|) |pc_$4|) 0)) :named ax_202))
   (assert (! (forall( (|s_$0_$0| Seq$Int$))(!(=> (= (Seq@Length$Int$ |s_$0_$0|) 0) (= |s_$0_$0| Seq@Empty$Int$))  :pattern ( (Seq@Length$Int$ |s_$0_$0|)))) :named ax_203))
   (assert (! (forall( (|s_$0_$1| Seq$ref$))(!(=> (= (Seq@Length$ref$ |s_$0_$1|) 0) (= |s_$0_$1| Seq@Empty$ref$))  :pattern ( (Seq@Length$ref$ |s_$0_$1|)))) :named ax_204))
   (assert (! (forall( (|s_$1_$0| Seq$Int$) (|i_$5| Int) (|v_$2| Int) (|len_$2| Int))(!(=> (<= 0 |len_$2|) (= (Seq@Length$Int$ (Seq@Build$Int$ |s_$1_$0| |i_$5| |v_$2| |len_$2|)) |len_$2|))  :pattern ( (Seq@Length$Int$ (Seq@Build$Int$ |s_$1_$0| |i_$5| |v_$2| |len_$2|))))) :named ax_205))
   (assert (! (forall( (|s_$1_$1| Seq$ref$) (|i_$6| Int) (|v_$3| ref) (|len_$3| Int))(!(=> (<= 0 |len_$3|) (= (Seq@Length$ref$ (Seq@Build$ref$ |s_$1_$1| |i_$6| |v_$3| |len_$3|)) |len_$3|))  :pattern ( (Seq@Length$ref$ (Seq@Build$ref$ |s_$1_$1| |i_$6| |v_$3| |len_$3|))))) :named ax_206))
   (assert (! (forall( (|s_$10_$0| Seq$Int$) (|n_$11_$0| Int) (|j_$3_$0| Int))(!(=> (and (< |j_$3_$0| (- (Seq@Length$Int$ |s_$10_$0|) |n_$11_$0|)) (and (<= 0 |n_$11_$0|) (<= 0 |j_$3_$0|))) (= (Seq@Index$Int$ (Seq@Drop$Int$ |s_$10_$0| |n_$11_$0|) |j_$3_$0|) (Seq@Index$Int$ |s_$10_$0| (+ |j_$3_$0| |n_$11_$0|))))  :weight  25 :pattern ( (Seq@Index$Int$ (Seq@Drop$Int$ |s_$10_$0| |n_$11_$0|) |j_$3_$0|)))) :named ax_207))
   (assert (! (forall( (|s_$10_$1| Seq$ref$) (|n_$11_$1| Int) (|j_$3_$1| Int))(!(=> (and (< |j_$3_$1| (- (Seq@Length$ref$ |s_$10_$1|) |n_$11_$1|)) (and (<= 0 |n_$11_$1|) (<= 0 |j_$3_$1|))) (= (Seq@Index$ref$ (Seq@Drop$ref$ |s_$10_$1| |n_$11_$1|) |j_$3_$1|) (Seq@Index$ref$ |s_$10_$1| (+ |j_$3_$1| |n_$11_$1|))))  :weight  25 :pattern ( (Seq@Index$ref$ (Seq@Drop$ref$ |s_$10_$1| |n_$11_$1|) |j_$3_$1|)))) :named ax_208))
   (assert (! (forall( (|s_$11_$0| Seq$Int$) (|t_$1_$0| Seq$Int$))(!(and (= |t_$1_$0| (Seq@Drop$Int$ (Seq@Append$Int$ |s_$11_$0| |t_$1_$0|) (Seq@Length$Int$ |s_$11_$0|))) (= (Seq@Take$Int$ (Seq@Append$Int$ |s_$11_$0| |t_$1_$0|) (Seq@Length$Int$ |s_$11_$0|)) |s_$11_$0|))  :pattern ( (Seq@Append$Int$ |s_$11_$0| |t_$1_$0|)))) :named ax_209))
   (assert (! (forall( (|s_$11_$1| Seq$ref$) (|t_$1_$1| Seq$ref$))(!(and (= |t_$1_$1| (Seq@Drop$ref$ (Seq@Append$ref$ |s_$11_$1| |t_$1_$1|) (Seq@Length$ref$ |s_$11_$1|))) (= (Seq@Take$ref$ (Seq@Append$ref$ |s_$11_$1| |t_$1_$1|) (Seq@Length$ref$ |s_$11_$1|)) |s_$11_$1|))  :pattern ( (Seq@Append$ref$ |s_$11_$1| |t_$1_$1|)))) :named ax_210))
   (assert (! (forall( (|s_$12| Seq$Int$))(!(<= 0 (Seq@Length$Int$ |s_$12|))  :pattern ( (Seq@Length$Int$ |s_$12|)))) :named ax_211))
   (assert (! (forall( (|s_$13| Seq$ref$))(!(<= 0 (Seq@Length$ref$ |s_$13|))  :pattern ( (Seq@Length$ref$ |s_$13|)))) :named ax_212))
   (assert (! (forall( (|s_$2_$0| Seq$Int$) (|i_$0_$0| Int) (|v_$0_$0| Int) (|len_$0_$0| Int) (|n_$4_$0| Int))(!(=> (and (< |n_$4_$0| |len_$0_$0|) (<= 0 |n_$4_$0|)) (and (=> (= |n_$4_$0| |i_$0_$0|) (= |v_$0_$0| (Seq@Index$Int$ (Seq@Build$Int$ |s_$2_$0| |i_$0_$0| |v_$0_$0| |len_$0_$0|) |n_$4_$0|))) (=> (not (= |n_$4_$0| |i_$0_$0|)) (= (Seq@Index$Int$ (Seq@Build$Int$ |s_$2_$0| |i_$0_$0| |v_$0_$0| |len_$0_$0|) |n_$4_$0|) (Seq@Index$Int$ |s_$2_$0| |n_$4_$0|)))))  :pattern ( (Seq@Index$Int$ (Seq@Build$Int$ |s_$2_$0| |i_$0_$0| |v_$0_$0| |len_$0_$0|) |n_$4_$0|)))) :named ax_213))
   (assert (! (forall( (|s_$2_$1| Seq$ref$) (|i_$0_$1| Int) (|v_$0_$1| ref) (|len_$0_$1| Int) (|n_$4_$1| Int))(!(=> (and (< |n_$4_$1| |len_$0_$1|) (<= 0 |n_$4_$1|)) (and (=> (= |n_$4_$1| |i_$0_$1|) (= |v_$0_$1| (Seq@Index$ref$ (Seq@Build$ref$ |s_$2_$1| |i_$0_$1| |v_$0_$1| |len_$0_$1|) |n_$4_$1|))) (=> (not (= |n_$4_$1| |i_$0_$1|)) (= (Seq@Index$ref$ (Seq@Build$ref$ |s_$2_$1| |i_$0_$1| |v_$0_$1| |len_$0_$1|) |n_$4_$1|) (Seq@Index$ref$ |s_$2_$1| |n_$4_$1|)))))  :pattern ( (Seq@Index$ref$ (Seq@Build$ref$ |s_$2_$1| |i_$0_$1| |v_$0_$1| |len_$0_$1|) |n_$4_$1|)))) :named ax_214))
   (assert (! (forall( (|s_$3_$0| Seq$Int$) (|x_$0_$0| Int))(!(= (Seq@Contains$Int$ |s_$3_$0| |x_$0_$0|) (exists( (|i_$1_$1| Int))(!(and (= |x_$0_$0| (Seq@Index$Int$ |s_$3_$0| |i_$1_$1|)) (and (< |i_$1_$1| (Seq@Length$Int$ |s_$3_$0|)) (<= 0 |i_$1_$1|)))  :pattern ( (Seq@Index$Int$ |s_$3_$0| |i_$1_$1|)))))  :pattern ( (Seq@Contains$Int$ |s_$3_$0| |x_$0_$0|)))) :named ax_215))
   (assert (! (forall( (|s_$3_$1| Seq$ref$) (|x_$0_$1| ref))(!(= (Seq@Contains$ref$ |s_$3_$1| |x_$0_$1|) (exists( (|i_$1_$3| Int))(!(and (= |x_$0_$1| (Seq@Index$ref$ |s_$3_$1| |i_$1_$3|)) (and (< |i_$1_$3| (Seq@Length$ref$ |s_$3_$1|)) (<= 0 |i_$1_$3|)))  :pattern ( (Seq@Index$ref$ |s_$3_$1| |i_$1_$3|)))))  :pattern ( (Seq@Contains$ref$ |s_$3_$1| |x_$0_$1|)))) :named ax_216))
   (assert (! (forall( (|s_$4_$0| Seq$Int$) (|i_$2_$0| Int) (|v_$1_$0| Int) (|len_$1_$0| Int) (|x_$3_$0| Int))(!(= (Seq@Contains$Int$ (Seq@Build$Int$ |s_$4_$0| |i_$2_$0| |v_$1_$0| |len_$1_$0|) |x_$3_$0|) (or (and (= |x_$3_$0| |v_$1_$0|) (and (< |i_$2_$0| |len_$1_$0|) (<= 0 |i_$2_$0|))) (exists( (|j_$6| Int))(!(and (= |x_$3_$0| (Seq@Index$Int$ |s_$4_$0| |j_$6|)) (and (and (< |j_$6| |len_$1_$0|) (and (< |j_$6| (Seq@Length$Int$ |s_$4_$0|)) (<= 0 |j_$6|))) (not (= |j_$6| |i_$2_$0|))))  :pattern ( (Seq@Index$Int$ |s_$4_$0| |j_$6|))))))  :pattern ( (Seq@Contains$Int$ (Seq@Build$Int$ |s_$4_$0| |i_$2_$0| |v_$1_$0| |len_$1_$0|) |x_$3_$0|)))) :named ax_217))
   (assert (! (forall( (|s_$4_$1| Seq$ref$) (|i_$2_$1| Int) (|v_$1_$1| ref) (|len_$1_$1| Int) (|x_$3_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Build$ref$ |s_$4_$1| |i_$2_$1| |v_$1_$1| |len_$1_$1|) |x_$3_$1|) (or (and (= |x_$3_$1| |v_$1_$1|) (and (< |i_$2_$1| |len_$1_$1|) (<= 0 |i_$2_$1|))) (exists( (|j_$8| Int))(!(and (= |x_$3_$1| (Seq@Index$ref$ |s_$4_$1| |j_$8|)) (and (and (< |j_$8| |len_$1_$1|) (and (< |j_$8| (Seq@Length$ref$ |s_$4_$1|)) (<= 0 |j_$8|))) (not (= |j_$8| |i_$2_$1|))))  :pattern ( (Seq@Index$ref$ |s_$4_$1| |j_$8|))))))  :pattern ( (Seq@Contains$ref$ (Seq@Build$ref$ |s_$4_$1| |i_$2_$1| |v_$1_$1| |len_$1_$1|) |x_$3_$1|)))) :named ax_218))
   (assert (! (forall( (|s_$5_$0| Seq$Int$) (|n_$5_$0| Int) (|x_$4_$0| Int))(!(= (Seq@Contains$Int$ (Seq@Take$Int$ |s_$5_$0| |n_$5_$0|) |x_$4_$0|) (exists( (|i_$3_$1| Int))(!(and (= |x_$4_$0| (Seq@Index$Int$ |s_$5_$0| |i_$3_$1|)) (and (< |i_$3_$1| (Seq@Length$Int$ |s_$5_$0|)) (and (< |i_$3_$1| |n_$5_$0|) (<= 0 |i_$3_$1|))))  :pattern ( (Seq@Index$Int$ |s_$5_$0| |i_$3_$1|)))))  :pattern ( (Seq@Contains$Int$ (Seq@Take$Int$ |s_$5_$0| |n_$5_$0|) |x_$4_$0|)))) :named ax_219))
   (assert (! (forall( (|s_$5_$1| Seq$ref$) (|n_$5_$1| Int) (|x_$4_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Take$ref$ |s_$5_$1| |n_$5_$1|) |x_$4_$1|) (exists( (|i_$3_$3| Int))(!(and (= |x_$4_$1| (Seq@Index$ref$ |s_$5_$1| |i_$3_$3|)) (and (< |i_$3_$3| (Seq@Length$ref$ |s_$5_$1|)) (and (< |i_$3_$3| |n_$5_$1|) (<= 0 |i_$3_$3|))))  :pattern ( (Seq@Index$ref$ |s_$5_$1| |i_$3_$3|)))))  :pattern ( (Seq@Contains$ref$ (Seq@Take$ref$ |s_$5_$1| |n_$5_$1|) |x_$4_$1|)))) :named ax_220))
   (assert (! (forall( (|s_$6_$0| Seq$Int$) (|n_$6_$0| Int) (|x_$5_$0| Int))(!(= (Seq@Contains$Int$ (Seq@Drop$Int$ |s_$6_$0| |n_$6_$0|) |x_$5_$0|) (exists( (|i_$4_$1| Int))(!(and (= |x_$5_$0| (Seq@Index$Int$ |s_$6_$0| |i_$4_$1|)) (and (< |i_$4_$1| (Seq@Length$Int$ |s_$6_$0|)) (and (<= |n_$6_$0| |i_$4_$1|) (<= 0 |n_$6_$0|))))  :pattern ( (Seq@Index$Int$ |s_$6_$0| |i_$4_$1|)))))  :pattern ( (Seq@Contains$Int$ (Seq@Drop$Int$ |s_$6_$0| |n_$6_$0|) |x_$5_$0|)))) :named ax_221))
   (assert (! (forall( (|s_$6_$1| Seq$ref$) (|n_$6_$1| Int) (|x_$5_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Drop$ref$ |s_$6_$1| |n_$6_$1|) |x_$5_$1|) (exists( (|i_$4_$3| Int))(!(and (= |x_$5_$1| (Seq@Index$ref$ |s_$6_$1| |i_$4_$3|)) (and (< |i_$4_$3| (Seq@Length$ref$ |s_$6_$1|)) (and (<= |n_$6_$1| |i_$4_$3|) (<= 0 |n_$6_$1|))))  :pattern ( (Seq@Index$ref$ |s_$6_$1| |i_$4_$3|)))))  :pattern ( (Seq@Contains$ref$ (Seq@Drop$ref$ |s_$6_$1| |n_$6_$1|) |x_$5_$1|)))) :named ax_222))
   (assert (! (forall( (|s_$7_$0| Seq$Int$) (|n_$8_$0| Int))(!(=> (<= 0 |n_$8_$0|) (and (=> (< (Seq@Length$Int$ |s_$7_$0|) |n_$8_$0|) (= (Seq@Length$Int$ (Seq@Take$Int$ |s_$7_$0| |n_$8_$0|)) (Seq@Length$Int$ |s_$7_$0|))) (=> (<= |n_$8_$0| (Seq@Length$Int$ |s_$7_$0|)) (= (Seq@Length$Int$ (Seq@Take$Int$ |s_$7_$0| |n_$8_$0|)) |n_$8_$0|))))  :pattern ( (Seq@Length$Int$ (Seq@Take$Int$ |s_$7_$0| |n_$8_$0|))))) :named ax_223))
   (assert (! (forall( (|s_$7_$1| Seq$ref$) (|n_$8_$1| Int))(!(=> (<= 0 |n_$8_$1|) (and (=> (< (Seq@Length$ref$ |s_$7_$1|) |n_$8_$1|) (= (Seq@Length$ref$ (Seq@Take$ref$ |s_$7_$1| |n_$8_$1|)) (Seq@Length$ref$ |s_$7_$1|))) (=> (<= |n_$8_$1| (Seq@Length$ref$ |s_$7_$1|)) (= (Seq@Length$ref$ (Seq@Take$ref$ |s_$7_$1| |n_$8_$1|)) |n_$8_$1|))))  :pattern ( (Seq@Length$ref$ (Seq@Take$ref$ |s_$7_$1| |n_$8_$1|))))) :named ax_224))
   (assert (! (forall( (|s_$8_$0| Seq$Int$) (|n_$9_$0| Int) (|j_$2_$0| Int))(!(=> (and (< |j_$2_$0| (Seq@Length$Int$ |s_$8_$0|)) (and (< |j_$2_$0| |n_$9_$0|) (<= 0 |j_$2_$0|))) (= (Seq@Index$Int$ (Seq@Take$Int$ |s_$8_$0| |n_$9_$0|) |j_$2_$0|) (Seq@Index$Int$ |s_$8_$0| |j_$2_$0|)))  :weight  25 :pattern ( (Seq@Index$Int$ (Seq@Take$Int$ |s_$8_$0| |n_$9_$0|) |j_$2_$0|)))) :named ax_225))
   (assert (! (forall( (|s_$8_$1| Seq$ref$) (|n_$9_$1| Int) (|j_$2_$1| Int))(!(=> (and (< |j_$2_$1| (Seq@Length$ref$ |s_$8_$1|)) (and (< |j_$2_$1| |n_$9_$1|) (<= 0 |j_$2_$1|))) (= (Seq@Index$ref$ (Seq@Take$ref$ |s_$8_$1| |n_$9_$1|) |j_$2_$1|) (Seq@Index$ref$ |s_$8_$1| |j_$2_$1|)))  :weight  25 :pattern ( (Seq@Index$ref$ (Seq@Take$ref$ |s_$8_$1| |n_$9_$1|) |j_$2_$1|)))) :named ax_226))
   (assert (! (forall( (|s_$9_$0| Seq$Int$) (|n_$10_$0| Int))(!(=> (<= 0 |n_$10_$0|) (and (=> (< (Seq@Length$Int$ |s_$9_$0|) |n_$10_$0|) (= (Seq@Length$Int$ (Seq@Drop$Int$ |s_$9_$0| |n_$10_$0|)) 0)) (=> (<= |n_$10_$0| (Seq@Length$Int$ |s_$9_$0|)) (= (Seq@Length$Int$ (Seq@Drop$Int$ |s_$9_$0| |n_$10_$0|)) (- (Seq@Length$Int$ |s_$9_$0|) |n_$10_$0|)))))  :pattern ( (Seq@Length$Int$ (Seq@Drop$Int$ |s_$9_$0| |n_$10_$0|))))) :named ax_227))
   (assert (! (forall( (|s_$9_$1| Seq$ref$) (|n_$10_$1| Int))(!(=> (<= 0 |n_$10_$1|) (and (=> (< (Seq@Length$ref$ |s_$9_$1|) |n_$10_$1|) (= (Seq@Length$ref$ (Seq@Drop$ref$ |s_$9_$1| |n_$10_$1|)) 0)) (=> (<= |n_$10_$1| (Seq@Length$ref$ |s_$9_$1|)) (= (Seq@Length$ref$ (Seq@Drop$ref$ |s_$9_$1| |n_$10_$1|)) (- (Seq@Length$ref$ |s_$9_$1|) |n_$10_$1|)))))  :pattern ( (Seq@Length$ref$ (Seq@Drop$ref$ |s_$9_$1| |n_$10_$1|))))) :named ax_228))
   (assert (! (forall( (|s0_$0_$0| Seq$Int$) (|s1_$0_$0| Seq$Int$) (|n_$3_$0| Int))(!(and (=> (<= (Seq@Length$Int$ |s0_$0_$0|) |n_$3_$0|) (= (Seq@Index$Int$ (Seq@Append$Int$ |s0_$0_$0| |s1_$0_$0|) |n_$3_$0|) (Seq@Index$Int$ |s1_$0_$0| (- |n_$3_$0| (Seq@Length$Int$ |s0_$0_$0|))))) (=> (< |n_$3_$0| (Seq@Length$Int$ |s0_$0_$0|)) (= (Seq@Index$Int$ (Seq@Append$Int$ |s0_$0_$0| |s1_$0_$0|) |n_$3_$0|) (Seq@Index$Int$ |s0_$0_$0| |n_$3_$0|))))  :pattern ( (Seq@Index$Int$ (Seq@Append$Int$ |s0_$0_$0| |s1_$0_$0|) |n_$3_$0|)))) :named ax_229))
   (assert (! (forall( (|s0_$0_$1| Seq$ref$) (|s1_$0_$1| Seq$ref$) (|n_$3_$1| Int))(!(and (=> (<= (Seq@Length$ref$ |s0_$0_$1|) |n_$3_$1|) (= (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$1| |s1_$0_$1|) |n_$3_$1|) (Seq@Index$ref$ |s1_$0_$1| (- |n_$3_$1| (Seq@Length$ref$ |s0_$0_$1|))))) (=> (< |n_$3_$1| (Seq@Length$ref$ |s0_$0_$1|)) (= (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$1| |s1_$0_$1|) |n_$3_$1|) (Seq@Index$ref$ |s0_$0_$1| |n_$3_$1|))))  :pattern ( (Seq@Index$ref$ (Seq@Append$ref$ |s0_$0_$1| |s1_$0_$1|) |n_$3_$1|)))) :named ax_230))
   (assert (! (forall( (|s0_$1_$0| Seq$Int$) (|s1_$1_$0| Seq$Int$) (|x_$2_$0| Int))(!(= (Seq@Contains$Int$ (Seq@Append$Int$ |s0_$1_$0| |s1_$1_$0|) |x_$2_$0|) (or (Seq@Contains$Int$ |s1_$1_$0| |x_$2_$0|) (Seq@Contains$Int$ |s0_$1_$0| |x_$2_$0|)))  :pattern ( (Seq@Contains$Int$ (Seq@Append$Int$ |s0_$1_$0| |s1_$1_$0|) |x_$2_$0|)))) :named ax_231))
   (assert (! (forall( (|s0_$1_$1| Seq$ref$) (|s1_$1_$1| Seq$ref$) (|x_$2_$1| ref))(!(= (Seq@Contains$ref$ (Seq@Append$ref$ |s0_$1_$1| |s1_$1_$1|) |x_$2_$1|) (or (Seq@Contains$ref$ |s1_$1_$1| |x_$2_$1|) (Seq@Contains$ref$ |s0_$1_$1| |x_$2_$1|)))  :pattern ( (Seq@Contains$ref$ (Seq@Append$ref$ |s0_$1_$1| |s1_$1_$1|) |x_$2_$1|)))) :named ax_232))
   (assert (! (forall( (|s0_$2_$0| Seq$Int$) (|s1_$2_$0| Seq$Int$))(!(= (Seq@Equal$Int$ |s0_$2_$0| |s1_$2_$0|) (and (= (Seq@Length$Int$ |s1_$2_$0|) (Seq@Length$Int$ |s0_$2_$0|)) (forall( (|j_$0_$1| Int))(!(=> (and (< |j_$0_$1| (Seq@Length$Int$ |s0_$2_$0|)) (<= 0 |j_$0_$1|)) (= (Seq@Index$Int$ |s1_$2_$0| |j_$0_$1|) (Seq@Index$Int$ |s0_$2_$0| |j_$0_$1|)))  :pattern ( (Seq@Index$Int$ |s0_$2_$0| |j_$0_$1|)) :pattern ( (Seq@Index$Int$ |s1_$2_$0| |j_$0_$1|))))))  :pattern ( (Seq@Equal$Int$ |s0_$2_$0| |s1_$2_$0|)))) :named ax_233))
   (assert (! (forall( (|s0_$2_$1| Seq$ref$) (|s1_$2_$1| Seq$ref$))(!(= (Seq@Equal$ref$ |s0_$2_$1| |s1_$2_$1|) (and (= (Seq@Length$ref$ |s1_$2_$1|) (Seq@Length$ref$ |s0_$2_$1|)) (forall( (|j_$0_$3| Int))(!(=> (and (< |j_$0_$3| (Seq@Length$ref$ |s0_$2_$1|)) (<= 0 |j_$0_$3|)) (= (Seq@Index$ref$ |s1_$2_$1| |j_$0_$3|) (Seq@Index$ref$ |s0_$2_$1| |j_$0_$3|)))  :pattern ( (Seq@Index$ref$ |s0_$2_$1| |j_$0_$3|)) :pattern ( (Seq@Index$ref$ |s1_$2_$1| |j_$0_$3|))))))  :pattern ( (Seq@Equal$ref$ |s0_$2_$1| |s1_$2_$1|)))) :named ax_234))
   (assert (! (forall( (|s0_$4| Seq$Int$) (|s1_$4| Seq$Int$))(!(= (Seq@Length$Int$ (Seq@Append$Int$ |s0_$4| |s1_$4|)) (+ (Seq@Length$Int$ |s0_$4|) (Seq@Length$Int$ |s1_$4|)))  :pattern ( (Seq@Length$Int$ (Seq@Append$Int$ |s0_$4| |s1_$4|))))) :named ax_235))
   (assert (! (forall( (|s0_$5| Seq$ref$) (|s1_$5| Seq$ref$))(!(= (Seq@Length$ref$ (Seq@Append$ref$ |s0_$5| |s1_$5|)) (+ (Seq@Length$ref$ |s0_$5|) (Seq@Length$ref$ |s1_$5|)))  :pattern ( (Seq@Length$ref$ (Seq@Append$ref$ |s0_$5| |s1_$5|))))) :named ax_236))
   (assert (! (forall( (|t_$0_$0| Int))(!(= |t_$0_$0| (Seq@Index$Int$ (Seq@Singleton$Int$ |t_$0_$0|) 0))  :pattern ( (Seq@Index$Int$ (Seq@Singleton$Int$ |t_$0_$0|) 0)))) :named ax_237))
   (assert (! (forall( (|t_$0_$1| ref))(!(= |t_$0_$1| (Seq@Index$ref$ (Seq@Singleton$ref$ |t_$0_$1|) 0))  :pattern ( (Seq@Index$ref$ (Seq@Singleton$ref$ |t_$0_$1|) 0)))) :named ax_238))
   (assert (! (forall( (|t_$2| Int))(!(= (Seq@Length$Int$ (Seq@Singleton$Int$ |t_$2|)) 1)  :pattern ( (Seq@Length$Int$ (Seq@Singleton$Int$ |t_$2|))))) :named ax_239))
   (assert (! (forall( (|t_$3| ref))(!(= (Seq@Length$ref$ (Seq@Singleton$ref$ |t_$3|)) 1)  :pattern ( (Seq@Length$ref$ (Seq@Singleton$ref$ |t_$3|))))) :named ax_240))
   (assert (! (forall( (|x_$1| ref))(!(not (Seq@Contains$ref$ Seq@Empty$ref$ |x_$1|))  :pattern ( (Seq@Contains$ref$ Seq@Empty$ref$ |x_$1|)))) :named ax_241))
   (assert (! (forall( (|x_$6_$0| Int) (|y_$0_$0| Int))(!(= (= |y_$0_$0| |x_$6_$0|) (Seq@Contains$Int$ (Seq@Singleton$Int$ |x_$6_$0|) |y_$0_$0|))  :pattern ( (Seq@Contains$Int$ (Seq@Singleton$Int$ |x_$6_$0|) |y_$0_$0|)))) :named ax_242))
   (assert (! (forall( (|x_$6_$1| ref) (|y_$0_$1| ref))(!(= (= |y_$0_$1| |x_$6_$1|) (Seq@Contains$ref$ (Seq@Singleton$ref$ |x_$6_$1|) |y_$0_$1|))  :pattern ( (Seq@Contains$ref$ (Seq@Singleton$ref$ |x_$6_$1|) |y_$0_$1|)))) :named ax_243))
   (assert (! (forall( (|x| Int) (|y| Int))(=> (and (<= |x| |y|) (<= 0 |x|)) (<= (Fractions |x|) (Fractions |y|)))) :named ax_244))
   (assert (! (IsGoodMask Mask) :named ax_245))
   (assert (! (IsGoodMask Mask@0) :named ax_246))
   (assert (! (IsGoodMask Mask@1) :named ax_247))
   (assert (! (IsGoodMask Mask@2) :named ax_248))
   (assert (! (IsGoodMask Mask@3) :named ax_249))
   (assert (! (IsGoodMask Mask@4) :named ax_250))
   (assert (! (IsGoodMask Mask@5) :named ax_251))
   (assert (! (IsGoodMask Mask@6) :named ax_252))
   (assert (! (IsGoodMask Mask@7) :named ax_253))
   (assert (! (IsGoodMask Mask@8) :named ax_254))
   (assert (! (IsGoodMask Mask@9) :named ax_255))
   (assert (! (IsGoodMask SecMask) :named ax_256))
   (assert (! (IsGoodMask ZeroMask) :named ax_257))
   (assert (! (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.balanceFactor))) :named ax_258))
   (assert (! (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.height))) :named ax_259))
   (assert (! (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.valid))) :named ax_260))
   (assert (! (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.balanceFactor))) :named ax_261))
   (assert (! (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.height))) :named ax_262))
   (assert (! (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.key))) :named ax_263))
   (assert (! (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left))) :named ax_264))
   (assert (! (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right))) :named ax_265))
   (assert (! (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.keys))) :named ax_266))
   (assert (! (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap this AVLTreeNode.keys))) :named ax_267))
   (assert (! (IsGoodState emptyPartialHeap) :named ax_268))
   (assert (! (ite$Bool$ false false true) :named ax_269))
   (assert (! (ite$Bool$ false true true) :named ax_270))
   (assert (! (ite$Bool$ true true false) :named ax_271))
   (assert (! (ite$Bool$ true true true) :named ax_272))
   (assert (! (NonPredicateField$Bool$ rdheld) :named ax_273))
   (assert (! (NonPredicateField$Int$ AVLTreeNode.balanceFactor) :named ax_274))
   (assert (! (NonPredicateField$Int$ AVLTreeNode.height) :named ax_275))
   (assert (! (NonPredicateField$Int$ AVLTreeNode.key) :named ax_276))
   (assert (! (NonPredicateField$Int$ forkK) :named ax_277))
   (assert (! (NonPredicateField$Int$ held) :named ax_278))
   (assert (! (NonPredicateField$Int$ joinable) :named ax_279))
   (assert (! (NonPredicateField$Mu$ mu) :named ax_280))
   (assert (! (NonPredicateField$ref$ AVLTree.root) :named ax_281))
   (assert (! (NonPredicateField$ref$ AVLTreeNode.left) :named ax_282))
   (assert (! (NonPredicateField$ref$ AVLTreeNode.right) :named ax_283))
   (assert (! (NonPredicateField$Seq$Int$$ AVLTree.keys) :named ax_284))
   (assert (! (NonPredicateField$Seq$Int$$ AVLTreeNode.keys) :named ax_285))
   (assert (! (not (= (Fractions 1) (* 1000 channelK))) :named ax_286))
   (assert (! (not (= (Fractions 1) (* 1000 methodK@_2144))) :named ax_287))
   (assert (! (not (= (Fractions 50) 0)) :named ax_288))
   (assert (! (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) null)) :named ax_289))
   (assert (! (not (= 0 channelK)) :named ax_290))
   (assert (! (not (= 0 Permission$FullFraction)) :named ax_291))
   (assert (! (not (= AVLTree.root AVLTreeNode.right)) :named ax_292))
   (assert (! (not (= AVLTree.valid AVLTreeNode.height)) :named ax_293))
   (assert (! (not (= AVLTree.valid AVLTreeNode.key)) :named ax_294))
   (assert (! (not (= AVLTree.valid AVLTreeNode.valid)) :named ax_295))
   (assert (! (not (= AVLTree.valid forkK)) :named ax_296))
   (assert (! (not (= AVLTree.valid held)) :named ax_297))
   (assert (! (not (= AVLTree.valid joinable)) :named ax_298))
   (assert (! (not (= AVLTreeNode.balanceFactor AVLTree.valid)) :named ax_299))
   (assert (! (not (= AVLTreeNode.balanceFactor AVLTreeNode.height)) :named ax_300))
   (assert (! (not (= AVLTreeNode.balanceFactor AVLTreeNode.key)) :named ax_301))
   (assert (! (not (= AVLTreeNode.balanceFactor AVLTreeNode.valid)) :named ax_302))
   (assert (! (not (= AVLTreeNode.balanceFactor forkK)) :named ax_303))
   (assert (! (not (= AVLTreeNode.balanceFactor held)) :named ax_304))
   (assert (! (not (= AVLTreeNode.balanceFactor joinable)) :named ax_305))
   (assert (! (not (= AVLTreeNode.height AVLTree.valid)) :named ax_306))
   (assert (! (not (= AVLTreeNode.height AVLTreeNode.balanceFactor)) :named ax_307))
   (assert (! (not (= AVLTreeNode.height AVLTreeNode.key)) :named ax_308))
   (assert (! (not (= AVLTreeNode.height AVLTreeNode.valid)) :named ax_309))
   (assert (! (not (= AVLTreeNode.height forkK)) :named ax_310))
   (assert (! (not (= AVLTreeNode.height held)) :named ax_311))
   (assert (! (not (= AVLTreeNode.height joinable)) :named ax_312))
   (assert (! (not (= AVLTreeNode.key AVLTree.valid)) :named ax_313))
   (assert (! (not (= AVLTreeNode.key AVLTreeNode.balanceFactor)) :named ax_314))
   (assert (! (not (= AVLTreeNode.key AVLTreeNode.height)) :named ax_315))
   (assert (! (not (= AVLTreeNode.key AVLTreeNode.valid)) :named ax_316))
   (assert (! (not (= AVLTreeNode.key forkK)) :named ax_317))
   (assert (! (not (= AVLTreeNode.key held)) :named ax_318))
   (assert (! (not (= AVLTreeNode.key joinable)) :named ax_319))
   (assert (! (not (= AVLTreeNode.keys AVLTree.keys)) :named ax_320))
   (assert (! (not (= AVLTreeNode.left AVLTree.root)) :named ax_321))
   (assert (! (not (= AVLTreeNode.left AVLTreeNode.right)) :named ax_322))
   (assert (! (not (= AVLTreeNode.right AVLTree.root)) :named ax_323))
   (assert (! (not (= AVLTreeNode.right AVLTreeNode.left)) :named ax_324))
   (assert (! (not (= AVLTreeNode.valid AVLTree.valid)) :named ax_325))
   (assert (! (not (= AVLTreeNode.valid AVLTreeNode.balanceFactor)) :named ax_326))
   (assert (! (not (= AVLTreeNode.valid AVLTreeNode.height)) :named ax_327))
   (assert (! (not (= AVLTreeNode.valid AVLTreeNode.key)) :named ax_328))
   (assert (! (not (= AVLTreeNode.valid forkK)) :named ax_329))
   (assert (! (not (= AVLTreeNode.valid held)) :named ax_330))
   (assert (! (not (= AVLTreeNode.valid joinable)) :named ax_331))
   (assert (! (not (= forkK AVLTree.valid)) :named ax_332))
   (assert (! (not (= forkK AVLTreeNode.balanceFactor)) :named ax_333))
   (assert (! (not (= forkK AVLTreeNode.height)) :named ax_334))
   (assert (! (not (= forkK AVLTreeNode.key)) :named ax_335))
   (assert (! (not (= forkK AVLTreeNode.valid)) :named ax_336))
   (assert (! (not (= forkK held)) :named ax_337))
   (assert (! (not (= forkK joinable)) :named ax_338))
   (assert (! (not (= held AVLTree.valid)) :named ax_339))
   (assert (! (not (= held AVLTreeNode.balanceFactor)) :named ax_340))
   (assert (! (not (= held AVLTreeNode.height)) :named ax_341))
   (assert (! (not (= held AVLTreeNode.key)) :named ax_342))
   (assert (! (not (= held AVLTreeNode.valid)) :named ax_343))
   (assert (! (not (= held forkK)) :named ax_344))
   (assert (! (not (= held joinable)) :named ax_345))
   (assert (! (not (= joinable AVLTree.valid)) :named ax_346))
   (assert (! (not (= joinable AVLTreeNode.balanceFactor)) :named ax_347))
   (assert (! (not (= joinable AVLTreeNode.height)) :named ax_348))
   (assert (! (not (= joinable AVLTreeNode.key)) :named ax_349))
   (assert (! (not (= joinable AVLTreeNode.valid)) :named ax_350))
   (assert (! (not (= joinable forkK)) :named ax_351))
   (assert (! (not (= joinable held)) :named ax_352))
   (assert (! (not (= methodK@_2144 0)) :named ax_353))
   (assert (! (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left))) :named ax_354))
   (assert (! (not (= perm$N perm$R)) :named ax_355))
   (assert (! (not (= perm$R perm$N)) :named ax_356))
   (assert (! (not (= Permission$denominator 0)) :named ax_357))
   (assert (! (not (= this null)) :named ax_358))
   (assert (! (not (ite$Bool$ false false false)) :named ax_359))
   (assert (! (not (ite$Bool$ false true false)) :named ax_360))
   (assert (! (not (ite$Bool$ true false false)) :named ax_361))
   (assert (! (not (ite$Bool$ true false true)) :named ax_362))
   (assert (! (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right)) AVLTreeNode@t)) :named ax_363))
   (assert (! (or (= r@66 null) (= (dtype r@66) AVLTreeNode@t)) :named ax_364))
   (assert (! (or (= this@664 null) (= (dtype this@664) AVLTreeNode@t)) :named ax_365))
   (assert (! (or (= this@680 null) (= (dtype this@680) AVLTreeNode@t)) :named ax_366))
   (assert (! (or (= this@693 null) (= (dtype this@693) AVLTreeNode@t)) :named ax_367))
   (assert (! (PredicateField$Int$ AVLTree.valid) :named ax_368))
   (assert (! (PredicateField$Int$ AVLTreeNode.valid) :named ax_369))
   (assert (! (wf Heap Mask SecMask) :named ax_370))
   (assert (! (wf Heap Mask@0 ZeroMask) :named ax_371))
   (assert (! (wf Heap Mask@1 ZeroMask) :named ax_372))
   (assert (! (wf Heap Mask@2 ZeroMask) :named ax_373))
   (assert (! (wf Heap Mask@3 ZeroMask) :named ax_374))
   (assert (! (wf Heap Mask@4 ZeroMask) :named ax_375))
   (assert (! (wf Heap Mask@5 ZeroMask) :named ax_376))
   (assert (! (wf Heap Mask@6 ZeroMask) :named ax_377))
   (assert (! (wf Heap Mask@7 ZeroMask) :named ax_378))
   (assert (! (wf Heap Mask@8 ZeroMask) :named ax_379))
   (assert (! (wf Heap Mask@9 ZeroMask) :named ax_380))
   (assert (! (wf Heap ZeroMask ZeroMask) :named ax_381))
   (assert (! CanAssumeFunctionDefs :named ax_382))
   (assert (! true :named ax_383))

;Program
(assert (not
(let ((anon704@6_assertion (and
    (forall( (|lk#_2465| ref))(!(or (and (= (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2443@0 |lk#_2465| held)) (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap |lk#_2465| held))) (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ exhaleHeap@_2443@0 |lk#_2465| rdheld) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ Heap |lk#_2465| rdheld))) false)  :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2443@0 |lk#_2465| held)) :pattern ( (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Bool$ exhaleHeap@_2443@0 |lk#_2465| rdheld))))
)))
(let ((anon88@12_assertion (and
    (forall( (|k#98#643| Int))(=> (and (<= 0 |k#98#643|) (< |k#98#643| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.keys) |k#98#643|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.key))))
)))
(let ((anon168@12_assertion (and
    (forall( (|k#99#652| Int))(=> (and (<= 0 |k#99#652|) (< |k#99#652| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 r@66@0 AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 r@66@0 AVLTreeNode.keys) |k#99#652|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key))))
)))
(let ((anon829_Then@12_assertion (and
    (forall( (|k#100#661| Int))(=> (and (<= 0 |k#100#661|) (< |k#100#661| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) |k#100#661|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 this AVLTreeNode.key))))
)))
(let ((anon830_Then_assertion (and
    (forall( (|k#92#665| Int))(=> (and (<= 0 |k#92#665|) (< |k#92#665| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.keys) |k#92#665|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 this@664@0 AVLTreeNode.key))))
)))
(let ((anon831_Then_assertion (and
    (forall( (|k#93#666| Int))(=> (and (<= 0 |k#93#666|) (< |k#93#666| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 this@664@0 AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.keys) |k#93#666|))))
)))
(let ((anon896_Then@12_assertion (and
    (forall( (|k#101#677| Int))(=> (and (<= 0 |k#101#677|) (< |k#101#677| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys) |k#101#677|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 this AVLTreeNode.key))))
)))
(let ((anon897_Then_assertion (and
    (forall( (|k#92#681| Int))(=> (and (<= 0 |k#92#681|) (< |k#92#681| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys) |k#92#681|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 this AVLTreeNode.key))))
)))
(let ((anon898_Then_assertion (and
    (forall( (|k#93#682| Int))(=> (and (<= 0 |k#93#682|) (< |k#93#682| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.keys) |k#93#682|))))
)))
(let ((anon963_Then_assertion (and
    (forall( (|k#92#694| Int))(=> (and (<= 0 |k#92#694|) (< |k#92#694| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.keys)))) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) |k#92#694|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 r@66@0 AVLTreeNode.key))))
)))
(let ((anon964_Then_assertion (and
    (forall( (|k#93#695| Int))(=> (and (<= 0 |k#93#695|) (< |k#93#695| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.keys)))) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 r@66@0 AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) |k#93#695|))))
)))
(let ((anon829_Then@11_assertion (and
    (=> (and (and true (<= 0 k@100@662)) (< k@100@662 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.keys)))) (CanRead$Int$ Mask@63 SecMask@123 this AVLTreeNode.key))
)))
(let ((anon829_Then@3_assertion (and
    (=> (and true (<= 0 k@100@662)) (CanRead$Seq$Int$$ Mask@63 SecMask@123 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.keys))
)))
(let ((anon829_Then@7_assertion (and
    (=> (and (and true (<= 0 k@100@662)) (< k@100@662 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.keys)))) (CanRead$Seq$Int$$ Mask@63 SecMask@123 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.keys))
)))
(let ((anon896_Then@11_assertion (and
    (=> (and (and true (<= 0 k@101@678)) (< k@101@678 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys)))) (CanRead$Int$ Mask@67 SecMask@227 this AVLTreeNode.key))
)))
(let ((anon896_Then@3_assertion (and
    (=> (and true (<= 0 k@101@678)) (CanRead$Seq$Int$$ Mask@67 SecMask@227 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys))
)))
(let ((anon896_Then@7_assertion (and
    (=> (and (and true (<= 0 k@101@678)) (< k@101@678 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys)))) (CanRead$Seq$Int$$ Mask@67 SecMask@227 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys))
)))
(let ((anon88@1_assertion (and
    (=> (and true (<= 0 k@98@644)) (CanRead$ref$ Mask@17 SecMask@21 this AVLTreeNode.left))
)))
(let ((anon88@11_assertion (and
    (=> (and (and true (<= 0 k@98@644)) (< k@98@644 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.keys)))) (CanRead$Int$ Mask@17 SecMask@21 this AVLTreeNode.key))
)))
(let ((anon88@3_assertion (and
    (=> (and true (<= 0 k@98@644)) (CanRead$Seq$Int$$ Mask@17 SecMask@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.keys))
)))
(let ((anon88@5_assertion (and
    (=> (and (and true (<= 0 k@98@644)) (< k@98@644 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.keys)))) (CanRead$ref$ Mask@17 SecMask@21 this AVLTreeNode.left))
)))
(let ((anon88@7_assertion (and
    (=> (and (and true (<= 0 k@98@644)) (< k@98@644 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.keys)))) (CanRead$Seq$Int$$ Mask@17 SecMask@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.keys))
)))
(let ((anon168@11_assertion (and
    (=> (and (and true (<= 0 k@99@653)) (< k@99@653 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 r@66@0 AVLTreeNode.keys)))) (CanRead$Int$ Mask@40 SecMask@72 this AVLTreeNode.key))
)))
(let ((anon168@4_assertion (and
    (=> (and true (<= 0 k@99@653)) (not (= r@66@0 null)))
)))
(let ((anon168@5_assertion (and
    (=> (and true (<= 0 k@99@653)) (CanRead$Seq$Int$$ Mask@40 SecMask@72 r@66@0 AVLTreeNode.keys))
)))
(let ((anon168@6_assertion (and
    (=> (and (and true (<= 0 k@99@653)) (< k@99@653 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 r@66@0 AVLTreeNode.keys)))) (not (= r@66@0 null)))
)))
(let ((anon168@7_assertion (and
    (=> (and (and true (<= 0 k@99@653)) (< k@99@653 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 r@66@0 AVLTreeNode.keys)))) (CanRead$Seq$Int$$ Mask@40 SecMask@72 r@66@0 AVLTreeNode.keys))
)))
(let ((anon168@1_assertion (and
    (=> true (CanRead$ref$ Mask@40 SecMask@72 this AVLTreeNode.left))
)))
(let ((anon168@3_assertion (and
    (=> true (CanRead$ref$ Mask@40 SecMask@72 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right))
)))
(let ((anon248@1_assertion (and
    (=> true (CanRead$ref$ Mask@63 SecMask@123 r@66@0 AVLTreeNode.right))
)))
(let ((anon250@1_assertion (and
    (=> true (CanRead$ref$ Mask@63 SecMask@123 this AVLTreeNode.left))
)))
(let ((anon250@2_assertion (and
    (CanWrite$ref$ Mask@63 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.right)
)))
(let ((anon250@4_assertion (and
    (=> true (CanRead$ref$ Mask@63 SecMask@123 r@66@0 AVLTreeNode.left))
)))
(let ((anon382@2_assertion (and
    (=> true (CanRead$ref$ Mask@67 SecMask@227 this AVLTreeNode.left))
)))
(let ((anon382@3_assertion (and
    (CanWrite$ref$ Mask@67 this AVLTreeNode.left)
)))
(let ((anon382@5_assertion (and
    (=> true (CanRead$ref$ Mask@67 SecMask@227 r@66@0 AVLTreeNode.right))
)))
(let ((anon382_assertion (and
    (CanWrite$ref$ Mask@67 r@66@0 AVLTreeNode.left)
)))
(let ((anon516_assertion (and
    (CanWrite$ref$ Mask@71 r@66@0 AVLTreeNode.right)
)))
(let ((anon648@1_assertion (and
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.height))
)))
(let ((anon648@2_assertion (and
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.keys) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) AVLTreeNode.keys))))
)))
(let ((anon88@14_assertion (and
    (=> true (CanRead$ref$ Mask@17 SecMask@21 this AVLTreeNode.left))
)))
(let ((anon254@1_assertion (and
    (>= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.height))) (- 0 1))
)))
(let ((anon388@1_assertion (and
    (>= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.height))) (- 0 1))
)))
(let ((anon520@1_assertion (and
    (>= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.height))) (- 0 1))
)))
(let ((anon254_assertion (and
    (<= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.height))) 1)
)))
(let ((anon388_assertion (and
    (<= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.height))) 1)
)))
(let ((anon520_assertion (and
    (<= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.height))) 1)
)))
(let ((anon254@5_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@0 this@664@0 AVLTreeNode.height) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@0 this@664@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@0 this@664@0 AVLTreeNode.height) perm$N)))
)))
(let ((anon863_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon864_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
)))
(let ((anon893_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.height) perm$N)))
)))
(let ((anon895_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon254@13_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@4 this@664@0 AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@4 this@664@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@4 this@664@0 AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon832_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
)))
(let ((anon861_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.height) perm$N)))
)))
(let ((anon388@5_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@0 this AVLTreeNode.height) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@0 this AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@0 this AVLTreeNode.height) perm$N)))
)))
(let ((anon930_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon931_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
)))
(let ((anon960_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.height) perm$N)))
)))
(let ((anon962_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon388@13_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@4 this AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@4 this AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@4 this AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon899_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
)))
(let ((anon928_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.height) perm$N)))
)))
(let ((anon520@5_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@0 r@66@0 AVLTreeNode.height) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@0 r@66@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@0 r@66@0 AVLTreeNode.height) perm$N)))
)))
(let ((anon996_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon997_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
)))
(let ((anon1026_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.height) perm$N)))
)))
(let ((anon1028_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon520@13_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@4 r@66@0 AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@4 r@66@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@4 r@66@0 AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon965_Then@1_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
)))
(let ((anon994_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.height) perm$N)))
)))
(let ((anon704@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2444@0 r@66@0 AVLTreeNode.height) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2444@0 r@66@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2444@0 r@66@0 AVLTreeNode.height) perm$N)))
)))
(let ((anon704@5_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2444@2 r@66@0 AVLTreeNode.balanceFactor) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2444@2 r@66@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2444@2 r@66@0 AVLTreeNode.balanceFactor) perm$N)))
)))
(let ((anon88@17_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
)))
(let ((anon168@15_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@40 r@66@0 AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@40 r@66@0 AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@40 r@66@0 AVLTreeNode.valid) perm$N)))
)))
(let ((anon254@3_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@63 this@664@0 AVLTreeNode.key) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@63 this@664@0 AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@63 this@664@0 AVLTreeNode.key) perm$N)))
)))
(let ((anon388@3_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@67 this AVLTreeNode.key) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@67 this AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@67 this AVLTreeNode.key) perm$N)))
)))
(let ((anon520@3_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@71 r@66@0 AVLTreeNode.key) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@71 r@66@0 AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@71 r@66@0 AVLTreeNode.key) perm$N)))
)))
(let ((anon648@4_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@75 r@66@0 AVLTreeNode.valid) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@75 r@66@0 AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@75 r@66@0 AVLTreeNode.valid) perm$N)))
)))
(let ((anon254@7_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2278@1 this@664@0 AVLTreeNode.left) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2278@1 this@664@0 AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2278@1 this@664@0 AVLTreeNode.left) perm$N)))
)))
(let ((anon254@9_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2278@2 this@664@0 AVLTreeNode.right) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2278@2 this@664@0 AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2278@2 this@664@0 AVLTreeNode.right) perm$N)))
)))
(let ((anon388@7_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2339@1 this AVLTreeNode.left) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2339@1 this AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2339@1 this AVLTreeNode.left) perm$N)))
)))
(let ((anon388@9_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2339@2 this AVLTreeNode.right) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2339@2 this AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2339@2 this AVLTreeNode.right) perm$N)))
)))
(let ((anon520@7_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2394@1 r@66@0 AVLTreeNode.left) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2394@1 r@66@0 AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2394@1 r@66@0 AVLTreeNode.left) perm$N)))
)))
(let ((anon520@9_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2394@2 r@66@0 AVLTreeNode.right) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2394@2 r@66@0 AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2394@2 r@66@0 AVLTreeNode.right) perm$N)))
)))
(let ((anon894_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
)))
(let ((anon254@11_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@3 this@664@0 AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@3 this@664@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@3 this@664@0 AVLTreeNode.keys) perm$N)))
)))
(let ((anon862_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
)))
(let ((anon961_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
)))
(let ((anon388@11_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@3 this AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@3 this AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@3 this AVLTreeNode.keys) perm$N)))
)))
(let ((anon929_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
)))
(let ((anon1027_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
)))
(let ((anon520@11_assertion (and
    (<= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@3 r@66@0 AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@3 r@66@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@3 r@66@0 AVLTreeNode.keys) perm$N)))
)))
(let ((anon995_Then@1_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
)))
(let ((anon704@3_assertion (and
    (<= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2444@1 r@66@0 AVLTreeNode.keys) perm$R))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2444@1 r@66@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2444@1 r@66@0 AVLTreeNode.keys) perm$N)))
)))
(let ((anon168@13_assertion (and
    (not (= r@66@0 null))
)))
(let ((anon250@7_assertion (and
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this AVLTreeNode.left) null))
)))
(let ((anon704@6 (=> (and true
    (= exhaleMask@_2444@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2444@2 r@66@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2444@2 r@66@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2444@2 r@66@0 AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2444@2 r@66@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2444@2 r@66@0 AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodExhaleState exhaleHeap@_2443@0 exhaleHeap@_2393@0 exhaleMask@_2444@3 SecMask@486)
    (IsGoodMask exhaleMask@_2444@3)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2444@2 r@66@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (wf exhaleHeap@_2393@0 exhaleMask@_2444@3 SecMask@486)
    (wf exhaleHeap@_2443@0 exhaleMask@_2444@3 SecMask@486)
  )
    anon704@6_assertion
)))
(let ((anon704@4 (=> (and true
    (= exhaleMask@_2444@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2444@1 r@66@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2444@1 r@66@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2444@1 r@66@0 AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2444@1 r@66@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2444@1 r@66@0 AVLTreeNode.keys) perm$N)))
    (IsGoodMask exhaleMask@_2444@2)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2444@1 r@66@0 AVLTreeNode.keys) perm$R) (Fractions 50)))
    (wf exhaleHeap@_2393@0 exhaleMask@_2444@2 SecMask@486)
  )(and 
    anon704@5_assertion
    anon704@6
))))
(let ((anon704@2 (=> (and true
    (= exhaleMask@_2444@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2444@0 r@66@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2444@0 r@66@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2444@0 r@66@0 AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2444@0 r@66@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2444@0 r@66@0 AVLTreeNode.height) perm$N)))
    (IsGoodMask exhaleMask@_2444@1)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2444@0 r@66@0 AVLTreeNode.height) perm$R) (Fractions 50)))
    (wf exhaleHeap@_2393@0 exhaleMask@_2444@1 SecMask@486)
  )(and 
    anon704@3_assertion
    anon704@4
))))
(let ((anon704 (=> (and true
    (IsGoodMask exhaleMask@_2444@0)
    (wf exhaleHeap@_2393@0 exhaleMask@_2444@0 SecMask@486)
    (wf exhaleHeap@_2393@0 Mask@75 SecMask@486)
  )(and 
    anon704@1_assertion
    anon704@2
))))
(let ((anon1056_Else (=> (and true
    (CanRead$Int$ exhaleMask@_2444@0 SecMask@486 r@66@0 AVLTreeNode.valid)
    (not $@condition_$448)
  )
    anon704
)))
(let ((anon1056_Then (=> (and true
    $@condition_$448
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2443@0 r@66@0 AVLTreeNode.valid))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2443@0 r@66@0 AVLTreeNode.valid)))
    (not (CanRead$Int$ exhaleMask@_2444@0 SecMask@486 r@66@0 AVLTreeNode.valid))
  )
    anon704
)))
(let (($branchMerge_149 (=> (and true
  )
    (and anon1056_Else anon1056_Then)
)))
(let ((anon1029_Else (=> (and true
    (= SecMask@435 SecMask@486)
    (not $@condition_$446)
    (not (and (= predVer@_2192@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.valid)) (= predRec@_2191@0 r@66@0)))
  )
    $branchMerge_149
)))
(let ((anon701 (=> (and true
    (= SecMask@485 SecMask@486)
    (wf exhaleHeap@_2393@0 SecMask@485 SecMask@485)
  )
    $branchMerge_149
)))
(let ((anon1048_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right))
    (= SecMask@469 SecMask@473)
    (= SecMask@469 SecMask@477)
    (= SecMask@469 SecMask@481)
    (= SecMask@469 SecMask@485)
    (not $@condition_$472)
    (not $@condition_$475)
    (not $@condition_$478)
    (not $@condition_$481)
  )
    anon701
)))
(let ((anon700 (=> (and true
    (= SecMask@484 SecMask@485)
    (wf exhaleHeap@_2393@0 Mask@75 SecMask@484)
    (wf exhaleHeap@_2393@0 SecMask@484 SecMask@484)
  )
    anon701
)))
(let ((anon1055_Else (=> (and true
    (= SecMask@482 SecMask@484)
    (not $@condition_$483)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@482 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon700
)))
(let ((anon1055_Then (=> (and true
    $@condition_$483
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@482 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@483 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@482 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@482 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@483 SecMask@484)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@482 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)))
  )
    anon700
)))
(let ((anon696 (=> (and true
    $@condition_$481
    (= SecMask@480 SecMask@481)
    (= SecMask@482 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@480 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@480 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@480 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (wf exhaleHeap@_2393@0 Mask@75 SecMask@480)
    (wf exhaleHeap@_2393@0 SecMask@480 SecMask@480)
  )
    (and anon1055_Else anon1055_Then)
)))
(let ((anon1053_Else (=> (and true
    (= SecMask@478 SecMask@480)
    (not $@condition_$480)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@478 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) 0))
  )
    anon696
)))
(let ((anon1053_Then (=> (and true
    $@condition_$480
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@478 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) 0)
    (= SecMask@479 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@478 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@478 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R 0)))
    (= SecMask@479 SecMask@480)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@478 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R)))
  )
    anon696
)))
(let ((anon692 (=> (and true
    $@condition_$478
    (= SecMask@476 SecMask@477)
    (= SecMask@478 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@476 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@476 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@476 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (wf exhaleHeap@_2393@0 Mask@75 SecMask@476)
    (wf exhaleHeap@_2393@0 SecMask@476 SecMask@476)
  )
    (and anon1053_Else anon1053_Then)
)))
(let ((anon1051_Else (=> (and true
    (= SecMask@474 SecMask@476)
    (not $@condition_$477)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@474 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) 0))
  )
    anon692
)))
(let ((anon1051_Then (=> (and true
    $@condition_$477
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@474 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) 0)
    (= SecMask@475 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@474 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@474 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.height) perm$R 0)))
    (= SecMask@475 SecMask@476)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@474 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.height) perm$R)))
  )
    anon692
)))
(let ((anon688 (=> (and true
    $@condition_$475
    (= SecMask@472 SecMask@473)
    (= SecMask@474 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@472 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@472 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@472 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (wf exhaleHeap@_2393@0 Mask@75 SecMask@472)
    (wf exhaleHeap@_2393@0 SecMask@472 SecMask@472)
  )
    (and anon1051_Else anon1051_Then)
)))
(let ((anon1049_Else (=> (and true
    (= SecMask@470 SecMask@472)
    (not $@condition_$474)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@470 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) 0))
  )
    anon688
)))
(let ((anon1049_Then (=> (and true
    $@condition_$474
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@470 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) 0)
    (= SecMask@471 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@470 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@470 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R 0)))
    (= SecMask@471 SecMask@472)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@470 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R)))
  )
    anon688
)))
(let ((anon1048_Then (=> (and true
    $@condition_$472
    (= SecMask@470 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@469 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@469 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@469 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right)))
  )
    (and anon1049_Else anon1049_Then)
)))
(let (($branchMerge_156 (=> (and true
  )
    (and anon1048_Else anon1048_Then)
)))
(let ((anon1040_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left))
    (= SecMask@453 SecMask@457)
    (= SecMask@453 SecMask@461)
    (= SecMask@453 SecMask@465)
    (= SecMask@453 SecMask@469)
    (not $@condition_$461)
    (not $@condition_$463)
    (not $@condition_$466)
    (not $@condition_$469)
  )
    $branchMerge_156
)))
(let ((anon684 (=> (and true
    (= SecMask@468 SecMask@469)
    (wf exhaleHeap@_2393@0 Mask@75 SecMask@468)
    (wf exhaleHeap@_2393@0 SecMask@468 SecMask@468)
  )
    $branchMerge_156
)))
(let ((anon1047_Else (=> (and true
    (= SecMask@466 SecMask@468)
    (not $@condition_$471)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@466 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon684
)))
(let ((anon1047_Then (=> (and true
    $@condition_$471
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@466 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@467 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@466 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@466 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@467 SecMask@468)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@466 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)))
  )
    anon684
)))
(let ((anon680 (=> (and true
    $@condition_$469
    (= SecMask@464 SecMask@465)
    (= SecMask@466 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@464 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@464 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@464 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (wf exhaleHeap@_2393@0 Mask@75 SecMask@464)
    (wf exhaleHeap@_2393@0 SecMask@464 SecMask@464)
  )
    (and anon1047_Else anon1047_Then)
)))
(let ((anon1045_Else (=> (and true
    (= SecMask@462 SecMask@464)
    (not $@condition_$468)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@462 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) 0))
  )
    anon680
)))
(let ((anon1045_Then (=> (and true
    $@condition_$468
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@462 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) 0)
    (= SecMask@463 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@462 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@462 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R 0)))
    (= SecMask@463 SecMask@464)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@462 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R)))
  )
    anon680
)))
(let ((anon676 (=> (and true
    $@condition_$466
    (= SecMask@460 SecMask@461)
    (= SecMask@462 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@460 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@460 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@460 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (wf exhaleHeap@_2393@0 Mask@75 SecMask@460)
    (wf exhaleHeap@_2393@0 SecMask@460 SecMask@460)
  )
    (and anon1045_Else anon1045_Then)
)))
(let ((anon1043_Else (=> (and true
    (= SecMask@458 SecMask@460)
    (not $@condition_$465)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@458 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) 0))
  )
    anon676
)))
(let ((anon1043_Then (=> (and true
    $@condition_$465
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@458 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) 0)
    (= SecMask@459 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@458 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@458 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.height) perm$R 0)))
    (= SecMask@459 SecMask@460)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@458 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.height) perm$R)))
  )
    anon676
)))
(let ((anon672 (=> (and true
    $@condition_$463
    (= SecMask@456 SecMask@457)
    (= SecMask@458 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@456 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@456 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@456 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (wf exhaleHeap@_2393@0 Mask@75 SecMask@456)
    (wf exhaleHeap@_2393@0 SecMask@456 SecMask@456)
  )
    (and anon1043_Else anon1043_Then)
)))
(let ((anon1041_Else (=> (and true
    (= SecMask@454 SecMask@456)
    (not $@condition_$462)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@454 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) 0))
  )
    anon672
)))
(let ((anon1041_Then (=> (and true
    $@condition_$462
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@454 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) 0)
    (= SecMask@455 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@454 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@454 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R 0)))
    (= SecMask@455 SecMask@456)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@454 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R)))
  )
    anon672
)))
(let ((anon1040_Then (=> (and true
    $@condition_$461
    (= SecMask@454 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@453 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@453 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@453 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left)))
  )
    (and anon1041_Else anon1041_Then)
)))
(let ((anon669 (=> (and true
    (wf exhaleHeap@_2393@0 Mask@75 SecMask@453)
    (wf exhaleHeap@_2393@0 SecMask@453 SecMask@453)
  )
    (and anon1040_Else anon1040_Then)
)))
(let ((anon1039_Else (=> (and true
    (= SecMask@451 SecMask@453)
    (not $@condition_$460)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@451 r@66@0 AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon669
)))
(let ((anon1039_Then (=> (and true
    $@condition_$460
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@451 r@66@0 AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@452 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@451 r@66@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@451 r@66@0 AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@452 SecMask@453)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@451 r@66@0 AVLTreeNode.balanceFactor) perm$R)))
  )
    anon669
)))
(let ((anon667 (=> (and true
    (= SecMask@451 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@450 r@66@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@450 r@66@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@450 r@66@0 AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (wf exhaleHeap@_2393@0 Mask@75 SecMask@450)
    (wf exhaleHeap@_2393@0 SecMask@450 SecMask@450)
  )
    (and anon1039_Else anon1039_Then)
)))
(let ((anon1038_Else (=> (and true
    (= SecMask@448 SecMask@450)
    (not $@condition_$459)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@448 r@66@0 AVLTreeNode.keys) perm$R) 0))
  )
    anon667
)))
(let ((anon1038_Then (=> (and true
    $@condition_$459
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@448 r@66@0 AVLTreeNode.keys) perm$R) 0)
    (= SecMask@449 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@448 r@66@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@448 r@66@0 AVLTreeNode.keys) perm$R 0)))
    (= SecMask@449 SecMask@450)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@448 r@66@0 AVLTreeNode.keys) perm$R)))
  )
    anon667
)))
(let ((anon665 (=> (and true
    (= SecMask@448 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@447 r@66@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@447 r@66@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@447 r@66@0 AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (wf exhaleHeap@_2393@0 Mask@75 SecMask@447)
    (wf exhaleHeap@_2393@0 SecMask@447 SecMask@447)
  )
    (and anon1038_Else anon1038_Then)
)))
(let ((anon1037_Else (=> (and true
    (= SecMask@445 SecMask@447)
    (not $@condition_$458)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@445 r@66@0 AVLTreeNode.right) perm$R) 0))
  )
    anon665
)))
(let ((anon1037_Then (=> (and true
    $@condition_$458
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@445 r@66@0 AVLTreeNode.right) perm$R) 0)
    (= SecMask@446 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@445 r@66@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@445 r@66@0 AVLTreeNode.right) perm$R 0)))
    (= SecMask@446 SecMask@447)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@445 r@66@0 AVLTreeNode.right) perm$R)))
  )
    anon665
)))
(let ((anon663 (=> (and true
    (= SecMask@445 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@444 r@66@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@444 r@66@0 AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@444 r@66@0 AVLTreeNode.right) perm$R) (* (- 1) (Fractions 100))))))
    (wf exhaleHeap@_2393@0 Mask@75 SecMask@444)
    (wf exhaleHeap@_2393@0 SecMask@444 SecMask@444)
  )
    (and anon1037_Else anon1037_Then)
)))
(let ((anon1036_Else (=> (and true
    (= SecMask@442 SecMask@444)
    (not $@condition_$457)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@442 r@66@0 AVLTreeNode.left) perm$R) 0))
  )
    anon663
)))
(let ((anon1036_Then (=> (and true
    $@condition_$457
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@442 r@66@0 AVLTreeNode.left) perm$R) 0)
    (= SecMask@443 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@442 r@66@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@442 r@66@0 AVLTreeNode.left) perm$R 0)))
    (= SecMask@443 SecMask@444)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@442 r@66@0 AVLTreeNode.left) perm$R)))
  )
    anon663
)))
(let ((anon661 (=> (and true
    (= SecMask@442 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@441 r@66@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@441 r@66@0 AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@441 r@66@0 AVLTreeNode.left) perm$R) (* (- 1) (Fractions 100))))))
    (wf exhaleHeap@_2393@0 Mask@75 SecMask@441)
    (wf exhaleHeap@_2393@0 SecMask@441 SecMask@441)
  )
    (and anon1036_Else anon1036_Then)
)))
(let ((anon1035_Else (=> (and true
    (= SecMask@439 SecMask@441)
    (not $@condition_$456)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@439 r@66@0 AVLTreeNode.height) perm$R) 0))
  )
    anon661
)))
(let ((anon1035_Then (=> (and true
    $@condition_$456
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@439 r@66@0 AVLTreeNode.height) perm$R) 0)
    (= SecMask@440 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@439 r@66@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@439 r@66@0 AVLTreeNode.height) perm$R 0)))
    (= SecMask@440 SecMask@441)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@439 r@66@0 AVLTreeNode.height) perm$R)))
  )
    anon661
)))
(let ((anon659 (=> (and true
    (= SecMask@439 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@438 r@66@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@438 r@66@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@438 r@66@0 AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (wf exhaleHeap@_2393@0 Mask@75 SecMask@438)
    (wf exhaleHeap@_2393@0 SecMask@438 SecMask@438)
  )
    (and anon1035_Else anon1035_Then)
)))
(let ((anon1034_Else (=> (and true
    (= SecMask@436 SecMask@438)
    (not $@condition_$455)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@436 r@66@0 AVLTreeNode.key) perm$R) 0))
  )
    anon659
)))
(let ((anon1034_Then (=> (and true
    $@condition_$455
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@436 r@66@0 AVLTreeNode.key) perm$R) 0)
    (= SecMask@437 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@436 r@66@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@436 r@66@0 AVLTreeNode.key) perm$R 0)))
    (= SecMask@437 SecMask@438)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@436 r@66@0 AVLTreeNode.key) perm$R)))
  )
    anon659
)))
(let ((anon657 (=> (and true
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.height))
    (= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.height))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.balanceFactor))
    (= (= true $@bf_90) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left)))
    (= (= true $@bf_91) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right)))
    (= (= true $@bf_92) (< (ite$Int$ $@bf_91 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.height)) (ite$Int$ $@bf_90 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.height))))
    (= (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.height)) 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.height))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.balanceFactor) (+ (ite$Int$ $@bf_90 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_91 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.height)))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.height) (ite$Int$ $@bf_92 (+ (ite$Int$ $@bf_90 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ $@bf_91 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ $@bf_90 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.key))) (ite$Seq$Int$$ $@bf_91 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.keys))))
    (= SecMask@436 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@435 r@66@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@435 r@66@0 AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@435 r@66@0 AVLTreeNode.key) perm$R) (* (- 1) (Fractions 100))))))
    (forall( (|kk#81_$10| Int))(= (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.keys) |kk#81_$10|) (or (= |kk#81_$10| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.key)) (or (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) |kk#81_$10|) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) null))) (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) |kk#81_$10|) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) null)))))))
    (not (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.balanceFactor) (- 1)))
    (not (< 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.balanceFactor)))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.height)))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.key))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.keys))))
  )
    (and anon1034_Else anon1034_Then)
)))
(let ((anon1032_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right))
    (not $@condition_$451)
    (not $@condition_$453)
  )
    anon657
)))
(let ((anon1032_Then (=> (and true
    $@condition_$451
    $@condition_$453
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.height))
    (forall( (|rk#80#707| Int))(=> (and (< |rk#80#707| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 |rk#80#707|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) |rk#80#707|))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) null))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right) AVLTreeNode.height)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.right)))
  )
    anon657
)))
(let (($branchMerge_151 (=> (and true
  )
    (and anon1032_Else anon1032_Then)
)))
(let ((anon1030_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left))
    (not $@condition_$447)
    (not $@condition_$449)
  )
    $branchMerge_151
)))
(let ((anon1030_Then (=> (and true
    $@condition_$447
    $@condition_$449
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.height))
    (forall( (|lk#79#706| Int))(=> (and (< |lk#79#706| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 |lk#79#706|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) |lk#79#706|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.key))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) null))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left) AVLTreeNode.height)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.left)))
  )
    $branchMerge_151
)))
(let ((anon1029_Then (=> (and true
    $@condition_$446
    (= predRec@_2191@0 r@66@0)
    (= predVer@_2192@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 predRec@_2191@0 AVLTreeNode.valid))
  )
    (and anon1030_Else anon1030_Then)
)))
(let ((anon648@5 (=> (and true
    (= exhaleMask@_2444@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@75 r@66@0 AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@75 r@66@0 AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@75 r@66@0 AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@75 r@66@0 AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@75 r@66@0 AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@75 r@66@0 AVLTreeNode.valid) perm$R) (Fractions 100)))
  )
    (and anon1029_Else anon1029_Then)
)))
(let ((anon648@3 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap predRec@_2191@0 AVLTreeNode.keys) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.key))) (ite$Seq$Int$$ $@bf_6 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) AVLTreeNode.keys))))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.keys) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) AVLTreeNode.keys))))
  )(and 
    anon648@4_assertion
    anon648@5
))))
(let ((anon648@2 (=> (and true
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.height) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap predRec@_2191@0 AVLTreeNode.height))
  )(and 
    anon648@2_assertion
    anon648@3
))))
(let ((anon648 (=> (and true
    (= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.height))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.balanceFactor))
    (= (= true $@bf_89) (< (ite$Int$ $@bf_5 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.height)) (ite$Int$ $@bf_4 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.height))))
    (= (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.height)) 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.height))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.balanceFactor) (+ (ite$Int$ $@bf_4 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_5 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.height)))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.height) (ite$Int$ $@bf_89 (+ (ite$Int$ $@bf_4 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ $@bf_5 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ $@bf_4 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 r@66@0 AVLTreeNode.key))) (ite$Seq$Int$$ $@bf_5 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.keys))))
    (= Mask@72 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@21 r@66@0 AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@21 r@66@0 AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@21 r@66@0 AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@73 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@72 r@66@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@72 r@66@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@72 r@66@0 AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@74 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@73 r@66@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@73 r@66@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@73 r@66@0 AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@75 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@74 r@66@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@74 r@66@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@74 r@66@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (IsGoodExhaleState exhaleHeap@_2393@0 Heap@7 exhaleMask@_2394@21 SecMask@435)
    (IsGoodMask exhaleMask@_2394@21)
    (IsGoodMask Mask@72)
    (IsGoodMask Mask@73)
    (IsGoodMask Mask@74)
    (IsGoodMask Mask@75)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.keys)))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.keys))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2393@0 r@66@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 r@66@0 AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.keys))))
    (wf exhaleHeap@_2393@0 exhaleMask@_2394@21 SecMask@435)
    (wf exhaleHeap@_2393@0 Mask@72 SecMask@435)
    (wf exhaleHeap@_2393@0 Mask@73 SecMask@435)
    (wf exhaleHeap@_2393@0 Mask@74 SecMask@435)
    (wf exhaleHeap@_2393@0 Mask@75 SecMask@435)
  )(and 
    anon648@1_assertion
    anon648@2
))))
(let ((anon1026_Else (=> (and true
    (= exhaleMask@_2394@15 exhaleMask@_2394@17)
    (= exhaleMask@_2394@15 exhaleMask@_2394@19)
    (= exhaleMask@_2394@15 exhaleMask@_2394@21)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right))
    (not $@condition_$402)
    (not $@condition_$442)
    (not $@condition_$444)
  )
    anon648
)))
(let ((anon1028_Then@2 (=> (and true
    (= exhaleMask@_2394@20 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (= exhaleMask@_2394@20 exhaleMask@_2394@21)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_2394@20)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (wf Heap@7 exhaleMask@_2394@20 SecMask@435)
  )
    anon648
)))
(let ((anon1027_Then@2 (=> (and true
    $@condition_$444
    (= exhaleMask@_2394@18 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (= exhaleMask@_2394@18 exhaleMask@_2394@19)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
    (IsGoodMask exhaleMask@_2394@18)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))
    (wf Heap@7 exhaleMask@_2394@18 SecMask@435)
  )(and 
    anon1028_Then@1_assertion
    anon1028_Then@2
))))
(let ((anon1026_Then@2 (=> (and true
    $@condition_$442
    (= exhaleMask@_2394@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (= exhaleMask@_2394@16 exhaleMask@_2394@17)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.height) perm$N)))
    (IsGoodMask exhaleMask@_2394@16)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))
    (wf Heap@7 exhaleMask@_2394@16 SecMask@435)
    (wf Heap@7 Mask@71 SecMask@435)
  )(and 
    anon1027_Then@1_assertion
    anon1027_Then@2
))))
(let ((anon1026_Then (=> (and true
    $@condition_$402
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right)))
  )(and 
    anon1026_Then@1_assertion
    anon1026_Then@2
))))
(let (($branchMerge_135 (=> (and true
  )
    (and anon1026_Else anon1026_Then)
)))
(let ((anon641 (=> (and true
    (= exhaleMask@_2394@14 exhaleMask@_2394@15)
    (= SecMask@434 SecMask@435)
    (IsGoodMask exhaleMask@_2394@14)
    (wf Heap@7 exhaleMask@_2394@14 SecMask@434)
    (wf Heap@7 Mask@71 SecMask@434)
  )
    $branchMerge_135
)))
(let ((anon997_Else (=> (and true
    (= exhaleMask@_2394@13 exhaleMask@_2394@15)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right))
    (= SecMask@383 SecMask@435)
    (not $@condition_$399)
  )
    $branchMerge_135
)))
(let ((anon1025_Else (=> (and true
    (CanRead$Int$ exhaleMask@_2394@14 SecMask@434 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.valid)
    (not $@condition_$404)
  )
    anon641
)))
(let ((anon1025_Then (=> (and true
    $@condition_$404
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.valid))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.valid)))
    (not (CanRead$Int$ exhaleMask@_2394@14 SecMask@434 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.valid))
  )
    anon641
)))
(let (($branchMerge_136 (=> (and true
  )
    (and anon1025_Else anon1025_Then)
)))
(let ((anon638 (=> (and true
    (= SecMask@433 SecMask@434)
    (wf Heap@7 SecMask@433 SecMask@433)
  )
    $branchMerge_136
)))
(let ((anon998_Else (=> (and true
    (= SecMask@383 SecMask@434)
    (not $@condition_$401)
    (not (and (= predVer@_2192@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.valid)) (= predRec@_2191@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right))))
  )
    $branchMerge_136
)))
(let ((anon1017_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@417 SecMask@421)
    (= SecMask@417 SecMask@425)
    (= SecMask@417 SecMask@429)
    (= SecMask@417 SecMask@433)
    (not $@condition_$428)
    (not $@condition_$431)
    (not $@condition_$434)
    (not $@condition_$437)
  )
    anon638
)))
(let ((anon637 (=> (and true
    (= SecMask@432 SecMask@433)
    (wf Heap@7 Mask@71 SecMask@432)
    (wf Heap@7 SecMask@432 SecMask@432)
  )
    anon638
)))
(let ((anon1024_Else (=> (and true
    (= SecMask@430 SecMask@432)
    (not $@condition_$439)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@430 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon637
)))
(let ((anon1024_Then (=> (and true
    $@condition_$439
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@430 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@431 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@430 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@430 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@431 SecMask@432)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@430 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)))
  )
    anon637
)))
(let ((anon633 (=> (and true
    $@condition_$437
    (= SecMask@428 SecMask@429)
    (= SecMask@430 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@428 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@428 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@428 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@7 Mask@71 SecMask@428)
    (wf Heap@7 SecMask@428 SecMask@428)
  )
    (and anon1024_Else anon1024_Then)
)))
(let ((anon1022_Else (=> (and true
    (= SecMask@426 SecMask@428)
    (not $@condition_$436)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@426 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) 0))
  )
    anon633
)))
(let ((anon1022_Then (=> (and true
    $@condition_$436
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@426 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) 0)
    (= SecMask@427 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@426 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@426 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R 0)))
    (= SecMask@427 SecMask@428)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@426 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R)))
  )
    anon633
)))
(let ((anon629 (=> (and true
    $@condition_$434
    (= SecMask@424 SecMask@425)
    (= SecMask@426 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@424 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@424 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@424 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@7 Mask@71 SecMask@424)
    (wf Heap@7 SecMask@424 SecMask@424)
  )
    (and anon1022_Else anon1022_Then)
)))
(let ((anon1020_Else (=> (and true
    (= SecMask@422 SecMask@424)
    (not $@condition_$433)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@422 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) 0))
  )
    anon629
)))
(let ((anon1020_Then (=> (and true
    $@condition_$433
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@422 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) 0)
    (= SecMask@423 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@422 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@422 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R 0)))
    (= SecMask@423 SecMask@424)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@422 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R)))
  )
    anon629
)))
(let ((anon625 (=> (and true
    $@condition_$431
    (= SecMask@420 SecMask@421)
    (= SecMask@422 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@420 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@420 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@420 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@7 Mask@71 SecMask@420)
    (wf Heap@7 SecMask@420 SecMask@420)
  )
    (and anon1020_Else anon1020_Then)
)))
(let ((anon1018_Else (=> (and true
    (= SecMask@418 SecMask@420)
    (not $@condition_$430)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@418 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) 0))
  )
    anon625
)))
(let ((anon1018_Then (=> (and true
    $@condition_$430
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@418 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) 0)
    (= SecMask@419 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@418 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@418 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R 0)))
    (= SecMask@419 SecMask@420)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@418 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R)))
  )
    anon625
)))
(let ((anon1017_Then (=> (and true
    $@condition_$428
    (= SecMask@418 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@417 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@417 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@417 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right)))
  )
    (and anon1018_Else anon1018_Then)
)))
(let (($branchMerge_144 (=> (and true
  )
    (and anon1017_Else anon1017_Then)
)))
(let ((anon1009_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@401 SecMask@405)
    (= SecMask@401 SecMask@409)
    (= SecMask@401 SecMask@413)
    (= SecMask@401 SecMask@417)
    (not $@condition_$417)
    (not $@condition_$419)
    (not $@condition_$422)
    (not $@condition_$425)
  )
    $branchMerge_144
)))
(let ((anon621 (=> (and true
    (= SecMask@416 SecMask@417)
    (wf Heap@7 Mask@71 SecMask@416)
    (wf Heap@7 SecMask@416 SecMask@416)
  )
    $branchMerge_144
)))
(let ((anon1016_Else (=> (and true
    (= SecMask@414 SecMask@416)
    (not $@condition_$427)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@414 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon621
)))
(let ((anon1016_Then (=> (and true
    $@condition_$427
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@414 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@415 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@414 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@414 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@415 SecMask@416)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@414 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)))
  )
    anon621
)))
(let ((anon617 (=> (and true
    $@condition_$425
    (= SecMask@412 SecMask@413)
    (= SecMask@414 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@412 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@412 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@412 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@7 Mask@71 SecMask@412)
    (wf Heap@7 SecMask@412 SecMask@412)
  )
    (and anon1016_Else anon1016_Then)
)))
(let ((anon1014_Else (=> (and true
    (= SecMask@410 SecMask@412)
    (not $@condition_$424)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@410 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) 0))
  )
    anon617
)))
(let ((anon1014_Then (=> (and true
    $@condition_$424
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@410 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) 0)
    (= SecMask@411 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@410 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@410 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R 0)))
    (= SecMask@411 SecMask@412)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@410 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R)))
  )
    anon617
)))
(let ((anon613 (=> (and true
    $@condition_$422
    (= SecMask@408 SecMask@409)
    (= SecMask@410 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@408 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@408 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@408 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@7 Mask@71 SecMask@408)
    (wf Heap@7 SecMask@408 SecMask@408)
  )
    (and anon1014_Else anon1014_Then)
)))
(let ((anon1012_Else (=> (and true
    (= SecMask@406 SecMask@408)
    (not $@condition_$421)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@406 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) 0))
  )
    anon613
)))
(let ((anon1012_Then (=> (and true
    $@condition_$421
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@406 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) 0)
    (= SecMask@407 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@406 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@406 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R 0)))
    (= SecMask@407 SecMask@408)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@406 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R)))
  )
    anon613
)))
(let ((anon609 (=> (and true
    $@condition_$419
    (= SecMask@404 SecMask@405)
    (= SecMask@406 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@404 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@404 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@404 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@7 Mask@71 SecMask@404)
    (wf Heap@7 SecMask@404 SecMask@404)
  )
    (and anon1012_Else anon1012_Then)
)))
(let ((anon1010_Else (=> (and true
    (= SecMask@402 SecMask@404)
    (not $@condition_$418)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@402 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) 0))
  )
    anon609
)))
(let ((anon1010_Then (=> (and true
    $@condition_$418
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@402 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) 0)
    (= SecMask@403 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@402 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@402 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R 0)))
    (= SecMask@403 SecMask@404)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@402 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R)))
  )
    anon609
)))
(let ((anon1009_Then (=> (and true
    $@condition_$417
    (= SecMask@402 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@401 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@401 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@401 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon1010_Else anon1010_Then)
)))
(let ((anon606 (=> (and true
    (wf Heap@7 Mask@71 SecMask@401)
    (wf Heap@7 SecMask@401 SecMask@401)
  )
    (and anon1009_Else anon1009_Then)
)))
(let ((anon1008_Else (=> (and true
    (= SecMask@399 SecMask@401)
    (not $@condition_$416)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@399 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon606
)))
(let ((anon1008_Then (=> (and true
    $@condition_$416
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@399 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@400 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@399 predRec@_2191@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@399 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@400 SecMask@401)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@399 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R)))
  )
    anon606
)))
(let ((anon604 (=> (and true
    (= SecMask@399 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@398 predRec@_2191@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@398 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@398 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@7 Mask@71 SecMask@398)
    (wf Heap@7 SecMask@398 SecMask@398)
  )
    (and anon1008_Else anon1008_Then)
)))
(let ((anon1007_Else (=> (and true
    (= SecMask@396 SecMask@398)
    (not $@condition_$415)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@396 predRec@_2191@0 AVLTreeNode.keys) perm$R) 0))
  )
    anon604
)))
(let ((anon1007_Then (=> (and true
    $@condition_$415
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@396 predRec@_2191@0 AVLTreeNode.keys) perm$R) 0)
    (= SecMask@397 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@396 predRec@_2191@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@396 predRec@_2191@0 AVLTreeNode.keys) perm$R 0)))
    (= SecMask@397 SecMask@398)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@396 predRec@_2191@0 AVLTreeNode.keys) perm$R)))
  )
    anon604
)))
(let ((anon602 (=> (and true
    (= SecMask@396 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@395 predRec@_2191@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@395 predRec@_2191@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@395 predRec@_2191@0 AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@7 Mask@71 SecMask@395)
    (wf Heap@7 SecMask@395 SecMask@395)
  )
    (and anon1007_Else anon1007_Then)
)))
(let ((anon1006_Else (=> (and true
    (= SecMask@393 SecMask@395)
    (not $@condition_$414)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@393 predRec@_2191@0 AVLTreeNode.right) perm$R) 0))
  )
    anon602
)))
(let ((anon1006_Then (=> (and true
    $@condition_$414
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@393 predRec@_2191@0 AVLTreeNode.right) perm$R) 0)
    (= SecMask@394 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@393 predRec@_2191@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@393 predRec@_2191@0 AVLTreeNode.right) perm$R 0)))
    (= SecMask@394 SecMask@395)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@393 predRec@_2191@0 AVLTreeNode.right) perm$R)))
  )
    anon602
)))
(let ((anon600 (=> (and true
    (= SecMask@393 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@392 predRec@_2191@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@392 predRec@_2191@0 AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@392 predRec@_2191@0 AVLTreeNode.right) perm$R) (* (- 1) (Fractions 100))))))
    (wf Heap@7 Mask@71 SecMask@392)
    (wf Heap@7 SecMask@392 SecMask@392)
  )
    (and anon1006_Else anon1006_Then)
)))
(let ((anon1005_Else (=> (and true
    (= SecMask@390 SecMask@392)
    (not $@condition_$413)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@390 predRec@_2191@0 AVLTreeNode.left) perm$R) 0))
  )
    anon600
)))
(let ((anon1005_Then (=> (and true
    $@condition_$413
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@390 predRec@_2191@0 AVLTreeNode.left) perm$R) 0)
    (= SecMask@391 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@390 predRec@_2191@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@390 predRec@_2191@0 AVLTreeNode.left) perm$R 0)))
    (= SecMask@391 SecMask@392)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@390 predRec@_2191@0 AVLTreeNode.left) perm$R)))
  )
    anon600
)))
(let ((anon598 (=> (and true
    (= SecMask@390 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@389 predRec@_2191@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@389 predRec@_2191@0 AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@389 predRec@_2191@0 AVLTreeNode.left) perm$R) (* (- 1) (Fractions 100))))))
    (wf Heap@7 Mask@71 SecMask@389)
    (wf Heap@7 SecMask@389 SecMask@389)
  )
    (and anon1005_Else anon1005_Then)
)))
(let ((anon1004_Else (=> (and true
    (= SecMask@387 SecMask@389)
    (not $@condition_$412)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@387 predRec@_2191@0 AVLTreeNode.height) perm$R) 0))
  )
    anon598
)))
(let ((anon1004_Then (=> (and true
    $@condition_$412
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@387 predRec@_2191@0 AVLTreeNode.height) perm$R) 0)
    (= SecMask@388 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@387 predRec@_2191@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@387 predRec@_2191@0 AVLTreeNode.height) perm$R 0)))
    (= SecMask@388 SecMask@389)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@387 predRec@_2191@0 AVLTreeNode.height) perm$R)))
  )
    anon598
)))
(let ((anon596 (=> (and true
    (= SecMask@387 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@386 predRec@_2191@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@386 predRec@_2191@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@386 predRec@_2191@0 AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@7 Mask@71 SecMask@386)
    (wf Heap@7 SecMask@386 SecMask@386)
  )
    (and anon1004_Else anon1004_Then)
)))
(let ((anon1003_Else (=> (and true
    (= SecMask@384 SecMask@386)
    (not $@condition_$411)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@384 predRec@_2191@0 AVLTreeNode.key) perm$R) 0))
  )
    anon596
)))
(let ((anon1003_Then (=> (and true
    $@condition_$411
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@384 predRec@_2191@0 AVLTreeNode.key) perm$R) 0)
    (= SecMask@385 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@384 predRec@_2191@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@384 predRec@_2191@0 AVLTreeNode.key) perm$R 0)))
    (= SecMask@385 SecMask@386)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@384 predRec@_2191@0 AVLTreeNode.key) perm$R)))
  )
    anon596
)))
(let ((anon594 (=> (and true
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 predRec@_2191@0 AVLTreeNode.height))
    (= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.balanceFactor))
    (= (= true $@bf_86) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.left)))
    (= (= true $@bf_87) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.right)))
    (= (= true $@bf_88) (< (ite$Int$ $@bf_87 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height)) (ite$Int$ $@bf_86 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height))))
    (= (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height)) 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.height))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 predRec@_2191@0 AVLTreeNode.balanceFactor) (+ (ite$Int$ $@bf_86 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_87 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 predRec@_2191@0 AVLTreeNode.height) (ite$Int$ $@bf_88 (+ (ite$Int$ $@bf_86 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ $@bf_87 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 predRec@_2191@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ $@bf_86 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 predRec@_2191@0 AVLTreeNode.key))) (ite$Seq$Int$$ $@bf_87 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys))))
    (= SecMask@384 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@383 predRec@_2191@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@383 predRec@_2191@0 AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@383 predRec@_2191@0 AVLTreeNode.key) perm$R) (* (- 1) (Fractions 100))))))
    (forall( (|kk#81_$9| Int))(= (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) |kk#81_$9|) (or (= |kk#81_$9| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.key)) (or (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys) |kk#81_$9|) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) null))) (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys) |kk#81_$9|) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) null)))))))
    (not (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 predRec@_2191@0 AVLTreeNode.balanceFactor) (- 1)))
    (not (< 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 predRec@_2191@0 AVLTreeNode.balanceFactor)))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 predRec@_2191@0 AVLTreeNode.height)))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 predRec@_2191@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 predRec@_2191@0 AVLTreeNode.key))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys))))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 predRec@_2191@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 predRec@_2191@0 AVLTreeNode.keys))
  )
    (and anon1003_Else anon1003_Then)
)))
(let ((anon1001_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right))
    (not $@condition_$407)
    (not $@condition_$409)
  )
    anon594
)))
(let ((anon1001_Then (=> (and true
    $@condition_$407
    $@condition_$409
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height))
    (forall( (|rk#80#702| Int))(=> (and (< |rk#80#702| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 |rk#80#702|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys) |rk#80#702|))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right)))
  )
    anon594
)))
(let (($branchMerge_139 (=> (and true
  )
    (and anon1001_Else anon1001_Then)
)))
(let ((anon999_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left))
    (not $@condition_$403)
    (not $@condition_$405)
  )
    $branchMerge_139
)))
(let ((anon999_Then (=> (and true
    $@condition_$403
    $@condition_$405
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height))
    (forall( (|lk#79#701| Int))(=> (and (< |lk#79#701| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 |lk#79#701|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys) |lk#79#701|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.key))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left)))
  )
    $branchMerge_139
)))
(let ((anon998_Then (=> (and true
    $@condition_$401
    (= predRec@_2191@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right))
    (= predVer@_2192@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 predRec@_2191@0 AVLTreeNode.valid))
  )
    (and anon999_Else anon999_Then)
)))
(let ((anon997_Then@2 (=> (and true
    (= exhaleMask@_2394@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))
  )
    (and anon998_Else anon998_Then)
)))
(let ((anon997_Then (=> (and true
    $@condition_$399
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right)))
  )(and 
    anon997_Then@1_assertion
    anon997_Then@2
))))
(let (($branchMerge_134 (=> (and true
  )
    (and anon997_Else anon997_Then)
)))
(let ((anon994_Else (=> (and true
    (= exhaleMask@_2394@11 exhaleMask@_2394@13)
    (= exhaleMask@_2394@11 exhaleMask@_2394@7)
    (= exhaleMask@_2394@11 exhaleMask@_2394@9)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left))
    (not $@condition_$355)
    (not $@condition_$395)
    (not $@condition_$397)
  )
    $branchMerge_134
)))
(let ((anon996_Then@2 (=> (and true
    (= exhaleMask@_2394@12 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (= exhaleMask@_2394@12 exhaleMask@_2394@13)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_2394@12)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (wf Heap@7 exhaleMask@_2394@12 SecMask@383)
  )
    $branchMerge_134
)))
(let ((anon995_Then@2 (=> (and true
    $@condition_$397
    (= exhaleMask@_2394@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (= exhaleMask@_2394@10 exhaleMask@_2394@11)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
    (IsGoodMask exhaleMask@_2394@10)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))
    (wf Heap@7 exhaleMask@_2394@10 SecMask@383)
  )(and 
    anon996_Then@1_assertion
    anon996_Then@2
))))
(let ((anon994_Then@2 (=> (and true
    $@condition_$395
    (= exhaleMask@_2394@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (= exhaleMask@_2394@8 exhaleMask@_2394@9)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.height) perm$N)))
    (IsGoodMask exhaleMask@_2394@8)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))
    (wf Heap@7 exhaleMask@_2394@8 SecMask@383)
    (wf Heap@7 Mask@71 SecMask@383)
  )(and 
    anon995_Then@1_assertion
    anon995_Then@2
))))
(let ((anon994_Then (=> (and true
    $@condition_$355
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left)))
  )(and 
    anon994_Then@1_assertion
    anon994_Then@2
))))
(let (($branchMerge_120 (=> (and true
  )
    (and anon994_Else anon994_Then)
)))
(let ((anon577 (=> (and true
    (= exhaleMask@_2394@6 exhaleMask@_2394@7)
    (= SecMask@382 SecMask@383)
    (IsGoodMask exhaleMask@_2394@6)
    (wf Heap@7 exhaleMask@_2394@6 SecMask@382)
    (wf Heap@7 Mask@71 SecMask@382)
  )
    $branchMerge_120
)))
(let ((anon965_Else (=> (and true
    (= exhaleMask@_2394@5 exhaleMask@_2394@7)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left))
    (= SecMask@331 SecMask@383)
    (not $@condition_$353)
  )
    $branchMerge_120
)))
(let ((anon993_Else (=> (and true
    (CanRead$Int$ exhaleMask@_2394@6 SecMask@382 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.valid)
    (not $@condition_$357)
  )
    anon577
)))
(let ((anon993_Then (=> (and true
    $@condition_$357
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.valid))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2393@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.valid)))
    (not (CanRead$Int$ exhaleMask@_2394@6 SecMask@382 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.valid))
  )
    anon577
)))
(let (($branchMerge_121 (=> (and true
  )
    (and anon993_Else anon993_Then)
)))
(let ((anon574 (=> (and true
    (= SecMask@381 SecMask@382)
    (wf Heap@7 SecMask@381 SecMask@381)
  )
    $branchMerge_121
)))
(let ((anon966_Else (=> (and true
    (= SecMask@331 SecMask@382)
    (not $@condition_$354)
    (not (and (= predVer@_2192@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.valid)) (= predRec@_2191@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left))))
  )
    $branchMerge_121
)))
(let ((anon573 (=> (and true
    (= SecMask@380 SecMask@381)
    (wf Heap@7 Mask@71 SecMask@380)
    (wf Heap@7 SecMask@380 SecMask@380)
  )
    anon574
)))
(let ((anon991_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@377 SecMask@381)
    (not $@condition_$390)
  )
    anon574
)))
(let ((anon992_Else (=> (and true
    (= SecMask@378 SecMask@380)
    (not $@condition_$392)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@378 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon573
)))
(let ((anon992_Then (=> (and true
    $@condition_$392
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@378 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@379 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@378 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@378 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@379 SecMask@380)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@378 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)))
  )
    anon573
)))
(let ((anon991_Then (=> (and true
    $@condition_$390
    (= SecMask@378 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@377 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@377 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@377 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right)))
  )
    (and anon992_Else anon992_Then)
)))
(let (($branchMerge_132 (=> (and true
  )
    (and anon991_Else anon991_Then)
)))
(let ((anon569 (=> (and true
    (= SecMask@376 SecMask@377)
    (wf Heap@7 Mask@71 SecMask@376)
    (wf Heap@7 SecMask@376 SecMask@376)
  )
    $branchMerge_132
)))
(let ((anon989_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@373 SecMask@377)
    (not $@condition_$387)
  )
    $branchMerge_132
)))
(let ((anon990_Else (=> (and true
    (= SecMask@374 SecMask@376)
    (not $@condition_$389)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@374 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) 0))
  )
    anon569
)))
(let ((anon990_Then (=> (and true
    $@condition_$389
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@374 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) 0)
    (= SecMask@375 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@374 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@374 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R 0)))
    (= SecMask@375 SecMask@376)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@374 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R)))
  )
    anon569
)))
(let ((anon989_Then (=> (and true
    $@condition_$387
    (= SecMask@374 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@373 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@373 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@373 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right)))
  )
    (and anon990_Else anon990_Then)
)))
(let (($branchMerge_131 (=> (and true
  )
    (and anon989_Else anon989_Then)
)))
(let ((anon565 (=> (and true
    (= SecMask@372 SecMask@373)
    (wf Heap@7 Mask@71 SecMask@372)
    (wf Heap@7 SecMask@372 SecMask@372)
  )
    $branchMerge_131
)))
(let ((anon987_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@369 SecMask@373)
    (not $@condition_$384)
  )
    $branchMerge_131
)))
(let ((anon988_Else (=> (and true
    (= SecMask@370 SecMask@372)
    (not $@condition_$386)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@370 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) 0))
  )
    anon565
)))
(let ((anon988_Then (=> (and true
    $@condition_$386
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@370 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) 0)
    (= SecMask@371 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@370 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@370 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R 0)))
    (= SecMask@371 SecMask@372)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@370 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R)))
  )
    anon565
)))
(let ((anon987_Then (=> (and true
    $@condition_$384
    (= SecMask@370 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@369 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@369 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@369 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right)))
  )
    (and anon988_Else anon988_Then)
)))
(let (($branchMerge_130 (=> (and true
  )
    (and anon987_Else anon987_Then)
)))
(let ((anon561 (=> (and true
    (= SecMask@368 SecMask@369)
    (wf Heap@7 Mask@71 SecMask@368)
    (wf Heap@7 SecMask@368 SecMask@368)
  )
    $branchMerge_130
)))
(let ((anon985_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@365 SecMask@369)
    (not $@condition_$381)
  )
    $branchMerge_130
)))
(let ((anon986_Else (=> (and true
    (= SecMask@366 SecMask@368)
    (not $@condition_$383)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@366 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) 0))
  )
    anon561
)))
(let ((anon986_Then (=> (and true
    $@condition_$383
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@366 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) 0)
    (= SecMask@367 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@366 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@366 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R 0)))
    (= SecMask@367 SecMask@368)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@366 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R)))
  )
    anon561
)))
(let ((anon985_Then (=> (and true
    $@condition_$381
    (= SecMask@366 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@365 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@365 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@365 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right)))
  )
    (and anon986_Else anon986_Then)
)))
(let (($branchMerge_129 (=> (and true
  )
    (and anon985_Else anon985_Then)
)))
(let ((anon557 (=> (and true
    (= SecMask@364 SecMask@365)
    (wf Heap@7 Mask@71 SecMask@364)
    (wf Heap@7 SecMask@364 SecMask@364)
  )
    $branchMerge_129
)))
(let ((anon983_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@361 SecMask@365)
    (not $@condition_$378)
  )
    $branchMerge_129
)))
(let ((anon984_Else (=> (and true
    (= SecMask@362 SecMask@364)
    (not $@condition_$380)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@362 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon557
)))
(let ((anon984_Then (=> (and true
    $@condition_$380
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@362 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@363 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@362 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@362 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@363 SecMask@364)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@362 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)))
  )
    anon557
)))
(let ((anon983_Then (=> (and true
    $@condition_$378
    (= SecMask@362 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@361 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@361 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@361 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon984_Else anon984_Then)
)))
(let (($branchMerge_128 (=> (and true
  )
    (and anon983_Else anon983_Then)
)))
(let ((anon553 (=> (and true
    (= SecMask@360 SecMask@361)
    (wf Heap@7 Mask@71 SecMask@360)
    (wf Heap@7 SecMask@360 SecMask@360)
  )
    $branchMerge_128
)))
(let ((anon981_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@357 SecMask@361)
    (not $@condition_$375)
  )
    $branchMerge_128
)))
(let ((anon982_Else (=> (and true
    (= SecMask@358 SecMask@360)
    (not $@condition_$377)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@358 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) 0))
  )
    anon553
)))
(let ((anon982_Then (=> (and true
    $@condition_$377
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@358 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) 0)
    (= SecMask@359 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@358 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@358 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R 0)))
    (= SecMask@359 SecMask@360)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@358 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R)))
  )
    anon553
)))
(let ((anon981_Then (=> (and true
    $@condition_$375
    (= SecMask@358 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@357 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@357 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@357 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon982_Else anon982_Then)
)))
(let (($branchMerge_127 (=> (and true
  )
    (and anon981_Else anon981_Then)
)))
(let ((anon549 (=> (and true
    (= SecMask@356 SecMask@357)
    (wf Heap@7 Mask@71 SecMask@356)
    (wf Heap@7 SecMask@356 SecMask@356)
  )
    $branchMerge_127
)))
(let ((anon979_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@353 SecMask@357)
    (not $@condition_$372)
  )
    $branchMerge_127
)))
(let ((anon980_Else (=> (and true
    (= SecMask@354 SecMask@356)
    (not $@condition_$374)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@354 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) 0))
  )
    anon549
)))
(let ((anon980_Then (=> (and true
    $@condition_$374
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@354 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) 0)
    (= SecMask@355 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@354 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@354 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R 0)))
    (= SecMask@355 SecMask@356)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@354 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R)))
  )
    anon549
)))
(let ((anon979_Then (=> (and true
    $@condition_$372
    (= SecMask@354 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@353 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@353 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@353 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon980_Else anon980_Then)
)))
(let (($branchMerge_126 (=> (and true
  )
    (and anon979_Else anon979_Then)
)))
(let ((anon545 (=> (and true
    (= SecMask@352 SecMask@353)
    (wf Heap@7 Mask@71 SecMask@352)
    (wf Heap@7 SecMask@352 SecMask@352)
  )
    $branchMerge_126
)))
(let ((anon977_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@349 SecMask@353)
    (not $@condition_$370)
  )
    $branchMerge_126
)))
(let ((anon978_Else (=> (and true
    (= SecMask@350 SecMask@352)
    (not $@condition_$371)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@350 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) 0))
  )
    anon545
)))
(let ((anon978_Then (=> (and true
    $@condition_$371
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@350 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) 0)
    (= SecMask@351 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@350 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@350 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R 0)))
    (= SecMask@351 SecMask@352)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@350 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R)))
  )
    anon545
)))
(let ((anon977_Then (=> (and true
    $@condition_$370
    (= SecMask@350 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@349 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@349 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@349 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon978_Else anon978_Then)
)))
(let ((anon542 (=> (and true
    (wf Heap@7 Mask@71 SecMask@349)
    (wf Heap@7 SecMask@349 SecMask@349)
  )
    (and anon977_Else anon977_Then)
)))
(let ((anon976_Else (=> (and true
    (= SecMask@347 SecMask@349)
    (not $@condition_$369)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@347 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon542
)))
(let ((anon976_Then (=> (and true
    $@condition_$369
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@347 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@348 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@347 predRec@_2191@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@347 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@348 SecMask@349)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@347 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R)))
  )
    anon542
)))
(let ((anon540 (=> (and true
    (= SecMask@347 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@346 predRec@_2191@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@346 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@346 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@7 Mask@71 SecMask@346)
    (wf Heap@7 SecMask@346 SecMask@346)
  )
    (and anon976_Else anon976_Then)
)))
(let ((anon975_Else (=> (and true
    (= SecMask@344 SecMask@346)
    (not $@condition_$368)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@344 predRec@_2191@0 AVLTreeNode.keys) perm$R) 0))
  )
    anon540
)))
(let ((anon975_Then (=> (and true
    $@condition_$368
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@344 predRec@_2191@0 AVLTreeNode.keys) perm$R) 0)
    (= SecMask@345 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@344 predRec@_2191@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@344 predRec@_2191@0 AVLTreeNode.keys) perm$R 0)))
    (= SecMask@345 SecMask@346)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@344 predRec@_2191@0 AVLTreeNode.keys) perm$R)))
  )
    anon540
)))
(let ((anon538 (=> (and true
    (= SecMask@344 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@343 predRec@_2191@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@343 predRec@_2191@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@343 predRec@_2191@0 AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@7 Mask@71 SecMask@343)
    (wf Heap@7 SecMask@343 SecMask@343)
  )
    (and anon975_Else anon975_Then)
)))
(let ((anon974_Else (=> (and true
    (= SecMask@341 SecMask@343)
    (not $@condition_$367)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@341 predRec@_2191@0 AVLTreeNode.right) perm$R) 0))
  )
    anon538
)))
(let ((anon974_Then (=> (and true
    $@condition_$367
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@341 predRec@_2191@0 AVLTreeNode.right) perm$R) 0)
    (= SecMask@342 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@341 predRec@_2191@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@341 predRec@_2191@0 AVLTreeNode.right) perm$R 0)))
    (= SecMask@342 SecMask@343)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@341 predRec@_2191@0 AVLTreeNode.right) perm$R)))
  )
    anon538
)))
(let ((anon536 (=> (and true
    (= SecMask@341 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@340 predRec@_2191@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@340 predRec@_2191@0 AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@340 predRec@_2191@0 AVLTreeNode.right) perm$R) (* (- 1) (Fractions 100))))))
    (wf Heap@7 Mask@71 SecMask@340)
    (wf Heap@7 SecMask@340 SecMask@340)
  )
    (and anon974_Else anon974_Then)
)))
(let ((anon973_Else (=> (and true
    (= SecMask@338 SecMask@340)
    (not $@condition_$366)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@338 predRec@_2191@0 AVLTreeNode.left) perm$R) 0))
  )
    anon536
)))
(let ((anon973_Then (=> (and true
    $@condition_$366
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@338 predRec@_2191@0 AVLTreeNode.left) perm$R) 0)
    (= SecMask@339 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@338 predRec@_2191@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@338 predRec@_2191@0 AVLTreeNode.left) perm$R 0)))
    (= SecMask@339 SecMask@340)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@338 predRec@_2191@0 AVLTreeNode.left) perm$R)))
  )
    anon536
)))
(let ((anon534 (=> (and true
    (= SecMask@338 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@337 predRec@_2191@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@337 predRec@_2191@0 AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@337 predRec@_2191@0 AVLTreeNode.left) perm$R) (* (- 1) (Fractions 100))))))
    (wf Heap@7 Mask@71 SecMask@337)
    (wf Heap@7 SecMask@337 SecMask@337)
  )
    (and anon973_Else anon973_Then)
)))
(let ((anon972_Else (=> (and true
    (= SecMask@335 SecMask@337)
    (not $@condition_$365)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@335 predRec@_2191@0 AVLTreeNode.height) perm$R) 0))
  )
    anon534
)))
(let ((anon972_Then (=> (and true
    $@condition_$365
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@335 predRec@_2191@0 AVLTreeNode.height) perm$R) 0)
    (= SecMask@336 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@335 predRec@_2191@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@335 predRec@_2191@0 AVLTreeNode.height) perm$R 0)))
    (= SecMask@336 SecMask@337)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@335 predRec@_2191@0 AVLTreeNode.height) perm$R)))
  )
    anon534
)))
(let ((anon532 (=> (and true
    (= SecMask@335 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@334 predRec@_2191@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@334 predRec@_2191@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@334 predRec@_2191@0 AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@7 Mask@71 SecMask@334)
    (wf Heap@7 SecMask@334 SecMask@334)
  )
    (and anon972_Else anon972_Then)
)))
(let ((anon971_Else (=> (and true
    (= SecMask@332 SecMask@334)
    (not $@condition_$364)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@332 predRec@_2191@0 AVLTreeNode.key) perm$R) 0))
  )
    anon532
)))
(let ((anon971_Then (=> (and true
    $@condition_$364
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@332 predRec@_2191@0 AVLTreeNode.key) perm$R) 0)
    (= SecMask@333 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@332 predRec@_2191@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@332 predRec@_2191@0 AVLTreeNode.key) perm$R 0)))
    (= SecMask@333 SecMask@334)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@332 predRec@_2191@0 AVLTreeNode.key) perm$R)))
  )
    anon532
)))
(let ((anon530 (=> (and true
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 predRec@_2191@0 AVLTreeNode.height))
    (= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.balanceFactor))
    (= (= true $@bf_83) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.left)))
    (= (= true $@bf_84) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.right)))
    (= (= true $@bf_85) (< (ite$Int$ $@bf_84 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height)) (ite$Int$ $@bf_83 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height))))
    (= (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height)) 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.height))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 predRec@_2191@0 AVLTreeNode.balanceFactor) (+ (ite$Int$ $@bf_83 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_84 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 predRec@_2191@0 AVLTreeNode.height) (ite$Int$ $@bf_85 (+ (ite$Int$ $@bf_83 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ $@bf_84 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 predRec@_2191@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ $@bf_83 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 predRec@_2191@0 AVLTreeNode.key))) (ite$Seq$Int$$ $@bf_84 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys))))
    (= SecMask@332 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@331 predRec@_2191@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@331 predRec@_2191@0 AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@331 predRec@_2191@0 AVLTreeNode.key) perm$R) (* (- 1) (Fractions 100))))))
    (forall( (|kk#81_$8| Int))(= (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) |kk#81_$8|) (or (= |kk#81_$8| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.key)) (or (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys) |kk#81_$8|) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) null))) (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys) |kk#81_$8|) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) null)))))))
    (not (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 predRec@_2191@0 AVLTreeNode.balanceFactor) (- 1)))
    (not (< 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 predRec@_2191@0 AVLTreeNode.balanceFactor)))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 predRec@_2191@0 AVLTreeNode.height)))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 predRec@_2191@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 predRec@_2191@0 AVLTreeNode.key))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys))))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 predRec@_2191@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 predRec@_2191@0 AVLTreeNode.keys))
  )
    (and anon971_Else anon971_Then)
)))
(let ((anon969_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right))
    (not $@condition_$360)
    (not $@condition_$362)
  )
    anon530
)))
(let ((anon969_Then (=> (and true
    $@condition_$360
    $@condition_$362
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height))
    (forall( (|rk#80#697| Int))(=> (and (< |rk#80#697| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 |rk#80#697|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys) |rk#80#697|))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.right)))
  )
    anon530
)))
(let (($branchMerge_124 (=> (and true
  )
    (and anon969_Else anon969_Then)
)))
(let ((anon967_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left))
    (not $@condition_$356)
    (not $@condition_$358)
  )
    $branchMerge_124
)))
(let ((anon967_Then (=> (and true
    $@condition_$356
    $@condition_$358
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height))
    (forall( (|lk#79#696| Int))(=> (and (< |lk#79#696| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 |lk#79#696|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys) |lk#79#696|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.key))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 predRec@_2191@0 AVLTreeNode.left)))
  )
    $branchMerge_124
)))
(let ((anon966_Then (=> (and true
    $@condition_$354
    (= predRec@_2191@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left))
    (= predVer@_2192@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 predRec@_2191@0 AVLTreeNode.valid))
  )
    (and anon967_Else anon967_Then)
)))
(let ((anon965_Then@2 (=> (and true
    (= exhaleMask@_2394@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))
  )
    (and anon966_Else anon966_Then)
)))
(let ((anon965_Then (=> (and true
    $@condition_$353
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left)))
  )(and 
    anon965_Then@1_assertion
    anon965_Then@2
))))
(let ((anon520@14 (=> (and true
    (= exhaleMask@_2394@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@4 r@66@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@4 r@66@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@4 r@66@0 AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@4 r@66@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@4 r@66@0 AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_2394@5)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@4 r@66@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 100)))
    (wf Heap@7 exhaleMask@_2394@5 SecMask@331)
  )
    (and anon965_Else anon965_Then)
)))
(let ((anon520@12 (=> (and true
    (= exhaleMask@_2394@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@3 r@66@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@3 r@66@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@3 r@66@0 AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@3 r@66@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@3 r@66@0 AVLTreeNode.keys) perm$N)))
    (IsGoodMask exhaleMask@_2394@4)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2394@3 r@66@0 AVLTreeNode.keys) perm$R) (Fractions 100)))
    (wf Heap@7 exhaleMask@_2394@4 SecMask@331)
  )(and 
    anon520@13_assertion
    anon520@14
))))
(let ((anon520@10 (=> (and true
    (= exhaleMask@_2394@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2394@2 r@66@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2394@2 r@66@0 AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2394@2 r@66@0 AVLTreeNode.right) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2394@2 r@66@0 AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2394@2 r@66@0 AVLTreeNode.right) perm$N)))
    (IsGoodMask exhaleMask@_2394@3)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2394@2 r@66@0 AVLTreeNode.right) perm$R) (Fractions 100)))
    (wf Heap@7 exhaleMask@_2394@3 SecMask@331)
  )(and 
    anon520@11_assertion
    anon520@12
))))
(let ((anon520@8 (=> (and true
    (= exhaleMask@_2394@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2394@1 r@66@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2394@1 r@66@0 AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2394@1 r@66@0 AVLTreeNode.left) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2394@1 r@66@0 AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2394@1 r@66@0 AVLTreeNode.left) perm$N)))
    (IsGoodMask exhaleMask@_2394@2)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2394@1 r@66@0 AVLTreeNode.left) perm$R) (Fractions 100)))
    (wf Heap@7 exhaleMask@_2394@2 SecMask@331)
  )(and 
    anon520@9_assertion
    anon520@10
))))
(let ((anon520@6 (=> (and true
    (= exhaleMask@_2394@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@0 r@66@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@0 r@66@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@0 r@66@0 AVLTreeNode.height) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@0 r@66@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@0 r@66@0 AVLTreeNode.height) perm$N)))
    (IsGoodMask exhaleMask@_2394@1)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2394@0 r@66@0 AVLTreeNode.height) perm$R) (Fractions 100)))
    (wf Heap@7 exhaleMask@_2394@1 SecMask@331)
  )(and 
    anon520@7_assertion
    anon520@8
))))
(let ((anon520@4 (=> (and true
    (= exhaleMask@_2394@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@71 r@66@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@71 r@66@0 AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@71 r@66@0 AVLTreeNode.key) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@71 r@66@0 AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@71 r@66@0 AVLTreeNode.key) perm$N)))
    (IsGoodMask exhaleMask@_2394@0)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@71 r@66@0 AVLTreeNode.key) perm$R) (Fractions 100)))
    (wf Heap@7 exhaleMask@_2394@0 SecMask@331)
  )(and 
    anon520@5_assertion
    anon520@6
))))
(let ((anon520@2 (=> (and true
    (>= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.height))) (- 0 1))
    (not (< (+ (ite$Int$ $@bf_4 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_5 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.height)))) (- 1)))
  )(and 
    anon520@3_assertion
    anon520@4
))))
(let ((anon520@1 (=> (and true
    (<= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.height))) 1)
    (not (< 1 (+ (ite$Int$ $@bf_4 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_5 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.height))))))
  )(and 
    anon520@1_assertion
    anon520@2
))))
(let ((anon520 (=> (and true
    (= (= true $@bf_4) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left)))
    (= (= true $@bf_5) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right)))
  )(and 
    anon520_assertion
    anon520@1
))))
(let ((anon964_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right))
    (not $@condition_$351)
  )
    anon520
)))
(let ((anon964_Then@1 (=> (and true
    (forall( (|k#93#695| Int))(=> (and (< |k#93#695| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 |k#93#695|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 r@66@0 AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) |k#93#695|))))
  )
    anon520
)))
(let ((anon964_Then (=> (and true
    $@condition_$351
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.right)))
  )(and 
    anon964_Then_assertion
    anon964_Then@1
))))
(let (($branchMerge_119 (=> (and true
  )
    (and anon964_Else anon964_Then)
)))
(let ((anon963_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left))
    (not $@condition_$350)
  )
    $branchMerge_119
)))
(let ((anon963_Then@1 (=> (and true
    (forall( (|k#92#694| Int))(=> (and (< |k#92#694| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 |k#92#694|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) |k#92#694|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@7 r@66@0 AVLTreeNode.key))))
  )
    $branchMerge_119
)))
(let ((anon963_Then (=> (and true
    $@condition_$350
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@7 r@66@0 AVLTreeNode.left)))
  )(and 
    anon963_Then_assertion
    anon963_Then@1
))))
(let ((anon516@1 (=> (and true
    (< (* 1000 methodCallK@_2392) (Fractions 1))
    (< (* 1000 methodCallK@_2392) methodK@_2144)
    (< 0 methodCallK@_2392)
    (= Heap@7 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2338@0 r@66@0 AVLTreeNode.right this))
    (CanWrite$ref$ Mask@71 r@66@0 AVLTreeNode.right)
    (not (= (Fractions 1) (* 1000 methodCallK@_2392)))
    (not (= 0 methodCallK@_2392))
    (not (= methodK@_2144 (* 1000 methodCallK@_2392)))
    (wf Heap@7 Mask@71 SecMask@331)
  )
    (and anon963_Else anon963_Then)
)))
(let ((anon516 (=> (and true
    (= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.height))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2338@0 this AVLTreeNode.balanceFactor))
    (= (= true $@bf_82) (< (ite$Int$ $@bf_3 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.height)) (ite$Int$ $@bf_2 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.height))))
    (= (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.height)) 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2338@0 this AVLTreeNode.height))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2338@0 this AVLTreeNode.balanceFactor) (+ (ite$Int$ $@bf_2 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_3 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.height)))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2338@0 this AVLTreeNode.height) (ite$Int$ $@bf_82 (+ (ite$Int$ $@bf_2 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ $@bf_3 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2338@0 this AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ $@bf_2 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 this AVLTreeNode.key))) (ite$Seq$Int$$ $@bf_3 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.keys))))
    (= Mask@68 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@21 this AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@21 this AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@21 this AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@69 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@68 this AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@68 this AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@68 this AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@70 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@69 this AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@69 this AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@69 this AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@71 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@70 this AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@70 this AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@70 this AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (IsGoodExhaleState exhaleHeap@_2338@0 Heap@6 exhaleMask@_2339@21 SecMask@331)
    (IsGoodMask exhaleMask@_2339@21)
    (IsGoodMask Mask@68)
    (IsGoodMask Mask@69)
    (IsGoodMask Mask@70)
    (IsGoodMask Mask@71)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2338@0 this AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2338@0 this AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2338@0 this AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2338@0 this AVLTreeNode.keys)))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2338@0 this AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2338@0 this AVLTreeNode.keys))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2338@0 this AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 this AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.keys))))
    (wf exhaleHeap@_2338@0 exhaleMask@_2339@21 SecMask@331)
    (wf exhaleHeap@_2338@0 Mask@68 SecMask@331)
    (wf exhaleHeap@_2338@0 Mask@69 SecMask@331)
    (wf exhaleHeap@_2338@0 Mask@70 SecMask@331)
    (wf exhaleHeap@_2338@0 Mask@71 SecMask@331)
  )(and 
    anon516_assertion
    anon516@1
))))
(let ((anon960_Else (=> (and true
    (= exhaleMask@_2339@15 exhaleMask@_2339@17)
    (= exhaleMask@_2339@15 exhaleMask@_2339@19)
    (= exhaleMask@_2339@15 exhaleMask@_2339@21)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right))
    (not $@condition_$306)
    (not $@condition_$346)
    (not $@condition_$348)
  )
    anon516
)))
(let ((anon962_Then@2 (=> (and true
    (= exhaleMask@_2339@20 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (= exhaleMask@_2339@20 exhaleMask@_2339@21)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_2339@20)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (wf Heap@6 exhaleMask@_2339@20 SecMask@331)
  )
    anon516
)))
(let ((anon961_Then@2 (=> (and true
    $@condition_$348
    (= exhaleMask@_2339@18 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (= exhaleMask@_2339@18 exhaleMask@_2339@19)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
    (IsGoodMask exhaleMask@_2339@18)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))
    (wf Heap@6 exhaleMask@_2339@18 SecMask@331)
  )(and 
    anon962_Then@1_assertion
    anon962_Then@2
))))
(let ((anon960_Then@2 (=> (and true
    $@condition_$346
    (= exhaleMask@_2339@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (= exhaleMask@_2339@16 exhaleMask@_2339@17)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.height) perm$N)))
    (IsGoodMask exhaleMask@_2339@16)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))
    (wf Heap@6 exhaleMask@_2339@16 SecMask@331)
    (wf Heap@6 Mask@67 SecMask@331)
  )(and 
    anon961_Then@1_assertion
    anon961_Then@2
))))
(let ((anon960_Then (=> (and true
    $@condition_$306
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right)))
  )(and 
    anon960_Then@1_assertion
    anon960_Then@2
))))
(let (($branchMerge_105 (=> (and true
  )
    (and anon960_Else anon960_Then)
)))
(let ((anon509 (=> (and true
    (= exhaleMask@_2339@14 exhaleMask@_2339@15)
    (= SecMask@330 SecMask@331)
    (IsGoodMask exhaleMask@_2339@14)
    (wf Heap@6 exhaleMask@_2339@14 SecMask@330)
    (wf Heap@6 Mask@67 SecMask@330)
  )
    $branchMerge_105
)))
(let ((anon931_Else (=> (and true
    (= exhaleMask@_2339@13 exhaleMask@_2339@15)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right))
    (= SecMask@279 SecMask@331)
    (not $@condition_$303)
  )
    $branchMerge_105
)))
(let ((anon959_Else (=> (and true
    (CanRead$Int$ exhaleMask@_2339@14 SecMask@330 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.valid)
    (not $@condition_$308)
  )
    anon509
)))
(let ((anon959_Then (=> (and true
    $@condition_$308
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2338@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.valid))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2338@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.valid)))
    (not (CanRead$Int$ exhaleMask@_2339@14 SecMask@330 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.valid))
  )
    anon509
)))
(let (($branchMerge_106 (=> (and true
  )
    (and anon959_Else anon959_Then)
)))
(let ((anon506 (=> (and true
    (= SecMask@329 SecMask@330)
    (wf Heap@6 SecMask@329 SecMask@329)
  )
    $branchMerge_106
)))
(let ((anon932_Else (=> (and true
    (= SecMask@279 SecMask@330)
    (not $@condition_$305)
    (not (and (= predVer@_2192@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.valid)) (= predRec@_2191@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right))))
  )
    $branchMerge_106
)))
(let ((anon505 (=> (and true
    (= SecMask@328 SecMask@329)
    (wf Heap@6 Mask@67 SecMask@328)
    (wf Heap@6 SecMask@328 SecMask@328)
  )
    anon506
)))
(let ((anon957_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@325 SecMask@329)
    (not $@condition_$341)
  )
    anon506
)))
(let ((anon958_Else (=> (and true
    (= SecMask@326 SecMask@328)
    (not $@condition_$343)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@326 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon505
)))
(let ((anon958_Then (=> (and true
    $@condition_$343
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@326 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@327 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@326 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@326 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@327 SecMask@328)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@326 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)))
  )
    anon505
)))
(let ((anon957_Then (=> (and true
    $@condition_$341
    (= SecMask@326 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@325 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@325 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@325 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right)))
  )
    (and anon958_Else anon958_Then)
)))
(let (($branchMerge_117 (=> (and true
  )
    (and anon957_Else anon957_Then)
)))
(let ((anon501 (=> (and true
    (= SecMask@324 SecMask@325)
    (wf Heap@6 Mask@67 SecMask@324)
    (wf Heap@6 SecMask@324 SecMask@324)
  )
    $branchMerge_117
)))
(let ((anon955_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@321 SecMask@325)
    (not $@condition_$338)
  )
    $branchMerge_117
)))
(let ((anon956_Else (=> (and true
    (= SecMask@322 SecMask@324)
    (not $@condition_$340)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@322 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) 0))
  )
    anon501
)))
(let ((anon956_Then (=> (and true
    $@condition_$340
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@322 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) 0)
    (= SecMask@323 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@322 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@322 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R 0)))
    (= SecMask@323 SecMask@324)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@322 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R)))
  )
    anon501
)))
(let ((anon955_Then (=> (and true
    $@condition_$338
    (= SecMask@322 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@321 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@321 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@321 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right)))
  )
    (and anon956_Else anon956_Then)
)))
(let (($branchMerge_116 (=> (and true
  )
    (and anon955_Else anon955_Then)
)))
(let ((anon497 (=> (and true
    (= SecMask@320 SecMask@321)
    (wf Heap@6 Mask@67 SecMask@320)
    (wf Heap@6 SecMask@320 SecMask@320)
  )
    $branchMerge_116
)))
(let ((anon953_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@317 SecMask@321)
    (not $@condition_$335)
  )
    $branchMerge_116
)))
(let ((anon954_Else (=> (and true
    (= SecMask@318 SecMask@320)
    (not $@condition_$337)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@318 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) 0))
  )
    anon497
)))
(let ((anon954_Then (=> (and true
    $@condition_$337
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@318 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) 0)
    (= SecMask@319 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@318 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@318 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R 0)))
    (= SecMask@319 SecMask@320)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@318 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R)))
  )
    anon497
)))
(let ((anon953_Then (=> (and true
    $@condition_$335
    (= SecMask@318 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@317 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@317 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@317 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right)))
  )
    (and anon954_Else anon954_Then)
)))
(let (($branchMerge_115 (=> (and true
  )
    (and anon953_Else anon953_Then)
)))
(let ((anon493 (=> (and true
    (= SecMask@316 SecMask@317)
    (wf Heap@6 Mask@67 SecMask@316)
    (wf Heap@6 SecMask@316 SecMask@316)
  )
    $branchMerge_115
)))
(let ((anon951_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@313 SecMask@317)
    (not $@condition_$332)
  )
    $branchMerge_115
)))
(let ((anon952_Else (=> (and true
    (= SecMask@314 SecMask@316)
    (not $@condition_$334)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@314 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) 0))
  )
    anon493
)))
(let ((anon952_Then (=> (and true
    $@condition_$334
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@314 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) 0)
    (= SecMask@315 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@314 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@314 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R 0)))
    (= SecMask@315 SecMask@316)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@314 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R)))
  )
    anon493
)))
(let ((anon951_Then (=> (and true
    $@condition_$332
    (= SecMask@314 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@313 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@313 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@313 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right)))
  )
    (and anon952_Else anon952_Then)
)))
(let (($branchMerge_114 (=> (and true
  )
    (and anon951_Else anon951_Then)
)))
(let ((anon489 (=> (and true
    (= SecMask@312 SecMask@313)
    (wf Heap@6 Mask@67 SecMask@312)
    (wf Heap@6 SecMask@312 SecMask@312)
  )
    $branchMerge_114
)))
(let ((anon949_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@309 SecMask@313)
    (not $@condition_$329)
  )
    $branchMerge_114
)))
(let ((anon950_Else (=> (and true
    (= SecMask@310 SecMask@312)
    (not $@condition_$331)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@310 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon489
)))
(let ((anon950_Then (=> (and true
    $@condition_$331
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@310 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@311 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@310 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@310 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@311 SecMask@312)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@310 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)))
  )
    anon489
)))
(let ((anon949_Then (=> (and true
    $@condition_$329
    (= SecMask@310 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@309 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@309 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@309 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon950_Else anon950_Then)
)))
(let (($branchMerge_113 (=> (and true
  )
    (and anon949_Else anon949_Then)
)))
(let ((anon485 (=> (and true
    (= SecMask@308 SecMask@309)
    (wf Heap@6 Mask@67 SecMask@308)
    (wf Heap@6 SecMask@308 SecMask@308)
  )
    $branchMerge_113
)))
(let ((anon947_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@305 SecMask@309)
    (not $@condition_$326)
  )
    $branchMerge_113
)))
(let ((anon948_Else (=> (and true
    (= SecMask@306 SecMask@308)
    (not $@condition_$328)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@306 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) 0))
  )
    anon485
)))
(let ((anon948_Then (=> (and true
    $@condition_$328
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@306 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) 0)
    (= SecMask@307 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@306 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@306 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R 0)))
    (= SecMask@307 SecMask@308)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@306 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R)))
  )
    anon485
)))
(let ((anon947_Then (=> (and true
    $@condition_$326
    (= SecMask@306 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@305 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@305 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@305 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon948_Else anon948_Then)
)))
(let (($branchMerge_112 (=> (and true
  )
    (and anon947_Else anon947_Then)
)))
(let ((anon481 (=> (and true
    (= SecMask@304 SecMask@305)
    (wf Heap@6 Mask@67 SecMask@304)
    (wf Heap@6 SecMask@304 SecMask@304)
  )
    $branchMerge_112
)))
(let ((anon945_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@301 SecMask@305)
    (not $@condition_$323)
  )
    $branchMerge_112
)))
(let ((anon946_Else (=> (and true
    (= SecMask@302 SecMask@304)
    (not $@condition_$325)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@302 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) 0))
  )
    anon481
)))
(let ((anon946_Then (=> (and true
    $@condition_$325
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@302 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) 0)
    (= SecMask@303 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@302 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@302 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R 0)))
    (= SecMask@303 SecMask@304)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@302 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R)))
  )
    anon481
)))
(let ((anon945_Then (=> (and true
    $@condition_$323
    (= SecMask@302 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@301 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@301 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@301 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon946_Else anon946_Then)
)))
(let (($branchMerge_111 (=> (and true
  )
    (and anon945_Else anon945_Then)
)))
(let ((anon477 (=> (and true
    (= SecMask@300 SecMask@301)
    (wf Heap@6 Mask@67 SecMask@300)
    (wf Heap@6 SecMask@300 SecMask@300)
  )
    $branchMerge_111
)))
(let ((anon943_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@297 SecMask@301)
    (not $@condition_$321)
  )
    $branchMerge_111
)))
(let ((anon944_Else (=> (and true
    (= SecMask@298 SecMask@300)
    (not $@condition_$322)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@298 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) 0))
  )
    anon477
)))
(let ((anon944_Then (=> (and true
    $@condition_$322
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@298 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) 0)
    (= SecMask@299 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@298 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@298 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R 0)))
    (= SecMask@299 SecMask@300)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@298 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R)))
  )
    anon477
)))
(let ((anon943_Then (=> (and true
    $@condition_$321
    (= SecMask@298 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@297 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@297 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@297 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon944_Else anon944_Then)
)))
(let ((anon474 (=> (and true
    (wf Heap@6 Mask@67 SecMask@297)
    (wf Heap@6 SecMask@297 SecMask@297)
  )
    (and anon943_Else anon943_Then)
)))
(let ((anon942_Else (=> (and true
    (= SecMask@295 SecMask@297)
    (not $@condition_$320)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@295 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon474
)))
(let ((anon942_Then (=> (and true
    $@condition_$320
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@295 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@296 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@295 predRec@_2191@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@295 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@296 SecMask@297)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@295 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R)))
  )
    anon474
)))
(let ((anon472 (=> (and true
    (= SecMask@295 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@294 predRec@_2191@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@294 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@294 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@6 Mask@67 SecMask@294)
    (wf Heap@6 SecMask@294 SecMask@294)
  )
    (and anon942_Else anon942_Then)
)))
(let ((anon941_Else (=> (and true
    (= SecMask@292 SecMask@294)
    (not $@condition_$319)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@292 predRec@_2191@0 AVLTreeNode.keys) perm$R) 0))
  )
    anon472
)))
(let ((anon941_Then (=> (and true
    $@condition_$319
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@292 predRec@_2191@0 AVLTreeNode.keys) perm$R) 0)
    (= SecMask@293 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@292 predRec@_2191@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@292 predRec@_2191@0 AVLTreeNode.keys) perm$R 0)))
    (= SecMask@293 SecMask@294)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@292 predRec@_2191@0 AVLTreeNode.keys) perm$R)))
  )
    anon472
)))
(let ((anon470 (=> (and true
    (= SecMask@292 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@291 predRec@_2191@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@291 predRec@_2191@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@291 predRec@_2191@0 AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@6 Mask@67 SecMask@291)
    (wf Heap@6 SecMask@291 SecMask@291)
  )
    (and anon941_Else anon941_Then)
)))
(let ((anon940_Else (=> (and true
    (= SecMask@289 SecMask@291)
    (not $@condition_$318)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@289 predRec@_2191@0 AVLTreeNode.right) perm$R) 0))
  )
    anon470
)))
(let ((anon940_Then (=> (and true
    $@condition_$318
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@289 predRec@_2191@0 AVLTreeNode.right) perm$R) 0)
    (= SecMask@290 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@289 predRec@_2191@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@289 predRec@_2191@0 AVLTreeNode.right) perm$R 0)))
    (= SecMask@290 SecMask@291)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@289 predRec@_2191@0 AVLTreeNode.right) perm$R)))
  )
    anon470
)))
(let ((anon468 (=> (and true
    (= SecMask@289 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@288 predRec@_2191@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@288 predRec@_2191@0 AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@288 predRec@_2191@0 AVLTreeNode.right) perm$R) (* (- 1) (Fractions 100))))))
    (wf Heap@6 Mask@67 SecMask@288)
    (wf Heap@6 SecMask@288 SecMask@288)
  )
    (and anon940_Else anon940_Then)
)))
(let ((anon939_Else (=> (and true
    (= SecMask@286 SecMask@288)
    (not $@condition_$317)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@286 predRec@_2191@0 AVLTreeNode.left) perm$R) 0))
  )
    anon468
)))
(let ((anon939_Then (=> (and true
    $@condition_$317
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@286 predRec@_2191@0 AVLTreeNode.left) perm$R) 0)
    (= SecMask@287 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@286 predRec@_2191@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@286 predRec@_2191@0 AVLTreeNode.left) perm$R 0)))
    (= SecMask@287 SecMask@288)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@286 predRec@_2191@0 AVLTreeNode.left) perm$R)))
  )
    anon468
)))
(let ((anon466 (=> (and true
    (= SecMask@286 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@285 predRec@_2191@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@285 predRec@_2191@0 AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@285 predRec@_2191@0 AVLTreeNode.left) perm$R) (* (- 1) (Fractions 100))))))
    (wf Heap@6 Mask@67 SecMask@285)
    (wf Heap@6 SecMask@285 SecMask@285)
  )
    (and anon939_Else anon939_Then)
)))
(let ((anon938_Else (=> (and true
    (= SecMask@283 SecMask@285)
    (not $@condition_$316)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@283 predRec@_2191@0 AVLTreeNode.height) perm$R) 0))
  )
    anon466
)))
(let ((anon938_Then (=> (and true
    $@condition_$316
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@283 predRec@_2191@0 AVLTreeNode.height) perm$R) 0)
    (= SecMask@284 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@283 predRec@_2191@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@283 predRec@_2191@0 AVLTreeNode.height) perm$R 0)))
    (= SecMask@284 SecMask@285)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@283 predRec@_2191@0 AVLTreeNode.height) perm$R)))
  )
    anon466
)))
(let ((anon464 (=> (and true
    (= SecMask@283 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@282 predRec@_2191@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@282 predRec@_2191@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@282 predRec@_2191@0 AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@6 Mask@67 SecMask@282)
    (wf Heap@6 SecMask@282 SecMask@282)
  )
    (and anon938_Else anon938_Then)
)))
(let ((anon937_Else (=> (and true
    (= SecMask@280 SecMask@282)
    (not $@condition_$315)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@280 predRec@_2191@0 AVLTreeNode.key) perm$R) 0))
  )
    anon464
)))
(let ((anon937_Then (=> (and true
    $@condition_$315
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@280 predRec@_2191@0 AVLTreeNode.key) perm$R) 0)
    (= SecMask@281 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@280 predRec@_2191@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@280 predRec@_2191@0 AVLTreeNode.key) perm$R 0)))
    (= SecMask@281 SecMask@282)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@280 predRec@_2191@0 AVLTreeNode.key) perm$R)))
  )
    anon464
)))
(let ((anon462 (=> (and true
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 predRec@_2191@0 AVLTreeNode.height))
    (= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.balanceFactor))
    (= (= true $@bf_79) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.left)))
    (= (= true $@bf_80) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.right)))
    (= (= true $@bf_81) (< (ite$Int$ $@bf_80 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height)) (ite$Int$ $@bf_79 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height))))
    (= (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height)) 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.height))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 predRec@_2191@0 AVLTreeNode.balanceFactor) (+ (ite$Int$ $@bf_79 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_80 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 predRec@_2191@0 AVLTreeNode.height) (ite$Int$ $@bf_81 (+ (ite$Int$ $@bf_79 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ $@bf_80 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 predRec@_2191@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ $@bf_79 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 predRec@_2191@0 AVLTreeNode.key))) (ite$Seq$Int$$ $@bf_80 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys))))
    (= SecMask@280 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@279 predRec@_2191@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@279 predRec@_2191@0 AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@279 predRec@_2191@0 AVLTreeNode.key) perm$R) (* (- 1) (Fractions 100))))))
    (forall( (|kk#81_$7| Int))(= (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.keys) |kk#81_$7|) (or (= |kk#81_$7| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.key)) (or (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys) |kk#81_$7|) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) null))) (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys) |kk#81_$7|) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) null)))))))
    (not (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 predRec@_2191@0 AVLTreeNode.balanceFactor) (- 1)))
    (not (< 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 predRec@_2191@0 AVLTreeNode.balanceFactor)))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 predRec@_2191@0 AVLTreeNode.height)))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 predRec@_2191@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 predRec@_2191@0 AVLTreeNode.key))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys))))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 predRec@_2191@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 predRec@_2191@0 AVLTreeNode.keys))
  )
    (and anon937_Else anon937_Then)
)))
(let ((anon935_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right))
    (not $@condition_$311)
    (not $@condition_$313)
  )
    anon462
)))
(let ((anon935_Then (=> (and true
    $@condition_$311
    $@condition_$313
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height))
    (forall( (|rk#80#689| Int))(=> (and (< |rk#80#689| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 |rk#80#689|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys) |rk#80#689|))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right)))
  )
    anon462
)))
(let (($branchMerge_109 (=> (and true
  )
    (and anon935_Else anon935_Then)
)))
(let ((anon933_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left))
    (not $@condition_$307)
    (not $@condition_$309)
  )
    $branchMerge_109
)))
(let ((anon933_Then (=> (and true
    $@condition_$307
    $@condition_$309
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height))
    (forall( (|lk#79#688| Int))(=> (and (< |lk#79#688| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 |lk#79#688|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys) |lk#79#688|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.key))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left)))
  )
    $branchMerge_109
)))
(let ((anon932_Then (=> (and true
    $@condition_$305
    (= predRec@_2191@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right))
    (= predVer@_2192@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 predRec@_2191@0 AVLTreeNode.valid))
  )
    (and anon933_Else anon933_Then)
)))
(let ((anon931_Then@2 (=> (and true
    (= exhaleMask@_2339@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))
  )
    (and anon932_Else anon932_Then)
)))
(let ((anon931_Then (=> (and true
    $@condition_$303
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right)))
  )(and 
    anon931_Then@1_assertion
    anon931_Then@2
))))
(let (($branchMerge_104 (=> (and true
  )
    (and anon931_Else anon931_Then)
)))
(let ((anon928_Else (=> (and true
    (= exhaleMask@_2339@11 exhaleMask@_2339@13)
    (= exhaleMask@_2339@11 exhaleMask@_2339@7)
    (= exhaleMask@_2339@11 exhaleMask@_2339@9)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left))
    (not $@condition_$259)
    (not $@condition_$299)
    (not $@condition_$301)
  )
    $branchMerge_104
)))
(let ((anon930_Then@2 (=> (and true
    (= exhaleMask@_2339@12 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (= exhaleMask@_2339@12 exhaleMask@_2339@13)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_2339@12)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (wf Heap@6 exhaleMask@_2339@12 SecMask@279)
  )
    $branchMerge_104
)))
(let ((anon929_Then@2 (=> (and true
    $@condition_$301
    (= exhaleMask@_2339@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (= exhaleMask@_2339@10 exhaleMask@_2339@11)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
    (IsGoodMask exhaleMask@_2339@10)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))
    (wf Heap@6 exhaleMask@_2339@10 SecMask@279)
  )(and 
    anon930_Then@1_assertion
    anon930_Then@2
))))
(let ((anon928_Then@2 (=> (and true
    $@condition_$299
    (= exhaleMask@_2339@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (= exhaleMask@_2339@8 exhaleMask@_2339@9)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.height) perm$N)))
    (IsGoodMask exhaleMask@_2339@8)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))
    (wf Heap@6 exhaleMask@_2339@8 SecMask@279)
    (wf Heap@6 Mask@67 SecMask@279)
  )(and 
    anon929_Then@1_assertion
    anon929_Then@2
))))
(let ((anon928_Then (=> (and true
    $@condition_$259
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left)))
  )(and 
    anon928_Then@1_assertion
    anon928_Then@2
))))
(let (($branchMerge_90 (=> (and true
  )
    (and anon928_Else anon928_Then)
)))
(let ((anon445 (=> (and true
    (= exhaleMask@_2339@6 exhaleMask@_2339@7)
    (= SecMask@278 SecMask@279)
    (IsGoodMask exhaleMask@_2339@6)
    (wf Heap@6 exhaleMask@_2339@6 SecMask@278)
    (wf Heap@6 Mask@67 SecMask@278)
  )
    $branchMerge_90
)))
(let ((anon899_Else (=> (and true
    (= exhaleMask@_2339@5 exhaleMask@_2339@7)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left))
    (= SecMask@227 SecMask@279)
    (not $@condition_$257)
  )
    $branchMerge_90
)))
(let ((anon927_Else (=> (and true
    (CanRead$Int$ exhaleMask@_2339@6 SecMask@278 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.valid)
    (not $@condition_$261)
  )
    anon445
)))
(let ((anon927_Then (=> (and true
    $@condition_$261
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2338@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.valid))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2338@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.valid)))
    (not (CanRead$Int$ exhaleMask@_2339@6 SecMask@278 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.valid))
  )
    anon445
)))
(let (($branchMerge_91 (=> (and true
  )
    (and anon927_Else anon927_Then)
)))
(let ((anon442 (=> (and true
    (= SecMask@277 SecMask@278)
    (wf Heap@6 SecMask@277 SecMask@277)
  )
    $branchMerge_91
)))
(let ((anon900_Else (=> (and true
    (= SecMask@227 SecMask@278)
    (not $@condition_$258)
    (not (and (= predVer@_2192@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.valid)) (= predRec@_2191@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left))))
  )
    $branchMerge_91
)))
(let ((anon441 (=> (and true
    (= SecMask@276 SecMask@277)
    (wf Heap@6 Mask@67 SecMask@276)
    (wf Heap@6 SecMask@276 SecMask@276)
  )
    anon442
)))
(let ((anon925_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@273 SecMask@277)
    (not $@condition_$294)
  )
    anon442
)))
(let ((anon926_Else (=> (and true
    (= SecMask@274 SecMask@276)
    (not $@condition_$296)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@274 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon441
)))
(let ((anon926_Then (=> (and true
    $@condition_$296
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@274 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@275 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@274 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@274 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@275 SecMask@276)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@274 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)))
  )
    anon441
)))
(let ((anon925_Then (=> (and true
    $@condition_$294
    (= SecMask@274 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@273 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@273 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@273 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right)))
  )
    (and anon926_Else anon926_Then)
)))
(let (($branchMerge_102 (=> (and true
  )
    (and anon925_Else anon925_Then)
)))
(let ((anon437 (=> (and true
    (= SecMask@272 SecMask@273)
    (wf Heap@6 Mask@67 SecMask@272)
    (wf Heap@6 SecMask@272 SecMask@272)
  )
    $branchMerge_102
)))
(let ((anon923_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@269 SecMask@273)
    (not $@condition_$291)
  )
    $branchMerge_102
)))
(let ((anon924_Else (=> (and true
    (= SecMask@270 SecMask@272)
    (not $@condition_$293)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@270 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) 0))
  )
    anon437
)))
(let ((anon924_Then (=> (and true
    $@condition_$293
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@270 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) 0)
    (= SecMask@271 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@270 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@270 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R 0)))
    (= SecMask@271 SecMask@272)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@270 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R)))
  )
    anon437
)))
(let ((anon923_Then (=> (and true
    $@condition_$291
    (= SecMask@270 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@269 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@269 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@269 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right)))
  )
    (and anon924_Else anon924_Then)
)))
(let (($branchMerge_101 (=> (and true
  )
    (and anon923_Else anon923_Then)
)))
(let ((anon433 (=> (and true
    (= SecMask@268 SecMask@269)
    (wf Heap@6 Mask@67 SecMask@268)
    (wf Heap@6 SecMask@268 SecMask@268)
  )
    $branchMerge_101
)))
(let ((anon921_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@265 SecMask@269)
    (not $@condition_$288)
  )
    $branchMerge_101
)))
(let ((anon922_Else (=> (and true
    (= SecMask@266 SecMask@268)
    (not $@condition_$290)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@266 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) 0))
  )
    anon433
)))
(let ((anon922_Then (=> (and true
    $@condition_$290
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@266 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) 0)
    (= SecMask@267 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@266 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@266 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R 0)))
    (= SecMask@267 SecMask@268)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@266 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R)))
  )
    anon433
)))
(let ((anon921_Then (=> (and true
    $@condition_$288
    (= SecMask@266 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@265 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@265 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@265 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right)))
  )
    (and anon922_Else anon922_Then)
)))
(let (($branchMerge_100 (=> (and true
  )
    (and anon921_Else anon921_Then)
)))
(let ((anon429 (=> (and true
    (= SecMask@264 SecMask@265)
    (wf Heap@6 Mask@67 SecMask@264)
    (wf Heap@6 SecMask@264 SecMask@264)
  )
    $branchMerge_100
)))
(let ((anon919_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@261 SecMask@265)
    (not $@condition_$285)
  )
    $branchMerge_100
)))
(let ((anon920_Else (=> (and true
    (= SecMask@262 SecMask@264)
    (not $@condition_$287)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@262 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) 0))
  )
    anon429
)))
(let ((anon920_Then (=> (and true
    $@condition_$287
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@262 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) 0)
    (= SecMask@263 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@262 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@262 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R 0)))
    (= SecMask@263 SecMask@264)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@262 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R)))
  )
    anon429
)))
(let ((anon919_Then (=> (and true
    $@condition_$285
    (= SecMask@262 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@261 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@261 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@261 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right)))
  )
    (and anon920_Else anon920_Then)
)))
(let (($branchMerge_99 (=> (and true
  )
    (and anon919_Else anon919_Then)
)))
(let ((anon425 (=> (and true
    (= SecMask@260 SecMask@261)
    (wf Heap@6 Mask@67 SecMask@260)
    (wf Heap@6 SecMask@260 SecMask@260)
  )
    $branchMerge_99
)))
(let ((anon917_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@257 SecMask@261)
    (not $@condition_$282)
  )
    $branchMerge_99
)))
(let ((anon918_Else (=> (and true
    (= SecMask@258 SecMask@260)
    (not $@condition_$284)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@258 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon425
)))
(let ((anon918_Then (=> (and true
    $@condition_$284
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@258 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@259 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@258 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@258 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@259 SecMask@260)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@258 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)))
  )
    anon425
)))
(let ((anon917_Then (=> (and true
    $@condition_$282
    (= SecMask@258 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@257 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@257 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@257 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon918_Else anon918_Then)
)))
(let (($branchMerge_98 (=> (and true
  )
    (and anon917_Else anon917_Then)
)))
(let ((anon421 (=> (and true
    (= SecMask@256 SecMask@257)
    (wf Heap@6 Mask@67 SecMask@256)
    (wf Heap@6 SecMask@256 SecMask@256)
  )
    $branchMerge_98
)))
(let ((anon915_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@253 SecMask@257)
    (not $@condition_$279)
  )
    $branchMerge_98
)))
(let ((anon916_Else (=> (and true
    (= SecMask@254 SecMask@256)
    (not $@condition_$281)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@254 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) 0))
  )
    anon421
)))
(let ((anon916_Then (=> (and true
    $@condition_$281
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@254 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) 0)
    (= SecMask@255 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@254 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@254 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R 0)))
    (= SecMask@255 SecMask@256)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@254 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R)))
  )
    anon421
)))
(let ((anon915_Then (=> (and true
    $@condition_$279
    (= SecMask@254 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@253 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@253 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@253 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon916_Else anon916_Then)
)))
(let (($branchMerge_97 (=> (and true
  )
    (and anon915_Else anon915_Then)
)))
(let ((anon417 (=> (and true
    (= SecMask@252 SecMask@253)
    (wf Heap@6 Mask@67 SecMask@252)
    (wf Heap@6 SecMask@252 SecMask@252)
  )
    $branchMerge_97
)))
(let ((anon913_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@249 SecMask@253)
    (not $@condition_$276)
  )
    $branchMerge_97
)))
(let ((anon914_Else (=> (and true
    (= SecMask@250 SecMask@252)
    (not $@condition_$278)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@250 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) 0))
  )
    anon417
)))
(let ((anon914_Then (=> (and true
    $@condition_$278
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@250 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) 0)
    (= SecMask@251 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@250 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@250 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R 0)))
    (= SecMask@251 SecMask@252)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@250 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R)))
  )
    anon417
)))
(let ((anon913_Then (=> (and true
    $@condition_$276
    (= SecMask@250 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@249 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@249 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@249 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon914_Else anon914_Then)
)))
(let (($branchMerge_96 (=> (and true
  )
    (and anon913_Else anon913_Then)
)))
(let ((anon413 (=> (and true
    (= SecMask@248 SecMask@249)
    (wf Heap@6 Mask@67 SecMask@248)
    (wf Heap@6 SecMask@248 SecMask@248)
  )
    $branchMerge_96
)))
(let ((anon911_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@245 SecMask@249)
    (not $@condition_$274)
  )
    $branchMerge_96
)))
(let ((anon912_Else (=> (and true
    (= SecMask@246 SecMask@248)
    (not $@condition_$275)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@246 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) 0))
  )
    anon413
)))
(let ((anon912_Then (=> (and true
    $@condition_$275
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@246 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) 0)
    (= SecMask@247 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@246 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@246 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R 0)))
    (= SecMask@247 SecMask@248)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@246 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R)))
  )
    anon413
)))
(let ((anon911_Then (=> (and true
    $@condition_$274
    (= SecMask@246 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@245 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@245 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@245 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon912_Else anon912_Then)
)))
(let ((anon410 (=> (and true
    (wf Heap@6 Mask@67 SecMask@245)
    (wf Heap@6 SecMask@245 SecMask@245)
  )
    (and anon911_Else anon911_Then)
)))
(let ((anon910_Else (=> (and true
    (= SecMask@243 SecMask@245)
    (not $@condition_$273)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@243 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon410
)))
(let ((anon910_Then (=> (and true
    $@condition_$273
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@243 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@244 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@243 predRec@_2191@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@243 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@244 SecMask@245)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@243 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R)))
  )
    anon410
)))
(let ((anon408 (=> (and true
    (= SecMask@243 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@242 predRec@_2191@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@242 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@242 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@6 Mask@67 SecMask@242)
    (wf Heap@6 SecMask@242 SecMask@242)
  )
    (and anon910_Else anon910_Then)
)))
(let ((anon909_Else (=> (and true
    (= SecMask@240 SecMask@242)
    (not $@condition_$272)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@240 predRec@_2191@0 AVLTreeNode.keys) perm$R) 0))
  )
    anon408
)))
(let ((anon909_Then (=> (and true
    $@condition_$272
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@240 predRec@_2191@0 AVLTreeNode.keys) perm$R) 0)
    (= SecMask@241 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@240 predRec@_2191@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@240 predRec@_2191@0 AVLTreeNode.keys) perm$R 0)))
    (= SecMask@241 SecMask@242)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@240 predRec@_2191@0 AVLTreeNode.keys) perm$R)))
  )
    anon408
)))
(let ((anon406 (=> (and true
    (= SecMask@240 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@239 predRec@_2191@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@239 predRec@_2191@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@239 predRec@_2191@0 AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@6 Mask@67 SecMask@239)
    (wf Heap@6 SecMask@239 SecMask@239)
  )
    (and anon909_Else anon909_Then)
)))
(let ((anon908_Else (=> (and true
    (= SecMask@237 SecMask@239)
    (not $@condition_$271)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@237 predRec@_2191@0 AVLTreeNode.right) perm$R) 0))
  )
    anon406
)))
(let ((anon908_Then (=> (and true
    $@condition_$271
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@237 predRec@_2191@0 AVLTreeNode.right) perm$R) 0)
    (= SecMask@238 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@237 predRec@_2191@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@237 predRec@_2191@0 AVLTreeNode.right) perm$R 0)))
    (= SecMask@238 SecMask@239)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@237 predRec@_2191@0 AVLTreeNode.right) perm$R)))
  )
    anon406
)))
(let ((anon404 (=> (and true
    (= SecMask@237 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@236 predRec@_2191@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@236 predRec@_2191@0 AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@236 predRec@_2191@0 AVLTreeNode.right) perm$R) (* (- 1) (Fractions 100))))))
    (wf Heap@6 Mask@67 SecMask@236)
    (wf Heap@6 SecMask@236 SecMask@236)
  )
    (and anon908_Else anon908_Then)
)))
(let ((anon907_Else (=> (and true
    (= SecMask@234 SecMask@236)
    (not $@condition_$270)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@234 predRec@_2191@0 AVLTreeNode.left) perm$R) 0))
  )
    anon404
)))
(let ((anon907_Then (=> (and true
    $@condition_$270
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@234 predRec@_2191@0 AVLTreeNode.left) perm$R) 0)
    (= SecMask@235 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@234 predRec@_2191@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@234 predRec@_2191@0 AVLTreeNode.left) perm$R 0)))
    (= SecMask@235 SecMask@236)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@234 predRec@_2191@0 AVLTreeNode.left) perm$R)))
  )
    anon404
)))
(let ((anon402 (=> (and true
    (= SecMask@234 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@233 predRec@_2191@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@233 predRec@_2191@0 AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@233 predRec@_2191@0 AVLTreeNode.left) perm$R) (* (- 1) (Fractions 100))))))
    (wf Heap@6 Mask@67 SecMask@233)
    (wf Heap@6 SecMask@233 SecMask@233)
  )
    (and anon907_Else anon907_Then)
)))
(let ((anon906_Else (=> (and true
    (= SecMask@231 SecMask@233)
    (not $@condition_$269)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@231 predRec@_2191@0 AVLTreeNode.height) perm$R) 0))
  )
    anon402
)))
(let ((anon906_Then (=> (and true
    $@condition_$269
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@231 predRec@_2191@0 AVLTreeNode.height) perm$R) 0)
    (= SecMask@232 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@231 predRec@_2191@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@231 predRec@_2191@0 AVLTreeNode.height) perm$R 0)))
    (= SecMask@232 SecMask@233)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@231 predRec@_2191@0 AVLTreeNode.height) perm$R)))
  )
    anon402
)))
(let ((anon400 (=> (and true
    (= SecMask@231 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@230 predRec@_2191@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@230 predRec@_2191@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@230 predRec@_2191@0 AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@6 Mask@67 SecMask@230)
    (wf Heap@6 SecMask@230 SecMask@230)
  )
    (and anon906_Else anon906_Then)
)))
(let ((anon905_Else (=> (and true
    (= SecMask@228 SecMask@230)
    (not $@condition_$268)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@228 predRec@_2191@0 AVLTreeNode.key) perm$R) 0))
  )
    anon400
)))
(let ((anon905_Then (=> (and true
    $@condition_$268
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@228 predRec@_2191@0 AVLTreeNode.key) perm$R) 0)
    (= SecMask@229 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@228 predRec@_2191@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@228 predRec@_2191@0 AVLTreeNode.key) perm$R 0)))
    (= SecMask@229 SecMask@230)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@228 predRec@_2191@0 AVLTreeNode.key) perm$R)))
  )
    anon400
)))
(let ((anon398 (=> (and true
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 predRec@_2191@0 AVLTreeNode.height))
    (= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.balanceFactor))
    (= (= true $@bf_76) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.left)))
    (= (= true $@bf_77) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.right)))
    (= (= true $@bf_78) (< (ite$Int$ $@bf_77 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height)) (ite$Int$ $@bf_76 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height))))
    (= (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height)) 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.height))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 predRec@_2191@0 AVLTreeNode.balanceFactor) (+ (ite$Int$ $@bf_76 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_77 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 predRec@_2191@0 AVLTreeNode.height) (ite$Int$ $@bf_78 (+ (ite$Int$ $@bf_76 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ $@bf_77 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 predRec@_2191@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ $@bf_76 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 predRec@_2191@0 AVLTreeNode.key))) (ite$Seq$Int$$ $@bf_77 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys))))
    (= SecMask@228 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@227 predRec@_2191@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@227 predRec@_2191@0 AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@227 predRec@_2191@0 AVLTreeNode.key) perm$R) (* (- 1) (Fractions 100))))))
    (forall( (|kk#81_$6| Int))(= (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys) |kk#81_$6|) (or (= |kk#81_$6| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.key)) (or (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys) |kk#81_$6|) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) null))) (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys) |kk#81_$6|) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) null)))))))
    (not (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 predRec@_2191@0 AVLTreeNode.balanceFactor) (- 1)))
    (not (< 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 predRec@_2191@0 AVLTreeNode.balanceFactor)))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 predRec@_2191@0 AVLTreeNode.height)))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 predRec@_2191@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 predRec@_2191@0 AVLTreeNode.key))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys))))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 predRec@_2191@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 predRec@_2191@0 AVLTreeNode.keys))
  )
    (and anon905_Else anon905_Then)
)))
(let ((anon903_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right))
    (not $@condition_$264)
    (not $@condition_$266)
  )
    anon398
)))
(let ((anon903_Then (=> (and true
    $@condition_$264
    $@condition_$266
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height))
    (forall( (|rk#80#684| Int))(=> (and (< |rk#80#684| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 |rk#80#684|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys) |rk#80#684|))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.right)))
  )
    anon398
)))
(let (($branchMerge_94 (=> (and true
  )
    (and anon903_Else anon903_Then)
)))
(let ((anon901_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left))
    (not $@condition_$260)
    (not $@condition_$262)
  )
    $branchMerge_94
)))
(let ((anon901_Then (=> (and true
    $@condition_$260
    $@condition_$262
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height))
    (forall( (|lk#79#683| Int))(=> (and (< |lk#79#683| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 |lk#79#683|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys) |lk#79#683|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.key))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 predRec@_2191@0 AVLTreeNode.left)))
  )
    $branchMerge_94
)))
(let ((anon900_Then (=> (and true
    $@condition_$258
    (= predRec@_2191@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left))
    (= predVer@_2192@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 predRec@_2191@0 AVLTreeNode.valid))
  )
    (and anon901_Else anon901_Then)
)))
(let ((anon899_Then@2 (=> (and true
    (= exhaleMask@_2339@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))
  )
    (and anon900_Else anon900_Then)
)))
(let ((anon899_Then (=> (and true
    $@condition_$257
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left)))
  )(and 
    anon899_Then@1_assertion
    anon899_Then@2
))))
(let ((anon388@14 (=> (and true
    (= exhaleMask@_2339@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@4 this AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@4 this AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@4 this AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@4 this AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@4 this AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_2339@5)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@4 this AVLTreeNode.balanceFactor) perm$R) (Fractions 100)))
    (wf Heap@6 exhaleMask@_2339@5 SecMask@227)
  )
    (and anon899_Else anon899_Then)
)))
(let ((anon388@12 (=> (and true
    (= exhaleMask@_2339@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@3 this AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@3 this AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@3 this AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@3 this AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@3 this AVLTreeNode.keys) perm$N)))
    (IsGoodMask exhaleMask@_2339@4)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2339@3 this AVLTreeNode.keys) perm$R) (Fractions 100)))
    (wf Heap@6 exhaleMask@_2339@4 SecMask@227)
  )(and 
    anon388@13_assertion
    anon388@14
))))
(let ((anon388@10 (=> (and true
    (= exhaleMask@_2339@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2339@2 this AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2339@2 this AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2339@2 this AVLTreeNode.right) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2339@2 this AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2339@2 this AVLTreeNode.right) perm$N)))
    (IsGoodMask exhaleMask@_2339@3)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2339@2 this AVLTreeNode.right) perm$R) (Fractions 100)))
    (wf Heap@6 exhaleMask@_2339@3 SecMask@227)
  )(and 
    anon388@11_assertion
    anon388@12
))))
(let ((anon388@8 (=> (and true
    (= exhaleMask@_2339@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2339@1 this AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2339@1 this AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2339@1 this AVLTreeNode.left) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2339@1 this AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2339@1 this AVLTreeNode.left) perm$N)))
    (IsGoodMask exhaleMask@_2339@2)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2339@1 this AVLTreeNode.left) perm$R) (Fractions 100)))
    (wf Heap@6 exhaleMask@_2339@2 SecMask@227)
  )(and 
    anon388@9_assertion
    anon388@10
))))
(let ((anon388@6 (=> (and true
    (= exhaleMask@_2339@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@0 this AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@0 this AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@0 this AVLTreeNode.height) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@0 this AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@0 this AVLTreeNode.height) perm$N)))
    (IsGoodMask exhaleMask@_2339@1)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2339@0 this AVLTreeNode.height) perm$R) (Fractions 100)))
    (wf Heap@6 exhaleMask@_2339@1 SecMask@227)
  )(and 
    anon388@7_assertion
    anon388@8
))))
(let ((anon388@4 (=> (and true
    (= exhaleMask@_2339@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@67 this AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@67 this AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@67 this AVLTreeNode.key) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@67 this AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@67 this AVLTreeNode.key) perm$N)))
    (IsGoodMask exhaleMask@_2339@0)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@67 this AVLTreeNode.key) perm$R) (Fractions 100)))
    (wf Heap@6 exhaleMask@_2339@0 SecMask@227)
  )(and 
    anon388@5_assertion
    anon388@6
))))
(let ((anon388@2 (=> (and true
    (>= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.height))) (- 0 1))
    (not (< (+ (ite$Int$ $@bf_2 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_3 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.height)))) (- 1)))
  )(and 
    anon388@3_assertion
    anon388@4
))))
(let ((anon388@1 (=> (and true
    (<= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.height))) 1)
    (not (< 1 (+ (ite$Int$ $@bf_2 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_3 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.height))))))
  )(and 
    anon388@1_assertion
    anon388@2
))))
(let ((anon388 (=> (and true
    (= (= true $@bf_2) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left)))
    (= (= true $@bf_3) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right)))
  )(and 
    anon388_assertion
    anon388@1
))))
(let ((anon898_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right))
    (not $@condition_$255)
  )
    anon388
)))
(let ((anon898_Then@1 (=> (and true
    (forall( (|k#93#682| Int))(=> (and (< |k#93#682| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 |k#93#682|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) AVLTreeNode.keys) |k#93#682|))))
  )
    anon388
)))
(let ((anon898_Then (=> (and true
    $@condition_$255
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.right)))
  )(and 
    anon898_Then_assertion
    anon898_Then@1
))))
(let (($branchMerge_89 (=> (and true
  )
    (and anon898_Else anon898_Then)
)))
(let ((anon897_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left))
    (not $@condition_$254)
  )
    $branchMerge_89
)))
(let ((anon897_Then@1 (=> (and true
    (forall( (|k#92#681| Int))(=> (and (< |k#92#681| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 |k#92#681|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys) |k#92#681|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 this AVLTreeNode.key))))
  )
    $branchMerge_89
)))
(let ((anon897_Then (=> (and true
    $@condition_$254
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left)))
  )(and 
    anon897_Then_assertion
    anon897_Then@1
))))
(let ((anon384 (=> (and true
    (< (* 1000 methodCallK@_2337) (Fractions 1))
    (< (* 1000 methodCallK@_2337) methodK@_2144)
    (< 0 methodCallK@_2337)
    (IsGoodExhaleState exhaleHeap@_2331@0 Heap@6 Mask@67 SecMask@227)
    (not (= (Fractions 1) (* 1000 methodCallK@_2337)))
    (not (= 0 methodCallK@_2337))
    (not (= methodK@_2144 (* 1000 methodCallK@_2337)))
    (wf exhaleHeap@_2331@0 Mask@67 SecMask@227)
  )
    (and anon897_Else anon897_Then)
)))
(let ((anon896_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left))
    (not $@condition_$253)
  )
    anon384
)))
(let ((anon896_Then@13 (=> (and true
    (forall( (|k#101#677| Int))(=> (and (< |k#101#677| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 |k#101#677|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys) |k#101#677|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@6 this AVLTreeNode.key))))
  )
    anon384
)))
(let ((anon896_Then@12 (=> (and true
    (=> (and (< k@101@678 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 k@101@678)) (CanRead$Int$ Mask@67 SecMask@227 this AVLTreeNode.key))
  )(and 
    anon896_Then@12_assertion
    anon896_Then@13
))))
(let ((anon896_Then@8 (=> (and true
    (=> (and (< k@101@678 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 k@101@678)) (< k@101@678 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys))))
    (=> (and (< k@101@678 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 k@101@678)) (<= 0 k@101@678))
    (=> (and (< k@101@678 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 k@101@678)) (CanRead$Seq$Int$$ Mask@67 SecMask@227 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys))
  )(and 
    anon896_Then@11_assertion
    anon896_Then@12
))))
(let ((anon896_Then@4 (=> (and true
    (=> (<= 0 k@101@678) (CanRead$Seq$Int$$ Mask@67 SecMask@227 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys))
    (=> (and (< k@101@678 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 k@101@678)) (CanRead$ref$ Mask@67 SecMask@227 this AVLTreeNode.left))
  )(and 
    anon896_Then@7_assertion
    anon896_Then@8
))))
(let ((anon896_Then (=> (and true
    $@condition_$253
    (=> (<= 0 k@101@678) (CanRead$ref$ Mask@67 SecMask@227 this AVLTreeNode.left))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@6 this AVLTreeNode.left)))
  )(and 
    anon896_Then@3_assertion
    anon896_Then@4
))))
(let ((anon382@6 (=> (and true
    (= Heap@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 this AVLTreeNode.left (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@5 r@66@0 AVLTreeNode.right)))
    (CanRead$ref$ Mask@67 SecMask@227 r@66@0 AVLTreeNode.right)
    (wf Heap@6 Mask@67 SecMask@227)
  )
    (and anon896_Else anon896_Then)
)))
(let ((anon382@4 (=> (and true
    (CanWrite$ref$ Mask@67 this AVLTreeNode.left)
  )(and 
    anon382@5_assertion
    anon382@6
))))
(let ((anon382@3 (=> (and true
    (= Heap@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2277@0 r@66@0 AVLTreeNode.left (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ exhaleHeap@_2277@0 this AVLTreeNode.left)))
    (CanRead$ref$ Mask@67 SecMask@227 this AVLTreeNode.left)
    (wf Heap@5 Mask@67 SecMask@227)
  )(and 
    anon382@3_assertion
    anon382@4
))))
(let ((anon382@1 (=> (and true
    (CanWrite$ref$ Mask@67 r@66@0 AVLTreeNode.left)
  )(and 
    anon382@2_assertion
    anon382@3
))))
(let ((anon382 (=> (and true
    (= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.height))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2277@0 this@664@0 AVLTreeNode.balanceFactor))
    (= (= true $@bf_75) (< (ite$Int$ $@bf_1 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.height)) (ite$Int$ $@bf 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.height))))
    (= (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.height)) 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2277@0 this@664@0 AVLTreeNode.height))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2277@0 this@664@0 AVLTreeNode.balanceFactor) (+ (ite$Int$ $@bf 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_1 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.height)))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2277@0 this@664@0 AVLTreeNode.height) (ite$Int$ $@bf_75 (+ (ite$Int$ $@bf 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ $@bf_1 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2277@0 this@664@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ $@bf Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 this@664@0 AVLTreeNode.key))) (ite$Seq$Int$$ $@bf_1 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.keys))))
    (= Mask@64 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@21 this@664@0 AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@21 this@664@0 AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@21 this@664@0 AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@65 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@64 this@664@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@64 this@664@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@64 this@664@0 AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@66 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@65 this@664@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@65 this@664@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@65 this@664@0 AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@67 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@66 this@664@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@66 this@664@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@66 this@664@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (IsGoodExhaleState exhaleHeap@_2277@0 Heap@4 exhaleMask@_2278@21 SecMask@227)
    (IsGoodMask exhaleMask@_2278@21)
    (IsGoodMask Mask@64)
    (IsGoodMask Mask@65)
    (IsGoodMask Mask@66)
    (IsGoodMask Mask@67)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2277@0 this@664@0 AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2277@0 this@664@0 AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2277@0 this@664@0 AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2277@0 this@664@0 AVLTreeNode.keys)))
    (not (= this@664@0 null))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2277@0 this@664@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2277@0 this@664@0 AVLTreeNode.keys))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ exhaleHeap@_2277@0 this@664@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 this@664@0 AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.keys))))
    (wf exhaleHeap@_2277@0 exhaleMask@_2278@21 SecMask@227)
    (wf exhaleHeap@_2277@0 Mask@64 SecMask@227)
    (wf exhaleHeap@_2277@0 Mask@65 SecMask@227)
    (wf exhaleHeap@_2277@0 Mask@66 SecMask@227)
    (wf exhaleHeap@_2277@0 Mask@67 SecMask@227)
  )(and 
    anon382_assertion
    anon382@1
))))
(let ((anon893_Else (=> (and true
    (= exhaleMask@_2278@15 exhaleMask@_2278@17)
    (= exhaleMask@_2278@15 exhaleMask@_2278@19)
    (= exhaleMask@_2278@15 exhaleMask@_2278@21)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right))
    (not $@condition_$209)
    (not $@condition_$249)
    (not $@condition_$251)
    (not (= this@664@0 null))
  )
    anon382
)))
(let ((anon895_Then@2 (=> (and true
    (= exhaleMask@_2278@20 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (= exhaleMask@_2278@20 exhaleMask@_2278@21)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_2278@20)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (wf Heap@4 exhaleMask@_2278@20 SecMask@227)
  )
    anon382
)))
(let ((anon894_Then@2 (=> (and true
    $@condition_$251
    (= exhaleMask@_2278@18 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (= exhaleMask@_2278@18 exhaleMask@_2278@19)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.keys) perm$N)))
    (IsGoodMask exhaleMask@_2278@18)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@17 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))
    (wf Heap@4 exhaleMask@_2278@18 SecMask@227)
  )(and 
    anon895_Then@1_assertion
    anon895_Then@2
))))
(let ((anon893_Then@2 (=> (and true
    $@condition_$249
    (= exhaleMask@_2278@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (= exhaleMask@_2278@16 exhaleMask@_2278@17)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.height) perm$N)))
    (IsGoodMask exhaleMask@_2278@16)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@15 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))
    (wf Heap@4 exhaleMask@_2278@16 SecMask@227)
    (wf Heap@4 Mask@63 SecMask@227)
  )(and 
    anon894_Then@1_assertion
    anon894_Then@2
))))
(let ((anon893_Then (=> (and true
    $@condition_$209
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right)))
  )(and 
    anon893_Then@1_assertion
    anon893_Then@2
))))
(let (($branchMerge_75 (=> (and true
  )
    (and anon893_Else anon893_Then)
)))
(let ((anon375 (=> (and true
    (= exhaleMask@_2278@14 exhaleMask@_2278@15)
    (= SecMask@226 SecMask@227)
    (IsGoodMask exhaleMask@_2278@14)
    (wf Heap@4 exhaleMask@_2278@14 SecMask@226)
    (wf Heap@4 Mask@63 SecMask@226)
  )
    $branchMerge_75
)))
(let ((anon864_Else (=> (and true
    (= exhaleMask@_2278@13 exhaleMask@_2278@15)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right))
    (= SecMask@175 SecMask@227)
    (not $@condition_$206)
    (not (= this@664@0 null))
  )
    $branchMerge_75
)))
(let ((anon892_Else (=> (and true
    (CanRead$Int$ exhaleMask@_2278@14 SecMask@226 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.valid)
    (not $@condition_$211)
  )
    anon375
)))
(let ((anon892_Then (=> (and true
    $@condition_$211
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2277@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.valid))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2277@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.valid)))
    (not (CanRead$Int$ exhaleMask@_2278@14 SecMask@226 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.valid))
  )
    anon375
)))
(let (($branchMerge_76 (=> (and true
  )
    (and anon892_Else anon892_Then)
)))
(let ((anon372 (=> (and true
    (= SecMask@225 SecMask@226)
    (wf Heap@4 SecMask@225 SecMask@225)
  )
    $branchMerge_76
)))
(let ((anon865_Else (=> (and true
    (= SecMask@175 SecMask@226)
    (not $@condition_$208)
    (not (and (= predVer@_2192@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.valid)) (= predRec@_2191@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right))))
  )
    $branchMerge_76
)))
(let ((anon371 (=> (and true
    (= SecMask@224 SecMask@225)
    (wf Heap@4 Mask@63 SecMask@224)
    (wf Heap@4 SecMask@224 SecMask@224)
  )
    anon372
)))
(let ((anon890_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@221 SecMask@225)
    (not $@condition_$244)
    (not (= this@664@0 null))
  )
    anon372
)))
(let ((anon891_Else (=> (and true
    (= SecMask@222 SecMask@224)
    (not $@condition_$246)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@222 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon371
)))
(let ((anon891_Then (=> (and true
    $@condition_$246
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@222 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@223 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@222 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@222 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@223 SecMask@224)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@222 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)))
  )
    anon371
)))
(let ((anon890_Then (=> (and true
    $@condition_$244
    (= SecMask@222 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@221 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@221 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@221 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right)))
  )
    (and anon891_Else anon891_Then)
)))
(let (($branchMerge_87 (=> (and true
  )
    (and anon890_Else anon890_Then)
)))
(let ((anon367 (=> (and true
    (= SecMask@220 SecMask@221)
    (wf Heap@4 Mask@63 SecMask@220)
    (wf Heap@4 SecMask@220 SecMask@220)
  )
    $branchMerge_87
)))
(let ((anon888_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@217 SecMask@221)
    (not $@condition_$241)
    (not (= this@664@0 null))
  )
    $branchMerge_87
)))
(let ((anon889_Else (=> (and true
    (= SecMask@218 SecMask@220)
    (not $@condition_$243)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@218 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) 0))
  )
    anon367
)))
(let ((anon889_Then (=> (and true
    $@condition_$243
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@218 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) 0)
    (= SecMask@219 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@218 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@218 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R 0)))
    (= SecMask@219 SecMask@220)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@218 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R)))
  )
    anon367
)))
(let ((anon888_Then (=> (and true
    $@condition_$241
    (= SecMask@218 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@217 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@217 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@217 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right)))
  )
    (and anon889_Else anon889_Then)
)))
(let (($branchMerge_86 (=> (and true
  )
    (and anon888_Else anon888_Then)
)))
(let ((anon363 (=> (and true
    (= SecMask@216 SecMask@217)
    (wf Heap@4 Mask@63 SecMask@216)
    (wf Heap@4 SecMask@216 SecMask@216)
  )
    $branchMerge_86
)))
(let ((anon886_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@213 SecMask@217)
    (not $@condition_$238)
    (not (= this@664@0 null))
  )
    $branchMerge_86
)))
(let ((anon887_Else (=> (and true
    (= SecMask@214 SecMask@216)
    (not $@condition_$240)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@214 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) 0))
  )
    anon363
)))
(let ((anon887_Then (=> (and true
    $@condition_$240
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@214 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) 0)
    (= SecMask@215 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@214 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@214 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R 0)))
    (= SecMask@215 SecMask@216)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@214 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R)))
  )
    anon363
)))
(let ((anon886_Then (=> (and true
    $@condition_$238
    (= SecMask@214 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@213 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@213 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@213 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right)))
  )
    (and anon887_Else anon887_Then)
)))
(let (($branchMerge_85 (=> (and true
  )
    (and anon886_Else anon886_Then)
)))
(let ((anon359 (=> (and true
    (= SecMask@212 SecMask@213)
    (wf Heap@4 Mask@63 SecMask@212)
    (wf Heap@4 SecMask@212 SecMask@212)
  )
    $branchMerge_85
)))
(let ((anon884_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@209 SecMask@213)
    (not $@condition_$235)
    (not (= this@664@0 null))
  )
    $branchMerge_85
)))
(let ((anon885_Else (=> (and true
    (= SecMask@210 SecMask@212)
    (not $@condition_$237)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@210 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) 0))
  )
    anon359
)))
(let ((anon885_Then (=> (and true
    $@condition_$237
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@210 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) 0)
    (= SecMask@211 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@210 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@210 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R 0)))
    (= SecMask@211 SecMask@212)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@210 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R)))
  )
    anon359
)))
(let ((anon884_Then (=> (and true
    $@condition_$235
    (= SecMask@210 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@209 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@209 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@209 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right)))
  )
    (and anon885_Else anon885_Then)
)))
(let (($branchMerge_84 (=> (and true
  )
    (and anon884_Else anon884_Then)
)))
(let ((anon355 (=> (and true
    (= SecMask@208 SecMask@209)
    (wf Heap@4 Mask@63 SecMask@208)
    (wf Heap@4 SecMask@208 SecMask@208)
  )
    $branchMerge_84
)))
(let ((anon882_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@205 SecMask@209)
    (not $@condition_$232)
    (not (= this@664@0 null))
  )
    $branchMerge_84
)))
(let ((anon883_Else (=> (and true
    (= SecMask@206 SecMask@208)
    (not $@condition_$234)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@206 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon355
)))
(let ((anon883_Then (=> (and true
    $@condition_$234
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@206 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@207 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@206 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@206 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@207 SecMask@208)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@206 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)))
  )
    anon355
)))
(let ((anon882_Then (=> (and true
    $@condition_$232
    (= SecMask@206 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@205 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@205 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@205 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon883_Else anon883_Then)
)))
(let (($branchMerge_83 (=> (and true
  )
    (and anon882_Else anon882_Then)
)))
(let ((anon351 (=> (and true
    (= SecMask@204 SecMask@205)
    (wf Heap@4 Mask@63 SecMask@204)
    (wf Heap@4 SecMask@204 SecMask@204)
  )
    $branchMerge_83
)))
(let ((anon880_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@201 SecMask@205)
    (not $@condition_$229)
    (not (= this@664@0 null))
  )
    $branchMerge_83
)))
(let ((anon881_Else (=> (and true
    (= SecMask@202 SecMask@204)
    (not $@condition_$231)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@202 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) 0))
  )
    anon351
)))
(let ((anon881_Then (=> (and true
    $@condition_$231
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@202 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) 0)
    (= SecMask@203 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@202 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@202 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R 0)))
    (= SecMask@203 SecMask@204)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@202 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R)))
  )
    anon351
)))
(let ((anon880_Then (=> (and true
    $@condition_$229
    (= SecMask@202 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@201 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@201 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@201 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon881_Else anon881_Then)
)))
(let (($branchMerge_82 (=> (and true
  )
    (and anon880_Else anon880_Then)
)))
(let ((anon347 (=> (and true
    (= SecMask@200 SecMask@201)
    (wf Heap@4 Mask@63 SecMask@200)
    (wf Heap@4 SecMask@200 SecMask@200)
  )
    $branchMerge_82
)))
(let ((anon878_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@197 SecMask@201)
    (not $@condition_$226)
    (not (= this@664@0 null))
  )
    $branchMerge_82
)))
(let ((anon879_Else (=> (and true
    (= SecMask@198 SecMask@200)
    (not $@condition_$228)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@198 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) 0))
  )
    anon347
)))
(let ((anon879_Then (=> (and true
    $@condition_$228
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@198 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) 0)
    (= SecMask@199 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@198 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@198 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R 0)))
    (= SecMask@199 SecMask@200)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@198 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R)))
  )
    anon347
)))
(let ((anon878_Then (=> (and true
    $@condition_$226
    (= SecMask@198 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@197 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@197 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@197 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon879_Else anon879_Then)
)))
(let (($branchMerge_81 (=> (and true
  )
    (and anon878_Else anon878_Then)
)))
(let ((anon343 (=> (and true
    (= SecMask@196 SecMask@197)
    (wf Heap@4 Mask@63 SecMask@196)
    (wf Heap@4 SecMask@196 SecMask@196)
  )
    $branchMerge_81
)))
(let ((anon876_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@193 SecMask@197)
    (not $@condition_$224)
    (not (= this@664@0 null))
  )
    $branchMerge_81
)))
(let ((anon877_Else (=> (and true
    (= SecMask@194 SecMask@196)
    (not $@condition_$225)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@194 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) 0))
  )
    anon343
)))
(let ((anon877_Then (=> (and true
    $@condition_$225
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@194 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) 0)
    (= SecMask@195 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@194 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@194 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R 0)))
    (= SecMask@195 SecMask@196)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@194 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R)))
  )
    anon343
)))
(let ((anon876_Then (=> (and true
    $@condition_$224
    (= SecMask@194 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@193 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@193 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@193 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon877_Else anon877_Then)
)))
(let ((anon340 (=> (and true
    (wf Heap@4 Mask@63 SecMask@193)
    (wf Heap@4 SecMask@193 SecMask@193)
  )
    (and anon876_Else anon876_Then)
)))
(let ((anon875_Else (=> (and true
    (= SecMask@191 SecMask@193)
    (not $@condition_$223)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@191 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon340
)))
(let ((anon875_Then (=> (and true
    $@condition_$223
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@191 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@192 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@191 predRec@_2191@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@191 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@192 SecMask@193)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@191 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R)))
  )
    anon340
)))
(let ((anon338 (=> (and true
    (= SecMask@191 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@190 predRec@_2191@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@190 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@190 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@4 Mask@63 SecMask@190)
    (wf Heap@4 SecMask@190 SecMask@190)
  )
    (and anon875_Else anon875_Then)
)))
(let ((anon874_Else (=> (and true
    (= SecMask@188 SecMask@190)
    (not $@condition_$222)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@188 predRec@_2191@0 AVLTreeNode.keys) perm$R) 0))
  )
    anon338
)))
(let ((anon874_Then (=> (and true
    $@condition_$222
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@188 predRec@_2191@0 AVLTreeNode.keys) perm$R) 0)
    (= SecMask@189 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@188 predRec@_2191@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@188 predRec@_2191@0 AVLTreeNode.keys) perm$R 0)))
    (= SecMask@189 SecMask@190)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@188 predRec@_2191@0 AVLTreeNode.keys) perm$R)))
  )
    anon338
)))
(let ((anon336 (=> (and true
    (= SecMask@188 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@187 predRec@_2191@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@187 predRec@_2191@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@187 predRec@_2191@0 AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@4 Mask@63 SecMask@187)
    (wf Heap@4 SecMask@187 SecMask@187)
  )
    (and anon874_Else anon874_Then)
)))
(let ((anon873_Else (=> (and true
    (= SecMask@185 SecMask@187)
    (not $@condition_$221)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@185 predRec@_2191@0 AVLTreeNode.right) perm$R) 0))
  )
    anon336
)))
(let ((anon873_Then (=> (and true
    $@condition_$221
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@185 predRec@_2191@0 AVLTreeNode.right) perm$R) 0)
    (= SecMask@186 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@185 predRec@_2191@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@185 predRec@_2191@0 AVLTreeNode.right) perm$R 0)))
    (= SecMask@186 SecMask@187)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@185 predRec@_2191@0 AVLTreeNode.right) perm$R)))
  )
    anon336
)))
(let ((anon334 (=> (and true
    (= SecMask@185 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@184 predRec@_2191@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@184 predRec@_2191@0 AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@184 predRec@_2191@0 AVLTreeNode.right) perm$R) (* (- 1) (Fractions 100))))))
    (wf Heap@4 Mask@63 SecMask@184)
    (wf Heap@4 SecMask@184 SecMask@184)
  )
    (and anon873_Else anon873_Then)
)))
(let ((anon872_Else (=> (and true
    (= SecMask@182 SecMask@184)
    (not $@condition_$220)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@182 predRec@_2191@0 AVLTreeNode.left) perm$R) 0))
  )
    anon334
)))
(let ((anon872_Then (=> (and true
    $@condition_$220
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@182 predRec@_2191@0 AVLTreeNode.left) perm$R) 0)
    (= SecMask@183 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@182 predRec@_2191@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@182 predRec@_2191@0 AVLTreeNode.left) perm$R 0)))
    (= SecMask@183 SecMask@184)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@182 predRec@_2191@0 AVLTreeNode.left) perm$R)))
  )
    anon334
)))
(let ((anon332 (=> (and true
    (= SecMask@182 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@181 predRec@_2191@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@181 predRec@_2191@0 AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@181 predRec@_2191@0 AVLTreeNode.left) perm$R) (* (- 1) (Fractions 100))))))
    (wf Heap@4 Mask@63 SecMask@181)
    (wf Heap@4 SecMask@181 SecMask@181)
  )
    (and anon872_Else anon872_Then)
)))
(let ((anon871_Else (=> (and true
    (= SecMask@179 SecMask@181)
    (not $@condition_$219)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@179 predRec@_2191@0 AVLTreeNode.height) perm$R) 0))
  )
    anon332
)))
(let ((anon871_Then (=> (and true
    $@condition_$219
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@179 predRec@_2191@0 AVLTreeNode.height) perm$R) 0)
    (= SecMask@180 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@179 predRec@_2191@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@179 predRec@_2191@0 AVLTreeNode.height) perm$R 0)))
    (= SecMask@180 SecMask@181)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@179 predRec@_2191@0 AVLTreeNode.height) perm$R)))
  )
    anon332
)))
(let ((anon330 (=> (and true
    (= SecMask@179 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@178 predRec@_2191@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@178 predRec@_2191@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@178 predRec@_2191@0 AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@4 Mask@63 SecMask@178)
    (wf Heap@4 SecMask@178 SecMask@178)
  )
    (and anon871_Else anon871_Then)
)))
(let ((anon870_Else (=> (and true
    (= SecMask@176 SecMask@178)
    (not $@condition_$218)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@176 predRec@_2191@0 AVLTreeNode.key) perm$R) 0))
  )
    anon330
)))
(let ((anon870_Then (=> (and true
    $@condition_$218
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@176 predRec@_2191@0 AVLTreeNode.key) perm$R) 0)
    (= SecMask@177 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@176 predRec@_2191@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@176 predRec@_2191@0 AVLTreeNode.key) perm$R 0)))
    (= SecMask@177 SecMask@178)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@176 predRec@_2191@0 AVLTreeNode.key) perm$R)))
  )
    anon330
)))
(let ((anon328 (=> (and true
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 predRec@_2191@0 AVLTreeNode.height))
    (= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.balanceFactor))
    (= (= true $@bf_72) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.left)))
    (= (= true $@bf_73) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.right)))
    (= (= true $@bf_74) (< (ite$Int$ $@bf_73 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height)) (ite$Int$ $@bf_72 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height))))
    (= (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.height)) 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.height))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 predRec@_2191@0 AVLTreeNode.balanceFactor) (+ (ite$Int$ $@bf_72 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_73 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 predRec@_2191@0 AVLTreeNode.height) (ite$Int$ $@bf_74 (+ (ite$Int$ $@bf_72 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ $@bf_73 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 predRec@_2191@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ $@bf_72 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 predRec@_2191@0 AVLTreeNode.key))) (ite$Seq$Int$$ $@bf_73 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys))))
    (= SecMask@176 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@175 predRec@_2191@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@175 predRec@_2191@0 AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@175 predRec@_2191@0 AVLTreeNode.key) perm$R) (* (- 1) (Fractions 100))))))
    (forall( (|kk#81_$5| Int))(= (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.keys) |kk#81_$5|) (or (= |kk#81_$5| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.key)) (or (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys) |kk#81_$5|) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) null))) (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys) |kk#81_$5|) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) null)))))))
    (not (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 predRec@_2191@0 AVLTreeNode.balanceFactor) (- 1)))
    (not (< 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 predRec@_2191@0 AVLTreeNode.balanceFactor)))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 predRec@_2191@0 AVLTreeNode.height)))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 predRec@_2191@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 predRec@_2191@0 AVLTreeNode.key))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys))))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 predRec@_2191@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 predRec@_2191@0 AVLTreeNode.keys))
  )
    (and anon870_Else anon870_Then)
)))
(let ((anon868_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right))
    (not $@condition_$214)
    (not $@condition_$216)
    (not (= this@664@0 null))
  )
    anon328
)))
(let ((anon868_Then (=> (and true
    $@condition_$214
    $@condition_$216
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height))
    (forall( (|rk#80#673| Int))(=> (and (< |rk#80#673| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 |rk#80#673|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.right) AVLTreeNode.keys) |rk#80#673|))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right)))
  )
    anon328
)))
(let (($branchMerge_79 (=> (and true
  )
    (and anon868_Else anon868_Then)
)))
(let ((anon866_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left))
    (not $@condition_$210)
    (not $@condition_$212)
    (not (= this@664@0 null))
  )
    $branchMerge_79
)))
(let ((anon866_Then (=> (and true
    $@condition_$210
    $@condition_$212
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height))
    (forall( (|lk#79#672| Int))(=> (and (< |lk#79#672| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 |lk#79#672|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.left) AVLTreeNode.keys) |lk#79#672|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.key))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left)))
  )
    $branchMerge_79
)))
(let ((anon865_Then (=> (and true
    $@condition_$208
    (= predRec@_2191@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right))
    (= predVer@_2192@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 predRec@_2191@0 AVLTreeNode.valid))
  )
    (and anon866_Else anon866_Then)
)))
(let ((anon864_Then@2 (=> (and true
    (= exhaleMask@_2278@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))
  )
    (and anon865_Else anon865_Then)
)))
(let ((anon864_Then (=> (and true
    $@condition_$206
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right)))
  )(and 
    anon864_Then@1_assertion
    anon864_Then@2
))))
(let (($branchMerge_74 (=> (and true
  )
    (and anon864_Else anon864_Then)
)))
(let ((anon861_Else (=> (and true
    (= exhaleMask@_2278@11 exhaleMask@_2278@13)
    (= exhaleMask@_2278@11 exhaleMask@_2278@7)
    (= exhaleMask@_2278@11 exhaleMask@_2278@9)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left))
    (not $@condition_$162)
    (not $@condition_$202)
    (not $@condition_$204)
    (not (= this@664@0 null))
  )
    $branchMerge_74
)))
(let ((anon863_Then@2 (=> (and true
    (= exhaleMask@_2278@12 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (= exhaleMask@_2278@12 exhaleMask@_2278@13)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_2278@12)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@11 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))
    (wf Heap@4 exhaleMask@_2278@12 SecMask@175)
  )
    $branchMerge_74
)))
(let ((anon862_Then@2 (=> (and true
    $@condition_$204
    (= exhaleMask@_2278@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (= exhaleMask@_2278@10 exhaleMask@_2278@11)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.keys) perm$N)))
    (IsGoodMask exhaleMask@_2278@10)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))
    (wf Heap@4 exhaleMask@_2278@10 SecMask@175)
  )(and 
    anon863_Then@1_assertion
    anon863_Then@2
))))
(let ((anon861_Then@2 (=> (and true
    $@condition_$202
    (= exhaleMask@_2278@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (= exhaleMask@_2278@8 exhaleMask@_2278@9)
    (=> (= (Fractions 50) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.height) perm$N)))
    (IsGoodMask exhaleMask@_2278@8)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@7 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))
    (wf Heap@4 exhaleMask@_2278@8 SecMask@175)
    (wf Heap@4 Mask@63 SecMask@175)
  )(and 
    anon862_Then@1_assertion
    anon862_Then@2
))))
(let ((anon861_Then (=> (and true
    $@condition_$162
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left)))
  )(and 
    anon861_Then@1_assertion
    anon861_Then@2
))))
(let (($branchMerge_60 (=> (and true
  )
    (and anon861_Else anon861_Then)
)))
(let ((anon311 (=> (and true
    (= exhaleMask@_2278@6 exhaleMask@_2278@7)
    (= SecMask@174 SecMask@175)
    (IsGoodMask exhaleMask@_2278@6)
    (wf Heap@4 exhaleMask@_2278@6 SecMask@174)
    (wf Heap@4 Mask@63 SecMask@174)
  )
    $branchMerge_60
)))
(let ((anon832_Else (=> (and true
    (= exhaleMask@_2278@5 exhaleMask@_2278@7)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left))
    (= SecMask@123 SecMask@175)
    (not $@condition_$160)
    (not (= this@664@0 null))
  )
    $branchMerge_60
)))
(let ((anon860_Else (=> (and true
    (CanRead$Int$ exhaleMask@_2278@6 SecMask@174 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.valid)
    (not $@condition_$164)
  )
    anon311
)))
(let ((anon860_Then (=> (and true
    $@condition_$164
    (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2277@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.valid))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.valid) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ exhaleHeap@_2277@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.valid)))
    (not (CanRead$Int$ exhaleMask@_2278@6 SecMask@174 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.valid))
  )
    anon311
)))
(let (($branchMerge_61 (=> (and true
  )
    (and anon860_Else anon860_Then)
)))
(let ((anon308 (=> (and true
    (= SecMask@173 SecMask@174)
    (wf Heap@4 SecMask@173 SecMask@173)
  )
    $branchMerge_61
)))
(let ((anon833_Else (=> (and true
    (= SecMask@123 SecMask@174)
    (not $@condition_$161)
    (not (and (= predVer@_2192@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.valid)) (= predRec@_2191@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left))))
  )
    $branchMerge_61
)))
(let ((anon307 (=> (and true
    (= SecMask@172 SecMask@173)
    (wf Heap@4 Mask@63 SecMask@172)
    (wf Heap@4 SecMask@172 SecMask@172)
  )
    anon308
)))
(let ((anon858_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@169 SecMask@173)
    (not $@condition_$197)
    (not (= this@664@0 null))
  )
    anon308
)))
(let ((anon859_Else (=> (and true
    (= SecMask@170 SecMask@172)
    (not $@condition_$199)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@170 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon307
)))
(let ((anon859_Then (=> (and true
    $@condition_$199
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@170 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@171 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@170 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@170 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@171 SecMask@172)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@170 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)))
  )
    anon307
)))
(let ((anon858_Then (=> (and true
    $@condition_$197
    (= SecMask@170 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@169 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@169 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@169 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right)))
  )
    (and anon859_Else anon859_Then)
)))
(let (($branchMerge_72 (=> (and true
  )
    (and anon858_Else anon858_Then)
)))
(let ((anon303 (=> (and true
    (= SecMask@168 SecMask@169)
    (wf Heap@4 Mask@63 SecMask@168)
    (wf Heap@4 SecMask@168 SecMask@168)
  )
    $branchMerge_72
)))
(let ((anon856_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@165 SecMask@169)
    (not $@condition_$194)
    (not (= this@664@0 null))
  )
    $branchMerge_72
)))
(let ((anon857_Else (=> (and true
    (= SecMask@166 SecMask@168)
    (not $@condition_$196)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@166 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) 0))
  )
    anon303
)))
(let ((anon857_Then (=> (and true
    $@condition_$196
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@166 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) 0)
    (= SecMask@167 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@166 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@166 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R 0)))
    (= SecMask@167 SecMask@168)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@166 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R)))
  )
    anon303
)))
(let ((anon856_Then (=> (and true
    $@condition_$194
    (= SecMask@166 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@165 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@165 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@165 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right)))
  )
    (and anon857_Else anon857_Then)
)))
(let (($branchMerge_71 (=> (and true
  )
    (and anon856_Else anon856_Then)
)))
(let ((anon299 (=> (and true
    (= SecMask@164 SecMask@165)
    (wf Heap@4 Mask@63 SecMask@164)
    (wf Heap@4 SecMask@164 SecMask@164)
  )
    $branchMerge_71
)))
(let ((anon854_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@161 SecMask@165)
    (not $@condition_$191)
    (not (= this@664@0 null))
  )
    $branchMerge_71
)))
(let ((anon855_Else (=> (and true
    (= SecMask@162 SecMask@164)
    (not $@condition_$193)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@162 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) 0))
  )
    anon299
)))
(let ((anon855_Then (=> (and true
    $@condition_$193
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@162 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) 0)
    (= SecMask@163 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@162 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@162 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R 0)))
    (= SecMask@163 SecMask@164)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@162 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R)))
  )
    anon299
)))
(let ((anon854_Then (=> (and true
    $@condition_$191
    (= SecMask@162 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@161 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@161 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@161 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right)))
  )
    (and anon855_Else anon855_Then)
)))
(let (($branchMerge_70 (=> (and true
  )
    (and anon854_Else anon854_Then)
)))
(let ((anon295 (=> (and true
    (= SecMask@160 SecMask@161)
    (wf Heap@4 Mask@63 SecMask@160)
    (wf Heap@4 SecMask@160 SecMask@160)
  )
    $branchMerge_70
)))
(let ((anon852_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@157 SecMask@161)
    (not $@condition_$188)
    (not (= this@664@0 null))
  )
    $branchMerge_70
)))
(let ((anon853_Else (=> (and true
    (= SecMask@158 SecMask@160)
    (not $@condition_$190)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@158 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) 0))
  )
    anon295
)))
(let ((anon853_Then (=> (and true
    $@condition_$190
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@158 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) 0)
    (= SecMask@159 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@158 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@158 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R 0)))
    (= SecMask@159 SecMask@160)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@158 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R)))
  )
    anon295
)))
(let ((anon852_Then (=> (and true
    $@condition_$188
    (= SecMask@158 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@157 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@157 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@157 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right)))
  )
    (and anon853_Else anon853_Then)
)))
(let (($branchMerge_69 (=> (and true
  )
    (and anon852_Else anon852_Then)
)))
(let ((anon291 (=> (and true
    (= SecMask@156 SecMask@157)
    (wf Heap@4 Mask@63 SecMask@156)
    (wf Heap@4 SecMask@156 SecMask@156)
  )
    $branchMerge_69
)))
(let ((anon850_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@153 SecMask@157)
    (not $@condition_$185)
    (not (= this@664@0 null))
  )
    $branchMerge_69
)))
(let ((anon851_Else (=> (and true
    (= SecMask@154 SecMask@156)
    (not $@condition_$187)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@154 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon291
)))
(let ((anon851_Then (=> (and true
    $@condition_$187
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@154 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@155 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@154 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@154 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@155 SecMask@156)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@154 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)))
  )
    anon291
)))
(let ((anon850_Then (=> (and true
    $@condition_$185
    (= SecMask@154 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@153 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@153 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@153 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon851_Else anon851_Then)
)))
(let (($branchMerge_68 (=> (and true
  )
    (and anon850_Else anon850_Then)
)))
(let ((anon287 (=> (and true
    (= SecMask@152 SecMask@153)
    (wf Heap@4 Mask@63 SecMask@152)
    (wf Heap@4 SecMask@152 SecMask@152)
  )
    $branchMerge_68
)))
(let ((anon848_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@149 SecMask@153)
    (not $@condition_$182)
    (not (= this@664@0 null))
  )
    $branchMerge_68
)))
(let ((anon849_Else (=> (and true
    (= SecMask@150 SecMask@152)
    (not $@condition_$184)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@150 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) 0))
  )
    anon287
)))
(let ((anon849_Then (=> (and true
    $@condition_$184
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@150 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) 0)
    (= SecMask@151 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@150 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@150 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R 0)))
    (= SecMask@151 SecMask@152)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@150 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R)))
  )
    anon287
)))
(let ((anon848_Then (=> (and true
    $@condition_$182
    (= SecMask@150 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@149 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@149 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@149 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon849_Else anon849_Then)
)))
(let (($branchMerge_67 (=> (and true
  )
    (and anon848_Else anon848_Then)
)))
(let ((anon283 (=> (and true
    (= SecMask@148 SecMask@149)
    (wf Heap@4 Mask@63 SecMask@148)
    (wf Heap@4 SecMask@148 SecMask@148)
  )
    $branchMerge_67
)))
(let ((anon846_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@145 SecMask@149)
    (not $@condition_$179)
    (not (= this@664@0 null))
  )
    $branchMerge_67
)))
(let ((anon847_Else (=> (and true
    (= SecMask@146 SecMask@148)
    (not $@condition_$181)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@146 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) 0))
  )
    anon283
)))
(let ((anon847_Then (=> (and true
    $@condition_$181
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@146 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) 0)
    (= SecMask@147 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@146 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@146 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R 0)))
    (= SecMask@147 SecMask@148)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@146 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R)))
  )
    anon283
)))
(let ((anon846_Then (=> (and true
    $@condition_$179
    (= SecMask@146 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@145 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@145 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@145 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon847_Else anon847_Then)
)))
(let (($branchMerge_66 (=> (and true
  )
    (and anon846_Else anon846_Then)
)))
(let ((anon279 (=> (and true
    (= SecMask@144 SecMask@145)
    (wf Heap@4 Mask@63 SecMask@144)
    (wf Heap@4 SecMask@144 SecMask@144)
  )
    $branchMerge_66
)))
(let ((anon844_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@141 SecMask@145)
    (not $@condition_$177)
    (not (= this@664@0 null))
  )
    $branchMerge_66
)))
(let ((anon845_Else (=> (and true
    (= SecMask@142 SecMask@144)
    (not $@condition_$178)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@142 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) 0))
  )
    anon279
)))
(let ((anon845_Then (=> (and true
    $@condition_$178
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@142 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) 0)
    (= SecMask@143 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@142 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@142 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R 0)))
    (= SecMask@143 SecMask@144)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@142 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R)))
  )
    anon279
)))
(let ((anon844_Then (=> (and true
    $@condition_$177
    (= SecMask@142 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@141 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@141 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@141 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon845_Else anon845_Then)
)))
(let ((anon276 (=> (and true
    (wf Heap@4 Mask@63 SecMask@141)
    (wf Heap@4 SecMask@141 SecMask@141)
  )
    (and anon844_Else anon844_Then)
)))
(let ((anon843_Else (=> (and true
    (= SecMask@139 SecMask@141)
    (not $@condition_$176)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@139 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon276
)))
(let ((anon843_Then (=> (and true
    $@condition_$176
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@139 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@140 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@139 predRec@_2191@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@139 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@140 SecMask@141)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@139 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R)))
  )
    anon276
)))
(let ((anon274 (=> (and true
    (= SecMask@139 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@138 predRec@_2191@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@138 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@138 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@4 Mask@63 SecMask@138)
    (wf Heap@4 SecMask@138 SecMask@138)
  )
    (and anon843_Else anon843_Then)
)))
(let ((anon842_Else (=> (and true
    (= SecMask@136 SecMask@138)
    (not $@condition_$175)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@136 predRec@_2191@0 AVLTreeNode.keys) perm$R) 0))
  )
    anon274
)))
(let ((anon842_Then (=> (and true
    $@condition_$175
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@136 predRec@_2191@0 AVLTreeNode.keys) perm$R) 0)
    (= SecMask@137 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@136 predRec@_2191@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@136 predRec@_2191@0 AVLTreeNode.keys) perm$R 0)))
    (= SecMask@137 SecMask@138)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@136 predRec@_2191@0 AVLTreeNode.keys) perm$R)))
  )
    anon274
)))
(let ((anon272 (=> (and true
    (= SecMask@136 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@135 predRec@_2191@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@135 predRec@_2191@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@135 predRec@_2191@0 AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@4 Mask@63 SecMask@135)
    (wf Heap@4 SecMask@135 SecMask@135)
  )
    (and anon842_Else anon842_Then)
)))
(let ((anon841_Else (=> (and true
    (= SecMask@133 SecMask@135)
    (not $@condition_$174)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@133 predRec@_2191@0 AVLTreeNode.right) perm$R) 0))
  )
    anon272
)))
(let ((anon841_Then (=> (and true
    $@condition_$174
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@133 predRec@_2191@0 AVLTreeNode.right) perm$R) 0)
    (= SecMask@134 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@133 predRec@_2191@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@133 predRec@_2191@0 AVLTreeNode.right) perm$R 0)))
    (= SecMask@134 SecMask@135)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@133 predRec@_2191@0 AVLTreeNode.right) perm$R)))
  )
    anon272
)))
(let ((anon270 (=> (and true
    (= SecMask@133 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@132 predRec@_2191@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@132 predRec@_2191@0 AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@132 predRec@_2191@0 AVLTreeNode.right) perm$R) (* (- 1) (Fractions 100))))))
    (wf Heap@4 Mask@63 SecMask@132)
    (wf Heap@4 SecMask@132 SecMask@132)
  )
    (and anon841_Else anon841_Then)
)))
(let ((anon840_Else (=> (and true
    (= SecMask@130 SecMask@132)
    (not $@condition_$173)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@130 predRec@_2191@0 AVLTreeNode.left) perm$R) 0))
  )
    anon270
)))
(let ((anon840_Then (=> (and true
    $@condition_$173
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@130 predRec@_2191@0 AVLTreeNode.left) perm$R) 0)
    (= SecMask@131 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@130 predRec@_2191@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@130 predRec@_2191@0 AVLTreeNode.left) perm$R 0)))
    (= SecMask@131 SecMask@132)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@130 predRec@_2191@0 AVLTreeNode.left) perm$R)))
  )
    anon270
)))
(let ((anon268 (=> (and true
    (= SecMask@130 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@129 predRec@_2191@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@129 predRec@_2191@0 AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@129 predRec@_2191@0 AVLTreeNode.left) perm$R) (* (- 1) (Fractions 100))))))
    (wf Heap@4 Mask@63 SecMask@129)
    (wf Heap@4 SecMask@129 SecMask@129)
  )
    (and anon840_Else anon840_Then)
)))
(let ((anon839_Else (=> (and true
    (= SecMask@127 SecMask@129)
    (not $@condition_$172)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@127 predRec@_2191@0 AVLTreeNode.height) perm$R) 0))
  )
    anon268
)))
(let ((anon839_Then (=> (and true
    $@condition_$172
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@127 predRec@_2191@0 AVLTreeNode.height) perm$R) 0)
    (= SecMask@128 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@127 predRec@_2191@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@127 predRec@_2191@0 AVLTreeNode.height) perm$R 0)))
    (= SecMask@128 SecMask@129)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@127 predRec@_2191@0 AVLTreeNode.height) perm$R)))
  )
    anon268
)))
(let ((anon266 (=> (and true
    (= SecMask@127 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@126 predRec@_2191@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@126 predRec@_2191@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@126 predRec@_2191@0 AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@4 Mask@63 SecMask@126)
    (wf Heap@4 SecMask@126 SecMask@126)
  )
    (and anon839_Else anon839_Then)
)))
(let ((anon838_Else (=> (and true
    (= SecMask@124 SecMask@126)
    (not $@condition_$171)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@124 predRec@_2191@0 AVLTreeNode.key) perm$R) 0))
  )
    anon266
)))
(let ((anon838_Then (=> (and true
    $@condition_$171
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@124 predRec@_2191@0 AVLTreeNode.key) perm$R) 0)
    (= SecMask@125 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@124 predRec@_2191@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@124 predRec@_2191@0 AVLTreeNode.key) perm$R 0)))
    (= SecMask@125 SecMask@126)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@124 predRec@_2191@0 AVLTreeNode.key) perm$R)))
  )
    anon266
)))
(let ((anon264 (=> (and true
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 predRec@_2191@0 AVLTreeNode.height))
    (= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.balanceFactor))
    (= (= true $@bf_69) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.left)))
    (= (= true $@bf_70) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.right)))
    (= (= true $@bf_71) (< (ite$Int$ $@bf_70 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height)) (ite$Int$ $@bf_69 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height))))
    (= (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height)) 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.height))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 predRec@_2191@0 AVLTreeNode.balanceFactor) (+ (ite$Int$ $@bf_69 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_70 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 predRec@_2191@0 AVLTreeNode.height) (ite$Int$ $@bf_71 (+ (ite$Int$ $@bf_69 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ $@bf_70 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 predRec@_2191@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ $@bf_69 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 predRec@_2191@0 AVLTreeNode.key))) (ite$Seq$Int$$ $@bf_70 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys))))
    (= SecMask@124 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@123 predRec@_2191@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@123 predRec@_2191@0 AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@123 predRec@_2191@0 AVLTreeNode.key) perm$R) (* (- 1) (Fractions 100))))))
    (forall( (|kk#81_$4| Int))(= (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.keys) |kk#81_$4|) (or (= |kk#81_$4| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.key)) (or (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys) |kk#81_$4|) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) null))) (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys) |kk#81_$4|) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) null)))))))
    (not (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 predRec@_2191@0 AVLTreeNode.balanceFactor) (- 1)))
    (not (< 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 predRec@_2191@0 AVLTreeNode.balanceFactor)))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 predRec@_2191@0 AVLTreeNode.height)))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 predRec@_2191@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 predRec@_2191@0 AVLTreeNode.key))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys))))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 predRec@_2191@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 predRec@_2191@0 AVLTreeNode.keys))
  )
    (and anon838_Else anon838_Then)
)))
(let ((anon836_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right))
    (not $@condition_$167)
    (not $@condition_$169)
    (not (= this@664@0 null))
  )
    anon264
)))
(let ((anon836_Then (=> (and true
    $@condition_$167
    $@condition_$169
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height))
    (forall( (|rk#80#668| Int))(=> (and (< |rk#80#668| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 |rk#80#668|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys) |rk#80#668|))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.right)))
  )
    anon264
)))
(let (($branchMerge_64 (=> (and true
  )
    (and anon836_Else anon836_Then)
)))
(let ((anon834_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left))
    (not $@condition_$163)
    (not $@condition_$165)
    (not (= this@664@0 null))
  )
    $branchMerge_64
)))
(let ((anon834_Then (=> (and true
    $@condition_$163
    $@condition_$165
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height))
    (forall( (|lk#79#667| Int))(=> (and (< |lk#79#667| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 |lk#79#667|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys) |lk#79#667|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.key))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 predRec@_2191@0 AVLTreeNode.left)))
  )
    $branchMerge_64
)))
(let ((anon833_Then (=> (and true
    $@condition_$161
    (= predRec@_2191@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left))
    (= predVer@_2192@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 predRec@_2191@0 AVLTreeNode.valid))
  )
    (and anon834_Else anon834_Then)
)))
(let ((anon832_Then@2 (=> (and true
    (= exhaleMask@_2278@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))
  )
    (and anon833_Else anon833_Then)
)))
(let ((anon832_Then (=> (and true
    $@condition_$160
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left)))
  )(and 
    anon832_Then@1_assertion
    anon832_Then@2
))))
(let ((anon254@14 (=> (and true
    (= exhaleMask@_2278@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@4 this@664@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@4 this@664@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@4 this@664@0 AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@4 this@664@0 AVLTreeNode.balanceFactor) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@4 this@664@0 AVLTreeNode.balanceFactor) perm$N)))
    (IsGoodMask exhaleMask@_2278@5)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@4 this@664@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 100)))
    (wf Heap@4 exhaleMask@_2278@5 SecMask@123)
  )
    (and anon832_Else anon832_Then)
)))
(let ((anon254@12 (=> (and true
    (= exhaleMask@_2278@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@3 this@664@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@3 this@664@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@3 this@664@0 AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@3 this@664@0 AVLTreeNode.keys) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@3 this@664@0 AVLTreeNode.keys) perm$N)))
    (IsGoodMask exhaleMask@_2278@4)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ exhaleMask@_2278@3 this@664@0 AVLTreeNode.keys) perm$R) (Fractions 100)))
    (wf Heap@4 exhaleMask@_2278@4 SecMask@123)
  )(and 
    anon254@13_assertion
    anon254@14
))))
(let ((anon254@10 (=> (and true
    (= exhaleMask@_2278@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2278@2 this@664@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2278@2 this@664@0 AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2278@2 this@664@0 AVLTreeNode.right) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2278@2 this@664@0 AVLTreeNode.right) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2278@2 this@664@0 AVLTreeNode.right) perm$N)))
    (IsGoodMask exhaleMask@_2278@3)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2278@2 this@664@0 AVLTreeNode.right) perm$R) (Fractions 100)))
    (wf Heap@4 exhaleMask@_2278@3 SecMask@123)
  )(and 
    anon254@11_assertion
    anon254@12
))))
(let ((anon254@8 (=> (and true
    (= exhaleMask@_2278@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2278@1 this@664@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2278@1 this@664@0 AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2278@1 this@664@0 AVLTreeNode.left) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2278@1 this@664@0 AVLTreeNode.left) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2278@1 this@664@0 AVLTreeNode.left) perm$N)))
    (IsGoodMask exhaleMask@_2278@2)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ exhaleMask@_2278@1 this@664@0 AVLTreeNode.left) perm$R) (Fractions 100)))
    (wf Heap@4 exhaleMask@_2278@2 SecMask@123)
  )(and 
    anon254@9_assertion
    anon254@10
))))
(let ((anon254@6 (=> (and true
    (= exhaleMask@_2278@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@0 this@664@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@0 this@664@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@0 this@664@0 AVLTreeNode.height) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@0 this@664@0 AVLTreeNode.height) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@0 this@664@0 AVLTreeNode.height) perm$N)))
    (IsGoodMask exhaleMask@_2278@1)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ exhaleMask@_2278@0 this@664@0 AVLTreeNode.height) perm$R) (Fractions 100)))
    (wf Heap@4 exhaleMask@_2278@1 SecMask@123)
  )(and 
    anon254@7_assertion
    anon254@8
))))
(let ((anon254@4 (=> (and true
    (= exhaleMask@_2278@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@63 this@664@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@63 this@664@0 AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@63 this@664@0 AVLTreeNode.key) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@63 this@664@0 AVLTreeNode.key) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@63 this@664@0 AVLTreeNode.key) perm$N)))
    (IsGoodMask exhaleMask@_2278@0)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@63 this@664@0 AVLTreeNode.key) perm$R) (Fractions 100)))
    (wf Heap@4 exhaleMask@_2278@0 SecMask@123)
  )(and 
    anon254@5_assertion
    anon254@6
))))
(let ((anon254@2 (=> (and true
    (>= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.height))) (- 0 1))
    (not (< (+ (ite$Int$ $@bf 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_1 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.height)))) (- 1)))
  )(and 
    anon254@3_assertion
    anon254@4
))))
(let ((anon254@1 (=> (and true
    (<= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.height))) 1)
    (not (< 1 (+ (ite$Int$ $@bf 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_1 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.height))))))
  )(and 
    anon254@1_assertion
    anon254@2
))))
(let ((anon254 (=> (and true
    (= (= true $@bf) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left)))
    (= (= true $@bf_1) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right)))
  )(and 
    anon254_assertion
    anon254@1
))))
(let ((anon831_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right))
    (not $@condition_$158)
    (not (= this@664@0 null))
  )
    anon254
)))
(let ((anon831_Then@1 (=> (and true
    (forall( (|k#93#666| Int))(=> (and (< |k#93#666| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 |k#93#666|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 this@664@0 AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) AVLTreeNode.keys) |k#93#666|))))
  )
    anon254
)))
(let ((anon831_Then (=> (and true
    $@condition_$158
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.right)))
  )(and 
    anon831_Then_assertion
    anon831_Then@1
))))
(let (($branchMerge_59 (=> (and true
  )
    (and anon831_Else anon831_Then)
)))
(let ((anon830_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left))
    (not $@condition_$157)
    (not (= this@664@0 null))
  )
    $branchMerge_59
)))
(let ((anon830_Then@1 (=> (and true
    (forall( (|k#92#665| Int))(=> (and (< |k#92#665| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 |k#92#665|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@4 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) AVLTreeNode.keys) |k#92#665|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@4 this@664@0 AVLTreeNode.key))))
  )
    $branchMerge_59
)))
(let ((anon830_Then (=> (and true
    $@condition_$157
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this@664@0 AVLTreeNode.left)))
  )(and 
    anon830_Then_assertion
    anon830_Then@1
))))
(let ((anon250@8 (=> (and true
    (= this@664@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@4 this AVLTreeNode.left))
    (not (= null this@664@0))
  )
    (and anon830_Else anon830_Then)
)))
(let ((anon250@5 (=> (and true
    (< (* 1000 methodCallK@_2276) (Fractions 1))
    (< (* 1000 methodCallK@_2276) methodK@_2144)
    (< 0 methodCallK@_2276)
    (= Heap@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.right (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left)))
    (CanRead$ref$ Mask@63 SecMask@123 r@66@0 AVLTreeNode.left)
    (not (= (Fractions 1) (* 1000 methodCallK@_2276)))
    (not (= 0 methodCallK@_2276))
    (not (= methodK@_2144 (* 1000 methodCallK@_2276)))
    (wf Heap@4 Mask@63 SecMask@123)
  )(and 
    anon250@7_assertion
    anon250@8
))))
(let ((anon250@3 (=> (and true
    (CanWrite$ref$ Mask@63 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 this AVLTreeNode.left) AVLTreeNode.right)
  )(and 
    anon250@4_assertion
    anon250@5
))))
(let ((anon250@2 (=> (and true
    (CanRead$ref$ Mask@63 SecMask@123 this AVLTreeNode.left)
  )(and 
    anon250@2_assertion
    anon250@3
))))
(let ((anon250 (=> (and true
    (IsGoodExhaleState exhaleHeap@_2270@0 Heap@3 Mask@63 SecMask@123)
    (wf exhaleHeap@_2270@0 Mask@63 SecMask@123)
  )(and 
    anon250@1_assertion
    anon250@2
))))
(let ((anon829_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right))
    (not $@condition_$156)
  )
    anon250
)))
(let ((anon829_Then@13 (=> (and true
    (forall( (|k#100#661| Int))(=> (and (< |k#100#661| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 |k#100#661|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) |k#100#661|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 this AVLTreeNode.key))))
  )
    anon250
)))
(let ((anon829_Then@12 (=> (and true
    (=> (and (< k@100@662 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 k@100@662)) (CanRead$Int$ Mask@63 SecMask@123 this AVLTreeNode.key))
  )(and 
    anon829_Then@12_assertion
    anon829_Then@13
))))
(let ((anon829_Then@8 (=> (and true
    (=> (and (< k@100@662 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 k@100@662)) (< k@100@662 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.keys))))
    (=> (and (< k@100@662 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 k@100@662)) (<= 0 k@100@662))
    (=> (and (< k@100@662 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 k@100@662)) (CanRead$Seq$Int$$ Mask@63 SecMask@123 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.keys))
  )(and 
    anon829_Then@11_assertion
    anon829_Then@12
))))
(let ((anon829_Then@4 (=> (and true
    (=> (<= 0 k@100@662) (CanRead$Seq$Int$$ Mask@63 SecMask@123 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.keys))
    (=> (and (< k@100@662 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 k@100@662)) (CanRead$ref$ Mask@63 SecMask@123 r@66@0 AVLTreeNode.right))
  )(and 
    anon829_Then@7_assertion
    anon829_Then@8
))))
(let ((anon829_Then (=> (and true
    $@condition_$156
    (=> (<= 0 k@100@662) (CanRead$ref$ Mask@63 SecMask@123 r@66@0 AVLTreeNode.right))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right)))
  )(and 
    anon829_Then@3_assertion
    anon829_Then@4
))))
(let ((anon248@2 (=> (and true
    (CanRead$ref$ Mask@63 SecMask@123 r@66@0 AVLTreeNode.right)
  )
    (and anon829_Else anon829_Then)
)))
(let ((anon248 (=> (and true
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 r@66@0 AVLTreeNode.height))
    (= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.height))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 r@66@0 AVLTreeNode.balanceFactor))
    (= (= true $@bf_66) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left)))
    (= (= true $@bf_67) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right)))
    (= (= true $@bf_68) (< (ite$Int$ $@bf_67 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.height)) (ite$Int$ $@bf_66 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.height))))
    (= (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.height)) 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 r@66@0 AVLTreeNode.height))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 r@66@0 AVLTreeNode.balanceFactor) (+ (ite$Int$ $@bf_66 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_67 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.height)))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 r@66@0 AVLTreeNode.height) (ite$Int$ $@bf_68 (+ (ite$Int$ $@bf_66 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ $@bf_67 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 r@66@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ $@bf_66 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 r@66@0 AVLTreeNode.key))) (ite$Seq$Int$$ $@bf_67 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.keys))))
    (forall( (|kk#81_$3| Int))(= (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 r@66@0 AVLTreeNode.keys) |kk#81_$3|) (or (= |kk#81_$3| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 r@66@0 AVLTreeNode.key)) (or (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) |kk#81_$3|) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) null))) (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) |kk#81_$3|) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) null)))))))
    (IsGoodMask Mask@63)
    (not (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 r@66@0 AVLTreeNode.balanceFactor) (- 1)))
    (not (< 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 r@66@0 AVLTreeNode.balanceFactor)))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 r@66@0 AVLTreeNode.height)))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 r@66@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 r@66@0 AVLTreeNode.key))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 r@66@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 r@66@0 AVLTreeNode.keys))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 r@66@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 r@66@0 AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.keys))))
    (wf Heap@3 Mask@63 SecMask@123)
  )(and 
    anon248@1_assertion
    anon248@2
))))
(let ((anon823_Else (=> (and true
    (= Mask@55 Mask@57)
    (= Mask@55 Mask@59)
    (= Mask@55 Mask@61)
    (= Mask@55 Mask@63)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right))
    (not $@condition_$144)
    (not $@condition_$146)
    (not $@condition_$148)
    (not $@condition_$150)
    (not $@condition_$152)
    (not $@condition_$154)
  )
    anon248
)))
(let ((anon823_Then (=> (and true
    $@condition_$144
    $@condition_$146
    $@condition_$148
    $@condition_$150
    $@condition_$152
    $@condition_$154
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.height))
    (= Mask@56 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@55 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@55 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@55 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@56 Mask@57)
    (= Mask@58 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@56 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@56 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@56 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@58 Mask@59)
    (= Mask@60 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@58 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@58 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@58 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@60 Mask@61)
    (= Mask@62 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@60 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@60 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@60 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= Mask@62 Mask@63)
    (forall( (|rk#80#660| Int))(=> (and (< |rk#80#660| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 |rk#80#660|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 r@66@0 AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) |rk#80#660|))))
    (IsGoodMask Mask@56)
    (IsGoodMask Mask@58)
    (IsGoodMask Mask@60)
    (IsGoodMask Mask@62)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) null))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) AVLTreeNode.height)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right)))
    (wf Heap@3 Mask@55 SecMask@123)
    (wf Heap@3 Mask@56 SecMask@123)
    (wf Heap@3 Mask@58 SecMask@123)
    (wf Heap@3 Mask@60 SecMask@123)
    (wf Heap@3 Mask@62 SecMask@123)
  )
    anon248
)))
(let (($branchMerge_53 (=> (and true
  )
    (and anon823_Else anon823_Then)
)))
(let ((anon817_Else (=> (and true
    (= Mask@47 Mask@49)
    (= Mask@47 Mask@51)
    (= Mask@47 Mask@53)
    (= Mask@47 Mask@55)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left))
    (not $@condition_$133)
    (not $@condition_$134)
    (not $@condition_$136)
    (not $@condition_$138)
    (not $@condition_$140)
    (not $@condition_$142)
  )
    $branchMerge_53
)))
(let ((anon817_Then (=> (and true
    $@condition_$133
    $@condition_$134
    $@condition_$136
    $@condition_$138
    $@condition_$140
    $@condition_$142
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.height))
    (= Mask@48 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@47 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@47 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@47 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@48 Mask@49)
    (= Mask@50 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@48 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@48 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@48 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@50 Mask@51)
    (= Mask@52 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@50 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@50 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@50 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@52 Mask@53)
    (= Mask@54 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@52 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@52 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@52 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= Mask@54 Mask@55)
    (forall( (|lk#79#659| Int))(=> (and (< |lk#79#659| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 |lk#79#659|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) |lk#79#659|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 r@66@0 AVLTreeNode.key))))
    (IsGoodMask Mask@48)
    (IsGoodMask Mask@50)
    (IsGoodMask Mask@52)
    (IsGoodMask Mask@54)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) null))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) AVLTreeNode.height)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left)))
    (wf Heap@3 Mask@48 SecMask@123)
    (wf Heap@3 Mask@50 SecMask@123)
    (wf Heap@3 Mask@52 SecMask@123)
    (wf Heap@3 Mask@54 SecMask@123)
  )
    $branchMerge_53
)))
(let ((anon224 (=> (and true
    (= Mask@42 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@41 r@66@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@41 r@66@0 AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@41 r@66@0 AVLTreeNode.key) perm$R) (Fractions 100)))))
    (= Mask@43 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@42 r@66@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@42 r@66@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@42 r@66@0 AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@44 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@43 r@66@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@43 r@66@0 AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@43 r@66@0 AVLTreeNode.left) perm$R) (Fractions 100)))))
    (= Mask@45 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@44 r@66@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@44 r@66@0 AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@44 r@66@0 AVLTreeNode.right) perm$R) (Fractions 100)))))
    (= Mask@46 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@45 r@66@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@45 r@66@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@45 r@66@0 AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@47 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@46 r@66@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@46 r@66@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@46 r@66@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (IsGoodMask Mask@41)
    (IsGoodMask Mask@42)
    (IsGoodMask Mask@43)
    (IsGoodMask Mask@44)
    (IsGoodMask Mask@45)
    (IsGoodMask Mask@46)
    (IsGoodMask Mask@47)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 r@66@0 AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 r@66@0 AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@3 r@66@0 AVLTreeNode.key)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@3 r@66@0 AVLTreeNode.keys)))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.left)) AVLTreeNode@t))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@3 r@66@0 AVLTreeNode.right)) AVLTreeNode@t))
    (wf Heap@3 Mask@41 SecMask@123)
    (wf Heap@3 Mask@42 SecMask@123)
    (wf Heap@3 Mask@43 SecMask@123)
    (wf Heap@3 Mask@44 SecMask@123)
    (wf Heap@3 Mask@45 SecMask@123)
    (wf Heap@3 Mask@46 SecMask@123)
    (wf Heap@3 Mask@47 SecMask@123)
  )
    (and anon817_Else anon817_Then)
)))
(let ((anon816_Else (=> (and true
    (= Heap@1 Heap@3)
    (CanRead$Int$ Mask@41 SecMask@123 r@66@0 AVLTreeNode.valid)
    (not $@condition_$96)
  )
    anon224
)))
(let ((anon816_Then (=> (and true
    $@condition_$96
    (< oldVers@_2264@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@2 r@66@0 AVLTreeNode.valid))
    (= Heap@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 r@66@0 AVLTreeNode.valid newVers@_2265@0))
    (= Heap@2 Heap@3)
    (= oldVers@_2264@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 r@66@0 AVLTreeNode.valid))
    (not (= oldVers@_2264@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@2 r@66@0 AVLTreeNode.valid)))
    (not (CanRead$Int$ Mask@41 SecMask@123 r@66@0 AVLTreeNode.valid))
  )
    anon224
)))
(let (($branchMerge_37 (=> (and true
  )
    (and anon816_Else anon816_Then)
)))
(let ((anon221 (=> (and true
    (= SecMask@122 SecMask@123)
    (wf Heap@1 SecMask@122 SecMask@122)
  )
    $branchMerge_37
)))
(let ((anon789_Else (=> (and true
    (= SecMask@123 SecMask@72)
    (not $@condition_$94)
    (not (and (= predVer@_2192@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 r@66@0 AVLTreeNode.valid)) (= predRec@_2191@0 r@66@0)))
  )
    $branchMerge_37
)))
(let ((anon220 (=> (and true
    (= SecMask@121 SecMask@122)
    (wf Heap@1 Mask@41 SecMask@121)
    (wf Heap@1 SecMask@121 SecMask@121)
  )
    anon221
)))
(let ((anon814_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@118 SecMask@122)
    (not $@condition_$129)
  )
    anon221
)))
(let ((anon815_Else (=> (and true
    (= SecMask@119 SecMask@121)
    (not $@condition_$131)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@119 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon220
)))
(let ((anon815_Then (=> (and true
    $@condition_$131
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@119 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@120 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@119 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@119 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@120 SecMask@121)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@119 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)))
  )
    anon220
)))
(let ((anon814_Then (=> (and true
    $@condition_$129
    (= SecMask@119 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@118 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@118 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@118 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right)))
  )
    (and anon815_Else anon815_Then)
)))
(let (($branchMerge_47 (=> (and true
  )
    (and anon814_Else anon814_Then)
)))
(let ((anon216 (=> (and true
    (= SecMask@117 SecMask@118)
    (wf Heap@1 Mask@41 SecMask@117)
    (wf Heap@1 SecMask@117 SecMask@117)
  )
    $branchMerge_47
)))
(let ((anon812_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@114 SecMask@118)
    (not $@condition_$126)
  )
    $branchMerge_47
)))
(let ((anon813_Else (=> (and true
    (= SecMask@115 SecMask@117)
    (not $@condition_$128)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@115 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) 0))
  )
    anon216
)))
(let ((anon813_Then (=> (and true
    $@condition_$128
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@115 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) 0)
    (= SecMask@116 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@115 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@115 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R 0)))
    (= SecMask@116 SecMask@117)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@115 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R)))
  )
    anon216
)))
(let ((anon812_Then (=> (and true
    $@condition_$126
    (= SecMask@115 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@114 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@114 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@114 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right)))
  )
    (and anon813_Else anon813_Then)
)))
(let (($branchMerge_46 (=> (and true
  )
    (and anon812_Else anon812_Then)
)))
(let ((anon212 (=> (and true
    (= SecMask@113 SecMask@114)
    (wf Heap@1 Mask@41 SecMask@113)
    (wf Heap@1 SecMask@113 SecMask@113)
  )
    $branchMerge_46
)))
(let ((anon810_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@110 SecMask@114)
    (not $@condition_$123)
  )
    $branchMerge_46
)))
(let ((anon811_Else (=> (and true
    (= SecMask@111 SecMask@113)
    (not $@condition_$125)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@111 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) 0))
  )
    anon212
)))
(let ((anon811_Then (=> (and true
    $@condition_$125
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@111 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) 0)
    (= SecMask@112 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@111 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@111 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R 0)))
    (= SecMask@112 SecMask@113)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@111 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R)))
  )
    anon212
)))
(let ((anon810_Then (=> (and true
    $@condition_$123
    (= SecMask@111 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@110 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@110 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@110 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right)))
  )
    (and anon811_Else anon811_Then)
)))
(let (($branchMerge_45 (=> (and true
  )
    (and anon810_Else anon810_Then)
)))
(let ((anon208 (=> (and true
    (= SecMask@109 SecMask@110)
    (wf Heap@1 Mask@41 SecMask@109)
    (wf Heap@1 SecMask@109 SecMask@109)
  )
    $branchMerge_45
)))
(let ((anon808_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@106 SecMask@110)
    (not $@condition_$120)
  )
    $branchMerge_45
)))
(let ((anon809_Else (=> (and true
    (= SecMask@107 SecMask@109)
    (not $@condition_$122)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@107 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) 0))
  )
    anon208
)))
(let ((anon809_Then (=> (and true
    $@condition_$122
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@107 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) 0)
    (= SecMask@108 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@107 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@107 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R 0)))
    (= SecMask@108 SecMask@109)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@107 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R)))
  )
    anon208
)))
(let ((anon808_Then (=> (and true
    $@condition_$120
    (= SecMask@107 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@106 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@106 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@106 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right)))
  )
    (and anon809_Else anon809_Then)
)))
(let (($branchMerge_44 (=> (and true
  )
    (and anon808_Else anon808_Then)
)))
(let ((anon204 (=> (and true
    (= SecMask@105 SecMask@106)
    (wf Heap@1 Mask@41 SecMask@105)
    (wf Heap@1 SecMask@105 SecMask@105)
  )
    $branchMerge_44
)))
(let ((anon806_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@102 SecMask@106)
    (not $@condition_$117)
  )
    $branchMerge_44
)))
(let ((anon807_Else (=> (and true
    (= SecMask@103 SecMask@105)
    (not $@condition_$119)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@103 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon204
)))
(let ((anon807_Then (=> (and true
    $@condition_$119
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@103 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@104 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@103 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@103 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@104 SecMask@105)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@103 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)))
  )
    anon204
)))
(let ((anon806_Then (=> (and true
    $@condition_$117
    (= SecMask@103 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@102 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@102 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@102 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon807_Else anon807_Then)
)))
(let (($branchMerge_43 (=> (and true
  )
    (and anon806_Else anon806_Then)
)))
(let ((anon200 (=> (and true
    (= SecMask@101 SecMask@102)
    (wf Heap@1 Mask@41 SecMask@101)
    (wf Heap@1 SecMask@101 SecMask@101)
  )
    $branchMerge_43
)))
(let ((anon804_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@102 SecMask@98)
    (not $@condition_$114)
  )
    $branchMerge_43
)))
(let ((anon805_Else (=> (and true
    (= SecMask@101 SecMask@99)
    (not $@condition_$116)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@101 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) 0))
  )
    anon200
)))
(let ((anon805_Then (=> (and true
    $@condition_$116
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@99 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) 0)
    (= SecMask@100 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@99 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@99 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R 0)))
    (= SecMask@100 SecMask@101)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@99 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R)))
  )
    anon200
)))
(let ((anon804_Then (=> (and true
    $@condition_$114
    (= SecMask@99 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@98 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@98 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@98 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon805_Else anon805_Then)
)))
(let (($branchMerge_42 (=> (and true
  )
    (and anon804_Else anon804_Then)
)))
(let ((anon196 (=> (and true
    (= SecMask@97 SecMask@98)
    (wf Heap@1 Mask@41 SecMask@97)
    (wf Heap@1 SecMask@97 SecMask@97)
  )
    $branchMerge_42
)))
(let ((anon802_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@94 SecMask@98)
    (not $@condition_$111)
  )
    $branchMerge_42
)))
(let ((anon803_Else (=> (and true
    (= SecMask@95 SecMask@97)
    (not $@condition_$113)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@95 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) 0))
  )
    anon196
)))
(let ((anon803_Then (=> (and true
    $@condition_$113
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@95 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) 0)
    (= SecMask@96 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@95 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@95 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R 0)))
    (= SecMask@96 SecMask@97)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@95 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R)))
  )
    anon196
)))
(let ((anon802_Then (=> (and true
    $@condition_$111
    (= SecMask@95 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@94 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@94 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@94 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon803_Else anon803_Then)
)))
(let (($branchMerge_41 (=> (and true
  )
    (and anon802_Else anon802_Then)
)))
(let ((anon192 (=> (and true
    (= SecMask@93 SecMask@94)
    (wf Heap@1 Mask@41 SecMask@93)
    (wf Heap@1 SecMask@93 SecMask@93)
  )
    $branchMerge_41
)))
(let ((anon800_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@90 SecMask@94)
    (not $@condition_$109)
  )
    $branchMerge_41
)))
(let ((anon801_Else (=> (and true
    (= SecMask@91 SecMask@93)
    (not $@condition_$110)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@91 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) 0))
  )
    anon192
)))
(let ((anon801_Then (=> (and true
    $@condition_$110
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@91 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) 0)
    (= SecMask@92 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@91 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@91 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R 0)))
    (= SecMask@92 SecMask@93)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@91 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R)))
  )
    anon192
)))
(let ((anon800_Then (=> (and true
    $@condition_$109
    (= SecMask@91 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@90 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@90 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@90 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon801_Else anon801_Then)
)))
(let ((anon189 (=> (and true
    (wf Heap@1 Mask@41 SecMask@90)
    (wf Heap@1 SecMask@90 SecMask@90)
  )
    (and anon800_Else anon800_Then)
)))
(let ((anon799_Else (=> (and true
    (= SecMask@88 SecMask@90)
    (not $@condition_$108)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@88 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon189
)))
(let ((anon799_Then (=> (and true
    $@condition_$108
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@88 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@89 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@88 predRec@_2191@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@88 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@89 SecMask@90)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@88 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R)))
  )
    anon189
)))
(let ((anon187 (=> (and true
    (= SecMask@88 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@87 predRec@_2191@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@87 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@87 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@1 Mask@41 SecMask@87)
    (wf Heap@1 SecMask@87 SecMask@87)
  )
    (and anon799_Else anon799_Then)
)))
(let ((anon798_Else (=> (and true
    (= SecMask@85 SecMask@87)
    (not $@condition_$107)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@85 predRec@_2191@0 AVLTreeNode.keys) perm$R) 0))
  )
    anon187
)))
(let ((anon798_Then (=> (and true
    $@condition_$107
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@85 predRec@_2191@0 AVLTreeNode.keys) perm$R) 0)
    (= SecMask@86 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@85 predRec@_2191@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@85 predRec@_2191@0 AVLTreeNode.keys) perm$R 0)))
    (= SecMask@86 SecMask@87)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@85 predRec@_2191@0 AVLTreeNode.keys) perm$R)))
  )
    anon187
)))
(let ((anon185 (=> (and true
    (= SecMask@85 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@84 predRec@_2191@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@84 predRec@_2191@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@84 predRec@_2191@0 AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@1 Mask@41 SecMask@84)
    (wf Heap@1 SecMask@84 SecMask@84)
  )
    (and anon798_Else anon798_Then)
)))
(let ((anon797_Else (=> (and true
    (= SecMask@82 SecMask@84)
    (not $@condition_$106)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@82 predRec@_2191@0 AVLTreeNode.right) perm$R) 0))
  )
    anon185
)))
(let ((anon797_Then (=> (and true
    $@condition_$106
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@82 predRec@_2191@0 AVLTreeNode.right) perm$R) 0)
    (= SecMask@83 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@82 predRec@_2191@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@82 predRec@_2191@0 AVLTreeNode.right) perm$R 0)))
    (= SecMask@83 SecMask@84)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@82 predRec@_2191@0 AVLTreeNode.right) perm$R)))
  )
    anon185
)))
(let ((anon183 (=> (and true
    (= SecMask@82 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@81 predRec@_2191@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@81 predRec@_2191@0 AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@81 predRec@_2191@0 AVLTreeNode.right) perm$R) (* (- 1) (Fractions 100))))))
    (wf Heap@1 Mask@41 SecMask@81)
    (wf Heap@1 SecMask@81 SecMask@81)
  )
    (and anon797_Else anon797_Then)
)))
(let ((anon796_Else (=> (and true
    (= SecMask@79 SecMask@81)
    (not $@condition_$105)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@79 predRec@_2191@0 AVLTreeNode.left) perm$R) 0))
  )
    anon183
)))
(let ((anon796_Then (=> (and true
    $@condition_$105
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@79 predRec@_2191@0 AVLTreeNode.left) perm$R) 0)
    (= SecMask@80 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@79 predRec@_2191@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@79 predRec@_2191@0 AVLTreeNode.left) perm$R 0)))
    (= SecMask@80 SecMask@81)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@79 predRec@_2191@0 AVLTreeNode.left) perm$R)))
  )
    anon183
)))
(let ((anon181 (=> (and true
    (= SecMask@79 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@78 predRec@_2191@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@78 predRec@_2191@0 AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@78 predRec@_2191@0 AVLTreeNode.left) perm$R) (* (- 1) (Fractions 100))))))
    (wf Heap@1 Mask@41 SecMask@78)
    (wf Heap@1 SecMask@78 SecMask@78)
  )
    (and anon796_Else anon796_Then)
)))
(let ((anon795_Else (=> (and true
    (= SecMask@76 SecMask@78)
    (not $@condition_$104)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@76 predRec@_2191@0 AVLTreeNode.height) perm$R) 0))
  )
    anon181
)))
(let ((anon795_Then (=> (and true
    $@condition_$104
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@76 predRec@_2191@0 AVLTreeNode.height) perm$R) 0)
    (= SecMask@77 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@76 predRec@_2191@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@76 predRec@_2191@0 AVLTreeNode.height) perm$R 0)))
    (= SecMask@77 SecMask@78)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@76 predRec@_2191@0 AVLTreeNode.height) perm$R)))
  )
    anon181
)))
(let ((anon179 (=> (and true
    (= SecMask@76 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@75 predRec@_2191@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@75 predRec@_2191@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@75 predRec@_2191@0 AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap@1 Mask@41 SecMask@75)
    (wf Heap@1 SecMask@75 SecMask@75)
  )
    (and anon795_Else anon795_Then)
)))
(let ((anon794_Else (=> (and true
    (= SecMask@73 SecMask@75)
    (not $@condition_$103)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@73 predRec@_2191@0 AVLTreeNode.key) perm$R) 0))
  )
    anon179
)))
(let ((anon794_Then (=> (and true
    $@condition_$103
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@73 predRec@_2191@0 AVLTreeNode.key) perm$R) 0)
    (= SecMask@74 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@73 predRec@_2191@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@73 predRec@_2191@0 AVLTreeNode.key) perm$R 0)))
    (= SecMask@74 SecMask@75)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@73 predRec@_2191@0 AVLTreeNode.key) perm$R)))
  )
    anon179
)))
(let ((anon177 (=> (and true
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 predRec@_2191@0 AVLTreeNode.height))
    (= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.right) AVLTreeNode.height))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 r@66@0 AVLTreeNode.balanceFactor))
    (= (= true $@bf_63) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.left)))
    (= (= true $@bf_64) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.right)))
    (= (= true $@bf_65) (< (ite$Int$ $@bf_64 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.right) AVLTreeNode.height)) (ite$Int$ $@bf_63 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.left) AVLTreeNode.height))))
    (= (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.right) AVLTreeNode.height)) 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 r@66@0 AVLTreeNode.height))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 predRec@_2191@0 AVLTreeNode.balanceFactor) (+ (ite$Int$ $@bf_63 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_64 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 predRec@_2191@0 AVLTreeNode.height) (ite$Int$ $@bf_65 (+ (ite$Int$ $@bf_63 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ $@bf_64 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 predRec@_2191@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ $@bf_63 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 predRec@_2191@0 AVLTreeNode.key))) (ite$Seq$Int$$ $@bf_64 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys))))
    (= SecMask@73 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@72 predRec@_2191@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@72 predRec@_2191@0 AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@72 predRec@_2191@0 AVLTreeNode.key) perm$R) (* (- 1) (Fractions 100))))))
    (forall( (|kk#81_$2| Int))(= (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 r@66@0 AVLTreeNode.keys) |kk#81_$2|) (or (= |kk#81_$2| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 r@66@0 AVLTreeNode.key)) (or (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) |kk#81_$2|) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) null))) (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) |kk#81_$2|) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) null)))))))
    (not (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 predRec@_2191@0 AVLTreeNode.balanceFactor) (- 1)))
    (not (< 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 predRec@_2191@0 AVLTreeNode.balanceFactor)))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 predRec@_2191@0 AVLTreeNode.height)))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 predRec@_2191@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 predRec@_2191@0 AVLTreeNode.key))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 predRec@_2191@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 predRec@_2191@0 AVLTreeNode.keys))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 r@66@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 r@66@0 AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.right) AVLTreeNode.keys))))
  )
    (and anon794_Else anon794_Then)
)))
(let ((anon792_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right))
    (not $@condition_$101)
    (not $@condition_$99)
  )
    anon177
)))
(let ((anon792_Then (=> (and true
    $@condition_$101
    $@condition_$99
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height))
    (forall( (|rk#80#656| Int))(=> (and (< |rk#80#656| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 |rk#80#656|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 r@66@0 AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.right) AVLTreeNode.keys) |rk#80#656|))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) null))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.right)))
  )
    anon177
)))
(let (($branchMerge_39 (=> (and true
  )
    (and anon792_Else anon792_Then)
)))
(let ((anon790_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left))
    (not $@condition_$95)
    (not $@condition_$97)
  )
    $branchMerge_39
)))
(let ((anon790_Then (=> (and true
    $@condition_$95
    $@condition_$97
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height))
    (forall( (|lk#79#655| Int))(=> (and (< |lk#79#655| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 |lk#79#655|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 r@66@0 AVLTreeNode.left) AVLTreeNode.keys) |lk#79#655|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 r@66@0 AVLTreeNode.key))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) null))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 predRec@_2191@0 AVLTreeNode.left)))
  )
    $branchMerge_39
)))
(let ((anon789_Then (=> (and true
    $@condition_$94
    (= predRec@_2191@0 r@66@0)
    (= predVer@_2192@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 predRec@_2191@0 AVLTreeNode.valid))
  )
    (and anon790_Else anon790_Then)
)))
(let ((anon168@16 (=> (and true
    (= Mask@41 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@40 r@66@0 AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@40 r@66@0 AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@40 r@66@0 AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@40 r@66@0 AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@40 r@66@0 AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@40 r@66@0 AVLTreeNode.valid) perm$R) (Fractions 100)))
  )
    (and anon789_Else anon789_Then)
)))
(let ((anon168@14 (=> (and true
    (not (= null r@66@0))
    (not (= r@66@0 null))
  )(and 
    anon168@15_assertion
    anon168@16
))))
(let ((anon168@13 (=> (and true
    ($@AVLTreeNode.valid@trigger r@66@0)
    (< (* 1000 unfoldK@_2244) methodK@_2144)
    (< 0 unfoldK@_2244)
    (< unfoldK@_2244 (Fractions 1))
    (forall( (|k#99#652| Int))(=> (and (< |k#99#652| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 r@66@0 AVLTreeNode.keys))) (<= 0 |k#99#652|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 r@66@0 AVLTreeNode.keys) |k#99#652|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 this AVLTreeNode.key))))
    (IsGoodExhaleState exhaleHeap@_2242@0 Heap@1 Mask@40 SecMask@72)
    (not (= (Fractions 1) unfoldK@_2244))
    (not (= 0 unfoldK@_2244))
    (not (= methodK@_2144 (* 1000 unfoldK@_2244)))
    (wf exhaleHeap@_2242@0 Mask@40 SecMask@72)
  )(and 
    anon168@13_assertion
    anon168@14
))))
(let ((anon168@12 (=> (and true
    (=> (and (< k@99@653 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 r@66@0 AVLTreeNode.keys))) (<= 0 k@99@653)) (CanRead$Int$ Mask@40 SecMask@72 this AVLTreeNode.key))
  )(and 
    anon168@12_assertion
    anon168@13
))))
(let ((anon168@8 (=> (and true
    (=> (and (< k@99@653 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 r@66@0 AVLTreeNode.keys))) (<= 0 k@99@653)) (< k@99@653 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 r@66@0 AVLTreeNode.keys))))
    (=> (and (< k@99@653 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 r@66@0 AVLTreeNode.keys))) (<= 0 k@99@653)) (<= 0 k@99@653))
    (=> (and (< k@99@653 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 r@66@0 AVLTreeNode.keys))) (<= 0 k@99@653)) (CanRead$Seq$Int$$ Mask@40 SecMask@72 r@66@0 AVLTreeNode.keys))
  )(and 
    anon168@11_assertion
    anon168@12
))))
(let ((anon168@7 (=> (and true
    (=> (and (< k@99@653 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 r@66@0 AVLTreeNode.keys))) (<= 0 k@99@653)) (not (= r@66@0 null)))
  )(and 
    anon168@7_assertion
    anon168@8
))))
(let ((anon168@6 (=> (and true
    (=> (<= 0 k@99@653) (CanRead$Seq$Int$$ Mask@40 SecMask@72 r@66@0 AVLTreeNode.keys))
  )(and 
    anon168@6_assertion
    anon168@7
))))
(let ((anon168@5 (=> (and true
    (=> (<= 0 k@99@653) (not (= r@66@0 null)))
  )(and 
    anon168@5_assertion
    anon168@6
))))
(let ((anon168@4 (=> (and true
    (= r@66@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right))
    (CanRead$ref$ Mask@40 SecMask@72 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right)
  )(and 
    anon168@4_assertion
    anon168@5
))))
(let ((anon168@2 (=> (and true
    (CanRead$ref$ Mask@40 SecMask@72 this AVLTreeNode.left)
  )(and 
    anon168@3_assertion
    anon168@4
))))
(let ((anon168 (=> (and true
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height))
    (= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor))
    (= (= true $@bf_60) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left)))
    (= (= true $@bf_61) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right)))
    (= (= true $@bf_62) (< (ite$Int$ $@bf_61 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height)) (ite$Int$ $@bf_60 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height))))
    (= (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height)) 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) (+ (ite$Int$ $@bf_60 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_61 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height)))))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) (ite$Int$ $@bf_62 (+ (ite$Int$ $@bf_60 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ $@bf_61 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ $@bf_60 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.key))) (ite$Seq$Int$$ $@bf_61 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys))))
    (forall( (|kk#81_$1| Int))(= (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) |kk#81_$1|) (or (= |kk#81_$1| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.key)) (or (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys) |kk#81_$1|) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null))) (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys) |kk#81_$1|) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null)))))))
    (IsGoodMask Mask@40)
    (not (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) (- 1)))
    (not (< 1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor)))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.key))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys))))
    (wf Heap@1 Mask@40 SecMask@72)
  )(and 
    anon168@1_assertion
    anon168@2
))))
(let ((anon783_Else (=> (and true
    (= Mask@32 Mask@34)
    (= Mask@32 Mask@36)
    (= Mask@32 Mask@38)
    (= Mask@32 Mask@40)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right))
    (not $@condition_$82)
    (not $@condition_$84)
    (not $@condition_$86)
    (not $@condition_$88)
    (not $@condition_$90)
    (not $@condition_$92)
  )
    anon168
)))
(let ((anon783_Then (=> (and true
    $@condition_$82
    $@condition_$84
    $@condition_$86
    $@condition_$88
    $@condition_$90
    $@condition_$92
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height))
    (= Mask@33 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@32 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@32 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@32 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@33 Mask@34)
    (= Mask@35 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@33 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@33 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@33 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@35 Mask@36)
    (= Mask@37 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@35 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@35 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@35 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@37 Mask@38)
    (= Mask@39 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@37 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@37 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@37 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= Mask@39 Mask@40)
    (forall( (|rk#80#651| Int))(=> (and (< |rk#80#651| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 |rk#80#651|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys) |rk#80#651|))))
    (IsGoodMask Mask@33)
    (IsGoodMask Mask@35)
    (IsGoodMask Mask@37)
    (IsGoodMask Mask@39)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right)))
    (wf Heap@1 Mask@32 SecMask@72)
    (wf Heap@1 Mask@33 SecMask@72)
    (wf Heap@1 Mask@35 SecMask@72)
    (wf Heap@1 Mask@37 SecMask@72)
    (wf Heap@1 Mask@39 SecMask@72)
  )
    anon168
)))
(let (($branchMerge_31 (=> (and true
  )
    (and anon783_Else anon783_Then)
)))
(let ((anon777_Else (=> (and true
    (= Mask@24 Mask@26)
    (= Mask@24 Mask@28)
    (= Mask@24 Mask@30)
    (= Mask@24 Mask@32)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left))
    (not $@condition_$71)
    (not $@condition_$72)
    (not $@condition_$74)
    (not $@condition_$76)
    (not $@condition_$78)
    (not $@condition_$80)
  )
    $branchMerge_31
)))
(let ((anon777_Then (=> (and true
    $@condition_$71
    $@condition_$72
    $@condition_$74
    $@condition_$76
    $@condition_$78
    $@condition_$80
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height))
    (= Mask@25 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@24 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@24 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@24 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@25 Mask@26)
    (= Mask@27 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@25 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@25 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@25 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@27 Mask@28)
    (= Mask@29 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@27 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@27 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@27 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@29 Mask@30)
    (= Mask@31 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@29 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@29 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@29 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= Mask@31 Mask@32)
    (forall( (|lk#79#650| Int))(=> (and (< |lk#79#650| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 |lk#79#650|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys) |lk#79#650|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.key))))
    (IsGoodMask Mask@25)
    (IsGoodMask Mask@27)
    (IsGoodMask Mask@29)
    (IsGoodMask Mask@31)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left)))
    (wf Heap@1 Mask@25 SecMask@72)
    (wf Heap@1 Mask@27 SecMask@72)
    (wf Heap@1 Mask@29 SecMask@72)
    (wf Heap@1 Mask@31 SecMask@72)
  )
    $branchMerge_31
)))
(let ((anon144 (=> (and true
    (= Mask@19 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.key) perm$R) (Fractions 100)))))
    (= Mask@20 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@19 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@21 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@20 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) perm$R) (Fractions 100)))))
    (= Mask@22 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ Mask@21 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) perm$R) (Fractions 100)))))
    (= Mask@23 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@22 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@24 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@23 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@23 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@23 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (IsGoodMask Mask@18)
    (IsGoodMask Mask@19)
    (IsGoodMask Mask@20)
    (IsGoodMask Mask@21)
    (IsGoodMask Mask@22)
    (IsGoodMask Mask@23)
    (IsGoodMask Mask@24)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.key)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left)))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.left)) AVLTreeNode@t))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@1 this AVLTreeNode.left) AVLTreeNode.right)) AVLTreeNode@t))
    (wf Heap@1 Mask@18 SecMask@72)
    (wf Heap@1 Mask@19 SecMask@72)
    (wf Heap@1 Mask@20 SecMask@72)
    (wf Heap@1 Mask@21 SecMask@72)
    (wf Heap@1 Mask@22 SecMask@72)
    (wf Heap@1 Mask@23 SecMask@72)
    (wf Heap@1 Mask@24 SecMask@72)
  )
    (and anon777_Else anon777_Then)
)))
(let ((anon776_Else (=> (and true
    (= Heap Heap@1)
    (CanRead$Int$ Mask@18 SecMask@72 predRec@_2191@0 AVLTreeNode.valid)
    (not $@condition_$34)
  )
    anon144
)))
(let ((anon776_Then (=> (and true
    $@condition_$34
    (< oldVers@_2236@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this AVLTreeNode.left) AVLTreeNode.valid))
    (= Heap@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap predRec@_2191@0 AVLTreeNode.valid newVers@_2237@0))
    (= Heap@0 Heap@1)
    (= oldVers@_2236@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap predRec@_2191@0 AVLTreeNode.valid))
    (not (= oldVers@_2236@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap@0 this AVLTreeNode.left) AVLTreeNode.valid)))
    (not (CanRead$Int$ Mask@18 SecMask@72 predRec@_2191@0 AVLTreeNode.valid))
  )
    anon144
)))
(let ((anon140 (=> (and true
    (= SecMask@70 SecMask@71)
    (= SecMask@70 SecMask@72)
    (wf Heap Mask@18 SecMask@70)
    (wf Heap SecMask@70 SecMask@70)
  )
    (and anon776_Else anon776_Then)
)))
(let ((anon775_Else (=> (and true
    (= SecMask@68 SecMask@70)
    (not $@condition_$69)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@68 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon140
)))
(let ((anon775_Then (=> (and true
    $@condition_$69
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@68 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@69 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@68 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@68 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@69 SecMask@70)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@68 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R)))
  )
    anon140
)))
(let ((anon136 (=> (and true
    $@condition_$67
    (= SecMask@66 SecMask@67)
    (= SecMask@68 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@66 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@66 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@66 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap Mask@18 SecMask@66)
    (wf Heap SecMask@66 SecMask@66)
  )
    (and anon775_Else anon775_Then)
)))
(let ((anon773_Else (=> (and true
    (= SecMask@64 SecMask@66)
    (not $@condition_$66)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@64 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) 0))
  )
    anon136
)))
(let ((anon773_Then (=> (and true
    $@condition_$66
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@64 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) 0)
    (= SecMask@65 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@64 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@64 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R 0)))
    (= SecMask@65 SecMask@66)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@64 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R)))
  )
    anon136
)))
(let ((anon132 (=> (and true
    $@condition_$64
    (= SecMask@62 SecMask@63)
    (= SecMask@64 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@62 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@62 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@62 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap Mask@18 SecMask@62)
    (wf Heap SecMask@62 SecMask@62)
  )
    (and anon773_Else anon773_Then)
)))
(let ((anon771_Else (=> (and true
    (= SecMask@60 SecMask@62)
    (not $@condition_$63)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@60 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) 0))
  )
    anon132
)))
(let ((anon771_Then (=> (and true
    $@condition_$63
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@60 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) 0)
    (= SecMask@61 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@60 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@60 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R 0)))
    (= SecMask@61 SecMask@62)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@60 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R)))
  )
    anon132
)))
(let ((anon128 (=> (and true
    $@condition_$61
    (= SecMask@58 SecMask@59)
    (= SecMask@60 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@58 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@58 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@58 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap Mask@18 SecMask@58)
    (wf Heap SecMask@58 SecMask@58)
  )
    (and anon771_Else anon771_Then)
)))
(let ((anon769_Else (=> (and true
    (= SecMask@56 SecMask@58)
    (not $@condition_$60)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@56 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) 0))
  )
    anon128
)))
(let ((anon769_Then (=> (and true
    $@condition_$60
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@56 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) 0)
    (= SecMask@57 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@56 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@56 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R 0)))
    (= SecMask@57 SecMask@58)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@56 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R)))
  )
    anon128
)))
(let (($branchMerge_22 (=> (and true
    $@condition_$58
    (= SecMask@56 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@55 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@55 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@55 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
  )
    (and anon769_Else anon769_Then)
)))
(let ((anon124 (=> (and true
    (= SecMask@54 SecMask@55)
    (wf Heap Mask@18 SecMask@54)
    (wf Heap SecMask@54 SecMask@54)
  )
    $branchMerge_22
)))
(let ((anon766_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@51 SecMask@55)
    (not $@condition_$55)
  )
    $branchMerge_22
)))
(let ((anon767_Else (=> (and true
    (= SecMask@52 SecMask@54)
    (not $@condition_$57)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@52 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon124
)))
(let ((anon767_Then (=> (and true
    $@condition_$57
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@52 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@53 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@52 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@52 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@53 SecMask@54)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@52 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R)))
  )
    anon124
)))
(let ((anon766_Then (=> (and true
    $@condition_$55
    (= SecMask@52 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@51 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@51 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@51 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon767_Else anon767_Then)
)))
(let (($branchMerge_21 (=> (and true
  )
    (and anon766_Else anon766_Then)
)))
(let ((anon120 (=> (and true
    (= SecMask@50 SecMask@51)
    (wf Heap Mask@18 SecMask@50)
    (wf Heap SecMask@50 SecMask@50)
  )
    $branchMerge_21
)))
(let ((anon764_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@47 SecMask@51)
    (not $@condition_$52)
  )
    $branchMerge_21
)))
(let ((anon765_Else (=> (and true
    (= SecMask@48 SecMask@50)
    (not $@condition_$54)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@48 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) 0))
  )
    anon120
)))
(let ((anon765_Then (=> (and true
    $@condition_$54
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@48 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) 0)
    (= SecMask@49 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@48 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@48 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R 0)))
    (= SecMask@49 SecMask@50)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@48 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R)))
  )
    anon120
)))
(let ((anon764_Then (=> (and true
    $@condition_$52
    (= SecMask@48 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@47 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@47 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@47 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon765_Else anon765_Then)
)))
(let (($branchMerge_20 (=> (and true
  )
    (and anon764_Else anon764_Then)
)))
(let ((anon116 (=> (and true
    (= SecMask@46 SecMask@47)
    (wf Heap Mask@18 SecMask@46)
    (wf Heap SecMask@46 SecMask@46)
  )
    $branchMerge_20
)))
(let ((anon762_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@43 SecMask@47)
    (not $@condition_$49)
  )
    $branchMerge_20
)))
(let ((anon763_Else (=> (and true
    (= SecMask@44 SecMask@46)
    (not $@condition_$51)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@44 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) 0))
  )
    anon116
)))
(let ((anon763_Then (=> (and true
    $@condition_$51
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@44 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) 0)
    (= SecMask@45 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@44 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@44 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R 0)))
    (= SecMask@45 SecMask@46)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@44 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R)))
  )
    anon116
)))
(let ((anon762_Then (=> (and true
    $@condition_$49
    (= SecMask@44 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@43 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@43 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@43 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon763_Else anon763_Then)
)))
(let (($branchMerge_19 (=> (and true
  )
    (and anon762_Else anon762_Then)
)))
(let ((anon112 (=> (and true
    (= SecMask@42 SecMask@43)
    (wf Heap Mask@18 SecMask@42)
    (wf Heap SecMask@42 SecMask@42)
  )
    $branchMerge_19
)))
(let ((anon760_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@39 SecMask@43)
    (not $@condition_$47)
  )
    $branchMerge_19
)))
(let ((anon761_Else (=> (and true
    (= SecMask@40 SecMask@42)
    (not $@condition_$48)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@40 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) 0))
  )
    anon112
)))
(let ((anon761_Then (=> (and true
    $@condition_$48
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@40 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) 0)
    (= SecMask@41 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@40 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@40 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R 0)))
    (= SecMask@41 SecMask@42)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@40 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R)))
  )
    anon112
)))
(let ((anon760_Then (=> (and true
    $@condition_$47
    (= SecMask@40 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@39 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@39 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@39 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) null))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left)))
  )
    (and anon761_Else anon761_Then)
)))
(let ((anon109 (=> (and true
    (wf Heap Mask@18 SecMask@39)
    (wf Heap SecMask@39 SecMask@39)
  )
    (and anon760_Else anon760_Then)
)))
(let ((anon759_Else (=> (and true
    (= SecMask@37 SecMask@39)
    (not $@condition_$46)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@37 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R) 0))
  )
    anon109
)))
(let ((anon759_Then (=> (and true
    $@condition_$46
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@37 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R) 0)
    (= SecMask@38 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@37 predRec@_2191@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@37 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R 0)))
    (= SecMask@38 SecMask@39)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@37 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R)))
  )
    anon109
)))
(let ((anon107 (=> (and true
    (= SecMask@37 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@36 predRec@_2191@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@36 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@36 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap Mask@18 SecMask@36)
    (wf Heap SecMask@36 SecMask@36)
  )
    (and anon759_Else anon759_Then)
)))
(let ((anon758_Else (=> (and true
    (= SecMask@34 SecMask@36)
    (not $@condition_$45)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@34 predRec@_2191@0 AVLTreeNode.keys) perm$R) 0))
  )
    anon107
)))
(let ((anon758_Then (=> (and true
    $@condition_$45
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@34 predRec@_2191@0 AVLTreeNode.keys) perm$R) 0)
    (= SecMask@35 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@34 predRec@_2191@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@34 predRec@_2191@0 AVLTreeNode.keys) perm$R 0)))
    (= SecMask@35 SecMask@36)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@34 predRec@_2191@0 AVLTreeNode.keys) perm$R)))
  )
    anon107
)))
(let ((anon105 (=> (and true
    (= SecMask@34 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@33 predRec@_2191@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@33 predRec@_2191@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@33 predRec@_2191@0 AVLTreeNode.keys) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap Mask@18 SecMask@33)
    (wf Heap SecMask@33 SecMask@33)
  )
    (and anon758_Else anon758_Then)
)))
(let ((anon757_Else (=> (and true
    (= SecMask@31 SecMask@33)
    (not $@condition_$44)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@31 predRec@_2191@0 AVLTreeNode.right) perm$R) 0))
  )
    anon105
)))
(let ((anon757_Then (=> (and true
    $@condition_$44
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@31 predRec@_2191@0 AVLTreeNode.right) perm$R) 0)
    (= SecMask@32 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@31 predRec@_2191@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@31 predRec@_2191@0 AVLTreeNode.right) perm$R 0)))
    (= SecMask@32 SecMask@33)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@31 predRec@_2191@0 AVLTreeNode.right) perm$R)))
  )
    anon105
)))
(let ((anon103 (=> (and true
    (= SecMask@31 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@30 predRec@_2191@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@30 predRec@_2191@0 AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@30 predRec@_2191@0 AVLTreeNode.right) perm$R) (* (- 1) (Fractions 100))))))
    (wf Heap Mask@18 SecMask@30)
    (wf Heap SecMask@30 SecMask@30)
  )
    (and anon757_Else anon757_Then)
)))
(let ((anon756_Else (=> (and true
    (= SecMask@28 SecMask@30)
    (not $@condition_$43)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@28 predRec@_2191@0 AVLTreeNode.left) perm$R) 0))
  )
    anon103
)))
(let ((anon756_Then (=> (and true
    $@condition_$43
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@28 predRec@_2191@0 AVLTreeNode.left) perm$R) 0)
    (= SecMask@29 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@28 predRec@_2191@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@28 predRec@_2191@0 AVLTreeNode.left) perm$R 0)))
    (= SecMask@29 SecMask@30)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@28 predRec@_2191@0 AVLTreeNode.left) perm$R)))
  )
    anon103
)))
(let ((anon101 (=> (and true
    (= SecMask@28 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@27 predRec@_2191@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@27 predRec@_2191@0 AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@27 predRec@_2191@0 AVLTreeNode.left) perm$R) (* (- 1) (Fractions 100))))))
    (wf Heap Mask@18 SecMask@27)
    (wf Heap SecMask@27 SecMask@27)
  )
    (and anon756_Else anon756_Then)
)))
(let ((anon755_Else (=> (and true
    (= SecMask@25 SecMask@27)
    (not $@condition_$42)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@25 predRec@_2191@0 AVLTreeNode.height) perm$R) 0))
  )
    anon101
)))
(let ((anon755_Then (=> (and true
    $@condition_$42
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@25 predRec@_2191@0 AVLTreeNode.height) perm$R) 0)
    (= SecMask@26 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@25 predRec@_2191@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@25 predRec@_2191@0 AVLTreeNode.height) perm$R 0)))
    (= SecMask@26 SecMask@27)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@25 predRec@_2191@0 AVLTreeNode.height) perm$R)))
  )
    anon101
)))
(let ((anon99 (=> (and true
    (= SecMask@25 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@24 predRec@_2191@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@24 predRec@_2191@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@24 predRec@_2191@0 AVLTreeNode.height) perm$R) (* (- 1) (Fractions 50))))))
    (wf Heap Mask@18 SecMask@24)
    (wf Heap SecMask@24 SecMask@24)
  )
    (and anon755_Else anon755_Then)
)))
(let ((anon754_Else (=> (and true
    (= SecMask@22 SecMask@24)
    (not $@condition_$41)
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@22 predRec@_2191@0 AVLTreeNode.key) perm$R) 0))
  )
    anon99
)))
(let ((anon754_Then (=> (and true
    $@condition_$41
    (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@22 predRec@_2191@0 AVLTreeNode.key) perm$R) 0)
    (= SecMask@23 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@22 predRec@_2191@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@22 predRec@_2191@0 AVLTreeNode.key) perm$R 0)))
    (= SecMask@23 SecMask@24)
    (not (= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@22 predRec@_2191@0 AVLTreeNode.key) perm$R)))
  )
    anon99
)))
(let (($branchMerge_17 (=> (and true
    $@condition_$37
    $@condition_$39
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height))
    (= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.balanceFactor))
    (= (- 1) (+ (ite$Int$ $@bf_57 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_58 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)))))
    (= (= true $@bf_57) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.left)))
    (= (= true $@bf_58) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.right)))
    (= (= true $@bf_59) (< (ite$Int$ $@bf_58 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height)) (ite$Int$ $@bf_57 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height))))
    (= (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.height)) 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.height))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap predRec@_2191@0 AVLTreeNode.height) (ite$Int$ $@bf_59 (+ (ite$Int$ $@bf_57 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ $@bf_58 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap predRec@_2191@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ $@bf_57 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap predRec@_2191@0 AVLTreeNode.key))) (ite$Seq$Int$$ $@bf_58 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys))))
    (= SecMask@22 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask predRec@_2191@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask predRec@_2191@0 AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask predRec@_2191@0 AVLTreeNode.key) perm$R) (* (- 1) (Fractions 100))))))
    (forall( (|kk#81_$0| Int))(= (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.keys) |kk#81_$0|) (or (or (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys) |kk#81_$0|) (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys) |kk#81_$0|) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) null)))) (= |kk#81_$0| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.key)))))
    (forall( (|rk#80#647| Int))(=> (and (< |rk#80#647| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 |rk#80#647|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys) |rk#80#647|))))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.right) AVLTreeNode.keys))))
  )
    (and anon754_Else anon754_Then)
)))
(let ((anon750_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left))
    (not $@condition_$33)
    (not $@condition_$35)
  )
    $branchMerge_17
)))
(let ((anon750_Then (=> (and true
    $@condition_$33
    $@condition_$35
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height))
    (forall( (|lk#79#646| Int))(=> (and (< |lk#79#646| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 |lk#79#646|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.left) AVLTreeNode.keys) |lk#79#646|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.key))))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) null))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left)))
  )
    $branchMerge_17
)))
(let ((anon88@18 (=> (and true
    $@condition_$32
    (= Mask@18 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask predRec@_2191@0 AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask predRec@_2191@0 AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask predRec@_2191@0 AVLTreeNode.valid) perm$R) (* (- 1) (Fractions 100))))))
    (=> (= (Fractions 100) (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask predRec@_2191@0 AVLTreeNode.valid) perm$R)) (<= 0 (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask predRec@_2191@0 AVLTreeNode.valid) perm$N)))
    (not (< (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask predRec@_2191@0 AVLTreeNode.valid) perm$R) (Fractions 100)))
  )
    (and anon750_Else anon750_Then)
)))
(let ((anon88@15 (=> (and true
    (CanRead$ref$ Mask SecMask this AVLTreeNode.left)
    (not (= predRec@_2191@0 null))
  )(and 
    anon88@17_assertion
    anon88@18
))))
(let ((anon88@13 (=> (and true
    (< (* 1000 unfoldK@_2216) methodK@_2144)
    (< 0 unfoldK@_2216)
    (< unfoldK@_2216 (Fractions 1))
    (forall( (|k#98#643| Int))(=> (and (< |k#98#643| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 |k#98#643|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.keys) |k#98#643|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.key))))
    (IsGoodExhaleState exhaleHeap@_2214@0 Heap Mask SecMask)
    (not (= (Fractions 1) unfoldK@_2216))
    (not (= 0 unfoldK@_2216))
    (not (= methodK@_2144 (* 1000 unfoldK@_2216)))
    (wf exhaleHeap@_2214@0 Mask SecMask)
  )(and 
    anon88@14_assertion
    anon88@15
))))
(let ((anon88@12 (=> (and true
    (=> (and (< k@98@644 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap predRec@_2191@0 AVLTreeNode.keys))) (<= 0 k@98@644)) (CanRead$Int$ Mask SecMask this AVLTreeNode.key))
  )(and 
    anon88@12_assertion
    anon88@13
))))
(let ((anon88@8 (=> (and true
    (=> (and (< k@98@644 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap predRec@_2191@0 AVLTreeNode.keys))) (<= 0 k@98@644)) (< k@98@644 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap predRec@_2191@0 AVLTreeNode.keys))))
    (=> (and (< k@98@644 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap predRec@_2191@0 AVLTreeNode.keys))) (<= 0 k@98@644)) (<= 0 k@98@644))
    (=> (and (< k@98@644 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap predRec@_2191@0 AVLTreeNode.keys))) (<= 0 k@98@644)) (CanRead$Seq$Int$$ Mask SecMask predRec@_2191@0 AVLTreeNode.keys))
  )(and 
    anon88@11_assertion
    anon88@12
))))
(let ((anon88@6 (=> (and true
    (=> (and (< k@98@644 (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap predRec@_2191@0 AVLTreeNode.keys))) (<= 0 k@98@644)) (CanRead$ref$ Mask SecMask this AVLTreeNode.left))
  )(and 
    anon88@7_assertion
    anon88@8
))))
(let ((anon88@4 (=> (and true
    (=> (<= 0 k@98@644) (CanRead$Seq$Int$$ Mask SecMask predRec@_2191@0 AVLTreeNode.keys))
  )(and 
    anon88@5_assertion
    anon88@6
))))
(let ((anon88@2 (=> (and true
    (=> (<= 0 k@98@644) (CanRead$ref$ Mask SecMask this AVLTreeNode.left))
  )(and 
    anon88@3_assertion
    anon88@4
))))
(let ((anon88 (=> (and true
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap predRec@_2191@0 AVLTreeNode.height))
    (= (- (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height))) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap predRec@_2191@0 AVLTreeNode.balanceFactor))
    (= (- (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left) AVLTreeNode.height) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) AVLTreeNode.height))) 2)
    (= (- 1) (+ (ite$Int$ $@bf_54 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)) (* (- 1) (ite$Int$ $@bf_55 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)))))
    (= (- 1) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap predRec@_2191@0 AVLTreeNode.balanceFactor))
    (= (= true $@bf_54) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left)))
    (= (= true $@bf_55) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right)))
    (= (= true $@bf_56) (< (ite$Int$ $@bf_55 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)) (ite$Int$ $@bf_54 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height))))
    (= (= true $@bf_6) (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right)))
    (= (ite$Int$ (> (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)) (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height))) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) null) 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)) 1)) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap predRec@_2191@0 AVLTreeNode.height))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap predRec@_2191@0 AVLTreeNode.height) (ite$Int$ $@bf_56 (+ (ite$Int$ $@bf_54 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)) 1) (+ (ite$Int$ $@bf_55 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)) 1)))
    (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap predRec@_2191@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ $@bf_54 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap predRec@_2191@0 AVLTreeNode.key))) (ite$Seq$Int$$ $@bf_55 Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys))))
    (= 2 (+ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap predRec@_2191@0 AVLTreeNode.height) (* (- 1) (ite$Int$ $@bf_6 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) AVLTreeNode.height)))))
    (= Mask Mask@17)
    (= SecMask SecMask@21)
    (= ZeroCredits Credits)
    (forall( (|kk#81| Int))(= (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap predRec@_2191@0 AVLTreeNode.keys) |kk#81|) (or (or (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) |kk#81|) (and (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) |kk#81|) (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) null)))) (= |kk#81| (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap predRec@_2191@0 AVLTreeNode.key)))))
    (not (< (- 1) (- 1)))
    (not (< 1 (- 1)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) null))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap predRec@_2191@0 AVLTreeNode.height)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right)))
    (not (= true $@bf_55))
    (Seq@Contains$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap predRec@_2191@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap predRec@_2191@0 AVLTreeNode.key))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap predRec@_2191@0 AVLTreeNode.keys) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap predRec@_2191@0 AVLTreeNode.keys))
    (Seq@Equal$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap predRec@_2191@0 AVLTreeNode.keys) (Seq@Append$Int$ (Seq@Append$Int$ (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys)) (Seq@Singleton$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap predRec@_2191@0 AVLTreeNode.key))) (ite$Seq$Int$$ (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) null) Seq@Empty$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys))))
  )(and 
    anon88@1_assertion
    anon88@2
))))
(let ((anon743_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right))
    (= SecMask@13 SecMask@15)
    (= SecMask@13 SecMask@17)
    (= SecMask@13 SecMask@19)
    (= SecMask@13 SecMask@21)
    (not $@condition_$20)
    (not $@condition_$22)
    (not $@condition_$24)
    (not $@condition_$26)
    (not $@condition_$28)
    (not $@condition_$30)
    (not (= predRec@_2191@0 null))
  )
    anon88
)))
(let ((anon743_Then (=> (and true
    $@condition_$20
    $@condition_$22
    $@condition_$24
    $@condition_$26
    $@condition_$28
    $@condition_$30
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height))
    (= SecMask@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@13 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= SecMask@14 SecMask@15)
    (= SecMask@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= SecMask@16 SecMask@17)
    (= SecMask@18 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@16 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= SecMask@18 SecMask@19)
    (= SecMask@20 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@18 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= SecMask@20 SecMask@21)
    (forall( (|rk#80#642| Int))(=> (and (< |rk#80#642| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 |rk#80#642|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap predRec@_2191@0 AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys) |rk#80#642|))))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) null))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) AVLTreeNode.height)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right)))
    (wf Heap Mask@17 SecMask@13)
    (wf Heap Mask@17 SecMask@14)
    (wf Heap Mask@17 SecMask@16)
    (wf Heap Mask@17 SecMask@18)
    (wf Heap Mask@17 SecMask@20)
  )
    anon88
)))
(let (($branchMerge_9 (=> (and true
  )
    (and anon743_Else anon743_Then)
)))
(let ((anon737_Else (=> (and true
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left))
    (= SecMask@11 SecMask@13)
    (= SecMask@11 SecMask@5)
    (= SecMask@11 SecMask@7)
    (= SecMask@11 SecMask@9)
    (not $@condition_$10)
    (not $@condition_$12)
    (not $@condition_$14)
    (not $@condition_$16)
    (not $@condition_$18)
    (not $@condition_$9)
    (not (= predRec@_2191@0 null))
  )
    $branchMerge_9
)))
(let ((anon737_Then (=> (and true
    $@condition_$10
    $@condition_$12
    $@condition_$14
    $@condition_$16
    $@condition_$18
    $@condition_$9
    (< 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height))
    (= SecMask@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@8 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= SecMask@10 SecMask@11)
    (= SecMask@12 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= SecMask@12 SecMask@13)
    (= SecMask@6 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@5 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= SecMask@6 SecMask@7)
    (= SecMask@8 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@6 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= SecMask@8 SecMask@9)
    (forall( (|lk#79#641| Int))(=> (and (< |lk#79#641| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys))) (<= 0 |lk#79#641|)) (< (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys) |lk#79#641|) (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap predRec@_2191@0 AVLTreeNode.key))))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) null))
    (not (= 0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) AVLTreeNode.height)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left)))
    (wf Heap Mask@17 SecMask@10)
    (wf Heap Mask@17 SecMask@12)
    (wf Heap Mask@17 SecMask@6)
    (wf Heap Mask@17 SecMask@8)
  )
    $branchMerge_9
)))
(let ((anon10 (=> (and true
    ($@AVLTreeNode.valid@trigger predRec@_2191@0)
    (< 0 (Fractions 100))
    (= predRec@_2191@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.left))
    (= predVer@_2192@0 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap predRec@_2191@0 AVLTreeNode.valid))
    (= SecMask@0 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask predRec@_2191@0 AVLTreeNode.key (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask predRec@_2191@0 AVLTreeNode.key) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ ZeroMask predRec@_2191@0 AVLTreeNode.key) perm$R) (Fractions 100)))))
    (= SecMask@1 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@0 predRec@_2191@0 AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@0 predRec@_2191@0 AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@0 predRec@_2191@0 AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= SecMask@2 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@1 predRec@_2191@0 AVLTreeNode.left (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@1 predRec@_2191@0 AVLTreeNode.left) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@1 predRec@_2191@0 AVLTreeNode.left) perm$R) (Fractions 100)))))
    (= SecMask@3 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@2 predRec@_2191@0 AVLTreeNode.right (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@2 predRec@_2191@0 AVLTreeNode.right) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$ref$ SecMask@2 predRec@_2191@0 AVLTreeNode.right) perm$R) (Fractions 100)))))
    (= SecMask@4 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@3 predRec@_2191@0 AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@3 predRec@_2191@0 AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ SecMask@3 predRec@_2191@0 AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= SecMask@5 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@4 predRec@_2191@0 AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@4 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ SecMask@4 predRec@_2191@0 AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (IsGoodMask Mask@17)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap predRec@_2191@0 AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap predRec@_2191@0 AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap predRec@_2191@0 AVLTreeNode.key)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left)))
    (IsGoodState (heapFragment$ref$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap predRec@_2191@0 AVLTreeNode.keys)))
    (not $@condition_$8)
    (not (= 0 (Fractions 100)))
    (not (= null predRec@_2191@0))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.left)) AVLTreeNode@t))
    (or (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right) null) (= (dtype (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap predRec@_2191@0 AVLTreeNode.right)) AVLTreeNode@t))
    (wf Heap Mask@17 SecMask@0)
    (wf Heap Mask@17 SecMask@1)
    (wf Heap Mask@17 SecMask@2)
    (wf Heap Mask@17 SecMask@3)
    (wf Heap Mask@17 SecMask@4)
    (wf Heap Mask@17 SecMask@5)
    (wf Heap Mask@17 ZeroMask)
  )
    (and anon737_Else anon737_Then)
)))
(let ((anon705_Else (=> (and true
    (= Mask@11 Mask@13)
    (= Mask@11 Mask@15)
    (= Mask@11 Mask@17)
    (= Mask@11 Mask@9)
    (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right))
    (not $@condition)
    (not $@condition_$0)
    (not $@condition_$2)
    (not $@condition_$4)
    (not $@condition_$6)
  )
    anon10
)))
(let ((anon705_Then (=> (and true
    $@condition
    $@condition_$0
    $@condition_$2
    $@condition_$4
    $@condition_$6
    (< 0 (Fractions 100))
    (= Mask@10 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) AVLTreeNode.valid (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) AVLTreeNode.valid) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@9 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) AVLTreeNode.valid) perm$R) (Fractions 100)))))
    (= Mask@10 Mask@11)
    (= Mask@12 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) AVLTreeNode.height (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) AVLTreeNode.height) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@10 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) AVLTreeNode.height) perm$R) (Fractions 50)))))
    (= Mask@12 Mask@13)
    (= Mask@14 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) AVLTreeNode.keys (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) AVLTreeNode.keys) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Seq$Int$$ Mask@12 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) AVLTreeNode.keys) perm$R) (Fractions 50)))))
    (= Mask@14 Mask@15)
    (= Mask@16 (MapWrite$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) AVLTreeNode.balanceFactor (MapWrite$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R (+ (MapRead$$@Map@@PermissionComponent@To@Int@@$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$@Map@@PermissionComponent@To@Int@@@@$Int$ Mask@14 (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) AVLTreeNode.balanceFactor) perm$R) (Fractions 50)))))
    (= Mask@16 Mask@17)
    (forall( (|k#97#636| Int))(=> (and (< |k#97#636| (Seq@Length$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) AVLTreeNode.keys))) (<= 0 |k#97#636|)) (< (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap this AVLTreeNode.key) (Seq@Index$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) AVLTreeNode.keys) |k#97#636|))))
    (IsGoodMask Mask@10)
    (IsGoodMask Mask@12)
    (IsGoodMask Mask@14)
    (IsGoodMask Mask@16)
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) AVLTreeNode.balanceFactor)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) AVLTreeNode.height)))
    (IsGoodState (heapFragment$Int$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Int$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) AVLTreeNode.valid)))
    (IsGoodState (heapFragment$Seq$Int$$ (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$Seq$Int$$ Heap (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) AVLTreeNode.keys)))
    (not (= (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right) null))
    (not (= 0 (Fractions 100)))
    (not (= null (MapRead$$@Map@@$T0@@ref@Field$$T0$@To@$T0@@$ref$ Heap this AVLTreeNode.right)))
    (wf Heap Mask@10 ZeroMask)
    (wf Heap Mask@12 ZeroMask)
    (wf Heap Mask@14 ZeroMask)
    (wf Heap Mask@16 ZeroMask)
  )
    anon10
)))
(let (($root (=> (and true
  )
    (and anon705_Else anon705_Then)
)))
   $root
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))

;Commands
   (check-sat)
   ;(get-unsat-core)
